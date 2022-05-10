tableextension 70209 SalesPriceExt extends "Sales Price"
{
    // version NAVW19.00.00.48628,NAVIN9.00.00.48628

    fields
    {

        //Unsupported feature: Change NotBlank on ""Item No."(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sales Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Invoice Disc."(Field 10)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Sales Type"(Field 13)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5400)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 5700)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5700)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Line Disc."(Field 7001)". Please convert manually.


        //Unsupported feature: CodeModification on ""Item No."(Field 1).OnValidate". Please convert manually.

        //trigger "(Field 1)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Item No." <> xRec."Item No." THEN BEGIN
          Item.GET("Item No.");
          "Unit of Measure Code" := Item."Sales Unit of Measure";
          "Variant Code" := '';
        END;

        IF "Sales Type" = "Sales Type"::"Customer Price Group" THEN
          IF CustPriceGr.GET("Sales Code") AND
             (CustPriceGr."Allow Invoice Disc." = "Allow Invoice Disc.")
          THEN
            EXIT;

        UpdateValuesFromItem;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> xRec."Item No." then begin
          Item.Get("Item No.");
          "Unit of Measure Code" := Item."Sales Unit of Measure";
          "Variant Code" := '';
        end;

        if "Sales Type" = "Sales Type"::"Customer Price Group" then
          if CustPriceGr.Get("Sales Code") and
             (CustPriceGr."Allow Invoice Disc." = "Allow Invoice Disc.")
          then
            exit;

        UpdateValuesFromItem;
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
                "VAT Bus. Posting Gr. (Price)" := Cust."VAT Bus. Posting Group";
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
        if "Sales Code" <> '' then
          case "Sales Type" of
            "Sales Type"::"All Customers":
              Error(Text001,FieldCaption("Sales Code"));
            "Sales Type"::"Customer Price Group":
              begin
                CustPriceGr.Get("Sales Code");
        #8..11
              end;
            "Sales Type"::Customer:
              begin
                Cust.Get("Sales Code");
        #16..19
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

        IF CurrFieldNo = 0 THEN
          EXIT;

        IF "Starting Date" <> 0D THEN
          IF "Sales Type" = "Sales Type"::Campaign THEN
            ERROR(Text002,"Sales Type");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Starting Date" > "Ending Date") and ("Ending Date" <> 0D) then
          Error(Text000,FieldCaption("Starting Date"),FieldCaption("Ending Date"));

        if CurrFieldNo = 0 then
          exit;

        if "Starting Date" <> 0D then
          if "Sales Type" = "Sales Type"::Campaign then
            Error(Text002,"Sales Type");
        */
        //end;


        //Unsupported feature: CodeModification on ""Sales Type"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Sales Type" <> xRec."Sales Type" THEN BEGIN
          VALIDATE("Sales Code",'');
          UpdateValuesFromItem;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Sales Type" <> xRec."Sales Type" then begin
          Validate("Sales Code",'');
          UpdateValuesFromItem;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Ending Date"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo = 0 THEN
          EXIT;

        VALIDATE("Starting Date");

        IF "Ending Date" <> 0D THEN
          IF "Sales Type" = "Sales Type"::Campaign THEN
            ERROR(Text002,"Sales Type");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo = 0 then
          exit;

        Validate("Starting Date");

        if "Ending Date" <> 0D then
          if "Sales Type" = "Sales Type"::Campaign then
            Error(Text002,"Sales Type");
        */
        //end;
        field(16500; "MRP Price"; Decimal)
        {
            CaptionML = ENU = 'MRP Price',
                        ENN = 'MRP Price';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(16501; MRP; Boolean)
        {
            CaptionML = ENU = 'MRP',
                        ENN = 'MRP';
            DataClassification = ToBeClassified;
        }
        field(16502; "Abatement %"; Decimal)
        {
            CaptionML = ENU = 'Abatement %',
                        ENN = 'Abatement %';
            DataClassification = ToBeClassified;
            MaxValue = 100;
            MinValue = 0;
        }
        field(16503; "PIT Structure"; Code[10])
        {
            CaptionML = ENU = 'PIT Structure',
                        ENN = 'PIT Structure';
            DataClassification = ToBeClassified;
            TableRelation = "Structure Header";
        }
        field(16504; "Price Inclusive of Tax"; Boolean)
        {
            CaptionML = ENU = 'Price Inclusive of Tax',
                        ENN = 'Price Inclusive of Tax';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Item No.,Sales Type,Sales Code,Starting Date,Currency Code,Variant Code,Unit of Measure Code,Minimum Quantity"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Sales Type,Sales Code,Item No.,Starting Date,Currency Code,Variant Code,Unit of Measure Code,Minimum Quantity"(Key)". Please convert manually.

        key(Key1; "Item No.", "Sales Type", "Sales Code", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity")
        {
        }
        key(Key2; "Sales Type", "Sales Code", "Item No.", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity")
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


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "CopySalesPriceToCustomersSalesPrice(PROCEDURE 3).NewSalesPrice(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopySalesPriceToCustomersSalesPrice : 7002;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopySalesPriceToCustomersSalesPrice : "Sales Price";
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


    //Unsupported feature: PropertyModification on "Campaign(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Campaign : 5071;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Campaign : Campaign;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.
}

