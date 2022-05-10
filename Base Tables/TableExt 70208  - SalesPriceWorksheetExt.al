tableextension 70208 SalesPriceWorksheetExt extends "Sales Price Worksheet"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change NotBlank on ""Item No."(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sales Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Current Unit Price"(Field 5)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Invoice Disc."(Field 10)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Sales Type"(Field 13)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Item Description"(Field 20)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5400)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5700)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Line Disc."(Field 7001)". Please convert manually.


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

        IF "Sales Type" = "Sales Type"::"Customer Price Group" THEN
          IF CustPriceGr.GET("Sales Code") AND
             (CustPriceGr."Allow Invoice Disc." <> "Allow Invoice Disc.")
          THEN
            IF Item.GET("Item No.") THEN
              "Allow Invoice Disc." := Item."Allow Invoice Disc.";

        CalcCurrentPrice(PriceAlreadyExists);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> xRec."Item No." then begin
          "Unit of Measure Code" := '';
          "Variant Code" := '';
        end;

        if "Sales Type" = "Sales Type"::"Customer Price Group" then
          if CustPriceGr.Get("Sales Code") and
             (CustPriceGr."Allow Invoice Disc." <> "Allow Invoice Disc.")
          then
            if Item.Get("Item No.") then
        #11..13
        */
        //end;


        //Unsupported feature: CodeModification on ""Sales Code"(Field 2).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Sales Code" <> '') AND ("Sales Type" = "Sales Type"::"All Customers") THEN
          ERROR(Text001,FIELDCAPTION("Sales Code"));

        SetSalesDescription;
        CalcCurrentPrice(PriceAlreadyExists);

        IF ("Sales Code" = '') AND ("Sales Type" <> "Sales Type"::"All Customers") THEN
          EXIT;

        IF NOT PriceAlreadyExists AND ("Sales Code" <> '') THEN
          CASE "Sales Type" OF
            "Sales Type"::"Customer Price Group":
              BEGIN
                CustPriceGr.GET("Sales Code");
                "Price Includes VAT" := CustPriceGr."Price Includes VAT";
                "VAT Bus. Posting Gr. (Price)" := CustPriceGr."VAT Bus. Posting Gr. (Price)";
                "Allow Line Disc." := CustPriceGr."Allow Line Disc.";
                "Allow Invoice Disc." := CustPriceGr."Allow Invoice Disc.";
              END;
            "Sales Type"::Customer:
              BEGIN
                Cust.GET("Sales Code");
                "Currency Code" := Cust."Currency Code";
                "Price Includes VAT" := Cust."Prices Including VAT";
                "Allow Line Disc." := Cust."Allow Line Disc.";
              END;
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
        if ("Sales Code" <> '') and ("Sales Type" = "Sales Type"::"All Customers") then
          Error(Text001,FieldCaption("Sales Code"));
        #3..6
        if ("Sales Code" = '') and ("Sales Type" <> "Sales Type"::"All Customers") then
          exit;

        if not PriceAlreadyExists and ("Sales Code" <> '') then
          case "Sales Type" of
            "Sales Type"::"Customer Price Group":
              begin
                CustPriceGr.Get("Sales Code");
        #15..18
              end;
            "Sales Type"::Customer:
              begin
                Cust.Get("Sales Code");
        #23..25
              end;
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

        IF CurrFieldNo <> 0 THEN
          IF "Sales Type" = "Sales Type"::Campaign THEN
            ERROR(Text002,FIELDCAPTION("Starting Date"),FIELDCAPTION("Ending Date"),FIELDCAPTION("Sales Type"),"Sales Type");

        CalcCurrentPrice(PriceAlreadyExists);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Starting Date" > "Ending Date") and ("Ending Date" <> 0D) then
          Error(Text000,FieldCaption("Starting Date"),FieldCaption("Ending Date"));

        if CurrFieldNo <> 0 then
          if "Sales Type" = "Sales Type"::Campaign then
            Error(Text002,FieldCaption("Starting Date"),FieldCaption("Ending Date"),FieldCaption("Sales Type"),"Sales Type");

        CalcCurrentPrice(PriceAlreadyExists);
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

        IF CurrFieldNo <> 0 THEN
          IF "Sales Type" = "Sales Type"::Campaign THEN
            ERROR(Text002,FIELDCAPTION("Starting Date"),FIELDCAPTION("Ending Date"),FIELDCAPTION("Sales Type"),"Sales Type");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Starting Date");

        if CurrFieldNo <> 0 then
          if "Sales Type" = "Sales Type"::Campaign then
            Error(Text002,FieldCaption("Starting Date"),FieldCaption("Ending Date"),FieldCaption("Sales Type"),"Sales Type");
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Starting Date,Ending Date,Sales Type,Sales Code,Currency Code,Item No.,Variant Code,Unit of Measure Code,Minimum Quantity"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code,Unit of Measure Code,Minimum Quantity,Starting Date,Ending Date,Sales Type,Sales Code,Currency Code"(Key)". Please convert manually.

        key(Key1; "Starting Date", "Ending Date", "Sales Type", "Sales Code", "Currency Code", "Item No.", "Variant Code", "Unit of Measure Code", "Minimum Quantity")
        {
        }
        key(Key2; "Item No.", "Variant Code", "Unit of Measure Code", "Minimum Quantity", "Starting Date", "Ending Date", "Sales Type", "Sales Code", "Currency Code")
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
    TESTFIELD("Item No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Sales Type" = "Sales Type"::"All Customers" then
      "Sales Code" := ''
    else
      TestField("Sales Code");
    TestField("Item No.");
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
    TESTFIELD("Item No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Sales Type" <> "Sales Type"::"All Customers" then
      TestField("Sales Code");
    TestField("Item No.");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "CalcCurrentPrice(PROCEDURE 1).SalesPrice(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcCurrentPrice : 7002;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcCurrentPrice : "Sales Price";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetSalesDescription(PROCEDURE 4).Customer(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSalesDescription : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSalesDescription : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetSalesDescription(PROCEDURE 4).CustomerPriceGroup(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSalesDescription : 6;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSalesDescription : "Customer Price Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetSalesDescription(PROCEDURE 4).Campaign(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetSalesDescription : 5071;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetSalesDescription : Campaign;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustPriceGr(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustPriceGr : 6;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustPriceGr : "Customer Price Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Cust(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Cust : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Cust : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Campaign(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Campaign : 5071;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Campaign : Campaign;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.
}

