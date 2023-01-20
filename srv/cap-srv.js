const cds = require('@sap/cds');

// conection to external service npm install @sap-cloud-sdk/http-client
module.exports = cds.service.impl(async function(srv) {


    // const { registerDestination: MyRequest } = require('@sap-cloud-sdk/connectivity');
    // const destination = {
    //     name: 'MY-DESTINATION',
    //     url: 'https://mys4hana.com'
    //   };
      
    //   const register = await MyRequest(destination);
    //   const record = MyRequest.execute({ url: 'MY-DESTINATION' });


//     const { sendMail, MailConfig } = require ('@sap-cloud-sdk/mail-client');

//     const mailConfig = {
//       from: 'from@example.com',
//       to: 'to@example.com',
//       subject: 'e-mail subject',
//       text: 'e-mail text'
//     }; 

//   let mailSend = await sendMail({ destinationName: 'my-mail-destination' }, [mailConfig]);






   const { Product , Supplier, Orders } = srv.entities

   srv.before ('CREATE','Product', (req)=>{
    const createProduct = req.data
  //  if (createProduct.emission > '50000')  throw new Error("400,`Product not Sustainable`")
    if (createProduct.emission > '50000')  return req.error ({
        code: '400',
        message: 'Product not Sustainable stock ${stock}',
        target: '${createProduct.emission}',
        status: 500
      })

    //  409,`${quantity} exceeds stock for book #${book}`)
  })

   srv.after('READ', 'Product', productData => { 
    const products = Array.isArray(productData) ? productData : [productData]; 
    products.forEach(product => { 
        if(product.emission >=1001) {  
            product.criticality = 1;
        } else {
            product.criticality = 2;
        } 
    
    })
})

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







   
}) 

