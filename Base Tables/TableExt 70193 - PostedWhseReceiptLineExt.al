tableextension 70193 PostedWhseReceiptLineExt extends "Posted Whse. Receipt Line"
{
    // version NAVW17.00,QC1.0

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


        //Unsupported feature: Change Editable on ""Qty. Put Away"(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Put Away (Base)"(Field 26)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Put-away Qty."(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""Put-away Qty."(Field 27)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Put-away Qty. (Base)"(Field 28)". Please convert manually.


        //Unsupported feature: Change Editable on ""Put-away Qty. (Base)"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit of Measure Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Variant Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on "Description(Field 32)". Please convert manually.


        //Unsupported feature: Change Editable on ""Description 2"(Field 33)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Cross-Dock Zone Code"(Field 52)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Cross-Dock Bin Code"(Field 53)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Posted Source Document"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Receipt No."(Field 64)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse Receipt Line No."(Field 65)". Please convert manually.


        //Unsupported feature: Change OptionString on "Status(Field 66)". Please convert manually.


        //Unsupported feature: Change Editable on "Status(Field 66)". Please convert manually.


        //Unsupported feature: Change Editable on ""Serial No."(Field 6500)". Please convert manually.


        //Unsupported feature: Change Editable on ""Lot No."(Field 6501)". Please convert manually.

        field(33000250; "Quantity Accepted"; Decimal)
        {
        }
        field(33000251; "Quantity Rework"; Decimal)
        {
        }
        field(33000252; "Quantity Rejected"; Decimal)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Posted Source No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Location Code,Variant Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source Subtype,Source No.,Source Line No.,Posted Source Document,Posted Source No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Lot No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Serial No."(Key)". Please convert manually.

        key(Key1; "No.", "Line No.")
        {
        }
        key(Key2; "Posted Source No.", "Posting Date")
        {
        }
        key(Key3; "Item No.", "Location Code", "Variant Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. (Base)", "Qty. Put Away (Base)";
        }
        key(Key4; "Source Type", "Source Subtype", "Source No.", "Source Line No.", "Posted Source Document", "Posted Source No.")
        {
        }
        key(Key5; "Lot No.")
        {
            Enabled = false;
        }
        key(Key6; "Serial No.")
        {
            Enabled = false;
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Location.RequirePutaway("Location Code") THEN
      TESTFIELD(Quantity,"Qty. Put Away");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Location.RequirePutaway("Location Code") then
      TestField(Quantity,"Qty. Put Away");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "CreatePutAwayDoc(PROCEDURE 11).WhseSetup(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePutAwayDoc : 5769;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePutAwayDoc : "Warehouse Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreatePutAwayDoc(PROCEDURE 11).CreatePutAwayFromWhseSource(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePutAwayDoc : 7305;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePutAwayDoc : "Whse.-Source - Create Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetSourceFilter(PROCEDURE 42).WhseManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSourceFilter : 5775;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSourceFilter : "Whse. Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.
}

