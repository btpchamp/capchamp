using North from './external/North.cds';

service NorthSampleService {
    @readonly
    entity Customers as projection on North.Customers
    {        key CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax     }    
;
}