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
    UI.HeaderInfo : {
        TypeName : '{i18n>Travel}',
        TypeNamePlural : '{i18n>Travels}',
        Title : {
            $Type : 'UI.DataField',
            Value : TravelID,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : Description,
        },
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'headerTravelStatus',
            Target : '@UI.FieldGroup#HeaderTravelStatus',
        },
    ],
    UI.FieldGroup #HeaderTravelStatus : {
        Data : [
            {
                $Type : 'UI.DataField',
                Value : TravelStatus_code,
                Label : '{i18n>TravelStatusCode}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>Travel}',
            ID : 'TravelSection',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>Travel}',
                    ID : 'TravelFields',
                    Target : '@UI.FieldGroup#TravelFields',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>Prices}',
                    ID : 'PricesFields',
                    Target : '@UI.FieldGroup#PricesFields',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>Dates}',
                    ID : 'DatesFields',
                    Target : '@UI.FieldGroup#DatesFields',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>Sustainability}',
                    ID : 'SustainabilityFields',
                    Target : '@UI.FieldGroup#SustainabilityFields',
                },
            ],
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>MyItinerary}',
            ID : 'MyItinerarySection',
            Target : 'to_Booking/@UI.LineItem',
        },
    ],
    UI.FieldGroup #TravelFields : {
        Data : [
            {
                $Type : 'UI.DataField',
                Value : TravelID,
            },
            {
                $Type : 'UI.DataField',
                Value : to_Agency_AgencyID,
            },
            {
                $Type : 'UI.DataField',
                Value : to_Customer_CustomerID,
            },
            {
                $Type : 'UI.DataField',
                Value : TravelStatus_code,
            },
        ],
    },
    UI.FieldGroup #PricesFields : {
        Data : [
            {
                $Type : 'UI.DataField',
                Value : BookingFee,
            },
            {
                $Type : 'UI.DataField',
                Value : TotalPrice,
            },
        ],
    },
    UI.FieldGroup #DatesFields : {
        Data : [
            {
                $Type : 'UI.DataField',
                Value : BeginDate,
            },
            {
                $Type : 'UI.DataField',
                Value : EndDate,
            },
        ],
    },
    UI.FieldGroup #SustainabilityFields : {
        Data : [
            {
                $Type : 'UI.DataField',
                Value : GoGreen,
            },
            {
                $Type : 'UI.DataField',
                Value : GreenFee,
            },
            {
                $Type : 'UI.DataField',
                Value : TreesPlanted,
            },
        ],
    },
);

annotate service.Booking with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : to_Carrier.AirlinePicURL,
            Label : 'AirlinePicU...',
        },
        {
            $Type : 'UI.DataField',
            Value : BookedFlights,
            Label : 'Booked Flights',
        },
        {
            $Type : 'UI.DataField',
            Value : BookingID,
            Label : 'BookingID',
        },
        {
            $Type : 'UI.DataField',
            Value : to_Customer_CustomerID,
            Label : 'to_Customer_C...',
        },
    ]
);

