using TravelService as service from '../../srv/travel-service';
using from '../../srv/travel-service';

annotate service.Travel with @(
    UI.SelectionFields : [
        to_Agency_AgencyID,
        to_Customer_CustomerID,
        TravelStatus_code,
    ]
);
