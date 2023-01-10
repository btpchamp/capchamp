namespace sap.cap.ordershop;

using {
    managed,
    cuid,
    Currency,
    Country
} from '@sap/cds/common';

aspect additionInfo {
    mfgDate : String;
}

entity Product : managed, additionInfo, cuid {
        name     : String;
        stock    : Integer;
        price    : Integer;
        currency : Currency;
        emission : Integer;
        supplier : Association to Supplier; 
}

entity Supplier {
    key ID          : Integer;
        CompanyName : String(100);
        Address     : String(100);
        Phone       : String(100);
        product     : Association to many Product
                          on product.supplier = $self;
}
