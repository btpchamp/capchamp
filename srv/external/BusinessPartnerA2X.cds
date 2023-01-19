/* checksum : 8662395bd1412ebdf90d567e52a97a1c */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service BusinessPartnerA2X {};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Email Address'
entity BusinessPartnerA2X.A_AddressEmailAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person Number'
  key Person : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  key OrdinalNumber : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard addr.'
  @sap.quickinfo : 'Flag: this address is the default address'
  IsDefaultEmailAddress : Boolean null;
  @sap.label : 'Email Address'
  EmailAddress : String(241) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'E-Mail Address'
  @sap.quickinfo : 'E-Mail Address Search Field'
  SearchEmailAddress : String(20) null;
  @sap.label : 'Notes'
  @sap.quickinfo : 'Communication link notes'
  AddressCommunicationRemarkText : String(50) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Fax Number'
entity BusinessPartnerA2X.A_AddressFaxNumber {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person Number'
  key Person : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  key OrdinalNumber : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard No.'
  @sap.quickinfo : 'Standard Sender Address in this Communication Type'
  IsDefaultFaxNumber : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  FaxCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'Fax Number: Dialing Code+Number'
  FaxNumber : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Fax no.: Extension'
  FaxNumberExtension : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax Number'
  @sap.quickinfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalFaxNumber : String(30) null;
  @sap.label : 'Notes'
  @sap.quickinfo : 'Communication link notes'
  AddressCommunicationRemarkText : String(50) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Home Page URL'
entity BusinessPartnerA2X.A_AddressHomePageURL {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person Number'
  key Person : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  key OrdinalNumber : String(3) not null;
  @sap.display.format : 'Date'
  @sap.label : 'from'
  @sap.quickinfo : 'Valid-from date - in current Release only 00010101 possible'
  key ValidityStartDate : Date not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard addr.'
  @sap.quickinfo : 'Flag: this address is the default address'
  key IsDefaultURLAddress : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'URI address'
  @sap.quickinfo : 'URI address search field'
  SearchURLAddress : String(50) null;
  @sap.label : 'Notes'
  @sap.quickinfo : 'Communication link notes'
  AddressCommunicationRemarkText : String(50) null;
  @sap.label : 'URI length'
  @sap.quickinfo : 'URI field length'
  URLFieldLength : Integer null;
  @sap.label : 'URI'
  @sap.quickinfo : 'Universal Resource Identifier (URI)'
  WebsiteURL : String(2048) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Phone Number'
entity BusinessPartnerA2X.A_AddressPhoneNumber {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person Number'
  key Person : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequence Number'
  key OrdinalNumber : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region for Telephone/Fax Number'
  DestinationLocationCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard No.'
  @sap.quickinfo : 'Standard Sender Address in this Communication Type'
  IsDefaultPhoneNumber : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code + Number'
  PhoneNumber : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Telephone no.: Extension'
  PhoneNumberExtension : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone Number'
  @sap.quickinfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalPhoneNumber : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mobile phone'
  @sap.quickinfo : 'Indicator: Telephone is a Mobile Telephone'
  PhoneNumberType : String(1) null;
  @sap.label : 'Notes'
  @sap.quickinfo : 'Communication link notes'
  AddressCommunicationRemarkText : String(50) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Business Partner Address-Dependent ILN'
entity BusinessPartnerA2X.A_BPAddrDepdntIntlLocNumber {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 1'
  @sap.quickinfo : 'International location number (part 1)'
  InternationalLocationNumber1 : String(7) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 2'
  @sap.quickinfo : 'International location number (Part 2)'
  InternationalLocationNumber2 : String(5) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Check digit'
  @sap.quickinfo : 'Check digit for the international location number'
  InternationalLocationNumber3 : String(1) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Contact Person Address'
entity BusinessPartnerA2X.A_BPContactToAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'BP Relationship No.'
  @sap.quickinfo : 'BP Relationship Number'
  key RelationshipNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartnerCompany : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartnerPerson : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity Date (Valid To)'
  key ValidityEndDate : Date not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  AddressNumber : String(10) null;
  @sap.label : 'Street 3'
  AdditionalStreetPrefixName : String(40) null;
  @sap.label : 'Street 5'
  AdditionalStreetSuffixName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Time zone'
  @sap.quickinfo : 'Address time zone'
  AddressTimeZone : String(6) null;
  @sap.label : 'c/o'
  @sap.quickinfo : 'c/o name'
  CareOfName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'City Code'
  @sap.quickinfo : 'City code for city/street file'
  CityCode : String(12) null;
  @sap.label : 'City'
  CityName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Postal Code'
  @sap.quickinfo : 'Company Postal Code (for Large Customers)'
  CompanyPostalCode : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3) null;
  @sap.label : 'County'
  County : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Service No.'
  @sap.quickinfo : 'Number of Delivery Service'
  DeliveryServiceNumber : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delvry Serv Type'
  @sap.quickinfo : 'Type of Delivery Service'
  DeliveryServiceTypeCode : String(4) null;
  @sap.label : 'District'
  District : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title'
  @sap.quickinfo : 'Form-of-Address Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FormOfAddress : String(4) null;
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full name of a party (Bus. Partner, Org. Unit, Doc. address)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FullName : String(80) null;
  @sap.label : 'Different City'
  @sap.quickinfo : 'City (different from postal city)'
  HomeCityName : String(40) null;
  @sap.label : 'House Number'
  HouseNumber : String(10) null;
  @sap.label : 'Supplement'
  @sap.quickinfo : 'House number supplement'
  HouseNumberSupplementText : String(10) null;
  @sap.label : 'Language Key'
  Language : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box'
  POBox : String(10) null;
  @sap.label : 'PO Box City'
  @sap.quickinfo : 'PO Box city'
  POBoxDeviatingCityName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Ctry/Region'
  @sap.quickinfo : 'PO Box of Country/Region'
  POBoxDeviatingCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Region'
  @sap.quickinfo : 'Region for PO Box (Country/Region, State, Province, ...)'
  POBoxDeviatingRegion : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box w/o No.'
  @sap.quickinfo : 'Flag: PO Box Without Number'
  POBoxIsWithoutNumber : Boolean null;
  @sap.label : 'PO Box Lobby'
  POBoxLobbyName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Postal Code'
  POBoxPostalCode : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Person : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City Postal Code'
  PostalCode : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Method'
  @sap.quickinfo : 'Communication Method (Key) (Business Address Services)'
  PrfrdCommMediumType : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3) null;
  @sap.label : 'Street'
  StreetName : String(60) null;
  @sap.label : 'Street 2'
  StreetPrefixName : String(40) null;
  @sap.label : 'Street 4'
  StreetSuffixName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Zone'
  @sap.quickinfo : 'Transportation zone to or from which the goods are delivered'
  TransportZone : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Version'
  @sap.quickinfo : 'Version ID for International Addresses'
  AddressRepresentationCode : String(1) null;
  @sap.label : 'Function'
  ContactRelationshipFunction : String(40) null;
  @sap.label : 'Department'
  ContactRelationshipDepartment : String(40) null;
  @sap.label : 'Floor'
  @sap.quickinfo : 'Floor in building'
  Floor : String(10) null;
  @sap.label : 'Building code'
  @sap.quickinfo : 'Building (number or code)'
  ContactPersonBuilding : String(10) null;
  @sap.label : 'Room Number'
  @sap.quickinfo : 'Room or Apartment Number'
  RoomNumber : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Method'
  @sap.quickinfo : 'Communication Method (Key) (Business Address Services)'
  ContactPersonPrfrdCommMedium : String(3) null;
  @sap.label : 'Short name'
  @sap.quickinfo : 'Short name for correspondence'
  CorrespondenceShortName : String(10) null;
  @sap.label : 'Internal mail'
  @sap.quickinfo : 'Internal Mail Postal Code'
  InhouseMail : String(10) null;
  @cds.ambiguous : 'missing on condition?'
  to_EmailAddress : Association to many BusinessPartnerA2X.A_AddressEmailAddress {  };
  @cds.ambiguous : 'missing on condition?'
  to_FaxNumber : Association to many BusinessPartnerA2X.A_AddressFaxNumber {  };
  @cds.ambiguous : 'missing on condition?'
  to_MobilePhoneNumber : Association to many BusinessPartnerA2X.A_AddressPhoneNumber {  };
  @cds.ambiguous : 'missing on condition?'
  to_PhoneNumber : Association to many BusinessPartnerA2X.A_AddressPhoneNumber {  };
  @cds.ambiguous : 'missing on condition?'
  to_URLAddress : Association to many BusinessPartnerA2X.A_AddressHomePageURL {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Function and Department'
entity BusinessPartnerA2X.A_BPContactToFuncAndDept {
  @sap.display.format : 'UpperCase'
  @sap.label : 'BP Relationship No.'
  @sap.quickinfo : 'BP Relationship Number'
  key RelationshipNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartnerCompany : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartnerPerson : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity Date (Valid To)'
  key ValidityEndDate : Date not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Function'
  @sap.quickinfo : 'Function of partner'
  ContactPersonFunction : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Department'
  ContactPersonDepartment : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone No.: Dialing Code + Number'
  PhoneNumber : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Telephone no.: Extension'
  PhoneNumberExtension : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'Fax Number: Dialing Code+Number'
  FaxNumber : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Fax no.: Extension'
  FaxNumberExtension : String(10) null;
  @sap.label : 'Email Address'
  EmailAddress : String(241) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relationship Cat.'
  @sap.quickinfo : 'Business Partner Relationship Category'
  RelationshipCategory : String(6) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Address Usage'
entity BusinessPartnerA2X.A_BuPaAddressUsage {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity End of a Business Partner Address Usage'
  key ValidityEndDate : DateTime not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Type'
  key AddressUsage : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity Start of a Business Partner Address Usage'
  ValidityStartDate : DateTime null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard Usage'
  @sap.quickinfo : 'Indicator: Standard Address Usage'
  StandardUsage : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Identification'
entity BusinessPartnerA2X.A_BuPaIdentification {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Identification Type'
  key BPIdentificationType : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID number'
  @sap.quickinfo : 'Identification Number'
  key BPIdentificationNumber : String(60) not null;
  @sap.label : 'Responsible Institn'
  @sap.quickinfo : 'Responsible Institution for ID Number'
  BPIdnNmbrIssuingInstitute : String(40) null;
  @sap.display.format : 'Date'
  @sap.label : 'Entry date'
  @sap.quickinfo : 'Date of Entry for ID Number'
  BPIdentificationEntryDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  @sap.quickinfo : 'Country/Region in Which ID Number is Valid or Was Assigned'
  Country : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3) null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid from'
  @sap.quickinfo : 'Validity Start for ID Number'
  ValidityStartDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity End for ID Number'
  ValidityEndDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Industry'
entity BusinessPartnerA2X.A_BuPaIndustry {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  key IndustrySector : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry System'
  key IndustrySystemType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard Industry'
  @sap.quickinfo : 'Industry is Standard for BP in Industry System'
  IsStandardIndustry : String(1) null;
  @sap.label : 'Description'
  IndustryKeyDescription : String(100) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Business Partner'
entity BusinessPartnerA2X.A_BusinessPartner {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Customer : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Supplier : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Academic Title 1'
  @sap.quickinfo : 'Academic Title: Key'
  AcademicTitle : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BP Category'
  @sap.quickinfo : 'Business Partner Category'
  BusinessPartnerCategory : String(1) null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessPartnerFullName : String(81) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grouping'
  @sap.quickinfo : 'Business Partner Grouping'
  BusinessPartnerGrouping : String(4) null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessPartnerName : String(81) null;
  @sap.label : 'BP GUID'
  @sap.quickinfo : 'Business Partner GUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessPartnerUUID : UUID null;
  @sap.label : 'Correspondence lang.'
  @sap.quickinfo : 'Business Partner: Correspondence Language'
  CorrespondenceLanguage : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'User who created the object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12) null;
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Date on which the object was created'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date null;
  @sap.label : 'Created at'
  @sap.quickinfo : 'Time at which the object was created'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationTime : Time null;
  @sap.label : 'First Name'
  @sap.quickinfo : 'First name of business partner (person)'
  FirstName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title'
  @sap.quickinfo : 'Form-of-Address Key'
  FormOfAddress : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry sector'
  Industry : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 1'
  @sap.quickinfo : 'International location number (part 1)'
  InternationalLocationNumber1 : String(7) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 2'
  @sap.quickinfo : 'International location number (Part 2)'
  InternationalLocationNumber2 : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Female'
  @sap.quickinfo : 'Selection: Business partner is female'
  IsFemale : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Male'
  @sap.quickinfo : 'Selection: Business partner is male'
  IsMale : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Natural Person'
  @sap.quickinfo : 'Business Partner Is a Natural Person Under the Tax Laws'
  IsNaturalPerson : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Unknown'
  @sap.quickinfo : 'Selection: Sex of business partner is not known'
  IsSexUnknown : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Gender'
  @sap.quickinfo : 'Gender of Business Partner (Person)'
  GenderCodeName : String(1) null;
  @sap.label : 'Language'
  @sap.quickinfo : 'Business partner: Language'
  Language : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Changed on'
  @sap.quickinfo : 'Date when object was last changed'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDate : Date null;
  @sap.label : 'Changed at'
  @sap.quickinfo : 'Time at which object was last changed'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeTime : Time null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed by'
  @sap.quickinfo : 'Last user to change object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangedByUser : String(12) null;
  @sap.label : 'Last Name'
  @sap.quickinfo : 'Last name of business partner (person)'
  LastName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Legal form'
  @sap.quickinfo : 'BP: Legal form of organization'
  LegalForm : String(2) null;
  @sap.label : 'Name 1'
  @sap.quickinfo : 'Name 1 of organization'
  OrganizationBPName1 : String(40) null;
  @sap.label : 'Name 2'
  @sap.quickinfo : 'Name 2 of organization'
  OrganizationBPName2 : String(40) null;
  @sap.label : 'Name 3'
  @sap.quickinfo : 'Name 3 of organization'
  OrganizationBPName3 : String(40) null;
  @sap.label : 'Name 4'
  @sap.quickinfo : 'Name 4 of organization'
  OrganizationBPName4 : String(40) null;
  @sap.display.format : 'Date'
  @sap.label : 'Date founded'
  @sap.quickinfo : 'Date organization founded'
  OrganizationFoundationDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Liquidation date'
  @sap.quickinfo : 'Liquidation date of organization'
  OrganizationLiquidationDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term 1'
  @sap.quickinfo : 'Search Term 1 for Business Partner'
  SearchTerm1 : String(20) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search Term 2'
  @sap.quickinfo : 'Search Term 2 for Business Partner'
  SearchTerm2 : String(20) null;
  @sap.label : 'Other Last Name'
  @sap.quickinfo : 'Other Last Name of a Person'
  AdditionalLastName : String(40) null;
  @sap.display.format : 'Date'
  @sap.label : 'Date of Birth'
  @sap.quickinfo : 'Date of Birth of Business Partner'
  BirthDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Birth Date Status'
  @sap.quickinfo : 'Date of Birth: Status'
  BusinessPartnerBirthDateStatus : String(1) null;
  @sap.label : 'Birthplace'
  @sap.quickinfo : 'Birthplace of business partner'
  BusinessPartnerBirthplaceName : String(40) null;
  @sap.display.format : 'Date'
  @sap.label : 'Death date'
  @sap.quickinfo : 'Date of death of business partner'
  BusinessPartnerDeathDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Central Block'
  @sap.quickinfo : 'Central Block for Business Partner'
  BusinessPartnerIsBlocked : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BP Type'
  @sap.quickinfo : 'Business Partner Type'
  BusinessPartnerType : String(4) null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ETag : String(26) null;
  @sap.label : 'Name 1'
  @sap.quickinfo : 'Name 1 (group)'
  GroupBusinessPartnerName1 : String(40) null;
  @sap.label : 'Name 2'
  @sap.quickinfo : 'Name 2 (group)'
  GroupBusinessPartnerName2 : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IndependentAddressID : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Check digit'
  @sap.quickinfo : 'Check digit for the international location number'
  InternationalLocationNumber3 : String(1) null;
  @sap.label : 'Middle Name'
  @sap.quickinfo : 'Middle Name or Second Forename of a Person'
  MiddleName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ctry/Reg. for Format'
  @sap.quickinfo : 'Country/Region for Name Format Rule'
  NameCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Name Format'
  @sap.quickinfo : 'Name format'
  NameFormat : String(2) null;
  @sap.label : 'Full Name'
  PersonFullName : String(80) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PersonNumber : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Archiving Flag'
  @sap.quickinfo : 'Central Archiving Flag'
  IsMarkedForArchiving : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'External BP Number'
  @sap.quickinfo : 'Business Partner Number in External System'
  BusinessPartnerIDByExtSystem : String(20) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Print Format'
  @sap.quickinfo : 'Business Partner Print Format'
  BusinessPartnerPrintFormat : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Occupation'
  @sap.quickinfo : 'Occupation/group'
  BusinessPartnerOccupation : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Marital Status'
  @sap.quickinfo : 'Marital Status of Business Partner'
  BusPartMaritalStatus : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nationality'
  BusPartNationality : String(3) null;
  @sap.label : 'Name at Birth'
  @sap.quickinfo : 'Name at birth of business partner'
  BusinessPartnerBirthName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Name Supplement'
  @sap.quickinfo : 'Name supplement, e.g. noble title (key)'
  BusinessPartnerSupplementName : String(4) null;
  @sap.label : 'Employer'
  @sap.quickinfo : 'Name of Employer of a Natural Person'
  NaturalPersonEmployerName : String(35) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Prefix Key'
  @sap.quickinfo : 'Name Prefix (Key)'
  LastNamePrefix : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : '2nd prefix'
  @sap.quickinfo : '2nd name prefix (key)'
  LastNameSecondPrefix : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Initials'
  @sap.quickinfo : '&quot;Middle Initial&quot; or personal initials'
  Initials : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trading Partner No.'
  @sap.quickinfo : 'Company ID of Trading Partner'
  TradingPartner : String(6) null;
  @cds.ambiguous : 'missing on condition?'
  to_BuPaIdentification : Association to many BusinessPartnerA2X.A_BuPaIdentification {  };
  @cds.ambiguous : 'missing on condition?'
  to_BuPaIndustry : Association to many BusinessPartnerA2X.A_BuPaIndustry {  };
  @cds.ambiguous : 'missing on condition?'
  to_BusinessPartnerAddress : Association to many BusinessPartnerA2X.A_BusinessPartnerAddress {  };
  @cds.ambiguous : 'missing on condition?'
  to_BusinessPartnerBank : Association to many BusinessPartnerA2X.A_BusinessPartnerBank {  };
  @cds.ambiguous : 'missing on condition?'
  to_BusinessPartnerContact : Association to many BusinessPartnerA2X.A_BusinessPartnerContact {  };
  @cds.ambiguous : 'missing on condition?'
  to_BusinessPartnerRole : Association to many BusinessPartnerA2X.A_BusinessPartnerRole {  };
  @cds.ambiguous : 'missing on condition?'
  to_BusinessPartnerTax : Association to many BusinessPartnerA2X.A_BusinessPartnerTaxNumber {  };
  @cds.ambiguous : 'missing on condition?'
  to_BusPartAddrDepdntTaxNmbr : Association to many BusinessPartnerA2X.A_BusPartAddrDepdntTaxNmbr {  };
  @cds.ambiguous : 'missing on condition?'
  to_Customer : Association to BusinessPartnerA2X.A_Customer {  };
  @cds.ambiguous : 'missing on condition?'
  to_Supplier : Association to BusinessPartnerA2X.A_Supplier {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Address'
entity BusinessPartnerA2X.A_BusinessPartnerAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity Start of a Business Partner Address'
  ValidityStartDate : DateTime null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity End of a Business Partner Address'
  ValidityEndDate : DateTime null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4) null;
  @sap.label : 'GUID of a Business Partner Address'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddressUUID : UUID null;
  @sap.label : 'Street 3'
  AdditionalStreetPrefixName : String(40) null;
  @sap.label : 'Street 5'
  AdditionalStreetSuffixName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Time zone'
  @sap.quickinfo : 'Address time zone'
  AddressTimeZone : String(6) null;
  @sap.label : 'c/o'
  @sap.quickinfo : 'c/o name'
  CareOfName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'City Code'
  @sap.quickinfo : 'City code for city/street file'
  CityCode : String(12) null;
  @sap.label : 'City'
  CityName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Postal Code'
  @sap.quickinfo : 'Company Postal Code (for Large Customers)'
  CompanyPostalCode : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3) null;
  @sap.label : 'County'
  County : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Service No.'
  @sap.quickinfo : 'Number of Delivery Service'
  DeliveryServiceNumber : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delvry Serv Type'
  @sap.quickinfo : 'Type of Delivery Service'
  DeliveryServiceTypeCode : String(4) null;
  @sap.label : 'District'
  District : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Title'
  @sap.quickinfo : 'Form-of-Address Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FormOfAddress : String(4) null;
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full name of a party (Bus. Partner, Org. Unit, Doc. address)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FullName : String(80) null;
  @sap.label : 'Different City'
  @sap.quickinfo : 'City (different from postal city)'
  HomeCityName : String(40) null;
  @sap.label : 'House Number'
  HouseNumber : String(10) null;
  @sap.label : 'Supplement'
  @sap.quickinfo : 'House number supplement'
  HouseNumberSupplementText : String(10) null;
  @sap.label : 'Language Key'
  Language : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box'
  POBox : String(10) null;
  @sap.label : 'PO Box City'
  @sap.quickinfo : 'PO Box city'
  POBoxDeviatingCityName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Ctry/Region'
  @sap.quickinfo : 'PO Box of Country/Region'
  POBoxDeviatingCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Region'
  @sap.quickinfo : 'Region for PO Box (Country/Region, State, Province, ...)'
  POBoxDeviatingRegion : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box w/o No.'
  @sap.quickinfo : 'Flag: PO Box Without Number'
  POBoxIsWithoutNumber : Boolean null;
  @sap.label : 'PO Box Lobby'
  POBoxLobbyName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'PO Box Postal Code'
  POBoxPostalCode : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Person Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Person : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City Postal Code'
  PostalCode : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Comm. Method'
  @sap.quickinfo : 'Communication Method (Key) (Business Address Services)'
  PrfrdCommMediumType : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3) null;
  @sap.label : 'Street'
  StreetName : String(60) null;
  @sap.label : 'Street 2'
  StreetPrefixName : String(40) null;
  @sap.label : 'Street 4'
  StreetSuffixName : String(40) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transportation Zone'
  @sap.quickinfo : 'Transportation zone to or from which the goods are delivered'
  TransportZone : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'External Address No.'
  @sap.quickinfo : 'Address number in external system'
  AddressIDByExternalSystem : String(20) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'County code'
  @sap.quickinfo : 'County code for county'
  CountyCode : String(8) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Township code'
  @sap.quickinfo : 'Township code for Township'
  TownshipCode : String(8) null;
  @sap.label : 'Township'
  TownshipName : String(40) null;
  @cds.ambiguous : 'missing on condition?'
  to_AddressUsage : Association to many BusinessPartnerA2X.A_BuPaAddressUsage {  };
  @cds.ambiguous : 'missing on condition?'
  to_BPAddrDepdntIntlLocNumber : Association to BusinessPartnerA2X.A_BPAddrDepdntIntlLocNumber {  };
  @cds.ambiguous : 'missing on condition?'
  to_EmailAddress : Association to many BusinessPartnerA2X.A_AddressEmailAddress {  };
  @cds.ambiguous : 'missing on condition?'
  to_FaxNumber : Association to many BusinessPartnerA2X.A_AddressFaxNumber {  };
  @cds.ambiguous : 'missing on condition?'
  to_MobilePhoneNumber : Association to many BusinessPartnerA2X.A_AddressPhoneNumber {  };
  @cds.ambiguous : 'missing on condition?'
  to_PhoneNumber : Association to many BusinessPartnerA2X.A_AddressPhoneNumber {  };
  @cds.ambiguous : 'missing on condition?'
  to_URLAddress : Association to many BusinessPartnerA2X.A_AddressHomePageURL {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Bank'
entity BusinessPartnerA2X.A_BusinessPartnerBank {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bank Details ID'
  key BankIdentification : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bank Country/Region'
  @sap.quickinfo : 'Country/Region Key of Bank'
  BankCountryKey : String(3) null;
  @sap.label : 'Bank Name'
  @sap.quickinfo : 'Name of Financial Institution'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BankName : String(60) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bank Key'
  BankNumber : String(15) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'SWIFT/BIC'
  @sap.quickinfo : 'SWIFT/BIC for International Payments'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SWIFTCode : String(11) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bank Control Key'
  BankControlKey : String(2) null;
  @sap.label : 'Account Holder'
  @sap.quickinfo : 'Account Holder Name'
  BankAccountHolderName : String(60) null;
  @sap.label : 'Account Name'
  @sap.quickinfo : 'Name of Bank Account'
  BankAccountName : String(40) null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity Start of Business Partner Bank Details'
  ValidityStartDate : DateTime null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity End of Business Partner Bank Details'
  ValidityEndDate : DateTime null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'IBAN'
  @sap.quickinfo : 'IBAN (International Bank Account Number)'
  IBAN : String(34) null;
  @sap.display.format : 'Date'
  @sap.label : 'IBAN Valid From'
  @sap.quickinfo : 'Validity Start of IBAN'
  IBANValidityStartDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bank Account'
  @sap.quickinfo : 'Bank Account Number'
  BankAccount : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Details'
  @sap.quickinfo : 'Reference Details for Bank Details'
  BankAccountReferenceText : String(20) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Collect.author.'
  @sap.quickinfo : 'Indicator: Collection Authorization'
  CollectionAuthInd : Boolean null;
  @sap.label : 'City'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CityName : String(35) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Contact'
entity BusinessPartnerA2X.A_BusinessPartnerContact {
  @sap.display.format : 'UpperCase'
  @sap.label : 'BP Relationship No.'
  @sap.quickinfo : 'BP Relationship Number'
  key RelationshipNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartnerCompany : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartnerPerson : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity Date (Valid To)'
  key ValidityEndDate : Date not null;
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity Date (Valid From)'
  ValidityStartDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Standard'
  @sap.quickinfo : 'Standard Relationship'
  IsStandardRelationship : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relationship Cat.'
  @sap.quickinfo : 'Business Partner Relationship Category'
  RelationshipCategory : String(6) null;
  @cds.ambiguous : 'missing on condition?'
  to_ContactAddress : Association to many BusinessPartnerA2X.A_BPContactToAddress {  };
  @cds.ambiguous : 'missing on condition?'
  to_ContactRelationship : Association to BusinessPartnerA2X.A_BPContactToFuncAndDept {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Role'
entity BusinessPartnerA2X.A_BusinessPartnerRole {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BP Role'
  key BusinessPartnerRole : String(6) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Validity Start of a BP Role'
  ValidFrom : DateTime null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'Validity End of a BP Role'
  ValidTo : DateTime null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Tax Number'
entity BusinessPartnerA2X.A_BusinessPartnerTaxNumber {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number Category'
  key BPTaxType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax number'
  @sap.quickinfo : 'Business Partner Tax Number'
  BPTaxNumber : String(20) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number Long'
  @sap.quickinfo : 'Business Partner Tax Number'
  BPTaxLongNumber : String(60) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Business Partner Address Dependent Tax Numbers'
entity BusinessPartnerA2X.A_BusPartAddrDepdntTaxNmbr {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Partner'
  @sap.quickinfo : 'Business Partner Number'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number Category'
  key BPTaxType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax number'
  @sap.quickinfo : 'Business Partner Tax Number'
  BPTaxNumber : String(20) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number Long'
  @sap.quickinfo : 'Business Partner Tax Number'
  BPTaxLongNumber : String(60) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer Address Dependent External Identifier'
entity BusinessPartnerA2X.A_CustAddrDepdntExtIdentifier {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  @sap.quickinfo : 'Business Partner Address Number (from BUT020)'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer ID External'
  @sap.quickinfo : 'Customer Identifier for External System'
  CustomerExternalRefID : String(12) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer Address Dependent Infomation'
entity BusinessPartnerA2X.A_CustAddrDepdntInformation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  @sap.quickinfo : 'Business Partner Address Number (from BUT020)'
  key AddressID : String(10) not null;
  @sap.label : 'Express station'
  @sap.quickinfo : 'Express train station'
  ExpressTrainStationName : String(25) null;
  @sap.label : 'Train station'
  TrainStationName : String(25) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'City Code'
  CityCode : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'County Code'
  County : String(3) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Customer'
entity BusinessPartnerA2X.A_Customer {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Block'
  @sap.quickinfo : 'Central Billing Block for Customer'
  BillingIsBlockedForCustomer : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12) null;
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Classific.'
  @sap.quickinfo : 'Customer Classification'
  CustomerClassification : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Name'
  @sap.quickinfo : 'Customer Full Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CustomerFullName : String(220) null;
  @sap.label : 'Name of Customer'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CustomerName : String(80) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery block'
  @sap.quickinfo : 'Central delivery block for the customer'
  DeliveryIsBlocked : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Natural Person'
  NFPartnerIsNaturalPerson : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Block'
  @sap.quickinfo : 'Central Order Block for Customer'
  OrderIsBlockedForCustomer : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posting Block'
  @sap.quickinfo : 'Central Posting Block'
  PostingIsBlocked : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  Supplier : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Key'
  CustomerCorporateGroup : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal address'
  @sap.quickinfo : 'Account number of the master record with the fiscal address'
  FiscalAddress : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  @sap.quickinfo : 'Industry key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Industry : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry Code 1'
  IndustryCode1 : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry Code 2'
  IndustryCode2 : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry Code 3'
  IndustryCode3 : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry Code 4'
  IndustryCode4 : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry Code 5'
  IndustryCode5 : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 1'
  @sap.quickinfo : 'International location number (part 1)'
  InternationalLocationNumber1 : String(7) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nielsen Indicator'
  @sap.quickinfo : 'Nielsen ID'
  NielsenRegion : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Type'
  ResponsibleType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 1'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber1 : String(16) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 2'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber2 : String(11) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 3'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber3 : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 4'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber4 : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 5'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber5 : String(60) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number Type'
  TaxNumberType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion Flag'
  @sap.quickinfo : 'Central Deletion Flag for Master Record'
  DeletionIndicator : Boolean null;
  @sap.label : 'Express station'
  @sap.quickinfo : 'Express train station'
  ExpressTrainStationName : String(25) null;
  @sap.label : 'Train station'
  TrainStationName : String(25) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'City Code'
  CityCode : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'County Code'
  County : String(3) null;
  @cds.ambiguous : 'missing on condition?'
  to_CustAddrDepdntExtIdentifier : Association to many BusinessPartnerA2X.A_CustAddrDepdntExtIdentifier {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustAddrDepdntInformation : Association to many BusinessPartnerA2X.A_CustAddrDepdntInformation {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustomerCompany : Association to many BusinessPartnerA2X.A_CustomerCompany {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustomerSalesArea : Association to many BusinessPartnerA2X.A_CustomerSalesArea {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustomerTaxGrouping : Association to many BusinessPartnerA2X.A_CustomerTaxGrouping {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustomerText : Association to many BusinessPartnerA2X.A_CustomerText {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustomerUnloadingPoint : Association to many BusinessPartnerA2X.A_CustomerUnloadingPoint {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustUnldgPtAddrDepdntInfo : Association to many BusinessPartnerA2X.A_CustUnldgPtAddrDepdntInfo {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Customer Company'
entity BusinessPartnerA2X.A_CustomerCompany {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tolerance group'
  @sap.quickinfo : 'Tolerance group for the business partner/G/L account'
  APARToleranceGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account at customer'
  @sap.quickinfo : 'Our account number at customer'
  AccountByCustomer : String(12) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Clerk Abbrev.'
  @sap.quickinfo : 'Accounting Clerk Abbreviation'
  AccountingClerk : String(2) null;
  @sap.label : 'Acctg clerk''s fax'
  @sap.quickinfo : 'Accounting clerk''s fax number at the customer/vendor'
  AccountingClerkFaxNumber : String(31) null;
  @sap.label : 'Clrk''s internet add.'
  @sap.quickinfo : 'Internet address of partner company clerk'
  AccountingClerkInternetAddress : String(130) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct.clerks tel.no.'
  @sap.quickinfo : 'Accounting clerk''s telephone number at business partner'
  AccountingClerkPhoneNumber : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative payer'
  @sap.quickinfo : 'Account number of an alternative payer'
  AlternativePayerAccount : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Coll.invoice variant'
  @sap.quickinfo : 'Collective invoice variant'
  CollectiveInvoiceVariant : String(1) null;
  @sap.label : 'Account memo'
  @sap.quickinfo : 'Memo'
  CustomerAccountNote : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Head Office'
  @sap.quickinfo : 'Head Office Account Number (in branch accounts)'
  CustomerHeadOffice : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Clearing with vendor'
  @sap.quickinfo : 'Indicator: Clearing between customer and vendor ?'
  CustomerSupplierClearingIsUsed : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'House Bank'
  @sap.quickinfo : 'Short Key for a House Bank'
  HouseBank : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Interest indicator'
  @sap.quickinfo : 'Interest Indicator'
  InterestCalculationCode : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Last key date'
  @sap.quickinfo : 'Key date of the last interest calculation'
  InterestCalculationDate : Date null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int.Calc.Freq.'
  @sap.quickinfo : 'Interest Calculation Frequency in Months'
  IntrstCalcFrequencyInMonths : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Local processing'
  @sap.quickinfo : 'Indicator: Local processing?'
  IsToBeLocallyProcessed : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Individual pmnt'
  @sap.quickinfo : 'Indicator: Pay all items separately ?'
  ItemIsToBePaidSeparately : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sort Key'
  @sap.quickinfo : 'Key for Sorting According to Assignment Numbers'
  LayoutSortingRule : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment block'
  @sap.quickinfo : 'Block Key for Payment'
  PaymentBlockingReason : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Methods'
  @sap.quickinfo : 'List of Respected Payment Methods'
  PaymentMethodsList : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pmnt advice by EDI'
  @sap.quickinfo : 'Indicator: Send Payment Advices by EDI'
  PaytAdviceIsSentbyEDI : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Co.code post.block'
  @sap.quickinfo : 'Posting block for company code'
  PhysicalInventoryBlockInd : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reconciliation Acct'
  @sap.quickinfo : 'Reconciliation Account in General Ledger'
  ReconciliationAccount : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record pmnt history'
  @sap.quickinfo : 'Indicator: Record Payment History ?'
  RecordPaymentHistoryIndicator : Boolean null;
  @sap.label : 'User at customer'
  UserAtCustomer : String(15) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Co.Cde Deletion Flag'
  @sap.quickinfo : 'Deletion Flag for Master Record (Company Code Level)'
  DeletionIndicator : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning group'
  CashPlanningGroup : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Knwn/negotiat.leave'
  @sap.quickinfo : 'Short Key for Known/Negotiated Leave'
  KnownOrNegotiatedLeave : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Value Adjustment'
  @sap.quickinfo : 'Value Adjustment Key'
  ValueAdjustmentKey : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4) null;
  @cds.ambiguous : 'missing on condition?'
  to_CompanyText : Association to many BusinessPartnerA2X.A_CustomerCompanyText {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustomerDunning : Association to many BusinessPartnerA2X.A_CustomerDunning {  };
  @cds.ambiguous : 'missing on condition?'
  to_WithHoldingTax : Association to many BusinessPartnerA2X.A_CustomerWithHoldingTax {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer Company Text'
entity BusinessPartnerA2X.A_CustomerCompanyText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.label : 'Language'
  @sap.quickinfo : 'Language key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key LongTextID : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer Dunning'
entity BusinessPartnerA2X.A_CustomerDunning {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Area'
  key DunningArea : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Block'
  DunningBlock : String(1) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Dunning Level'
  DunningLevel : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Procedure'
  DunningProcedure : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunn.recipient'
  @sap.quickinfo : 'Account number of the dunning recipient'
  DunningRecipient : String(10) null;
  @sap.display.format : 'Date'
  @sap.label : 'Last Dunned'
  @sap.quickinfo : 'Date of Last Dunning Notice'
  LastDunnedOn : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Legal dunn.proc.from'
  @sap.quickinfo : 'Date of the legal dunning proceedings'
  LegDunningProcedureOn : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning clerk'
  DunningClerk : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Sales Area'
entity BusinessPartnerA2X.A_CustomerSalesArea {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  key Division : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account at customer'
  @sap.quickinfo : 'Shipper''s (Our) Account Number at the Customer or Vendor'
  AccountByCustomer : String(12) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BBlock for SlsA'
  @sap.quickinfo : 'Billing block for customer (sales and distribution)'
  BillingIsBlockedForCustomer : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Complete Delivery'
  @sap.quickinfo : 'Complete Delivery Defined for Each Sales Order?'
  CompleteDeliveryIsDefined : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.semantics : 'currency-code'
  Currency : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ABC Classification'
  @sap.quickinfo : 'Customer classification (ABC analysis)'
  CustomerABCClassification : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct Assmt Grp Cust.'
  @sap.quickinfo : 'Account Assignment Group for Customer'
  CustomerAccountAssignmentGroup : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group'
  CustomerGroup : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  @sap.quickinfo : 'Terms of Payment Key'
  CustomerPaymentTerms : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Price Group'
  CustomerPriceGroup : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cust.Pric.Procedure'
  @sap.quickinfo : 'Customer Classification for Pricing Procedure Determination'
  CustomerPricingProcedure : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'DelBlckSalesAr.'
  @sap.quickinfo : 'Customer delivery block (sales area)'
  DeliveryIsBlockedForCustomer : String(2) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Delivery Priority'
  DeliveryPriority : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3) null;
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4) null;
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Del.ID SlsArea'
  @sap.quickinfo : 'Deletion flag for customer (sales level)'
  DeletionIndicator : Boolean null;
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoicing Dates'
  @sap.quickinfo : 'Invoice Dates (Calendar Identification)'
  InvoiceDate : String(2) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Order Probability'
  @sap.quickinfo : 'Order Probability of the Item'
  ItemOrderProbabilityInPercent : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Combination'
  @sap.quickinfo : 'Order Combination Indicator'
  OrderCombinationIsAllowed : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ord.blk:sls ar.'
  @sap.quickinfo : 'Customer order block (sales area)'
  OrderIsBlockedForCustomer : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partial Deliv./Item'
  @sap.quickinfo : 'Partial Delivery at Item Level'
  PartialDeliveryIsAllowed : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Price List Type'
  PriceListType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Group'
  SalesGroup : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Office'
  SalesOffice : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Conditions'
  ShippingCondition : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivering Plant'
  @sap.quickinfo : 'Delivering Plant (Own or External)'
  SupplyingPlant : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales District'
  SalesDistrict : String(6) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoice List Sched.'
  @sap.quickinfo : 'Invoice List Schedule (calendar identification)'
  InvoiceListSchedule : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exchange Rate Type'
  ExchangeRateType : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group 1'
  AdditionalCustomerGroup1 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group 2'
  AdditionalCustomerGroup2 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group 3'
  AdditionalCustomerGroup3 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group 4'
  AdditionalCustomerGroup4 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group 5'
  AdditionalCustomerGroup5 : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Paymt guarant. proc.'
  @sap.quickinfo : 'Customer payment guarantee procedure'
  PaymentGuaranteeProcedure : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4) null;
  @cds.ambiguous : 'missing on condition?'
  to_PartnerFunction : Association to many BusinessPartnerA2X.A_CustSalesPartnerFunc {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesAreaTax : Association to many BusinessPartnerA2X.A_CustomerSalesAreaTax {  };
  @cds.ambiguous : 'missing on condition?'
  to_SalesAreaText : Association to many BusinessPartnerA2X.A_CustomerSalesAreaText {  };
  @cds.ambiguous : 'missing on condition?'
  to_SlsAreaAddrDepdntInfo : Association to many BusinessPartnerA2X.A_CustSlsAreaAddrDepdntInfo {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Sales Area Tax'
entity BusinessPartnerA2X.A_CustomerSalesAreaTax {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'RefDistCh-Cust/Mat.'
  @sap.quickinfo : 'Reference distrib.channel for cust.and material masters'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  key Division : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Departure Ctry/Reg.'
  @sap.quickinfo : 'Departure Country/Region (from which the goods are sent)'
  key DepartureCountry : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Category'
  @sap.quickinfo : 'Tax category (sales tax, federal sales tax,...)'
  key CustomerTaxCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Classification'
  @sap.quickinfo : 'Tax classification for customer'
  CustomerTaxClassification : String(1) null;
  @cds.ambiguous : 'missing on condition?'
  to_SlsAreaAddrDepdntTax : Association to many BusinessPartnerA2X.A_CustSlsAreaAddrDepdntTaxInfo {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer Sales Area Text'
entity BusinessPartnerA2X.A_CustomerSalesAreaText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  key Division : String(2) not null;
  @sap.label : 'Language'
  @sap.quickinfo : 'Language key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key LongTextID : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.content.version : '1'
@sap.label : 'Customer Tax Grouping'
entity BusinessPartnerA2X.A_CustomerTaxGrouping {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax category'
  @sap.quickinfo : 'Category indicator for tax codes'
  key CustomerTaxGroupingCode : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exempt. Number'
  @sap.quickinfo : 'Number of exemption certificate'
  CustTaxGrpExemptionCertificate : String(15) null;
  @sap.label : 'Exemption Rate'
  @sap.quickinfo : 'Exemption rate'
  CustTaxGroupExemptionRate : Decimal(5, 2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Exempted from'
  @sap.quickinfo : 'Start date of exemption'
  CustTaxGroupExemptionStartDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Exempted until'
  @sap.quickinfo : 'End date of exemption'
  CustTaxGroupExemptionEndDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'subjected from'
  @sap.quickinfo : 'Subjected from'
  CustTaxGroupSubjectedStartDate : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'subjected until'
  @sap.quickinfo : 'Subjected until'
  CustTaxGroupSubjectedEndDate : Date null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer Text'
entity BusinessPartnerA2X.A_CustomerText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key Customer : String(10) not null;
  @sap.label : 'Language'
  @sap.quickinfo : 'Language key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key LongTextID : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer Unloading Point'
entity BusinessPartnerA2X.A_CustomerUnloadingPoint {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.label : 'Unloading Point'
  key UnloadingPointName : String(25) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cust.fact.calendar'
  @sap.quickinfo : 'Customer''s factory calendar'
  CustomerFactoryCalenderCode : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods receiving hrs'
  @sap.quickinfo : 'Goods receiving hours ID (default value)'
  BPGoodsReceivingHoursCode : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Default unloading pt'
  @sap.quickinfo : 'Default unloading point'
  IsDfltBPUnloadingPoint : Boolean null;
  @sap.label : 'Monday'
  @sap.quickinfo : 'Goods receipt times: Monday morning from ...'
  MondayMorningOpeningTime : Time null;
  @sap.label : 'Monday'
  @sap.quickinfo : 'Goods receiving hours: Monday morning until ...'
  MondayMorningClosingTime : Time null;
  @sap.label : 'Monday'
  @sap.quickinfo : 'Goods receiving hours: Monday afternoon from ...'
  MondayAfternoonOpeningTime : Time null;
  @sap.label : 'Monday'
  @sap.quickinfo : 'Goods receiving hours: Monday afternoon until ...'
  MondayAfternoonClosingTime : Time null;
  @sap.label : 'Tuesday'
  @sap.quickinfo : 'Goods receiving hours: Tuesday morning from...'
  TuesdayMorningOpeningTime : Time null;
  @sap.label : 'Tuesday'
  @sap.quickinfo : 'Goods receipt times: Tuesday morning until ...'
  TuesdayMorningClosingTime : Time null;
  @sap.label : 'Tuesday'
  @sap.quickinfo : 'Goods receiving hours: Tuesday afternoon from ...'
  TuesdayAfternoonOpeningTime : Time null;
  @sap.label : 'Tuesday'
  @sap.quickinfo : 'Goods receiving hours: Tuesday afternoon until ...'
  TuesdayAfternoonClosingTime : Time null;
  @sap.label : 'Wednesday'
  @sap.quickinfo : 'Goods receiving hours: Wednesday morning from ...'
  WednesdayMorningOpeningTime : Time null;
  @sap.label : 'Wednesday'
  @sap.quickinfo : 'Goods receiving hours: Wednesday morning until ...'
  WednesdayMorningClosingTime : Time null;
  @sap.label : 'Wednesday'
  @sap.quickinfo : 'Goods receiving hours: Wednesday afternoon from ...'
  WednesdayAfternoonOpeningTime : Time null;
  @sap.label : 'Wednesday'
  @sap.quickinfo : 'Goods receiving hours: Wednesday afternoon until ...'
  WednesdayAfternoonClosingTime : Time null;
  @sap.label : 'Thursday'
  @sap.quickinfo : 'Goods receiving hours: Thursday morning from ...'
  ThursdayMorningOpeningTime : Time null;
  @sap.label : 'Thursday'
  @sap.quickinfo : 'Goods receiving hours: Thursday morning until ...'
  ThursdayMorningClosingTime : Time null;
  @sap.label : 'Thursday'
  @sap.quickinfo : 'Goods receiving hours: Thursday afternoon from ...'
  ThursdayAfternoonOpeningTime : Time null;
  @sap.label : 'Thursday'
  @sap.quickinfo : 'Goods receiving hours: Thursday afternoon until...'
  ThursdayAfternoonClosingTime : Time null;
  @sap.label : 'Friday'
  @sap.quickinfo : 'Goods receiving hours: Friday morning from ...'
  FridayMorningOpeningTime : Time null;
  @sap.label : 'Friday'
  @sap.quickinfo : 'Goods receiving hours: Friday morning until ...'
  FridayMorningClosingTime : Time null;
  @sap.label : 'Friday'
  @sap.quickinfo : 'Goods receiving hours: Friday afternoon from ...'
  FridayAfternoonOpeningTime : Time null;
  @sap.label : 'Friday'
  @sap.quickinfo : 'Goods receiving hours: Friday afternoon until ...'
  FridayAfternoonClosingTime : Time null;
  @sap.label : 'Saturday'
  @sap.quickinfo : 'Goods receiving hours: Saturday morning from ...'
  SaturdayMorningOpeningTime : Time null;
  @sap.label : 'Saturday'
  @sap.quickinfo : 'Goods receiving hours: Saturday morning from ...'
  SaturdayMorningClosingTime : Time null;
  @sap.label : 'Saturday'
  @sap.quickinfo : 'Goods receiving hours: Saturday afternoon from ...'
  SaturdayAfternoonOpeningTime : Time null;
  @sap.label : 'Saturday'
  @sap.quickinfo : 'Goods receiving hours: Saturday afternoon until ...'
  SaturdayAfternoonClosingTime : Time null;
  @sap.label : 'Sunday'
  @sap.quickinfo : 'Goods receiving hours: Sunday morning from ...'
  SundayMorningOpeningTime : Time null;
  @sap.label : 'Sunday'
  @sap.quickinfo : 'Goods receiving hours: Sunday morning until ...'
  SundayMorningClosingTime : Time null;
  @sap.label : 'Sunday'
  @sap.quickinfo : 'Goods receiving hours: Sunday afternoon from ...'
  SundayAfternoonOpeningTime : Time null;
  @sap.label : 'Sunday'
  @sap.quickinfo : 'Goods receiving hours: Sunday afternoon until ...'
  SundayAfternoonClosingTime : Time null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Withholding Tax'
entity BusinessPartnerA2X.A_CustomerWithHoldingTax {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Withholding Tax Type'
  @sap.quickinfo : 'Indicator for Withholding Tax Type'
  key WithholdingTaxType : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'W/tax code'
  @sap.quickinfo : 'Withholding tax code'
  WithholdingTaxCode : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'With/tax agent'
  @sap.quickinfo : 'Indicator: Withholding tax agent?'
  WithholdingTaxAgent : Boolean null;
  @sap.display.format : 'Date'
  @sap.label : 'W/tax obligated from'
  @sap.quickinfo : 'Obligated to withhold tax from'
  ObligationDateBegin : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Oblig.to w/tax until'
  @sap.quickinfo : 'Obligated to withhold tax until'
  ObligationDateEnd : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'W/tax number'
  @sap.quickinfo : 'Withholding tax identification number'
  WithholdingTaxNumber : String(16) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exemption number'
  @sap.quickinfo : 'Exemption certificate number'
  WithholdingTaxCertificate : String(25) null;
  @sap.label : 'Exemption rate'
  WithholdingTaxExmptPercent : Decimal(5, 2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Exemption start date'
  @sap.quickinfo : 'Date on which exemption begins'
  ExemptionDateBegin : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Exemption end date'
  @sap.quickinfo : 'Date on which exemption ends'
  ExemptionDateEnd : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exemption reason'
  @sap.quickinfo : 'Reason for exemption'
  ExemptionReason : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Sales Partner Functions'
entity BusinessPartnerA2X.A_CustSalesPartnerFunc {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  key Division : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Partner counter'
  key PartnerCounter : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  BPCustomerNumber : String(10) null;
  @sap.label : 'Partner Description'
  @sap.quickinfo : 'Cust.-Specif. Descr. of Business Partner (Plant, Stor. Loc.)'
  CustomerPartnerDescription : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Default Partner'
  DefaultPartner : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  Supplier : String(10) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Personnel Number'
  PersonnelNumber : String(8) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Contact Person'
  @sap.quickinfo : 'Number of Contact Person'
  ContactPerson : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  @sap.quickinfo : 'Business Partner Address Number (from BUT020)'
  AddressID : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer Sales Area Address Dependent Information'
entity BusinessPartnerA2X.A_CustSlsAreaAddrDepdntInfo {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  key Division : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  @sap.quickinfo : 'Business Partner Address Number (from BUT020)'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3) null;
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70) null;
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'DelBlckSalesAr.'
  @sap.quickinfo : 'Customer delivery block (sales area)'
  DeliveryIsBlocked : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Office'
  SalesOffice : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Group'
  SalesGroup : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Conditions'
  ShippingCondition : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivering Plant'
  @sap.quickinfo : 'Delivering Plant (Own or External)'
  SupplyingPlant : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer Sales Area Address Dependent Tax Info'
entity BusinessPartnerA2X.A_CustSlsAreaAddrDepdntTaxInfo {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'RefDistCh-Cust/Mat.'
  @sap.quickinfo : 'Reference distrib.channel for cust.and material masters'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  key Division : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  @sap.quickinfo : 'Business Partner Address Number (from BUT020)'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Departure Ctry/Reg.'
  @sap.quickinfo : 'Departure Country/Region (from which the goods are sent)'
  key DepartureCountry : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Category'
  @sap.quickinfo : 'Tax category (sales tax, federal sales tax,...)'
  key CustomerTaxCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Classification'
  @sap.quickinfo : 'Tax classification for customer'
  CustomerTaxClassification : String(1) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Customer Unloading Point Address Dependent Information'
entity BusinessPartnerA2X.A_CustUnldgPtAddrDepdntInfo {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  @sap.quickinfo : 'Business Partner Address Number (from BUT020)'
  key AddressID : String(10) not null;
  @sap.label : 'Unloading Point'
  key UnloadingPointName : String(25) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cust.fact.calendar'
  @sap.quickinfo : 'Customer''s factory calendar'
  CustomerFactoryCalenderCode : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods receiving hrs'
  @sap.quickinfo : 'Goods receiving hours ID (default value)'
  BPGoodsReceivingHoursCode : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Default unloading pt'
  @sap.quickinfo : 'Default unloading point'
  IsDfltBPUnloadingPoint : Boolean null;
  @sap.label : 'Monday'
  @sap.quickinfo : 'Goods receipt times: Monday morning from ...'
  MondayMorningOpeningTime : Time null;
  @sap.label : 'Monday'
  @sap.quickinfo : 'Goods receiving hours: Monday morning until ...'
  MondayMorningClosingTime : Time null;
  @sap.label : 'Monday'
  @sap.quickinfo : 'Goods receiving hours: Monday afternoon from ...'
  MondayAfternoonOpeningTime : Time null;
  @sap.label : 'Monday'
  @sap.quickinfo : 'Goods receiving hours: Monday afternoon until ...'
  MondayAfternoonClosingTime : Time null;
  @sap.label : 'Tuesday'
  @sap.quickinfo : 'Goods receiving hours: Tuesday morning from...'
  TuesdayMorningOpeningTime : Time null;
  @sap.label : 'Tuesday'
  @sap.quickinfo : 'Goods receipt times: Tuesday morning until ...'
  TuesdayMorningClosingTime : Time null;
  @sap.label : 'Tuesday'
  @sap.quickinfo : 'Goods receiving hours: Tuesday afternoon from ...'
  TuesdayAfternoonOpeningTime : Time null;
  @sap.label : 'Tuesday'
  @sap.quickinfo : 'Goods receiving hours: Tuesday afternoon until ...'
  TuesdayAfternoonClosingTime : Time null;
  @sap.label : 'Wednesday'
  @sap.quickinfo : 'Goods receiving hours: Wednesday morning from ...'
  WednesdayMorningOpeningTime : Time null;
  @sap.label : 'Wednesday'
  @sap.quickinfo : 'Goods receiving hours: Wednesday morning until ...'
  WednesdayMorningClosingTime : Time null;
  @sap.label : 'Wednesday'
  @sap.quickinfo : 'Goods receiving hours: Wednesday afternoon from ...'
  WednesdayAfternoonOpeningTime : Time null;
  @sap.label : 'Wednesday'
  @sap.quickinfo : 'Goods receiving hours: Wednesday afternoon until ...'
  WednesdayAfternoonClosingTime : Time null;
  @sap.label : 'Thursday'
  @sap.quickinfo : 'Goods receiving hours: Thursday morning from ...'
  ThursdayMorningOpeningTime : Time null;
  @sap.label : 'Thursday'
  @sap.quickinfo : 'Goods receiving hours: Thursday morning until ...'
  ThursdayMorningClosingTime : Time null;
  @sap.label : 'Thursday'
  @sap.quickinfo : 'Goods receiving hours: Thursday afternoon from ...'
  ThursdayAfternoonOpeningTime : Time null;
  @sap.label : 'Thursday'
  @sap.quickinfo : 'Goods receiving hours: Thursday afternoon until...'
  ThursdayAfternoonClosingTime : Time null;
  @sap.label : 'Friday'
  @sap.quickinfo : 'Goods receiving hours: Friday morning from ...'
  FridayMorningOpeningTime : Time null;
  @sap.label : 'Friday'
  @sap.quickinfo : 'Goods receiving hours: Friday morning until ...'
  FridayMorningClosingTime : Time null;
  @sap.label : 'Friday'
  @sap.quickinfo : 'Goods receiving hours: Friday afternoon from ...'
  FridayAfternoonOpeningTime : Time null;
  @sap.label : 'Friday'
  @sap.quickinfo : 'Goods receiving hours: Friday afternoon until ...'
  FridayAfternoonClosingTime : Time null;
  @sap.label : 'Saturday'
  @sap.quickinfo : 'Goods receiving hours: Saturday morning from ...'
  SaturdayMorningOpeningTime : Time null;
  @sap.label : 'Saturday'
  @sap.quickinfo : 'Goods receiving hours: Saturday morning from ...'
  SaturdayMorningClosingTime : Time null;
  @sap.label : 'Saturday'
  @sap.quickinfo : 'Goods receiving hours: Saturday afternoon from ...'
  SaturdayAfternoonOpeningTime : Time null;
  @sap.label : 'Saturday'
  @sap.quickinfo : 'Goods receiving hours: Saturday afternoon until ...'
  SaturdayAfternoonClosingTime : Time null;
  @sap.label : 'Sunday'
  @sap.quickinfo : 'Goods receiving hours: Sunday morning from ...'
  SundayMorningOpeningTime : Time null;
  @sap.label : 'Sunday'
  @sap.quickinfo : 'Goods receiving hours: Sunday morning until ...'
  SundayMorningClosingTime : Time null;
  @sap.label : 'Sunday'
  @sap.quickinfo : 'Goods receiving hours: Sunday afternoon from ...'
  SundayAfternoonOpeningTime : Time null;
  @sap.label : 'Sunday'
  @sap.quickinfo : 'Goods receiving hours: Sunday afternoon until ...'
  SundayAfternoonClosingTime : Time null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Supplier'
entity BusinessPartnerA2X.A_Supplier {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative payee'
  @sap.quickinfo : 'Account Number of the Alternative Payee'
  AlternativePayeeAccountNumber : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12) null;
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  Customer : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment block'
  @sap.quickinfo : 'Payment Block'
  PaymentIsBlockedForSupplier : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posting Block'
  @sap.quickinfo : 'Central Posting Block'
  PostingIsBlocked : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. block'
  @sap.quickinfo : 'Centrally imposed purchasing block'
  PurchasingIsBlocked : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Group'
  @sap.quickinfo : 'Supplier Account Group'
  SupplierAccountGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Name'
  @sap.quickinfo : 'Supplier Full Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SupplierFullName : String(220) null;
  @sap.label : 'Name of Supplier'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SupplierName : String(80) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20) null;
  @sap.display.format : 'Date'
  @sap.label : 'Date of birth'
  @sap.quickinfo : 'Date of birth of the person subject to withholding tax'
  BirthDate : Date null;
  @sap.label : 'Int. Location No.'
  @sap.quickinfo : 'Cocatenated International Location Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConcatenatedInternationalLocNo : String(20) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion Flag'
  @sap.quickinfo : 'Central Deletion Flag for Master Record'
  DeletionIndicator : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal address'
  @sap.quickinfo : 'Account number of the master record with fiscal address'
  FiscalAddress : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  @sap.quickinfo : 'Industry key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Industry : String(4) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 1'
  @sap.quickinfo : 'International location number (part 1)'
  InternationalLocationNumber1 : String(7) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 2'
  @sap.quickinfo : 'International location number (Part 2)'
  InternationalLocationNumber2 : String(5) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Check digit'
  @sap.quickinfo : 'Check digit for the international location number'
  InternationalLocationNumber3 : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Natural Person'
  IsNaturalPerson : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Type'
  ResponsibleType : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'QM System Valid To'
  @sap.quickinfo : 'Validity Date of Certification'
  SuplrQltyInProcmtCertfnValidTo : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Actual QM System'
  @sap.quickinfo : 'Supplier''s QM System'
  SuplrQualityManagementSystem : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Key'
  SupplierCorporateGroup : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Block Function'
  @sap.quickinfo : 'Function That Will Be Blocked'
  SupplierProcurementBlock : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 1'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber1 : String(16) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 2'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber2 : String(11) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 3'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber3 : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 4'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber4 : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 5'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber5 : String(60) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number'
  @sap.quickinfo : 'Tax Number at Responsible Tax Authority'
  TaxNumberResponsible : String(18) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number Type'
  TaxNumberType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relevant for POD'
  @sap.quickinfo : 'Supplier indicator relevant for proof of delivery'
  SuplrProofOfDelivRlvtCode : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax split'
  @sap.quickinfo : 'Tax Split'
  BR_TaxIsSplit : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Instruction Key'
  @sap.quickinfo : 'Instruction Key for Data Medium Exchange'
  DataExchangeInstructionKey : String(2) null;
  @cds.ambiguous : 'missing on condition?'
  to_SupplierCompany : Association to many BusinessPartnerA2X.A_SupplierCompany {  };
  @cds.ambiguous : 'missing on condition?'
  to_SupplierPurchasingOrg : Association to many BusinessPartnerA2X.A_SupplierPurchasingOrg {  };
  @cds.ambiguous : 'missing on condition?'
  to_SupplierText : Association to many BusinessPartnerA2X.A_SupplierText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Supplier Company'
entity BusinessPartnerA2X.A_SupplierCompany {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4) null;
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CompanyCodeName : String(25) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment block'
  @sap.quickinfo : 'Block Key for Payment'
  PaymentBlockingReason : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Co.code post.block'
  @sap.quickinfo : 'Posting block for company code'
  SupplierIsBlockedForPosting : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Clerk Abbrev.'
  @sap.quickinfo : 'Accounting Clerk Abbreviation'
  AccountingClerk : String(2) null;
  @sap.label : 'Acctg clerk''s fax'
  @sap.quickinfo : 'Accounting clerk''s fax number at the customer/vendor'
  AccountingClerkFaxNumber : String(31) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct.clerks tel.no.'
  @sap.quickinfo : 'Accounting clerk''s telephone number at business partner'
  AccountingClerkPhoneNumber : String(30) null;
  @sap.label : 'Clerk at vendor'
  SupplierClerk : String(15) null;
  @sap.label : 'Clrk''s internet add.'
  @sap.quickinfo : 'Internet address of partner company clerk'
  SupplierClerkURL : String(130) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Methods'
  @sap.quickinfo : 'List of Respected Payment Methods'
  PaymentMethodsList : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Clearing with cust.'
  @sap.quickinfo : 'Indicator: Clearing between customer and vendor?'
  ClearCustomerSupplier : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Local processing'
  @sap.quickinfo : 'Indicator: Local processing?'
  IsToBeLocallyProcessed : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Individual pmnt'
  @sap.quickinfo : 'Indicator: Pay all items separately ?'
  ItemIsToBePaidSeparately : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pmnt advice by EDI'
  @sap.quickinfo : 'Indicator: Send Payment Advices by EDI'
  PaymentIsToBeSentByEDI : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'House Bank'
  @sap.quickinfo : 'Short Key for a House Bank'
  HouseBank : String(5) null;
  @sap.label : 'Check cashing time'
  @sap.quickinfo : 'Probable time until check is paid'
  CheckPaidDurationInDays : Decimal(3, 0) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5) null;
  @sap.unit : 'Currency'
  @sap.label : 'Bill/Ex. Limit'
  @sap.quickinfo : 'Bill of Exchange Limit (in Local Currency)'
  BillOfExchLmtAmtInCoCodeCrcy : Decimal(14, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account with vendor'
  @sap.quickinfo : 'Our account number with the vendor'
  SupplierClerkIDBySupplier : String(12) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reconciliation Acct'
  @sap.quickinfo : 'Reconciliation Account in General Ledger'
  ReconciliationAccount : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Interest indicator'
  @sap.quickinfo : 'Interest Indicator'
  InterestCalculationCode : String(2) null;
  @sap.display.format : 'Date'
  @sap.label : 'Last key date'
  @sap.quickinfo : 'Key date of the last interest calculation'
  InterestCalculationDate : Date null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int.Calc.Freq.'
  @sap.quickinfo : 'Interest Calculation Frequency in Months'
  IntrstCalcFrequencyInMonths : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Head office'
  @sap.quickinfo : 'Head office account number'
  SupplierHeadOffice : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative payee'
  @sap.quickinfo : 'Account number of the alternative payee'
  AlternativePayee : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sort Key'
  @sap.quickinfo : 'Key for Sorting According to Assignment Numbers'
  LayoutSortingRule : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tolerance group'
  @sap.quickinfo : 'Tolerance group for the business partner/G/L account'
  APARToleranceGroup : String(4) null;
  @sap.display.format : 'Date'
  @sap.label : 'Certification Date'
  @sap.quickinfo : 'Certification date'
  SupplierCertificationDate : Date null;
  @sap.label : 'Account memo'
  @sap.quickinfo : 'Memo'
  SupplierAccountNote : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'WTax C/R Key'
  @sap.quickinfo : 'Withholding Tax Country/Region Key'
  WithholdingTaxCountry : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Co.Cde Deletion Flag'
  @sap.quickinfo : 'Deletion Flag for Master Record (Company Code Level)'
  DeletionIndicator : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Planning group'
  CashPlanningGroup : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Check Double Invoice'
  @sap.quickinfo : 'Check Flag for Double Invoices or Credit Memos'
  IsToBeCheckedForDuplicates : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Minority indicator'
  @sap.quickinfo : 'Minority Indicators'
  MinorityGroup : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Group'
  @sap.quickinfo : 'Supplier Account Group'
  SupplierAccountGroup : String(4) null;
  @cds.ambiguous : 'missing on condition?'
  to_CompanyText : Association to many BusinessPartnerA2X.A_SupplierCompanyText {  };
  @cds.ambiguous : 'missing on condition?'
  to_Supplier : Association to BusinessPartnerA2X.A_Supplier {  };
  @cds.ambiguous : 'missing on condition?'
  to_SupplierDunning : Association to many BusinessPartnerA2X.A_SupplierDunning {  };
  @cds.ambiguous : 'missing on condition?'
  to_SupplierWithHoldingTax : Association to many BusinessPartnerA2X.A_SupplierWithHoldingTax {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Supplier Company Text'
entity BusinessPartnerA2X.A_SupplierCompanyText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.label : 'Language'
  @sap.quickinfo : 'Language key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key LongTextID : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Supplier Dunning'
entity BusinessPartnerA2X.A_SupplierDunning {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Area'
  key DunningArea : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Block'
  DunningBlock : String(1) null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Dunning Level'
  DunningLevel : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Procedure'
  DunningProcedure : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunn.recipient'
  @sap.quickinfo : 'Account number of the dunning recipient'
  DunningRecipient : String(10) null;
  @sap.display.format : 'Date'
  @sap.label : 'Last Dunned'
  @sap.quickinfo : 'Date of Last Dunning Notice'
  LastDunnedOn : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Legal dunn.proc.from'
  @sap.quickinfo : 'Date of the legal dunning proceedings'
  LegDunningProcedureOn : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning clerk'
  DunningClerk : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Group'
  @sap.quickinfo : 'Supplier Account Group'
  SupplierAccountGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Purchasing Partner Functions'
entity BusinessPartnerA2X.A_SupplierPartnerFunc {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Organization'
  @sap.quickinfo : 'Purchasing Organization'
  key PurchasingOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Subrange'
  key SupplierSubrange : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Partner counter'
  key PartnerCounter : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Default Partner'
  DefaultPartner : Boolean null;
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Record Created On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Name of Person Responsible for Creating the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ref. to suplr'
  @sap.quickinfo : 'Reference to other supplier'
  ReferenceSupplier : String(10) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4) null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchasing Organization'
entity BusinessPartnerA2X.A_SupplierPurchasingOrg {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of the Vendor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Organization'
  @sap.quickinfo : 'Purchasing Organization'
  key PurchasingOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Schema Grp, Supplier'
  @sap.quickinfo : 'Group for Calculation Schema (Supplier)'
  CalculationSchemaGroupCode : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Del. flag POrg.'
  @sap.quickinfo : 'Deletion Indicator for Supplier at Purchasing Level'
  DeletionIndicator : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3) null;
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4) null;
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70) null;
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'GR-Based Inv. Verif.'
  @sap.quickinfo : 'Indicator: GR-Based Invoice Verification'
  InvoiceIsGoodsReceiptBased : Boolean null;
  @sap.label : 'Planned Deliv. Time'
  @sap.quickinfo : 'Planned Delivery Time in Days'
  MaterialPlannedDeliveryDurn : Decimal(3, 0) null;
  @sap.unit : 'PurchaseOrderCurrency'
  @sap.label : 'Minimum order value'
  MinimumOrderAmount : Decimal(14, 3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pricing Date Control'
  @sap.quickinfo : 'Price Determination (Pricing) Date Control'
  PricingDateControl : String(1) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Automatic PO'
  @sap.quickinfo : 'Automatic Generation of Purchase Order Allowed'
  PurOrdAutoGenerationIsAllowed : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order currency'
  @sap.quickinfo : 'Purchase order currency'
  @sap.semantics : 'currency-code'
  PurchaseOrderCurrency : String(5) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pur. block POrg'
  @sap.quickinfo : 'Purchasing block at purchasing organization level'
  PurchasingIsBlockedForSupplier : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Conditions'
  ShippingCondition : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ABC indicator'
  SupplierABCClassificationCode : String(1) null;
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Supplier''s Telephone Number'
  SupplierPhoneNumber : String(16) null;
  @sap.label : 'Salesperson'
  @sap.quickinfo : 'Responsible Salesperson at Supplier''s Office'
  SupplierRespSalesPersonName : String(30) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Confirmation Control'
  @sap.quickinfo : 'Confirmation Control Key'
  SupplierConfirmationControlKey : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acknowledgment Reqd.'
  @sap.quickinfo : 'Order Acknowledgment Requirement'
  IsOrderAcknRqd : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Group'
  @sap.quickinfo : 'Supplier Account Group'
  SupplierAccountGroup : String(4) null;
  @cds.ambiguous : 'missing on condition?'
  to_PartnerFunction : Association to many BusinessPartnerA2X.A_SupplierPartnerFunc {  };
  @cds.ambiguous : 'missing on condition?'
  to_PurchasingOrgText : Association to many BusinessPartnerA2X.A_SupplierPurchasingOrgText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Purchasing Organization Text'
entity BusinessPartnerA2X.A_SupplierPurchasingOrgText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Organization'
  @sap.quickinfo : 'Purchasing Organization'
  key PurchasingOrganization : String(4) not null;
  @sap.label : 'Language'
  @sap.quickinfo : 'Language key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key LongTextID : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Supplier Text'
entity BusinessPartnerA2X.A_SupplierText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key Supplier : String(10) not null;
  @sap.label : 'Language'
  @sap.quickinfo : 'Language key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key LongTextID : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Company Withholding Tax'
entity BusinessPartnerA2X.A_SupplierWithHoldingTax {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Account Number of Supplier'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Withholding Tax Type'
  @sap.quickinfo : 'Indicator for Withholding Tax Type'
  key WithholdingTaxType : String(2) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Exemption start date'
  @sap.quickinfo : 'Date on which exemption begins'
  ExemptionDateBegin : Date null;
  @sap.display.format : 'Date'
  @sap.label : 'Exemption end date'
  @sap.quickinfo : 'Date on which exemption ends'
  ExemptionDateEnd : Date null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exemption reason'
  @sap.quickinfo : 'Reason for exemption'
  ExemptionReason : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subject to w/tx'
  @sap.quickinfo : 'Indicator: Subject to withholding tax?'
  IsWithholdingTaxSubject : Boolean null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Recipient type'
  @sap.quickinfo : 'Type of recipient'
  RecipientType : String(2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exemption number'
  @sap.quickinfo : 'Exemption certificate number'
  WithholdingTaxCertificate : String(25) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'W/tax code'
  @sap.quickinfo : 'Withholding tax code'
  WithholdingTaxCode : String(2) null;
  @sap.label : 'Exemption rate'
  WithholdingTaxExmptPercent : Decimal(5, 2) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'W/tax number'
  @sap.quickinfo : 'Withholding tax identification number'
  WithholdingTaxNumber : String(16) null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4) null;
};

