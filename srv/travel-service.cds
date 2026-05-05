using { sap.fe.cap.travel as my } from '../db/schema';

service TravelService @(path:'/processor') {

@odata.draft.enabled
  entity Travel as projection on my.Travel actions {
    action rejectTravel();
    action acceptTravel();
  };

  entity Booking as projection on my.Booking;

  // Ensure all masterdata entities are available to clients
  annotate my.MasterData with @cds.autoexpose @readonly;
}

type Percentage : Integer @assert.range: [1,100];
