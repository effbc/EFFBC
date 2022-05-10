tableextension 70198 PurchaseLineDiscountExt extends "Purchase Line Discount"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change NotBlank on ""Item No."(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Vendor No."(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5400)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 5700)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5700)". Please convert manually.


        //Unsupported feature: CodeModification on ""Item No."(Field 1).OnValidate". Please convert manually.

        //trigger "(Field 1)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Item No." <> xRec."Item No." THEN BEGIN
          "Unit of Measure Code" := '';
          "Variant Code" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> xRec."Item No." then begin
          "Unit of Measure Code" := '';
          "Variant Code" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Vendor No."(Field 2).OnValidate". Please convert manually.

        //trigger "(Field 2)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Vend.GET("Vendor No.") THEN
          "Currency Code" := Vend."Currency Code";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Vend.Get("Vendor No.") then
          "Currency Code" := Vend."Currency Code";
        */
        //end;


        //Unsupported feature: CodeModification on ""Starting Date"(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Starting Date" > "Ending Date") AND ("Ending Date" <> 0D) THEN
          ERROR(Text000,FIELDCAPTION("Starting Date"),FIELDCAPTION("Ending Date"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Starting Date" > "Ending Date") and ("Ending Date" <> 0D) then
          Error(Text000,FieldCaption("Starting Date"),FieldCaption("Ending Date"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Ending Date"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Starting Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Starting Date");
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Item No.,Vendor No.,Starting Date,Currency Code,Variant Code,Unit of Measure Code,Minimum Quantity"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Vendor No.,Item No.,Starting Date,Currency Code,Variant Code,Unit of Measure Code,Minimum Quantity"(Key)". Please convert manually.

        key(Key1; "Item No.", "Vendor No.", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity")
        {
        }
        key(Key2; "Vendor No.", "Item No.", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD("Vendor No.");
    TESTFIELD("Item No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("Vendor No.");
    TestField("Item No.");
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD("Vendor No.");
    TESTFIELD("Item No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField("Vendor No.");
    TestField("Item No.");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "Vend(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Vend : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Vend : Vendor;
    //Variable type has not been exported.
}

