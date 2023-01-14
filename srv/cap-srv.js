const cds = require('@sap/cds');

module.exports = cds.service.impl(async function(srv) {
   const { Product , Supplier } = srv.entities
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

   
}) 