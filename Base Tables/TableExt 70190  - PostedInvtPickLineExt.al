tableextension 70190 PostedInvtPickLineExt extends "Posted Invt. Pick Line"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change OptionString on ""Source Subtype"(Field 5)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Line No."(Field 7)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Subline No."(Field 8)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Document"(Field 9)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Document"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 15)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Destination Type"(Field 39)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Destination No."(Field 40)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Agent Code"(Field 42)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 43)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 7300)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Zone Code"(Field 7301)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Action Type"(Field 7305)". Please convert manually.


        //Unsupported feature: Change Editable on ""Action Type"(Field 7305)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Sorting Sequence No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source Subtype,Source No.,Source Line No.,Source Subline No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Lot No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Serial No."(Key)". Please convert manually.

        key(Key1; "No.", "Line No.")
        {
        }
        key(Key2; "No.", "Sorting Sequence No.")
        {
        }
        key(Key3; "Source Type", "Source Subtype", "Source No.", "Source Line No.", "Source Subline No.")
        {
        }
        key(Key4; "Lot No.")
        {
            Enabled = false;
        }
        key(Key5; "Serial No.")
        {
            Enabled = false;
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTrackingMgt : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTrackingMgt : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.
}

