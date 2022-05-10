tableextension 70166 ItemCrossReferenceExt extends "Item Cross Reference"
{
    // version NAVW19.00.00.50682

    fields
    {

        //Unsupported feature: Change Data type on ""Variant Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure"(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Cross-Reference Type"(Field 4)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Cross-Reference Type No."(Field 5)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Cross-Reference No."(Field 6)". Please convert manually.


        //Unsupported feature: CodeModification on ""Cross-Reference Type"(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Cross-Reference Type" <> xRec."Cross-Reference Type") AND
           (xRec."Cross-Reference Type" <> xRec."Cross-Reference Type"::" ") OR
           ("Cross-Reference Type" = "Cross-Reference Type"::"Bar Code")
        THEN
          "Cross-Reference Type No." := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Cross-Reference Type" <> xRec."Cross-Reference Type") and
           (xRec."Cross-Reference Type" <> xRec."Cross-Reference Type"::" ") or
           ("Cross-Reference Type" = "Cross-Reference Type"::"Bar Code")
        then
          "Cross-Reference Type No." := '';
        */
        //end;


        //Unsupported feature: CodeModification on ""Discontinue Bar Code"(Field 8).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Discontinue Bar Code" AND
           ("Cross-Reference Type" <> "Cross-Reference Type"::"Bar Code")
        THEN
          ERROR(Text001,TABLECAPTION);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Discontinue Bar Code" and
           ("Cross-Reference Type" <> "Cross-Reference Type"::"Bar Code")
        then
          Error(Text001,TableCaption);
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Item No.,Variant Code,Unit of Measure,Cross-Reference Type,Cross-Reference Type No.,Cross-Reference No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Cross-Reference No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Cross-Reference No.,Cross-Reference Type,Cross-Reference Type No.,Discontinue Bar Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Cross-Reference Type,Cross-Reference No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Unit of Measure,Cross-Reference Type,Cross-Reference No.,Discontinue Bar Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Cross-Reference Type,Cross-Reference Type No."(Key)". Please convert manually.

        key(Key1; "Item No.", "Variant Code", "Unit of Measure", "Cross-Reference Type", "Cross-Reference Type No.", "Cross-Reference No.")
        {
        }
        key(Key2; "Cross-Reference No.")
        {
        }
        key(Key3; "Cross-Reference No.", "Cross-Reference Type", "Cross-Reference Type No.", "Discontinue Bar Code")
        {
        }
        key(Key4; "Cross-Reference Type", "Cross-Reference No.")
        {
        }
        key(Key5; "Item No.", "Variant Code", "Unit of Measure", "Cross-Reference Type", "Cross-Reference No.", "Discontinue Bar Code")
        {
        }
        key(Key6; "Cross-Reference Type", "Cross-Reference Type No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "Cross-Reference Type" = "Cross-Reference Type"::Vendor THEN
      DeleteItemVendor(Rec)
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Cross-Reference Type" = "Cross-Reference Type"::Vendor then
      DeleteItemVendor(Rec)
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF ("Cross-Reference Type No." <> '') AND
       ("Cross-Reference Type" = "Cross-Reference Type"::" ")
    THEN
      ERROR(Text000,FIELDCAPTION("Cross-Reference Type No."));

    Item.GET("Item No.");
    IF "Unit of Measure" = '' THEN
      VALIDATE("Unit of Measure",Item."Base Unit of Measure");
    CreateItemVendor;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if ("Cross-Reference Type No." <> '') and
       ("Cross-Reference Type" = "Cross-Reference Type"::" ")
    then
      Error(Text000,FieldCaption("Cross-Reference Type No."));

    Item.Get("Item No.");
    if "Unit of Measure" = '' then
      Validate("Unit of Measure",Item."Base Unit of Measure");
    CreateItemVendor;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF ("Cross-Reference Type No." <> '') AND
       ("Cross-Reference Type" = "Cross-Reference Type"::" ")
    THEN
      ERROR(Text000,FIELDCAPTION("Cross-Reference Type No."));

    IF ("Cross-Reference Type" = "Cross-Reference Type"::Vendor) AND NOT ItemVendorResetRequired(xRec,Rec) THEN
      UpdateItemVendorNo(xRec,"Cross-Reference No.")
    ELSE BEGIN
      IF xRec."Cross-Reference Type" = "Cross-Reference Type"::Vendor THEN
        DeleteItemVendor(xRec);
      IF "Cross-Reference Type" = "Cross-Reference Type"::Vendor THEN
        CreateItemVendor;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if ("Cross-Reference Type No." <> '') and
       ("Cross-Reference Type" = "Cross-Reference Type"::" ")
    then
      Error(Text000,FieldCaption("Cross-Reference Type No."));

    if ("Cross-Reference Type" = "Cross-Reference Type"::Vendor) and not ItemVendorResetRequired(xRec,Rec) then
      UpdateItemVendorNo(xRec,"Cross-Reference No.")
    else begin
      if xRec."Cross-Reference Type" = "Cross-Reference Type"::Vendor then
        DeleteItemVendor(xRec);
      if "Cross-Reference Type" = "Cross-Reference Type"::Vendor then
        CreateItemVendor;
    end;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "MultipleCrossReferencesExist(PROCEDURE 8).ItemCrossReference2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MultipleCrossReferencesExist : 5717;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MultipleCrossReferencesExist : "Item Cross Reference";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetItemDescription(PROCEDURE 4).ItemCrossReference(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetItemDescription : 5717;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetItemDescription : "Item Cross Reference";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasValidUnitOfMeasure(PROCEDURE 38).ItemUnitOfMeasure(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasValidUnitOfMeasure : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasValidUnitOfMeasure : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemVend(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemVend : 99;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemVend : "Item Vendor";
    //Variable type has not been exported.
}

