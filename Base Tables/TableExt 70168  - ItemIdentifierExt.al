tableextension 70168 ItemIdentifierExt extends "Item Identifier"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 3)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 4)". Please convert manually.


        //Unsupported feature: CodeModification on ""Variant Code"(Field 3).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Variant Code" <> '' THEN
          ItemVariant.GET("Item No.","Variant Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" <> '' then
          ItemVariant.Get("Item No.","Variant Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Item No." <> '' THEN
          GetItemUnitOfMeasure;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> '' then
          GetItemUnitOfMeasure;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: PropertyChange on "Code(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Unit of Measure Code"(Key)". Please convert manually.

        key(Key1; "Item No.", "Variant Code", "Unit of Measure Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD("Item No.");
    IF VerifyItem = FALSE THEN
      ERROR(Text000,"Item No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("Item No.");
    if VerifyItem = false then
      Error(Text000,"Item No.");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Variant Code"(Field 3).OnValidate.ItemVariant(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VerifyItem(PROCEDURE 1).ItemIdent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VerifyItem : 7704;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VerifyItem : "Item Identifier";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemUnitOfMeasure(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemUnitOfMeasure : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemUnitOfMeasure : "Item Unit of Measure";
    //Variable type has not been exported.
}

