tableextension 70171 ItemTracingBufferExt extends "Item Tracing Buffer"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change Editable on ""Parent Item Ledger Entry No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on "Level(Field 3)". Please convert manually.


        //Unsupported feature: Change Editable on ""Item No."(Field 4)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting Date"(Field 5)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Entry Type"(Field 6)". Please convert manually.


        //Unsupported feature: Change Editable on ""Entry Type"(Field 6)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Type"(Field 7)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Type"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Source No."(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source No."(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Name"(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Document No."(Field 10)". Please convert manually.


        //Unsupported feature: Change Editable on "Description(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change Editable on "Quantity(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Quantity"(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on "Open(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on "Positive(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 18)". Please convert manually.


        //Unsupported feature: Change Editable on ""Variant Code"(Field 18)". Please convert manually.


        //Unsupported feature: Change Editable on ""Serial No."(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on ""Lot No."(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on ""Item Ledger Entry No."(Field 21)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Created by"(Field 22)". Please convert manually.


        //Unsupported feature: Change Editable on ""Created by"(Field 22)". Please convert manually.


        //Unsupported feature: Change Editable on ""Created on"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Record Identifier"(Field 24)". Please convert manually.


        //Unsupported feature: Change Editable on ""Already Traced"(Field 26)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item Ledger Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Serial No.,Item Ledger Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Lot No.,Item Ledger Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Item Ledger Entry No."(Key)". Please convert manually.

        key(Key1; "Line No.")
        {
        }
        key(Key2; "Item Ledger Entry No.")
        {
        }
        key(Key3; "Serial No.", "Item Ledger Entry No.")
        {
        }
        key(Key4; "Lot No.", "Item Ledger Entry No.")
        {
        }
        key(Key5; "Item No.", "Item Ledger Entry No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Created by"(Field 22).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Created by" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Created by" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemTrackingMgt(Variable 1000000000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTrackingMgt : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTrackingMgt : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhereUsedMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhereUsedMgt : 6520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhereUsedMgt : "Item Tracing Mgt.";
    //Variable type has not been exported.
}

