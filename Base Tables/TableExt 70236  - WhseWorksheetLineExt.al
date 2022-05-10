tableextension 70236 WhseWorksheetLineExt extends "Whse. Worksheet Line"
{
    // version NAVW19.00.00.49424

    fields
    {

        //Unsupported feature: Change NotBlank on ""Worksheet Template Name"(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on "Name(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line No."(Field 3)". Please convert manually.


        //Unsupported feature: PropertyChange on ""Source Type"(Field 4)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Subtype"(Field 5)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Subtype"(Field 5)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source No."(Field 6)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Line No."(Field 7)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Line No."(Field 7)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Subline No."(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Subline No."(Field 8)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Document"(Field 9)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Source Document"(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Document"(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""From Zone Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""To Bin Code"(Field 14)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""To Zone Code"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. (Base)"(Field 18)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Outstanding"(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Outstanding (Base)"(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Handled"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Handled (Base)"(Field 24)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""From Unit of Measure Code"(Field 27)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""From Unit of Measure Code"(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per From Unit of Measure"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Unit of Measure Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sorting Sequence No."(Field 35)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Destination Type"(Field 39)". Please convert manually.


        //Unsupported feature: Change Editable on ""Destination Type"(Field 39)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Destination No."(Field 40)". Please convert manually.


        //Unsupported feature: Change Editable on ""Destination No."(Field 40)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Agent Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 42)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipping Advice"(Field 44)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Whse. Document Type"(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Document Type"(Field 46)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Whse. Document No."(Field 47)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Document No."(Field 47)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Whse. Document Line No."(Field 48)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Whse. Document Line No."(Field 48)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Document Line No."(Field 48)". Please convert manually.


        //Unsupported feature: CodeModification on ""From Zone Code"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "From Zone Code" <> xRec."From Zone Code" THEN
          "From Bin Code" := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "From Zone Code" <> xRec."From Zone Code" then
          "From Bin Code" := '';
        */
        //end;


        //Unsupported feature: CodeModification on ""From Bin Code"(Field 13).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        BinCode := WMSMgt.BinContentLookUp("Location Code","Item No.","Variant Code","From Zone Code","From Bin Code");
        IF BinCode <> '' THEN
          VALIDATE("From Bin Code",BinCode);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        BinCode := WMSMgt.BinContentLookUp("Location Code","Item No.","Variant Code","From Zone Code","From Bin Code");
        if BinCode <> '' then
          Validate("From Bin Code",BinCode);
        */
        //end;


        //Unsupported feature: CodeModification on ""From Bin Code"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "From Bin Code" <> '' THEN
          WMSMgt.FindBinContent("Location Code","From Bin Code","Item No.","Variant Code","From Zone Code");

        IF CurrFieldNo = FIELDNO("From Bin Code") THEN
          CheckBin("Location Code","From Bin Code",FALSE);

        IF "From Bin Code" <> '' THEN BEGIN
          GetBin("Location Code","From Bin Code");
          "From Zone Code" := Bin."Zone Code";
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "From Bin Code" <> '' then
          WMSMgt.FindBinContent("Location Code","From Bin Code","Item No.","Variant Code","From Zone Code");

        if CurrFieldNo = FieldNo("From Bin Code") then
          CheckBin("Location Code","From Bin Code",false);

        if "From Bin Code" <> '' then begin
          GetBin("Location Code","From Bin Code");
          "From Zone Code" := Bin."Zone Code";
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""To Bin Code"(Field 14).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo = FIELDNO("To Bin Code") THEN
          CheckBin("Location Code","To Bin Code",TRUE);

        IF "To Bin Code" <> '' THEN BEGIN
          GetBin("Location Code","To Bin Code");
          "To Zone Code" := Bin."Zone Code";
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo = FieldNo("To Bin Code") then
          CheckBin("Location Code","To Bin Code",true);

        if "To Bin Code" <> '' then begin
          GetBin("Location Code","To Bin Code");
          "To Zone Code" := Bin."Zone Code";
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""To Zone Code"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "To Zone Code" <> xRec."To Zone Code" THEN
          "To Bin Code" := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "To Zone Code" <> xRec."To Zone Code" then
          "To Bin Code" := '';
        */
        //end;


        //Unsupported feature: CodeModification on ""Item No."(Field 16).OnValidate". Please convert manually.

        //trigger "(Field 16)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Item No." <> '' THEN BEGIN
          GetItemUnitOfMeasure;
          Description := Item.Description;
          VALIDATE("Unit of Measure Code",ItemUnitOfMeasure.Code);
        END ELSE BEGIN
          Description := '';
          "Variant Code" := '';
          VALIDATE("Unit of Measure Code",'');
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> '' then begin
          GetItemUnitOfMeasure;
          Description := Item.Description;
          Validate("Unit of Measure Code",ItemUnitOfMeasure.Code);
        end else begin
          Description := '';
          "Variant Code" := '';
          Validate("Unit of Measure Code",'');
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 17).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Quantity < "Qty. Handled" THEN
          FIELDERROR(Quantity,STRSUBSTNO(Text010,"Qty. Handled"));

        VALIDATE("Qty. Outstanding",(Quantity - "Qty. Handled"));

        "Qty. (Base)" := CalcBaseQty(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Quantity < "Qty. Handled" then
          FieldError(Quantity,StrSubstNo(Text010,"Qty. Handled"));

        Validate("Qty. Outstanding",(Quantity - "Qty. Handled"));

        "Qty. (Base)" := CalcBaseQty(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. Outstanding"(Field 19).OnValidate". Please convert manually.

        //trigger  Outstanding"(Field 19)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Qty. Outstanding (Base)" := CalcBaseQty("Qty. Outstanding");
        VALIDATE("Qty. to Handle","Qty. Outstanding");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Qty. Outstanding (Base)" := CalcBaseQty("Qty. Outstanding");
        Validate("Qty. to Handle","Qty. Outstanding");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Handle"(Field 21).OnValidate". Please convert manually.

        //trigger  to Handle"(Field 21)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Qty. to Handle" > "Qty. Outstanding" THEN
          ERROR(
            Text000,
            "Qty. Outstanding");

        "Qty. to Handle (Base)" := CalcBaseQty("Qty. to Handle");
        IF "Qty. to Handle (Base)" > 0 THEN BEGIN
          WhseWkshTemplate.GET("Worksheet Template Name");
          IF WhseWkshTemplate.Type = WhseWkshTemplate.Type::Pick THEN BEGIN
            Confirmed := TRUE;
            IF (CurrFieldNo = FIELDNO("Qty. to Handle")) AND
               ("Shipping Advice" = "Shipping Advice"::Complete) AND
               ("Qty. to Handle" <> "Qty. Outstanding")
            THEN
              Confirmed := CONFIRM(
                  Text001 +
                  Text002,
                  FALSE,
                  FIELDCAPTION("Shipping Advice"),
                  "Shipping Advice",
                  FIELDCAPTION("Qty. to Handle"),
                  "Qty. Outstanding");

            IF NOT Confirmed THEN
              ERROR(Text003);

            GetLocation("Location Code");
            IF Location."Bin Mandatory" THEN BEGIN
              IF CurrFieldNo <> FIELDNO("Qty. to Handle") THEN BEGIN
                AvailableQty := CalcAvailableQtyBase;
                IF NOT Location."Always Create Pick Line" THEN
                  IF "Qty. to Handle (Base)" > AvailableQty THEN BEGIN
                    IF ("Shipping Advice" = "Shipping Advice"::Complete) OR
                       (AvailableQty < 0)
                    THEN
                      "Qty. to Handle (Base)" := 0
                    ELSE
                      "Qty. to Handle (Base)" := AvailableQty;
                  END;
              END
            END ELSE BEGIN
              AvailableQty := CalcAvailableQtyBase;
              IF "Qty. to Handle (Base)" > AvailableQty THEN BEGIN
                IF ("Shipping Advice" = "Shipping Advice"::Complete) OR
                   (AvailableQty < 0)
                THEN
                  "Qty. to Handle (Base)" := 0
                ELSE
                  "Qty. to Handle (Base)" := AvailableQty;

                IF (NOT HideValidationDialog) AND (CurrFieldNo = FIELDNO("Qty. to Handle")) THEN
                  ERROR(
                    Text004,
                    AvailableQty);
              END;
            END;
          END ELSE
            IF WhseWkshTemplate.Type = WhseWkshTemplate.Type::Movement THEN
              IF CurrFieldNo <> FIELDNO("Qty. to Handle") THEN BEGIN
                AvailableQty := CheckAvailQtytoMove;
                IF AvailableQty < 0 THEN
                  "Qty. to Handle (Base)" := 0
                ELSE
                  IF "Qty. to Handle (Base)" > AvailableQty THEN
                    "Qty. to Handle (Base)" := AvailableQty;
              END;

          CheckBin("Location Code","From Bin Code",FALSE);
          CheckBin("Location Code","To Bin Code",TRUE);
        END;

        TESTFIELD("Qty. per Unit of Measure");
        IF "Qty. to Handle (Base)" = "Qty. Outstanding (Base)" THEN
          "Qty. to Handle" := "Qty. Outstanding"
        ELSE
          "Qty. to Handle" := ROUND("Qty. to Handle (Base)" / "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Qty. to Handle" > "Qty. Outstanding" then
          Error(
        #3..6
        if "Qty. to Handle (Base)" > 0 then begin
          WhseWkshTemplate.Get("Worksheet Template Name");
          if WhseWkshTemplate.Type = WhseWkshTemplate.Type::Pick then begin
            Confirmed := true;
            if (CurrFieldNo = FieldNo("Qty. to Handle")) and
               ("Shipping Advice" = "Shipping Advice"::Complete) and
               ("Qty. to Handle" <> "Qty. Outstanding")
            then
              Confirmed := Confirm(
                  Text001 +
                  Text002,
                  false,
                  FieldCaption("Shipping Advice"),
                  "Shipping Advice",
                  FieldCaption("Qty. to Handle"),
                  "Qty. Outstanding");

            if not Confirmed then
              Error(Text003);

            GetLocation("Location Code");
            if Location."Bin Mandatory" then begin
              if CurrFieldNo <> FieldNo("Qty. to Handle") then begin
                AvailableQty := CalcAvailableQtyBase;
                if not Location."Always Create Pick Line" then
                  if "Qty. to Handle (Base)" > AvailableQty then begin
                    if ("Shipping Advice" = "Shipping Advice"::Complete) or
                       (AvailableQty < 0)
                    then
                      "Qty. to Handle (Base)" := 0
                    else
                      "Qty. to Handle (Base)" := AvailableQty;
                  end;
              end
            end else begin
              AvailableQty := CalcAvailableQtyBase;
              if "Qty. to Handle (Base)" > AvailableQty then begin
                if ("Shipping Advice" = "Shipping Advice"::Complete) or
                   (AvailableQty < 0)
                then
                  "Qty. to Handle (Base)" := 0
                else
                  "Qty. to Handle (Base)" := AvailableQty;

                if (not HideValidationDialog) and (CurrFieldNo = FieldNo("Qty. to Handle")) then
                  Error(
                    Text004,
                    AvailableQty);
              end;
            end;
          end else
            if WhseWkshTemplate.Type = WhseWkshTemplate.Type::Movement then
              if CurrFieldNo <> FieldNo("Qty. to Handle") then begin
                AvailableQty := CheckAvailQtytoMove;
                if AvailableQty < 0 then
                  "Qty. to Handle (Base)" := 0
                else
                  if "Qty. to Handle (Base)" > AvailableQty then
                    "Qty. to Handle (Base)" := AvailableQty;
              end;

          CheckBin("Location Code","From Bin Code",false);
          CheckBin("Location Code","To Bin Code",true);
        end;

        TestField("Qty. per Unit of Measure");
        if "Qty. to Handle (Base)" = "Qty. Outstanding (Base)" then
          "Qty. to Handle" := "Qty. Outstanding"
        else
          "Qty. to Handle" := Round("Qty. to Handle (Base)" / "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Handle (Base)"(Field 22).OnValidate". Please convert manually.

        //trigger  to Handle (Base)"(Field 22)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Qty. to Handle","Qty. to Handle (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate("Qty. to Handle","Qty. to Handle (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. Handled"(Field 23).OnValidate". Please convert manually.

        //trigger  Handled"(Field 23)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Qty. Handled (Base)" := CalcBaseQty("Qty. Handled");
        VALIDATE("Qty. Outstanding",Quantity - "Qty. Handled");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Qty. Handled (Base)" := CalcBaseQty("Qty. Handled");
        Validate("Qty. Outstanding",Quantity - "Qty. Handled");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. Handled (Base)"(Field 24).OnValidate". Please convert manually.

        //trigger  Handled (Base)"(Field 24)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Qty. Handled" := CalcQty("Qty. Handled (Base)");
        VALIDATE("Qty. Outstanding",Quantity - "Qty. Handled");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Qty. Handled" := CalcQty("Qty. Handled (Base)");
        Validate("Qty. Outstanding",Quantity - "Qty. Handled");
        */
        //end;


        //Unsupported feature: CodeModification on ""From Unit of Measure Code"(Field 27).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Item No." <> '' THEN BEGIN
          GetItemUnitOfMeasure;
          IF NOT FromItemUnitOfMeasure.GET(Item."No.","From Unit of Measure Code") THEN
            FromItemUnitOfMeasure.GET(Item."No.",Item."Base Unit of Measure");
          "Qty. per From Unit of Measure" := FromItemUnitOfMeasure."Qty. per Unit of Measure";
        END ELSE
          "Qty. per From Unit of Measure" := 1;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> '' then begin
          GetItemUnitOfMeasure;
          if not FromItemUnitOfMeasure.Get(Item."No.","From Unit of Measure Code") then
            FromItemUnitOfMeasure.Get(Item."No.",Item."Base Unit of Measure");
          "Qty. per From Unit of Measure" := FromItemUnitOfMeasure."Qty. per Unit of Measure";
        end else
          "Qty. per From Unit of Measure" := 1;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 29).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Item No." <> '' THEN BEGIN
          GetItemUnitOfMeasure;
          "Qty. per Unit of Measure" := ItemUnitOfMeasure."Qty. per Unit of Measure";
        END ELSE
          "Qty. per Unit of Measure" := 1;

        "From Unit of Measure Code" := "Unit of Measure Code";
        "Qty. per From Unit of Measure" := "Qty. per Unit of Measure";
        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> '' then begin
          GetItemUnitOfMeasure;
          "Qty. per Unit of Measure" := ItemUnitOfMeasure."Qty. per Unit of Measure";
        end else
        #5..8
        Validate(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 31).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Variant Code" <> '' THEN BEGIN
          ItemVariant.GET("Item No.","Variant Code");
          Description := ItemVariant.Description;
        END ELSE
          GetItem("Item No.",Description);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" <> '' then begin
          ItemVariant.Get("Item No.","Variant Code");
          Description := ItemVariant."Part No";
        end else
          GetItem("Item No.",Description);
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Worksheet Template Name,Name,Location Code,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Worksheet Template Name,Name,Location Code,Sorting Sequence No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Location Code,Worksheet Template Name,Variant Code,Unit of Measure Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Whse. Document Type,Whse. Document No.,Whse. Document Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Worksheet Template Name,Name,Location Code,Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Worksheet Template Name,Name,Location Code,Due Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Worksheet Template Name,Name,Location Code,Destination Type,Destination No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Worksheet Template Name,Name,Location Code,Source Document,Source No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Worksheet Template Name,Name,Location Code,To Bin Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Worksheet Template Name,Name,Location Code,Shelf No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source Subtype,Source No.,Source Line No.,Source Subline No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,From Bin Code,Location Code,Variant Code,From Unit of Measure Code"(Key)". Please convert manually.

        key(Worksheettemp1; "Worksheet Template Name", Name, "Location Code", "Line No.")
        {
        }
        key(Worksheettemp2; "Worksheet Template Name", Name, "Location Code", "Sorting Sequence No.")
        {
        }
        key(itlw; "Item No.", "Location Code", "Worksheet Template Name", "Variant Code", "Unit of Measure Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. to Handle (Base)";
        }
        key(Whse; "Whse. Document Type", "Whse. Document No.", "Whse. Document Line No.")
        {
        }
        key(WorksheetTemp3; "Worksheet Template Name", Name, "Location Code", "Item No.")
        {
            MaintainSQLIndex = false;
        }
        key(WorksheetTemp4; "Worksheet Template Name", Name, "Location Code", "Due Date")
        {
            MaintainSQLIndex = false;
        }
        key(WorksheetTemp5; "Worksheet Template Name", Name, "Location Code", "Destination Type", "Destination No.")
        {
            MaintainSQLIndex = false;
        }
        key(WorksheetTemp6; "Worksheet Template Name", Name, "Location Code", "Source Document", "Source No.")
        {
            MaintainSQLIndex = false;
        }
        key(WorksheetTemp7; "Worksheet Template Name", Name, "Location Code", "To Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(WorksheetTemp8; "Worksheet Template Name", Name, "Location Code", "Shelf No.")
        {
            MaintainSQLIndex = false;
        }
        key(Source; "Source Type", "Source Subtype", "Source No.", "Source Line No.", "Source Subline No.")
        {
        }
        key(Itf; "Item No.", "From Bin Code", "Location Code", "Variant Code", "From Unit of Measure Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. to Handle", "Qty. to Handle (Base)";
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    WhseWkshTemplate.GET("Worksheet Template Name");
    IF WhseWkshTemplate.Type = WhseWkshTemplate.Type::Movement THEN BEGIN
      UpdateMovActivLines;
      ItemTrackingMgt.DeleteWhseItemTrkgLines(
        DATABASE::"Whse. Worksheet Line",0,Name,"Worksheet Template Name",0,"Line No.","Location Code",TRUE);
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    WhseWkshTemplate.Get("Worksheet Template Name");
    if WhseWkshTemplate.Type = WhseWkshTemplate.Type::Movement then begin
      UpdateMovActivLines;
      ItemTrackingMgt.DeleteWhseItemTrkgLines(
        DATABASE::"Whse. Worksheet Line",0,Name,"Worksheet Template Name",0,"Line No.","Location Code",true);
    end;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""From Bin Code"(Field 13).OnLookup.WMSMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"From Bin Code" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"From Bin Code" : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""From Bin Code"(Field 13).OnValidate.WMSMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"From Bin Code" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"From Bin Code" : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Qty. to Handle"(Field 21).OnValidate.WhseWkshTemplate(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Qty. to Handle" : 7328;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Qty. to Handle" : "Whse. Worksheet Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""From Unit of Measure Code"(Field 27).OnValidate.FromItemUnitOfMeasure(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"From Unit of Measure Code" : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"From Unit of Measure Code" : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 31).OnValidate.ItemVariant(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.WhseWkshTemplate(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.WhseWkshTemplate : 7328;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.WhseWkshTemplate : "Whse. Worksheet Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemTrackingMgt : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemTrackingMgt : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssignedQtyOnReservedLines(PROCEDURE 29).WhseWkshLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssignedQtyOnReservedLines : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssignedQtyOnReservedLines : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssignedQtyOnReservedLines(PROCEDURE 29).TempWhseActivLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssignedQtyOnReservedLines : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssignedQtyOnReservedLines : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcAvailableQtyBase(PROCEDURE 1).TempWhseActivLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcAvailableQtyBase : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcAvailableQtyBase : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcAvailQtyToMove(PROCEDURE 23).BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcAvailQtyToMove : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcAvailQtyToMove : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcAvailQtyToMove(PROCEDURE 23).WhseWkshLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcAvailQtyToMove : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcAvailQtyToMove : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SortWhseWkshLines(PROCEDURE 3).WhseWkshLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SortWhseWkshLines : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SortWhseWkshLines : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 17).WhseWkshTemplate(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7328;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "Whse. Worksheet Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 17).BinContent(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBin(PROCEDURE 17).WMSMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBin : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PutAwayCreate(PROCEDURE 8).CreatePutAwayFromWhseSource(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PutAwayCreate : 7305;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PutAwayCreate : "Whse.-Source - Create Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MovementCreate(PROCEDURE 22).CreateMovFromWhseSource(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MovementCreate : 7305;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MovementCreate : "Whse.-Source - Create Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TemplateSelection(PROCEDURE 16).WhseWkshTemplate(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TemplateSelection : 7328;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TemplateSelection : "Whse. Worksheet Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TemplateSelectionFromBatch(PROCEDURE 36).WhseWkshLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TemplateSelectionFromBatch : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TemplateSelectionFromBatch : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TemplateSelectionFromBatch(PROCEDURE 36).WhseWkshTemplate(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TemplateSelectionFromBatch : 7328;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TemplateSelectionFromBatch : "Whse. Worksheet Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenWhseWkshBatch(PROCEDURE 37).WhseWkshTemplate(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenWhseWkshBatch : 7328;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenWhseWkshBatch : "Whse. Worksheet Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenWhseWkshBatch(PROCEDURE 37).WhseWkshLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenWhseWkshBatch : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenWhseWkshBatch : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenWhseWkshBatch(PROCEDURE 37).WmsMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenWhseWkshBatch : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenWhseWkshBatch : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckTemplateName(PROCEDURE 20).WhseWkshTemplate(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckTemplateName : 7328;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckTemplateName : "Whse. Worksheet Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckTemplateName(PROCEDURE 20).WhseWkshName(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckTemplateName : 7327;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckTemplateName : "Whse. Worksheet Name";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckTemplateName(PROCEDURE 20).WhseEmployee(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckTemplateName : 7301;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckTemplateName : "Warehouse Employee";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckTemplateName(PROCEDURE 20).WmsMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckTemplateName : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckTemplateName : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWhseWkshName(PROCEDURE 21).WhseWkshName(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWhseWkshName : 7327;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWhseWkshName : "Whse. Worksheet Name";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWhseWkshName(PROCEDURE 21).WhseEmployee(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWhseWkshName : 7301;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWhseWkshName : "Warehouse Employee";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWhseEmployee(PROCEDURE 15).WhseEmployee(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWhseEmployee : 7301;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWhseEmployee : "Warehouse Employee";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupWhseWkshName(PROCEDURE 9).WhseWkshName(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupWhseWkshName : 7327;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupWhseWkshName : "Whse. Worksheet Name";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateMovActivLines(PROCEDURE 35).WhseActivLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateMovActivLines : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateMovActivLines : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateMovActivLines(PROCEDURE 35).WhseActivLine2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateMovActivLines : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateMovActivLines : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).WhseItemTrackingForm(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenItemTrackingLines : 6550;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenItemTrackingLines : "Whse. Item Tracking Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AvailableQtyToPickExcludingQCBins(PROCEDURE 46).UnitOfMeasureManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AvailableQtyToPickExcludingQCBins : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AvailableQtyToPickExcludingQCBins : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AvailableQtyToPickExcludingQCBins(PROCEDURE 46).TypeHelper(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AvailableQtyToPickExcludingQCBins : 10;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AvailableQtyToPickExcludingQCBins : "Type Helper";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "QtyOnQCBins(PROCEDURE 27).AvailQtyBaseInQCBins(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //QtyOnQCBins : 7345;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //QtyOnQCBins : "Avail Qty. (Base) In QC Bins";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetNextLineNo(PROCEDURE 31).WhseWorksheetLine2(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetNextLineNo : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetNextLineNo : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetLastLineNo(PROCEDURE 30).WhseWorksheetLine2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetLastLineNo : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetLastLineNo : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSortSeqNo(PROCEDURE 33).WhseWorksheetLine2(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSortSeqNo : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSortSeqNo : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetItemTrackingLines(PROCEDURE 34).WhseItemTrackingForm(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetItemTrackingLines : 6550;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetItemTrackingLines : "Whse. Item Tracking Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseWorksheetLine(Variable 1018)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseWorksheetLine : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseWorksheetLine : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Bin(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Bin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Bin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "BinType(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //BinType : 7303;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BinType : "Bin Type";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemUnitOfMeasure(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemUnitOfMeasure : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemUnitOfMeasure : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreatePick(Variable 1021)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePick : 7312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePick : "Create Pick";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseAvailMgt(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseAvailMgt : 7314;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseAvailMgt : "Warehouse Availability Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1024)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.
}

