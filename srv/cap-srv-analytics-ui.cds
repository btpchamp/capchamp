using productshop as service from './cap-srv-analytics';

annotate service.productAnalysis with {
    ID       @title: 'Product ID';
    name     @title: 'Product Name';
    stock @title: 'Quantity';
    createdAt @title: 'Creation Date';
    emission @title: 'Emission';
    riskyear    @title: 'Year';
    partner @(
    title : 'Supplier'
     )
}

annotate service.productAnalysis with @(
    Common.SemanticKey  : [ID],
    UI.LineItem : {
        $value : [
            {
                $Type               : 'UI.DataField',
                Value               : name,
                ![@UI.Importance]   : #High,
            },
            {
                $Type               : 'UI.DataField',
                Value               : partner_SupplierID,
                ![@UI.Importance]   : #High,
            },
            {
                $Type               : 'UI.DataField',
                Value               : createdAt,
                ![@UI.Importance]   : #High,
            },
            {
                $Type               : 'UI.DataField',
                Value               : stock,
                ![@UI.Importance]   : #High,
            },
            {
                $Type               : 'UI.DataField',
                Value               : emission,
                ![@UI.Importance]   : #High,
            },
        ],
    },
);

annotate service.productAnalysis with @(
    Aggregation.ApplySupported : {
        Transformations          : [
            'aggregate',
            'topcount',
            'bottomcount',
            'identity',
            'concat',
            'groupby',
            'filter',
            'expand',
            'top',
            'skip',
            'orderby',
            'search'
        ],
        Rollup                   : #None,
        PropertyRestrictions     : true,
        GroupableProperties : [
            ID,
            name,
            partner_SupplierID,
            createdAt,
            emission,
            stock,
            createdAt,
            riskyear,
        ],
        AggregatableProperties : [
            {
                Property : emission,
            },
            {
                Property : stock,
            },
            {
                Property : createdAt,
            },
            {
                Property : ID,
            }
        ],
    }
);

annotate service.productAnalysis with @(
    Analytics.AggregatedProperties : [
        {
            Name                 : 'minAmount',
            AggregationMethod    : 'min',
            AggregatableProperty : 'emission',
            ![@Common.Label]     : 'Minimal Impact'
        },
        {
            Name                 : 'maxAmount',
            AggregationMethod    : 'max',
            AggregatableProperty : 'emission',
            ![@Common.Label]     : 'Maximal Impact'
        },
        {
            Name                 : 'avgAmount',
            AggregationMethod    : 'average',
            AggregatableProperty : 'emission',
            ![@Common.Label]     : 'Average Impact'
        },
        {
            Name                 : 'sumImpact',
            AggregationMethod    : 'sum',
            AggregatableProperty : 'emission',
            ![@Common.Label]     : 'Total Cost Impact'
        },
        {
            Name                 : 'countRisk',
            AggregationMethod    : 'countdistinct',
            AggregatableProperty : 'ID',
            ![@Common.Label]     : 'Number of Risks'
        },
        {
            Name                 : 'countRiskYear',
            AggregationMethod    : 'countdistinct',
            AggregatableProperty : 'riskyear',
            ![@Common.Label]     : 'Number of Risks Per Year'
        },
    ],
);

annotate service.productAnalysis with @(
    UI.Chart : {
        Title : 'Risk Impacts',
        ChartType : #Column,
        Measures :  [sumImpact],
        Dimensions : [riskyear],
        MeasureAttributes   : [{
                $Type   : 'UI.ChartMeasureAttributeType',
                Measure : sumImpact,
                Role    : #Axis1
        }],
        DimensionAttributes : [
            {
                $Type     : 'UI.ChartDimensionAttributeType',
                Dimension : riskyear,
                Role      : #Category
            },
            {
                $Type     : 'UI.ChartDimensionAttributeType',
                Dimension : emission,
                Role      : #Category
            },
        ],
    },
);

annotate service.productAnalysis with @(
    UI.PresentationVariant #pvPrio : {
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : emission,
                Descending : true
            },
        ],
        Visualizations : [
            '@UI.Chart#chartPrio'
        ]
    },
    UI.SelectionVariant #svPrio : {
        SelectOptions : [
            {
                $Type : 'UI.SelectOptionType',
                PropertyName : emission,
                Ranges : [
                    {
                        $Type : 'UI.SelectionRangeType',
                        Sign : #I,
                        Option : #GE,
                        Low : 0,
                    },
                ],
            },
        ],
    },
    UI.Chart #chartPrio : {
        $Type : 'UI.ChartDefinitionType',
        ChartType : #Bar,
        Dimensions : [
            emission
        ],
        DimensionAttributes : [
            {
                $Type : 'UI.ChartDimensionAttributeType',
                Dimension : emission,
                Role : #Category
            }
        ],
        Measures : [
            sumImpact
        ],
        MeasureAttributes : [
            {
                $Type : 'UI.ChartMeasureAttributeType',
                Measure : sumImpact,
                Role : #Axis1,
                DataPoint : '@UI.DataPoint#dpPrio',
            }
        ]
    },
    UI.DataPoint #dpPrio              : {
        Value       : emission,
        Title       : 'Emission'
    },
) {
};

annotate service.RisksAnalysis with @(
    UI.PresentationVariant #pvPeriod : {
        Text : 'FilterRisksOverPeriodPV',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : createdAt,
                Descending : true
            },
        ],
        Visualizations : [
            '@UI.Chart#chartPeriod'
        ]
    },
    UI.Chart #chartPeriod : {
        $Type : 'UI.ChartDefinitionType',
        Title : 'Risks Over Period',
        ChartType : #Line,
        Dimensions : [
            createdAt
        ],
        DimensionAttributes : [
            {
                $Type : 'UI.ChartDimensionAttributeType',
                Dimension : createdAt,
                Role : #Category
            }
        ],
        Measures : [
            countRisk
        ],
        MeasureAttributes : [
            {
                $Type : 'UI.ChartMeasureAttributeType',
                Measure : countRisk,
                Role : #Axis1,
                DataPoint : '@UI.DataPoint#dpPeriod',
            }
        ]
    },
    UI.DataPoint #dpPeriod : {
        Value       : createdAt,
        Title       : 'Creation Date'
    },
) {
    createdAt @(
        Common.ValueList #vlcreatedAt: {
            Label : 'Creation Date',
            CollectionPath : 'productAnalysis',
            SearchSupported : true,
            PresentationVariantQualifier : 'pvPeriod',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : createdAt,
                    ValueListProperty : 'createdAt'
                },
            ]
        }
    );
};
