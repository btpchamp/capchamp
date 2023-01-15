const cds = require('@sap/cds');

module.exports = cds.service.impl(async function(srv) {
   const { Product , Supplier, Orders } = srv.entities
   console.log('Outside of my service entity/function hello World') // Print the message in Nodejs
   srv.on('hello', req => {
      `Hello ${req.data.to}!`
   })  

   srv.on('helloAction', req => {
       req.data = 'Hello World';
       return req.data
   })

   srv.on('MyFunction', async(req) => {
       let result = {}
       if(req.data.category == 1){
           result.category = 'Product A';
           result.stock = '12';
           result.priceArray = [{"Price" : "12.45"}]
       } else {
           result.category = 'Product B';
           result.stock = '25';
           result.priceArray = [{"Price" : "56.72"}]           
       }
       return result;
   })

   srv.on('MyAction', async(req) => {
       req.data["Stock"] = "12.34";
       return req.data;
   })

   srv.on('addNumber', async(req) => {
       let sum = req.data.a + req.data.b;
       return sum;
   })


   srv.on('updateProduct', async(req) => {
       if(req.data.stock < 1 ) req.reject (400, 'Order should be have to greater than 1')    
       const updProduct = await UPDATE(Product).with({stock:req.data.stock}).where({name:req.data.name});
       console.log("<<Product Updated ", updProduct)
   })


   srv.on('orderProduct', async(req) => {
       const now = req.timestamp;   //Fetch the current system date and time
       console.log("<<<system time", now)
       if(req.data.stock < 1 ) return req.reject(400, 'Quantitiy has to be greater than 0')
       //lets suppoese your Laptop has 10 stock and you pleaced an order with quantity 15
       const quan = await SELECT `stock` .from(Product).where({name:req.data.name});
       console.log("<< Stock in DB ",quan) // [ { stock: 70 } ]
       if(req.data.stock > quan[0].stock ) return req.reject (400, 'Ordered Quantity greater than stock');
       let netStock = quan[0].stock - req.data.stock;
       const updProd = await UPDATE(Product).with({stock:netStock}).where({name:req.data.name}) // Updated the net stock on our Product entity
       //Create Orders
       //Fetch Product ID
       const productID = await SELECT `ID` .from(Product).where({name:req.data.name});
       console.log("<<<< Product ID ", productID);
       //Create JSON Payload for Order
       const orderJSON = {
           orderDetail:req.data.name + ` Ordered on ` + now + ` with stock ` + req.data.stock,
           execution_ID:productID[0].ID
       }
       console.log("<<<<Order JSON ", orderJSON)
       const orderCreate = await INSERT (orderJSON).into(Orders);
       console.log("<<<Order Create", orderCreate)
       return req.notify(`Product ` + req.data.name + ` Ordered `);
       })

   
}) 