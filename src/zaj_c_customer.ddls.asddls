@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZAJ_R_CUSTOMER'
@ObjectModel.semanticKey: [ 'CustomerID' ]
define root view entity ZAJ_C_CUSTOMER
  provider contract transactional_query
  as projection on ZAJ_R_CUSTOMER
{
  key CustomerID,
  FirstName,
  LastName,
  Title,
  Street,
  PostalCode,
  City,
  CountryCode,
  PhoneNumber,
  EmailAddress,
  LocalLastChangedAt
  
}
