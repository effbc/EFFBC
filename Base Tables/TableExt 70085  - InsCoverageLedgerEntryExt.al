tableextension 70085 InsCoverageLedgerEntryExt extends "Ins. Coverage Ledger Entry"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change OptionString on ""Document Type"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 20)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 22)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 23)". Please convert manually.


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

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Insurance No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Insurance No.,Disposed FA,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA No.,Insurance No.,Disposed FA,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA No.,Disposed FA,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Posting Date"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Insurance No.", "Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(Key3; "Insurance No.", "Disposed FA", "Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(Key4; "FA No.", "Insurance No.", "Disposed FA", "Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(Key5; "FA No.", "Disposed FA", "Posting Date")
        {
        }
        key(Key6; "Document No.", "Posting Date")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: Change ValidateTableRelation on ""User ID"(Field 23).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
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

