tableextension 70169 ItemJournalBufferExt extends "Item Journal Buffer"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change Editable on ""Inventory Value (Calculated)"(Field 5802)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Location Code,Variant Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code"(Key)". Please convert manually.

        key(Key1; "Line No.")
        {
        }
        key(Key2; "Item No.", "Location Code", "Variant Code")
        {
        }
        key(Key3; "Item No.", "Variant Code")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.

}

