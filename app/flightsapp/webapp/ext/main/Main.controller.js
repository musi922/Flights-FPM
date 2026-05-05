sap.ui.define(
    [
        'sap/fe/core/PageController'
    ],
    function (PageController) {
        'use strict';

        return PageController.extend('com.flights.travel.flightsapp.ext.main.Main', {
            onTableTravelRowPress: function (oEvent) {
                var oBindingContext = oEvent.getParameter("bindingContext");
                if (oBindingContext) {
                    this.routing.navigate(oBindingContext);
                }
            }
        });
    }
);
