tableextension 70201 RegisteredWhseActivityLineExt extends "Registered Whse. Activity Line"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change OptionString on ""Activity Type"(Field 1)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Subtype"(Field 5)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Line No."(Field 7)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Subline No."(Field 8)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Document"(Field 9)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Document"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 15)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Destination Type"(Field 39)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Destination No."(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 43)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 7300)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Zone Code"(Field 7301)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Action Type"(Field 7305)". Please convert manually.


        //Unsupported feature: Change Editable on ""Action Type"(Field 7305)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Whse. Document Type"(Field 7306)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Document Type"(Field 7306)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Whse. Document No."(Field 7307)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Whse. Document No."(Field 7307)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Document No."(Field 7307)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Whse. Document Line No."(Field 7308)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Whse. Document Line No."(Field 7308)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Whse. Document Line No."(Field 7308)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Document Line No."(Field 7308)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Activity Type,No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Line No.,Activity Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Activity Type,No.,Sorting Sequence No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Whse. Document Type,Whse. Document No.,Whse. Document Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source Subtype,Source No.,Source Line No.,Source Subline No.,Whse. Document No.,Serial No.,Lot No.,Action Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Lot No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Serial No."(Key)". Please convert manually.

        key(Key1; "Activity Type", "No.", "Line No.")
        {
        }
        key(Key2; "No.", "Line No.", "Activity Type")
        {
        }
        key(Key3; "Activity Type", "No.", "Sorting Sequence No.")
        {
        }
        key(Key4; "Whse. Document Type", "Whse. Document No.", "Whse. Document Line No.")
        {
        }
        key(Key5; "Source Type", "Source Subtype", "Source No.", "Source Line No.", "Source Subline No.", "Whse. Document No.", "Serial No.", "Lot No.", "Action Type")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. (Base)";
        }
        key(Key6; "Lot No.")
        {
            Enabled = false;
        }
        key(Key7; "Serial No.")
        {
            Enabled = false;
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ShowRegisteredActivityDoc(PROCEDURE 23).RegisteredWhseActivHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowRegisteredActivityDoc : 5772;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowRegisteredActivityDoc : "Registered Whse. Activity Hdr.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowRegisteredActivityDoc(PROCEDURE 23).RegisteredPickCard(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowRegisteredActivityDoc : 5798;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowRegisteredActivityDoc : "Registered Pick";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowRegisteredActivityDoc(PROCEDURE 23).RegisteredPutAwayCard(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowRegisteredActivityDoc : 5795;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowRegisteredActivityDoc : "Registered Put-away";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowRegisteredActivityDoc(PROCEDURE 23).RegisteredMovCard(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowRegisteredActivityDoc : 7349;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowRegisteredActivityDoc : "Registered Movement";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).WhseShptHeader(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Warehouse Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).PostedWhseRcptHeader(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7318;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Posted Whse. Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).WhseInternalPickHeader(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7333;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Whse. Internal Pick Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).WhseInternalPutawayHeader(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7331;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Whse. Internal Put-away Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).RelProdOrder(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 5405;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Production Order";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).AssemblyHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).WhseShptCard(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7335;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Warehouse Shipment";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).PostedWhseRcptCard(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Posted Whse. Receipt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).WhseInternalPickCard(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7357;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Whse. Internal Pick";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).WhseInternalPutawayCard(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Whse. Internal Put-away";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).RelProdOrderCard(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 99000831;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Released Production Order";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseEntries(PROCEDURE 1).WhseEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseEntries : 7312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseEntries : "Warehouse Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseEntries(PROCEDURE 1).WhseEntries(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseEntries : 7318;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseEntries : "Warehouse Entries";
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

