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

    extend my.Product with {
        //addition field'  
        expDate: String
    }
    entity Product as projection on my.Product;
}