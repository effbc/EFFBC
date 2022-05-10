tableextension 70087 TransferLineExt extends "Transfer Line"
{
    // version NAVW19.00.00.51103,NAVIN9.00.00.51103,B2B1.0

    fields
    {

        //Unsupported feature: Change TableRelation on ""Item No."(Field 3)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Item No."(Field 3)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Shipped"(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Received"(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on "Status(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on "Description(Field 13)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "Description(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Qty. (Base)"(Field 17)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Received (Base)"(Field 21)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 22)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Quantity"(Field 24)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""In-Transit Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change Editable on ""In-Transit Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. in Transit"(Field 34)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. in Transit (Base)"(Field 35)". Please convert manually.


        //Unsupported feature: Change Editable on ""Transfer-from Code"(Field 36)". Please convert manually.


        //Unsupported feature: Change Editable on ""Transfer-to Code"(Field 37)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Derived From Line No."(Field 40)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Agent Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 42)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Item Entry"(Field 43)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Quantity Inbnd."(Field 50)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Quantity Inbnd."(Field 50)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Quantity Outbnd."(Field 51)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Quantity Outbnd."(Field 51)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Qty. Inbnd. (Base)"(Field 52)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Qty. Inbnd. (Base)"(Field 52)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Qty. Outbnd. (Base)"(Field 53)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Qty. Outbnd. (Base)"(Field 53)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Time"(Field 54)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Quantity Shipped"(Field 55)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Quantity Shipped"(Field 55)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Qty. Shipped (Base)"(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Qty. Shipped (Base)"(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5707)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5707)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Whse. Inbnd. Otsdg. Qty (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Whse. Inbnd. Otsdg. Qty (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Inbnd. Otsdg. Qty (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Whse Outbnd. Otsdg. Qty (Base)"(Field 5751)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Whse Outbnd. Otsdg. Qty (Base)"(Field 5751)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse Outbnd. Otsdg. Qty (Base)"(Field 5751)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Shipped"(Field 5752)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Received"(Field 5753)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Transfer-from Bin Code"(Field 7300)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Transfer-To Bin Code"(Field 7301)". Please convert manually.


        //Unsupported feature: CodeModification on ""Item No."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Shipped",0);
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        Item.TryGetItemNo(ReturnValue,"Item No.",TRUE);
        "Item No." := COPYSTR(ReturnValue,1,MAXSTRLEN("Item No."));
        ReserveTransferLine.VerifyChange(Rec,xRec);
        CALCFIELDS("Reserved Qty. Inbnd. (Base)");
        TESTFIELD("Reserved Qty. Inbnd. (Base)",0);
        WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);

        TempTransferLine := Rec;
        INIT;
        "Item No." := TempTransferLine."Item No.";
        OnValidateItemNoOnCopyFromTempTransLine(Rec,TempTransferLine);
        IF "Item No." = '' THEN
          EXIT;

        OnValidateItemNoOnAfterInitLine(Rec,TempTransferLine);

        GetTransHeader;
        GetItem;
        GetDefaultBin("Transfer-from Code","Transfer-to Code");

        Item.TESTFIELD(Blocked,FALSE);
        Item.TESTFIELD(Type,Item.Type::Inventory);

        Description := Item.Description;
        "Description 2" := Item."Description 2";
        VALIDATE("Gen. Prod. Posting Group",Item."Gen. Prod. Posting Group");
        VALIDATE("Inventory Posting Group",Item."Inventory Posting Group");
        VALIDATE(Quantity,xRec.Quantity);
        VALIDATE("Unit of Measure Code",Item."Base Unit of Measure");
        VALIDATE("Gross Weight",Item."Gross Weight");
        VALIDATE("Net Weight",Item."Net Weight");
        VALIDATE("Unit Volume",Item."Unit Volume");
        VALIDATE("Units per Parcel",Item."Units per Parcel");
        "Item Category Code" := Item."Item Category Code";

        OnAfterAssignItemValues(Rec,Item);

        CreateDim(DATABASE::Item,"Item No.");
        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID","Shortcut Dimension 1 Code","Shortcut Dimension 2 Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        IF Quantity <> 0 THEN
          TESTFIELD("Item No.");
        "Quantity (Base)" := CalcBaseQty(Quantity);
        IF ((Quantity * "Quantity Shipped") < 0) OR
           (ABS(Quantity) < ABS("Quantity Shipped"))
        THEN
          FIELDERROR(Quantity,STRSUBSTNO(Text002,FIELDCAPTION("Quantity Shipped")));
        IF (("Quantity (Base)" * "Qty. Shipped (Base)") < 0) OR
           (ABS("Quantity (Base)") < ABS("Qty. Received (Base)"))
        THEN
          FIELDERROR("Quantity (Base)",STRSUBSTNO(Text002,FIELDCAPTION("Qty. Shipped (Base)")));
        InitQtyInTransit;
        InitOutstandingQty;
        InitQtyToShip;
        InitQtyToReceive;
        CheckItemAvailable(FIELDNO(Quantity));

        ReserveTransferLine.VerifyQuantity(Rec,xRec);

        UpdateWithWarehouseShipReceive;

        IsHandled := FALSE;
        OnValidateQuantityOnBeforeTransLineVerifyChange(Rec,xRec,IsHandled);
        IF NOT IsHandled THEN
          WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //B2B
        ProdOrderComp.SetRange("Prod. Order No.","Prod. Order No.");
        ProdOrderComp.SetRange("Prod. Order Line No.","Prod. Order Line No.");
        ProdOrderComp.SetRange("Item No.","Item No.");
        if ProdOrderComp.Find('-') then
         if Quantity > ProdOrderComp."Remaining Quantity"  then
           if (not("Allow Excess Qty.")) and (Copy) then
             TestField(Quantity,ProdOrderComp."Remaining Quantity");
        //B2B
        if CurrFieldNo <> 0 then
          TestStatusOpen;
        if Quantity <> 0 then
          TestField("Item No.");
        "Quantity (Base)" := CalcBaseQty(Quantity);
        if ((Quantity * "Quantity Shipped") < 0) or
           (Abs(Quantity) < Abs("Quantity Shipped"))
        then
          FieldError(Quantity,StrSubstNo(Text002,FieldCaption("Quantity Shipped")));
        if (("Quantity (Base)" * "Qty. Shipped (Base)") < 0) or
           (Abs("Quantity (Base)") < Abs("Qty. Received (Base)"))
        then
          FieldError("Quantity (Base)",StrSubstNo(Text002,FieldCaption("Qty. Shipped (Base)")));
        #14..17
        CheckItemAvailable(FieldNo(Quantity));
        #19..23
        WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);

        //UpdateAmounts;  // NAVIN

        //B2B
        TransferHeader.SetRange("No.","Document No.");
        if TransferHeader.Find('-') then
         Location.Get(TransferHeader."Transfer-to Code");
         if Location."QC Enabled Location" then
            "Qty. Sending To Quality" := Quantity;
        //B2B
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure"(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
          TestStatusOpen;
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Ship"(Field 6).OnValidate". Please convert manually.

        //trigger  to Ship"(Field 6)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetLocation("Transfer-from Code");
        IF CurrFieldNo <> 0 THEN BEGIN
          IF Location."Require Shipment" AND
             ("Qty. to Ship" <> 0)
          THEN
            CheckWarehouse("Transfer-from Code",FALSE);
          WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);
        END;

        IF "Qty. to Ship" > "Outstanding Quantity" THEN
          IF "Outstanding Quantity" > 0 THEN
            ERROR(
              Text005,
              "Outstanding Quantity")
          ELSE
            ERROR(Text006);
        "Qty. to Ship (Base)" := CalcBaseQty("Qty. to Ship");

        IF ("In-Transit Code" = '') AND ("Quantity Shipped" = "Quantity Received") THEN
          VALIDATE("Qty. to Receive","Qty. to Ship");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetLocation("Transfer-from Code");
        if CurrFieldNo <> 0 then begin
          if Location."Require Shipment" and
             ("Qty. to Ship" <> 0)
          then
            CheckWarehouse("Transfer-from Code",false);
          WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);
        end;

        if "Qty. to Ship" > "Outstanding Quantity" then
          if "Outstanding Quantity" > 0 then
            Error(
              Text005,
              "Outstanding Quantity")
          else
            Error(Text006);
        "Qty. to Ship (Base)" := CalcBaseQty("Qty. to Ship");

        if ("In-Transit Code" = '') and ("Quantity Shipped" = "Quantity Received") then
          Validate("Qty. to Receive","Qty. to Ship");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Receive"(Field 7).OnValidate". Please convert manually.

        //trigger  to Receive"(Field 7)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetLocation("Transfer-to Code");
        IF CurrFieldNo <> 0 THEN BEGIN
          IF Location."Require Receive" AND
             ("Qty. to Receive" <> 0)
          THEN
            CheckWarehouse("Transfer-to Code",TRUE);
          WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);
        END;

        GetTransferHeaderNoVerification;

        IF NOT TransHeader."Direct Transfer" AND ("Direct Transfer" = xRec."Direct Transfer") THEN
          IF "Qty. to Receive" > "Qty. in Transit" THEN
            IF "Qty. in Transit" > 0 THEN
              ERROR(
                Text008,
                "Qty. in Transit")
            ELSE
              ERROR(Text009);
        "Qty. to Receive (Base)" := CalcBaseQty("Qty. to Receive");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetLocation("Transfer-to Code");
        if CurrFieldNo <> 0 then begin
          if Location."Require Receive" and
             ("Qty. to Receive" <> 0)
          then
            CheckWarehouse("Transfer-to Code",true);
          WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);
        end;
        #9..11
        if not TransHeader."Direct Transfer" and ("Direct Transfer" = xRec."Direct Transfer") then
          if "Qty. to Receive" > "Qty. in Transit" then
            if "Qty. in Transit" > 0 then
              Error(
                Text008,
                "Qty. in Transit")
            else
              Error(Text009);
        "Qty. to Receive (Base)" := CalcBaseQty("Qty. to Receive");
        */
        //end;


        //Unsupported feature: CodeModification on "Description(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (STRLEN(Description) <= MAXSTRLEN(Item."No.")) AND ("Item No." <> '') THEN
          ItemDescriptionIsNo := Item.GET(Description);

        IF ("Item No." <> '') AND (NOT ItemDescriptionIsNo) AND (Description <> '') THEN BEGIN
          Item.SETFILTER(Description,'''@' + CONVERTSTR(Description,'''','?') + '''');
          IF NOT Item.FINDFIRST THEN
            EXIT;
          IF Item."No." = "Item No." THEN
            EXIT;
          IF ConfirmManagement.ConfirmProcess(
               STRSUBSTNO(AnotherItemWithSameDescrQst,Item."No.",Item.Description),TRUE)
          THEN
            VALIDATE("Item No.",Item."No.");
          EXIT;
        END;

        IF Item.TryGetItemNoOpenCard(ReturnValue,Description,FALSE,TRUE,TRUE) THEN
          CASE ReturnValue OF
            '':
              Description := xRec.Description;
            "Item No.":
              Description := xRec.Description;
            ELSE BEGIN
              CurrFieldNo := FIELDNO("Item No.");
              VALIDATE("Item No.",COPYSTR(ReturnValue,1,MAXSTRLEN(Item."No.")));
            END;
          END;

        IF "Item No." <> '' THEN
          GetItem;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (StrLen(Description) <= MaxStrLen(Item."No.")) and ("Item No." <> '') then
          ItemDescriptionIsNo := Item.Get(Description);

        if ("Item No." <> '') and (not ItemDescriptionIsNo) and (Description <> '') then begin
          Item.SetFilter(Description,'''@' + ConvertStr(Description,'''','?') + '''');
          if not Item.FindFirst then
            exit;
          if Item."No." = "Item No." then
            exit;
          if ConfirmManagement.ConfirmProcess(
               StrSubstNo(AnotherItemWithSameDescrQst,Item."No.",Item.Description),true)
          then
            Validate("Item No.",Item."No.");
          exit;
        end;

        if Item.TryGetItemNoOpenCard(ReturnValue,Description,false,true,true) then
          case ReturnValue of
        #19..22
            else begin
              CurrFieldNo := FieldNo("Item No.");
              Validate("Item No.",CopyStr(ReturnValue,1,MaxStrLen(Item."No.")));
            end;
          end;

        if "Item No." <> '' then
          GetItem;
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Prod. Posting Group"(Field 14).OnValidate". Please convert manually.

        //trigger  Prod();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
          TestStatusOpen;
        */
        //end;


        //Unsupported feature: CodeModification on ""Inventory Posting Group"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
          TestStatusOpen;
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity (Base)"(Field 16).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE(Quantity,"Quantity (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
          TestStatusOpen;
        TestField("Qty. per Unit of Measure",1);
        Validate(Quantity,"Quantity (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Ship (Base)"(Field 18).OnValidate". Please convert manually.

        //trigger  to Ship (Base)"(Field 18)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Qty. to Ship","Qty. to Ship (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate("Qty. to Ship","Qty. to Ship (Base)");
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""Qty. Shipped (Base)"(Field 19)". Please convert manually.



        //Unsupported feature: CodeModification on ""Qty. to Receive (Base)"(Field 20).OnValidate". Please convert manually.

        //trigger  to Receive (Base)"(Field 20)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Qty. to Receive","Qty. to Receive (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate("Qty. to Receive","Qty. to Receive (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        TESTFIELD("Quantity Shipped",0);
        TESTFIELD("Qty. Shipped (Base)",0);
        TESTFIELD("Quantity Received",0);
        TESTFIELD("Qty. Received (Base)",0);
        ReserveTransferLine.VerifyChange(Rec,xRec);
        WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);
        IF "Unit of Measure Code" = '' THEN
          "Unit of Measure" := ''
        ELSE BEGIN
          IF NOT UnitOfMeasure.GET("Unit of Measure Code") THEN
            UnitOfMeasure.INIT;
          "Unit of Measure" := UnitOfMeasure.Description;
        END;
        GetItem;
        VALIDATE("Qty. per Unit of Measure",UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code"));
        "Gross Weight" := Item."Gross Weight" * "Qty. per Unit of Measure";
        "Net Weight" := Item."Net Weight" * "Qty. per Unit of Measure";
        "Unit Volume" := Item."Unit Volume" * "Qty. per Unit of Measure";
        "Units per Parcel" := ROUND(Item."Units per Parcel" / "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
          TestStatusOpen;
        TestField("Quantity Shipped",0);
        TestField("Qty. Shipped (Base)",0);
        TestField("Quantity Received",0);
        TestField("Qty. Received (Base)",0);
        ReserveTransferLine.VerifyChange(Rec,xRec);
        WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);
        if "Unit of Measure Code" = '' then
          "Unit of Measure" := ''
        else begin
          if not UnitOfMeasure.Get("Unit of Measure Code") then
            UnitOfMeasure.Init;
          "Unit of Measure" := UnitOfMeasure.Description;
        end;
        GetItem;
        Validate("Qty. per Unit of Measure",UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code"));
        #18..20
        "Units per Parcel" := Round(Item."Units per Parcel" / "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
        Validate(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 30).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        ReserveTransferLine.VerifyChange(Rec,xRec);
        WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);

        IF "Variant Code" = '' THEN
          EXIT;

        GetDefaultBin("Transfer-from Code","Transfer-to Code");
        ItemVariant.GET("Item No.","Variant Code");
        Description := ItemVariant.Description;
        "Description 2" := ItemVariant."Description 2";

        CheckItemAvailable(FIELDNO("Variant Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
        #2..5
        if "Variant Code" = '' then
          exit;

        GetDefaultBin("Transfer-from Code","Transfer-to Code");
        ItemVariant.Get("Item No.","Variant Code");
        Description := ItemVariant."Part No";
        "Description 2" := ItemVariant.Description;

        CheckItemAvailable(FieldNo("Variant Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""In-Transit Code"(Field 33).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Shipped",0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Shipped",0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Transfer-from Code"(Field 36).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Shipped",0);
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        IF "Transfer-from Code" <> xRec."Transfer-from Code" THEN BEGIN
          "Transfer-from Bin Code" := '';
          GetDefaultBin("Transfer-from Code",'');
        END;

        CheckItemAvailable(FIELDNO("Transfer-from Code"));
        ReserveTransferLine.VerifyChange(Rec,xRec);
        UpdateWithWarehouseShipReceive;
        WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Shipped",0);
        if CurrFieldNo <> 0 then
          TestStatusOpen;
        if "Transfer-from Code" <> xRec."Transfer-from Code" then begin
          "Transfer-from Bin Code" := '';
          GetDefaultBin("Transfer-from Code",'');
        end;

        CheckItemAvailable(FieldNo("Transfer-from Code"));
        #10..12
        */
        //end;


        //Unsupported feature: CodeModification on ""Transfer-to Code"(Field 37).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Shipped",0);
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        IF "Transfer-to Code" <> xRec."Transfer-to Code" THEN BEGIN
          "Transfer-To Bin Code" := '';
          GetDefaultBin('',"Transfer-to Code");
        END;

        ReserveTransferLine.VerifyChange(Rec,xRec);
        UpdateWithWarehouseShipReceive;
        WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Shipped",0);
        if CurrFieldNo <> 0 then
          TestStatusOpen;
        if "Transfer-to Code" <> xRec."Transfer-to Code" then begin
          "Transfer-To Bin Code" := '';
          GetDefaultBin('',"Transfer-to Code");
        end;
        #8..11
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipment Date"(Field 38).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        TransferRoute.CalcReceiptDate("Shipment Date","Receipt Date",
          "Shipping Time","Outbound Whse. Handling Time","Inbound Whse. Handling Time",
          "Transfer-from Code","Transfer-to Code","Shipping Agent Code","Shipping Agent Service Code");
        CheckItemAvailable(FIELDNO("Shipment Date"));
        DateConflictCheck;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
        #2..5
        CheckItemAvailable(FieldNo("Shipment Date"));
        DateConflictCheck;
        */
        //end;


        //Unsupported feature: CodeModification on ""Receipt Date"(Field 39).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        TransferRoute.CalcShipmentDate("Shipment Date","Receipt Date",
          "Shipping Time","Outbound Whse. Handling Time","Inbound Whse. Handling Time",
          "Transfer-from Code","Transfer-to Code","Shipping Agent Code","Shipping Agent Service Code");
        CheckItemAvailable(FIELDNO("Shipment Date"));
        DateConflictCheck;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
        #2..5
        CheckItemAvailable(FieldNo("Shipment Date"));
        DateConflictCheck;
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Agent Code"(Field 41).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        IF "Shipping Agent Code" <> xRec."Shipping Agent Code" THEN
          VALIDATE("Shipping Agent Service Code",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
          TestStatusOpen;
        if "Shipping Agent Code" <> xRec."Shipping Agent Code" then
          Validate("Shipping Agent Service Code",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Agent Service Code"(Field 42).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        TransferRoute.GetShippingTime(
          "Transfer-from Code","Transfer-to Code",
          "Shipping Agent Code","Shipping Agent Service Code",
          "Shipping Time");
        TransferRoute.CalcReceiptDate("Shipment Date","Receipt Date",
          "Shipping Time","Outbound Whse. Handling Time","Inbound Whse. Handling Time",
          "Transfer-from Code","Transfer-to Code","Shipping Agent Code","Shipping Agent Service Code");
        CheckItemAvailable(FIELDNO("Shipping Agent Service Code"));
        DateConflictCheck;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
        #2..9
        CheckItemAvailable(FieldNo("Shipping Agent Service Code"));
        DateConflictCheck;
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-to Item Entry"(Field 43).OnLookup". Please convert manually.

        //trigger -to Item Entry"(Field 43)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SelectItemEntry(FIELDNO("Appl.-to Item Entry"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SelectItemEntry(FieldNo("Appl.-to Item Entry"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-to Item Entry"(Field 43).OnValidate". Please convert manually.

        //trigger -to Item Entry"(Field 43)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Appl.-to Item Entry" <> 0 THEN BEGIN
          TESTFIELD(Quantity);
          ItemLedgEntry.GET("Appl.-to Item Entry");
          ItemLedgEntry.TESTFIELD(Positive,TRUE);
          IF (ItemLedgEntry."Lot No." <> '') OR (ItemLedgEntry."Serial No." <> '') THEN
            ERROR(MustUseTrackingErr,ItemTrackingLines.CAPTION,FIELDCAPTION("Appl.-to Item Entry"));
          IF ABS("Qty. to Ship (Base)") > ItemLedgEntry.Quantity THEN
            ERROR(ShippingMoreUnitsThanReceivedErr,ItemLedgEntry.Quantity,ItemLedgEntry."Document No.");

          ItemLedgEntry.TESTFIELD("Location Code","Transfer-from Code");
          IF NOT ItemLedgEntry.Open THEN
            MESSAGE(LedgEntryWillBeOpenedMsg,"Appl.-to Item Entry");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Appl.-to Item Entry" <> 0 then begin
          TestField(Quantity);
          ItemLedgEntry.Get("Appl.-to Item Entry");
          ItemLedgEntry.TestField(Positive,true);
          if (ItemLedgEntry."Lot No." <> '') or (ItemLedgEntry."Serial No." <> '') then
            Error(MustUseTrackingErr,ItemTrackingLines.Caption,FieldCaption("Appl.-to Item Entry"));
          if Abs("Qty. to Ship (Base)") > ItemLedgEntry.Quantity then
            Error(ShippingMoreUnitsThanReceivedErr,ItemLedgEntry.Quantity,ItemLedgEntry."Document No.");

          ItemLedgEntry.TestField("Location Code","Transfer-from Code");
          if not ItemLedgEntry.Open then
            Message(LedgEntryWillBeOpenedMsg,"Appl.-to Item Entry");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Time"(Field 54).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        TransferRoute.CalcReceiptDate("Shipment Date","Receipt Date",
          "Shipping Time","Outbound Whse. Handling Time","Inbound Whse. Handling Time",
          "Transfer-from Code","Transfer-to Code","Shipping Agent Code","Shipping Agent Service Code");
        DateConflictCheck;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
        #2..6
        */
        //end;


        //Unsupported feature: CodeModification on ""Outbound Whse. Handling Time"(Field 5793).OnValidate". Please convert manually.

        //trigger  Handling Time"(Field 5793)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        TransferRoute.CalcReceiptDate("Shipment Date","Receipt Date",
          "Shipping Time","Outbound Whse. Handling Time","Inbound Whse. Handling Time",
          "Transfer-from Code","Transfer-to Code","Shipping Agent Code","Shipping Agent Service Code");
        DateConflictCheck;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
        #2..6
        */
        //end;


        //Unsupported feature: CodeModification on ""Inbound Whse. Handling Time"(Field 5794).OnValidate". Please convert manually.

        //trigger  Handling Time"(Field 5794)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        TransferRoute.CalcReceiptDate("Shipment Date","Receipt Date",
          "Shipping Time","Outbound Whse. Handling Time","Inbound Whse. Handling Time",
          "Transfer-from Code","Transfer-to Code","Shipping Agent Code","Shipping Agent Service Code");
        DateConflictCheck;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
        #2..6
        */
        //end;


        //Unsupported feature: CodeModification on ""Transfer-from Bin Code"(Field 7300).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Transfer-from Bin Code" <> xRec."Transfer-from Bin Code" THEN BEGIN
          TESTFIELD("Transfer-from Code");
          IF "Transfer-from Bin Code" <> '' THEN BEGIN
            GetLocation("Transfer-from Code");
            Location.TESTFIELD("Bin Mandatory");
            Location.TESTFIELD("Directed Put-away and Pick",FALSE);
            GetBin("Transfer-from Code","Transfer-from Bin Code");
            TESTFIELD("Transfer-from Code",Bin."Location Code");
            HandleDedicatedBin(TRUE);
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Transfer-from Bin Code" <> xRec."Transfer-from Bin Code" then begin
          TestField("Transfer-from Code");
          if "Transfer-from Bin Code" <> '' then begin
            GetLocation("Transfer-from Code");
            Location.TestField("Bin Mandatory");
            Location.TestField("Directed Put-away and Pick",false);
            GetBin("Transfer-from Code","Transfer-from Bin Code");
            TestField("Transfer-from Code",Bin."Location Code");
            HandleDedicatedBin(true);
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Transfer-To Bin Code"(Field 7301).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Transfer-To Bin Code" <> xRec."Transfer-To Bin Code" THEN BEGIN
          TESTFIELD("Transfer-to Code");
          IF "Transfer-To Bin Code" <> '' THEN BEGIN
            GetLocation("Transfer-to Code");
            Location.TESTFIELD("Bin Mandatory");
            Location.TESTFIELD("Directed Put-away and Pick",FALSE);
            GetBin("Transfer-to Code","Transfer-To Bin Code");
            TESTFIELD("Transfer-to Code",Bin."Location Code");
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Transfer-To Bin Code" <> xRec."Transfer-To Bin Code" then begin
          TestField("Transfer-to Code");
          if "Transfer-To Bin Code" <> '' then begin
            GetLocation("Transfer-to Code");
            Location.TestField("Bin Mandatory");
            Location.TestField("Directed Put-away and Pick",false);
            GetBin("Transfer-to Code","Transfer-To Bin Code");
            TestField("Transfer-to Code",Bin."Location Code");
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Planning Flexibility"(Field 99000755).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Planning Flexibility" <> xRec."Planning Flexibility" THEN
          ReserveTransferLine.UpdatePlanningFlexibility(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Planning Flexibility" <> xRec."Planning Flexibility" then
          ReserveTransferLine.UpdatePlanningFlexibility(Rec);
        */
        //end;
        field(13701; "Transfer Price"; Decimal)
        {
            AutoFormatType = 2;
            CaptionML = ENU = 'Transfer Price',
                        ENN = 'Transfer Price';
            DataClassification = ToBeClassified;
        }
        field(13702; Amount; Decimal)
        {
            CaptionML = ENU = 'Amount',
                        ENN = 'Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13709; "BED Amount"; Decimal)
        {
            CaptionML = ENU = 'BED Amount',
                        ENN = 'BED Amount';
            DataClassification = ToBeClassified;
        }
        field(13710; "AED(GSI) Amount"; Decimal)
        {
            CaptionML = ENU = 'AED(GSI) Amount',
                        ENN = 'AED(GSI) Amount';
            DataClassification = ToBeClassified;
        }
        field(13711; "SED Amount"; Decimal)
        {
            CaptionML = ENU = 'SED Amount',
                        ENN = 'SED Amount';
            DataClassification = ToBeClassified;
        }
        field(13720; "SAED Amount"; Decimal)
        {
            CaptionML = ENU = 'SAED Amount',
                        ENN = 'SAED Amount';
            DataClassification = ToBeClassified;
        }
        field(13721; "CESS Amount"; Decimal)
        {
            CaptionML = ENU = 'CESS Amount',
                        ENN = 'CESS Amount';
            DataClassification = ToBeClassified;
        }
        field(13722; "NCCD Amount"; Decimal)
        {
            CaptionML = ENU = 'NCCD Amount',
                        ENN = 'NCCD Amount';
            DataClassification = ToBeClassified;
        }
        field(13723; "eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'eCess Amount',
                        ENN = 'eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(13724; "Excise Amount"; Decimal)
        {
            CaptionML = ENU = 'Excise Amount',
                        ENN = 'Excise Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13725; "Amount Including Excise"; Decimal)
        {
            CaptionML = ENU = 'Amount Including Excise',
                        ENN = 'Amount Including Excise';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13726; "Excise Accounting Type"; Option)
        {
            CaptionML = ENU = 'Excise Accounting Type',
                        ENN = 'Excise Accounting Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'With CENVAT,Without CENVAT',
                              ENN = 'With CENVAT,Without CENVAT';
            OptionMembers = "With CENVAT","Without CENVAT";
        }
        field(13727; "Excise Prod. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Prod. Posting Group',
                        ENN = 'Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Prod. Posting Group";
        }
        field(13728; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(13730; "Capital Item"; Boolean)
        {
            CaptionML = ENU = 'Capital Item',
                        ENN = 'Capital Item';
            DataClassification = ToBeClassified;
        }
        field(13731; "Excise Base Quantity"; Decimal)
        {
            CaptionML = ENU = 'Excise Base Quantity',
                        ENN = 'Excise Base Quantity';
            DataClassification = ToBeClassified;
        }
        field(13738; "Excise Base Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Base Amount',
                        ENN = 'Excise Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13775; "Amount Added to Excise Base"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Excise Base',
                        ENN = 'Amount Added to Excise Base';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13777; "Amount Added to Inventory"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Inventory',
                        ENN = 'Amount Added to Inventory';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13778; "Charges to Transfer"; Decimal)
        {
            CaptionML = ENU = 'Charges to Transfer',
                        ENN = 'Charges to Transfer';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13779; "Total Amount to Transfer"; Decimal)
        {
            CaptionML = ENU = 'Total Amount to Transfer',
                        ENN = 'Total Amount to Transfer';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13780; "Claim Deferred Excise"; Boolean)
        {
            CaptionML = ENU = 'Claim Deferred Excise',
                        ENN = 'Claim Deferred Excise';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                TestField("Quantity Shipped", 0);
            end;
        }
        field(16452; "ADET Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'ADET Amount',
                        ENN = 'ADET Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16455; "AED(TTA) Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(TTA) Amount',
                        ENN = 'AED(TTA) Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16459; "ADE Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'ADE Amount',
                        ENN = 'ADE Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16460; "Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'Assessable Value',
                        ENN = 'Assessable Value';
            DataClassification = ToBeClassified;
        }
        field(16494; "SHE Cess Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'SHE Cess Amount',
                        ENN = 'SHE Cess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16502; "ADC VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'ADC VAT Amount',
                        ENN = 'ADC VAT Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16503; "CIF Amount"; Decimal)
        {
            CaptionML = ENU = 'CIF Amount',
                        ENN = 'CIF Amount';
            DataClassification = ToBeClassified;
        }
        field(16504; "BCD Amount"; Decimal)
        {
            CaptionML = ENU = 'BCD Amount',
                        ENN = 'BCD Amount';
            DataClassification = ToBeClassified;
        }
        field(16505; CVD; Boolean)
        {
            CaptionML = ENU = 'CVD',
                        ENN = 'CVD';
            DataClassification = ToBeClassified;
        }
        field(16506; "Excise Loading on Inventory"; Boolean)
        {
            CaptionML = ENU = 'Excise Loading on Inventory',
                        ENN = 'Excise Loading on Inventory';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                TestField("Quantity Received", 0);
                GetLocation("Transfer-to Code");
                Location.TestField("Trading Location", false);
            end;
        }
        field(16507; "Captive Consumption %"; Decimal)
        {
            CaptionML = ENU = 'Captive Consumption %',
                        ENN = 'Captive Consumption %';
            DataClassification = ToBeClassified;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(16508; "Admin. Cost %"; Decimal)
        {
            CaptionML = ENU = 'Admin. Cost %',
                        ENN = 'Admin. Cost %';
            DataClassification = ToBeClassified;
            MaxValue = 100;
            MinValue = 0;

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(16509; "MRP Price"; Decimal)
        {
            CaptionML = ENU = 'MRP Price',
                        ENN = 'MRP Price';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(16510; MRP; Boolean)
        {
            CaptionML = ENU = 'MRP',
                        ENN = 'MRP';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16511; "Abatement %"; Decimal)
        {
            CaptionML = ENU = 'Abatement %',
                        ENN = 'Abatement %';
            DataClassification = ToBeClassified;
            MaxValue = 100;
            MinValue = 0;
        }
        field(16512; "Applies-to Entry (RG 23 D)"; Integer)
        {
            CaptionML = ENU = 'Applies-to Entry (RG 23 D)',
                        ENN = 'Applies-to Entry (RG 23 D)';
            DataClassification = ToBeClassified;
            TableRelation = "RG 23 D"."Entry No." WHERE("Location Code" = FIELD("Transfer-from Code"),
                                                         "Item No." = FIELD("Item No."),
                                                         Closed = FILTER(false),
                                                         "Transaction Type" = FILTER(Purchase),
                                                         "Item Ledg. Entry No." = FIELD("Applies-to Entry (Ship)"));
        }
        field(16513; "Cost of Production"; Decimal)
        {
            CaptionML = ENU = 'Cost of Production',
                        ENN = 'Cost of Production';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(16515; "Cost Of Prod. Incl. Admin Cost"; Decimal)
        {
            CaptionML = ENU = 'Cost Of Prod. Incl. Admin Cost',
                        ENN = 'Cost Of Prod. Incl. Admin Cost';
            DataClassification = ToBeClassified;
        }
        field(16516; "Custom eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom eCess Amount',
                        ENN = 'Custom eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(16517; "Custom SHECess Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom SHECess Amount',
                        ENN = 'Custom SHECess Amount';
            DataClassification = ToBeClassified;
        }
        field(16518; "Excise Effective Rate"; Decimal)
        {
            CaptionML = ENU = 'Excise Effective Rate',
                        ENN = 'Excise Effective Rate';
            DataClassification = ToBeClassified;
        }
        field(16520; "Applies-to Entry (Ship)"; Integer)
        {
            CaptionML = ENU = 'Applies-to Entry (Ship)',
                        ENN = 'Applies-to Entry (Ship)';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
                ItemLedgEntry: Record "Item Ledger Entry";
            begin
            end;
        }
        field(16521; "GST Base Amount"; Decimal)
        {
            CaptionML = ENU = 'GST Base Amount',
                        ENN = 'GST Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16522; "GST %"; Decimal)
        {
            CaptionML = ENU = 'GST %',
                        ENN = 'GST %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16523; "Total GST Amount"; Decimal)
        {
            CaptionML = ENU = 'Total GST Amount',
                        ENN = 'Total GST Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16524; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            TableRelation = "GST Group";
        }
        field(16525; "HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'HSN/SAC Code',
                        ENN = 'HSN/SAC Code';
            DataClassification = ToBeClassified;
            TableRelation = "HSN/SAC".Code WHERE("GST Group Code" = FIELD("GST Group Code"));
        }
        field(16526; "GST Credit"; Option)
        {
            CaptionML = ENU = 'GST Credit',
                        ENN = 'GST Credit';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Availment,Non-Availment',
                              ENN = 'Availment,Non-Availment';
            OptionMembers = Availment,"Non-Availment";
        }
        field(16527; Exempted; Boolean)
        {
            CaptionML = ENU = 'Exempted',
                        ENN = 'Exempted';
            DataClassification = ToBeClassified;
        }
        field(16528; "Custom Duty Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom Duty Amount',
                        ENN = 'Custom Duty Amount';
            DataClassification = ToBeClassified;
            MinValue = 0;

            trigger OnValidate();
            var
                Location: Record Location;
            begin
            end;
        }
        field(16529; "GST Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'GST Assessable Value',
                        ENN = 'GST Assessable Value';
            DataClassification = ToBeClassified;
            MinValue = 0;

            trigger OnValidate();
            var
                Vendor: Record Vendor;
                Location: Record Location;
            begin
            end;
        }
        field(60000; "Position Reference No."; Code[20])
        {
            Description = 'B2B';
        }
        field(60001; "Prod. Order No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Production Order"."No." WHERE(Status = CONST(Released));
        }
        field(60002; "Prod. Order Line No."; Integer)
        {
            Description = 'B2B';
            TableRelation = "Prod. Order Line"."Line No." WHERE("Prod. Order No." = FIELD("Prod. Order No."),
                                                                 Status = CONST(Released));
        }
        field(60003; "Allow Excess Qty."; Boolean)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60004; "Shelf No."; Code[20])
        {
            Description = 'B2B';
        }
        field(60005; "Production BOM No."; Code[20])
        {
            Description = 'B2B';

            trigger OnLookup();
            var
                ProductionOrderLine: Record "Prod. Order Line";
                ProductionBOMHeader: Record "Production BOM Header";
            begin
            end;

            trigger OnValidate();
            begin
                /*
                ProductionOrderLine.SETRANGE("Prod. Order No.","Prod. Order No.");
                ProductionOrderLine.SETRANGE("Line No.","Prod. Order Line No.");
                IF ProductionOrderLine.FIND('-') THEN BEGIN
                  MESSAGE('%1',ProductionOrderLine.COUNT);
                  ProductionBOMHeader.SETRANGE("No.",ProductionOrderLine."Production BOM No.");
                  IF ProductionBOMHeader.FIND('-') THEN BEGIN
                    PAGE.RUN(99000787,ProductionBOMHeader);
                  END;
                END;
                */

            end;
        }
        field(60006; "Type of Material"; Option)
        {
            Description = 'B2B';
            OptionMembers = " ",Good,Damaged;
        }
        field(60007; "Reason Code"; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Reason Code".Code;
        }
        field(60008; "Prod. Order Comp. Line No."; Integer)
        {
            Caption = 'Prod. Order Comp. Line No.';
            Description = 'B2B';
            TableRelation = "Prod. Order Component"."Line No." WHERE(Status = CONST(Released),
                                                                      "Prod. Order No." = FIELD("Prod. Order No."),
                                                                      "Prod. Order Line No." = FIELD("Prod. Order Line No."));
        }
        field(60009; Inventory; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("Item No."),
                                                                  Open = CONST(true),
                                                                  "Location Code" = FIELD("Transfer-from Code")));
            Description = 'B2B';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60090; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091; "OLD Dim Set ID"; Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
        field(60100; Copy; Boolean)
        {
            Description = 'B2B-Internal field used for Allow excess Qty. field Validations';
        }
        field(60101; Reason; Text[150])
        {
        }
        field(60102; Priority; Option)
        {
            OptionMembers = ,Low,Medium,High;
        }
        field(60103; "Status."; Option)
        {
            OptionMembers = Completed,Inprogress,Pending,NotRequired,"Vendor Serviceing","Work Order",ToBePlanned;

            trigger OnValidate();
            begin
                "Updation Date Time" := CurrentDateTime
            end;
        }
        field(60104; "Updation Date Time"; DateTime)
        {
            Editable = false;
        }
        field(60105; Station; Code[10])
        {
            TableRelation = Station;
        }
        field(60106; "Required Date"; Date)
        {
        }
        field(60107; "DL Model"; Code[20])
        {
            TableRelation = "Service Price Group";
        }
        field(60108; Type; Text[50])
        {
        }
        field(60109; "Station Name"; Text[30])
        {
        }
        field(60110; "Promised Receipt Date"; Date)
        {
        }
        field(60111; "Requirement Reason"; Option)
        {
            OptionMembers = "Stock Transfer",AMC,Warranty,"AMC Spares",Replacement,Installation,Testing;
        }
        field(60112; Remarks; Text[150])
        {
        }
        field(33000250; "Spec ID"; Code[20])
        {
            Description = 'QC1.0';
            TableRelation = "Specification Header";
        }
        field(33000251; "Quantity Accepted"; Decimal)
        {
            CalcFormula = Sum("Quality Ledger Entry".Quantity WHERE("Order No." = FIELD("Document No."),
                                                                     "Order Line No." = FIELD("Line No."),
                                                                     "Entry Type" = FILTER(Accepted)));
            Description = 'QC1.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33000252; "Quantity Rejected"; Decimal)
        {
            CalcFormula = Sum("Quality Ledger Entry".Quantity WHERE("Order No." = FIELD("Document No."),
                                                                     "Order Line No." = FIELD("Line No."),
                                                                     "Entry Type" = CONST(Reject)));
            Description = 'QC1.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33000253; "QC Enabled"; Boolean)
        {
            Description = 'QC1.0';
            Editable = false;

            trigger OnValidate();
            begin
                /*
                TestStatusOpen;
                TESTFIELD(Type,Type :: Item);
                IF "QC Enabled" THEN
                  TESTFIELD("Spec ID");
                IF NOT "QC Enabled" THEN
                  IF "Quality Before Receipt" THEN
                    VALIDATE("Quality Before Receipt",FALSE);
                */

            end;
        }
        field(33000256; "Qty. Sending To Quality"; Decimal)
        {
            Description = 'QC1.0';
            MinValue = 0;

            trigger OnValidate();
            begin
                if Quantity < ("Qty. Sending To Quality" + "Qty. Sent To Quality") then
                    Error('"Quantity Sending to Quality" should not be more than the Quantity');
            end;
        }
        field(33000257; "Qty. Sent To Quality"; Decimal)
        {
            Description = 'QC1.0';
            Editable = false;
            MinValue = 0;
        }
        field(33000258; "Qty. Sending To Quality(R)"; Decimal)
        {
            Description = 'QC1.0';
            MinValue = 0;
        }
        field(33000259; "Spec Version"; Code[20])
        {
            TableRelation = "Specification Version"."Version Code" WHERE("Specification No." = FIELD("Spec ID"));
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transfer-to Code,Status,Derived From Line No.,Item No.,Variant Code,Shortcut Dimension 1 Code,Shortcut Dimension 2 Code,Receipt Date,In-Transit Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transfer-from Code,Status,Derived From Line No.,Item No.,Variant Code,Shortcut Dimension 1 Code,Shortcut Dimension 2 Code,Shipment Date,In-Transit Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Variant Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transfer-to Code,Receipt Date,Item No.,Variant Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Transfer-from Code,Shipment Date,Item No.,Variant Code"(Key)". Please convert manually.

        key(Key1; "Document No.", "Line No.")
        {
        }
        key(Key2; "Transfer-to Code", Status, "Derived From Line No.", "Item No.", "Variant Code", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Receipt Date", "In-Transit Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. in Transit (Base)", "Outstanding Qty. (Base)";
        }
        key(Key3; "Transfer-from Code", Status, "Derived From Line No.", "Item No.", "Variant Code", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Shipment Date", "In-Transit Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(Key4; "Item No.", "Variant Code")
        {
        }
        key(Key5; "Transfer-to Code", "Receipt Date", "Item No.", "Variant Code")
        {
        }
        key(Key6; "Transfer-from Code", "Shipment Date", "Item No.", "Variant Code")
        {
        }
        key(Key7; "Prod. Order No.", "Prod. Order Line No.", "Prod. Order Comp. Line No.")
        {
            SumIndexFields = Quantity;
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestStatusOpen;

    TESTFIELD("Quantity Shipped","Quantity Received");
    TESTFIELD("Qty. Shipped (Base)","Qty. Received (Base)");
    CALCFIELDS("Reserved Qty. Inbnd. (Base)","Reserved Qty. Outbnd. (Base)");
    TESTFIELD("Reserved Qty. Inbnd. (Base)",0);
    TESTFIELD("Reserved Qty. Outbnd. (Base)",0);

    ReserveTransferLine.DeleteLine(Rec);
    WhseValidateSourceLine.TransLineDelete(Rec);

    ItemChargeAssgntPurch.SETCURRENTKEY(
      "Applies-to Doc. Type","Applies-to Doc. No.","Applies-to Doc. Line No.");
    ItemChargeAssgntPurch.SETRANGE("Applies-to Doc. Type",ItemChargeAssgntPurch."Applies-to Doc. Type"::"Transfer Receipt");
    ItemChargeAssgntPurch.SETRANGE("Applies-to Doc. No.","Document No.");
    ItemChargeAssgntPurch.SETRANGE("Applies-to Doc. Line No.","Line No.");
    ItemChargeAssgntPurch.DELETEALL(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestStatusOpen;

    TestField("Quantity Shipped","Quantity Received");
    TestField("Qty. Shipped (Base)","Qty. Received (Base)");
    CalcFields("Reserved Qty. Inbnd. (Base)","Reserved Qty. Outbnd. (Base)");
    TestField("Reserved Qty. Inbnd. (Base)",0);
    TestField("Reserved Qty. Outbnd. (Base)",0);
    #8..11
    ItemChargeAssgntPurch.SetCurrentKey(
      "Applies-to Doc. Type","Applies-to Doc. No.","Applies-to Doc. Line No.");
    ItemChargeAssgntPurch.SetRange("Applies-to Doc. Type",ItemChargeAssgntPurch."Applies-to Doc. Type"::"Transfer Receipt");
    ItemChargeAssgntPurch.SetRange("Applies-to Doc. No.","Document No.");
    ItemChargeAssgntPurch.SetRange("Applies-to Doc. Line No.","Line No.");
    ItemChargeAssgntPurch.DeleteAll(true);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestStatusOpen;
    TransLine2.RESET;
    TransLine2.SETFILTER("Document No.",TransHeader."No.");
    IF TransLine2.FINDLAST THEN
      "Line No." := TransLine2."Line No." + 10000;
    ReserveTransferLine.VerifyQuantity(Rec,xRec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestStatusOpen;
    TransLine2.Reset;
    TransLine2.SetFilter("Document No.",TransHeader."No.");
    if TransLine2.FindLast then
      "Line No." := TransLine2."Line No." + 10000;
    ReserveTransferLine.VerifyQuantity(Rec,xRec);
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF ItemExists(xRec."Item No.") THEN
      ReserveTransferLine.VerifyChange(Rec,xRec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if ItemExists(xRec."Item No.") then
      ReserveTransferLine.VerifyChange(Rec,xRec);
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
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text001,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Item No."(Field 3).OnValidate.TempTransferLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Item No." : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Item No." : "Transfer Line";
    //Variable type has not been exported.

    var
        Location: Record Location;

    var
        TransferHeader: Record "Transfer Header";
        Location: Record Location;


    //Unsupported feature: PropertyModification on "Description(Field 13).OnValidate.Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Description : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Description : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 23).OnValidate.UnitOfMeasure(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 204;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : "Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 23).OnValidate.UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 30).OnValidate.ItemVariant(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Appl.-to Item Entry"(Field 43).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Appl.-to Item Entry" : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Appl.-to Item Entry" : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Appl.-to Item Entry"(Field 43).OnValidate.ItemTrackingLines(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Appl.-to Item Entry" : 6510;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Appl.-to Item Entry" : "Item Tracking Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemChargeAssgntPurch(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemChargeAssgntPurch : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemChargeAssgntPurch : "Item Charge Assignment (Purch)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnInsert.TransLine2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnInsert.TransLine2 : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnInsert.TransLine2 : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 26).SourceCodeSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckItemAvailable(PROCEDURE 3).ItemCheckAvail(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckItemAvailable : 311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckItemAvailable : "Item-Check Avail.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWarehouse(PROCEDURE 47).ShowDialog(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWarehouse :  ,Message,Error;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWarehouse : " ",Message,Error;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HandleDedicatedBin(PROCEDURE 7).WhseIntegrationMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HandleDedicatedBin : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HandleDedicatedBin : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectItemEntry(PROCEDURE 11).ItemLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectItemEntry : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectItemEntry : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectItemEntry(PROCEDURE 11).TransferLine2(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectItemEntry : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectItemEntry : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemExists(PROCEDURE 17).IEItem(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemExists : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemExists : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyChange on "RowID1(PROCEDURE 48).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RowID1 : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RowID1 : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferRoute(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferRoute : 5742;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferRoute : "Transfer Route";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransHeader(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransHeader : 5740;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransHeader : "Transfer Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Bin(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Bin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Bin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1019)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseValidateSourceLine(Variable 1022)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseValidateSourceLine : 5777;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseValidateSourceLine : "Whse. Validate Source Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReserveTransferLine(Variable 1024)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReserveTransferLine : 99000836;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReserveTransferLine : "Transfer Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckDateConflict(Variable 1025)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckDateConflict : 99000815;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckDateConflict : "Reservation-Check Date Confl.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSManagement(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSManagement : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSManagement : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1027)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmManagement(Variable 1029)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmManagement : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmManagement : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Reservation(Variable 1018)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Reservation : 498;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Reservation : Reservation;
    //Variable type has not been exported.

    var
        "----B2B----": Integer;
        TransferHeader: Record "Transfer Header";
        ProdOrderComp: Record "Prod. Order Component";
}

