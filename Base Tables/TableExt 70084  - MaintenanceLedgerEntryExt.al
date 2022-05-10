tableextension 70084 MaintenanceLedgerEntryExt extends "Maintenance Ledger Entry"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change BlankZero on ""G/L Entry No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 20)". Please convert manually.


        //Unsupported feature: PropertyModification on ""Global Dimension 2 Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 22)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 24)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bal. Account Type"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bal. Account No."(Field 30)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Gen. Posting Type"(Field 32)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Reversed by Entry No."(Field 51)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Reversed Entry No."(Field 52)". Please convert manually.


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


        //Unsupported feature: Deletion on ""FA No.,Depreciation Book Code,FA Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA No.,Depreciation Book Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA No.,Depreciation Book Code,Maintenance Code,FA Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA No.,Depreciation Book Code,Maintenance Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""G/L Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transaction No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA No.,Depreciation Book Code,Document No."(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "FA No.", "Depreciation Book Code", "FA Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(Key3; "FA No.", "Depreciation Book Code", "Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(Key4; "FA No.", "Depreciation Book Code", "Maintenance Code", "FA Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(Key5; "FA No.", "Depreciation Book Code", "Maintenance Code", "Posting Date")
        {
            SumIndexFields = Amount;
        }
        key(Key6; "Document No.", "Posting Date")
        {
        }
        key(Key7; "G/L Entry No.")
        {
        }
        key(Key8; "Transaction No.")
        {
        }
        key(Key9; "FA No.", "Depreciation Book Code", "Document No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 24).OnLookup.UserMgt(Variable 1000)". Please convert manually.

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

