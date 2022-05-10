tableextension 70228 WarehouseActivityLineExt extends "Warehouse Activity Line"
{
    // version NAVW19.00.00.51685,QC1.0

    fields
    {

        //Unsupported feature: Change OptionString on ""Activity Type"(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Activity Type"(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line No."(Field 3)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Type"(Field 4)". Please convert manually.


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


        //Unsupported feature: Change Editable on ""Location Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sorting Sequence No."(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on ""Item No."(Field 14)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Variant Code"(Field 15)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit of Measure Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 17)". Please convert manually.


        //Unsupported feature: Change Editable on "Description(Field 18)". Please convert manually.


        //Unsupported feature: Change Editable on ""Description 2"(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on "Quantity(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. (Base)"(Field 21)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Outstanding"(Field 24)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Outstanding (Base)"(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Handled"(Field 28)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Handled (Base)"(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipping Advice"(Field 31)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Destination Type"(Field 39)". Please convert manually.


        //Unsupported feature: Change Editable on ""Destination Type"(Field 39)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Destination No."(Field 40)". Please convert manually.


        //Unsupported feature: Change Editable on ""Destination No."(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 43)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Assemble to Order"(Field 900)". Please convert manually.


        //Unsupported feature: Change Editable on ""Assemble to Order"(Field 900)". Please convert manually.


        //Unsupported feature: Change Editable on ""ATO Component"(Field 901)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Serial No. Blocked"(Field 6504)". Please convert manually.


        //Unsupported feature: Change Editable on ""Serial No. Blocked"(Field 6504)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Lot No. Blocked"(Field 6505)". Please convert manually.


        //Unsupported feature: Change Editable on ""Lot No. Blocked"(Field 6505)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 7300)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Bin Code"(Field 7300)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Zone Code"(Field 7301)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Action Type"(Field 7305)". Please convert manually.


        //Unsupported feature: Change Editable on ""Action Type"(Field 7305)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Whse. Document Type"(Field 7306)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Document Type"(Field 7306)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Whse. Document No."(Field 7307)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Document No."(Field 7307)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Whse. Document Line No."(Field 7308)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Whse. Document Line No."(Field 7308)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Document Line No."(Field 7308)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bin Ranking"(Field 7309)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Breakbulk No."(Field 7314)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Cross-Dock Information"(Field 7317)". Please convert manually.


        //Unsupported feature: Change Editable on "Dedicated(Field 7318)". Please convert manually.


        //Unsupported feature: CodeModification on ""Item No."(Field 14).OnValidate". Please convert manually.

        //trigger "(Field 14)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Item No." <> xRec."Item No." THEN
          "Variant Code" := '';

        IF "Item No." <> '' THEN BEGIN
          GetItemUnitOfMeasure;
          Description := Item.Description;
          "Description 2" := Item."Description 2";
          VALIDATE("Unit of Measure Code",ItemUnitOfMeasure.Code);
          OnValidateItemNoOnAfterValidateUoMCode(Rec,Item,CurrFieldNo);
        END ELSE BEGIN
          Description := '';
          "Description 2" := '';
          "Variant Code" := '';
          VALIDATE("Unit of Measure Code",'');
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> xRec."Item No." then
          "Variant Code" := '';

        if "Item No." <> '' then begin
        #5..7
          Validate("Unit of Measure Code",ItemUnitOfMeasure.Code);
          OnValidateItemNoOnAfterValidateUoMCode(Rec,Item,CurrFieldNo);
        end else begin
        #11..13
          Validate("Unit of Measure Code",'');
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Variant Code" = '' THEN
          VALIDATE("Item No.")
        ELSE BEGIN
          ItemVariant.GET("Item No.","Variant Code");
          IsHandled := FALSE;
          OnValidateVariantCodeOnAfterGetItemVariant(Rec,ItemVariant,IsHandled);
          IF NOT IsHandled THEN BEGIN
            Description := ItemVariant.Description;
            "Description 2" := ItemVariant."Description 2";
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" = '' then
          Validate("Item No.")
        else begin
          ItemVariant.Get("Item No.","Variant Code");
          Description := ItemVariant.Description;
         // "Description 2" := ItemVariant."Description 2";
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 16).OnValidate". Please convert manually.

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

        VALIDATE(Quantity);
        VALIDATE("Qty. Outstanding");
        VALIDATE("Qty. to Handle");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> '' then begin
          GetItemUnitOfMeasure;
          "Qty. per Unit of Measure" := ItemUnitOfMeasure."Qty. per Unit of Measure";
        end else
          "Qty. per Unit of Measure" := 1;

        Validate(Quantity);
        Validate("Qty. Outstanding");
        Validate("Qty. to Handle");
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Qty. Outstanding",(Quantity - "Qty. Handled"));
        "Qty. (Base)" := CalcBaseQty(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Qty. Outstanding",(Quantity - "Qty. Handled"));
        "Qty. (Base)" := CalcBaseQty(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. (Base)"(Field 21).OnValidate". Please convert manually.

        //trigger  (Base)"(Field 21)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE(Quantity,"Qty. (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate(Quantity,"Qty. (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. Outstanding"(Field 24).OnValidate". Please convert manually.

        //trigger  Outstanding"(Field 24)();
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


        //Unsupported feature: CodeModification on ""Qty. Outstanding (Base)"(Field 25).OnValidate". Please convert manually.

        //trigger  Outstanding (Base)"(Field 25)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Qty. Outstanding","Qty. Outstanding (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate("Qty. Outstanding","Qty. Outstanding (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Handle"(Field 26).OnValidate". Please convert manually.

        //trigger  to Handle"(Field 26)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IsHandled := FALSE;
        OnBeforeValidateQtyToHandle(Rec,IsHandled);
        IF NOT IsHandled THEN
          IF "Qty. to Handle" > "Qty. Outstanding" THEN
            ERROR(Text002,"Qty. Outstanding");

        GetLocation("Location Code");
        IF Location."Directed Put-away and Pick" THEN
          WMSMgt.CalcCubageAndWeight(
            "Item No.","Unit of Measure Code","Qty. to Handle",Cubage,Weight);

        IF (CurrFieldNo <> 0) AND
           ("Action Type" = "Action Type"::Place) AND
           ("Breakbulk No." = 0) AND
           ("Qty. to Handle" > 0) AND
           Location."Directed Put-away and Pick"
        THEN
          IF GetBin("Location Code","Bin Code") THEN
            CheckIncreaseCapacity(TRUE);

        IF NOT UseBaseQty THEN BEGIN
          "Qty. to Handle (Base)" := CalcBaseQty("Qty. to Handle");
          IF "Qty. to Handle (Base)" > "Qty. Outstanding (Base)" THEN // rounding error- qty same, not base qty
            "Qty. to Handle (Base)" := "Qty. Outstanding (Base)";
        END;

        IF ("Activity Type" = "Activity Type"::"Put-away") AND
           ("Action Type" = "Action Type"::Take) AND
           (CurrFieldNo <> 0)
        THEN
          IF ("Breakbulk No." <> 0) OR "Original Breakbulk" THEN
            UpdateBreakbulkQtytoHandle;

        IF ("Activity Type" IN ["Activity Type"::Pick,"Activity Type"::"Invt. Pick"]) AND
           ("Action Type" <> "Action Type"::Place) AND ("Lot No." <> '') AND (CurrFieldNo <> 0)
        THEN
          CheckReservedItemTrkg(1,"Lot No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        IsHandled := false;
        OnBeforeValidateQtyToHandle(Rec,IsHandled);
        if not IsHandled then
          if "Qty. to Handle" > "Qty. Outstanding" then
            Error(Text002,"Qty. Outstanding");

        GetLocation("Location Code");
        if Location."Directed Put-away and Pick" then
        #9..11
        if (CurrFieldNo <> 0) and
           ("Action Type" = "Action Type"::Place) and
           ("Breakbulk No." = 0) and
           ("Qty. to Handle" > 0) and
           Location."Directed Put-away and Pick"
        then
          if GetBin("Location Code","Bin Code") then
            CheckIncreaseCapacity(true);

        if not UseBaseQty then begin
          "Qty. to Handle (Base)" := CalcBaseQty("Qty. to Handle");
          if "Qty. to Handle (Base)" > "Qty. Outstanding (Base)" then // rounding error- qty same, not base qty
            "Qty. to Handle (Base)" := "Qty. Outstanding (Base)";
        end;

        if ("Activity Type" = "Activity Type"::"Put-away") and
           ("Action Type" = "Action Type"::Take) and
           (CurrFieldNo <> 0)
        then
          if ("Breakbulk No." <> 0) or "Original Breakbulk" then
            UpdateBreakbulkQtytoHandle;

        if ("Activity Type" in ["Activity Type"::Pick,"Activity Type"::"Invt. Pick"]) and
           ("Action Type" <> "Action Type"::Place) and ("Lot No." <> '') and (CurrFieldNo <> 0)
        then
          CheckReservedItemTrkg(1,"Lot No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Handle (Base)"(Field 27).OnValidate". Please convert manually.

        //trigger  to Handle (Base)"(Field 27)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UseBaseQty := TRUE;
        VALIDATE("Qty. to Handle",CalcQty("Qty. to Handle (Base)"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UseBaseQty := true;
        Validate("Qty. to Handle",CalcQty("Qty. to Handle (Base)"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Serial No."(Field 6500).OnLookup". Please convert manually.

        //trigger "(Field 6500)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        LookUpBinContent := ("Activity Type" <= "Activity Type"::Movement) OR ("Action Type" <> "Action Type"::Place);
        LookUpTrackingSummary(Rec,LookUpBinContent,-1,0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        LookUpBinContent := ("Activity Type" <= "Activity Type"::Movement) or ("Action Type" <> "Action Type"::Place);
        LookUpTrackingSummary(Rec,LookUpBinContent,-1,0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Serial No."(Field 6500).OnValidate". Please convert manually.

        //trigger "(Field 6500)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Serial No." <> '' THEN BEGIN
          ItemTrackingMgt.CheckWhseItemTrkgSetup("Item No.",SNRequired,LNRequired,TRUE);
          TESTFIELD("Qty. per Unit of Measure",1);

          IF "Activity Type" IN ["Activity Type"::Pick,"Activity Type"::"Invt. Pick"] THEN
            CheckReservedItemTrkg(0,"Serial No.");

          CheckSNSpecificationExists;

          IF SNRequired AND LNRequired THEN
            FindLotNoBySerialNo;
        END;

        IF "Serial No." <> xRec."Serial No." THEN
          "Expiration Date" := 0D;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Serial No." <> '' then begin
          ItemTrackingMgt.CheckWhseItemTrkgSetup("Item No.",SNRequired,LNRequired,true);
          TestField("Qty. per Unit of Measure",1);

          if "Activity Type" in ["Activity Type"::Pick,"Activity Type"::"Invt. Pick"] then
        #6..9
          if SNRequired and LNRequired then
            FindLotNoBySerialNo;
        end;

        if "Serial No." <> xRec."Serial No." then
          "Expiration Date" := 0D;
        */
        //end;


        //Unsupported feature: CodeModification on ""Lot No."(Field 6501).OnLookup". Please convert manually.

        //trigger "(Field 6501)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        LookUpBinContent := ("Activity Type" <= "Activity Type"::Movement) OR ("Action Type" <> "Action Type"::Place);
        LookUpTrackingSummary(Rec,LookUpBinContent,-1,1);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        LookUpBinContent := ("Activity Type" <= "Activity Type"::Movement) or ("Action Type" <> "Action Type"::Place);
        LookUpTrackingSummary(Rec,LookUpBinContent,-1,1);
        */
        //end;


        //Unsupported feature: CodeModification on ""Lot No."(Field 6501).OnValidate". Please convert manually.

        //trigger "(Field 6501)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Lot No." <> '' THEN BEGIN
          ItemTrackingMgt.CheckWhseItemTrkgSetup("Item No.",SNRequired,LNRequired,TRUE);

          IF "Activity Type" IN ["Activity Type"::Pick,"Activity Type"::"Invt. Pick"] THEN
            CheckReservedItemTrkg(1,"Lot No.");
        END;

        IF "Lot No." <> xRec."Lot No." THEN
          "Expiration Date" := 0D;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Lot No." <> '' then begin
          ItemTrackingMgt.CheckWhseItemTrkgSetup("Item No.",SNRequired,LNRequired,true);

          if "Activity Type" in ["Activity Type"::Pick,"Activity Type"::"Invt. Pick"] then
            CheckReservedItemTrkg(1,"Lot No.");
        end;

        if "Lot No." <> xRec."Lot No." then
          "Expiration Date" := 0D;
        */
        //end;


        //Unsupported feature: CodeModification on ""Expiration Date"(Field 6503).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Lot No." <> '' THEN
          WITH WhseActivLine DO BEGIN
            RESET;
            SETCURRENTKEY("No.","Line No.","Activity Type");
            SETRANGE("No.",Rec."No.");
            SETRANGE("Item No.",Rec."Item No.");
            SETRANGE("Lot No.",Rec."Lot No.");

            IF FINDSET THEN
              REPEAT
                IF ("Line No." <> Rec."Line No.") AND ("Expiration Date" <> Rec."Expiration Date") AND
                   (Rec."Expiration Date" <> 0D) AND ("Expiration Date" <> 0D)
                THEN
                  Rec.FIELDERROR("Expiration Date");
              UNTIL NEXT = 0;
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Lot No." <> '' then
          with WhseActivLine do begin
            Reset;
            SetCurrentKey("No.","Line No.","Activity Type");
            SetRange("No.",Rec."No.");
            SetRange("Item No.",Rec."Item No.");
            SetRange("Lot No.",Rec."Lot No.");

            if FindSet then
              repeat
                if ("Line No." <> Rec."Line No.") and ("Expiration Date" <> Rec."Expiration Date") and
                   (Rec."Expiration Date" <> 0D) and ("Expiration Date" <> 0D)
                then
                  Rec.FieldError("Expiration Date");
              until Next = 0;
          end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 7300).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Action Type" = "Action Type"::Take THEN
          BinCode := WMSMgt.BinContentLookUp2("Location Code","Item No.","Variant Code","Zone Code","Lot No.","Serial No.","Bin Code")
        ELSE
          BinCode := WMSMgt.BinLookUp("Location Code","Item No.","Variant Code","Zone Code");

        IF BinCode <> '' THEN BEGIN
          VALIDATE("Bin Code",BinCode);
          MODIFY;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Action Type" = "Action Type"::Take then
          BinCode := WMSMgt.BinContentLookUp2("Location Code","Item No.","Variant Code","Zone Code","Lot No.","Serial No.","Bin Code")
        else
          BinCode := WMSMgt.BinLookUp("Location Code","Item No.","Variant Code","Zone Code");

        if BinCode <> '' then begin
          Validate("Bin Code",BinCode);
          Modify;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 7300).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckBinInSourceDoc;

        IF "Bin Code" <> '' THEN
          IF NOT "Assemble to Order" AND ("Action Type" = "Action Type"::Take) THEN
            WMSMgt.FindBinContent("Location Code","Bin Code","Item No.","Variant Code","Zone Code")
          ELSE
            WMSMgt.FindBin("Location Code","Bin Code","Zone Code");

        IF "Bin Code" <> xRec."Bin Code" THEN BEGIN
          CheckInvalidBinCode;
          IF GetBin("Location Code","Bin Code") THEN BEGIN
            IF CurrFieldNo <> 0 THEN BEGIN
              IF ("Activity Type" = "Activity Type"::"Put-away") AND
                 ("Breakbulk No." <> 0)
              THEN
                ERROR(Text005,FIELDCAPTION("Bin Code"));
              CheckWhseDocLine;
              IF "Action Type" = "Action Type"::Take THEN BEGIN
                IF (("Whse. Document Type" <> "Whse. Document Type"::Receipt) AND
                    (Bin."Bin Type Code" <> ''))
                THEN
                  IF BinType.GET(Bin."Bin Type Code") THEN
                    BinType.TESTFIELD(Receive,FALSE);
                GetLocation("Location Code");
                IF Location."Directed Put-away and Pick" THEN
                  UOMCode := "Unit of Measure Code"
                ELSE
                  UOMCode := WMSMgt.GetBaseUOM("Item No.");
                NewBinCode := "Bin Code";
                IF BinContent.GET("Location Code","Bin Code","Item No.","Variant Code",UOMCode) THEN BEGIN
                  IF "Activity Type" IN ["Activity Type"::Pick,"Activity Type"::"Invt. Pick","Activity Type"::"Invt. Movement"] THEN
                    QtyAvailBase := BinContent.CalcQtyAvailToPick(0)
                  ELSE
                    QtyAvailBase := BinContent.CalcQtyAvailToTake(0);
                  IF Location."Directed Put-away and Pick" THEN BEGIN
                    CreatePick.SetCrossDock(Bin."Cross-Dock Bin");
                    AvailableQtyBase :=
                      CreatePick.CalcTotalAvailQtyToPick(
                        "Location Code","Item No.","Variant Code","Lot No.","Serial No.",
                        "Source Type","Source Subtype","Source No.","Source Line No.","Source Subline No.",0,FALSE);
                    AvailableQtyBase += "Qty. Outstanding (Base)";
                    IF AvailableQtyBase < 0 THEN
                      AvailableQtyBase := 0;

                    IF AvailableQtyBase = 0 THEN
                      ERROR(Text015);
                  END ELSE
                    AvailableQtyBase := QtyAvailBase;

                  IF AvailableQtyBase < QtyAvailBase THEN
                    QtyAvailBase := AvailableQtyBase;
                END;

                IF (QtyAvailBase < "Qty. Outstanding (Base)") AND NOT "Assemble to Order" THEN BEGIN
                  IF NOT
                     CONFIRM(
                       STRSUBSTNO(
                         Text012,
                         FIELDCAPTION("Qty. Outstanding (Base)"),"Qty. Outstanding (Base)",
                         QtyAvailBase,BinContent.TABLECAPTION,FIELDCAPTION("Bin Code")),
                       FALSE)
                  THEN
                    ERROR(Text006);

                  "Bin Code" := NewBinCode;
                  MODIFY;
                END;
              END ELSE BEGIN
                IF "Qty. to Handle" > 0 THEN
                  CheckIncreaseCapacity(FALSE);
                xRec.DeleteBinContent(xRec."Action Type"::Place);
              END;
            END;
            Dedicated := Bin.Dedicated;
            IF Location."Directed Put-away and Pick" THEN BEGIN
              "Bin Ranking" := Bin."Bin Ranking";
              "Bin Type Code" := Bin."Bin Type Code";
              "Zone Code" := Bin."Zone Code";
            END;
            OnValidateBinCodeOnAfterGetBin(Rec,Bin);
          END ELSE BEGIN
            xRec.DeleteBinContent(xRec."Action Type"::Place);
            Dedicated := FALSE;
            "Bin Ranking" := 0;
            "Bin Type Code" := '';
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckBinInSourceDoc;

        if "Bin Code" <> '' then
          if not "Assemble to Order" and ("Action Type" = "Action Type"::Take) then
            WMSMgt.FindBinContent("Location Code","Bin Code","Item No.","Variant Code","Zone Code")
          else
            WMSMgt.FindBin("Location Code","Bin Code","Zone Code");

        if "Bin Code" <> xRec."Bin Code" then begin
          CheckInvalidBinCode;
          if GetBin("Location Code","Bin Code") then begin
            if CurrFieldNo <> 0 then begin
              if ("Activity Type" = "Activity Type"::"Put-away") and
                 ("Breakbulk No." <> 0)
              then
                Error(Text005,FieldCaption("Bin Code"));
              CheckWhseDocLine;
              if "Action Type" = "Action Type"::Take then begin
                if (("Whse. Document Type" <> "Whse. Document Type"::Receipt) and
                    (Bin."Bin Type Code" <> ''))
                then
                  if BinType.Get(Bin."Bin Type Code") then
                    BinType.TestField(Receive,false);
                GetLocation("Location Code");
                if Location."Directed Put-away and Pick" then
                  UOMCode := "Unit of Measure Code"
                else
                  UOMCode := WMSMgt.GetBaseUOM("Item No.");
                NewBinCode := "Bin Code";
                if BinContent.Get("Location Code","Bin Code","Item No.","Variant Code",UOMCode) then begin
                  if "Activity Type" in ["Activity Type"::Pick,"Activity Type"::"Invt. Pick","Activity Type"::"Invt. Movement"] then
                    QtyAvailBase := BinContent.CalcQtyAvailToPick(0)
                  else
                    QtyAvailBase := BinContent.CalcQtyAvailToTake(0);
                  if Location."Directed Put-away and Pick" then begin
        #36..39
                        "Source Type","Source Subtype","Source No.","Source Line No.","Source Subline No.",0,false);
                    AvailableQtyBase += "Qty. Outstanding (Base)";
                    if AvailableQtyBase < 0 then
                      AvailableQtyBase := 0;

                    if AvailableQtyBase = 0 then
                      Error(Text015);
                  end else
                    AvailableQtyBase := QtyAvailBase;

                  if AvailableQtyBase < QtyAvailBase then
                    QtyAvailBase := AvailableQtyBase;
                end;

                if (QtyAvailBase < "Qty. Outstanding (Base)") and not "Assemble to Order" then begin
                    if not
                       Confirm(
                         StrSubstNo(
                           Text012,
                         FieldCaption("Qty. Outstanding (Base)"),"Qty. Outstanding (Base)",
                         QtyAvailBase,BinContent.TableCaption,FieldCaption("Bin Code")),
                         false)
                    then
                      Error(Text006);

                  "Bin Code" := NewBinCode;
                  Modify;
                end;
              end else begin
                if "Qty. to Handle" > 0 then
                  CheckIncreaseCapacity(false);
                xRec.DeleteBinContent(xRec."Action Type"::Place);
              end;
            end;
            Dedicated := Bin.Dedicated;
            if Location."Directed Put-away and Pick" then begin
        #76..78
            end;
            OnValidateBinCodeOnAfterGetBin(Rec,Bin);
          end else begin
            xRec.DeleteBinContent(xRec."Action Type"::Place);
            Dedicated := false;
            "Bin Ranking" := 0;
            "Bin Type Code" := '';
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Zone Code"(Field 7301).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Zone Code" <> "Zone Code" THEN BEGIN
          GetLocation("Location Code");
          Location.TESTFIELD("Directed Put-away and Pick");
          xRec.DeleteBinContent(xRec."Action Type"::Place);
          "Bin Code" := '';
          "Bin Ranking" := 0;
          "Bin Type Code" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Zone Code" <> "Zone Code" then begin
          GetLocation("Location Code");
          Location.TestField("Directed Put-away and Pick");
        #4..7
        end;
        */
        //end;
        field(33000250; "Quantity Accepted"; Decimal)
        {
        }
        field(33000251; "Quantity Rework"; Decimal)
        {
        }
        field(33000252; "Quantity Rejected"; Decimal)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Activity Type,No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Line No.,Activity Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source Subtype,Source No.,Source Line No.,Source Subline No.,Unit of Measure Code,Action Type,Breakbulk No.,Original Breakbulk,Activity Type,Assemble to Order"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Activity Type,No.,Sorting Sequence No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Activity Type,No.,Shelf No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Activity Type,No.,Location Code,Source Document,Source No.,Action Type,Zone Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Activity Type,No.,Due Date,Action Type,Bin Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Activity Type,No.,Bin Code,Breakbulk No.,Action Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Activity Type,No.,Bin Ranking,Breakbulk No.,Action Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Activity Type,No.,Destination Type,Destination No.,Action Type,Bin Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Activity Type,No.,Whse. Document Type,Whse. Document No.,Whse. Document Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Activity Type,No.,Action Type,Bin Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Activity Type,No.,Item No.,Variant Code,Action Type,Bin Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Whse. Document No.,Whse. Document Type,Activity Type,Whse. Document Line No.,Action Type,Unit of Measure Code,Original Breakbulk,Breakbulk No.,Lot No.,Serial No.,Assemble to Order"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Bin Code,Location Code,Action Type,Variant Code,Unit of Measure Code,Breakbulk No.,Activity Type,Lot No.,Serial No.,Original Breakbulk,Assemble to Order,ATO Component"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Location Code,Activity Type,Bin Type Code,Unit of Measure Code,Variant Code,Breakbulk No.,Action Type,Lot No.,Serial No.,Assemble to Order"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bin Code,Location Code,Action Type,Breakbulk No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code,Activity Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source No.,Source Line No.,Source Subline No.,Serial No.,Lot No."(Key)". Please convert manually.

        key(Pk; "Activity Type", "No.", "Line No.")
        {
        }
        key(Sk1; "No.", "Line No.", "Activity Type")
        {
        }
        key(Sk2; "Source Type", "Source Subtype", "Source No.", "Source Line No.", "Source Subline No.", "Unit of Measure Code", "Action Type", "Breakbulk No.", "Original Breakbulk", "Activity Type", "Assemble to Order")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding", "Qty. Outstanding (Base)";
        }
        key(Sk3; "Activity Type", "No.", "Sorting Sequence No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk4; "Activity Type", "No.", "Shelf No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk5; "Activity Type", "No.", "Location Code", "Source Document", "Source No.", "Action Type", "Zone Code")
        {
            MaintainSQLIndex = false;
        }
        key(Sk6; "Activity Type", "No.", "Due Date", "Action Type", "Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Sk7; "Activity Type", "No.", "Bin Code", "Breakbulk No.", "Action Type")
        {
            MaintainSQLIndex = false;
        }
        key(Sk8; "Activity Type", "No.", "Bin Ranking", "Breakbulk No.", "Action Type")
        {
            MaintainSQLIndex = false;
        }
        key(Sk9; "Activity Type", "No.", "Destination Type", "Destination No.", "Action Type", "Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Sk10; "Activity Type", "No.", "Whse. Document Type", "Whse. Document No.", "Whse. Document Line No.")
        {
            MaintainSQLIndex = false;
        }
        key(Sk11; "Activity Type", "No.", "Action Type", "Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Sk12; "Activity Type", "No.", "Item No.", "Variant Code", "Action Type", "Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Sk13; "Whse. Document No.", "Whse. Document Type", "Activity Type", "Whse. Document Line No.", "Action Type", "Unit of Measure Code", "Original Breakbulk", "Breakbulk No.", "Lot No.", "Serial No.", "Assemble to Order")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding (Base)", "Qty. Outstanding";
        }
        key(Sk14; "Item No.", "Bin Code", "Location Code", "Action Type", "Variant Code", "Unit of Measure Code", "Breakbulk No.", "Activity Type", "Lot No.", "Serial No.", "Original Breakbulk", "Assemble to Order", "ATO Component")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Quantity, "Qty. (Base)", "Qty. Outstanding", "Qty. Outstanding (Base)", Cubage, Weight;
        }
        key(Sk15; "Item No.", "Location Code", "Activity Type", "Bin Type Code", "Unit of Measure Code", "Variant Code", "Breakbulk No.", "Action Type", "Lot No.", "Serial No.", "Assemble to Order")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding (Base)";
        }
        key(Sk16; "Bin Code", "Location Code", "Action Type", "Breakbulk No.")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = Cubage, Weight;
        }
        key(Sk17; "Location Code", "Activity Type")
        {
        }
        key(Sk18; "Source No.", "Source Line No.", "Source Subline No.", "Serial No.", "Lot No.")
        {
            MaintainSQLIndex = false;
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.

    //begin
    /*
    DeleteRelatedWhseActivLines(Rec,false);
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text001,TABLECAPTION);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Variant Code"(Field 15).OnValidate.ItemVariant(Variable 1000)". Please convert manually.

    //var
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Expiration Date"(Field 6503).OnValidate.WhseActivLine(Variable 1000)". Please convert manually.

    //var
    //"Expiration Date" : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 7300).OnValidate.BinContent(Variable 1000)". Please convert manually.

    //var

    //"Bin Code" : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 7300).OnValidate.BinType(Variable 1002)". Please convert manually.

    //var
    //"Bin Code" : "Bin Type";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteRelatedWhseActivLines(PROCEDURE 13).WhseActivLine2(Variable 1002)". Please convert manually.

    //var
    //DeleteRelatedWhseActivLines : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteRelatedWhseActivLines(PROCEDURE 13).WhseWkshLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteRelatedWhseActivLines : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteRelatedWhseActivLines : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWhseDocLine(PROCEDURE 1).PostedWhseRcptLine(Variable 1004)". Please convert manually.

    //var
    //CheckWhseDocLine : "Posted Whse. Receipt Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWhseDocLine(PROCEDURE 1).WhseShptLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWhseDocLine : 7321;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWhseDocLine : "Warehouse Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWhseDocLine(PROCEDURE 1).WhseInternalPutAwayLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWhseDocLine : 7332;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWhseDocLine : "Whse. Internal Put-away Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWhseDocLine(PROCEDURE 1).WhseInternalPickLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWhseDocLine : 7334;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWhseDocLine : "Whse. Internal Pick Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWhseDocLine(PROCEDURE 1).ProdOrderCompLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWhseDocLine : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWhseDocLine : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWhseDocLine(PROCEDURE 1).AssemblyLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWhseDocLine : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWhseDocLine : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBinInSourceDoc(PROCEDURE 8).ProdOrderComponentLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBinInSourceDoc : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBinInSourceDoc : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckBinInSourceDoc(PROCEDURE 8).AssemblyLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckBinInSourceDoc : 901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckBinInSourceDoc : "Assembly Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckIncreaseCapacity(PROCEDURE 6).BinContent(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckIncreaseCapacity : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckIncreaseCapacity : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SplitLine(PROCEDURE 27).NewWhseActivLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SplitLine : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SplitLine : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateBreakbulkQtytoHandle(PROCEDURE 4).WhseActivLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateBreakbulkQtytoHandle : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateBreakbulkQtytoHandle : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).WhseShptHeader(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Warehouse Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).PostedWhseRcptHeader(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7318;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Posted Whse. Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).WhseIntPickHeader(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7333;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Whse. Internal Pick Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).WhseIntPutawayHeader(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7331;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Whse. Internal Put-away Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).RelProdOrder(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 5405;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Production Order";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).AssemblyHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).WhseShptCard(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7335;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Warehouse Shipment";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).PostedWhseRcptCard(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Posted Whse. Receipt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).WhseIntPickCard(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7357;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Whse. Internal Pick";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowWhseDoc(PROCEDURE 22).WhseIntPutawayCard(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowWhseDoc : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowWhseDoc : "Whse. Internal Put-away";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowActivityDoc(PROCEDURE 23).WhseActivHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowActivityDoc : 5766;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowActivityDoc : "Warehouse Activity Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowActivityDoc(PROCEDURE 23).WhsePickCard(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowActivityDoc : 5779;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowActivityDoc : "Warehouse Pick";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowActivityDoc(PROCEDURE 23).WhsePutawayCard(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowActivityDoc : 5770;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowActivityDoc : "Warehouse Put-away";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowActivityDoc(PROCEDURE 23).WhseMovCard(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowActivityDoc : 7315;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowActivityDoc : "Warehouse Movement";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowActivityDoc(PROCEDURE 23).InvtPickCard(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowActivityDoc : 7377;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowActivityDoc : "Inventory Pick";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowActivityDoc(PROCEDURE 23).InvtPutAwayCard(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowActivityDoc : 7375;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowActivityDoc : "Inventory Put-away";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateNewUOMLine(PROCEDURE 34).NewWhseActivLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateNewUOMLine : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateNewUOMLine : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateRelatedItemTrkg(PROCEDURE 3).WhseItemTrkgLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateRelatedItemTrkg : 6550;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateRelatedItemTrkg : "Whse. Item Tracking Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookUpTrackingSummary(PROCEDURE 50).TempTrackingSpecification(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookUpTrackingSummary : 336;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookUpTrackingSummary : "Tracking Specification";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckReservedItemTrkg(PROCEDURE 7).Item(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckReservedItemTrkg : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckReservedItemTrkg : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckReservedItemTrkg(PROCEDURE 7).ReservEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckReservedItemTrkg : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckReservedItemTrkg : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckReservedItemTrkg(PROCEDURE 7).ReservEntry2(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckReservedItemTrkg : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckReservedItemTrkg : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckReservedItemTrkg(PROCEDURE 7).TempWhseActivLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckReservedItemTrkg : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckReservedItemTrkg : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckReservedItemTrkg(PROCEDURE 7).WhseAvailMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckReservedItemTrkg : 7314;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckReservedItemTrkg : "Warehouse Availability Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteBinContent(PROCEDURE 21).BinContent(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteBinContent : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteBinContent : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateReservation(PROCEDURE 90).TempTrackingSpecification(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateReservation : 336;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateReservation : "Tracking Specification";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromPickWkshLine(PROCEDURE 29).WhseShptLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromPickWkshLine : 7321;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromPickWkshLine : "Warehouse Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferFromPickWkshLine(PROCEDURE 29).AssembleToOrderLink(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferFromPickWkshLine : 904;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferFromPickWkshLine : "Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferAllButWhseDocDetailsFromAssemblyLine(PROCEDURE 31).AsmHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferAllButWhseDocDetailsFromAssemblyLine : 900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferAllButWhseDocDetailsFromAssemblyLine : "Assembly Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckSNSpecificationExists(PROCEDURE 30).WarehouseActivityLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckSNSpecificationExists : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckSNSpecificationExists : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindLotNoBySerialNo(PROCEDURE 32).TempTrackingSpecification(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindLotNoBySerialNo : 336;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindLotNoBySerialNo : "Tracking Specification";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckInvalidBinCode(PROCEDURE 33).WhseActivLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckInvalidBinCode : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckInvalidBinCode : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckInvalidBinCode(PROCEDURE 33).Location(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckInvalidBinCode : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckInvalidBinCode : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RegisteredWhseActLineIsEmpty(PROCEDURE 45).RegisteredWhseActivityLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RegisteredWhseActLineIsEmpty : 5773;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RegisteredWhseActLineIsEmpty : "Registered Whse. Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemAvailabilityByPeriod(PROCEDURE 36).ItemAvailFormsMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemAvailabilityByPeriod : 353;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemAvailabilityByPeriod : "Item Availability Forms Mgt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemAvailabilityByVariant(PROCEDURE 40).ItemAvailFormsMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemAvailabilityByVariant : 353;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemAvailabilityByVariant : "Item Availability Forms Mgt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemAvailabilityByLocation(PROCEDURE 41).ItemAvailFormsMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemAvailabilityByLocation : 353;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemAvailabilityByLocation : "Item Availability Forms Mgt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemAvailabilityByEvent(PROCEDURE 38).ItemAvailFormsMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemAvailabilityByEvent : 353;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemAvailabilityByEvent : "Item Availability Forms Mgt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDeletedMessage(PROCEDURE 83).WhseActivLine2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDeletedMessage : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDeletedMessage : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmWhseActivLinesDeletionOutOfBalance(PROCEDURE 87).WhseActivLine3(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmWhseActivLinesDeletionOutOfBalance : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmWhseActivLinesDeletionOutOfBalance : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReNumberAllLines(PROCEDURE 51).TempWarehouseActivityLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReNumberAllLines : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReNumberAllLines : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestNonSpecificItemTracking(PROCEDURE 95).ItemJournalLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestNonSpecificItemTracking : 83;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestNonSpecificItemTracking : "Item Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1026)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Bin(Variable 1025)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Bin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Bin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemUnitOfMeasure(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemUnitOfMeasure : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemUnitOfMeasure : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemTrackingCode(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTrackingCode : 6502;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTrackingCode : "Item Tracking Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemTrackingMgt(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTrackingMgt : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTrackingMgt : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemTrackingDataCollection(Variable 1018)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTrackingDataCollection : 6501;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTrackingDataCollection : "Item Tracking Data Collection";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSMgt(Variable 1019)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSMgt : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSMgt : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreatePick(Variable 1032)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePick : 7312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePick : "Create Pick";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.
}

