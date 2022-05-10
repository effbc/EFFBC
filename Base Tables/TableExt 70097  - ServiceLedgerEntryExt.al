tableextension 70097 ServiceLedgerEntryExt extends "Service Ledger Entry"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change TableRelation on ""Service Contract No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 3)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 13)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 16)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 18)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 19)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code (Serviced)"(Field 21)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 23)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 24)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job No."(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 46)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 48)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Applies-to Entry No."(Field 56)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 58)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Job Line Type"(Field 59)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: CodeModification on ""Service Order No."(Field 39).OnLookup". Please convert manually.

        //trigger "(Field 39)();
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


        //Unsupported feature: Deletion on ""Document No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Entry Type,Document Type,Document No.,Document Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Contract No.,Entry No.,Entry Type,Type,Moved from Prepaid Acc.,Posting Date,Open,Prepaid,Service Item No. (Serviced),Customer No.,Contract Group Code,Responsibility Center"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Order No.,Service Item No. (Serviced),Entry Type,Moved from Prepaid Acc.,Posting Date,Open,Type,Service Contract No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No.,Entry Type,Moved from Prepaid Acc.,Posting Date,Open,Prepaid"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Item No. (Serviced),Entry Type,Moved from Prepaid Acc.,Type,Posting Date,Open,Service Contract No.,Prepaid,Customer No.,Contract Group Code,Responsibility Center"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Item No. (Serviced),Entry Type,Type,Service Contract No.,Posting Date,Service Order No."(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Document No.", "Posting Date")
        {
        }
        key(Key3; "Entry Type", "Document Type", "Document No.", "Document Line No.")
        {
        }
        key(Key4; "Service Contract No.", "Entry No.", "Entry Type", Type, "Moved from Prepaid Acc.", "Posting Date", Open, Prepaid, "Service Item No. (Serviced)", "Customer No.", "Contract Group Code", "Responsibility Center")
        {
            SumIndexFields = "Amount (LCY)", "Cost Amount", Quantity, "Charged Qty.", "Contract Disc. Amount";
        }
        key(Key5; "Service Order No.", "Service Item No. (Serviced)", "Entry Type", "Moved from Prepaid Acc.", "Posting Date", Open, Type, "Service Contract No.")
        {
            SumIndexFields = "Amount (LCY)", "Cost Amount", Quantity, "Charged Qty.", Amount;
        }
        key(Key6; Type, "No.", "Entry Type", "Moved from Prepaid Acc.", "Posting Date", Open, Prepaid)
        {
            SumIndexFields = "Amount (LCY)", "Cost Amount", Quantity, "Charged Qty.";
        }
        key(Key7; "Service Item No. (Serviced)", "Entry Type", "Moved from Prepaid Acc.", Type, "Posting Date", Open, "Service Contract No.", Prepaid, "Customer No.", "Contract Group Code", "Responsibility Center")
        {
            SumIndexFields = "Amount (LCY)", "Cost Amount";
        }
        key(Key8; "Service Item No. (Serviced)", "Entry Type", Type, "Service Contract No.", "Posting Date", "Service Order No.")
        {
            SumIndexFields = "Amount (LCY)", "Cost Amount", Quantity, "Charged Qty.";
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 16).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


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

