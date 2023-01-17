using productshop from './cap-srv';


 annotate productshop.Product with {
    ID @title : 'Product ID';
    name @title : 'Product Name'; 
    stock @title : 'Quantity';
    price @title : 'Price';
    emission @title : 'Emission';
    image_url @title : 'URl';
    partner @(
        title : 'Supplier'
    )
 } ;

 annotate productshop.Supplier with {
    SupplierID @title : 'Supplier ID';
    CompanyName @title : 'Company' @readonly;
    Address @title : 'Address' @readonly;
    Phone @title : 'Contact No.' @readonly
 };
 

 annotate productshop.Orders with {
    ID @title : 'Order ID';
    orderDetail @title : 'Order Logs'
 };

   annotate productshop.Product with @(
    UI: {
      HeaderInfo  : {
          TypeName : 'Product',
          TypeNamePlural : 'Products',
          Title : {
            $Type : 'UI.DataField',
            Value : name
          },
          Description :{
            $Type : 'UI.DataField',
            Value : stock            
          }
      },
      SelectionFields  : [name, stock, emission],
      LineItem  : [
            {$Type : 'UI.DataField', Value: partner_SupplierID},  //![@HTML5.CssDefaults] : { width : '25%'}
            {$Type : 'UI.DataField', Value: image_url},   
            {$Type : 'UI.DataField', Value: name },
            {$Type : 'UI.DataField', Value: stock },
            {
              Value: emission,
              Criticality : criticality
            },
            {
              $Type : 'UI.DataFieldForAction',
              Action :  'productshop.orderProduct',
              Label : '{i18n> Place Order}'
            }              
      ],
      Identification  : [
              {
              $Type : 'UI.DataFieldForAction',
              Action :  'productshop.updateProduct',
              Label : '{i18n> Update Quantity}'
            }       
      ],

      Facets  : [
            {$Type: 'UI.ReferenceFacet', Label: 'Supplier Information', Target : '@UI.FieldGroup#Supp'},
            {$Type: 'UI.ReferenceFacet', Label: 'Emission Report', Target : '@UI.FieldGroup#Emission'},
            {$Type: 'UI.ReferenceFacet', Label: 'Order Details', Target : '@UI.FieldGroup#Order'}
      ],
      FieldGroup#Supp  : {
          Data : [
              {Value : partner_SupplierID},
              {Value : partner.CompanyName},
              {Value : partner.Address},
              {$Type : 'UI.DataField', Value: image_url}
          ]          
      },
      FieldGroup#Emission  : {
          Data : [
              {
                Value : emission,
                Criticality : criticality
              }
          ]         
      },
      FieldGroup#Order  : {
          Data : [
              {Value : ord.orderDetail},
          ]          
      },      

    }
 ) {}; 

 annotate productshop.Product with {
   // image_url @( Common.Label : 'Product Image',  UI.IsImageURL : true)
 };
 

  annotate productshop.Product  with {
	partner @(
		Common: {
                ValueList: {
                    Label: 'Supplier',
                    CollectionPath: 'Supplier',
                    Parameters: [
                        { $Type: 'Common.ValueListParameterInOut',
                            LocalDataProperty: partner_SupplierID,
                            ValueListProperty: 'SupplierID'
                        },
                    { $Type: 'Common.ValueListParameterDisplayOnly',
                            ValueListProperty: 'CompanyName'
                        },
                    { $Type: 'Common.ValueListParameterDisplayOnly',
                            ValueListProperty: 'Address'
                        },
                    ]
			},
        SideEffects : {
        EffectTypes      : #ValueChange,
        SourceProperties : [partner_SupplierID],
        TargetProperties : [
            partner.CompanyName,
            partner.Address,
        ]
    }      
        }
	);
}

 annotate productshop.Supplier with @Capabilities.SearchRestrictions.Searchable : false;



 
 
