//@protocol: 'rest' // service becomes rest compliant
using { sap.cap.ordershop as my } from '../db/schema';
service productshop {
    function hello(to:String) returns String;
    action helloAction() returns String; 
    function addNumber(a:Integer, b:Integer) returns Integer; //sum of two numbers.

    @open
    type object {};
    function MyFunction(category : Integer) returns object;
    action MyAction(input : object) returns object;

//emit events
   event myEventName: {
    myEventProperty: Integer;
   }

    extend my.Product with {
        //addition field'  
        expDate: String
    }
   // @odata.draft.enabled
    entity Product as projection on my.Product;
     entity Supplier as projection on my.Supplier;

}