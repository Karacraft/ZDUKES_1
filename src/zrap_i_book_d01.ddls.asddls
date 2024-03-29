@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view ZRAP_BOOK_D01 Table'
@Metadata.allowExtensions: true
@Search.searchable: true
// This is an ENTITY only not view.
// We won't be using a class with Behavior definitions,
// ensure to not use as for field name change.
define root view entity ZRAP_I_BOOK_D01
  as select from zrap_book_d01
{
  key travel_id,
  key booking_id,
      booking_date,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.90
      customer_id,
      carrier_id,
      connection_id,
      flight_date,
      @Semantics.amount.currencyCode: 'currency_code'
      flight_price,
      currency_code
}
