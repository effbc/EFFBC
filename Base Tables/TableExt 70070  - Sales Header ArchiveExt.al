tableextension 70070 SalesHeaderArchiveExt extends "Sales Header Archive"
{
    // version NAVW19.00.00.51883,NAVIN9.00.00.51883,TFS225680,B2B1.0,Rev01

    fields
    {
        modify("Document Type")
        {
            OptionCaptionML = ENU = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Amc', ENN = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Amc';

            //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.

        }

        //Unsupported feature: Change Data type on ""No."(Field 3)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Bill-to Customer No."(Field 4)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salesperson Code"(Field 43)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 52)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 55)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Amount(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on "Amount(Field 60)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Amount Including VAT"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount Including VAT"(Field 61)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 77)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""VAT Country/Region Code"(Field 78)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Sell-to City"(Field 83)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Sell-to City"(Field 83)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bill-to Post Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Bill-to Post Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bill-to Country/Region Code"(Field 87)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Sell-to Post Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Sell-to Post Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sell-to Country/Region Code"(Field 90)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Country/Region Code"(Field 93)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 94)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Agent Code"(Field 105)". Please convert manually.


        //Unsupported feature: Change OptionString on "Status(Field 120)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Invoice Discount Calculation"(Field 121)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sell-to IC Partner Code"(Field 125)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to IC Partner Code"(Field 126)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Compress Prepayment"(Field 132)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Archived Versions"(Field 145)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Archived Versions"(Field 145)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sales Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Sales Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Sales Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sales Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quote Accepted Date"(Field 155)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Archived By"(Field 5046)". Please convert manually.


        //Unsupported feature: Change Editable on ""Archived By"(Field 5046)". Please convert manually.


        //Unsupported feature: Change Description on ""Archived By"(Field 5046)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Opportunity No."(Field 5055)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Advice"(Field 5750)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Completely Shipped"(Field 5752)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Shipped"(Field 5752)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Outbound Whse. Handling Time"(Field 5793)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 5794)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Late Order Shipping"(Field 5795)". Please convert manually.


        //Unsupported feature: Change Editable on ""Late Order Shipping"(Field 5795)". Please convert manually.


        //Unsupported feature: Change Editable on ""Get Shipment Used"(Field 7200)". Please convert manually.

        field(13701; "Assessee Code"; Code[10])
        {
            CaptionML = ENU = 'Assessee Code',
                        ENN = 'Assessee Code';
            DataClassification = ToBeClassified;
            TableRelation = "Assessee Code";
        }
        field(13706; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(13731; "Amount to Customer"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Amount To Customer" WHERE("Document Type" = FIELD("Document Type"),
                                                                       "Document No." = FIELD("No.")));
            CaptionML = ENU = 'Amount to Customer',
                        ENN = 'Amount to Customer';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13736; "Bill to Customer State"; Code[10])
        {
            CaptionML = ENU = 'Bill to Customer State',
                        ENN = 'Bill to Customer State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(13737; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;
            TableRelation = "State Forms"."Form Code" WHERE(State = FIELD(State),
                                                             "Transit Document" = CONST(false));
        }
        field(13738; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
        }
        field(13751; "Transit Document"; Boolean)
        {
            CaptionML = ENU = 'Transit Document',
                        ENN = 'Transit Document';
            DataClassification = ToBeClassified;
        }
        field(13752; State; Code[10])
        {
            CaptionML = ENU = 'State',
                        ENN = 'State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(13753; "LC No."; Code[20])
        {
            CaptionML = ENU = 'LC No.',
                        ENN = 'LC No.';
            DataClassification = ToBeClassified;
            TableRelation = "LC Detail"."No." WHERE("Transaction Type" = CONST(Sale),
                                                     "Issued To/Received From" = FIELD("Bill-to Customer No."),
                                                     Closed = CONST(false),
                                                     Released = CONST(true));

            trigger OnValidate();
            var
                LCDetail: Record "LC Detail";
                Text13700: TextConst ENU = 'The LC which you have selected is Foreign type you cannot utilise for this order.', ENN = 'The LC which you have selected is Foreign type you cannot utilise for this order.';
            begin
            end;
        }
        field(13790; Structure; Code[10])
        {
            CaptionML = ENU = 'Structure',
                        ENN = 'Structure';
            DataClassification = ToBeClassified;
            TableRelation = "Structure Header";

            trigger OnValidate();
            var
                StrDetails: Record "Structure Details";
                StrOrderDetails: Record "Structure Order Details";
                StrOrderLines: Record "Structure Order Line Details";
                SaleLines: Record "Sales Line";
            begin
            end;
        }
        field(16410; "Free Supply"; Boolean)
        {
            CaptionML = ENU = 'Free Supply',
                        ENN = 'Free Supply';
            DataClassification = ToBeClassified;
        }
        field(16503; "Re-Dispatch"; Boolean)
        {
            CaptionML = ENU = 'Re-Dispatch',
                        ENN = 'Re-Dispatch';
            DataClassification = ToBeClassified;
        }
        field(16504; "Return Re-Dispatch Rcpt. No."; Code[20])
        {
            CaptionML = ENU = 'Return Re-Dispatch Rcpt. No.',
                        ENN = 'Return Re-Dispatch Rcpt. No.';
            DataClassification = ToBeClassified;
            TableRelation = "Return Receipt Line"."Document No." WHERE("Sell-to Customer No." = FIELD("Sell-to Customer No."));
        }
        field(16508; "Price Inclusive of Taxes"; Boolean)
        {
            CaptionML = ENU = 'Price Inclusive of Taxes',
                        ENN = 'Price Inclusive of Taxes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16509; "Calc. Inv. Discount (%)"; Boolean)
        {
            CaptionML = ENU = 'Calc. Inv. Discount (%)',
                        ENN = 'Calc. Inv. Discount (%)';
            DataClassification = ToBeClassified;
        }
        field(16510; "Time of Removal"; Time)
        {
            CaptionML = ENU = 'Time of Removal',
                        ENN = 'Time of Removal';
            DataClassification = ToBeClassified;
        }
        field(16511; "LR/RR No."; Code[20])
        {
            CaptionML = ENU = 'LR/RR No.',
                        ENN = 'LR/RR No.';
            DataClassification = ToBeClassified;
        }
        field(16512; "LR/RR Date"; Date)
        {
            CaptionML = ENU = 'LR/RR Date',
                        ENN = 'LR/RR Date';
            DataClassification = ToBeClassified;
        }
        field(16513; "Vehicle No."; Code[20])
        {
            CaptionML = ENU = 'Vehicle No.',
                        ENN = 'Vehicle No.';
            DataClassification = ToBeClassified;
        }
        field(16514; "Mode of Transport"; Text[15])
        {
            CaptionML = ENU = 'Mode of Transport',
                        ENN = 'Mode of Transport';
            DataClassification = ToBeClassified;
        }
        field(16522; "Service Tax Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Rounding Precision',
                        ENN = 'Service Tax Rounding Precision';
            DataClassification = ToBeClassified;
        }
        field(16523; "Service Tax Rounding Type"; Option)
        {
            CaptionML = ENU = 'Service Tax Rounding Type',
                        ENN = 'Service Tax Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16601; "Nature of Supply"; Option)
        {
            CaptionML = ENU = 'Nature of Supply',
                        ENN = 'Nature of Supply';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'B2B,B2C',
                              ENN = 'B2B,B2C';
            OptionMembers = B2B,B2C;
        }
        field(16602; "GST Customer Type"; Option)
        {
            CaptionML = ENU = 'GST Customer Type',
                        ENN = 'GST Customer Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";
        }
        field(16603; "GST Without Payment of Duty"; Boolean)
        {
            CaptionML = ENU = 'GST Without Payment of Duty',
                        ENN = 'GST Without Payment of Duty';
            DataClassification = ToBeClassified;
        }
        field(16605; "Invoice Type"; Option)
        {
            CaptionML = ENU = 'Invoice Type',
                        ENN = 'Invoice Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable',
                              ENN = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable';
            OptionMembers = " ","Bill of Supply",Export,Supplementary,"Debit Note","Non-GST",Taxable;
        }
        field(16606; "Bill Of Export No."; Code[20])
        {
            CaptionML = ENU = 'Bill Of Export No.',
                        ENN = 'Bill Of Export No.';
            DataClassification = ToBeClassified;
        }
        field(16607; "Bill Of Export Date"; Date)
        {
            CaptionML = ENU = 'Bill Of Export Date',
                        ENN = 'Bill Of Export Date';
            DataClassification = ToBeClassified;
        }
        field(16608; "e-Commerce Customer"; Code[20])
        {
            CaptionML = ENU = 'e-Commerce Customer',
                        ENN = 'e-Commerce Customer';
            DataClassification = ToBeClassified;
            TableRelation = Customer WHERE("e-Commerce Operator" = FILTER(true));
        }
        field(16609; "e-Commerce Merchant Id"; Code[30])
        {
            CaptionML = ENU = 'e-Commerce Merchant Id',
                        ENN = 'e-Commerce Merchant Id';
            DataClassification = ToBeClassified;
            TableRelation = "e-Commerce Merchant Id"."Merchant Id";
        }
        field(16610; "GST Bill-to State Code"; Code[10])
        {
            CaptionML = ENU = 'GST Bill-to State Code',
                        ENN = 'GST Bill-to State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16611; "GST Ship-to State Code"; Code[10])
        {
            CaptionML = ENU = 'GST Ship-to State Code',
                        ENN = 'GST Ship-to State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16612; "Location State Code"; Code[10])
        {
            CaptionML = ENU = 'Location State Code',
                        ENN = 'Location State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16613; "GST Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'GST Rounding Precision',
                        ENN = 'GST Rounding Precision';
            DataClassification = ToBeClassified;
        }
        field(16614; "GST Rounding Type"; Option)
        {
            CaptionML = ENU = 'GST Rounding Type',
                        ENN = 'GST Rounding Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16615; "GST Reason Type"; Option)
        {
            CaptionML = ENU = 'GST Reason Type',
                        ENN = 'GST Reason Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Sales Return,Post Sale Discount,Deficiency in Service,Correction in Invoice,Change in POS,Finalization of Provisional Assessment,Others',
                              ENN = ' ,Sales Return,Post Sale Discount,Deficiency in Service,Correction in Invoice,Change in POS,Finalization of Provisional Assessment,Others';
            OptionMembers = " ","Sales Return","Post Sale Discount","Deficiency in Service","Correction in Invoice","Change in POS","Finalization of Provisional Assessment",Others;
        }
        field(16616; "Location GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Location GST Reg. No.',
                        ENN = 'Location GST Reg. No.';
            DataClassification = ToBeClassified;
            TableRelation = "GST Registration Nos.";
        }
        field(16617; "Customer GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Customer GST Reg. No.',
                        ENN = 'Customer GST Reg. No.';
            DataClassification = ToBeClassified;
        }
        field(16618; "Ship-to GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Ship-to GST Reg. No.',
                        ENN = 'Ship-to GST Reg. No.';
            DataClassification = ToBeClassified;
        }
        field(16619; "Distance (Km)"; Decimal)
        {
            CaptionML = ENU = 'Distance (Km)',
                        ENN = 'Distance (Km)';
            DataClassification = ToBeClassified;
        }
        field(16620; "Vehicle Type"; Option)
        {
            CaptionML = ENU = 'Vehicle Type',
                        ENN = 'Vehicle Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Regular,ODC',
                              ENN = ' ,Regular,ODC';
            OptionMembers = " ",Regular,ODC;
        }
        field(16621; "Reference Invoice No."; Code[20])
        {
            CaptionML = ENU = 'Reference Invoice No.',
                        ENN = 'Reference Invoice No.';
            DataClassification = ToBeClassified;
        }
        field(16622; "E-Way Bill No."; Text[50])
        {
            CaptionML = ENU = 'E-Way Bill No.',
                        ENN = 'E-Way Bill No.';
            DataClassification = ToBeClassified;
        }
        field(16626; "POS Out Of India"; Boolean)
        {
            CaptionML = ENU = 'POS Out Of India',
                        ENN = 'POS Out Of India';
            DataClassification = ToBeClassified;
        }
        field(16630; "Ship-to Customer"; Code[20])
        {
            CaptionML = ENU = 'Ship-to Customer',
                        ENN = 'Ship-to Customer';
            DataClassification = ToBeClassified;
            TableRelation = Customer;
        }
        field(16631; "Ship-to GST Customer Type"; Option)
        {
            CaptionML = ENU = 'Ship-to GST Customer Type',
                        ENN = 'Ship-to GST Customer Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";
        }
        field(60001; "RDSO Charges Paid By"; Option)
        {
            Description = 'B2B';
            OptionMembers = "By ESPL","By Customer";
        }
        field(60002; "CA Number"; Code[20])
        {
            Description = 'B2B';
        }
        field(60003; "CA Date"; Date)
        {
            Description = 'B2B';
        }
        field(60004; "Type of Enquiry"; Option)
        {
            Description = 'B2B';
            OptionMembers = Direct,Indirect;
        }
        field(60005; "Type of Product"; Option)
        {
            Description = 'B2B';
            OptionMembers = Standard,Customized;
        }
        field(60006; "Document Position"; Option)
        {
            Description = 'B2B';
            OptionMembers = Sales,Design,CRM;
        }
        field(60007; "Cancel / Short Close"; Option)
        {
            Caption = 'Cancel / Short Close';
            Description = 'B2B';
            OptionCaption = '" ,Cancelled,Short Closed"';
            OptionMembers = " ",Cancelled,"Short Closed";
        }
        field(60008; "RDSO Inspection Required"; Boolean)
        {
            Description = 'B2B';
        }
        field(60009; "RDSO Inspection By"; Option)
        {
            Description = 'B2B';
            OptionMembers = Us,Them;
        }
        field(60010; "BG Required"; Boolean)
        {
            Description = 'B2B';
        }
        field(60011; "BG No."; Code[20])
        {
            Description = 'B2B';
        }
        field(60012; Territory; Code[20])
        {
            Description = 'B2B';
            TableRelation = Territory;
        }
        field(60013; "Security Status"; Code[20])
        {
            Description = 'B2B';
        }
        field(60014; "LD Amount"; Decimal)
        {
            Description = 'B2B';
        }
        field(60015; "RDSO Charges"; Decimal)
        {
            Description = 'B2B';
        }
        field(60016; "Customer OrderNo."; Code[65])
        {
            Description = 'B2B';
        }
        field(60017; "Customer Order Date"; Date)
        {
            Description = 'B2B';
        }
        field(60018; "Security Deposit"; Option)
        {
            Description = 'B2B';
            OptionCaption = '" ,BG,FDR,DD,Running Bills"';
            OptionMembers = " ",BG,FDR,DD,"Running Bills";
        }
        field(60019; "RDSO Call Letter"; Option)
        {
            Description = 'B2B';
            OptionCaption = '" ,Customer,RDSO"';
            OptionMembers = " ",Customer,RDSO;
        }
        field(60020; "Enquiry Status"; Option)
        {
            Description = 'B2B';
            OptionCaption = '" ,Open,Closed,Order Received"';
            OptionMembers = " ",Open,Closed,"Order Received";
        }
        field(60021; "Project Completion Date"; Date)
        {
            Description = 'B2B';
        }
        field(60022; "Extended Date"; Date)
        {
            Description = 'B2B';
        }
        field(60041; "Security Deposit Amount"; Decimal)
        {
        }
        field(60050; "Tender No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Tender Header";
        }
        field(60054; "Warranty Period"; DateFormula)
        {
        }
        field(60055; "SD status"; Option)
        {
            OptionCaption = 'Not Received,Received,NA';
            OptionMembers = "Not Received",Received,NA;
        }
        field(60061; "Sale Order Total Amount"; Decimal)
        {
        }
        field(60065; CallLetterExpireDate; Date)
        {
        }
        field(60066; CallLetterRecivedDate; Date)
        {
        }
        field(60073; Remarks; Text[250])
        {
        }
        field(60074; "Call letters Status"; Option)
        {
            OptionMembers = " ",Received,Pending,NA,"Cust.Pending";
        }
        field(60075; "Call Letter Exp.Date"; Date)
        {
        }
        field(60087; Consignee; Text[50])
        {
        }
        field(60121; "Blanket Order No"; Text[30])
        {
        }
        field(60123; "BG Amount"; Decimal)
        {
        }
        field(60125; "EMD Amount"; Decimal)
        {
        }
        field(60127; "Order Status"; Option)
        {
            OptionMembers = " ","Under Warranty","Expired & amounts tobe recovered","Amounts recovered";
        }
        field(60128; "BG Date of Issue"; Date)
        {
        }
        field(60129; "BG Expiry Date"; Date)
        {
        }
        field(60130; "Warranty Completed"; Boolean)
        {
        }
        field(60131; "Converted to AMC"; Boolean)
        {
        }
        field(60132; "Bill Attached"; Boolean)
        {
        }
        field(60133; "Scope To AMC"; Option)
        {
            OptionMembers = " ","100%",">50%","50%","<50%","0%",Unknown;
        }
        field(60134; "Reference Sale Order"; Code[30])
        {
            TableRelation = "Sales Header" WHERE("Document Type" = FILTER(Order),
                                                  "Customer Posting Group" = CONST('RAILWAYS'));
        }
        field(60135; "Converted AMC Order"; Code[30])
        {
            TableRelation = "Sales Header" WHERE("Document Type" = CONST(Amc),
                                                  "Customer Posting Group" = CONST('RAILWAYS'));
        }
        field(60136; "Warranty Exp Date"; Date)
        {
        }
        field(60137; "BG Status"; Option)
        {
            OptionMembers = "Not Received",Received;
        }
        field(60138; "EMD Status"; Option)
        {
            OptionMembers = "Not Received",Received;
        }
        field(60139; "First Released Date Time"; DateTime)
        {
        }
        field(60140; SecDepStatus; Option)
        {
            Description = 'Added by Pranavi for sd tracking';
            OptionCaption = 'Running,Warranty,Due,Received';
            OptionMembers = Running,Warranty,Due,Received;
        }
        field(80010; "PT Release Auth Stutus"; Option)
        {
            Description = 'Added by Pranavi for PT Authorizations';
            OptionMembers = " ","Sent For Auth",Authorized,Rejected;
        }
        field(80011; "PT Post Auth Stutus"; Option)
        {
            Description = 'Added by Pranavi for PT Authorizations';
            OptionMembers = " ","Sent For Auth",Authorized,Rejected;
        }
        field(80012; Order_After_CF_Integration; Boolean)
        {
            Description = 'Added by Pranavi for PT Authorizations';
        }
        field(80020; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(80021; "OLD Dim Set ID"; Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
        field(80022; "Tender Published Date"; Date)
        {
            Description = 'added by sujani for Pre Expected orderes';
        }
        field(80023; "Tender Due Date"; Date)
        {
            Description = 'added by sujani for Pre Expected orderes';
        }
        field(80024; "Railway Division"; Code[10])
        {
            TableRelation = Division."Division Code";
        }
        field(80025; "BG Fin Status"; Option)
        {
            Description = 'Added By Vishnu for BG Status Confirmation';
            OptionCaption = '" ,Final Payment"';
            OptionMembers = " ","Final Payment";
        }
        field(80100; "Insurance Applicable"; Boolean)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document Type,No.,Doc. No. Occurrence,Version No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Sell-to Customer No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Bill-to Customer No."(Key)". Please convert manually.

        key(Key1; "Document Type", "No.", "Doc. No. Occurrence", "Version No.")
        {
        }
        key(Key2; "Document Type", "Sell-to Customer No.")
        {
        }
        key(Key3; "Document Type", "Bill-to Customer No.")
        {
        }
        key(Key4; "Document Type", "No.", "Date Archived", "Time Archived")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SalesLineArchive.SETRANGE("Document Type","Document Type");
    SalesLineArchive.SETRANGE("Document No.","No.");
    SalesLineArchive.SETRANGE("Doc. No. Occurrence","Doc. No. Occurrence");
    SalesLineArchive.SETRANGE("Version No.","Version No.");
    SalesLineArchive.SETRANGE(Nonstock,TRUE);
    IF SalesLineArchive.FINDSET(TRUE) THEN
      REPEAT
        CatalogItemMgt.DelNonStockSalesArch(SalesLineArchive);
      UNTIL SalesLineArchive.NEXT = 0;
    SalesLineArchive.SETRANGE(Nonstock);
    SalesLineArchive.DELETEALL;

    SalesCommentLineArch.SETRANGE("Document Type","Document Type");
    SalesCommentLineArch.SETRANGE("No.","No.");
    SalesCommentLineArch.SETRANGE("Doc. No. Occurrence","Doc. No. Occurrence");
    SalesCommentLineArch.SETRANGE("Version No.","Version No.");
    SalesCommentLineArch.DELETEALL;

    DeferralHeaderArchive.SETRANGE("Deferral Doc. Type",DeferralUtilities.GetSalesDeferralDocType);
    DeferralHeaderArchive.SETRANGE("Document Type","Document Type");
    DeferralHeaderArchive.SETRANGE("Document No.","No.");
    DeferralHeaderArchive.SETRANGE("Doc. No. Occurrence","Doc. No. Occurrence");
    DeferralHeaderArchive.SETRANGE("Version No.","Version No.");
    DeferralHeaderArchive.DELETEALL(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    SalesLineArchive.SetRange("Document Type","Document Type");
    SalesLineArchive.SetRange("Document No.","No.");
    SalesLineArchive.SetRange("Doc. No. Occurrence","Doc. No. Occurrence");
    SalesLineArchive.SetRange("Version No.","Version No.");
    SalesLineArchive.SetRange(Nonstock,true);
    if SalesLineArchive.FindSet(true) then
      repeat
        CatalogItemMgt.DelNonStockSalesArch(SalesLineArchive);
      until SalesLineArchive.Next = 0;
    SalesLineArchive.SetRange(Nonstock);
    SalesLineArchive.DeleteAll;

    SalesCommentLineArch.SetRange("Document Type","Document Type");
    SalesCommentLineArch.SetRange("No.","No.");
    SalesCommentLineArch.SetRange("Doc. No. Occurrence","Doc. No. Occurrence");
    SalesCommentLineArch.SetRange("Version No.","Version No.");
    SalesCommentLineArch.DeleteAll;

    DeferralHeaderArchive.SetRange("Deferral Doc. Type",DeferralUtilities.GetSalesDeferralDocType);
    DeferralHeaderArchive.SetRange("Document Type","Document Type");
    DeferralHeaderArchive.SetRange("Document No.","No.");
    DeferralHeaderArchive.SetRange("Doc. No. Occurrence","Doc. No. Occurrence");
    DeferralHeaderArchive.SetRange("Version No.","Version No.");
    DeferralHeaderArchive.DeleteAll(true);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Archived By"(Field 5046).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Archived By" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Archived By" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.SalesLineArchive(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SalesLineArchive : 5108;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SalesLineArchive : "Sales Line Archive";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.DeferralHeaderArchive(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.DeferralHeaderArchive : 5127;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.DeferralHeaderArchive : "Deferral Header Archive";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.CatalogItemMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.CatalogItemMgt : 5703;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.CatalogItemMgt : "Catalog Item Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.DeferralUtilities(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.DeferralUtilities : 1720;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.DeferralUtilities : "Deferral Utilities";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesCommentLineArch(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesCommentLineArch : 5126;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesCommentLineArch : "Sales Comment Line Archive";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserSetupMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserSetupMgt : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserSetupMgt : "User Setup Management";
    //Variable type has not been exported.
}

