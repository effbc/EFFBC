tableextension 70130 SalesPlanningLineExt extends "Sales Planning Line"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change TableRelation on ""Sales Order No."(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sales Order Line No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 4)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Planning Status"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on ""Low-Level Code"(Field 15)". Please convert manually.


        //Unsupported feature: CodeModification on ""Item No."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        Item.GET("Item No.");
        "Low-Level Code" := Item."Low-Level Code";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Item.Get("Item No.");
        "Low-Level Code" := Item."Low-Level Code";
        */
        //end;
        field(50000; "Schedule Line No."; Integer)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Sales Order No.,Sales Order Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Low-Level Code"(Key)". Please convert manually.

        key(Key1; "Sales Order No.", "Sales Order Line No.")
        {
        }
        key(Key2; "Low-Level Code")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Item No."(Field 3).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Item No." : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Item No." : Item;
    //Variable type has not been exported.
}

