sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/flights/travel/flightsapp/test/integration/FirstJourney',
		'com/flights/travel/flightsapp/test/integration/pages/TravelMain'
    ],
    function(JourneyRunner, opaJourney, TravelMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/flights/travel/flightsapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTravelMain: TravelMain
                }
            },
            opaJourney.run
        );
    }
);