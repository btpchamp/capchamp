const cds = require('@sap/cds');

module.exports = async (srv) => 
{        
    // Using CDS API      
    const North = await cds.connect.to("North"); 
      srv.on('READ', 'Customers', req => North.run(req.query)); 
}