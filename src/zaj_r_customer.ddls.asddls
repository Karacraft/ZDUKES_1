@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED ZAJ_A_CUSTOMER'
define root view entity ZAJ_R_CUSTOMER
  as select from zaj_a_customer as Customer
{
  key customer_id as CustomerID,
  first_name as FirstName,
  last_name as LastName,
  title as Title,
  street as Street,
  postal_code as PostalCode,
  city as City,
  country_code as CountryCode,
  phone_number as PhoneNumber,
  email_address as EmailAddress,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
  
}
