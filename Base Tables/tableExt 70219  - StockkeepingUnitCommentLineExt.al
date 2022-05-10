tableextension 70219 StockkeepingUnitCommentLineExt extends "Stockkeeping Unit Comment Line"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change NotBlank on ""Item No."(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 3)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Line No."(Field 4)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""Item No.,Variant Code,Location Code,Line No."(Key)". Please convert manually.

        key(Key1; "Item No.", "Variant Code", "Location Code", "Line No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "SetUpNewLine(PROCEDURE 1).StockkeepingUnitCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetUpNewLine : 5701;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetUpNewLine : "Stockkeeping Unit Comment Line";
    //Variable type has not been exported.
}

