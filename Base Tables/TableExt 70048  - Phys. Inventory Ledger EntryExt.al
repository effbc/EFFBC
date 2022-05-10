tableextension 70048 PhysInventoryLedgerEntryExt extends "Phys. Inventory Ledger Entry"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change OptionString on ""Entry Type"(Field 4)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salespers./Purch. Code"(Field 22)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 24)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 34)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Last Item Ledger Entry No."(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change Editable on ""Phys Invt Counting Period Code"(Field 7380)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Phys Invt Counting Period Type"(Field 7381)". Please convert manually.


        //Unsupported feature: Change Editable on ""Phys Invt Counting Period Type"(Field 7381)". Please convert manually.

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


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Global Dimension 1 Code,Global Dimension 2 Code,Location Code,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Phys Invt Counting Period Type,Posting Date"(Key)". Please convert manually.

        key(EntryNo1; "Entry No.")
        {
        }
        key(ItemNO2; "Item No.", "Variant Code", "Location Code", "Posting Date")
        {
            SumIndexFields = Quantity;
        }
        key(VAriant3; "Item No.", "Variant Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Location Code", "Posting Date")
        {
            SumIndexFields = Quantity;
        }
        key(DocNo4; "Document No.", "Posting Date")
        {
        }
        key(PhysInvt5; "Item No.", "Phys Invt Counting Period Type", "Posting Date")
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

