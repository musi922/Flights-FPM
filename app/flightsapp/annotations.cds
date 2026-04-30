using TravelService as service from '../../srv/travel-service';
using from '../../srv/travel-service';
using from '../../srv/travel-service';
using from '../../db/schema';


annotate service.Travel with @(
    UI.SelectionFields : [
        to_Agency_AgencyID,
        to_Customer_CustomerID,
        TravelStatus_code,
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : TravelID,
            Label : '{i18n>TravelId}',
        },
        {
            $Type : 'UI.DataField',
            Value : TravelStatus_code,
            Label : '{i18n>TravelStatusCode}',
            criticality : TravelStatus.criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : BeginDate,
            Label : '{i18n>BeginDate}',
        },
        {
            $Type : 'UI.DataField',
            Value : EndDate,
            Label : '{i18n>EndDate}',
        },
        {
            $Type : 'UI.DataField',
            Value : to_Agency_AgencyID,
            Label : '{i18n>AgencyId}',
        },
        {
            $Type : 'UI.DataField',
            Value : to_Customer_CustomerID,
            Label : '{i18n>CustomerId}',
        },
        {
            $Type : 'UI.DataField',
            Value : TotalPrice,
            Label : '{i18n>TotalPrice}',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'TravelService.acceptTravel',
            Label : '{i18n>AcceptTravel}',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'TravelService.rejectTravel',
            Label : '{i18n>RejectTravel}',
        }
    ],
);
