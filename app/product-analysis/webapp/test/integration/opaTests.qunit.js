sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/productanalysis/test/integration/FirstJourney',
		'ns/productanalysis/test/integration/pages/productAnalysisList',
		'ns/productanalysis/test/integration/pages/productAnalysisObjectPage'
    ],
    function(JourneyRunner, opaJourney, productAnalysisList, productAnalysisObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/productanalysis') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheproductAnalysisList: productAnalysisList,
					onTheproductAnalysisObjectPage: productAnalysisObjectPage
                }
            },
            opaJourney.run
        );
    }
);