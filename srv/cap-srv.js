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
       // const event = {
       //     "Addition" : sum        
       // }
       // srv.emit('myEventName',event) // This will emit the events


//INSERT Query
       //INSERT Query
   //     let Payload = {
   //         "ID" : 301,
   //         "CompanyName" : "Jack & Jones",
   //         "Address" : "India"
   //     }
   //    const bp = await cds.run(INSERT.into(Supplier).entries(Payload));
   //    console.log("<<<insert bp", bp)

       return sum;
   })

//this service handler will listen the events which is triggered from emit inside add number fucntion
   // srv.on('myEventName', (msg) => {
   //     console.log("<<<1st message listened", msg)
   //     console.log("<<<<fetch addition value", msg.data.Addition)
   // })
   
 //  srv.on('READ' , 'Supplier', async(req) => {

// uncomment the below query and start exploring

//SELECT Query
    //const bp = await cds.run(SELECT.from(Supplier)). // way 1
   // const bp = await cds.run(SELECT.from(Supplier).where({ID:201})) //way 2
   //const bp = await cds.read(Supplier).where({ID:201}) // way 3
  // const bp = await SELECT.from(Supplier).where({ID:101}) //way 4
//  const bp = await cds.run(SELECT `ID,CompanyName` .from(Supplierte p)) //way 4. /CompanyName

   //  console.log("<<Insert query print ", bp)
   //  return bp;

//UPDATE
//const bpUpdate = await cds.run(UPDATE(Supplier).with({Phone : 5643}).where({ID:<ID no. of supplier>}))
//  console.log("updation of BP ", bpUpdate);
//  return bpUpdate;



//})

//Event will be triggered after creation 
// srv.before('READ' , 'Product', async(req) => {
//     console.log("<<Hello I am in BEFORE Handler")
//     //if user.auth != admin rej.reject(400, Not authorized)
// })

//srv.on('READ' , 'Product', async(req) => {
//     console.log("<<Hello I am in ON Handler")
//     fetch the data and show the resp
//}) 

// srv.after('READ' , 'Product', async(req) => {
//     console.log("<<Hello I am in AFTER Handler")
//     //change the stock = stock + 10
// })
   
}) 