namespace sap.cap.ordershop;

using {
    managed,
    cuid,
    Currency,
    Country
} from '@sap/cds/common';

entity Product : managed, cuid {
        name     : String;
        stock    : Integer;
        price    : Integer;
        currency : Currency;
        emission : Integer;
        criticality : Integer;
        supplier : Association to Supplier; 
}

entity Supplier {
    key ID          : Integer;
        CompanyName : String;
        Address     : String;
        Phone       : String;
        product     : Association to many Product
                          on product.supplier = $self;
}



