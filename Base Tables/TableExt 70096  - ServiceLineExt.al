tableextension 70096 ServiceLineExt extends "Service Line"
{
    // version NAVW19.00.00.51900,NAVIN9.00.00.51900,TFS225680

    fields
    {

        //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer No."(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Document No."(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 6)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Location Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: CodeModification on ""Outstanding Quantity"(Field 16)". Please convert manually.

        modify("Unit Price")
        {
            CaptionClass = GetCaptionClass(FieldNo("Unit Price"));
        }

        //Unsupported feature: Change Editable on ""VAT %"(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on "Amount(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount Including VAT"(Field 30)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Invoice Disc."(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Item Entry"(Field 38)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer Price Group"(Field 42)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job No."(Field 45)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 46)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Job Line Type"(Field 47)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Amount"(Field 57)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Shipped Not Invoiced"(Field 58)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipped Not Invoiced"(Field 59)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Shipped"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Invoiced"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipment Line No."(Field 64)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to Customer No."(Field 68)". Please convert manually.


        //Unsupported feature: Change Editable on ""Inv. Discount Amount"(Field 69)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 79)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Amount (LCY)"(Field 92)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipped Not Invoiced (LCY)"(Field 93)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Quantity"(Field 95)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Quantity"(Field 95)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Base Amount"(Field 99)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit Cost"(Field 100)". Please convert manually.


        //Unsupported feature: Change Editable on ""System-Created Entry"(Field 101)". Please convert manually.

        modify("Line Amount")
        {
            CaptionClass = GetCaptionClass(FieldNo("Line Amount"));
        }

        //Unsupported feature: Change Editable on ""VAT Difference"(Field 104)". Please convert manually.


        //Unsupported feature: Change Editable on ""Inv. Disc. Amount to Invoice"(Field 105)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Identifier"(Field 106)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Time Sheet Line No."(Field 951)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Time Sheet Date"(Field 952)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Planning Line No."(Field 1019)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Planning Line No."(Field 1019)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Remaining Qty."(Field 1030)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Remaining Total Cost"(Field 1032)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Remaining Total Cost"(Field 1032)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Remaining Total Cost (LCY)"(Field 1033)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Remaining Total Cost (LCY)"(Field 1033)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Remaining Line Amount"(Field 1034)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Remaining Line Amount"(Field 1034)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5403)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change Editable on "Planned(Field 5405)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Qty. (Base)"(Field 5416)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Shipped Not Invd. (Base)"(Field 5458)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Shipped (Base)"(Field 5460)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Invoiced (Base)"(Field 5461)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Qty. (Base)"(Field 5495)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Qty. (Base)"(Field 5495)". Please convert manually.


        //Unsupported feature: Change Editable on ""Responsibility Center"(Field 5700)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Substitution Available"(Field 5702)". Please convert manually.


        //Unsupported feature: Change Editable on ""Substitution Available"(Field 5702)". Please convert manually.


        //Unsupported feature: Change Editable on "Nonstock(Field 5710)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Whse. Outstanding Qty. (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Whse. Outstanding Qty. (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Outstanding Qty. (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Shipped"(Field 5752)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Time"(Field 5792)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Agent Code"(Field 5796)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 5797)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-from Item Entry"(Field 5811)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Service Item No."(Field 5902)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Service Entry"(Field 5903)". Please convert manually.


        //Unsupported feature: Change Editable on ""Appl.-to Service Entry"(Field 5903)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Service Item Line No."(Field 5904)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Service Item Line Description"(Field 5906)". Please convert manually.


        //Unsupported feature: Change Editable on ""Service Item Line Description"(Field 5906)". Please convert manually.


        //Unsupported feature: Change Editable on ""Serv. Price Adjmt. Gr. Code"(Field 5907)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order Date"(Field 5909)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 5916)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ship-to Code"(Field 5916)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Qty. to Consume"(Field 5917)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Consumed"(Field 5918)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Qty. to Consume (Base)"(Field 5919)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Consumed (Base)"(Field 5920)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Fault Code"(Field 5931)". Please convert manually.


        //Unsupported feature: Change Editable on ""Exclude Warranty"(Field 5933)". Please convert manually.


        //Unsupported feature: Change Editable on "Warranty(Field 5934)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Contract No."(Field 5936)". Please convert manually.


        //Unsupported feature: Change Editable on ""Contract Disc. %"(Field 5938)". Please convert manually.


        //Unsupported feature: Change Editable on ""Warranty Disc. %"(Field 5939)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Spare Part Action"(Field 5966)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Replaced Item No."(Field 5968)". Please convert manually.


        //Unsupported feature: Change Editable on ""Exclude Contract Discount"(Field 5969)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Replaced Item Type"(Field 5970)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Price Adjmt. Status"(Field 5994)". Please convert manually.


        //Unsupported feature: Change Editable on ""Price Adjmt. Status"(Field 5994)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Line Discount Type"(Field 5997)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line Discount Type"(Field 5997)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Copy Components From"(Field 5999)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Line Disc."(Field 7001)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Picked"(Field 7300)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Picked (Base)"(Field 7301)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Picked"(Field 7302)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pick Qty. (Base)"(Field 7303)". Please convert manually.


        //Unsupported feature: CodeModification on "Type(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckIfCanBeModified;

        GetServHeader;
        TestStatusOpen;
        TESTFIELD("Qty. Shipped Not Invoiced",0);
        TESTFIELD("Quantity Shipped",0);
        TESTFIELD("Shipment No.",'');

        IF xRec.Type = xRec.Type::Item THEN
          WhseValidateSourceLine.ServiceLineVerifyChange(Rec,xRec);

        IF Type = Type::Item THEN BEGIN
          GetLocation("Location Code");
          Location.TESTFIELD("Directed Put-away and Pick",FALSE);
        END;

        UpdateReservation(FIELDNO(Type));

        ServiceLine := Rec;

        IF "Document Type" IN ["Document Type"::Invoice,"Document Type"::"Credit Memo"] THEN
          UpdateServDocRegister(TRUE);
        ClearFields;

        "Currency Code" := ServiceLine."Currency Code";
        VALIDATE("Service Item Line No.",ServiceLine."Service Item Line No.");

        IF Type = Type::Item THEN BEGIN
          IF ServHeader.InventoryPickConflict("Document Type","Document No.",ServHeader."Shipping Advice") THEN
            DisplayConflictError(ServHeader.InvPickConflictResolutionTxt);
          IF ServHeader.WhseShpmntConflict("Document Type","Document No.",ServHeader."Shipping Advice") THEN
            DisplayConflictError(ServHeader.WhseShpmtConflictResolutionTxt);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..4
        TestField("Qty. Shipped Not Invoiced",0);
        TestField("Quantity Shipped",0);
        TestField("Shipment No.",'');

        if xRec.Type = xRec.Type::Item then
          WhseValidateSourceLine.ServiceLineVerifyChange(Rec,xRec);

        if Type = Type::Item then begin
          GetLocation("Location Code");
          Location.TestField("Directed Put-away and Pick",false);
        end;

        UpdateReservation(FieldNo(Type));
        #18..20
        if "Document Type" in ["Document Type"::Invoice,"Document Type"::"Credit Memo"] then
          UpdateServDocRegister(true);
        #23..25
        Validate("Service Item Line No.",ServiceLine."Service Item Line No.");

        if Type = Type::Item then begin
          if ServHeader.InventoryPickConflict("Document Type","Document No.",ServHeader."Shipping Advice") then
            DisplayConflictError(ServHeader.InvPickConflictResolutionTxt);
          if ServHeader.WhseShpmntConflict("Document Type","Document No.",ServHeader."Shipping Advice") then
            DisplayConflictError(ServHeader.WhseShpmtConflictResolutionTxt);
        end;
        */
        //end;

        //Unsupported feature: Deletion on ""No."(Field 6).OnValidate". Please convert manually.



        //Unsupported feature: CodeModification on ""Location Code"(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        UpdateWithWarehouseShip;
        GetServHeader;
        IF Type = Type::Item THEN BEGIN
          // Location code in allowed only for inventoriable items
          IF "Location Code" <> '' THEN BEGIN
            GetItem(Item);
            Item.TESTFIELD(Type,Item.Type::Inventory);
          END;

          IF Quantity <> 0 THEN
            WhseValidateSourceLine.ServiceLineVerifyChange(Rec,xRec);
          IF "Location Code" <> xRec."Location Code" THEN BEGIN
            TESTFIELD("Reserved Quantity",0);
            TESTFIELD("Shipment No.",'');
            TESTFIELD("Qty. Shipped Not Invoiced",0);
            CheckItemAvailable(FIELDNO("Location Code"));
            UpdateReservation(FIELDNO("Location Code"));
          END;
          GetUnitCost;
        END;
        GetDefaultBin;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..3
        if Type = Type::Item then begin
          // Location code in allowed only for inventoriable items
          if "Location Code" <> '' then begin
            GetItem(Item);
            Item.TestField(Type,Item.Type::Inventory);
          end;

          if Quantity <> 0 then
            WhseValidateSourceLine.ServiceLineVerifyChange(Rec,xRec);
          if "Location Code" <> xRec."Location Code" then begin
            TestField("Reserved Quantity",0);
            TestField("Shipment No.",'');
            TestField("Qty. Shipped Not Invoiced",0);
            CheckItemAvailable(FieldNo("Location Code"));
            UpdateReservation(FieldNo("Location Code"));
          end;
          GetUnitCost;
        end;
        GetDefaultBin;
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetServHeader;
        TESTFIELD(Type);
        TESTFIELD("No.");
        TestStatusOpen;

        IF Quantity < 0 THEN
          FIELDERROR(Quantity,Text029);

        CASE "Spare Part Action" OF
          "Spare Part Action"::Permanent,"Spare Part Action"::"Temporary":
            IF Quantity <> 1 THEN
              ERROR(Text011,ServItem.TABLECAPTION);
          "Spare Part Action"::"Component Replaced","Spare Part Action"::"Component Installed":
            IF Quantity <> ROUND(Quantity,1) THEN
              ERROR(Text026,FIELDCAPTION(Quantity));
        END;

        "Quantity (Base)" := CalcBaseQty(Quantity);

        IF "Document Type" <> "Document Type"::"Credit Memo" THEN BEGIN
          IF (Quantity * "Quantity Shipped" < 0) OR
             ((ABS(Quantity) < ABS("Quantity Shipped")) AND ("Shipment No." = ''))
          THEN
            FIELDERROR(Quantity,STRSUBSTNO(Text003,FIELDCAPTION("Quantity Shipped")));
          IF ("Quantity (Base)" * "Qty. Shipped (Base)" < 0) OR
             ((ABS("Quantity (Base)") < ABS("Qty. Shipped (Base)")) AND ("Shipment No." = ''))
          THEN
            FIELDERROR("Quantity (Base)",STRSUBSTNO(Text003,FIELDCAPTION("Qty. Shipped (Base)")));
        END;

        IF (xRec.Quantity <> Quantity) OR (xRec."Quantity (Base)" <> "Quantity (Base)") THEN BEGIN
          InitOutstanding;
          IF "Document Type" = "Document Type"::"Credit Memo" THEN
            InitQtyToInvoice
          ELSE
            InitQtyToShip;
        END;
        CheckItemAvailable(FIELDNO(Quantity));

        IF (Quantity * xRec.Quantity < 0) OR (Quantity = 0) THEN
          InitItemAppl(FALSE);

        IF Type = Type::Item THEN BEGIN
          WhseValidateSourceLine.ServiceLineVerifyChange(Rec,xRec);
          UpdateUnitPrice(FIELDNO(Quantity));
          UpdateReservation(FIELDNO(Quantity));
          UpdateWithWarehouseShip;
          IF ("Quantity (Base)" * xRec."Quantity (Base)" <= 0) AND ("No." <> '') THEN BEGIN
            GetItem(Item);
            IF (Item."Costing Method" = Item."Costing Method"::Standard) AND NOT IsShipment THEN
              GetUnitCost;
          END;
          IF ("Appl.-from Item Entry" <> 0) AND (xRec.Quantity < Quantity) THEN
            CheckApplFromItemLedgEntry(ItemLedgEntry);
        END ELSE
          VALIDATE("Line Discount %");

        IF (xRec.Quantity <> Quantity) AND (Quantity = 0) AND
           ((Amount <> 0) OR
            ("Amount Including VAT" <> 0) OR
            ("VAT Base Amount" <> 0))
        THEN BEGIN
          Amount := 0;
          "Amount Including VAT" := 0;
          "VAT Base Amount" := 0;
        END;
        IF "Job Planning Line No." <> 0 THEN
          VALIDATE("Job Planning Line No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetServHeader;
        TestField(Type);
        TestField("No.");
        TestStatusOpen;

        if Quantity < 0 then
          FieldError(Quantity,Text029);

        case "Spare Part Action" of
          "Spare Part Action"::Permanent,"Spare Part Action"::"Temporary":
            if Quantity <> 1 then
              Error(Text011,ServItem.TableCaption);
          "Spare Part Action"::"Component Replaced","Spare Part Action"::"Component Installed":
            if Quantity <> Round(Quantity,1) then
              Error(Text026,FieldCaption(Quantity));
        end;
        #17..19
        if "Document Type" <> "Document Type"::"Credit Memo" then begin
          if (Quantity * "Quantity Shipped" < 0) or
             ((Abs(Quantity) < Abs("Quantity Shipped")) and ("Shipment No." = ''))
          then
            FieldError(Quantity,StrSubstNo(Text003,FieldCaption("Quantity Shipped")));
          if ("Quantity (Base)" * "Qty. Shipped (Base)" < 0) or
             ((Abs("Quantity (Base)") < Abs("Qty. Shipped (Base)")) and ("Shipment No." = ''))
          then
            FieldError("Quantity (Base)",StrSubstNo(Text003,FieldCaption("Qty. Shipped (Base)")));
        end;

        if (xRec.Quantity <> Quantity) or (xRec."Quantity (Base)" <> "Quantity (Base)") then begin
          InitOutstanding;
          if "Document Type" = "Document Type"::"Credit Memo" then
            InitQtyToInvoice
          else
            InitQtyToShip;
        end;
        CheckItemAvailable(FieldNo(Quantity));

        if (Quantity * xRec.Quantity < 0) or (Quantity = 0) then
          InitItemAppl(false);

        if Type = Type::Item then begin
          WhseValidateSourceLine.ServiceLineVerifyChange(Rec,xRec);
          UpdateUnitPrice(FieldNo(Quantity));
          UpdateReservation(FieldNo(Quantity));
          UpdateWithWarehouseShip;
          if ("Quantity (Base)" * xRec."Quantity (Base)" <= 0) and ("No." <> '') then begin
            GetItem(Item);
            if (Item."Costing Method" = Item."Costing Method"::Standard) and not IsShipment then
              GetUnitCost;
          end;
          if ("Appl.-from Item Entry" <> 0) and (xRec.Quantity < Quantity) then
            CheckApplFromItemLedgEntry(ItemLedgEntry);
        end else
          Validate("Line Discount %");

        if (xRec.Quantity <> Quantity) and (Quantity = 0) and
           ((Amount <> 0) or
            ("Amount Including VAT" <> 0) or
            ("VAT Base Amount" <> 0))
        then begin
        #63..65
        end;
        if "Job Planning Line No." <> 0 then
          Validate("Job Planning Line No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Invoice"(Field 17).OnValidate". Please convert manually.

        //trigger  to Invoice"(Field 17)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Qty. to Invoice" < 0 THEN
          FIELDERROR("Qty. to Invoice",Text029);

        IF "Qty. to Invoice" > 0 THEN BEGIN
          "Qty. to Consume" := 0;
          "Qty. to Consume (Base)" := 0;
        END;

        IF "Qty. to Invoice" = MaxQtyToInvoice THEN
          InitQtyToInvoice
        ELSE
          "Qty. to Invoice (Base)" := CalcBaseQty("Qty. to Invoice");
        IF ("Qty. to Invoice" * Quantity < 0) OR
           (ABS("Qty. to Invoice") > ABS(MaxQtyToInvoice))
        THEN
          ERROR(
            Text000,
            MaxQtyToInvoice);
        IF ("Qty. to Invoice (Base)" * "Quantity (Base)" < 0) OR
           (ABS("Qty. to Invoice (Base)") > ABS(MaxQtyToInvoiceBase))
        THEN
          ERROR(
            Text001,
            MaxQtyToInvoiceBase);
        "VAT Difference" := 0;

        IF (xRec."Qty. to Consume" <> "Qty. to Consume") OR
           (xRec."Qty. to Consume (Base)" <> "Qty. to Consume (Base)")
        THEN
          VALIDATE("Line Discount %")
        ELSE BEGIN
          CalcInvDiscToInvoice;
          UpdateAmounts
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Qty. to Invoice" < 0 then
          FieldError("Qty. to Invoice",Text029);

        if "Qty. to Invoice" > 0 then begin
          "Qty. to Consume" := 0;
          "Qty. to Consume (Base)" := 0;
        end;

        if "Qty. to Invoice" = MaxQtyToInvoice then
          InitQtyToInvoice
        else
          "Qty. to Invoice (Base)" := CalcBaseQty("Qty. to Invoice");
        if ("Qty. to Invoice" * Quantity < 0) or
           (Abs("Qty. to Invoice") > Abs(MaxQtyToInvoice))
        then
          Error(
            Text000,
            MaxQtyToInvoice);
        if ("Qty. to Invoice (Base)" * "Quantity (Base)" < 0) or
           (Abs("Qty. to Invoice (Base)") > Abs(MaxQtyToInvoiceBase))
        then
          Error(
        #23..26
        if (xRec."Qty. to Consume" <> "Qty. to Consume") or
           (xRec."Qty. to Consume (Base)" <> "Qty. to Consume (Base)")
        then
          Validate("Line Discount %")
        else begin
          CalcInvDiscToInvoice;
          UpdateAmounts
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Ship"(Field 18).OnValidate". Please convert manually.

        //trigger  to Ship"(Field 18)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Qty. to Ship" < 0 THEN
          FIELDERROR("Qty. to Ship",Text029);

        IF (CurrFieldNo <> 0) AND
           (Type = Type::Item) AND
           ("Qty. to Ship" <> 0)
        THEN
          CheckWarehouse;

        IF "Qty. to Ship" = "Outstanding Quantity" THEN BEGIN
          IF NOT LineRequiresShipmentOrReceipt THEN
            InitQtyToShip
          ELSE
            "Qty. to Ship (Base)" := CalcBaseQty("Qty. to Ship");
          IF "Qty. to Consume" <> 0 THEN
            VALIDATE("Qty. to Consume","Qty. to Ship")
          ELSE
            VALIDATE("Qty. to Consume",0);
        END ELSE BEGIN
          "Qty. to Ship (Base)" := CalcBaseQty("Qty. to Ship");
          IF "Qty. to Consume" <> 0 THEN
            VALIDATE("Qty. to Consume","Qty. to Ship")
          ELSE
            VALIDATE("Qty. to Consume",0);
        END;
        IF ((("Qty. to Ship" < 0) XOR (Quantity < 0)) AND (Quantity <> 0) AND ("Qty. to Ship" <> 0)) OR
           (ABS("Qty. to Ship") > ABS("Outstanding Quantity")) OR
           (((Quantity < 0) XOR ("Outstanding Quantity" < 0)) AND (Quantity <> 0) AND ("Outstanding Quantity" <> 0))
        THEN
          ERROR(
            Text016,
            "Outstanding Quantity");
        IF ((("Qty. to Ship (Base)" < 0) XOR ("Quantity (Base)" < 0)) AND ("Qty. to Ship (Base)" <> 0) AND ("Quantity (Base)" <> 0)) OR
           (ABS("Qty. to Ship (Base)") > ABS("Outstanding Qty. (Base)")) OR
           ((("Quantity (Base)" < 0) XOR ("Outstanding Qty. (Base)" < 0)) AND ("Quantity (Base)" <> 0) AND ("Outstanding Qty. (Base)" <> 0))
        THEN
          ERROR(
            Text017,
            "Outstanding Qty. (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Qty. to Ship" < 0 then
          FieldError("Qty. to Ship",Text029);

        if (CurrFieldNo <> 0) and
           (Type = Type::Item) and
           ("Qty. to Ship" <> 0)
        then
          CheckWarehouse;

        if "Qty. to Ship" = "Outstanding Quantity" then begin
          if not LineRequiresShipmentOrReceipt then
            InitQtyToShip
          else
            "Qty. to Ship (Base)" := CalcBaseQty("Qty. to Ship");
          if "Qty. to Consume" <> 0 then
            Validate("Qty. to Consume","Qty. to Ship")
          else
            Validate("Qty. to Consume",0);
        end else begin
          "Qty. to Ship (Base)" := CalcBaseQty("Qty. to Ship");
          if "Qty. to Consume" <> 0 then
            Validate("Qty. to Consume","Qty. to Ship")
          else
            Validate("Qty. to Consume",0);
        end;
        if ((("Qty. to Ship" < 0) xor (Quantity < 0)) and (Quantity <> 0) and ("Qty. to Ship" <> 0)) or
           (Abs("Qty. to Ship") > Abs("Outstanding Quantity")) or
           (((Quantity < 0) xor ("Outstanding Quantity" < 0)) and (Quantity <> 0) and ("Outstanding Quantity" <> 0))
        then
          Error(
            Text016,
            "Outstanding Quantity");
        if ((("Qty. to Ship (Base)" < 0) xor ("Quantity (Base)" < 0)) and ("Qty. to Ship (Base)" <> 0) and ("Quantity (Base)" <> 0)) or
           (Abs("Qty. to Ship (Base)") > Abs("Outstanding Qty. (Base)")) or
           ((("Quantity (Base)" < 0) xor ("Outstanding Qty. (Base)" < 0)) and ("Quantity (Base)" <> 0) and ("Outstanding Qty. (Base)" <> 0))
        then
          Error(
            Text017,
            "Outstanding Qty. (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Price"(Field 22).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        GetServHeader;
        IF ("Appl.-to Service Entry" > 0) AND (CurrFieldNo <> 0) THEN
          ERROR(Text052,FIELDCAPTION("Unit Price"));
        IF ("Unit Price" > ServHeader."Max. Labor Unit Price") AND
           (Type = Type::Resource) AND
           (ServHeader."Max. Labor Unit Price" <> 0)
        THEN
          ERROR(
            Text022,
            FIELDCAPTION("Unit Price"),ServHeader.FIELDCAPTION("Max. Labor Unit Price"),
            ServHeader.TABLECAPTION);

        VALIDATE("Line Discount %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        GetServHeader;
        if ("Appl.-to Service Entry" > 0) and (CurrFieldNo <> 0) then
          Error(Text052,FieldCaption("Unit Price"));
        if ("Unit Price" > ServHeader."Max. Labor Unit Price") and
           (Type = Type::Resource) and
           (ServHeader."Max. Labor Unit Price" <> 0)
        then
          Error(
            Text022,
            FieldCaption("Unit Price"),ServHeader.FieldCaption("Max. Labor Unit Price"),
            ServHeader.TableCaption);

        Validate("Line Discount %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Cost (LCY)"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetServHeader;
        Currency.Initialize("Currency Code");
        IF "Unit Cost (LCY)" <> xRec."Unit Cost (LCY)" THEN
          IF (CurrFieldNo = FIELDNO("Unit Cost (LCY)")) AND
             (Type = Type::Item) AND ("No." <> '') AND ("Quantity (Base)" <> 0)
          THEN BEGIN
            GetItem(Item);
            IF (Item."Costing Method" = Item."Costing Method"::Standard) AND NOT IsShipment THEN BEGIN
              IF "Document Type" IN ["Document Type"::"Credit Memo"] THEN
                ERROR(
                  Text037,
                  FIELDCAPTION("Unit Cost (LCY)"),Item.FIELDCAPTION("Costing Method"),
                  Item."Costing Method",FIELDCAPTION(Quantity));
              ERROR(
                Text038,
                FIELDCAPTION("Unit Cost (LCY)"),Item.FIELDCAPTION("Costing Method"),
                Item."Costing Method",FIELDCAPTION(Quantity));
            END;
          END;

        IF "Currency Code" <> '' THEN BEGIN
          Currency.TESTFIELD("Unit-Amount Rounding Precision");
          "Unit Cost" :=
            ROUND(
              CurrExchRate.ExchangeAmtLCYToFCY(
                GetDate,"Currency Code","Unit Cost (LCY)",
                ServHeader."Currency Factor"),Currency."Unit-Amount Rounding Precision")
        END ELSE
          "Unit Cost" := "Unit Cost (LCY)";

        UpdateRemainingCostsAndAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetServHeader;
        Currency.Initialize("Currency Code");
        if "Unit Cost (LCY)" <> xRec."Unit Cost (LCY)" then
          if (CurrFieldNo = FieldNo("Unit Cost (LCY)")) and
             (Type = Type::Item) and ("No." <> '') and ("Quantity (Base)" <> 0)
          then begin
            GetItem(Item);
            if (Item."Costing Method" = Item."Costing Method"::Standard) and not IsShipment then begin
              if "Document Type" in ["Document Type"::"Credit Memo"] then
                Error(
                  Text037,
                  FieldCaption("Unit Cost (LCY)"),Item.FieldCaption("Costing Method"),
                  Item."Costing Method",FieldCaption(Quantity));
              Error(
                Text038,
                FieldCaption("Unit Cost (LCY)"),Item.FieldCaption("Costing Method"),
                Item."Costing Method",FieldCaption(Quantity));
            end;
          end;

        if "Currency Code" <> '' then begin
          Currency.TestField("Unit-Amount Rounding Precision");
          "Unit Cost" :=
            Round(
        #25..27
        end else
        #29..31
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Discount %"(Field 27).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo = FIELDNO("Line Discount %") THEN
          TestStatusOpen;
        GetServHeader;
        IF (CurrFieldNo IN
            [FIELDNO("Line Discount %"),
             FIELDNO("Line Discount Amount"),
             FIELDNO("Line Amount")]) AND
           ("Document Type" <> "Document Type"::Invoice)
        THEN
          CheckLineDiscount("Line Discount %");

        "Line Discount Amount" :=
          ROUND(
            ROUND(CalcChargeableQty * "Unit Price",Currency."Amount Rounding Precision") *
            "Line Discount %" / 100,Currency."Amount Rounding Precision");
        "Inv. Discount Amount" := 0;
        "Inv. Disc. Amount to Invoice" := 0;

        UpdateAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo = FieldNo("Line Discount %") then
          TestStatusOpen;
        GetServHeader;
        if (CurrFieldNo in
            [FieldNo("Line Discount %"),
             FieldNo("Line Discount Amount"),
             FieldNo("Line Amount")]) and
           ("Document Type" <> "Document Type"::Invoice)
        then
        #10..12
          Round(
            Round(CalcChargeableQty * "Unit Price",Currency."Amount Rounding Precision") *
        #15..19
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Discount Amount"(Field 28).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        GetServHeader;
        TESTFIELD(Quantity);
        IF "Line Discount Amount" <> xRec."Line Discount Amount" THEN
          UpdateLineDiscPct;
        "Inv. Discount Amount" := 0;
        "Inv. Disc. Amount to Invoice" := 0;
        VALIDATE("Line Discount %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        GetServHeader;
        TestField(Quantity);
        if "Line Discount Amount" <> xRec."Line Discount Amount" then
        #5..7
        Validate("Line Discount %");
        */
        //end;


        //Unsupported feature: CodeModification on "Amount(Field 29).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetServHeader;
        Amount := ROUND(Amount,Currency."Amount Rounding Precision");
        CASE "VAT Calculation Type" OF
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            BEGIN
              "VAT Base Amount" :=
                ROUND(Amount * (1 - ServHeader."VAT Base Discount %" / 100),Currency."Amount Rounding Precision");
              "Amount Including VAT" :=
                ROUND(Amount + "VAT Base Amount" * "VAT %" / 100,Currency."Amount Rounding Precision");
            END;
          "VAT Calculation Type"::"Full VAT":
            IF Amount <> 0 THEN
              FIELDERROR(Amount,
                STRSUBSTNO(
                  Text013,FIELDCAPTION("VAT Calculation Type"),
                  "VAT Calculation Type"));
          "VAT Calculation Type"::"Sales Tax":
            BEGIN
              ServHeader.TESTFIELD("VAT Base Discount %",0);
              "VAT Base Amount" := ROUND(Amount,Currency."Amount Rounding Precision");
              "Amount Including VAT" :=
                Amount +
                SalesTaxCalculate.CalculateTax(
                  "Tax Area Code","Tax Group Code","Tax Liable",ServHeader."Posting Date",
                  "VAT Base Amount","Quantity (Base)",ServHeader."Currency Factor");
              IF "VAT Base Amount" <> 0 THEN
                "VAT %" :=
                  ROUND(100 * ("Amount Including VAT" - "VAT Base Amount") / "VAT Base Amount",0.00001)
              ELSE
                "VAT %" := 0;
              "Amount Including VAT" := ROUND("Amount Including VAT",Currency."Amount Rounding Precision");
            END;
        END;

        InitOutstandingAmount;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetServHeader;
        Amount := Round(Amount,Currency."Amount Rounding Precision");
        case "VAT Calculation Type" of
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            begin
              "VAT Base Amount" :=
                Round(Amount * (1 - ServHeader."VAT Base Discount %" / 100),Currency."Amount Rounding Precision");
              "Amount Including VAT" :=
                Round(Amount + "VAT Base Amount" * "VAT %" / 100,Currency."Amount Rounding Precision");
            end;
          "VAT Calculation Type"::"Full VAT":
            if Amount <> 0 then
              FieldError(Amount,
                StrSubstNo(
                  Text013,FieldCaption("VAT Calculation Type"),
                  "VAT Calculation Type"));
          "VAT Calculation Type"::"Sales Tax":
            begin
              ServHeader.TestField("VAT Base Discount %",0);
              "VAT Base Amount" := Round(Amount,Currency."Amount Rounding Precision");
        #22..26
              if "VAT Base Amount" <> 0 then
                "VAT %" :=
                  Round(100 * ("Amount Including VAT" - "VAT Base Amount") / "VAT Base Amount",0.00001)
              else
                "VAT %" := 0;
              "Amount Including VAT" := Round("Amount Including VAT",Currency."Amount Rounding Precision");
            end;
        end;

        InitOutstandingAmount;
        */
        //end;


        //Unsupported feature: CodeModification on ""Amount Including VAT"(Field 30).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetServHeader;
        "Amount Including VAT" := ROUND("Amount Including VAT",Currency."Amount Rounding Precision");
        CASE "VAT Calculation Type" OF
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            BEGIN
              Amount :=
                ROUND(
                  "Amount Including VAT" /
                  (1 + (1 - ServHeader."VAT Base Discount %" / 100) * "VAT %" / 100),
                  Currency."Amount Rounding Precision");
              "VAT Base Amount" :=
                ROUND(Amount * (1 - ServHeader."VAT Base Discount %" / 100),Currency."Amount Rounding Precision");
            END;
          "VAT Calculation Type"::"Full VAT":
            BEGIN
              Amount := 0;
              "VAT Base Amount" := 0;
            END;
          "VAT Calculation Type"::"Sales Tax":
            BEGIN
              ServHeader.TESTFIELD("VAT Base Discount %",0);
              Amount :=
                SalesTaxCalculate.ReverseCalculateTax(
                  "Tax Area Code","Tax Group Code","Tax Liable",ServHeader."Posting Date",
                  "Amount Including VAT","Quantity (Base)",ServHeader."Currency Factor");
              IF Amount <> 0 THEN
                "VAT %" :=
                  ROUND(100 * ("Amount Including VAT" - Amount) / Amount,0.00001)
              ELSE
                "VAT %" := 0;
              Amount := ROUND(Amount,Currency."Amount Rounding Precision");
              "VAT Base Amount" := Amount;
            END;
        END;

        InitOutstandingAmount;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetServHeader;
        "Amount Including VAT" := Round("Amount Including VAT",Currency."Amount Rounding Precision");
        case "VAT Calculation Type" of
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            begin
              Amount :=
                Round(
        #9..12
                Round(Amount * (1 - ServHeader."VAT Base Discount %" / 100),Currency."Amount Rounding Precision");
            end;
          "VAT Calculation Type"::"Full VAT":
            begin
              Amount := 0;
              "VAT Base Amount" := 0;
            end;
          "VAT Calculation Type"::"Sales Tax":
            begin
              ServHeader.TestField("VAT Base Discount %",0);
        #23..26
              if Amount <> 0 then
                "VAT %" :=
                  Round(100 * ("Amount Including VAT" - Amount) / Amount,0.00001)
              else
                "VAT %" := 0;
              Amount := Round(Amount,Currency."Amount Rounding Precision");
              "VAT Base Amount" := Amount;
            end;
        end;

        InitOutstandingAmount;
        */
        //end;


        //Unsupported feature: CodeModification on ""Allow Invoice Disc."(Field 32).OnValidate". Please convert manually.

        //trigger "(Field 32)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF ("Allow Invoice Disc." <> xRec."Allow Invoice Disc.") AND
           NOT "Allow Invoice Disc."
        THEN BEGIN
          "Inv. Discount Amount" := 0;
          "Inv. Disc. Amount to Invoice" := 0;
          UpdateAmounts;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if ("Allow Invoice Disc." <> xRec."Allow Invoice Disc.") and
           not "Allow Invoice Disc."
        then begin
        #5..7
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-to Item Entry"(Field 38).OnLookup". Please convert manually.

        //trigger -to Item Entry"(Field 38)();
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


        //Unsupported feature: CodeModification on ""Appl.-to Item Entry"(Field 38).OnValidate". Please convert manually.

        //trigger -to Item Entry"(Field 38)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Appl.-to Item Entry" <> 0 THEN BEGIN
          TESTFIELD(Type,Type::Item);
          TESTFIELD(Quantity);

          ItemLedgEntry.GET("Appl.-to Item Entry");
          ItemLedgEntry.TESTFIELD(Positive,TRUE);
          VALIDATE("Unit Cost (LCY)",CalcUnitCost(ItemLedgEntry));
          "Location Code" := ItemLedgEntry."Location Code";
          IF NOT ItemLedgEntry.Open THEN
            MESSAGE(Text042,"Appl.-to Item Entry");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Appl.-to Item Entry" <> 0 then begin
          TestField(Type,Type::Item);
          TestField(Quantity);

          ItemLedgEntry.Get("Appl.-to Item Entry");
          ItemLedgEntry.TestField(Positive,true);
          Validate("Unit Cost (LCY)",CalcUnitCost(ItemLedgEntry));
          "Location Code" := ItemLedgEntry."Location Code";
          if not ItemLedgEntry.Open then
            Message(Text042,"Appl.-to Item Entry");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Customer Price Group"(Field 42).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Item THEN
          UpdateUnitPrice(FIELDNO("Customer Price Group"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Item then
          UpdateUnitPrice(FieldNo("Customer Price Group"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Job No."(Field 45).OnValidate". Please convert manually.

        //trigger "(Field 45)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Consumed",0);
        VALIDATE("Job Task No.",'');

        IF "Job No." <> '' THEN BEGIN
          Job.GET("Job No.");
          Job.TestBlocked;
        END;

        CreateDim(
          DATABASE::Job,"Job No.",
          DimMgt.TypeToTableID5(Type),"No.",
          DATABASE::"Responsibility Center","Responsibility Center");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Consumed",0);
        Validate("Job Task No.",'');

        if "Job No." <> '' then begin
          Job.Get("Job No.");
          Job.TestBlocked;
        end;
        #8..12
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Task No."(Field 46).OnValidate". Please convert manually.

        //trigger "(Field 46)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Consumed",0);
        IF "Job Task No." = '' THEN
          "Job Line Type" := "Job Line Type"::" ";

        IF "Job Task No." <> xRec."Job Task No." THEN
          VALIDATE("Job Planning Line No.",0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Consumed",0);
        if "Job Task No." = '' then
          "Job Line Type" := "Job Line Type"::" ";

        if "Job Task No." <> xRec."Job Task No." then
          Validate("Job Planning Line No.",0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Type"(Field 47).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Consumed",0);
        TESTFIELD("Job No.");
        TESTFIELD("Job Task No.");
        IF "Job Planning Line No." <> 0 THEN
          ERROR(Text048,FIELDCAPTION("Job Line Type"),FIELDCAPTION("Job Planning Line No."));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Consumed",0);
        TestField("Job No.");
        TestField("Job Task No.");
        if "Job Planning Line No." <> 0 then
          Error(Text048,FieldCaption("Job Line Type"),FieldCaption("Job Planning Line No."));
        */
        //end;


        //Unsupported feature: CodeModification on ""Work Type Code"(Field 52).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Resource THEN BEGIN
          TestStatusOpen;
          IF WorkType.GET("Work Type Code") THEN
            VALIDATE("Unit of Measure Code",WorkType."Unit of Measure Code");
          UpdateUnitPrice(FIELDNO("Work Type Code"));
          VALIDATE("Unit Price");
          FindResUnitCost;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Resource then begin
          TestStatusOpen;
          if WorkType.Get("Work Type Code") then
            Validate("Unit of Measure Code",WorkType."Unit of Measure Code");
          UpdateUnitPrice(FieldNo("Work Type Code"));
          Validate("Unit Price");
          FindResUnitCost;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Outstanding Amount"(Field 57).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetServHeader;
        Currency2.InitRoundingPrecision;
        IF ServHeader."Currency Code" <> '' THEN
          "Outstanding Amount (LCY)" :=
            ROUND(
              CurrExchRate.ExchangeAmtFCYToLCY(
                GetDate,"Currency Code",
                "Outstanding Amount",ServHeader."Currency Factor"),
              Currency2."Amount Rounding Precision")
        ELSE
          "Outstanding Amount (LCY)" :=
            ROUND("Outstanding Amount",Currency2."Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetServHeader;
        Currency2.InitRoundingPrecision;
        if ServHeader."Currency Code" <> '' then
          "Outstanding Amount (LCY)" :=
            Round(
        #6..9
        else
          "Outstanding Amount (LCY)" :=
            Round("Outstanding Amount",Currency2."Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipped Not Invoiced"(Field 59).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetServHeader;
        Currency2.InitRoundingPrecision;
        IF ServHeader."Currency Code" <> '' THEN
          "Shipped Not Invoiced (LCY)" :=
            ROUND(
              CurrExchRate.ExchangeAmtFCYToLCY(
                GetDate,"Currency Code",
                "Shipped Not Invoiced",ServHeader."Currency Factor"),
              Currency2."Amount Rounding Precision")
        ELSE
          "Shipped Not Invoiced (LCY)" :=
            ROUND("Shipped Not Invoiced",Currency2."Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetServHeader;
        Currency2.InitRoundingPrecision;
        if ServHeader."Currency Code" <> '' then
          "Shipped Not Invoiced (LCY)" :=
            Round(
        #6..9
        else
          "Shipped Not Invoiced (LCY)" :=
            Round("Shipped Not Invoiced",Currency2."Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipment No."(Field 63).OnLookup". Please convert manually.

        //trigger "(Field 63)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetServHeader;
        IF "Document Type" = "Document Type"::"Credit Memo" THEN BEGIN
          ServShptHeader.RESET;
          ServShptHeader.SETCURRENTKEY("Customer No.","Posting Date");
          ServShptHeader.FILTERGROUP(2);
          ServShptHeader.SETRANGE("Customer No.",ServHeader."Customer No.");
          ServShptHeader.SETRANGE("Ship-to Code",ServHeader."Ship-to Code");
          ServShptHeader.SETRANGE("Bill-to Customer No.",ServHeader."Bill-to Customer No.");
          ServShptHeader.FILTERGROUP(0);
          ServShptHeader."No." := "Shipment No.";
          IF PAGE.RUNMODAL(0,ServShptHeader) = ACTION::LookupOK THEN
            VALIDATE("Shipment No.",ServShptHeader."No.");
        END
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetServHeader;
        if "Document Type" = "Document Type"::"Credit Memo" then begin
          ServShptHeader.Reset;
          ServShptHeader.SetCurrentKey("Customer No.","Posting Date");
          ServShptHeader.FilterGroup(2);
          ServShptHeader.SetRange("Customer No.",ServHeader."Customer No.");
          ServShptHeader.SetRange("Ship-to Code",ServHeader."Ship-to Code");
          ServShptHeader.SetRange("Bill-to Customer No.",ServHeader."Bill-to Customer No.");
          ServShptHeader.FilterGroup(0);
          ServShptHeader."No." := "Shipment No.";
          if PAGE.RunModal(0,ServShptHeader) = ACTION::LookupOK then
            Validate("Shipment No.",ServShptHeader."No.");
        end
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipment No."(Field 63).OnValidate". Please convert manually.

        //trigger "(Field 63)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Shipment No." <> xRec."Shipment No." THEN BEGIN
          IF "Shipment No." <> '' THEN BEGIN
            GetServHeader;
            IF "Document Type" = "Document Type"::"Credit Memo" THEN BEGIN
              ServShptHeader.RESET;
              ServShptHeader.SETCURRENTKEY("Customer No.","Posting Date");
              ServShptHeader.SETRANGE("Customer No.",ServHeader."Customer No.");
              ServShptHeader.SETRANGE("Ship-to Code",ServHeader."Ship-to Code");
              ServShptHeader.SETRANGE("Bill-to Customer No.",ServHeader."Bill-to Customer No.");
              ServShptHeader.SETRANGE("No.","Shipment No.");
              ServShptHeader.FINDFIRST;
            END;
          END;
          TESTFIELD("Appl.-to Service Entry",0);
          ServDocReg.RESET;
          ServDocReg.SETRANGE("Destination Document Type","Document Type");
          ServDocReg.SETRANGE("Destination Document No.","Document No.");
          ServDocReg.SETRANGE("Source Document Type",ServDocReg."Source Document Type"::Order);
          ServDocReg.SETRANGE("Source Document No.",xRec."Shipment No.");
          ServDocReg.DELETEALL;
          CLEAR(ServDocReg);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Shipment No." <> xRec."Shipment No." then begin
          if "Shipment No." <> '' then begin
            GetServHeader;
            if "Document Type" = "Document Type"::"Credit Memo" then begin
              ServShptHeader.Reset;
              ServShptHeader.SetCurrentKey("Customer No.","Posting Date");
              ServShptHeader.SetRange("Customer No.",ServHeader."Customer No.");
              ServShptHeader.SetRange("Ship-to Code",ServHeader."Ship-to Code");
              ServShptHeader.SetRange("Bill-to Customer No.",ServHeader."Bill-to Customer No.");
              ServShptHeader.SetRange("No.","Shipment No.");
              ServShptHeader.FindFirst;
            end;
          end;
          TestField("Appl.-to Service Entry",0);
          ServDocReg.Reset;
          ServDocReg.SetRange("Destination Document Type","Document Type");
          ServDocReg.SetRange("Destination Document No.","Document No.");
          ServDocReg.SetRange("Source Document Type",ServDocReg."Source Document Type"::Order);
          ServDocReg.SetRange("Source Document No.",xRec."Shipment No.");
          ServDocReg.DeleteAll;
          Clear(ServDocReg);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Inv. Discount Amount"(Field 69).OnValidate". Please convert manually.

        //trigger  Discount Amount"(Field 69)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Quantity);
        CalcInvDiscToInvoice;
        UpdateAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Quantity);
        CalcInvDiscToInvoice;
        UpdateAmounts;
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Bus. Posting Group"(Field 74).OnValidate". Please convert manually.

        //trigger  Bus();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Gen. Bus. Posting Group" <> xRec."Gen. Bus. Posting Group" THEN
          IF GenBusPostingGroup.ValidateVatBusPostingGroup(GenBusPostingGroup,"Gen. Bus. Posting Group") THEN
            VALIDATE("VAT Bus. Posting Group",GenBusPostingGroup."Def. VAT Bus. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Gen. Bus. Posting Group" <> xRec."Gen. Bus. Posting Group" then
          if GenBusPostingGroup.ValidateVatBusPostingGroup(GenBusPostingGroup,"Gen. Bus. Posting Group") then
            Validate("VAT Bus. Posting Group",GenBusPostingGroup."Def. VAT Bus. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Prod. Posting Group"(Field 75).OnValidate". Please convert manually.

        //trigger  Prod();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Gen. Prod. Posting Group" <> xRec."Gen. Prod. Posting Group" THEN
          IF GenProdPostingGroup.ValidateVatProdPostingGroup(GenProdPostingGroup,"Gen. Prod. Posting Group") THEN
            VALIDATE("VAT Prod. Posting Group",GenProdPostingGroup."Def. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Gen. Prod. Posting Group" <> xRec."Gen. Prod. Posting Group" then
          if GenProdPostingGroup.ValidateVatProdPostingGroup(GenProdPostingGroup,"Gen. Prod. Posting Group") then
            Validate("VAT Prod. Posting Group",GenProdPostingGroup."Def. VAT Prod. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Bus. Posting Group"(Field 89).OnValidate". Please convert manually.

        //trigger  Posting Group"(Field 89)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("VAT Prod. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Prod. Posting Group"(Field 90).OnValidate". Please convert manually.

        //trigger  Posting Group"(Field 90)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        GetServHeader;
        VATPostingSetup.GET("VAT Bus. Posting Group","VAT Prod. Posting Group");
        "VAT Difference" := 0;
        "VAT %" := VATPostingSetup."VAT %";
        "VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
        "VAT Identifier" := VATPostingSetup."VAT Identifier";
        "VAT Clause Code" := VATPostingSetup."VAT Clause Code";
        CASE "VAT Calculation Type" OF
          "VAT Calculation Type"::"Reverse Charge VAT",
          "VAT Calculation Type"::"Sales Tax":
            "VAT %" := 0;
          "VAT Calculation Type"::"Full VAT":
            TESTFIELD(Type,Type::Cost);
        END;
        GetServHeader;
        IF ServHeader."Prices Including VAT" AND (Type IN [Type::Item,Type::Resource]) THEN
          VALIDATE("Unit Price",
            ROUND(
              "Unit Price" * (100 + "VAT %") / (100 + xRec."VAT %"),
              Currency."Unit-Amount Rounding Precision"));
        UpdateAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        GetServHeader;
        VATPostingSetup.Get("VAT Bus. Posting Group","VAT Prod. Posting Group");
        #4..8
        case "VAT Calculation Type" of
        #10..13
            TestField(Type,Type::Cost);
        end;
        GetServHeader;
        if ServHeader."Prices Including VAT" and (Type in [Type::Item,Type::Resource]) then
          Validate("Unit Price",
            Round(
        #20..22
        */
        //end;


        //Unsupported feature: CodeModification on "Reserve(Field 96).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Reserve <> Reserve::Never THEN BEGIN
          TESTFIELD(Type,Type::Item);
          TESTFIELD("No.");
        END;
        CALCFIELDS("Reserved Qty. (Base)");
        IF (Reserve = Reserve::Never) AND ("Reserved Qty. (Base)" > 0) THEN
          TESTFIELD("Reserved Qty. (Base)",0);

        IF xRec.Reserve = Reserve::Always THEN BEGIN
          GetItem(Item);
          IF Item.Reserve = Item.Reserve::Always THEN
            TESTFIELD(Reserve,Reserve::Always);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Reserve <> Reserve::Never then begin
          TestField(Type,Type::Item);
          TestField("No.");
        end;
        CalcFields("Reserved Qty. (Base)");
        if (Reserve = Reserve::Never) and ("Reserved Qty. (Base)" > 0) then
          TestField("Reserved Qty. (Base)",0);

        if xRec.Reserve = Reserve::Always then begin
          GetItem(Item);
          if Item.Reserve = Item.Reserve::Always then
            TestField(Reserve,Reserve::Always);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Amount"(Field 103).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type);
        TESTFIELD(Quantity);
        TESTFIELD("Unit Price");
        Currency.Initialize("Currency Code");
        "Line Amount" := ROUND("Line Amount",Currency."Amount Rounding Precision");
        LineDiscountAmountExpected := ROUND(CalcChargeableQty * "Unit Price",Currency."Amount Rounding Precision") - "Line Amount";
        IF ServAmountsMgt.AmountsDifferByMoreThanRoundingPrecision(LineDiscountAmountExpected,"Line Discount Amount",Currency."Amount Rounding Precision") THEN
          VALIDATE("Line Discount Amount",LineDiscountAmountExpected);
        GetServHeader;
        IF ServHeader."Tax Area Code" = '' THEN
          UpdateVATAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type);
        TestField(Quantity);
        TestField("Unit Price");
        Currency.Initialize("Currency Code");
        "Line Amount" := Round("Line Amount",Currency."Amount Rounding Precision");
        LineDiscountAmountExpected := Round(CalcChargeableQty * "Unit Price",Currency."Amount Rounding Precision") - "Line Amount";
        if ServAmountsMgt.AmountsDifferByMoreThanRoundingPrecision(LineDiscountAmountExpected,"Line Discount Amount",Currency."Amount Rounding Precision") then
          Validate("Line Discount Amount",LineDiscountAmountExpected);
        GetServHeader;
        if ServHeader."Tax Area Code" = '' then
          UpdateVATAmounts;
        */
        //end;


        //Unsupported feature: CodeModification on ""Pmt. Discount Amount"(Field 145).OnValidate". Please convert manually.

        //trigger  Discount Amount"(Field 145)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Quantity);
        UpdateAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Quantity);
        UpdateAmounts;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Planning Line No."(Field 1019).OnLookup". Please convert manually.

        //trigger "(Field 1019)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        JobPlanningLine.SETRANGE("Job No.","Job No.");
        JobPlanningLine.SETRANGE("Job Task No.","Job Task No.");
        CASE Type OF
          Type::"G/L Account":
            JobPlanningLine.SETRANGE(Type,JobPlanningLine.Type::"G/L Account");
          Type::Item:
            JobPlanningLine.SETRANGE(Type,JobPlanningLine.Type::Item);
        END;
        JobPlanningLine.SETRANGE("No.","No.");
        JobPlanningLine.SETRANGE("Usage Link",TRUE);
        JobPlanningLine.SETRANGE("System-Created Entry",FALSE);

        IF PAGE.RUNMODAL(0,JobPlanningLine) = ACTION::LookupOK THEN
          VALIDATE("Job Planning Line No.",JobPlanningLine."Line No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        JobPlanningLine.SetRange("Job No.","Job No.");
        JobPlanningLine.SetRange("Job Task No.","Job Task No.");
        case Type of
          Type::"G/L Account":
            JobPlanningLine.SetRange(Type,JobPlanningLine.Type::"G/L Account");
          Type::Item:
            JobPlanningLine.SetRange(Type,JobPlanningLine.Type::Item);
        end;
        JobPlanningLine.SetRange("No.","No.");
        JobPlanningLine.SetRange("Usage Link",true);
        JobPlanningLine.SetRange("System-Created Entry",false);

        if PAGE.RunModal(0,JobPlanningLine) = ACTION::LookupOK then
          Validate("Job Planning Line No.",JobPlanningLine."Line No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Planning Line No."(Field 1019).OnValidate". Please convert manually.

        //trigger "(Field 1019)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Job Planning Line No." <> 0 THEN BEGIN
          JobPlanningLine.GET("Job No.","Job Task No.","Job Planning Line No.");
          JobPlanningLine.TESTFIELD("Job No.","Job No.");
          JobPlanningLine.TESTFIELD("Job Task No.","Job Task No.");
          CASE Type OF
            Type::Resource:
              JobPlanningLine.TESTFIELD(Type,JobPlanningLine.Type::Resource);
            Type::Item:
              JobPlanningLine.TESTFIELD(Type,JobPlanningLine.Type::Item);
            Type::"G/L Account":
              JobPlanningLine.TESTFIELD(Type,JobPlanningLine.Type::"G/L Account");
          END;
          JobPlanningLine.TESTFIELD("No.","No.");
          JobPlanningLine.TESTFIELD("Usage Link",TRUE);
          JobPlanningLine.TESTFIELD("System-Created Entry",FALSE);
          "Job Line Type" := JobPlanningLine."Line Type" + 1;
          VALIDATE("Job Remaining Qty.",JobPlanningLine."Remaining Qty." - Quantity);
        END ELSE
          VALIDATE("Job Remaining Qty.",0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Job Planning Line No." <> 0 then begin
          JobPlanningLine.Get("Job No.","Job Task No.","Job Planning Line No.");
          JobPlanningLine.TestField("Job No.","Job No.");
          JobPlanningLine.TestField("Job Task No.","Job Task No.");
          case Type of
            Type::Resource:
              JobPlanningLine.TestField(Type,JobPlanningLine.Type::Resource);
            Type::Item:
              JobPlanningLine.TestField(Type,JobPlanningLine.Type::Item);
            Type::"G/L Account":
              JobPlanningLine.TestField(Type,JobPlanningLine.Type::"G/L Account");
          end;
          JobPlanningLine.TestField("No.","No.");
          JobPlanningLine.TestField("Usage Link",true);
          JobPlanningLine.TestField("System-Created Entry",false);
          "Job Line Type" := JobPlanningLine."Line Type" + 1;
          Validate("Job Remaining Qty.",JobPlanningLine."Remaining Qty." - Quantity);
        end else
          Validate("Job Remaining Qty.",0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Remaining Qty."(Field 1030).OnValidate". Please convert manually.

        //trigger "(Field 1030)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Job Remaining Qty." <> 0) AND ("Job Planning Line No." = 0) THEN
          ERROR(Text047,FIELDCAPTION("Job Remaining Qty."),FIELDCAPTION("Job Planning Line No."));

        IF "Job Planning Line No." <> 0 THEN BEGIN
          JobPlanningLine.GET("Job No.","Job Task No.","Job Planning Line No.");
          IF JobPlanningLine.Quantity >= 0 THEN BEGIN
            IF "Job Remaining Qty." < 0 THEN
              "Job Remaining Qty." := 0;
          END ELSE BEGIN
            IF "Job Remaining Qty." > 0 THEN
              "Job Remaining Qty." := 0;
          END;
        END;
        "Job Remaining Qty. (Base)" := CalcBaseQty("Job Remaining Qty.");

        UpdateRemainingCostsAndAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Job Remaining Qty." <> 0) and ("Job Planning Line No." = 0) then
          Error(Text047,FieldCaption("Job Remaining Qty."),FieldCaption("Job Planning Line No."));

        if "Job Planning Line No." <> 0 then begin
          JobPlanningLine.Get("Job No.","Job Task No.","Job Planning Line No.");
          if JobPlanningLine.Quantity >= 0 then begin
            if "Job Remaining Qty." < 0 then
              "Job Remaining Qty." := 0;
          end else begin
            if "Job Remaining Qty." > 0 then
              "Job Remaining Qty." := 0;
          end;
        end;
        #14..16
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 5402).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Variant Code" <> '' THEN
          TESTFIELD(Type,Type::Item);
        TestStatusOpen;

        IF xRec."Variant Code" <> "Variant Code" THEN BEGIN
          TESTFIELD("Qty. Shipped Not Invoiced",0);
          TESTFIELD("Shipment No.",'');
          InitItemAppl(FALSE);
        END;

        CheckItemAvailable(FIELDNO("Variant Code"));
        UpdateReservation(FIELDNO("Variant Code"));

        IF Type = Type::Item THEN BEGIN
          GetUnitCost;
          UpdateUnitPrice(FIELDNO("Variant Code"));
          WhseValidateSourceLine.ServiceLineVerifyChange(Rec,xRec);
        END;

        GetDefaultBin;

        IF "Variant Code" = '' THEN BEGIN
          IF Type = Type::Item THEN BEGIN
            GetItem(Item);
            Description := Item.Description;
            "Description 2" := Item."Description 2";
            OnValidateVariantCodeOnAssignItem(Rec,Item);
            GetItemTranslation;
          END;
          EXIT;
        END;

        ItemVariant.GET("No.","Variant Code");
        Description := ItemVariant.Description;
        "Description 2" := ItemVariant."Description 2";
        OnValidateVariantCodeOnAssignItemVariant(Rec,ItemVariant);

        GetServHeader;
        IF ServHeader."Language Code" <> '' THEN
          GetItemTranslation;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" <> '' then
          TestField(Type,Type::Item);
        TestStatusOpen;

        if xRec."Variant Code" <> "Variant Code" then begin
          TestField("Qty. Shipped Not Invoiced",0);
          TestField("Shipment No.",'');
          InitItemAppl(false);
        end;

        CheckItemAvailable(FieldNo("Variant Code"));
        UpdateReservation(FieldNo("Variant Code"));

        if Type = Type::Item then begin
          GetUnitCost;
          UpdateUnitPrice(FieldNo("Variant Code"));
          WhseValidateSourceLine.ServiceLineVerifyChange(Rec,xRec);
        end;
        #19..21
        if "Variant Code" = '' then begin
          if Type = Type::Item then begin
        #24..28
          end;
          exit;
        end;

        ItemVariant.Get("No.","Variant Code");
        Description := ItemVariant."Part No";
        "Description 2" := ItemVariant.Description;

        GetServHeader;
        if ServHeader."Language Code" <> '' then
          GetItemTranslation;
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 5403).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Location Code");
        TESTFIELD(Type,Type::Item);

        IF "Document Type" IN ["Document Type"::Order,"Document Type"::Invoice] THEN
          BinCode := WMSManagement.BinContentLookUp("Location Code","No.","Variant Code",'',"Bin Code")
        ELSE
          IF "Document Type" = "Document Type"::"Credit Memo" THEN
            BinCode := WMSManagement.BinLookUp("Location Code","No.","Variant Code",'');

        IF BinCode <> '' THEN
          VALIDATE("Bin Code",BinCode);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Location Code");
        TestField(Type,Type::Item);

        if "Document Type" in ["Document Type"::Order,"Document Type"::Invoice] then
          BinCode := WMSManagement.BinContentLookUp("Location Code","No.","Variant Code",'',"Bin Code")
        else
          if "Document Type" = "Document Type"::"Credit Memo" then
            BinCode := WMSManagement.BinLookUp("Location Code","No.","Variant Code",'');

        if BinCode <> '' then
          Validate("Bin Code",BinCode);
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 5403).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Location Code");
        TESTFIELD(Type,Type::Item);

        IF "Bin Code" <> '' THEN
          IF "Document Type" IN ["Document Type"::Order,"Document Type"::Invoice] THEN
            WMSManagement.FindBinContent("Location Code","Bin Code","No.","Variant Code",'')
          ELSE
            IF "Document Type" = "Document Type"::"Credit Memo" THEN
              WMSManagement.FindBin("Location Code","Bin Code",'');

        IF xRec."Bin Code" <> "Bin Code" THEN BEGIN
          TESTFIELD("Qty. Shipped Not Invoiced",0);
          TESTFIELD("Shipment No.",'');
        END;

        IF "Bin Code" <> '' THEN
          WhseIntegrationManagement.CheckBinTypeCode(
            DATABASE::"Service Line",
            FIELDCAPTION("Bin Code"),
            "Location Code",
            "Bin Code",
            "Document Type");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Location Code");
        TestField(Type,Type::Item);

        if "Bin Code" <> '' then
          if "Document Type" in ["Document Type"::Order,"Document Type"::Invoice] then
            WMSManagement.FindBinContent("Location Code","Bin Code","No.","Variant Code",'')
          else
            if "Document Type" = "Document Type"::"Credit Memo" then
              WMSManagement.FindBin("Location Code","Bin Code",'');

        if xRec."Bin Code" <> "Bin Code" then begin
          TestField("Qty. Shipped Not Invoiced",0);
          TestField("Shipment No.",'');
        end;

        if "Bin Code" <> '' then
          WhseIntegrationManagement.CheckBinTypeCode(
            DATABASE::"Service Line",
            FieldCaption("Bin Code"),
        #20..22
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 5407).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Shipped",0);
        TESTFIELD("Qty. Shipped (Base)",0);
        TestStatusOpen;

        IF "Unit of Measure Code" = '' THEN
          "Unit of Measure" := ''
        ELSE BEGIN
          IF NOT UnitOfMeasure.GET("Unit of Measure Code") THEN
            UnitOfMeasure.INIT;
          "Unit of Measure" := UnitOfMeasure.Description;
          GetServHeader;
          IF ServHeader."Language Code" <> '' THEN BEGIN
            UnitOfMeasureTranslation.SETRANGE(Code,"Unit of Measure Code");
            UnitOfMeasureTranslation.SETRANGE("Language Code",ServHeader."Language Code");
            IF UnitOfMeasureTranslation.FINDFIRST THEN
              "Unit of Measure" := UnitOfMeasureTranslation.Description;
          END;
        END;

        CASE Type OF
          Type::Item:
            BEGIN
              IF Quantity <> 0 THEN
                WhseValidateSourceLine.ServiceLineVerifyChange(Rec,xRec);
              GetItem(Item);
              GetUnitCost;
              UpdateUnitPrice(FIELDNO("Unit of Measure Code"));
              "Gross Weight" := Item."Gross Weight" * "Qty. per Unit of Measure";
              "Net Weight" := Item."Net Weight" * "Qty. per Unit of Measure";
              "Unit Volume" := Item."Unit Volume" * "Qty. per Unit of Measure";
              "Units per Parcel" := ROUND(Item."Units per Parcel" / "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
              IF "Qty. per Unit of Measure" > xRec."Qty. per Unit of Measure" THEN
                InitItemAppl(FALSE);
            END;
          Type::Resource:
            BEGIN
              IF "Unit of Measure Code" = '' THEN BEGIN
                GetResource;
                "Unit of Measure Code" := Resource."Base Unit of Measure";
                IF UnitOfMeasure.GET("Unit of Measure Code") THEN
                  "Unit of Measure" := UnitOfMeasure.Description;
              END;
              ResUnitofMeasure.GET("No.","Unit of Measure Code");
              "Qty. per Unit of Measure" := ResUnitofMeasure."Qty. per Unit of Measure";
              UpdateUnitPrice(FIELDNO("Unit of Measure Code"));
              FindResUnitCost;
            END;
          Type::"G/L Account",Type::" ",Type::Cost:
            "Qty. per Unit of Measure" := 1;
        END;

        VALIDATE(Quantity);
        CheckItemAvailable(FIELDNO("Unit of Measure Code"));
        UpdateReservation(FIELDNO("Unit of Measure Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Shipped",0);
        TestField("Qty. Shipped (Base)",0);
        TestStatusOpen;

        if "Unit of Measure Code" = '' then
          "Unit of Measure" := ''
        else begin
          if not UnitOfMeasure.Get("Unit of Measure Code") then
            UnitOfMeasure.Init;
          "Unit of Measure" := UnitOfMeasure.Description;
          GetServHeader;
          if ServHeader."Language Code" <> '' then begin
            UnitOfMeasureTranslation.SetRange(Code,"Unit of Measure Code");
            UnitOfMeasureTranslation.SetRange("Language Code",ServHeader."Language Code");
            if UnitOfMeasureTranslation.FindFirst then
              "Unit of Measure" := UnitOfMeasureTranslation.Description;
          end;
        end;

        case Type of
          Type::Item:
            begin
              if Quantity <> 0 then
        #24..26
              UpdateUnitPrice(FieldNo("Unit of Measure Code"));
        #28..30
              "Units per Parcel" := Round(Item."Units per Parcel" / "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
              if "Qty. per Unit of Measure" > xRec."Qty. per Unit of Measure" then
                InitItemAppl(false);
            end;
          Type::Resource:
            begin
              if "Unit of Measure Code" = '' then begin
                GetResource;
                "Unit of Measure Code" := Resource."Base Unit of Measure";
                if UnitOfMeasure.Get("Unit of Measure Code") then
                  "Unit of Measure" := UnitOfMeasure.Description;
              end;
              ResUnitofMeasure.Get("No.","Unit of Measure Code");
              "Qty. per Unit of Measure" := ResUnitofMeasure."Qty. per Unit of Measure";
              UpdateUnitPrice(FieldNo("Unit of Measure Code"));
              FindResUnitCost;
            end;
          Type::"G/L Account",Type::" ",Type::Cost:
            "Qty. per Unit of Measure" := 1;
        end;

        Validate(Quantity);
        CheckItemAvailable(FieldNo("Unit of Measure Code"));
        UpdateReservation(FieldNo("Unit of Measure Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity (Base)"(Field 5415).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Quantity (Base)" < 0 THEN
          FIELDERROR("Quantity (Base)",Text029);

        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE(Quantity,"Quantity (Base)");
        UpdateUnitPrice(FIELDNO("Quantity (Base)"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Quantity (Base)" < 0 then
          FieldError("Quantity (Base)",Text029);

        TestField("Qty. per Unit of Measure",1);
        Validate(Quantity,"Quantity (Base)");
        UpdateUnitPrice(FieldNo("Quantity (Base)"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Invoice (Base)"(Field 5417).OnValidate". Please convert manually.

        //trigger  to Invoice (Base)"(Field 5417)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Qty. to Invoice (Base)" < 0 THEN
          FIELDERROR("Qty. to Invoice (Base)",Text029);

        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Qty. to Invoice","Qty. to Invoice (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Qty. to Invoice (Base)" < 0 then
          FieldError("Qty. to Invoice (Base)",Text029);

        TestField("Qty. per Unit of Measure",1);
        Validate("Qty. to Invoice","Qty. to Invoice (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Ship (Base)"(Field 5418).OnValidate". Please convert manually.

        //trigger  to Ship (Base)"(Field 5418)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Qty. to Ship (Base)" < 0 THEN
          FIELDERROR("Qty. to Ship (Base)",Text029);

        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Qty. to Ship","Qty. to Ship (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Qty. to Ship (Base)" < 0 then
          FieldError("Qty. to Ship (Base)",Text029);

        TestField("Qty. per Unit of Measure",1);
        Validate("Qty. to Ship","Qty. to Ship (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Reserved Qty. (Base)"(Field 5495).OnValidate". Please convert manually.

        //trigger  (Base)"(Field 5495)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure");
        CALCFIELDS("Reserved Quantity");
        Planned := "Reserved Quantity" = "Outstanding Quantity";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure");
        CalcFields("Reserved Quantity");
        Planned := "Reserved Quantity" = "Outstanding Quantity";
        */
        //end;


        //Unsupported feature: CodeModification on ""Requested Delivery Date"(Field 5790).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF ("Requested Delivery Date" <> xRec."Requested Delivery Date") AND
           ("Promised Delivery Date" <> 0D)
        THEN
          ERROR(
            Text046,
            FIELDCAPTION("Requested Delivery Date"),
            FIELDCAPTION("Promised Delivery Date"));

        IF "Requested Delivery Date" <> 0D THEN
          VALIDATE("Planned Delivery Date","Requested Delivery Date")
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if ("Requested Delivery Date" <> xRec."Requested Delivery Date") and
           ("Promised Delivery Date" <> 0D)
        then
          Error(
            Text046,
            FieldCaption("Requested Delivery Date"),
            FieldCaption("Promised Delivery Date"));

        if "Requested Delivery Date" <> 0D then
          Validate("Planned Delivery Date","Requested Delivery Date")
        */
        //end;


        //Unsupported feature: CodeModification on ""Promised Delivery Date"(Field 5791).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Promised Delivery Date" <> 0D THEN
          VALIDATE("Planned Delivery Date","Promised Delivery Date")
        ELSE
          VALIDATE("Requested Delivery Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Promised Delivery Date" <> 0D then
          Validate("Planned Delivery Date","Promised Delivery Date")
        else
          Validate("Requested Delivery Date");
        */
        //end;


        //Unsupported feature: CodeModification on ""Planned Delivery Date"(Field 5794).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Needed by Date","Planned Delivery Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Needed by Date","Planned Delivery Date");
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Agent Code"(Field 5796).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Shipping Agent Code" <> xRec."Shipping Agent Code" THEN
          VALIDATE("Shipping Agent Service Code",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Shipping Agent Code" <> xRec."Shipping Agent Code" then
          Validate("Shipping Agent Service Code",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Agent Service Code"(Field 5797).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Shipping Agent Service Code" <> xRec."Shipping Agent Service Code" THEN
          CLEAR("Shipping Time");

        IF ShippingAgentServices.GET("Shipping Agent Code","Shipping Agent Service Code") THEN
          "Shipping Time" := ShippingAgentServices."Shipping Time"
        ELSE BEGIN
          GetServHeader;
          "Shipping Time" := ServHeader."Shipping Time";
        END;

        IF ShippingAgentServices."Shipping Time" <> xRec."Shipping Time" THEN
          VALIDATE("Shipping Time","Shipping Time");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Shipping Agent Service Code" <> xRec."Shipping Agent Service Code" then
          Clear("Shipping Time");

        if ShippingAgentServices.Get("Shipping Agent Code","Shipping Agent Service Code") then
          "Shipping Time" := ShippingAgentServices."Shipping Time"
        else begin
          GetServHeader;
          "Shipping Time" := ServHeader."Shipping Time";
        end;

        if ShippingAgentServices."Shipping Time" <> xRec."Shipping Time" then
          Validate("Shipping Time","Shipping Time");
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-from Item Entry"(Field 5811).OnLookup". Please convert manually.

        //trigger -from Item Entry"(Field 5811)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SelectItemEntry(FIELDNO("Appl.-from Item Entry"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SelectItemEntry(FieldNo("Appl.-from Item Entry"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-from Item Entry"(Field 5811).OnValidate". Please convert manually.

        //trigger -from Item Entry"(Field 5811)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Appl.-from Item Entry" <> 0 THEN BEGIN
          CheckApplFromItemLedgEntry(ItemLedgEntry);
          VALIDATE("Unit Cost (LCY)",CalcUnitCost(ItemLedgEntry));
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Appl.-from Item Entry" <> 0 then begin
          CheckApplFromItemLedgEntry(ItemLedgEntry);
          Validate("Unit Cost (LCY)",CalcUnitCost(ItemLedgEntry));
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Service Item No."(Field 5902).OnLookup". Please convert manually.

        //trigger "(Field 5902)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Document Type" IN ["Document Type"::Invoice,"Document Type"::"Credit Memo"] THEN BEGIN
          ServItem.RESET;
          ServItem.SETCURRENTKEY("Customer No.");
          ServItem.FILTERGROUP(2);
          ServItem.SETRANGE("Customer No.","Customer No.");
          ServItem.FILTERGROUP(0);
          IF PAGE.RUNMODAL(0,ServItem) = ACTION::LookupOK THEN
            VALIDATE("Service Item No.",ServItem."No.");
        END
        ELSE BEGIN
          ServItemLine.RESET;
          ServItemLine.SETCURRENTKEY("Document Type","Document No.","Service Item No.");
          ServItemLine.FILTERGROUP(2);
          ServItemLine.SETRANGE("Document Type","Document Type");
          ServItemLine.SETRANGE("Document No.","Document No.");
          ServItemLine.FILTERGROUP(0);
          ServItemLine."Service Item No." := "Service Item No.";
          IF PAGE.RUNMODAL(0,ServItemLine) = ACTION::LookupOK THEN
            VALIDATE("Service Item Line No.",ServItemLine."Line No.");
        END;

        IF "Service Item No." <> xRec."Service Item No." THEN
          VALIDATE("No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Document Type" in ["Document Type"::Invoice,"Document Type"::"Credit Memo"] then begin
          ServItem.Reset;
          ServItem.SetCurrentKey("Customer No.");
          ServItem.FilterGroup(2);
          ServItem.SetRange("Customer No.","Customer No.");
          ServItem.FilterGroup(0);
          if PAGE.RunModal(0,ServItem) = ACTION::LookupOK then
            Validate("Service Item No.",ServItem."No.");
        end
        else begin
          ServItemLine.Reset;
          ServItemLine.SetCurrentKey("Document Type","Document No.","Service Item No.");
          ServItemLine.FilterGroup(2);
          ServItemLine.SetRange("Document Type","Document Type");
          ServItemLine.SetRange("Document No.","Document No.");
          ServItemLine.FilterGroup(0);
          ServItemLine."Service Item No." := "Service Item No.";
          if PAGE.RunModal(0,ServItemLine) = ACTION::LookupOK then
            Validate("Service Item Line No.",ServItemLine."Line No.");
        end;

        if "Service Item No." <> xRec."Service Item No." then
          Validate("No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Service Item No."(Field 5902).OnValidate". Please convert manually.

        //trigger "(Field 5902)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Shipped",0);
        TESTFIELD("Shipment No.",'');
        IF "Service Item No." <> '' THEN BEGIN
          IF "Document Type" IN ["Document Type"::Invoice,"Document Type"::"Credit Memo"] THEN
            EXIT;
          ServItemLine.RESET;
          ServItemLine.SETRANGE("Document Type","Document Type");
          ServItemLine.SETRANGE("Document No.","Document No.");
          ServItemLine.SETRANGE("Service Item No.","Service Item No.");
          ServItemLine.FIND('-');
          VALIDATE("Service Item Line No.",ServItemLine."Line No.");
        END;

        IF "Service Item No." <> xRec."Service Item No." THEN BEGIN
          IF "Service Item No." = '' THEN
            VALIDATE("Service Item Line No.",0);
          VALIDATE("No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Shipped",0);
        TestField("Shipment No.",'');
        if "Service Item No." <> '' then begin
          if "Document Type" in ["Document Type"::Invoice,"Document Type"::"Credit Memo"] then
            exit;
          ServItemLine.Reset;
          ServItemLine.SetRange("Document Type","Document Type");
          ServItemLine.SetRange("Document No.","Document No.");
          ServItemLine.SetRange("Service Item No.","Service Item No.");
          ServItemLine.Find('-');
          Validate("Service Item Line No.",ServItemLine."Line No.");
        end;

        if "Service Item No." <> xRec."Service Item No." then begin
          if "Service Item No." = '' then
            Validate("Service Item Line No.",0);
          Validate("No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Service Item Line No."(Field 5904).OnValidate". Please convert manually.

        //trigger "(Field 5904)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Shipped",0);
        ErrorIfAlreadySelectedSI("Service Item Line No.");
        IF ServItemLine.GET("Document Type","Document No.","Service Item Line No.") THEN BEGIN
          "Service Item No." := ServItemLine."Service Item No.";
          "Service Item Serial No." := ServItemLine."Serial No.";
          "Fault Area Code" := ServItemLine."Fault Area Code";
          "Symptom Code" := ServItemLine."Symptom Code";
          "Fault Code" := ServItemLine."Fault Code";
          "Resolution Code" := ServItemLine."Resolution Code";
          "Service Price Group Code" := ServItemLine."Service Price Group Code";
          "Serv. Price Adjmt. Gr. Code" := ServItemLine."Serv. Price Adjmt. Gr. Code";
          IF "No." <> '' THEN
            VALIDATE("Contract No.",ServItemLine."Contract No.");
        END ELSE BEGIN
          "Service Item No." := '';
          "Service Item Serial No." := '';
        END;
        CALCFIELDS("Service Item Line Description");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Shipped",0);
        ErrorIfAlreadySelectedSI("Service Item Line No.");
        if ServItemLine.Get("Document Type","Document No.","Service Item Line No.") then begin
        #4..6
          "Fault Area Description" := ServItemLine."Fault Area Description";
        #7..11
          "Sub Module Code" := ServItemLine."Sub Module Code";
          "Sub Module Descrption" :=ServItemLine."Sub Module Descrption";
          if "No." <> '' then
            Validate("Contract No.",ServItemLine."Contract No.");
        end else begin
          "Service Item No." := '';
          "Service Item Serial No." := '';
        end;
        CalcFields("Service Item Line Description");
        */
        //end;


        //Unsupported feature: CodeModification on ""Service Item Serial No."(Field 5905).OnLookup". Please convert manually.

        //trigger "(Field 5905)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ServItemLine.RESET;
        ServItemLine.SETRANGE("Document Type","Document Type");
        ServItemLine.SETRANGE("Document No.","Document No.");
        ServItemLine."Serial No." := "Service Item Serial No.";
        IF PAGE.RUNMODAL(0,ServItemLine) = ACTION::LookupOK THEN
          VALIDATE("Service Item Line No.",ServItemLine."Line No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ServItemLine.Reset;
        ServItemLine.SetRange("Document Type","Document Type");
        ServItemLine.SetRange("Document No.","Document No.");
        ServItemLine."Serial No." := "Service Item Serial No.";
        if PAGE.RunModal(0,ServItemLine) = ACTION::LookupOK then
          Validate("Service Item Line No.",ServItemLine."Line No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Service Item Serial No."(Field 5905).OnValidate". Please convert manually.

        //trigger "(Field 5905)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Service Item Serial No." <> '' THEN BEGIN
          ServItemLine.RESET;
          ServItemLine.SETRANGE("Document Type","Document Type");
          ServItemLine.SETRANGE("Document No.","Document No.");
          ServItemLine.SETRANGE("Serial No.","Service Item Serial No.");
          ServItemLine.FIND('-');
          VALIDATE("Service Item Line No.",ServItemLine."Line No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Service Item Serial No." <> '' then begin
          ServItemLine.Reset;
          ServItemLine.SetRange("Document Type","Document Type");
          ServItemLine.SetRange("Document No.","Document No.");
          ServItemLine.SetRange("Serial No.","Service Item Serial No.");
          ServItemLine.Find('-');
          Validate("Service Item Line No.",ServItemLine."Line No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Needed by Date"(Field 5910).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF CurrFieldNo = FIELDNO("Needed by Date") THEN
          IF xRec."Needed by Date" <> 0D THEN
            TESTFIELD("Needed by Date");
        IF "Needed by Date" <> 0D THEN
          CheckItemAvailable(FIELDNO("Needed by Date"));
        IF CurrFieldNo = FIELDNO("Planned Delivery Date") THEN
          UpdateReservation(CurrFieldNo)
        ELSE
          UpdateReservation(FIELDNO("Needed by Date"));
        "Planned Delivery Date" := "Needed by Date";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if CurrFieldNo = FieldNo("Needed by Date") then
          if xRec."Needed by Date" <> 0D then
            TestField("Needed by Date");
        if "Needed by Date" <> 0D then
          CheckItemAvailable(FieldNo("Needed by Date"));
        if CurrFieldNo = FieldNo("Planned Delivery Date") then
          UpdateReservation(CurrFieldNo)
        else
          UpdateReservation(FieldNo("Needed by Date"));
        "Planned Delivery Date" := "Needed by Date";
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Consume"(Field 5917).OnValidate". Please convert manually.

        //trigger  to Consume"(Field 5917)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo = FIELDNO("Qty. to Consume") THEN
          CheckWarehouse;

        IF "Qty. to Consume" < 0 THEN
          FIELDERROR("Qty. to Consume",Text029);

        IF "Qty. to Consume" = MaxQtyToConsume THEN
          InitQtyToConsume
        ELSE BEGIN
          "Qty. to Consume (Base)" := CalcBaseQty("Qty. to Consume");
          InitQtyToInvoice;
        END;

        IF "Qty. to Consume" > 0 THEN BEGIN
          "Qty. to Ship" := "Qty. to Consume";
          "Qty. to Ship (Base)" := "Qty. to Consume (Base)";
          "Qty. to Invoice" := 0;
          "Qty. to Invoice (Base)" := 0;
        END;

        IF ("Qty. to Consume" * Quantity < 0) OR
           (ABS("Qty. to Consume") > ABS(MaxQtyToConsume))
        THEN
          ERROR(
            Text028,
            MaxQtyToConsume);
        IF ("Qty. to Consume (Base)" * "Quantity (Base)" < 0) OR
           (ABS("Qty. to Consume (Base)") > ABS(MaxQtyToConsumeBase))
        THEN
          ERROR(
            Text032,
            MaxQtyToConsumeBase);

        IF (xRec."Qty. to Consume" <> "Qty. to Consume") OR
           (xRec."Qty. to Consume (Base)" <> "Qty. to Consume (Base)")
        THEN
          VALIDATE("Line Discount %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo = FieldNo("Qty. to Consume") then
          CheckWarehouse;

        if "Qty. to Consume" < 0 then
          FieldError("Qty. to Consume",Text029);

        if "Qty. to Consume" = MaxQtyToConsume then
          InitQtyToConsume
        else begin
          "Qty. to Consume (Base)" := CalcBaseQty("Qty. to Consume");
          InitQtyToInvoice;
        end;

        if "Qty. to Consume" > 0 then begin
        #15..18
        end;

        if ("Qty. to Consume" * Quantity < 0) or
           (Abs("Qty. to Consume") > Abs(MaxQtyToConsume))
        then
          Error(
            Text028,
            MaxQtyToConsume);
        if ("Qty. to Consume (Base)" * "Quantity (Base)" < 0) or
           (Abs("Qty. to Consume (Base)") > Abs(MaxQtyToConsumeBase))
        then
          Error(
        #31..33
        if (xRec."Qty. to Consume" <> "Qty. to Consume") or
           (xRec."Qty. to Consume (Base)" <> "Qty. to Consume (Base)")
        then
          Validate("Line Discount %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Consume (Base)"(Field 5919).OnValidate". Please convert manually.

        //trigger  to Consume (Base)"(Field 5919)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF LineRequiresShipmentOrReceipt THEN
          EXIT;
        IF "Qty. to Consume (Base)" < 0 THEN
          FIELDERROR("Qty. to Consume (Base)",Text029);

        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Qty. to Invoice","Qty. to Invoice (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if LineRequiresShipmentOrReceipt then
          exit;
        if "Qty. to Consume (Base)" < 0 then
          FieldError("Qty. to Consume (Base)",Text029);

        TestField("Qty. per Unit of Measure",1);
        Validate("Qty. to Invoice","Qty. to Invoice (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Fault Area Code"(Field 5929).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Fault Area Code" <> xRec."Fault Area Code" THEN
          "Fault Code" := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Fault Area Code"='' then
          "Fault Area Description" :=''
        else
        begin
          FaultArea.Get("Fault Area Code");
          "Fault Area Description" := FaultArea.Description;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Symptom Code"(Field 5930).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Symptom Code" <> xRec."Symptom Code" THEN
          "Fault Code" := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Symptom Code" ='' then
           "Symptom Description":=''
        else
        begin
          Symptom.Get("Symptom Code");
          "Symptom Description":=Symptom.Description;
        end;
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Fault Code"(Field 5931)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
        if "Fault Code"='' then
          "Fault Code Description" :=''
        else
        begin
          FaultCode.Reset;
          FaultCode.SetFilter(FaultCode.Code,"Fault Code");
          if FaultCode. FindFirst then
            "Fault Code Description" := FaultCode.Description;
        end;
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Resolution Code"(Field 5932)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
        if "Resolution Code"='' then
        "Resolution Description":=''
        else
        begin
        ResolutionCode.Get("Resolution Code");
        "Resolution Description" := ResolutionCode.Description;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Exclude Warranty"(Field 5933).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT (Type IN [Type::Item,Type::Resource]) THEN
          IF CurrFieldNo = FIELDNO("Exclude Warranty") THEN
            FIELDERROR(Type)
          ELSE
            EXIT;

        IF CurrFieldNo = FIELDNO("Exclude Warranty") THEN BEGIN
          ServItemLine.GET("Document Type","Document No.","Service Item Line No.");
          ServItemLine.TESTFIELD(Warranty,TRUE);
          IF "Exclude Warranty" AND (NOT Warranty) THEN
            FIELDERROR(Warranty);
        END;
        IF HideWarrantyWarning = FALSE THEN
          IF "Fault Reason Code" <> '' THEN BEGIN
            FaultReasonCode.GET("Fault Reason Code");
            IF FaultReasonCode."Exclude Warranty Discount" AND
               NOT "Exclude Warranty"
            THEN
              ERROR(
                Text008,
                FIELDCAPTION("Exclude Warranty"),
                FaultReasonCode.FIELDCAPTION("Exclude Warranty Discount"),
                "Fault Reason Code",
                FaultReasonCode.TABLECAPTION);
          END;
        IF HideWarrantyWarning = FALSE THEN
          IF "Exclude Warranty" <> xRec."Exclude Warranty" THEN
            IF NOT ConfirmManagement.ConfirmProcess(
                 STRSUBSTNO(Text009,FIELDCAPTION("Exclude Warranty")),TRUE)
            THEN BEGIN
              "Exclude Warranty" := xRec."Exclude Warranty";
              EXIT;
            END;
        VALIDATE("Contract No.");
        IF "Exclude Warranty" THEN
          VALIDATE(Warranty,FALSE)
        ELSE
          VALIDATE(Warranty,TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not (Type in [Type::Item,Type::Resource]) then
          if CurrFieldNo = FieldNo("Exclude Warranty") then
            FieldError(Type)
          else
            exit;

        if CurrFieldNo = FieldNo("Exclude Warranty") then begin
          ServItemLine.Get("Document Type","Document No.","Service Item Line No.");
          ServItemLine.TestField(Warranty,true);
          if "Exclude Warranty" and (not Warranty) then
            FieldError(Warranty);
        end;
        if HideWarrantyWarning = false then
          if "Fault Reason Code" <> '' then begin
            FaultReasonCode.Get("Fault Reason Code");
            if FaultReasonCode."Exclude Warranty Discount" and
               not "Exclude Warranty"
            then
              Error(
                Text008,
                FieldCaption("Exclude Warranty"),
                FaultReasonCode.FieldCaption("Exclude Warranty Discount"),
                "Fault Reason Code",
                FaultReasonCode.TableCaption);
          end;
        if HideWarrantyWarning = false then
          if "Exclude Warranty" <> xRec."Exclude Warranty" then
            if not ConfirmManagement.ConfirmProcess(
                 StrSubstNo(Text009,FieldCaption("Exclude Warranty")),true)
            then begin
              "Exclude Warranty" := xRec."Exclude Warranty";
              exit;
            end;
        Validate("Contract No.");
        if "Exclude Warranty" then
          Validate(Warranty,false)
        else
          Validate(Warranty,true);
        */
        //end;


        //Unsupported feature: CodeModification on "Warranty(Field 5934).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateDiscountsAmounts;
        UpdateUnitPrice(FIELDNO(Warranty));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateDiscountsAmounts;
        UpdateUnitPrice(FieldNo(Warranty));
        */
        //end;


        //Unsupported feature: CodeModification on ""Contract No."(Field 5936).OnLookup". Please convert manually.

        //trigger "(Field 5936)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetServHeader;
        ServContractHeader.FILTERGROUP(2);
        ServContractHeader.SETRANGE("Customer No.",ServHeader."Customer No.");
        ServContractHeader.SETRANGE("Contract Type",ServContractHeader."Contract Type"::Contract);
        ServContractHeader.FILTERGROUP(0);
        IF (PAGE.RUNMODAL(0,ServContractHeader) = ACTION::LookupOK) AND
           ("Document Type" IN ["Document Type"::Invoice,"Document Type"::"Credit Memo"])
        THEN
          VALIDATE("Contract No.",ServContractHeader."Contract No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetServHeader;
        ServContractHeader.FilterGroup(2);
        ServContractHeader.SetRange("Customer No.",ServHeader."Customer No.");
        ServContractHeader.SetRange("Contract Type",ServContractHeader."Contract Type"::Contract);
        ServContractHeader.FilterGroup(0);
        if (PAGE.RunModal(0,ServContractHeader) = ACTION::LookupOK) and
           ("Document Type" in ["Document Type"::Invoice,"Document Type"::"Credit Memo"])
        then
          Validate("Contract No.",ServContractHeader."Contract No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Contract No."(Field 5936).OnValidate". Please convert manually.

        //trigger "(Field 5936)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Shipment Line No." <> 0 THEN
          IF "Shipment No." <> '' THEN
            FIELDERROR("Contract No.");

        IF "Document Type" IN ["Document Type"::Invoice,"Document Type"::"Credit Memo"] THEN BEGIN
          IF "Contract No." <> xRec."Contract No." THEN BEGIN
            TESTFIELD("Appl.-to Service Entry",0);
            UpdateServDocRegister(FALSE);
          END;
        END ELSE BEGIN
          ServMgtSetup.GET;
          IF NOT ServItem.GET("Service Item No.") THEN
            CLEAR(ServItem);
          IF "Contract No." = '' THEN
            "Contract Disc. %" := 0
          ELSE BEGIN
            GetServHeader;
            IF ServContractHeader.GET(ServContractHeader."Contract Type"::Contract,"Contract No.") THEN BEGIN
              IF (ServContractHeader."Starting Date" <= WORKDATE) AND NOT "Exclude Contract Discount" THEN BEGIN
                IF NOT ContractGroup.GET(ServContractHeader."Contract Group Code") THEN
                  ContractGroup.INIT;
                IF NOT ContractGroup."Disc. on Contr. Orders Only" OR
                   (ContractGroup."Disc. on Contr. Orders Only" AND (ServHeader."Contract No." <> ''))
                THEN BEGIN
                  CASE Type OF
                    Type::" ":
                      "Contract Disc. %" := 0;
                    Type::Item:
                      BEGIN
                        ContractServDisc.INIT;
                        ContractServDisc."Contract Type" := ContractServDisc."Contract Type"::Contract;
                        ContractServDisc."Contract No." := ServContractHeader."Contract No.";
                        ContractServDisc.Type := ContractServDisc.Type::"Service Item Group";
                        ContractServDisc."No." := ServItem."Service Item Group Code";
                        ContractServDisc."Starting Date" := "Posting Date";
                        CODEUNIT.RUN(CODEUNIT::"ContractDiscount-Find",ContractServDisc);
                        "Contract Disc. %" := ContractServDisc."Discount %";
                      END;
                    Type::Resource:
                      BEGIN
                        Res.GET("No.");
                        ContractServDisc.INIT;
                        ContractServDisc."Contract Type" := ContractServDisc."Contract Type"::Contract;
                        ContractServDisc."Contract No." := ServContractHeader."Contract No.";
                        ContractServDisc.Type := ContractServDisc.Type::"Resource Group";
                        ContractServDisc."No." := Res."Resource Group No.";
                        ContractServDisc."Starting Date" := "Posting Date";
                        CODEUNIT.RUN(CODEUNIT::"ContractDiscount-Find",ContractServDisc);
                        "Contract Disc. %" := ContractServDisc."Discount %";
                      END;
                    Type::Cost:
                      BEGIN
                        ServCost.GET("No.");
                        ContractServDisc.INIT;
                        ContractServDisc."Contract Type" := ContractServDisc."Contract Type"::Contract;
                        ContractServDisc."Contract No." := ServContractHeader."Contract No.";
                        ContractServDisc.Type := ContractServDisc.Type::Cost;
                        ContractServDisc."No." := "No.";
                        ContractServDisc."Starting Date" := "Posting Date";
                        CODEUNIT.RUN(CODEUNIT::"ContractDiscount-Find",ContractServDisc);
                        "Contract Disc. %" := ContractServDisc."Discount %";
                      END;
                  END;
                END ELSE
                  "Contract Disc. %" := 0;
              END;
            END ELSE
              "Contract Disc. %" := 0;
          END;

          IF Warranty THEN
            CASE Type OF
              Type::Item:
                "Warranty Disc. %" := ServItem."Warranty % (Parts)";
              Type::Resource:
                "Warranty Disc. %" := ServItem."Warranty % (Labor)";
              ELSE
                "Warranty Disc. %" := 0;
            END;

          UpdateDiscountsAmounts;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Shipment Line No." <> 0 then
          if "Shipment No." <> '' then
            FieldError("Contract No.");

        if "Document Type" in ["Document Type"::Invoice,"Document Type"::"Credit Memo"] then begin
          if "Contract No." <> xRec."Contract No." then begin
            TestField("Appl.-to Service Entry",0);
            UpdateServDocRegister(false);
          end;
        end else begin
          ServMgtSetup.Get;
          if not ServItem.Get("Service Item No.") then
            Clear(ServItem);
          if "Contract No." = '' then
            "Contract Disc. %" := 0
          else begin
            GetServHeader;
            if ServContractHeader.Get(ServContractHeader."Contract Type"::Contract,"Contract No.") then begin
              if (ServContractHeader."Starting Date" <= WorkDate) and not "Exclude Contract Discount" then begin
                if not ContractGroup.Get(ServContractHeader."Contract Group Code") then
                  ContractGroup.Init;
                if not ContractGroup."Disc. on Contr. Orders Only" or
                   (ContractGroup."Disc. on Contr. Orders Only" and (ServHeader."Contract No." <> ''))
                then begin
                  case Type of
        #26..28
                      begin
                        ContractServDisc.Init;
        #31..35
                        CODEUNIT.Run(CODEUNIT::"ContractDiscount-Find",ContractServDisc);
                        "Contract Disc. %" := ContractServDisc."Discount %";
                      end;
                    Type::Resource:
                      begin
                        Res.Get("No.");
                        ContractServDisc.Init;
        #43..47
                        CODEUNIT.Run(CODEUNIT::"ContractDiscount-Find",ContractServDisc);
                        "Contract Disc. %" := ContractServDisc."Discount %";
                      end;
                    Type::Cost:
                      begin
                        ServCost.Get("No.");
                        ContractServDisc.Init;
        #55..59
                        CODEUNIT.Run(CODEUNIT::"ContractDiscount-Find",ContractServDisc);
                        "Contract Disc. %" := ContractServDisc."Discount %";
                      end;
                  end;
                end else
                  "Contract Disc. %" := 0;
              end;
            end else
              "Contract Disc. %" := 0;
          end;

          if Warranty then
            case Type of
        #73..76
              else
                "Warranty Disc. %" := 0;
            end;

          UpdateDiscountsAmounts;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Warranty Disc. %"(Field 5939).OnValidate". Please convert manually.

        //trigger  %"(Field 5939)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateUnitPrice(FIELDNO(Warranty));
        UpdateAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateUnitPrice(FieldNo(Warranty));
        UpdateAmounts;
        */
        //end;


        //Unsupported feature: CodeModification on ""Fault Reason Code"(Field 5967).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SetHideWarrantyWarning := TRUE;
        OldExcludeContractDiscount := "Exclude Contract Discount";
        IF FaultReasonCode.GET("Fault Reason Code") THEN BEGIN
          IF FaultReasonCode."Exclude Warranty Discount" AND
        #5..28
                VALIDATE("Contract No.")
              ELSE
                VALIDATE(Warranty);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {SetHideWarrantyWarning := TRUE;
        #2..31
        END;}
        if "Fault Reason Code"='' then
          "Fault Reason Description":=''
        else
        begin
          FaultReasonCode.Get("Fault Reason Code");
          "Fault Reason Description":=FaultReasonCode.Description;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Exclude Contract Discount"(Field 5969).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::"G/L Account" THEN
          FIELDERROR(Type);

        IF "Fault Reason Code" <> '' THEN BEGIN
          FaultReasonCode.GET("Fault Reason Code");
          IF FaultReasonCode."Exclude Contract Discount" AND
             NOT "Exclude Contract Discount"
          THEN
            ERROR(
              Text008,
              FIELDCAPTION("Exclude Contract Discount"),
              FaultReasonCode.FIELDCAPTION("Exclude Contract Discount"),
              "Fault Reason Code",
              FaultReasonCode.TABLECAPTION);
        END;

        IF "Exclude Contract Discount" <> xRec."Exclude Contract Discount" THEN BEGIN
          IF NOT ConfirmManagement.ConfirmProcess(
               STRSUBSTNO(Text009,FIELDCAPTION("Exclude Contract Discount")),TRUE)
          THEN BEGIN
            "Exclude Contract Discount" := xRec."Exclude Contract Discount";
            EXIT;
          END;
          VALIDATE("Contract No.");
          VALIDATE(Warranty);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::"G/L Account" then
          FieldError(Type);

        if "Fault Reason Code" <> '' then begin
          FaultReasonCode.Get("Fault Reason Code");
          if FaultReasonCode."Exclude Contract Discount" and
             not "Exclude Contract Discount"
          then
            Error(
              Text008,
              FieldCaption("Exclude Contract Discount"),
              FaultReasonCode.FieldCaption("Exclude Contract Discount"),
              "Fault Reason Code",
              FaultReasonCode.TableCaption);
        end;

        if "Exclude Contract Discount" <> xRec."Exclude Contract Discount" then begin
          if not ConfirmManagement.ConfirmProcess(
               StrSubstNo(Text009,FieldCaption("Exclude Contract Discount")),true)
          then begin
            "Exclude Contract Discount" := xRec."Exclude Contract Discount";
            exit;
          end;
          Validate("Contract No.");
          Validate(Warranty);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Return Reason Code"(Field 6608).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Return Reason Code" = '' THEN
          UpdateUnitPrice(FIELDNO("Return Reason Code"));

        IF ReturnReason.GET("Return Reason Code") THEN BEGIN
          IF (ReturnReason."Default Location Code" <> '') AND (NOT IsNonInventoriableItem) THEN
            VALIDATE("Location Code",ReturnReason."Default Location Code");
          IF ReturnReason."Inventory Value Zero" THEN BEGIN
            VALIDATE("Unit Cost (LCY)",0);
            VALIDATE("Unit Price",0);
          END ELSE
            IF "Unit Price" = 0 THEN
              UpdateUnitPrice(FIELDNO("Return Reason Code"));
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Return Reason Code" = '' then
          UpdateUnitPrice(FieldNo("Return Reason Code"));

        if ReturnReason.Get("Return Reason Code") then begin
          if (ReturnReason."Default Location Code" <> '') and (not IsNonInventoriableItem) then
            Validate("Location Code",ReturnReason."Default Location Code");
          if ReturnReason."Inventory Value Zero" then begin
            Validate("Unit Cost (LCY)",0);
            Validate("Unit Price",0);
          end else
            if "Unit Price" = 0 then
              UpdateUnitPrice(FieldNo("Return Reason Code"));
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Customer Disc. Group"(Field 7002).OnValidate". Please convert manually.

        //trigger  Group"(Field 7002)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Item THEN
          UpdateUnitPrice(FIELDNO("Customer Disc. Group"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Item then
          UpdateUnitPrice(FieldNo("Customer Disc. Group"));
        */
        //end;
        field(16500; "Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Tax Amount',
                        ENN = 'Tax Amount';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 4;
            Editable = false;
        }
        field(16501; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(16502; "Excise Prod. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Prod. Posting Group',
                        ENN = 'Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Prod. Posting Group";
        }
        field(16503; "Excise Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Amount',
                        ENN = 'Excise Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16504; "Amount Including Excise"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Excise',
                        ENN = 'Amount Including Excise';
            DataClassification = ToBeClassified;
        }
        field(16505; "Excise Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Base Amount',
                        ENN = 'Excise Base Amount';
            DataClassification = ToBeClassified;
        }
        field(16506; "Excise Accounting Type"; Option)
        {
            CaptionML = ENU = 'Excise Accounting Type',
                        ENN = 'Excise Accounting Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'With CENVAT,Without CENVAT',
                              ENN = 'With CENVAT,Without CENVAT';
            OptionMembers = "With CENVAT","Without CENVAT";
        }
        field(16507; "Excise Base Quantity"; Decimal)
        {
            CaptionML = ENU = 'Excise Base Quantity',
                        ENN = 'Excise Base Quantity';
            DataClassification = ToBeClassified;
        }
        field(16508; "Tax %"; Decimal)
        {
            CaptionML = ENU = 'Tax %',
                        ENN = 'Tax %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;

            trigger OnValidate();
            begin
                UpdateAmounts;
            end;
        }
        field(16509; "Amount Including Tax"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Tax',
                        ENN = 'Amount Including Tax';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16510; "Amount Added to Excise Base"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Excise Base',
                        ENN = 'Amount Added to Excise Base';
            DataClassification = ToBeClassified;
        }
        field(16511; "Amount Added to Tax Base"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Tax Base',
                        ENN = 'Amount Added to Tax Base';
            DataClassification = ToBeClassified;
        }
        field(16512; "Tax Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Tax Base Amount',
                        ENN = 'Tax Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16513; "BED Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'BED Amount',
                        ENN = 'BED Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16514; "AED(GSI) Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(GSI) Amount',
                        ENN = 'AED(GSI) Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16515; "SED Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'SED Amount',
                        ENN = 'SED Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16516; "SAED Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'SAED Amount',
                        ENN = 'SAED Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16517; "CESS Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'CESS Amount',
                        ENN = 'CESS Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16518; "NCCD Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'NCCD Amount',
                        ENN = 'NCCD Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16519; "eCess Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'eCess Amount',
                        ENN = 'eCess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16520; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;

            trigger OnLookup();
            var
                StateForm: Record "State Forms";
            begin
            end;

            trigger OnValidate();
            begin
                UpdateAmounts;
            end;
        }
        field(16521; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
        }
        field(16522; State; Code[10])
        {
            CaptionML = ENU = 'State',
                        ENN = 'State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(16523; "Amount To Customer"; Decimal)
        {
            CaptionML = ENU = 'Amount To Customer',
                        ENN = 'Amount To Customer';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16524; "Charges To Customer"; Decimal)
        {
            CaptionML = ENU = 'Charges To Customer',
                        ENN = 'Charges To Customer';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16525; "Service Tax Group"; Code[20])
        {
            CaptionML = ENU = 'Service Tax Group',
                        ENN = 'Service Tax Group';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Groups".Code;
        }
        field(16526; "Service Tax Base"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Base',
                        ENN = 'Service Tax Base';
            DataClassification = ToBeClassified;
        }
        field(16527; "Service Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Amount',
                        ENN = 'Service Tax Amount';
            DataClassification = ToBeClassified;
        }
        field(16528; "Service Tax Registration No."; Code[20])
        {
            CaptionML = ENU = 'Service Tax Registration No.',
                        ENN = 'Service Tax Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Registration Nos.".Code;
        }
        field(16529; "Service Tax eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax eCess Amount',
                        ENN = 'Service Tax eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(16530; "ADET Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'ADET Amount',
                        ENN = 'ADET Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16531; "AED(TTA) Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(TTA) Amount',
                        ENN = 'AED(TTA) Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16532; "Free Supply"; Boolean)
        {
            CaptionML = ENU = 'Free Supply',
                        ENN = 'Free Supply';
            DataClassification = ToBeClassified;
        }
        field(16533; "ADE Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'ADE Amount',
                        ENN = 'ADE Amount';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(16534; "Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'Assessable Value',
                        ENN = 'Assessable Value';
            DataClassification = ToBeClassified;
        }
        field(16535; "VAT Type"; Option)
        {
            CaptionML = ENU = 'VAT Type',
                        ENN = 'VAT Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Item,Capital Goods',
                              ENN = ' ,Item,Capital Goods';
            OptionMembers = " ",Item,"Capital Goods";
        }
        field(16536; "SHE Cess Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'SHE Cess Amount',
                        ENN = 'SHE Cess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16537; "Service Tax SHE Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SHE Cess Amount',
                        ENN = 'Service Tax SHE Cess Amount';
            DataClassification = ToBeClassified;
        }
        field(16538; "Standard Deduction %"; Decimal)
        {
            CaptionML = ENU = 'Standard Deduction %',
                        ENN = 'Standard Deduction %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16539; "Standard Deduction Amount"; Decimal)
        {
            CaptionML = ENU = 'Standard Deduction Amount',
                        ENN = 'Standard Deduction Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16540; Supplementary; Boolean)
        {
            CaptionML = ENU = 'Supplementary',
                        ENN = 'Supplementary';
            DataClassification = ToBeClassified;
        }
        field(16541; "Source Document Type"; Option)
        {
            CaptionML = ENU = 'Source Document Type',
                        ENN = 'Source Document Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Posted Invoice,Posted Credit Memo',
                              ENN = 'Posted Invoice,Posted Credit Memo';
            OptionMembers = "Posted Invoice","Posted Credit Memo";
        }
        field(16542; "Source Document No."; Code[20])
        {
            CaptionML = ENU = 'Source Document No.',
                        ENN = 'Source Document No.';
            DataClassification = ToBeClassified;
        }
        field(16543; "ADC VAT Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'ADC VAT Amount',
                        ENN = 'ADC VAT Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16544; "CIF Amount"; Decimal)
        {
            CaptionML = ENU = 'CIF Amount',
                        ENN = 'CIF Amount';
            DataClassification = ToBeClassified;
        }
        field(16545; "BCD Amount"; Decimal)
        {
            CaptionML = ENU = 'BCD Amount',
                        ENN = 'BCD Amount';
            DataClassification = ToBeClassified;
        }
        field(16546; CVD; Boolean)
        {
            CaptionML = ENU = 'CVD',
                        ENN = 'CVD';
            DataClassification = ToBeClassified;
        }
        field(16550; "Custom eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom eCess Amount',
                        ENN = 'Custom eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(16551; "Custom SHECess Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom SHECess Amount',
                        ENN = 'Custom SHECess Amount';
            DataClassification = ToBeClassified;
        }
        field(16552; "Excise Effective Rate"; Decimal)
        {
            CaptionML = ENU = 'Excise Effective Rate',
                        ENN = 'Excise Effective Rate';
            DataClassification = ToBeClassified;
        }
        field(16553; "Item Charge Entry"; Boolean)
        {
            CaptionML = ENU = 'Item Charge Entry',
                        ENN = 'Item Charge Entry';
            DataClassification = ToBeClassified;
        }
        field(16554; "Tot. Serv Tax Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'Tot. Serv Tax Amount (Intm)',
                        ENN = 'Tot. Serv Tax Amount (Intm)';
            DataClassification = ToBeClassified;
        }
        field(16555; "S. Tax Base Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'S. Tax Base Amount (Intm)',
                        ENN = 'S. Tax Base Amount (Intm)';
            DataClassification = ToBeClassified;
        }
        field(16556; "S. Tax Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'S. Tax Amount (Intm)',
                        ENN = 'S. Tax Amount (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16557; "S. Tax eCess Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'S. Tax eCess Amount (Intm)',
                        ENN = 'S. Tax eCess Amount (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16558; "S. Tax SHE Cess Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'S. Tax SHE Cess Amount (Intm)',
                        ENN = 'S. Tax SHE Cess Amount (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16559; "Amt. Incl. Service Tax (Intm)"; Decimal)
        {
            CaptionML = ENU = 'Amt. Incl. Service Tax (Intm)',
                        ENN = 'Amt. Incl. Service Tax (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16560; "Service Tax SBC Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC Amount',
                        ENN = 'Service Tax SBC Amount';
            DataClassification = ToBeClassified;
        }
        field(16561; "S. Tax SBC Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'S. Tax SBC Amount (Intm)',
                        ENN = 'S. Tax SBC Amount (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16562; "KK Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'KK Cess Amount',
                        ENN = 'KK Cess Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16563; "KK Cess Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'KK Cess Amount (Intm)',
                        ENN = 'KK Cess Amount (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16601; "GST Place Of Supply"; Option)
        {
            CaptionML = ENU = 'GST Place Of Supply',
                        ENN = 'GST Place Of Supply';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Bill-to Address,Ship-to Address,Location Address',
                              ENN = ' ,Bill-to Address,Ship-to Address,Location Address';
            OptionMembers = " ","Bill-to Address","Ship-to Address","Location Address";
        }
        field(16602; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            TableRelation = "GST Group";
        }
        field(16603; "GST Group Type"; Option)
        {
            CaptionML = ENU = 'GST Group Type',
                        ENN = 'GST Group Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Goods,Service',
                              ENN = 'Goods,Service';
            OptionMembers = Goods,Service;
        }
        field(16604; "GST Base Amount"; Decimal)
        {
            CaptionML = ENU = 'GST Base Amount',
                        ENN = 'GST Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16605; "GST %"; Decimal)
        {
            CaptionML = ENU = 'GST %',
                        ENN = 'GST %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16606; "Total GST Amount"; Decimal)
        {
            CaptionML = ENU = 'Total GST Amount',
                        ENN = 'Total GST Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16607; "HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'HSN/SAC Code',
                        ENN = 'HSN/SAC Code';
            DataClassification = ToBeClassified;
            TableRelation = "HSN/SAC".Code WHERE("GST Group Code" = FIELD("GST Group Code"));

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(16608; "GST Jurisdiction Type"; Option)
        {
            CaptionML = ENU = 'GST Jurisdiction Type',
                        ENN = 'GST Jurisdiction Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Intrastate,Interstate',
                              ENN = 'Intrastate,Interstate';
            OptionMembers = Intrastate,Interstate;
        }
        field(16609; "Invoice Type"; Option)
        {
            CaptionML = ENU = 'Invoice Type',
                        ENN = 'Invoice Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable',
                              ENN = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable';
            OptionMembers = " ","Bill of Supply",Export,Supplementary,"Debit Note","Non-GST",Taxable;
        }
        field(16610; Exempted; Boolean)
        {
            CaptionML = ENU = 'Exempted',
                        ENN = 'Exempted';
            DataClassification = ToBeClassified;
        }
        field(16612; "GST On Assessable Value"; Boolean)
        {
            CaptionML = ENU = 'GST On Assessable Value',
                        ENN = 'GST On Assessable Value';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
                GSTGroup: Record "GST Group";
            begin
            end;
        }
        field(16613; "GST Assessable Value (LCY)"; Decimal)
        {
            CaptionML = ENU = 'GST Assessable Value (LCY)',
                        ENN = 'GST Assessable Value (LCY)';
            DataClassification = ToBeClassified;
        }
        field(16624; "Non-GST Line"; Boolean)
        {
            CaptionML = ENU = 'Non-GST Line',
                        ENN = 'Non-GST Line';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
                TransactionType: Option Purchase,Sales,Transfer,Service,"Service Transfer",Production;
            begin
            end;
        }
        field(60003; "Resolution Description"; Text[50])
        {
            Description = 'Editable=No';
        }
        field(60004; "Fault Code Description"; Text[50])
        {
            Description = 'Editable=No';
        }
        field(60005; "Fault Area Description"; Text[30])
        {
            Description = 'Editable=No';
        }
        field(60006; "Symptom Description"; Text[80])
        {
            Description = 'Editable=No';
        }
        field(60009; "To Location"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE("Dimension Code" = FILTER('LOCATIONS'));
        }
        field(60011; "From Location"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE("Dimension Code" = FILTER('LOCATIONS'));
        }
        field(60012; Account; Boolean)
        {

            trigger OnValidate();
            begin
                "Sent date time" := CurrentDateTime;
            end;
        }
        field(60013; "WK.ST.Date"; Date)
        {
        }
        field(60014; "WK.FH.Date"; Date)
        {
        }
        field(60015; Levels; Option)
        {
            OptionMembers = "1","2","3","4","5","6","7";
        }
        field(60016; Status; Code[10])
        {
            TableRelation = "Repair Status".Code;
        }
        field(60017; "Sub Service Item No."; Code[30])
        {
            TableRelation = "Service Item"."No." WHERE("Customer No." = FIELD("Customer No."));

            trigger OnValidate();
            begin
                ServItem.SetRange(ServItem."No.", "Sub Service Item No.");
                if ServItem.Find('-') then
                    // "Sub Service Item Serial No.":=ServItem."Serial No.";
                    "No." := ServItem."Item No.";
                //Unitcost:=Item."Avg Unit Cost";
                Description := ServItem.Description;
                "Unit of Measure Code" := ServItem."Unit of Measure Code";
            end;
        }
        field(60018; "Service item Lot No"; Code[20])
        {
        }
        field(60019; Zone; Code[10])
        {
        }
        field(60020; Division; Code[10])
        {
        }
        field(60021; Station; Code[10])
        {
        }
        field(60022; "Sent date time"; DateTime)
        {
        }
        field(60023; Unitcost; Decimal)
        {
        }
        field(60024; "Sub Service item serial No."; Code[20])
        {
        }
        field(60025; Observations; Text[250])
        {
        }
        field(60026; "Component Legending"; Text[100])
        {
        }
        field(60027; "Fault Reason Description"; Text[80])
        {
        }
        field(60028; "Sub Module Code"; Code[20])
        {
            TableRelation = "Troubleshooting Header"."No.";

            trigger OnValidate();
            begin
                if "Sub Module Code" = '' then
                    "Sub Module Descrption" := ''
                else begin
                    TSH.Get("Sub Module Code");
                    "Sub Module Descrption" := TSH.Description;
                end;
            end;
        }
        field(60029; "Sub Module Descrption"; Text[50])
        {
        }
        field(60030; "Material Issue No"; Code[20])
        {
        }
        field(60031; "Material Issue Line No"; Integer)
        {
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
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document Type,Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No.,Order Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Item No.,Type,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Bill-to Customer No.,Currency Code,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Service Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Service Item Line No.,Serv. Price Adjmt. Gr. Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Service Item Line No.,Type,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No.,Variant Code,Location Code,Needed by Date,Document Type,Shortcut Dimension 1 Code,Shortcut Dimension 2 Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Appl.-to Service Entry"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Service Item Line No.,Component Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Fault Reason Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Customer No.,Shipment No.,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Location Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Type,No."(Key)". Please convert manually.

        key(Key1; "Document Type", "Document No.", "Line No.")
        {
        }
        key(Key2; Type, "No.", "Order Date")
        {
        }
        key(Key3; "Service Item No.", Type, "Posting Date")
        {
        }
        key(Key4; "Document Type", "Bill-to Customer No.", "Currency Code", "Document No.")
        {
            SumIndexFields = "Outstanding Amount", "Shipped Not Invoiced", "Outstanding Amount (LCY)", "Shipped Not Invoiced (LCY)";
        }
        key(Key5; "Document Type", "Document No.", "Service Item No.")
        {
        }
        key(Key6; "Document Type", "Document No.", "Service Item Line No.", "Serv. Price Adjmt. Gr. Code")
        {
            SumIndexFields = "Line Amount";
        }
        key(Key7; "Document Type", "Document No.", "Service Item Line No.", Type, "No.")
        {
        }
        key(Key8; Type, "No.", "Variant Code", "Location Code", "Needed by Date", "Document Type", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code")
        {
            SumIndexFields = "Quantity (Base)", "Outstanding Qty. (Base)";
        }
        key(Key9; "Appl.-to Service Entry")
        {
        }
        key(Key10; "Document Type", "Document No.", "Service Item Line No.", "Component Line No.")
        {
        }
        key(Key11; "Fault Reason Code")
        {
        }
        key(Key12; "Document Type", "Customer No.", "Shipment No.", "Document No.")
        {
            SumIndexFields = "Outstanding Amount (LCY)";
        }
        key(Key13; "Document Type", "Document No.", "Location Code")
        {
        }
        key(Key14; "Document Type", "Document No.", Type, "No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestStatusOpen;
    IF Type = Type::Item THEN
      WhseValidateSourceLine.ServiceLineDelete(Rec);
    IF Type IN [Type::"G/L Account",Type::Cost,Type::Resource] THEN
      TESTFIELD("Qty. Shipped Not Invoiced",0);

    IF ("Document Type" = "Document Type"::Invoice) AND ("Appl.-to Service Entry" > 0) THEN
      ERROR(Text045);

    IF (Quantity <> 0) AND ItemExists("No.") THEN BEGIN
      ReserveServLine.DeleteLine(Rec);
      CALCFIELDS("Reserved Qty. (Base)");
      TESTFIELD("Reserved Qty. (Base)",0);
      IF "Shipment No." = '' THEN
        TESTFIELD("Qty. Shipped Not Invoiced",0);
    END;

    ReserveServLine.DeleteLine(Rec);
    IF (Type = Type::Item) AND Item.GET("No.") THEN
      CatalogItemMgt.DelNonStockFSM(Rec);

    IF (Type <> Type::" ") AND
       (("Contract No." <> '') OR
        ("Shipment No." <> ''))
    THEN
      UpdateServDocRegister(TRUE);

    IF "Line No." <> 0 THEN BEGIN
      ServiceLine2.RESET;
      ServiceLine2.SETRANGE("Document Type","Document Type");
      ServiceLine2.SETRANGE("Document No.","Document No.");
      ServiceLine2.SETRANGE("Attached to Line No.","Line No.");
      ServiceLine2.SETFILTER("Line No.",'<>%1',"Line No.");
      ServiceLine2.DELETEALL(TRUE);
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestStatusOpen;
    if Type = Type::Item then
      WhseValidateSourceLine.ServiceLineDelete(Rec);
    if Type in [Type::"G/L Account",Type::Cost,Type::Resource] then
      TestField("Qty. Shipped Not Invoiced",0);

    if ("Document Type" = "Document Type"::Invoice) and ("Appl.-to Service Entry" > 0) then
      Error(Text045);

    if (Quantity <> 0) and ItemExists("No.") then begin
      ReserveServLine.DeleteLine(Rec);
      CalcFields("Reserved Qty. (Base)");
      TestField("Reserved Qty. (Base)",0);
      if "Shipment No." = '' then
        TestField("Qty. Shipped Not Invoiced",0);
    end;

    ReserveServLine.DeleteLine(Rec);
    if (Type = Type::Item) and Item.Get("No.") then
      CatalogItemMgt.DelNonStockFSM(Rec);

    if (Type <> Type::" ") and
       (("Contract No." <> '') or
        ("Shipment No." <> ''))
    then
      UpdateServDocRegister(true);

    if "Line No." <> 0 then begin
      ServiceLine2.Reset;
      ServiceLine2.SetRange("Document Type","Document Type");
      ServiceLine2.SetRange("Document No.","Document No.");
      ServiceLine2.SetRange("Attached to Line No.","Line No.");
      ServiceLine2.SetFilter("Line No.",'<>%1',"Line No.");
      ServiceLine2.DeleteAll(true);
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF TempTrackingSpecification.FINDFIRST THEN
      InsertItemTracking;

    IF Quantity <> 0 THEN
      ReserveServLine.VerifyQuantity(Rec,xRec);

    IF Type = Type::Item THEN
      IF ServHeader.InventoryPickConflict("Document Type","Document No.",ServHeader."Shipping Advice") THEN
        DisplayConflictError(ServHeader.InvPickConflictResolutionTxt);

    IsCustCrLimitChecked := FALSE;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if TempTrackingSpecification.FindFirst then
      InsertItemTracking;

    if Quantity <> 0 then
      ReserveServLine.VerifyQuantity(Rec,xRec);

    if Type = Type::Item then
      if ServHeader.InventoryPickConflict("Document Type","Document No.",ServHeader."Shipping Advice") then
        DisplayConflictError(ServHeader.InvPickConflictResolutionTxt);

    IsCustCrLimitChecked := false;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "Document Type" = ServiceLine."Document Type"::Invoice THEN
      CheckIfCanBeModified;

    IF "Spare Part Action" IN
       ["Spare Part Action"::"Component Replaced",
        "Spare Part Action"::"Component Installed",
        "Spare Part Action"::" "]
    THEN BEGIN
      IF (Type <> xRec.Type) OR ("No." <> xRec."No.") THEN
        ReserveServLine.DeleteLine(Rec);
      UpdateReservation(0);
    END;

    UpdateServiceLedgerEntry;
    IsCustCrLimitChecked := FALSE;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Document Type" = ServiceLine."Document Type"::Invoice then
      CheckIfCanBeModified;

    if "Spare Part Action" in
    #5..7
    then begin
      if (Type <> xRec.Type) or ("No." <> xRec."No.") then
        ReserveServLine.DeleteLine(Rec);
      UpdateReservation(0);
    end;

    UpdateServiceLedgerEntry;
    IsCustCrLimitChecked := false;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text002,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text002,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Location Code"(Field 7).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Location Code" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Location Code" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Quantity(Field 15).OnValidate.Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Quantity : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Quantity : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Quantity(Field 15).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Quantity : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Quantity : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit Cost (LCY)"(Field 23).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit Cost  : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit Cost  : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Appl.-to Item Entry"(Field 38).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Appl.-to Item Entry" : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Appl.-to Item Entry" : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job No."(Field 45).OnValidate.Job(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job No." : 167;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job No." : Job;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Work Type Code"(Field 52).OnValidate.WorkType(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Work Type Code" : 200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Work Type Code" : "Work Type";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Outstanding Amount"(Field 57).OnValidate.Currency2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Outstanding Amount" : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Outstanding Amount" : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Shipped Not Invoiced"(Field 59).OnValidate.Currency2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Shipped Not Invoiced" : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Shipped Not Invoiced" : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Shipment No."(Field 63).OnLookup.ServShptHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Shipment No." : 5990;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Shipment No." : "Service Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Shipment No."(Field 63).OnValidate.ServShptHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Shipment No." : 5990;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Shipment No." : "Service Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Shipment No."(Field 63).OnValidate.ServDocReg(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Shipment No." : 5936;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Shipment No." : "Service Document Register";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Gen. Bus. Posting Group"(Field 74).OnValidate.GenBusPostingGroup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Gen. Bus. Posting Group" : 250;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Gen. Bus. Posting Group" : "Gen. Business Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Gen. Prod. Posting Group"(Field 75).OnValidate.GenProdPostingGroup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Gen. Prod. Posting Group" : 251;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Gen. Prod. Posting Group" : "Gen. Product Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""VAT Prod. Posting Group"(Field 90).OnValidate.VATPostingSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"VAT Prod. Posting Group" : 325;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"VAT Prod. Posting Group" : "VAT Posting Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Reserve(Field 96).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Reserve : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Reserve : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Line Amount"(Field 103).OnValidate.ServAmountsMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Line Amount" : 5986;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Line Amount" : "Serv-Amounts Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job Planning Line No."(Field 1019).OnLookup.JobPlanningLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job Planning Line No." : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job Planning Line No." : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job Planning Line No."(Field 1019).OnValidate.JobPlanningLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job Planning Line No." : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job Planning Line No." : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job Remaining Qty."(Field 1030).OnValidate.JobPlanningLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job Remaining Qty." : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job Remaining Qty." : "Job Planning Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 5402).OnValidate.Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 5402).OnValidate.ItemVariant(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 5403).OnLookup.WMSManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 5403).OnValidate.WMSManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 5403).OnValidate.WhseIntegrationManagement(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 5407).OnValidate.Item(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 5407).OnValidate.UnitOfMeasure(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 204;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : "Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 5407).OnValidate.UnitOfMeasureTranslation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : "Unit of Measure Translation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 5407).OnValidate.ResUnitofMeasure(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 205;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : "Resource Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Shipping Agent Service Code"(Field 5797).OnValidate.ShippingAgentServices(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Shipping Agent Service Code" : 5790;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Shipping Agent Service Code" : "Shipping Agent Services";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Appl.-from Item Entry"(Field 5811).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Appl.-from Item Entry" : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Appl.-from Item Entry" : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Exclude Warranty"(Field 5933).OnValidate.ConfirmManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Exclude Warranty" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Exclude Warranty" : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Contract No."(Field 5936).OnLookup.ServContractHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Contract No." : 5965;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Contract No." : "Service Contract Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Contract No."(Field 5936).OnValidate.Res(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Contract No." : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Contract No." : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Contract No."(Field 5936).OnValidate.ServCost(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Contract No." : 5905;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Contract No." : "Service Cost";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Contract No."(Field 5936).OnValidate.ContractGroup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Contract No." : 5966;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Contract No." : "Contract Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Contract No."(Field 5936).OnValidate.ContractServDisc(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Contract No." : 5972;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Contract No." : "Contract/Service Discount";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Contract No."(Field 5936).OnValidate.ServContractHeader(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Contract No." : 5965;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Contract No." : "Service Contract Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Exclude Contract Discount"(Field 5969).OnValidate.ConfirmManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Exclude Contract Discount" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Exclude Contract Discount" : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Return Reason Code"(Field 6608).OnValidate.ReturnReason(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Return Reason Code" : 6635;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Return Reason Code" : "Return Reason";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ServiceLine2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ServiceLine2 : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ServiceLine2 : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckItemAvailable(PROCEDURE 3).ItemCheckAvail(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckItemAvailable : 311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckItemAvailable : "Item-Check Avail.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 26).SourceCodeSetup(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReplaceServItem(PROCEDURE 8).Item(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReplaceServItem : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReplaceServItem : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReplaceServItem(PROCEDURE 8).ServItemReplacement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReplaceServItem : 5985;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReplaceServItem : "Service Item Replacement";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindSerialNoStorageLocation(PROCEDURE 86).ItemLedgerEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindSerialNoStorageLocation : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindSerialNoStorageLocation : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckItemTrackingCode(PROCEDURE 87).ItemTrackingCode(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckItemTrackingCode : 6502;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckItemTrackingCode : "Item Tracking Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ErrorIfAlreadySelectedSI(PROCEDURE 107).Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ErrorIfAlreadySelectedSI : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ErrorIfAlreadySelectedSI : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalculateDiscount(PROCEDURE 7).SalesPriceCalcMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalculateDiscount : 7000;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalculateDiscount : "Sales Price Calc. Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAmounts(PROCEDURE 13).CustCheckCrLimit(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateAmounts : 312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateAmounts : "Cust-Check Cr. Limit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InitHeaderDefaults(PROCEDURE 90).ServOrderMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InitHeaderDefaults : 5900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InitHeaderDefaults : ServOrderManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateUnitPrice(PROCEDURE 19).SalesPriceCalcMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateUnitPrice : 7000;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateUnitPrice : "Sales Price Calc. Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowReservation(PROCEDURE 10).Reservation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowReservation : 498;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowReservation : Reservation;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowReservationEntries(PROCEDURE 21).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowReservationEntries : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowReservationEntries : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowReservationEntries(PROCEDURE 21).ReservEngineMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowReservationEntries : 99000831;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowReservationEntries : "Reservation Engine Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AutoReserve(PROCEDURE 39).ServiceMgtSetup(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AutoReserve : 5911;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AutoReserve : "Service Mgt. Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AutoReserve(PROCEDURE 39).ReservationEntry(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AutoReserve : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AutoReserve : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AutoReserve(PROCEDURE 39).ReservMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AutoReserve : 99000845;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AutoReserve : "Reservation Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AutoReserve(PROCEDURE 39).ConfirmManagement(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AutoReserve : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AutoReserve : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ClearFields(PROCEDURE 6).TempServLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ClearFields : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ClearFields : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowNonstock(PROCEDURE 32).NonstockItem(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowNonstock : 5718;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowNonstock : "Nonstock Item";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowNonstock(PROCEDURE 32).ConfigTemplateHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowNonstock : 8618;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowNonstock : "Config. Template Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowNonstock(PROCEDURE 32).ItemTemplate(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowNonstock : 1301;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowNonstock : "Mini Item Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestConfigTemplateLineField(PROCEDURE 102).ConfigTemplateLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestConfigTemplateLineField : 8619;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestConfigTemplateLineField : "Config. Template Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromCost(PROCEDURE 94).ServCost(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromCost : 5905;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromCost : "Service Cost";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromCost(PROCEDURE 94).GLAcc(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromCost : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromCost : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromCost(PROCEDURE 94).ConfirmManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromCost : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromCost : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromStdTxt(PROCEDURE 91).StandardText(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromStdTxt : 7;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromStdTxt : "Standard Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromGLAccount(PROCEDURE 92).GLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromGLAccount : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromGLAccount : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromItem(PROCEDURE 93).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromItem : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromItem : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromServItem(PROCEDURE 96).ServItem2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromServItem : 5940;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromServItem : "Service Item";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromServItem(PROCEDURE 96).ServItemComponent(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromServItem : 5941;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromServItem : "Service Item Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromResource(PROCEDURE 98).Res(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromResource : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromResource : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemSub(PROCEDURE 30).ItemSubstMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemSub : 5701;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemSub : "Item Subst.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertItemTracking(PROCEDURE 20).ReservEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertItemTracking : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertItemTracking : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertItemTracking(PROCEDURE 20).CreateReservEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertItemTracking : 99000830;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertItemTracking : "Create Reserv. Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultBin(PROCEDURE 50).Bin(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultBin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultBin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultBin(PROCEDURE 50).BinType(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultBin : 7303;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultBin : "Bin Type";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultBin(PROCEDURE 50).WMSManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultBin : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetItemTranslation(PROCEDURE 42).ItemTranslation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetItemTranslation : 30;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetItemTranslation : "Item Translation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetUnitCost(PROCEDURE 5808).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetUnitCost : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetUnitCost : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindResUnitCost(PROCEDURE 54).ResCost(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindResUnitCost : 202;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindResUnitCost : "Resource Cost";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemExists(PROCEDURE 63).Item2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemExists : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemExists : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFieldCaption(PROCEDURE 31).Field(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFieldCaption : 2000000041;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFieldCaption : Field;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateVATAmounts(PROCEDURE 38).ServiceLine2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateVATAmounts : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateVATAmounts : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcVATAmountLines(PROCEDURE 35).Cust(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcVATAmountLines : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcVATAmountLines : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcVATAmountLines(PROCEDURE 35).CustPostingGroup(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcVATAmountLines : 92;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcVATAmountLines : "Customer Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcVATAmountLines(PROCEDURE 35).Currency(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcVATAmountLines : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcVATAmountLines : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcVATAmountLines(PROCEDURE 35).SalesSetup(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcVATAmountLines : 311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcVATAmountLines : "Sales & Receivables Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateVATOnLines(PROCEDURE 36).TempVATAmountLineRemainder(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateVATOnLines : 290;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateVATOnLines : "VAT Amount Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateVATOnLines(PROCEDURE 36).Currency(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateVATOnLines : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateVATOnLines : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcUnitCost(PROCEDURE 5809).ValueEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcUnitCost : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcUnitCost : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectItemEntry(PROCEDURE 45).ItemLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectItemEntry : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectItemEntry : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectItemEntry(PROCEDURE 45).ServLine3(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectItemEntry : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectItemEntry : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AdjustMaxLabourUnitPrice(PROCEDURE 23).Res(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AdjustMaxLabourUnitPrice : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AdjustMaxLabourUnitPrice : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmAdjPriceLineChange(PROCEDURE 41).ConfirmManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmAdjPriceLineChange : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmAdjPriceLineChange : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckApplFromItemLedgEntry(PROCEDURE 157).ItemTrackingLines(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckApplFromItemLedgEntry : 6510;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckApplFromItemLedgEntry : "Item Tracking Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SplitResourceLine(PROCEDURE 43).ConfirmManagement(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SplitResourceLine : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SplitResourceLine : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateServDocRegister(PROCEDURE 1102601000).ServiceLine2(Variable 1102601001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateServDocRegister : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateServDocRegister : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateServDocRegister(PROCEDURE 1102601000).ServDocReg(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateServDocRegister : 5936;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateServDocRegister : "Service Document Register";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RowID1(PROCEDURE 51).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RowID1 : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RowID1 : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateReservation(PROCEDURE 53).ReservationCheckDateConfl(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateReservation : 99000815;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateReservation : "Reservation-Check Date Confl.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowTracking(PROCEDURE 52).OrderTrackingForm(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowTracking : 99000822;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowTracking : "Order Tracking";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowOrderPromisingLine(PROCEDURE 64).OrderPromisingLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowOrderPromisingLine : 99000880;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowOrderPromisingLine : "Order Promising Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowOrderPromisingLine(PROCEDURE 64).OrderPromisingLines(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowOrderPromisingLine : 99000959;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowOrderPromisingLine : "Order Promising Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateServiceLedgerEntry(PROCEDURE 65).ServiceLedgerEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateServiceLedgerEntry : 5907;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateServiceLedgerEntry : "Service Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateServiceLedgerEntry(PROCEDURE 65).Currency(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateServiceLedgerEntry : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateServiceLedgerEntry : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateServiceLedgerEntry(PROCEDURE 65).GeneralLedgerSetup(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateServiceLedgerEntry : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateServiceLedgerEntry : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateServiceLedgerEntry(PROCEDURE 65).CurrencyExchangeRate(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateServiceLedgerEntry : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateServiceLedgerEntry : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWarehouse(PROCEDURE 71).Location2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWarehouse : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWarehouse : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWarehouse(PROCEDURE 71).WhseSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWarehouse : 5769;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWarehouse : "Warehouse Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWarehouse(PROCEDURE 71).ShowDialog(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWarehouse :  ,Message,Error;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWarehouse : " ",Message,Error;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HandleDedicatedBin(PROCEDURE 73).WhseIntegrationMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HandleDedicatedBin : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HandleDedicatedBin : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestStatusOpen(PROCEDURE 72).ServHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestStatusOpen : 5900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestStatusOpen : "Service Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LineRequiresShipmentOrReceipt(PROCEDURE 74).Location(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LineRequiresShipmentOrReceipt : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LineRequiresShipmentOrReceipt : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetShipmentDate(PROCEDURE 77).Location(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetShipmentDate : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetShipmentDate : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetShipmentDate(PROCEDURE 77).InventorySetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetShipmentDate : 313;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetShipmentDate : "Inventory Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OutstandingInvoiceAmountFromShipment(PROCEDURE 4).ServiceLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OutstandingInvoiceAmountFromShipment : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OutstandingInvoiceAmountFromShipment : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestBinCode(PROCEDURE 82).Location(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestBinCode : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestBinCode : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetNextLineNo(PROCEDURE 83).ServiceLine(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetNextLineNo : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetNextLineNo : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetLineNo(PROCEDURE 118).ServiceLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetLineNo : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetLineNo : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsNonInventoriableItem(PROCEDURE 112).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsNonInventoriableItem : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsNonInventoriableItem : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateDimSetupFromDimSetID(PROCEDURE 85).TempDimSetEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateDimSetupFromDimSetID : 480;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateDimSetupFromDimSetID : "Dimension Set Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateDimSetupByDefaultDim(PROCEDURE 95).DefaultDim(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateDimSetupByDefaultDim : 352;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateDimSetupByDefaultDim : "Default Dimension";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServMgtSetup(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServMgtSetup : 5911;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServMgtSetup : "Service Mgt. Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServiceLine(Variable 1024)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServiceLine : 5902;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServiceLine : "Service Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServHeader(Variable 1026)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServHeader : 5900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServHeader : "Service Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServItem(Variable 1028)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServItem : 5940;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServItem : "Service Item";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServItemLine(Variable 1030)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServItemLine : 5901;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServItemLine : "Service Item Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Resource(Variable 1089)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Resource : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Resource : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FaultReasonCode(Variable 1037)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FaultReasonCode : 5917;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FaultReasonCode : "Fault Reason Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Currency(Variable 1043)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Currency : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Currency : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CurrExchRate(Variable 1044)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CurrExchRate : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrExchRate : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TempTrackingSpecification(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TempTrackingSpecification : 336;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TempTrackingSpecification : "Tracking Specification";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SKU(Variable 1091)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SKU : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SKU : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1058)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesTaxCalculate(Variable 1061)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesTaxCalculate : 398;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesTaxCalculate : "Sales Tax Calculate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1062)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CatalogItemMgt(Variable 1064)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CatalogItemMgt : 5703;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CatalogItemMgt : "Catalog Item Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReserveServLine(Variable 1066)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReserveServLine : 99000842;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReserveServLine : "Service Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseValidateSourceLine(Variable 1056)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseValidateSourceLine : 5777;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseValidateSourceLine : "Whse. Validate Source Line";
    //Variable type has not been exported.

    var
        FaultArea: Record "Fault Area";
        FaultCode: Record "Fault Code";
        ResolutionCode: Record "Resolution Code";
        Symptom: Record "Symptom Code";
        TSH: Record "Troubleshooting Header";
}

