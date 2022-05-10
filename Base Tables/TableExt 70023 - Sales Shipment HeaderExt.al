tableextension 70023 SalesShipmentHeaderExt extends "Sales Shipment Header"
{
    // version NAVW19.00.00.51883,NAVIN9.00.00.51883,TFS225680,B2B1.0

    fields
    {

        //Unsupported feature: Change Editable on ""Sell-to Customer No."(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Bill-to Customer No."(Field 4)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer Posting Group"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salesperson Code"(Field 43)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Printed"(Field 47)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 52)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 55)". Please convert manually.


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


        //Unsupported feature: Change Editable on ""No. Series"(Field 109)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 112)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Time"(Field 5792)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Outbound Whse. Handling Time"(Field 5793)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 5794)". Please convert manually.


        //Unsupported feature: CodeModification on ""Applies-to Doc. No."(Field 53).OnLookup". Please convert manually.

        //trigger  No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CustLedgEntry.SETCURRENTKEY("Document No.");
        CustLedgEntry.SETRANGE("Document Type","Applies-to Doc. Type");
        CustLedgEntry.SETRANGE("Document No.","Applies-to Doc. No.");
        PAGE.RUN(0,CustLedgEntry);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CustLedgEntry.SetCurrentKey("Document No.");
        CustLedgEntry.SetRange("Document Type","Applies-to Doc. Type");
        CustLedgEntry.SetRange("Document No.","Applies-to Doc. No.");
        PAGE.Run(0,CustLedgEntry);
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Agent Code"(Field 105).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Shipping Agent Code" <> xRec."Shipping Agent Code" THEN
          VALIDATE("Shipping Agent Service Code",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Shipping Agent Code" <> xRec."Shipping Agent Code" then
          Validate("Shipping Agent Service Code",'');
        */
        //end;
        field(13701; "Assessee Code"; Code[10])
        {
            CaptionML = ENU = 'Assessee Code',
                        ENN = 'Assessee Code';
            DataClassification = ToBeClassified;
            //TableRelation = "Assessee Code".Code;
        }
        field(13706; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            //TableRelation = "Excise Bus. Posting Group";
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
            /*TableRelation = "State Forms"."Form Code" WHERE(State = FIELD(State),
                                                             "Transit Document" = CONST(false));*/
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
            /*TableRelation = "LC Detail"."No." WHERE("Transaction Type" = CONST(Sale),
                                                     "Issued To/Received From" = FIELD("Bill-to Customer No."),
                                                     Closed = CONST(false),
                                                     Released = CONST(true));*/

            trigger OnValidate();
            var
                // LCDetail: Record "LC Detail";
                Text13700: TextConst ENU = 'The LC which you have selected is Foreign type you cannot utilise for this order.', ENN = 'The LC which you have selected is Foreign type you cannot utilise for this order.';
            begin
            end;
        }
        field(13790; Structure; Code[10])
        {
            CaptionML = ENU = 'Structure',
                        ENN = 'Structure';
            DataClassification = ToBeClassified;
            //TableRelation = "Structure Header";

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
        field(16501; Trading; Boolean)
        {
            CaptionML = ENU = 'Trading',
                        ENN = 'Trading';
            DataClassification = ToBeClassified;
        }
        field(16502; "Transaction No. Serv. Tax"; Integer)
        {
            CaptionML = ENU = 'Transaction No. Serv. Tax',
                        ENN = 'Transaction No. Serv. Tax';
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
            TableRelation = Customer WHERE("e-Commerce Operator" = CONST(true));
        }
        field(16609; "e-Commerce Merchant Id"; Code[30])
        {
            CaptionML = ENU = 'e-Commerce Merchant Id',
                        ENN = 'e-Commerce Merchant Id';
            DataClassification = ToBeClassified;
            //TableRelation = "e-Commerce Merchant Id"."Merchant Id";
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
        field(16613; "GST Inv. Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'GST Inv. Rounding Precision',
                        ENN = 'GST Inv. Rounding Precision';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16614; "GST Inv. Rounding Type"; Option)
        {
            CaptionML = ENU = 'GST Inv. Rounding Type',
                        ENN = 'GST Inv. Rounding Type';
            DataClassification = ToBeClassified;
            Editable = false;
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
            Editable = false;
        }
        field(16630; "Ship-to Customer"; Code[20])
        {
            CaptionML = ENU = 'Ship-to Customer',
                        ENN = 'Ship-to Customer';
            DataClassification = ToBeClassified;
            Editable = false;
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
        field(60001; "RDSO Charges Paid By."; Option)
        {
            Editable = false;
            OptionMembers = "By ESPL","By Customer";
        }
        field(60002; "CA Number"; Code[20])
        {
            Description = 'B2B';
            Editable = false;
            TableRelation = "CA Number";
        }
        field(60003; "CA Date"; Date)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60004; "Type of Enquiry"; Option)
        {
            Description = 'B2B';
            Editable = false;
            OptionMembers = Direct,Indirect;
        }
        field(60005; "Type of Product"; Option)
        {
            Description = 'B2B';
            Editable = false;
            OptionMembers = Standard,Customized;
        }
        field(60006; "Document Position"; Option)
        {
            Description = 'B2B';
            Editable = false;
            OptionMembers = Sales,Design,CRM;
        }
        field(60007; "Cancel Short Close"; Option)
        {
            Description = 'B2B';
            Editable = false;
            OptionCaption = '" ,Cancelled,Short Closed"';
            OptionMembers = " ",Cancelled,"Short Closed";
        }
        field(60008; "RDSO Inspection Required"; Boolean)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60009; "RDSO Inspection By"; Option)
        {
            Description = 'B2B';
            Editable = false;
            OptionMembers = Us,Them;
        }
        field(60010; "BG Required"; Boolean)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60011; "BG No."; Code[20])
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60012; Territory; Code[20])
        {
            Description = 'B2B';
            Editable = false;
            TableRelation = Territory;
        }
        field(60013; "Security Status"; Code[20])
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60014; "LD Amount"; Decimal)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60015; "RDSO Charges"; Decimal)
        {
            Description = 'B2B';
            Editable = false;
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
        field(60034; "Manufacturing Item Amount"; Decimal)
        {
            Description = 'B2B';
        }
        field(60035; "Bought out Items Amount"; Decimal)
        {
            Description = 'B2B';
        }
        field(60036; "Software Amount"; Decimal)
        {
            Description = 'B2B';
        }
        field(60037; "Total Order Amount"; Decimal)
        {
            Description = 'B2B';
        }
        field(60041; "Security Deposit Amount"; Decimal)
        {
            Description = 'B2B';
        }
        field(60042; "Deposit Payment Due Date"; Date)
        {
            Description = 'B2B';
        }
        field(60043; "Deposit Payment Date"; Date)
        {
            Description = 'B2B';
        }
        field(60044; "Security Deposit Status"; Code[20])
        {
            Description = 'B2B';
        }
        field(60045; "SD Requested Date"; Date)
        {
            Description = 'B2B';
        }
        field(60046; "SD Required Date"; Date)
        {
            Description = 'B2B';
        }
        field(60047; "SecurityDeposit Exp. Rcpt Date"; Date)
        {
            Description = 'B2B';
        }
        field(60048; "Adjusted from EMD"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    "Transaction Type" = CONST(Adjustment),
                                                                    "Mode of Receipt / Payment" = FILTER(<> Customer)));
            Description = 'B2B';
            Editable = false;
            Enabled = false;
            FieldClass = FlowField;
        }
        field(60049; "Adjusted from Running Bills"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    "Transaction Type" = FILTER(Adjustment),
                                                                    "Mode of Receipt / Payment" = FILTER(Customer)));
            Description = 'B2B';
            Editable = false;
            Enabled = false;
            FieldClass = FlowField;
        }
        field(60050; "Tender No."; Code[20])
        {
            Description = 'B2B';
            Editable = false;
            TableRelation = "Tender Header";
        }
        field(60051; "SD Paid Amount"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    Type = CONST(SD),
                                                                    "Transaction Type" = CONST(Payment)));
            Description = 'B2B';
            Editable = false;
            Enabled = false;
            FieldClass = FlowField;
        }
        field(60052; "SD Received Amount"; Decimal)
        {
            CalcFormula = Sum("Tender Ledger Entries".Amount WHERE("Tender No." = FIELD("Tender No."),
                                                                    Type = CONST(SD),
                                                                    "Transaction Type" = CONST(Receipt)));
            Description = 'B2B';
            Editable = false;
            Enabled = false;
            FieldClass = FlowField;
        }
        field(60053; "Final Bill Date"; Date)
        {
            Description = 'B2B';
        }
        field(60054; "Warranty Period"; DateFormula)
        {
            Description = 'B2B';
        }
        field(60055; "SD Status"; Option)
        {
            Description = 'B2B';
            OptionCaption = 'Received,Not Received,NA';
            OptionMembers = Received,"Not Received",NA;
        }
        field(60087; Consignee; Text[50])
        {
        }
        field(60115; "SD Running Bills Percent"; Decimal)
        {
            Enabled = false;
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
            //TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
        field(80100; "Insurance Applicable"; Boolean)
        {
        }
        field(80101; Customer_PAN_No; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(80102; Location_PAN_No; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bill-to Customer No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Sell-to Customer No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code"(Key)". Please convert manually.

        key(No1; "No.")
        {
        }
        key(Order2; "Order No.")
        {
        }
        key(BilltoCustomer3; "Bill-to Customer No.")
        {
        }
        key(SellTo4; "Sell-to Customer No.")
        {
        }
        key(Posting5; "Posting Date")
        {
        }
        key(Location6; "Location Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD("No. Printed");
    LOCKTABLE;
    PostSalesDelete.DeleteSalesShptLines(Rec);

    SalesCommentLine.SETRANGE("Document Type",SalesCommentLine."Document Type"::Shipment);
    SalesCommentLine.SETRANGE("No.","No.");
    SalesCommentLine.DELETEALL;

    ApprovalsMgmt.DeletePostedApprovalEntries(RECORDID);

    IF CertificateOfSupply.GET(CertificateOfSupply."Document Type"::"Sales Shipment","No.") THEN
      CertificateOfSupply.DELETE(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("No. Printed");
    LockTable;
    PostSalesDelete.DeleteSalesShptLines(Rec);

    SalesCommentLine.SetRange("Document Type",SalesCommentLine."Document Type"::Shipment);
    SalesCommentLine.SetRange("No.","No.");
    SalesCommentLine.DeleteAll;

    ApprovalsMgmt.DeletePostedApprovalEntries(RecordId);

    if CertificateOfSupply.Get(CertificateOfSupply."Document Type"::"Sales Shipment","No.") then
      CertificateOfSupply.Delete(true);
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //begin
    /*
    begin
        Subject := 'Shipement -'+Rec."No."+' -Done';
        SMTP_MAIL.CreateMessage('ERP','erp@efftronics.com','vishnupriya@efftronics.com',Subject,'',true);
        SMTP_MAIL.AppendBody('<html><body><table>');
        SMTP_MAIL.AppendBody('<th>Shipped Details</th>');
        SMTP_MAIL.AppendBody('<tr><td>Shipment No</td><td>'+Rec."No."+ '</td></tr>');
        SMTP_MAIL.AppendBody('</table>');
        //SMTP_MAIL.AppendBody('<br/><br/>*********** This is auto generated mail from ERP ************</body></html>');
        SMTP_MAIL.Send;
    end;
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 112).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.CertificateOfSupply(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.CertificateOfSupply : 780;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.CertificateOfSupply : "Certificate of Supply";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PostSalesDelete(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PostSalesDelete : 363;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PostSalesDelete : "PostSales-Delete";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendProfile(PROCEDURE 12).DummyReportSelections(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendProfile : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendProfile : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendProfile(PROCEDURE 12).ReportDistributionMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendProfile : 452;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendProfile : "Report Distribution Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 3).ReportSelection(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmailRecords(PROCEDURE 17).DocumentSendingProfile(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmailRecords : 60;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmailRecords : "Document Sending Profile";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmailRecords(PROCEDURE 17).DummyReportSelections(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmailRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmailRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EmailRecords(PROCEDURE 17).ReportDistributionMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmailRecords : 452;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmailRecords : "Report Distribution Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Navigate(PROCEDURE 2).NavigateForm(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Navigate : 344;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Navigate : Navigate;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsCompletlyInvoiced(PROCEDURE 5).SalesShipmentLine(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsCompletlyInvoiced : 111;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsCompletlyInvoiced : "Sales Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetWorkDescription(PROCEDURE 9).TempBlob(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetWorkDescription : 99008535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetWorkDescription : TempBlob;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesShptHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesShptHeader : 110;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesShptHeader : "Sales Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesCommentLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesCommentLine : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesCommentLine : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustLedgEntry : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustLedgEntry : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShippingAgent(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShippingAgent : 291;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShippingAgent : "Shipping Agent";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ApprovalsMgmt(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ApprovalsMgmt : 1535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ApprovalsMgmt : "Approvals Mgmt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserSetupMgt(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserSetupMgt : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserSetupMgt : "User Setup Management";
    //Variable type has not been exported.

    var
        Subject: Text[100];
    //SMTP_MAIL: Codeunit "SMTP Mail";
}

