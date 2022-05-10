tableextension 70098 WarrantyLedgerEntryExt extends "Warranty Ledger Entry"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code (Serviced)"(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Item No. (Serviced)"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Service Contract No."(Field 14)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Fault Code"(Field 17)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 20)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 25)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Vendor No."(Field 35)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 38)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: CodeModification on ""Service Order No."(Field 13).OnLookup". Please convert manually.

        //trigger "(Field 13)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CLEAR(ServOrderMgt);
        ServOrderMgt.ServHeaderLookup(1,"Service Order No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Clear(ServOrderMgt);
        ServOrderMgt.ServHeaderLookup(1,"Service Order No.");
        */
        //end;
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


        //Unsupported feature: Deletion on ""Service Item No. (Serviced),Posting Date,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Order No.,Posting Date,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Contract No.,Posting Date,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Posting Date"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Service Item No. (Serviced)", "Posting Date", "Document No.")
        {
        }
        key(Key3; "Service Order No.", "Posting Date", "Document No.")
        {
        }
        key(Key4; "Service Contract No.", "Posting Date", "Document No.")
        {
        }
        key(Key5; "Document No.", "Posting Date")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ServOrderMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServOrderMgt : 5900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServOrderMgt : ServOrderManagement;
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

