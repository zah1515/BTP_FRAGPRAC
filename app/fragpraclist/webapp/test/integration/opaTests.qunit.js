sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'fragpraclist/test/integration/FirstJourney',
		'fragpraclist/test/integration/pages/collegeList',
		'fragpraclist/test/integration/pages/collegeObjectPage',
		'fragpraclist/test/integration/pages/studentObjectPage'
    ],
    function(JourneyRunner, opaJourney, collegeList, collegeObjectPage, studentObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('fragpraclist') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThecollegeList: collegeList,
					onThecollegeObjectPage: collegeObjectPage,
					onThestudentObjectPage: studentObjectPage
                }
            },
            opaJourney.run
        );
    }
);