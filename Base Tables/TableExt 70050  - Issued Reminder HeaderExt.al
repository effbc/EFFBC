tableextension 70050 IssuedReminderHeaderExt extends "Issued Reminder Header"
{
    // version NAVW19.00.00.50087

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


        //Unsupported feature: Change TableRelation on ""Reminder Level"(Field 28)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 30)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Remaining Amount"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Amount"(Field 31)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Interest Amount"(Field 32)". Please convert manually.


        //Unsupported feature: Change Editable on ""Interest Amount"(Field 32)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Additional Fee"(Field 33)". Please convert manually.


        //Unsupported feature: Change Editable on ""Additional Fee"(Field 33)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""VAT Amount"(Field 34)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Amount"(Field 34)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 36)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 37)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Add. Fee per Line"(Field 44)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.

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
    ReminderIssue.DeleteIssuedReminderLines(Rec);

    ReminderCommentLine.SETRANGE(Type,ReminderCommentLine.Type::"Issued Reminder");
    ReminderCommentLine.SETRANGE("No.","No.");
    ReminderCommentLine.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("No. Printed");
    LockTable;
    ReminderIssue.DeleteIssuedReminderLines(Rec);

    ReminderCommentLine.SetRange(Type,ReminderCommentLine.Type::"Issued Reminder");
    ReminderCommentLine.SetRange("No.","No.");
    ReminderCommentLine.DeleteAll;
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


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).DocumentSendingProfile(Variable 1005)". Please convert manually.

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


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).IssuedReminderHeader(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 297;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Issued Reminder Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).IssuedReminderHeaderToSend(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 297;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Issued Reminder Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).ReportDistributionMgt(Variable 1008)". Please convert manually.

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


    //Unsupported feature: PropertyModification on "CalculateLineFeeVATAmount(PROCEDURE 1000).IssuedReminderLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalculateLineFeeVATAmount : 298;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalculateLineFeeVATAmount : "Issued Reminder Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReminderCommentLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReminderCommentLine : 299;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReminderCommentLine : "Reminder Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReminderIssue(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReminderIssue : 393;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReminderIssue : "Reminder-Issue";
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

