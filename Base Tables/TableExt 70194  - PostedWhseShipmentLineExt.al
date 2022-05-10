tableextension 70194 PostedWhseShipmentLineExt extends "Posted Whse. Shipment Line"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change Editable on ""No."(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Type"(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Subtype"(Field 4)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Subtype"(Field 4)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source No."(Field 6)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Line No."(Field 7)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Document"(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Document"(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Zone Code"(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on ""Item No."(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on "Quantity(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. (Base)"(Field 16)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit of Measure Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Variant Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on "Description(Field 32)". Please convert manually.


        //Unsupported feature: Change Editable on ""Description 2"(Field 33)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Destination Type"(Field 39)". Please convert manually.


        //Unsupported feature: Change Editable on ""Destination Type"(Field 39)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Destination No."(Field 40)". Please convert manually.


        //Unsupported feature: Change Editable on ""Destination No."(Field 40)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipping Advice"(Field 44)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Posted Source Document"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Shipment No."(Field 63)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse Shipment Line No."(Field 64)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Whse. Shipment No.,Whse Shipment Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Posted Source No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source Subtype,Source No.,Source Line No."(Key)". Please convert manually.

        key(Key1; "No.", "Line No.")
        {
        }
        key(Key2; "Whse. Shipment No.", "Whse Shipment Line No.")
        {
        }
        key(Key3; "Posted Source No.", "Posting Date")
        {
        }
        key(Key4; "Source Type", "Source Subtype", "Source No.", "Source Line No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "SetSourceFilter(PROCEDURE 42).WhseManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSourceFilter : 5775;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSourceFilter : "Whse. Management";
    //Variable type has not been exported.
}

