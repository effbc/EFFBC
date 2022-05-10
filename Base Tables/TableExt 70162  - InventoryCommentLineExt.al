tableextension 70162 InventoryCommentLineExt extends "Inventory Comment Line"
{
    // version NAVW17.00,MI1.0

    fields
    {
        modify("Document Type")
        {
            OptionCaptionML = ENU = ' ,Transfer Order,Posted Transfer Shipment,Posted Transfer Receipt,Material Issues,Posted Material Issues', ENN = ' ,Transfer Order,Posted Transfer Shipment,Posted Transfer Receipt,Material Issues,Posted Material Issues';

            //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.

        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document Type,No.,Line No."(Key)". Please convert manually.

        key(Key1; "Document Type", "No.", "Line No.")
        {
        }
    }

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "SetUpNewLine(PROCEDURE 1).InvtCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetUpNewLine : 5748;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetUpNewLine : "Inventory Comment Line";
    //Variable type has not been exported.
}

