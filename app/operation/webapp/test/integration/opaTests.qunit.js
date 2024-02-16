sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'operation/test/integration/FirstJourney',
		'operation/test/integration/pages/operationList',
		'operation/test/integration/pages/operationObjectPage'
    ],
    function(JourneyRunner, opaJourney, operationList, operationObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('operation') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheoperationList: operationList,
					onTheoperationObjectPage: operationObjectPage
                }
            },
            opaJourney.run
        );
    }
);