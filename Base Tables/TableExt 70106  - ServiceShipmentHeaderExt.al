tableextension 70106 ServiceShipmentHeaderExt extends "Service Shipment Header"
{
    // version NAVW19.00.00.51685,NAVIN9.00.00.51685,TFS225680

    fields
    {

        //Unsupported feature: Change NotBlank on ""Customer No."(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Bill-to Customer No."(Field 4)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Bill-to City"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Order Date"(Field 19)". Please convert manually.


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


        //Unsupported feature: Change ValidateTableRelation on "City(Field 83)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 83)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bill-to Post Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Bill-to Post Code"(Field 85)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bill-to Country/Region Code"(Field 87)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 88)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 90)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Country/Region Code"(Field 93)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 94)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 109)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 112)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change Editable on "Priority(Field 5907)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Allocated Hours"(Field 5911)". Please convert manually.


        //Unsupported feature: Change Editable on ""Allocated Hours"(Field 5911)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Unallocated Items"(Field 5921)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Unallocated Items"(Field 5921)". Please convert manually.


        //Unsupported feature: Change Editable on ""Actual Response Time (Hours)"(Field 5925)". Please convert manually.


        //Unsupported feature: Change Editable on ""Service Time (Hours)"(Field 5926)". Please convert manually.


        //Unsupported feature: Change Editable on ""Response Date"(Field 5927)". Please convert manually.


        //Unsupported feature: Change Editable on ""Response Time"(Field 5928)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Contract Serv. Hours Exist"(Field 5933)". Please convert manually.


        //Unsupported feature: Change Editable on ""Contract Serv. Hours Exist"(Field 5933)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reallocation Needed"(Field 5934)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reallocation Needed"(Field 5934)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Notify Customer"(Field 5936)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Max. Labor Unit Price"(Field 5937)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Warning Status"(Field 5938)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Allocations"(Field 5939)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Allocations"(Field 5939)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Contract No."(Field 5940)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Type Filter"(Field 5951)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Customer Filter"(Field 5952)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Contract Filter"(Field 5954)". Please convert manually.


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
        field(16500; Structure; Code[10])
        {
            CaptionML = ENU = 'Structure',
                        ENN = 'Structure';
            DataClassification = ToBeClassified;
            TableRelation = "Structure Header";
        }
        field(16501; Trading; Boolean)
        {
            CaptionML = ENU = 'Trading',
                        ENN = 'Trading';
            DataClassification = ToBeClassified;
        }
        field(16502; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(16504; "Bill to Customer State"; Code[10])
        {
            CaptionML = ENU = 'Bill to Customer State',
                        ENN = 'Bill to Customer State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(16505; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;
            TableRelation = "State Forms"."Form Code" WHERE(State = FIELD(State),
                                                             "Transit Document" = CONST(false));
        }
        field(16506; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
        }
        field(16507; "Transit Document"; Boolean)
        {
            CaptionML = ENU = 'Transit Document',
                        ENN = 'Transit Document';
            DataClassification = ToBeClassified;
        }
        field(16508; State; Code[10])
        {
            CaptionML = ENU = 'State',
                        ENN = 'State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(16509; "Free Supply"; Boolean)
        {
            CaptionML = ENU = 'Free Supply',
                        ENN = 'Free Supply';
            DataClassification = ToBeClassified;
        }
        field(16512; "Transaction No. Serv. Tax"; Integer)
        {
            CaptionML = ENU = 'Transaction No. Serv. Tax',
                        ENN = 'Transaction No. Serv. Tax';
            DataClassification = ToBeClassified;
        }
        field(16513; "Time of Removal"; Time)
        {
            CaptionML = ENU = 'Time of Removal',
                        ENN = 'Time of Removal';
            DataClassification = ToBeClassified;
        }
        field(16514; "LR/RR No."; Code[20])
        {
            CaptionML = ENU = 'LR/RR No.',
                        ENN = 'LR/RR No.';
            DataClassification = ToBeClassified;
        }
        field(16515; "LR/RR Date"; Date)
        {
            CaptionML = ENU = 'LR/RR Date',
                        ENN = 'LR/RR Date';
            DataClassification = ToBeClassified;
        }
        field(16516; "Vehicle No."; Code[20])
        {
            CaptionML = ENU = 'Vehicle No.',
                        ENN = 'Vehicle No.';
            DataClassification = ToBeClassified;
        }
        field(16517; "Mode of Transport"; Text[15])
        {
            CaptionML = ENU = 'Mode of Transport',
                        ENN = 'Mode of Transport';
            DataClassification = ToBeClassified;
        }
        field(16520; "Service Tax Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Rounding Precision',
                        ENN = 'Service Tax Rounding Precision';
            DataClassification = ToBeClassified;
        }
        field(16521; "Service Tax Rounding Type"; Option)
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
            Editable = false;
            OptionCaptionML = ENU = 'B2B,B2C',
                              ENN = 'B2B,B2C';
            OptionMembers = B2B,B2C;
        }
        field(16602; "GST Customer Type"; Option)
        {
            CaptionML = ENU = 'GST Customer Type',
                        ENN = 'GST Customer Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";
        }
        field(16604; "Invoice Type"; Option)
        {
            CaptionML = ENU = 'Invoice Type',
                        ENN = 'Invoice Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable',
                              ENN = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable';
            OptionMembers = " ","Bill of Supply",Export,Supplementary,"Debit Note","Non-GST",Taxable;
        }
        field(16605; "GST Without Payment of Duty"; Boolean)
        {
            CaptionML = ENU = 'GST Without Payment of Duty',
                        ENN = 'GST Without Payment of Duty';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16606; "Bill Of Export No."; Code[20])
        {
            CaptionML = ENU = 'Bill Of Export No.',
                        ENN = 'Bill Of Export No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16607; "Bill Of Export Date"; Date)
        {
            CaptionML = ENU = 'Bill Of Export Date',
                        ENN = 'Bill Of Export Date';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16608; "GST Bill-to State Code"; Code[10])
        {
            CaptionML = ENU = 'GST Bill-to State Code',
                        ENN = 'GST Bill-to State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16609; "GST Ship-to State Code"; Code[10])
        {
            CaptionML = ENU = 'GST Ship-to State Code',
                        ENN = 'GST Ship-to State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16610; "Location State Code"; Code[10])
        {
            CaptionML = ENU = 'Location State Code',
                        ENN = 'Location State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16611; "Location GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Location GST Reg. No.',
                        ENN = 'Location GST Reg. No.';
            DataClassification = ToBeClassified;
            TableRelation = "GST Registration Nos.";
        }
        field(16612; "Customer GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Customer GST Reg. No.',
                        ENN = 'Customer GST Reg. No.';
            DataClassification = ToBeClassified;
        }
        field(16613; "Ship-to GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Ship-to GST Reg. No.',
                        ENN = 'Ship-to GST Reg. No.';
            DataClassification = ToBeClassified;
        }
        field(16614; "Reference Invoice No."; Code[20])
        {
            CaptionML = ENU = 'Reference Invoice No.',
                        ENN = 'Reference Invoice No.';
            DataClassification = ToBeClassified;
        }
        field(16626; "GST Inv. Rounding Precision"; Decimal)
        {
            CaptionML = ENU = 'GST Inv. Rounding Precision',
                        ENN = 'GST Inv. Rounding Precision';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16627; "GST Inv. Rounding Type"; Option)
        {
            CaptionML = ENU = 'GST Inv. Rounding Type',
                        ENN = 'GST Inv. Rounding Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Nearest,Up,Down',
                              ENN = 'Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(16628; "POS Out Of India"; Boolean)
        {
            CaptionML = ENU = 'POS Out Of India',
                        ENN = 'POS Out Of India';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(60090; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091; "OLD Dim Set ID"; Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bill-to Customer No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No.,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Contract No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Responsibility Center,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Posting Date"(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Customer No.", "Posting Date")
        {
        }
        key(Key3; "Order No.")
        {
        }
        key(Key4; "Bill-to Customer No.")
        {
        }
        key(Key5; "Customer No.", "No.")
        {
        }
        key(Key6; "Contract No.", "Posting Date")
        {
        }
        key(Key7; "Responsibility Center", "Posting Date")
        {
        }
        key(Key8; "Posting Date")
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

    ServShptItemLine.RESET;
    ServShptItemLine.SETRANGE("No.","No.");
    ServShptItemLine.DELETEALL;

    ServShptLine.RESET;
    ServShptLine.SETRANGE("Document No.","No.");
    ServShptLine.DELETEALL;

    ServCommentLine.RESET;
    ServCommentLine.SETRANGE("Table Name",ServCommentLine."Table Name"::"Service Shipment Header");
    ServCommentLine.SETRANGE("No.","No.");
    ServCommentLine.DELETEALL;

    IF CertificateOfSupply.GET(CertificateOfSupply."Document Type"::"Service Shipment","No.") THEN
      CertificateOfSupply.DELETE(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("No. Printed");
    LockTable;

    ServShptItemLine.Reset;
    ServShptItemLine.SetRange("No.","No.");
    ServShptItemLine.DeleteAll;

    ServShptLine.Reset;
    ServShptLine.SetRange("Document No.","No.");
    ServShptLine.DeleteAll;

    ServCommentLine.Reset;
    ServCommentLine.SetRange("Table Name",ServCommentLine."Table Name"::"Service Shipment Header");
    ServCommentLine.SetRange("No.","No.");
    ServCommentLine.DeleteAll;

    if CertificateOfSupply.Get(CertificateOfSupply."Document Type"::"Service Shipment","No.") then
      CertificateOfSupply.Delete(true);
    */
    //end;

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


    //Unsupported feature: PropertyModification on ""E-Mail"(Field 5916).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Ship-to E-Mail"(Field 5956).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Ship-to E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Ship-to E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.CertificateOfSupply(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.CertificateOfSupply : 780;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.CertificateOfSupply : "Certificate of Supply";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 3).ReportSelection(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Navigate(PROCEDURE 2).NavigateForm(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Navigate : 344;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Navigate : Navigate;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustLedgEntry : 21;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustLedgEntry : "Cust. Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServCommentLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServCommentLine : 5906;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServCommentLine : "Service Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServShptItemLine(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServShptItemLine : 5989;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServShptItemLine : "Service Shipment Item Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServShptHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServShptHeader : 5990;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServShptHeader : "Service Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServShptLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServShptLine : 5991;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServShptLine : "Service Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1006)". Please convert manually.

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

