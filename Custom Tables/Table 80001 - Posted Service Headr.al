table 80001 "Posted Service Headr"
{
    // version B2Bupg,DIM1.0

    // PROJECT : Efftronics
    // *****************************************************************************************************************************
    // SIGN
    // *****************************************************************************************************************************
    // B2B     : B2B Software Technologies
    // *****************************************************************************************************************************
    // VER      SIGN   USERID                 DATE                       DESCRIPTION
    // *****************************************************************************************************************************
    // 1.0       DIM   Sivaramakrishna.A      24-May-13          -> Code has been Commented in Delete()trigger because of Function does not exist in NAV 2013

    Caption = 'Posted Service Header';
    DataCaptionFields = "No.",Description;
    DrillDownPageID = 5946;
    LookupPageID = 5946;

    fields
    {
        field(1;"No.";Code[20])
        {
            Caption = 'No.';
        }
        field(2;Description;Text[50])
        {
            Caption = 'Description';
        }
        field(4;"Service Order Type";Code[10])
        {
            Caption = 'Service Order Type';
            TableRelation = "Service Order Type";
        }
        field(5;"Link Service to Service Item";Boolean)
        {
            Caption = 'Link Service to Service Item';
        }
        field(7;Priority;Option)
        {
            Caption = 'Priority';
            OptionCaption = 'Low,Medium,High';
            OptionMembers = Low,Medium,High;
        }
        field(8;"Customer No.";Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
        }
        field(9;Name;Text[30])
        {
            Caption = 'Name';
        }
        field(10;"Name 2";Text[30])
        {
            Caption = 'Name 2';
        }
        field(11;Address;Text[30])
        {
            Caption = 'Address';
        }
        field(12;"Address 2";Text[30])
        {
            Caption = 'Address 2';
        }
        field(13;City;Text[30])
        {
            Caption = 'City';

            trigger OnLookup();
            begin
                //B2b1.0>> Since Function doesn't exist in Nav 2013
                //PostCode.LookUpCity(City,"Post Code",FALSE);
                //B2b1.0<<
            end;

            trigger OnValidate();
            begin
                PostCode.ValidateCity(City,"Post Code",County,"Country Code",true);//B2B
            end;
        }
        field(14;"Post Code";Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code";

            trigger OnLookup();
            begin
                //B2b1.0>> Since Function doesn't exist in Nav 2013
                //PostCode.LookUpPostCode(City,"Post Code",FALSE);
                //B2b1.0<<
            end;

            trigger OnValidate();
            begin
                PostCode.ValidatePostCode(City,"Post Code",County,"Country Code",true);//B2B
            end;
        }
        field(15;"Phone No.";Text[30])
        {
            Caption = 'Phone No.';
        }
        field(16;"E-Mail";Text[80])
        {
            Caption = 'E-Mail';
        }
        field(17;"Phone No. 2";Text[30])
        {
            Caption = 'Phone No. 2';
        }
        field(18;"Fax No.";Text[30])
        {
            Caption = 'Fax No.';
        }
        field(19;"Your Reference";Text[30])
        {
            Caption = 'Your Reference';
        }
        field(20;"Posting Date";Date)
        {
            Caption = 'Posting Date';
        }
        field(21;"Document Date";Date)
        {
            Caption = 'Document Date';
        }
        field(22;"Order Date";Date)
        {
            Caption = 'Order Date';
        }
        field(23;"Order Time";Time)
        {
            Caption = 'Order Time';
        }
        field(24;"Default Response Time (Hours)";Decimal)
        {
            Caption = 'Default Response Time (Hours)';
            DecimalPlaces = 0:5;
            MinValue = 0;
        }
        field(25;"Actual Response Time (Hours)";Decimal)
        {
            Caption = 'Actual Response Time (Hours)';
            DecimalPlaces = 0:5;
            Editable = false;
            MinValue = 0;
        }
        field(26;"Service Time (Hours)";Decimal)
        {
            Caption = 'Service Time (Hours)';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(27;"Response Date";Date)
        {
            Caption = 'Response Date';
            Editable = false;
        }
        field(28;"Response Time";Time)
        {
            Caption = 'Response Time';
            Editable = false;
        }
        field(29;"Starting Date";Date)
        {
            Caption = 'Starting Date';
        }
        field(30;"Starting Time";Time)
        {
            Caption = 'Starting Time';
        }
        field(31;"Finishing Date";Date)
        {
            Caption = 'Finishing Date';
        }
        field(32;"Finishing Time";Time)
        {
            Caption = 'Finishing Time';
        }
        field(33;"Contract Serv. Hours Exist";Boolean)
        {
            CalcFormula = Exist("Service Hour" WHERE ("Service Contract No."=FIELD("Contract No.")));
            Caption = 'Contract Serv. Hours Exist';
            Editable = false;
            FieldClass = FlowField;
        }
        field(34;"Shortcut Dimension 1 Code";Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(1));
        }
        field(35;"Shortcut Dimension 2 Code";Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(2));
        }
        field(36;"Notify Customer";Option)
        {
            Caption = 'Notify Customer';
            OptionCaption = 'No,By Phone 1,By Phone 2,By Fax,By E-Mail';
            OptionMembers = No,"By Phone 1","By Phone 2","By Fax","By E-Mail";
        }
        field(37;"Max. Labor Unit Price";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            Caption = 'Max. Labor Unit Price';
        }
        field(38;"Warning Status";Option)
        {
            Caption = 'Warning Status';
            OptionCaption = '" ,First Warning,Second Warning,Third Warning"';
            OptionMembers = " ","First Warning","Second Warning","Third Warning";
        }
        field(39;"Salesperson Code";Code[10])
        {
            Caption = 'Salesperson Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(40;"Contract No.";Code[20])
        {
            Caption = 'Contract No.';
            TableRelation = "Service Contract Header"."Contract No." WHERE ("Contract Type"=CONST(Contract));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(41;"Contact Name";Text[30])
        {
            Caption = 'Contact Name';
        }
        field(42;"Bill-to Customer No.";Code[20])
        {
            Caption = 'Bill-to Customer No.';
            TableRelation = Customer;
        }
        field(43;"Bill-to Name";Text[30])
        {
            Caption = 'Bill-to Name';
        }
        field(44;"Bill-to Address";Text[30])
        {
            Caption = 'Bill-to Address';
        }
        field(45;"Bill-to Address 2";Text[30])
        {
            Caption = 'Bill-to Address 2';
        }
        field(46;"Bill-to Post Code";Code[20])
        {
            Caption = 'Bill-to Post Code';
            TableRelation = "Post Code";

            trigger OnLookup();
            begin
                //B2b1.0>> Since Function doesn't exist in Nav 2013
                //PostCode.LookUpPostCode("Bill-to City","Bill-to Post Code",FALSE);
                //B2b1.0<<
            end;

            trigger OnValidate();
            begin
                PostCode.ValidatePostCode("Bill-to City","Bill-to Post Code","Bill-to County","Bill-to Country Code",true);//B2B
            end;
        }
        field(47;"Bill-to City";Text[30])
        {
            Caption = 'Bill-to City';

            trigger OnLookup();
            begin
                //B2b1.0>> Since Function doesn't exist in Nav 2013
                //PostCode.LookUpCity("Bill-to City","Bill-to Post Code",FALSE);
                //B2b1.0<<
            end;

            trigger OnValidate();
            begin
                PostCode.ValidateCity("Bill-to City","Bill-to Post Code","Bill-to County","Bill-to Country Code",true);//B2B
            end;
        }
        field(48;"Bill-to Contact";Text[30])
        {
            Caption = 'Bill-to Contact';
        }
        field(49;"Ship-to Code";Code[10])
        {
            Caption = 'Ship-to Code';
            TableRelation = "Ship-to Address".Code WHERE ("Customer No."=FIELD("Customer No."));
        }
        field(50;"Ship-to Name";Text[30])
        {
            Caption = 'Ship-to Name';
        }
        field(51;"Ship-to Address";Text[30])
        {
            Caption = 'Ship-to Address';
        }
        field(52;"Ship-to Address 2";Text[30])
        {
            Caption = 'Ship-to Address 2';
        }
        field(53;"Ship-to Post Code";Code[20])
        {
            Caption = 'Ship-to Post Code';
            TableRelation = "Post Code";

            trigger OnLookup();
            begin
                //B2b1.0>> Since Function doesn't exist in Nav 2013
                //PostCode.LookUpPostCode("Ship-to City","Ship-to Post Code",FALSE);
                //B2b1.0>>
            end;

            trigger OnValidate();
            begin
                PostCode.ValidatePostCode("Ship-to City","Ship-to Post Code","Ship-to County","Ship-to Country Code",true);//B2B
            end;
        }
        field(54;"Ship-to City";Text[30])
        {
            Caption = 'Ship-to City';

            trigger OnLookup();
            begin
                //B2b1.0>> Since Function doesn't exist in Nav 2013
                //PostCode.LookUpCity("Ship-to City","Ship-to Post Code",FALSE);
                //B2b1.0<<
            end;

            trigger OnValidate();
            begin
                PostCode.ValidateCity("Ship-to City","Ship-to Post Code","Ship-to County","Ship-to Country Code",true);//B2B
            end;
        }
        field(55;"Ship-to Fax No.";Text[30])
        {
            Caption = 'Ship-to Fax No.';
        }
        field(56;"Ship-to E-Mail";Text[80])
        {
            Caption = 'Ship-to E-Mail';
        }
        field(57;"Ship-to Contact";Text[30])
        {
            Caption = 'Ship-to Contact';
        }
        field(58;"Ship-to Phone";Text[30])
        {
            Caption = 'Ship-to Phone';
        }
        field(59;"Ship-to Phone 2";Text[30])
        {
            Caption = 'Ship-to Phone 2';
        }
        field(60;"Language Code";Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(61;Comment;Boolean)
        {
            CalcFormula = Exist("Service Comment Line" WHERE ("Table Name"=CONST("Service Item"),
                                                              "Table Subtype"=CONST("0"),
                                                              "No."=FIELD("No."),
                                                              Type=CONST(General)));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(63;"No. Series";Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(64;"Job No.";Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(65;"Gen. Bus. Posting Group";Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(66;"Currency Code";Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(67;"Currency Factor";Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0:15;
            Editable = false;
            MinValue = 0;
        }
        field(68;"Service Zone Code";Code[10])
        {
            Caption = 'Service Zone Code';
            Editable = false;
            TableRelation = "Service Zone";
        }
        field(69;"Responsibility Center";Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(70;"Location Code";Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(71;"Customer Price Group";Code[10])
        {
            Caption = 'Customer Price Group';
            TableRelation = "Customer Price Group";
        }
        field(72;"VAT Bus. Posting Group";Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(73;"Prices Including VAT";Boolean)
        {
            Caption = 'Prices Including VAT';
        }
        field(74;"VAT Registration No.";Text[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(75;"VAT Country Code";Code[10])
        {
            Caption = 'VAT Country Code';
            TableRelation = "Country/Region";
        }
        field(76;"VAT Base Discount %";Decimal)
        {
            Caption = 'VAT Base Discount %';
            DecimalPlaces = 0:5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(77;"Tax Area Code";Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(78;"Tax Liable";Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(80;"Customer Disc. Group";Code[10])
        {
            Caption = 'Customer Disc. Group';
            TableRelation = "Customer Discount Group";
        }
        field(81;"Expected Finishing Date";Date)
        {
            Caption = 'Expected Finishing Date';
        }
        field(83;"Bill-to County";Text[30])
        {
            Caption = 'Bill-to County';
        }
        field(84;County;Text[30])
        {
            Caption = 'County';
        }
        field(85;"Ship-to County";Text[30])
        {
            Caption = 'Ship-to County';
        }
        field(86;"Country Code";Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
        }
        field(87;"Bill-to Name 2";Text[30])
        {
            Caption = 'Bill-to Name 2';
        }
        field(88;"Bill-to Country Code";Code[10])
        {
            Caption = 'Bill-to Country Code';
            TableRelation = "Country/Region";
        }
        field(89;"Ship-to Name 2";Text[30])
        {
            Caption = 'Ship-to Name 2';
        }
        field(90;"Ship-to Country Code";Code[10])
        {
            Caption = 'Ship-to Country Code';
            TableRelation = "Country/Region";
        }
        field(100;"Usage (Cost)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Service Ledger Entry"."Cost Amount" WHERE ("Entry Type"=CONST(Usage),
                                                                          "Service Contract No."=FIELD("Contract Filter"),
                                                                          "Service Order No."=FIELD("No."),
                                                                          Type=FIELD("Type Filter"),
                                                                          "Posting Date"=FIELD("Date Filter")));
            Caption = 'Usage (Cost)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(101;"Usage (Amount)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Service Ledger Entry"."Amount (LCY)" WHERE ("Entry Type"=CONST(Usage),
                                                                           "Service Contract No."=FIELD("Contract Filter"),
                                                                           "Service Order No."=FIELD("No."),
                                                                           Type=FIELD("Type Filter"),
                                                                           "Posting Date"=FIELD("Date Filter")));
            Caption = 'Usage (Amount)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(102;"Invoiced Amount";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = -Sum("Service Ledger Entry"."Amount (LCY)" WHERE ("Entry Type"=CONST(Sale),
                                                                            "Service Contract No."=FIELD("Contract Filter"),
                                                                            "Service Order No."=FIELD("No."),
                                                                            Type=FIELD("Type Filter"),
                                                                            "Posting Date"=FIELD("Date Filter")));
            Caption = 'Invoiced Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(103;"Total Quantity";Decimal)
        {
            CalcFormula = Sum("Service Ledger Entry".Quantity WHERE ("Entry Type"=CONST(Usage),
                                                                     "Service Contract No."=FIELD("Contract Filter"),
                                                                     "Service Order No."=FIELD("No."),
                                                                     Type=FIELD("Type Filter"),
                                                                     "Posting Date"=FIELD("Date Filter")));
            Caption = 'Total Quantity';
            DecimalPlaces = 0:5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(104;"Total Invoiced Quantity";Decimal)
        {
            CalcFormula = Sum("Service Ledger Entry"."Charged Qty." WHERE ("Entry Type"=CONST(Usage),
                                                                           "Service Contract No."=FIELD("Contract Filter"),
                                                                           "Service Order No."=FIELD("No."),
                                                                           Type=FIELD("Type Filter"),
                                                                           "Posting Date"=FIELD("Date Filter")));
            Caption = 'Total Invoiced Quantity';
            DecimalPlaces = 0:5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(105;"No. of Posted Invoices";Integer)
        {
            CalcFormula = Count("Service Document Register" WHERE ("Source Document Type"=CONST(Order),
                                                                   "Source Document No."=FIELD("No."),
                                                                   "Destination Document Type"=CONST("Posted Invoice")));
            Caption = 'No. of Posted Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(106;"No. of Unposted Invoices";Integer)
        {
            CalcFormula = Count("Service Document Register" WHERE ("Source Document Type"=CONST(Order),
                                                                   "Source Document No."=FIELD("No."),
                                                                   "Destination Document Type"=CONST(Invoice)));
            Caption = 'No. of Unposted Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(107;"No. of Allocations";Integer)
        {
            CalcFormula = Count("Service Order Allocation" WHERE ("Document Type"=CONST(Order),
                                                                  "Document No."=FIELD("No."),
                                                                  "Resource No."=FIELD("Resource Filter"),
                                                                  "Allocation Date"=FIELD("Date Filter"),
                                                                  Status=FILTER(Active|Finished)));
            Caption = 'No. of Allocations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(108;"No. of Unallocated Items";Integer)
        {
            CalcFormula = Count("Service Item Line" WHERE ("Document Type"=CONST(Order),
                                                           "Document No."=FIELD("No."),
                                                           "No. of Active/Finished Allocs"=CONST(0)));
            Caption = 'No. of Unallocated Items';
            Editable = false;
            FieldClass = FlowField;
        }
        field(111;"Allocated Hours";Decimal)
        {
            CalcFormula = Sum("Service Order Allocation"."Allocated Hours" WHERE ("Document Type"=CONST(Order),
                                                                                  "Document No."=FIELD("No."),
                                                                                  "Allocation Date"=FIELD("Date Filter"),
                                                                                  "Resource No."=FIELD("Resource Filter"),
                                                                                  Status=FILTER(Active|Finished)));
            Caption = 'Allocated Hours';
            DecimalPlaces = 0:5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(151;"Type Filter";Option)
        {
            Caption = 'Type Filter';
            FieldClass = FlowFilter;
            OptionCaption = '" ,Resource,Item,Service Cost,Service Contract"';
            OptionMembers = " ",Resource,Item,"Service Cost","Service Contract";
        }
        field(152;"Date Filter";Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(153;"Resource Filter";Code[20])
        {
            Caption = 'Resource Filter';
            FieldClass = FlowFilter;
            TableRelation = Resource;
        }
        field(154;"Contract Filter";Code[20])
        {
            Caption = 'Contract Filter';
            FieldClass = FlowFilter;
            TableRelation = "Service Contract Header"."Contract No." WHERE ("Contract Type"=CONST(Contract));
        }
        field(155;"Customer Filter";Code[20])
        {
            Caption = 'Customer Filter';
            FieldClass = FlowFilter;
            TableRelation = Customer;
        }
        field(156;"Service Zone Filter";Code[10])
        {
            Caption = 'Service Zone Filter';
            FieldClass = FlowFilter;
            TableRelation = "Service Zone";
        }
        field(5050;"Contact No.";Code[20])
        {
            Caption = 'Contact No.';
            TableRelation = Contact;
        }
        field(5051;"Bill-to Contact No.";Code[20])
        {
            Caption = 'Bill-to Contact No.';
            TableRelation = Contact;
        }
        field(7001;"Allow Line Disc.";Boolean)
        {
            Caption = 'Allow Line Disc.';
        }
    }

    keys
    {
        key(Key1;"No.")
        {
        }
        key(Key2;"Customer No.","Posting Date")
        {
        }
        key(Key3;"Contract No.","Posting Date")
        {
            SumIndexFields = "Actual Response Time (Hours)";
        }
        key(Key4;"Responsibility Center","Posting Date")
        {
            SumIndexFields = "Actual Response Time (Hours)";
        }
        key(Key5;"Posting Date")
        {
            SumIndexFields = "Actual Response Time (Hours)";
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        //DIM1.0>> Since Function doesn't exist in Nav 2013
        //DimMgt.DeletePostedDocDim(DATABASE::Table5930,"No.",0);
        //DIM1.0<<
        ItemTrackingMgt.DeleteItemEntryRelation(
          DATABASE::Table5932,0,"No.",'',0,0,true);
    end;

    var
        PostCode : Record "Post Code";
        DimMgt : Codeunit DimensionManagement;
        ItemTrackingMgt : Codeunit "Item Tracking Management";

    [LineStart(5573)]
    procedure Navigate();
    var
        Navigate : Page Navigate;
    begin
        Navigate.SetDoc("Posting Date","No.");
        Navigate.Run;
    end;
}

