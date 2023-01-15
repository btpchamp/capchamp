//@protocol: 'rest' // service becomes rest compliant
using { sap.cap.ordershop as my } from '../db/schema';
service productshop {

  entity Product as projection on my.Product actions {
  action orderProduct(name: String @title : 'Product Name' ,stock : Integer @title : 'Quantity') ;
  action updateProduct(name: String @title : 'Product Name' ,stock : Integer @title : 'Quantity');
  }
  annotate Product with @odata.draft.enabled;
  
//emit events
   event myEventName: {
    myEventProperty: Integer;
   }

   // explain sqlite deployment command in readme
    entity Supplier as projection on my.Supplier;
    @readonly
    entity Orders as projection on my.Orders;


}