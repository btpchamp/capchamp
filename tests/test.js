const chai = require("chai");
const chaiHttp = require("chai-http");
const server = require("./server");

// Configure chai
chai.use(chaiHttp);
chai.should();

let app = null;

before((done) => {
	server.then((result) => {
		app = result;
		done();
	});
});

describe("Products Operation", () => {
	describe("GET /productshop/Product", () => {
		it("+ should return a list of products", (done) => {
			chai.request(app)
				.get("/productshop/Product")
				.end((error, response) => {
					try {
						response.should.have.status(200);
						response.body.value.should.be.an("array").to.have.lengthOf(7);
						done();
					} catch (error) {
						done(error);
					}
				});
		});
	});
});


		// This is just a demostration of a failed test case
		// The assertion was deliberately changed to trigger the test to fail
		it("- should return a list of products", (done) => {
			chai.request(app)
				.get("/productshop/Product")
				.end((error, response) => {
					try {
						response.should.have.status(200);
						response.body.value.should.be.an("array").to.have.lengthOf(12);
						done();
					} catch (error) {
						done(error);
					}
				});
		});

//npm run test
//npm install --save-dev mocha chai chai-http