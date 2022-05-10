tableextension 70025 SalesInvoiceHeaderExt extends "Sales Invoice Header"
{
    // version NAVW19.00.00.51947,NAVIN9.00.00.51947,TFS225680,B2B1.0,E-INV

    fields
    {

        //Unsupported feature: Change NotBlank on ""Sell-to Customer No."(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Bill-to Customer No."(Field 4)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ship-to Name"(Field 13)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 30)". Please convert manually.

        modify("Customer Posting Group")
        {
            CaptionML = ENU = 'Type Of Customer', ENN = 'Type Of Customer';

            //Unsupported feature: Change Editable on ""Customer Posting Group"(Field 31)". Please convert manually.

        }

        //Unsupported feature: Change Editable on ""Currency Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salesperson Code"(Field 43)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Order No."(Field 44)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Printed"(Field 47)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Applies-to Doc. Type"(Field 52)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 55)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Amount(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on "Amount(Field 60)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Amount Including VAT"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount Including VAT"(Field 61)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 77)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""VAT Country/Region Code"(Field 78)". Please convert manually.


        //Unsupported feature: Change Data type on ""Sell-to Address 2"(Field 82)". Please convert manually.


        //Unsupported feature: Change Data type on ""Sell-to City"(Field 83)". Please convert manually.


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


        //Unsupported feature: Change Editable on ""No. Series"(Field 108)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 112)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Invoice Discount Calculation"(Field 121)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quote No."(Field 151)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Last Email Sent Status"(Field 167)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Exchange Status"(Field 711)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Direct Debit Mandate ID"(Field 1200)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Closed(Field 1302)". Please convert manually.


        //Unsupported feature: Change Editable on "Closed(Field 1302)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Remaining Amount"(Field 1303)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Amount"(Field 1303)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Cust. Ledger Entry No."(Field 1304)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cust. Ledger Entry No."(Field 1304)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Invoice Discount Amount"(Field 1305)". Please convert manually.


        //Unsupported feature: Change Editable on ""Invoice Discount Amount"(Field 1305)". Please convert manually.


        //Unsupported feature: Change Editable on "Cancelled(Field 1310)". Please convert manually.


        //Unsupported feature: Change Editable on "Corrective(Field 1311)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Reversed(Field 1312)". Please convert manually.


        //Unsupported feature: Change Editable on "Reversed(Field 1312)". Please convert manually.


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

        //Unsupported feature: PropertyDeletion on ""Last Email Sent Time"(Field 166)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Last Email Sent Status"(Field 167)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Sent as Email"(Field 168)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Last Email Notif Cleared"(Field 169)". Please convert manually.


        //Unsupported feature: PropertyDeletion on "Cancelled(Field 1310)". Please convert manually.


        //Unsupported feature: PropertyDeletion on "Corrective(Field 1311)". Please convert manually.

        field(13706; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            //TableRelation = "Excise Bus. Posting Group";
        }
        field(13731; "Amount to Customer"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Invoice Line".Amount WHERE("Document No." = FIELD("No.")));
            CaptionML = ENU = 'Amount to Customer',
                        ENN = 'Amount to Customer';
            Editable = true;
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
            /* TableRelation = "State Forms"."Form Code" WHERE(State = FIELD(State),
                                                              "Transit Document" = CONST(false));*/

            trigger OnLookup();
            begin
                //StateForms.LookupStateForm(State,"Form Code")
            end;
        }
        field(13738; "Form No."; Code[20])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
            Editable = false;

            trigger OnValidate();
            var
                FormTracking: Record "Form Tracking";
            begin
                /*FormTracking.SETRANGE("Document No.","No.");
                FormTracking.SETRANGE("Form Code","Form Code");
                IF FormTracking.FIND('-') THEN
                  REPEAT
                    FormTracking."Form No." := "Form No.";
                    FormTracking.MODIFY;
                  UNTIL FormTracking.NEXT = 0;
                  */

            end;
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
            Editable = false;
        }
        field(16411; "Export or Deemed Export"; Boolean)
        {
            CaptionML = ENU = 'Export or Deemed Export',
                        ENN = 'Export or Deemed Export';
            DataClassification = ToBeClassified;
        }
        field(16412; "VAT Exempted"; Boolean)
        {
            CaptionML = ENU = 'VAT Exempted',
                        ENN = 'VAT Exempted';
            DataClassification = ToBeClassified;
        }
        field(16500; "PLA Entry No."; Code[20])
        {
            CaptionML = ENU = 'PLA Entry No.',
                        ENN = 'PLA Entry No.';
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
        field(16506; "RG 23 A Entry No."; Code[20])
        {
            CaptionML = ENU = 'RG 23 A Entry No.',
                        ENN = 'RG 23 A Entry No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16507; "RG 23 C Entry No."; Code[20])
        {
            CaptionML = ENU = 'RG 23 C Entry No.',
                        ENN = 'RG 23 C Entry No.';
            DataClassification = ToBeClassified;
            Editable = false;
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
            Editable = false;
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
        field(16515; "ST Pure Agent"; Boolean)
        {
            CaptionML = ENU = 'ST Pure Agent',
                        ENN = 'ST Pure Agent';
            DataClassification = ToBeClassified;
        }
        field(16516; "Nature of Services"; Option)
        {
            CaptionML = ENU = 'Nature of Services',
                        ENN = 'Nature of Services';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Exempted,Export',
                              ENN = ' ,Exempted,Export';
            OptionMembers = " ",Exempted,Export;
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
        field(16525; PoT; Boolean)
        {
            CaptionML = ENU = 'PoT',
                        ENN = 'PoT';
            DataClassification = ToBeClassified;
            Editable = false;
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
            Editable = false;
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
            // TableRelation = "e-Commerce Merchant Id"."Merchant Id";
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
        field(16623; "Supply Finish Date"; Option)
        {
            CaptionML = ENU = 'Supply Finish Date',
                        ENN = 'Supply Finish Date';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Before Rate Change,After Rate Change',
                              ENN = ' ,Before Rate Change,After Rate Change';
            OptionMembers = " ","Before Rate Change","After Rate Change";
        }
        field(16624; "Payment Date"; Option)
        {
            CaptionML = ENU = 'Payment Date',
                        ENN = 'Payment Date';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Before Rate Change,After Rate Change',
                              ENN = ' ,Before Rate Change,After Rate Change';
            OptionMembers = " ","Before Rate Change","After Rate Change";
        }
        field(16625; "Rate Change Applicable"; Boolean)
        {
            CaptionML = ENU = 'Rate Change Applicable',
                        ENN = 'Rate Change Applicable';
            DataClassification = ToBeClassified;
        }
        field(16626; "POS Out Of India"; Boolean)
        {
            CaptionML = ENU = 'POS Out Of India',
                        ENN = 'POS Out Of India';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16627; "Acknowledgement No."; Text[30])
        {
            CaptionML = ENU = 'Acknowledgement No.',
                        ENN = 'Acknowledgement No.';
            DataClassification = ToBeClassified;
        }
        field(16628; "IRN Hash"; Text[64])
        {
            CaptionML = ENU = 'IRN Hash',
                        ENN = 'IRN Hash';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*IF ("IRN Hash" <> '') AND (STRLEN("IRN Hash") < 64) THEN
                  ERROR(IRNErr);
                  */

            end;
        }
        field(16629; "QR Code"; BLOB)
        {
            CaptionML = ENU = 'QR Code',
                        ENN = 'QR Code';
            DataClassification = ToBeClassified;
            SubType = Bitmap;
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
        field(16632; "Acknowledgement Date"; DateTime)
        {
            CaptionML = ENU = 'Acknowledgement Date',
                        ENN = 'Acknowledgement Date';
            DataClassification = ToBeClassified;
        }
        field(16633; IsJSONImported; Boolean)
        {
            CaptionML = ENU = 'IsJSONImported',
                        ENN = 'IsJSONImported';
            DataClassification = ToBeClassified;
        }
        field(16634; "E-Inv. Cancelled Date"; DateTime)
        {
            CaptionML = ENU = 'E-Inv. Cancelled Date',
                        ENN = 'E-Inv. Cancelled Date';
            DataClassification = ToBeClassified;
        }
        field(16635; "Cancel Reason"; Option)
        {
            CaptionML = ENU = 'Cancel Reason',
                        ENN = 'Cancel Reason';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Duplicate,Data Entry Mistake,Order Canceled,Other',
                              ENN = ' ,Duplicate,Data Entry Mistake,Order Canceled,Other';
            OptionMembers = " ",Duplicate,"Data Entry Mistake","Order Canceled",Other;
        }
        field(50001; "MSPT Code"; Code[20])
        {
            Description = 'MSPT1.0';
            Editable = false;
            TableRelation = "MSPT Header".Code;
        }
        field(50002; "MSPT Applicable at Line Level"; Boolean)
        {
            Description = 'MSPT1.0';
            Editable = false;
        }
        field(50003; WayBillNo; Text[30])
        {
            Editable = true;
            Enabled = true;
        }
        field(50004; "posting time"; Time)
        {
        }
        field(60001; "RDSO Charges Paid By."; Option)
        {
            Description = 'B2B';
            Editable = false;
            OptionMembers = "By ESPL","By Customer";
        }
        field(60002; "CA Number"; Code[20])
        {
            Description = 'B2B';
            Editable = false;
            Enabled = false;
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
            Enabled = false;
            OptionMembers = Direct,Indirect;
        }
        field(60005; "Type of Product"; Option)
        {
            Description = 'B2B';
            Editable = false;
            Enabled = false;
            OptionMembers = Standard,Customized;
        }
        field(60006; "Document Position"; Option)
        {
            Description = 'B2B';
            Editable = false;
            Enabled = false;
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
            Enabled = false;
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
            Enabled = false;
        }
        field(60014; "LD Amount"; Decimal)
        {
            Description = 'B2B';
            Editable = false;
            Enabled = false;
        }
        field(60015; "RDSO Charges"; Decimal)
        {
            Description = 'B2B';
            Editable = false;
            Enabled = false;
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
            OptionCaption = '" ,BG,FDR,DD,Running Bills"';
            OptionMembers = " ",BG,FDR,DD,"Running Bills";
        }
        field(60019; "RDSO Call Letter"; Option)
        {
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
        field(60032; Product; Code[10])
        {
            Description = 'B2B';
            TableRelation = "Service Item Group";
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
            Enabled = false;
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
            CalcFormula = Sum("G/L Entry".Amount WHERE("G/L Account No." = CONST('25700'),
                                                        "Sale Order No." = FIELD("Order No."),
                                                        Amount = FILTER(> 0)));
            Description = 'B2B';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60052; "SD Received Amount"; Decimal)
        {
            CalcFormula = - Sum("G/L Entry".Amount WHERE("G/L Account No." = CONST('25700'),
                                                         "Sale Order No." = FIELD("Order No."),
                                                         Amount = FILTER(< 0)));
            Description = 'B2B';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60053; "Final Bill Date"; Date)
        {
            Description = 'B2B';
        }
        field(60054; "Warranty Period"; DateFormula)
        {
            Description = 'B2B';

            trigger OnValidate();
            begin
                SalesInvHeader.Reset;
                SalesInvHeader.SetRange(SalesInvHeader."Order No.", "Order No.");
                SalesInvHeader.SetFilter(SalesInvHeader."No.", '<>%1', "No.");
                if SalesInvHeader.FindSet then
                    repeat
                        SalesInvHeader."Warranty Period" := "Warranty Period";
                        SalesInvHeader.Modify;
                    until SalesInvHeader.Next = 0
            end;
        }
        field(60055; "SD Status"; Option)
        {
            Description = 'B2B';
            OptionCaption = 'Not Received,Received,NA';
            OptionMembers = "Not Received",Received,NA;

            trigger OnValidate();
            begin
                SalesInvHeader.Reset;
                SalesInvHeader.SetRange(SalesInvHeader."Order No.", "Order No.");
                SalesInvHeader.SetFilter(SalesInvHeader."No.", '<>%1', "No.");
                if SalesInvHeader.FindSet then
                    repeat
                        SalesInvHeader."SD Status" := "SD Status";
                        SalesInvHeader.Modify;
                    until SalesInvHeader.Next = 0
            end;
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
        field(60074; "Call letters Status"; Option)
        {
            OptionMembers = " ",Received,Pending,NA,"Cust.Pending";
        }
        field(60075; "Call Letter Exp.Date"; Date)
        {
        }
        field(60079; "C-form Status"; Option)
        {
            OptionCaption = '"  ,Not Received,Received,Difference Amount"';
            OptionMembers = "  ","Not Received",Received,"Difference Amount";
        }
        field(60081; "Total Invoiced Amount"; Decimal)
        {
            CalcFormula = Sum("Sales Invoice Line".Amount WHERE("Document No." = FIELD("No.")));
            Editable = true;
            FieldClass = FlowField;
        }
        field(60087; Consignee; Text[50])
        {
        }
        field(60100; "Hand Overed Person"; Code[10])
        {
            TableRelation = Resource;
        }
        field(60101; "Hand Overed Person(Others)"; Text[30])
        {
        }
        field(60102; "Dispatched Location"; Code[10])
        {
            //TableRelation = Division;
        }
        field(60103; "Reason For Deviation"; Option)
        {
            OptionMembers = " ","Transportation Delay","Person Not Available","Customer not Available","Train No-Room","SLr thorugh Seals";
        }
        field(60104; "Expected Reached Date"; Date)
        {
        }
        field(60105; "Contact Info"; Text[30])
        {

            trigger OnLookup();
            begin
                if PAGE.RunModal(77, Resource) = ACTION::LookupOK then
                    "Contact Info" := Resource."Contract Class";
            end;
        }
        field(60106; "Contact Info(Others)"; Text[30])
        {
        }
        field(60107; "Customer Remarks"; Text[50])
        {
            Enabled = false;
        }
        field(60108; "Edit Text"; Boolean)
        {
        }
        field(60115; "SD Running Bills Percent"; Decimal)
        {
            Enabled = false;
        }
        field(60118; "Cancel Invoice"; Boolean)
        {
        }
        field(60119; "Total Excise Amount"; Decimal)
        {
            // CalcFormula = Sum("Sales Invoice Line".Field31410340 WHERE("Document No." = FIELD("No.")));
            FieldClass = FlowField;
            // OptionMembers = Nearest,Up,Down;
        }
        field(60120; "Consignee Name"; Text[50])
        {
            Editable = false;
        }
        field(60121; "Blanket Order No"; Text[30])
        {
        }
        field(60122; "Installation Amount(CS)"; Decimal)
        {
        }
        field(60123; "Date Sent"; Date)
        {
            Caption = 'Date Sent';
        }
        field(60124; "Time Sent"; Time)
        {
            Caption = 'Time Sent';
        }
        field(60125; "BizTalk Sales Invoice"; Boolean)
        {
            Caption = 'BizTalk Sales Invoice';
        }
        field(60126; "Customer Order No."; Code[30])
        {
            Caption = 'Customer Order No.';
            Enabled = false;
        }
        field(60127; "BizTalk Document Sent"; Boolean)
        {
            Caption = 'BizTalk Document Sent';
        }
        field(60128; "Dispatched Amount"; Decimal)
        {
        }
        field(60129; "LR No."; Code[20])
        {
        }
        field(60130; "Dispatch Assurance Date"; Date)
        {
        }
        field(60131; "Exempted Vide Notification No."; Code[50])
        {
        }
        field(60132; SecDepStatus; Option)
        {
            Description = 'Added by Pranavi for sd status tracking';
            OptionCaption = 'Running,Warranty,Due,Received';
            OptionMembers = Running,Warranty,Due,Received;

            trigger OnValidate();
            begin
                SalesInvHeader.Reset;
                SalesInvHeader.SetRange(SalesInvHeader."Order No.", "Order No.");
                SalesInvHeader.SetFilter(SalesInvHeader."No.", '<>%1', "No.");
                if SalesInvHeader.FindSet then
                    repeat
                        SalesInvHeader.SecDepStatus := SecDepStatus;
                        SalesInvHeader.Modify;
                    until SalesInvHeader.Next = 0
            end;
        }
        field(60133; "Final Railway Bill Date"; Date)
        {
            Description = 'Added by Pranavi for sd status tracking';

            trigger OnValidate();
            begin
                SalesInvHeader.Reset;
                SalesInvHeader.SetRange(SalesInvHeader."Order No.", "Order No.");
                SalesInvHeader.SetFilter(SalesInvHeader."No.", '<>%1', "No.");
                if SalesInvHeader.FindSet then
                    repeat
                        SalesInvHeader."Final Railway Bill Date" := "Final Railway Bill Date";
                        SalesInvHeader.Modify;
                    until SalesInvHeader.Next = 0
            end;
        }
        field(60134; Remarks; Text[200])
        {
            Description = 'Added by Pranavi for sd status tracking';
            Enabled = false;
        }
        field(80000; "Order Released Date"; Date)
        {
            Caption = 'Order Released Date';
            Description = 'Added by Vishnu Priya for Sales Register Purpose';
        }
        field(80005; "EMD Amount"; Decimal)
        {
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
        field(80014; "SD Fin Verification"; Option)
        {
            Description = 'Added by Vijaya for Finance Verification';
            OptionCaption = '" ,Released,Order Verified, Final Payment,Final Verified,Need Data Correction"';
            OptionMembers = " ",Released,"Order Verified"," Final Payment","Final Verified","Need Data Correction";
        }
        field(80015; "Special Condition"; Boolean)
        {
            Description = 'Added by vijaya for Payment details Purpose';
        }
        field(80016; Dispatched_packets_Qunatity; Integer)
        {
            Description = 'Added by Sujani For Dispatched Quantity in dispatch info Entry';
        }
        field(80017; Vertical; Option)
        {
            Description = 'Added by Vijaya for Vertical information';
            OptionMembers = " ","Smart Signalling","Smart Cities","Smart Building",IOT,other;
        }
        field(80018; "Port Code"; Text[6])
        {
            Description = 'Added by sujani for Export Bills';
        }
        field(80019; "Dispatched Location name"; Code[50])
        {
            //CalcFormula = Lookup(Division."Division Name" WHERE("Division Code" = FIELD("Dispatched Location")));
            Description = 'Added by sujani for location names in dispatch info entry';
            FieldClass = FlowField;
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
            // TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

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
            // TableRelation = Division."Division Code";
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


        //Unsupported feature: Deletion on ""Pre-Assigned No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Sell-to Customer No.,External Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Sell-to Customer No.,Order Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Sell-to Customer No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Prepayment Order No.,Prepayment Invoice"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bill-to Customer No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Exchange Status"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Due Date"(Key)". Please convert manually.

        key(No1; "No.")
        {
        }
        key(Order2; "Order No.")
        {
        }
        key(PreAssigned3; "Pre-Assigned No.")
        {
        }
        key(SellTo4; "Sell-to Customer No.", "External Document No.")
        {
            MaintainSQLIndex = false;
        }
        key(Order5; "Sell-to Customer No.", "Order Date")
        {
            MaintainSQLIndex = false;
        }
        key(SelltoCustomer6; "Sell-to Customer No.")
        {
        }
        key(Prepayment7; "Prepayment Order No.", "Prepayment Invoice")
        {
        }
        key(Bill8; "Bill-to Customer No.")
        {
        }
        key(POstingDate9; "Posting Date")
        {
        }
        key(Document10; "Document Exchange Status")
        {
        }
        key(DueData11; "Due Date")
        {
        }
        key(WayBill12; WayBillNo)
        {
        }
        key(Shipment13; "Shipment Date", "Order No.")
        {
        }
        key(Externa14; "External Document No.")
        {
        }
        key(Order15; "Order No.", "Posting Date")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    PostSalesDelete.IsDocumentDeletionAllowed("Posting Date");
    TESTFIELD("No. Printed");
    LOCKTABLE;
    PostSalesDelete.DeleteSalesInvLines(Rec);

    SalesCommentLine.SETRANGE("Document Type",SalesCommentLine."Document Type"::"Posted Invoice");
    SalesCommentLine.SETRANGE("No.","No.");
    SalesCommentLine.DELETEALL;

    ApprovalsMgmt.DeletePostedApprovalEntries(RECORDID);
    PostedDeferralHeader.DeleteForDoc(DeferralUtilities.GetSalesDeferralDocType,'','',
      SalesCommentLine."Document Type"::"Posted Invoice","No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    PostSalesDelete.IsDocumentDeletionAllowed("Posting Date");
    TestField("No. Printed");
    LockTable;
    PostSalesDelete.DeleteSalesInvLines(Rec);

    SalesCommentLine.SetRange("Document Type",SalesCommentLine."Document Type"::"Posted Invoice");
    SalesCommentLine.SetRange("No.","No.");
    SalesCommentLine.DeleteAll;

    ApprovalsMgmt.DeletePostedApprovalEntries(RecordId);
    PostedDeferralHeader.DeleteForDoc(DeferralUtilities.GetSalesDeferralDocType,'','',
      SalesCommentLine."Document Type"::"Posted Invoice","No.");
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


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


    //Unsupported feature: PropertyModification on "OnDelete.PostedDeferralHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PostedDeferralHeader : 1704;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PostedDeferralHeader : "Posted Deferral Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PostSalesDelete(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PostSalesDelete : 363;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PostSalesDelete : "PostSales-Delete";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.DeferralUtilities(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.DeferralUtilities : 1720;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.DeferralUtilities : "Deferral Utilities";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendRecords(PROCEDURE 12).DocumentSendingProfile(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendRecords : 60;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendRecords : "Document Sending Profile";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendRecords(PROCEDURE 12).DummyReportSelections(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendRecords(PROCEDURE 12).ReportDistributionMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendRecords : 452;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendRecords : "Report Distribution Management";
    //Variable type has not been exported.

    var
        TempDocumentSendingProfile: Record "Document Sending Profile" temporary;
        ReportDistributionManagement: Codeunit "Report Distribution Management";


    //Unsupported feature: PropertyModification on "SendProfile(PROCEDURE 72).DummyReportSelections(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendProfile : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendProfile : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendProfile(PROCEDURE 72).ReportDistributionMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendProfile : 452;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendProfile : "Report Distribution Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).DocumentSendingProfile(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 60;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Document Sending Profile";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).DummyReportSelections(Variable 1001)". Please convert manually.

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


    //Unsupported feature: PropertyModification on "EmailRecords(PROCEDURE 17).ReportDistributionMgt(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EmailRecords : 452;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmailRecords : "Report Distribution Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDocTypeTxt(PROCEDURE 140).ReportDistributionMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDocTypeTxt : 452;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDocTypeTxt : "Report Distribution Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Navigate(PROCEDURE 2).NavigateForm(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Navigate : 344;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Navigate : Navigate;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupAdjmtValueEntries(PROCEDURE 3).ValueEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupAdjmtValueEntries : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupAdjmtValueEntries : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomerGlobalLocationNumber(PROCEDURE 8).Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomerGlobalLocationNumber : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomerGlobalLocationNumber : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomerGlobalLocationNumberLbl(PROCEDURE 10).Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomerGlobalLocationNumberLbl : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomerGlobalLocationNumberLbl : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSellToCustomerFaxNo(PROCEDURE 209).Customer(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSellToCustomerFaxNo : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSellToCustomerFaxNo : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetRemainingAmount(PROCEDURE 6).CustLedgerEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetRemainingAmount : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetRemainingAmount : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowActivityLog(PROCEDURE 116).ActivityLog(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowActivityLog : 710;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowActivityLog : "Activity Log";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetWorkDescriptionWorkDescriptionCalculated(PROCEDURE 7).TempBlob(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetWorkDescriptionWorkDescriptionCalculated : 99008535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetWorkDescriptionWorkDescriptionCalculated : TempBlob;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCurrencySymbol(PROCEDURE 145).GeneralLedgerSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCurrencySymbol : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCurrencySymbol : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCurrencySymbol(PROCEDURE 145).Currency(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCurrencySymbol : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCurrencySymbol : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowCorrectiveCreditMemo(PROCEDURE 19).SalesCrMemoHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowCorrectiveCreditMemo : 114;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowCorrectiveCreditMemo : "Sales Cr.Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowCancelledCreditMemo(PROCEDURE 20).SalesCrMemoHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowCancelledCreditMemo : 114;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowCancelledCreditMemo : "Sales Cr.Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesCommentLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesCommentLine : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesCommentLine : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesSetup(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesSetup : 311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesSetup : "Sales & Receivables Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustLedgEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustLedgEntry : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustLedgEntry : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ApprovalsMgmt(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ApprovalsMgmt : 1535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ApprovalsMgmt : "Approvals Mgmt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserSetupMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserSetupMgt : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserSetupMgt : "User Setup Management";
    //Variable type has not been exported.

    var
        Resource: Record Resource;
        "--ALE--": Integer;
        SalesInvHeader: Record "Sales Invoice Header";
        DuplicateIRNErr: Label 'Duplicate IRN.';
        NoActiveIRNErr: Label 'No active IRN found.';
        GetIRNFailedTxt: Label 'Unable to Get IRN, please try after some time.';
        IrnConfm: Label 'I have checked all GST values.';
}

