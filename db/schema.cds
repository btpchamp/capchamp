using { managed, cuid } from '@sap/cds/common';
namespace sap.cap.ordershop;
//sap.cap.product.Product{}
//@sap/cds/common --> country, managed; cuid; language; currency

aspect additionInfo {
    mfgDate : String;
}
//Types, Aspect and Extend
    entity Product : additionInfo, managed, cuid{
        name : String;
        stock : Integer;
        price : Integer
       // cost : PriceDetails //Cost will access pricedetails field using cost_price
    }


    // type PriceDetails {
    //  price : String;
    // }

