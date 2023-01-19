using BusinessPartnerA2X from './external/BusinessPartnerA2X.cds';

service BusinessPartnerA2XSampleService {
    @readonly
    entity A_BusinessPartner as projection on BusinessPartnerA2X.A_BusinessPartner
    {        key BusinessPartner, Customer, Supplier, AcademicTitle, AuthorizationGroup, BusinessPartnerCategory, BusinessPartnerFullName   }    
;
}