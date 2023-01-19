/* checksum : 99cba6c23a0ac7472b2e919c16a6f7fd */
@cds.external : true
@cds.persistence.skip : true
entity North.Categories {
  key CategoryID : Integer not null;
  CategoryName : String(15) not null;
  Description : LargeString null;
  Picture : LargeBinary null;
  @cds.ambiguous : 'missing on condition?'
  Products : Association to many North.Products {  };
};

@cds.external : true
@cds.persistence.skip : true
entity North.CustomerDemographics {
  key CustomerTypeID : String(10) not null;
  CustomerDesc : LargeString null;
  @cds.ambiguous : 'missing on condition?'
  Customers : Association to many North.Customers {  };
};

@cds.external : true
@cds.persistence.skip : true
entity North.Customers {
  key CustomerID : String(5) not null;
  CompanyName : String(40) not null;
  ContactName : String(30) null;
  ContactTitle : String(30) null;
  Address : String(60) null;
  City : String(15) null;
  Region : String(15) null;
  PostalCode : String(10) null;
  Country : String(15) null;
  Phone : String(24) null;
  Fax : String(24) null;
  @cds.ambiguous : 'missing on condition?'
  Orders : Association to many North.Orders {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerDemographics : Association to many North.CustomerDemographics {  };
};

@cds.external : true
@cds.persistence.skip : true
entity North.Employees {
  key EmployeeID : Integer not null;
  LastName : String(20) not null;
  FirstName : String(10) not null;
  Title : String(30) null;
  TitleOfCourtesy : String(25) null;
  @odata.Type : 'Edm.DateTimeOffset'
  BirthDate : DateTime null;
  @odata.Type : 'Edm.DateTimeOffset'
  HireDate : DateTime null;
  Address : String(60) null;
  City : String(15) null;
  Region : String(15) null;
  PostalCode : String(10) null;
  Country : String(15) null;
  HomePhone : String(24) null;
  Extension : String(4) null;
  Photo : LargeBinary null;
  Notes : LargeString null;
  ReportsTo : Integer null;
  PhotoPath : String(255) null;
  @cds.ambiguous : 'missing on condition?'
  Employees1 : Association to many North.Employees {  };
  @cds.ambiguous : 'missing on condition?'
  Employee1 : Association to one North.Employees on Employee1.EmployeeID = ReportsTo;
  @cds.ambiguous : 'missing on condition?'
  Orders : Association to many North.Orders {  };
  @cds.ambiguous : 'missing on condition?'
  Territories : Association to many North.Territories {  };
};

@cds.external : true
@cds.persistence.skip : true
entity North.Order_Details {
  key OrderID : Integer not null;
  key ProductID : Integer not null;
  UnitPrice : Decimal(19, 4) not null;
  Quantity : Integer not null;
  @odata.Type : 'Edm.Single'
  Discount : Double not null;
  @cds.ambiguous : 'missing on condition?'
  Order : Association to one North.Orders on Order.OrderID = OrderID;
  @cds.ambiguous : 'missing on condition?'
  Product : Association to one North.Products on Product.ProductID = ProductID;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Orders {
  key OrderID : Integer not null;
  CustomerID : String(5) null;
  EmployeeID : Integer null;
  @odata.Type : 'Edm.DateTimeOffset'
  OrderDate : DateTime null;
  @odata.Type : 'Edm.DateTimeOffset'
  RequiredDate : DateTime null;
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime null;
  ShipVia : Integer null;
  Freight : Decimal(19, 4) null;
  ShipName : String(40) null;
  ShipAddress : String(60) null;
  ShipCity : String(15) null;
  ShipRegion : String(15) null;
  ShipPostalCode : String(10) null;
  ShipCountry : String(15) null;
  @cds.ambiguous : 'missing on condition?'
  Customer : Association to one North.Customers on Customer.CustomerID = CustomerID;
  @cds.ambiguous : 'missing on condition?'
  Employee : Association to one North.Employees on Employee.EmployeeID = EmployeeID;
  @cds.ambiguous : 'missing on condition?'
  Order_Details : Association to many North.Order_Details {  };
  @cds.ambiguous : 'missing on condition?'
  Shipper : Association to one North.Shippers on Shipper.ShipperID = ShipVia;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Products {
  key ProductID : Integer not null;
  ProductName : String(40) not null;
  SupplierID : Integer null;
  CategoryID : Integer null;
  QuantityPerUnit : String(20) null;
  UnitPrice : Decimal(19, 4) null;
  UnitsInStock : Integer null;
  UnitsOnOrder : Integer null;
  ReorderLevel : Integer null;
  Discontinued : Boolean not null;
  @cds.ambiguous : 'missing on condition?'
  Category : Association to one North.Categories on Category.CategoryID = CategoryID;
  @cds.ambiguous : 'missing on condition?'
  Order_Details : Association to many North.Order_Details {  };
  @cds.ambiguous : 'missing on condition?'
  Supplier : Association to one North.Suppliers on Supplier.SupplierID = SupplierID;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Regions {
  key RegionID : Integer not null;
  RegionDescription : String(50) not null;
  @cds.ambiguous : 'missing on condition?'
  Territories : Association to many North.Territories {  };
};

@cds.external : true
@cds.persistence.skip : true
entity North.Shippers {
  key ShipperID : Integer not null;
  CompanyName : String(40) not null;
  Phone : String(24) null;
  @cds.ambiguous : 'missing on condition?'
  Orders : Association to many North.Orders {  };
};

@cds.external : true
@cds.persistence.skip : true
entity North.Suppliers {
  key SupplierID : Integer not null;
  CompanyName : String(40) not null;
  ContactName : String(30) null;
  ContactTitle : String(30) null;
  Address : String(60) null;
  City : String(15) null;
  Region : String(15) null;
  PostalCode : String(10) null;
  Country : String(15) null;
  Phone : String(24) null;
  Fax : String(24) null;
  HomePage : LargeString null;
  @cds.ambiguous : 'missing on condition?'
  Products : Association to many North.Products {  };
};

@cds.external : true
@cds.persistence.skip : true
entity North.Territories {
  key TerritoryID : String(20) not null;
  TerritoryDescription : String(50) not null;
  RegionID : Integer not null;
  @cds.ambiguous : 'missing on condition?'
  Region : Association to one North.Regions on Region.RegionID = RegionID;
  @cds.ambiguous : 'missing on condition?'
  Employees : Association to many North.Employees {  };
};

@cds.external : true
@cds.persistence.skip : true
entity North.Alphabetical_list_of_products {
  key ProductID : Integer not null;
  key ProductName : String(40) not null;
  SupplierID : Integer null;
  CategoryID : Integer null;
  QuantityPerUnit : String(20) null;
  UnitPrice : Decimal(19, 4) null;
  UnitsInStock : Integer null;
  UnitsOnOrder : Integer null;
  ReorderLevel : Integer null;
  key Discontinued : Boolean not null;
  key CategoryName : String(15) not null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Category_Sales_for_1997 {
  key CategoryName : String(15) not null;
  CategorySales : Decimal(19, 4) null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Current_Product_Lists {
  key ProductID : Integer not null;
  key ProductName : String(40) not null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Customer_and_Suppliers_by_Cities {
  City : String(15) null;
  key CompanyName : String(40) not null;
  ContactName : String(30) null;
  key Relationship : String(9) not null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Invoices {
  ShipName : String(40) null;
  ShipAddress : String(60) null;
  ShipCity : String(15) null;
  ShipRegion : String(15) null;
  ShipPostalCode : String(10) null;
  ShipCountry : String(15) null;
  CustomerID : String(5) null;
  key CustomerName : String(40) not null;
  Address : String(60) null;
  City : String(15) null;
  Region : String(15) null;
  PostalCode : String(10) null;
  Country : String(15) null;
  key Salesperson : String(31) not null;
  key OrderID : Integer not null;
  @odata.Type : 'Edm.DateTimeOffset'
  OrderDate : DateTime null;
  @odata.Type : 'Edm.DateTimeOffset'
  RequiredDate : DateTime null;
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime null;
  key ShipperName : String(40) not null;
  key ProductID : Integer not null;
  key ProductName : String(40) not null;
  key UnitPrice : Decimal(19, 4) not null;
  key Quantity : Integer not null;
  @odata.Type : 'Edm.Single'
  key Discount : Double not null;
  ExtendedPrice : Decimal(19, 4) null;
  Freight : Decimal(19, 4) null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Order_Details_Extendeds {
  key OrderID : Integer not null;
  key ProductID : Integer not null;
  key ProductName : String(40) not null;
  key UnitPrice : Decimal(19, 4) not null;
  key Quantity : Integer not null;
  @odata.Type : 'Edm.Single'
  key Discount : Double not null;
  ExtendedPrice : Decimal(19, 4) null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Order_Subtotals {
  key OrderID : Integer not null;
  Subtotal : Decimal(19, 4) null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Orders_Qries {
  key OrderID : Integer not null;
  CustomerID : String(5) null;
  EmployeeID : Integer null;
  @odata.Type : 'Edm.DateTimeOffset'
  OrderDate : DateTime null;
  @odata.Type : 'Edm.DateTimeOffset'
  RequiredDate : DateTime null;
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime null;
  ShipVia : Integer null;
  Freight : Decimal(19, 4) null;
  ShipName : String(40) null;
  ShipAddress : String(60) null;
  ShipCity : String(15) null;
  ShipRegion : String(15) null;
  ShipPostalCode : String(10) null;
  ShipCountry : String(15) null;
  key CompanyName : String(40) not null;
  Address : String(60) null;
  City : String(15) null;
  Region : String(15) null;
  PostalCode : String(10) null;
  Country : String(15) null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Product_Sales_for_1997 {
  key CategoryName : String(15) not null;
  key ProductName : String(40) not null;
  ProductSales : Decimal(19, 4) null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Products_Above_Average_Prices {
  key ProductName : String(40) not null;
  UnitPrice : Decimal(19, 4) null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Products_by_Categories {
  key CategoryName : String(15) not null;
  key ProductName : String(40) not null;
  QuantityPerUnit : String(20) null;
  UnitsInStock : Integer null;
  key Discontinued : Boolean not null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Sales_by_Categories {
  key CategoryID : Integer not null;
  key CategoryName : String(15) not null;
  key ProductName : String(40) not null;
  ProductSales : Decimal(19, 4) null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Sales_Totals_by_Amounts {
  SaleAmount : Decimal(19, 4) null;
  key OrderID : Integer not null;
  key CompanyName : String(40) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Summary_of_Sales_by_Quarters {
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime null;
  key OrderID : Integer not null;
  Subtotal : Decimal(19, 4) null;
};

@cds.external : true
@cds.persistence.skip : true
entity North.Summary_of_Sales_by_Years {
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime null;
  key OrderID : Integer not null;
  Subtotal : Decimal(19, 4) null;
};

@cds.external : true
service North {};

