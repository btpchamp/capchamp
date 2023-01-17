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
        ord      : Composition of many Orders on ord.execution = $self;
        price    : Integer;
        currency : Currency;
        emission : Integer;
        criticality : Integer;
        image_url  : String
}

entity Supplier {
    key SupplierID  : Integer;
        CompanyName : String;
        Address     : String;
        Phone       : String;
}

entity Orders : managed , cuid{
    orderDetail : LargeString;
    execution   : Association to Product
}



