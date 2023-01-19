// code below to bootstrap CDS and serve our application:

// As you can see from the bootstrap code, we are running cds programmatically rather than running it 
// from a command line using cds watch. In fact, this is the code/function 
// being called whenever we execute the cds watch command.

// Note that running the application using mock data for unit testing ensures that our 
// test cases will work correctly. When writing test scripts, you evaluate the data provided by the 
// service with the expectation of what the value is supposed to be. Using mock data, 
// then you can always be sure that the data returned by the application is consistent with the configured mock data.

const cds = require("@sap/cds");

cds.exec("run", "--with-mocks", "--in-memory?");

module.exports = new Promise((resolve) => {
	cds.on('listening', () => {
		resolve(cds.app);
	});
});