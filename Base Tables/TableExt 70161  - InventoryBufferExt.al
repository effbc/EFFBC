tableextension 70161 InventoryBufferExt extends "Inventory Buffer"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5400)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5401)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Item No.,Variant Code,Dimension Entry No.,Location Code,Bin Code,Lot No.,Serial No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code,Variant Code,Quantity"(Key)". Please convert manually.

        key(Key1; "Item No.", "Variant Code", "Dimension Entry No.", "Location Code", "Bin Code", "Lot No.", "Serial No.")
        {
        }
        key(Key2; "Location Code", "Variant Code", Quantity)
        {
            SumIndexFields = Quantity;
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.

}

