tableextension 70132 ActionMessageEntryExt extends "Action Message Entry"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change OptionString on "Type(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Subtype"(Field 11)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 18)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Reservation Entry,Calculation"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source Subtype,Source ID,Source Batch Name,Source Prod. Order Line,Source Ref. No.,Item No.,Location Code,Bin Code,Variant Code"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Reservation Entry", Calculation)
        {
            SumIndexFields = Quantity;
        }
        key(Key3; "Source Type", "Source Subtype", "Source ID", "Source Batch Name", "Source Prod. Order Line", "Source Ref. No.", "Item No.", "Location Code", "Bin Code", "Variant Code")
        {
            SumIndexFields = Quantity;
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "SumUp(PROCEDURE 1).ActionMessageEntry2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SumUp : 99000849;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SumUp : "Action Message Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SumUp(PROCEDURE 1).ReservEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SumUp : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SumUp : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SumUp(PROCEDURE 1).ReservEntry2(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SumUp : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SumUp : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SumUp(PROCEDURE 1).ProdOrderComp(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SumUp : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SumUp : "Prod. Order Component";
    //Variable type has not been exported.
}

