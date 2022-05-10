tableextension 70207 SalesLineDiscountExt extends "Sales Line Discount"
{
    // version NAVW19.00.00.47838

    fields
    {

        //Unsupported feature: Change TableRelation on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sales Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Sales Type"(Field 13)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5400)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 5700)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5700)". Please convert manually.


        //Unsupported feature: CodeModification on "Code(Field 1).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec.Code <> Code THEN BEGIN
          "Unit of Measure Code" := '';
          "Variant Code" := '';

          IF Type = Type::Item THEN
            IF Item.GET(Code) THEN
              "Unit of Measure Code" := Item."Sales Unit of Measure"
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec.Code <> Code then begin
        #2..4
          if Type = Type::Item then
            if Item.Get(Code) then
              "Unit of Measure Code" := Item."Sales Unit of Measure"
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Sales Code"(Field 2).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Sales Code" <> '' THEN
          CASE "Sales Type" OF
            "Sales Type"::"All Customers":
              ERROR(Text001,FIELDCAPTION("Sales Code"));
            "Sales Type"::Campaign:
              BEGIN
                Campaign.GET("Sales Code");
                "Starting Date" := Campaign."Starting Date";
                "Ending Date" := Campaign."Ending Date";
              END;
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Sales Code" <> '' then
          case "Sales Type" of
            "Sales Type"::"All Customers":
              Error(Text001,FieldCaption("Sales Code"));
            "Sales Type"::Campaign:
              begin
                Campaign.Get("Sales Code");
                "Starting Date" := Campaign."Starting Date";
                "Ending Date" := Campaign."Ending Date";
              end;
          end;
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

        IF CurrFieldNo = 0 THEN
          EXIT;
        IF "Sales Type" = "Sales Type"::Campaign THEN
          ERROR(Text003,FIELDCAPTION("Starting Date"),FIELDCAPTION("Ending Date"),FIELDCAPTION("Sales Type"),"Sales Type");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Starting Date" > "Ending Date") and ("Ending Date" <> 0D) then
          Error(Text000,FieldCaption("Starting Date"),FieldCaption("Ending Date"));

        if CurrFieldNo = 0 then
          exit;
        if "Sales Type" = "Sales Type"::Campaign then
          Error(Text003,FieldCaption("Starting Date"),FieldCaption("Ending Date"),FieldCaption("Sales Type"),"Sales Type");
        */
        //end;


        //Unsupported feature: CodeModification on ""Sales Type"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Sales Type" <> xRec."Sales Type" THEN
          VALIDATE("Sales Code",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Sales Type" <> xRec."Sales Type" then
          Validate("Sales Code",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Ending Date"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Starting Date");

        IF CurrFieldNo = 0 THEN
          EXIT;
        IF "Sales Type" = "Sales Type"::Campaign THEN
          ERROR(Text003,FIELDCAPTION("Starting Date"),FIELDCAPTION("Ending Date"),FIELDCAPTION("Sales Type"),"Sales Type");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Starting Date");

        if CurrFieldNo = 0 then
          exit;
        if "Sales Type" = "Sales Type"::Campaign then
          Error(Text003,FieldCaption("Starting Date"),FieldCaption("Ending Date"),FieldCaption("Sales Type"),"Sales Type");
        */
        //end;


        //Unsupported feature: CodeModification on "Type(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec.Type <> Type THEN
          VALIDATE(Code,'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec.Type <> Type then
          Validate(Code,'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 5400).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type,Type::Item);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type,Type::Item);
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 5700).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type,Type::Item);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type,Type::Item);
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Type,Code,Sales Type,Sales Code,Starting Date,Currency Code,Variant Code,Unit of Measure Code,Minimum Quantity"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Sales Type,Sales Code,Type,Code,Starting Date,Currency Code,Variant Code,Unit of Measure Code,Minimum Quantity"(Key)". Please convert manually.

        key(Key1; Type, "Code", "Sales Type", "Sales Code", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity")
        {
        }
        key(Key2; "Sales Type", "Sales Code", Type, "Code", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "Sales Type" = "Sales Type"::"All Customers" THEN
      "Sales Code" := ''
    ELSE
      TESTFIELD("Sales Code");
    TESTFIELD(Code);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Sales Type" = "Sales Type"::"All Customers" then
      "Sales Code" := ''
    else
      TestField("Sales Code");
    TestField(Code);
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "Sales Type" <> "Sales Type"::"All Customers" THEN
      TESTFIELD("Sales Code");
    TESTFIELD(Code);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Sales Type" <> "Sales Type"::"All Customers" then
      TestField("Sales Code");
    TestField(Code);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "Code(Field 1).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Code : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Code : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Campaign(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Campaign : 5071;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Campaign : Campaign;
    //Variable type has not been exported.
}

