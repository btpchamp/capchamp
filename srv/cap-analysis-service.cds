using { sap.cap.ordershop as my } from '../db/schema';
using { productshop } from './cap-srv';

extend service productshop {
  @readonly
  entity ProductAnalysis  as projection on my.Product {
    *,
    substring(createdAt,1,4) as riskyear:String,
    cast (substring(createdAt,1,10) as Date) as createdAt
  };
}
//"createdAt": "2023-01-16T10:03:34.931Z",
extend productshop.Product with @cds.redirection.target;