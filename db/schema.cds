namespace sap.cap.ordershop;

using {
    managed,
    cuid,
    Currency,
    Country
} from '@sap/cds/common';

entity Product : managed, cuid {
       key name     : String;
        stock    : Integer;
        partner  : Association to Supplier;
        price    : Integer;
        emission : Integer;
        criticality : Integer;
}

entity Supplier {
    key SupplierID  : Integer;
        CompanyName : String;
        Address     : String;
        Phone       : String;
}




