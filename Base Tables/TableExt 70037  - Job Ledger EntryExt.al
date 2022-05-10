tableextension 70037 JobLedgerEntryExt extends "Job Ledger Entry"
{
    // version NAVW19.00.00.50087,NAVIN9.00.00.50087

    fields
    {

        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 7)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 8)". Please convert manually.


        //Unsupported feature: Change Description on "Description(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit Cost (LCY)"(Field 12)". Please convert manually.


        //Unsupported feature: Change Editable on ""Total Cost (LCY)"(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit Price (LCY)"(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on ""Total Price (LCY)"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Resource Group No."(Field 16)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 20)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 37)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 78)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 79)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 1000)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line Amount (LCY)"(Field 1001)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line Discount Amount (LCY)"(Field 1008)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Ledger Entry Type"(Field 1017)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ledger Entry No."(Field 1018)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Ledger Entry No."(Field 1018)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Line Type"(Field 1022)". Please convert manually.


        //Unsupported feature: Change Editable on ""Original Unit Cost (LCY)"(Field 1023)". Please convert manually.


        //Unsupported feature: Change Editable on ""Original Total Cost (LCY)"(Field 1024)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5403)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.

        field(16500; "CWIP G/L Type"; Option)
        {
            CaptionML = ENU = 'CWIP G/L Type',
                        ENN = 'CWIP G/L Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Labor,Material,Overheads',
                              ENN = ' ,Labor,Material,Overheads';
            OptionMembers = " ",Labor,Material,Overheads;
        }
        field(16501; "Remaining CWIP Amt"; Decimal)
        {
            CaptionML = ENU = 'Remaining CWIP Amt',
                        ENN = 'Remaining CWIP Amt';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16502; "CWIP Calculated"; Boolean)
        {
            CaptionML = ENU = 'CWIP Calculated',
                        ENN = 'CWIP Calculated';
            DataClassification = ToBeClassified;
        }
        field(16503; "CWIP Posted to G/L"; Boolean)
        {
            CaptionML = ENU = 'CWIP Posted to G/L',
                        ENN = 'CWIP Posted to G/L';
            DataClassification = ToBeClassified;
        }
        field(60001; "End Date"; Date)
        {
            Description = 'B2B';
        }
        field(60002; "Start Date"; Date)
        {
            Description = 'B2B';
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
            //TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Job No.,Job Task No.,Entry Type,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Job No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Entry Type,Type,No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Order No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Job No.,Entry Type,Type,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,Entry Type,Country/Region Code,Source Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Job No.,Entry Type,Type,Posting Date"(Key)". Please convert manually.

        key(EntryNo1; "Entry No.")
        {
        }
        key(JobNo2; "Job No.", "Job Task No.", "Entry Type", "Posting Date")
        {
            SumIndexFields = "Total Cost (LCY)", "Line Amount (LCY)", "Total Cost", "Line Amount";
        }
        key(Doc3; "Document No.", "Posting Date")
        {
        }
        key(POstDate4; "Job No.", "Posting Date")
        {
        }
        key(Entry5; "Entry Type", Type, "No.", "Posting Date")
        {
        }
        key(Service6; "Service Order No.", "Posting Date")
        {
        }
        key(JobNo7; "Job No.", "Entry Type", Type, "No.")
        {
        }
        key(Country8; Type, "Entry Type", "Country/Region Code", "Source Code", "Posting Date")
        {
        }
        key(EntryType9; "Job No.", "Entry Type", Type, "Posting Date")
        {
            MaintainSQLIndex = false;
            SumIndexFields = "Total Cost (LCY)", "Line Amount (LCY)", "Total Cost", "Line Amount";
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Job.UpdateOverBudgetValue("Job No.",TRUE,"Total Cost (LCY)");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Job.UpdateOverBudgetValue("Job No.",true,"Total Cost (LCY)");
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Job.UpdateOverBudgetValue("Job No.",TRUE,"Total Cost (LCY)");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Job.UpdateOverBudgetValue("Job No.",true,"Total Cost (LCY)");
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Job.UpdateOverBudgetValue("Job No.",TRUE,"Total Cost (LCY)");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Job.UpdateOverBudgetValue("Job No.",true,"Total Cost (LCY)");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 37).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Job(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Job : 167;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Job : Job;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}

