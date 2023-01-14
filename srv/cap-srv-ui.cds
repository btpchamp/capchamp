using productshop from './cap-srv';


 annotate productshop.Product with {
    ID @title : 'Product ID';
    name @title : 'Product Name';
    stock @title : 'Quantity';
    price @title : 'Price';
    emission @title : 'Emission';
    image_url @title : 'URl';
    partner @(
        title : 'Supplier'
    )
 } ;

 annotate productshop.Supplier with {
    SupplierID @title : 'Supplier ID';
    CompanyName @title : 'Company';
    Address @title : 'Address';
    Phone @title : 'Contact No'
 };
 

 annotate productshop.Orders with {
    ID @title : 'Order ID';
    orderDetail @title : 'Order Logs'
 };

   annotate productshop.Product with @(
    UI: {
      HeaderInfo  : {
          $Type : 'UI.HeaderInfoType',
          TypeName : 'Product',
          TypeNamePlural : 'Products',
          Title : {
            $Type : 'UI.DataField',
            Value : name
          },
          Description :{
            $Type : 'UI.DataField',
            Value : stock            
          }
      },
      SelectionFields  : [name, stock, emission],
      LineItem  : [
            {$Type : 'UI.DataField', Value: partner_SupplierID},
            {$Type : 'UI.DataField', Value: image_url},   
            {$Type : 'UI.DataField', Value: name, ![@UI.Importance] : #High },
            {
              Value: emission,
              Criticality : criticality
            },
            
      ],
      Identification  : [
                  {
              $Type : 'UI.DataFieldForAction',
              Action :  'productshop.updateProduct',
              Label : '{i18n> Update Quantity}'
            }       
      ],
      




    }
 ) {}; 



 
 
