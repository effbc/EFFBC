tableextension 70210 SerialNoInformationExt extends "Serial No. Information"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change NotBlank on ""Item No."(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Serial No."(Field 3)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 14)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Inventory(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on "Inventory(Field 20)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Filter"(Field 23)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Expired Inventory"(Field 24)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expired Inventory"(Field 24)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Item No.,Variant Code,Serial No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Serial No."(Key)". Please convert manually.

        /*key(Key1; "Item No.", "Variant Code", "Serial No.")
        {
        }
        key(Key2; "Serial No.")
        {
            Enabled = false;
        }*/
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ItemTrackingComment.SETRANGE(Type,ItemTrackingComment.Type::"Serial No.");
    ItemTrackingComment.SETRANGE("Item No.","Item No.");
    ItemTrackingComment.SETRANGE("Variant Code","Variant Code");
    ItemTrackingComment.SETRANGE("Serial/Lot No.","Serial No.");
    ItemTrackingComment.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ItemTrackingComment.SetRange(Type,ItemTrackingComment.Type::"Serial No.");
    ItemTrackingComment.SetRange("Item No.","Item No.");
    ItemTrackingComment.SetRange("Variant Code","Variant Code");
    ItemTrackingComment.SetRange("Serial/Lot No.","Serial No.");
    ItemTrackingComment.DeleteAll;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ItemTrackingComment(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTrackingComment : 6506;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTrackingComment : "Item Tracking Comment";
    //Variable type has not been exported.
}

