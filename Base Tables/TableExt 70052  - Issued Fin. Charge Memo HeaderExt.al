tableextension 70052 IssuedFinChargeMemoHeaderExt extends "Issued Fin. Charge Memo Header"
{
    // version NAVW19.00.00.50528,NAVIN9.00.00.50528

    fields
    {

        //Unsupported feature: Change NotBlank on ""No."(Field 1)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 15)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Amount"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Interest Amount"(Field 32)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Additional Fee"(Field 33)". Please convert manually.


        //Unsupported feature: Change Editable on ""Additional Fee"(Field 33)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Amount"(Field 34)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 36)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 37)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Remaining Amount"(Field 31)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Interest Amount"(Field 32)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""VAT Amount"(Field 34)". Please convert manually.

        field(16601; "Invoice Type"; Option)
        {
            CaptionML = ENU = 'Invoice Type',
                        ENN = 'Invoice Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable',
                              ENN = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable';
            OptionMembers = " ","Bill of Supply",Export,Supplementary,"Debit Note","Non-GST",Taxable;
        }
        field(16602; "GST Bill-to State Code"; Code[10])
        {
            CaptionML = ENU = 'GST Bill-to State Code',
                        ENN = 'GST Bill-to State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16603; "GST Ship-to State Code"; Code[10])
        {
            CaptionML = ENU = 'GST Ship-to State Code',
                        ENN = 'GST Ship-to State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16604; "Location State Code"; Code[10])
        {
            CaptionML = ENU = 'Location State Code',
                        ENN = 'Location State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16605; "Location GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Location GST Reg. No.',
                        ENN = 'Location GST Reg. No.';
            DataClassification = ToBeClassified;
        }
        field(16606; "Customer GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Customer GST Reg. No.',
                        ENN = 'Customer GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16607; "GST Customer Type"; Option)
        {
            CaptionML = ENU = 'GST Customer Type',
                        ENN = 'GST Customer Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";
        }
        field(16608; "Nature of Supply"; Option)
        {
            CaptionML = ENU = 'Nature of Supply',
                        ENN = 'Nature of Supply';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'B2B,B2C',
                              ENN = 'B2B,B2C';
            OptionMembers = B2B,B2C;
        }
        field(16609; "Ship-to Code"; Code[10])
        {
            CaptionML = ENU = 'Ship-to Code',
                        ENN = 'Ship-to Code';
            DataClassification = ToBeClassified;
            TableRelation = "Ship-to Address".Code WHERE("Customer No." = FIELD("Customer No."));
        }
        field(16610; "Location code"; Code[10])
        {
            CaptionML = ENU = 'Location code',
                        ENN = 'Location code';
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }
        field(16611; "GST Without Payment of Duty"; Boolean)
        {
            CaptionML = ENU = 'GST Without Payment of Duty',
                        ENN = 'GST Without Payment of Duty';
            DataClassification = ToBeClassified;
        }
        field(16612; "Ship-to GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Ship-to GST Reg. No.',
                        ENN = 'Ship-to GST Reg. No.';
            DataClassification = ToBeClassified;
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

        key(Key1; "No.")
        {
        }
        key(Key2; "Customer No.", "Posting Date")
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
    FinChrgMemoIssue.DeleteIssuedFinChrgLines(Rec);

    FinChrgCommentLine.SETRANGE(Type,FinChrgCommentLine.Type::"Issued Finance Charge Memo");
    FinChrgCommentLine.SETRANGE("No.","No.");
    FinChrgCommentLine.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("No. Printed");
    LockTable;
    FinChrgMemoIssue.DeleteIssuedFinChrgLines(Rec);

    FinChrgCommentLine.SetRange(Type,FinChrgCommentLine.Type::"Issued Finance Charge Memo");
    FinChrgCommentLine.SetRange("No.","No.");
    FinChrgCommentLine.DeleteAll;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 36).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).DummyReportSelections(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).DocumentSendingProfile(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 60;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Document Sending Profile";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).ReportDistributionMgt(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 452;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Report Distribution Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Navigate(PROCEDURE 2).NavigateForm(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Navigate : 344;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Navigate : Navigate;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinChrgCommentLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinChrgCommentLine : 306;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinChrgCommentLine : "Fin. Charge Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinChrgMemoIssue(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinChrgMemoIssue : 395;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinChrgMemoIssue : "FinChrgMemo-Issue";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}

