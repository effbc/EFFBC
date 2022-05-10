tableextension 70229 WarehouseEntryExt extends "Warehouse Entry"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change BlankZero on ""Line No."(Field 3)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Zone Code"(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Subtype"(Field 21)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Line No."(Field 23)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Document"(Field 25)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Document"(Field 25)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Whse. Document Type"(Field 51)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Whse. Document Line No."(Field 52)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Entry Type"(Field 55)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Reference Document"(Field 60)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 67)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change Editable on ""Phys Invt Counting Period Code"(Field 7380)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Phys Invt Counting Period Type"(Field 7381)". Please convert manually.


        //Unsupported feature: Change Editable on ""Phys Invt Counting Period Type"(Field 7381)". Please convert manually.


        //Unsupported feature: Change Editable on "Dedicated(Field 7382)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Reference No.,Registering Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source Subtype,Source No.,Source Line No.,Source Subline No.,Source Document,Bin Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Serial No.,Item No.,Variant Code,Location Code,Bin Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Bin Code,Location Code,Variant Code,Unit of Measure Code,Lot No.,Serial No.,Entry Type,Dedicated"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Location Code,Variant Code,Bin Type Code,Unit of Measure Code,Lot No.,Serial No.,Dedicated"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bin Code,Location Code,Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code,Item No.,Variant Code,Zone Code,Bin Code,Lot No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Lot No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Serial No."(Key)". Please convert manually.

        key(Pk; "Entry No.")
        {
        }
        key(Sk1; "Reference No.", "Registering Date")
        {
        }
        key(Sk2; "Source Type", "Source Subtype", "Source No.", "Source Line No.", "Source Subline No.", "Source Document", "Bin Code")
        {
        }
        key(Sk3; "Serial No.", "Item No.", "Variant Code", "Location Code", "Bin Code")
        {
            Enabled = false;
            SumIndexFields = "Qty. (Base)";
        }
        key(Sk4; "Item No.", "Bin Code", "Location Code", "Variant Code", "Unit of Measure Code", "Lot No.", "Serial No.", "Entry Type", Dedicated)
        {
            SumIndexFields = "Qty. (Base)", Cubage, Weight, Quantity;
        }
        key(Sk5; "Item No.", "Location Code", "Variant Code", "Bin Type Code", "Unit of Measure Code", "Lot No.", "Serial No.", Dedicated)
        {
            SumIndexFields = "Qty. (Base)", Cubage, Weight;
        }
        key(Sk6; "Bin Code", "Location Code", "Item No.")
        {
            SumIndexFields = Cubage, Weight, "Qty. (Base)";
        }
        key(Sk7; "Location Code", "Item No.", "Variant Code", "Zone Code", "Bin Code", "Lot No.")
        {
            SumIndexFields = "Qty. (Base)";
        }
        key(Sk8; "Location Code")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Qty. (Base)";
        }
        key(Sk9; "Lot No.")
        {
            Enabled = false;
        }
        key(Sk10; "Serial No.")
        {
            Enabled = false;
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 67).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTrackingMgt : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTrackingMgt : "Item Tracking Management";
    //Variable type has not been exported.
}

