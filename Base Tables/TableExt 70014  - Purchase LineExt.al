tableextension 70014 PurchaselineExt extends "Purchase Line"
{
    // version NAVW19.00.00.51947,NAVIN9.00.00.51947,TFS225680,QC1.0,QCB2B1.2,POAU,PO1.0,Rev01,SQL,TDS-REGEF-194Q

    fields
    {
        modify("Document Type")
        {
            OptionCaptionML = ENU = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Enquiry', ENN = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Enquiry';

            //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.

        }
        modify("Buy-from Vendor No.")
        {
            CaptionML = ENU = 'Vendor No.', ENN = 'Vendor No.';

            //Unsupported feature: Change Editable on ""Buy-from Vendor No."(Field 2)". Please convert manually.

        }
        modify("Document No.")
        {

            //Unsupported feature: Change TableRelation on ""Document No."(Field 3)". Please convert manually.

            CaptionML = ENU = 'Purchase Order No.', ENN = 'Purchase Order No.';
        }

        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.

        modify("No.")
        {

            //Unsupported feature: Change TableRelation on ""No."(Field 6)". Please convert manually.


            //Unsupported feature: Change ValidateTableRelation on ""No."(Field 6)". Please convert manually.

            CaptionML = ENU = 'Item No.', ENN = 'Item No.';
            CaptionClass = GetCaptionClass(FieldNo("No."));
        }

        //Unsupported feature: Change TableRelation on ""Location Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Expected Receipt Date"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on "Description(Field 11)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "Description(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Quantity"(Field 16)". Please convert manually.


        //Unsupported feature: Change Enabled on ""Outstanding Quantity"(Field 16)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Qty. to Receive"(Field 18)". Please convert manually.

        modify("Direct Unit Cost")
        {
            CaptionClass = GetCaptionClass(FieldNo("Direct Unit Cost"));

            //Unsupported feature: Change DecimalPlaces on ""Direct Unit Cost"(Field 22)". Please convert manually.

        }

        //Unsupported feature: Change Editable on ""VAT %"(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on "Amount(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount Including VAT"(Field 30)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Invoice Disc."(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Item Entry"(Field 38)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Recalculate Invoice Disc."(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Amount"(Field 57)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Rcd. Not Invoiced"(Field 58)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amt. Rcd. Not Invoiced"(Field 59)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Quantity Received"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Received"(Field 60)". Please convert manually.


        //Unsupported feature: Change Enabled on ""Quantity Received"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Invoiced"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Receipt No."(Field 63)". Please convert manually.


        //Unsupported feature: Change Editable on ""Receipt Line No."(Field 64)". Please convert manually.


        //Unsupported feature: Change Editable on ""Profit %"(Field 67)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pay-to Vendor No."(Field 68)". Please convert manually.


        //Unsupported feature: Change Editable on ""Inv. Discount Amount"(Field 69)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sales Order No."(Field 71)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sales Order No."(Field 71)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sales Order Line No."(Field 72)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sales Order Line No."(Field 72)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Drop Shipment"(Field 73)". Please convert manually.


        //Unsupported feature: Change Editable on ""Drop Shipment"(Field 73)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 79)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Amount (LCY)"(Field 92)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Amt. Rcd. Not Invoiced (LCY)"(Field 93)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amt. Rcd. Not Invoiced (LCY)"(Field 93)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Quantity"(Field 95)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Reserved Quantity"(Field 95)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Quantity"(Field 95)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Blanket Order Line No."(Field 98)". Please convert manually.


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


        //Unsupported feature: Change AccessByPermission on ""IC Partner Ref. Type"(Field 107)". Please convert manually.


        //Unsupported feature: Change OptionString on ""IC Partner Ref. Type"(Field 107)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""IC Partner Reference"(Field 108)". Please convert manually.

        modify("Prepmt. Line Amount")
        {
            CaptionClass = GetCaptionClass(FieldNo("Prepmt. Line Amount"));
        }
        modify("Prepmt. Amt. Inv.")
        {

            //Unsupported feature: Change Editable on ""Prepmt. Amt. Inv."(Field 111)". Please convert manually.

            CaptionClass = GetCaptionClass(FieldNo("Prepmt. Amt. Inv."));
        }

        //Unsupported feature: Change Editable on ""Prepmt. Amt. Incl. VAT"(Field 112)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment Amount"(Field 113)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. VAT Base Amt."(Field 114)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment VAT %"(Field 115)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Prepmt. VAT Calc. Type"(Field 116)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. VAT Calc. Type"(Field 116)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment VAT Identifier"(Field 117)". Please convert manually.

        modify("Prepmt Amt to Deduct")
        {
            CaptionClass = GetCaptionClass(FieldNo("Prepmt Amt to Deduct"));
        }
        modify("Prepmt Amt Deducted")
        {

            //Unsupported feature: Change Editable on ""Prepmt Amt Deducted"(Field 122)". Please convert manually.

            CaptionClass = GetCaptionClass(FieldNo("Prepmt Amt Deducted"));
        }

        //Unsupported feature: Change Editable on ""Prepayment Line"(Field 123)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. Amount Inv. Incl. VAT"(Field 124)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. Amount Inv. (LCY)"(Field 129)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. VAT Amount Inv. (LCY)"(Field 132)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment VAT Difference"(Field 135)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt VAT Diff. to Deduct"(Field 136)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt VAT Diff. Deducted"(Field 137)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 1001)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Line Type"(Field 1002)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Job Line Type"(Field 1002)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Unit Price"(Field 1003)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Unit Price"(Field 1003)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Total Price"(Field 1004)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Total Price"(Field 1004)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Total Price"(Field 1004)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Line Amount"(Field 1005)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Line Amount"(Field 1005)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Line Discount Amount"(Field 1006)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Line Discount Amount"(Field 1006)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Line Discount %"(Field 1007)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Line Discount %"(Field 1007)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Unit Price (LCY)"(Field 1008)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Unit Price (LCY)"(Field 1008)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Unit Price (LCY)"(Field 1008)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Total Price (LCY)"(Field 1009)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Total Price (LCY)"(Field 1009)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Total Price (LCY)"(Field 1009)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Line Amount (LCY)"(Field 1010)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Line Amount (LCY)"(Field 1010)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Line Amount (LCY)"(Field 1010)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Line Disc. Amount (LCY)"(Field 1011)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Line Disc. Amount (LCY)"(Field 1011)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Line Disc. Amount (LCY)"(Field 1011)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Currency Factor"(Field 1012)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Planning Line No."(Field 1019)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Planning Line No."(Field 1019)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Remaining Qty."(Field 1030)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Prod. Order No."(Field 5401)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Prod. Order No."(Field 5401)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Prod. Order No."(Field 5401)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Prod. Order No."(Field 5401)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prod. Order No."(Field 5401)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change Description on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5403)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity (Base)"(Field 5415)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Qty. (Base)"(Field 5416)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. to Invoice (Base)"(Field 5417)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Qty. to Receive (Base)"(Field 5418)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. to Receive (Base)"(Field 5418)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Rcd. Not Invoiced (Base)"(Field 5458)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Qty. Rcd. Not Invoiced (Base)"(Field 5458)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Received (Base)"(Field 5460)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Invoiced (Base)"(Field 5461)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Qty. (Base)"(Field 5495)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Qty. (Base)"(Field 5495)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""FA Posting Type"(Field 5601)". Please convert manually.


        //Unsupported feature: Change OptionString on ""FA Posting Type"(Field 5601)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Depr. until FA Posting Date"(Field 5605)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Depr. Acquisition Cost"(Field 5606)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Use Duplication List"(Field 5613)". Please convert manually.


        //Unsupported feature: Change Editable on ""Responsibility Center"(Field 5700)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cross-Reference No."(Field 5705)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure (Cross Ref.)"(Field 5706)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Cross-Reference Type"(Field 5707)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on "Nonstock(Field 5710)". Please convert manually.


        //Unsupported feature: Change Editable on ""Purchasing Code"(Field 5711)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Special Order Sales No."(Field 5714)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Special Order Sales No."(Field 5714)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Special Order Sales Line No."(Field 5715)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Special Order Sales Line No."(Field 5715)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Whse. Outstanding Qty. (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Whse. Outstanding Qty. (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Whse. Outstanding Qty. (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Outstanding Qty. (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Received"(Field 5752)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Promised Receipt Date"(Field 5791)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Lead Time Calculation"(Field 5792)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Inbound Whse. Handling Time"(Field 5793)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Planned Receipt Date"(Field 5794)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Order Date"(Field 5795)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order Date"(Field 5795)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Item Charge Assignment"(Field 5800)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Allow Item Charge Assignment"(Field 5800)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Qty. to Assign"(Field 5801)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. to Assign"(Field 5801)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Qty. Assigned"(Field 5802)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Assigned"(Field 5802)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Return Qty. to Ship"(Field 5803)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Qty. Shipped Not Invd."(Field 5805)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ret. Qty. Shpd Not Invd.(Base)"(Field 5806)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Shpd. Not Invd."(Field 5807)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Shpd. Not Invd. (LCY)"(Field 5808)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Return Qty. Shipped"(Field 5809)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Qty. Shipped"(Field 5809)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Qty. Shipped (Base)"(Field 5810)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Shipment No."(Field 6600)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Shipment Line No."(Field 6601)". Please convert manually.


        //Unsupported feature: Change OptionString on "Subtype(Field 6609)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Operation No."(Field 99000751)". Please convert manually.


        //Unsupported feature: Change Editable on ""Operation No."(Field 99000751)". Please convert manually.


        //Unsupported feature: Change Editable on ""Work Center No."(Field 99000752)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Prod. Order Line No."(Field 99000754)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prod. Order Line No."(Field 99000754)". Please convert manually.


        //Unsupported feature: CodeInsertion on ""Line No."(Field 4)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
        Cashflow_Modification;
        */
        //end;


        //Unsupported feature: CodeModification on "Type(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetPurchHeader;
        TestStatusOpen;

        TESTFIELD("Qty. Rcd. Not Invoiced",0);
        TESTFIELD("Quantity Received",0);
        TESTFIELD("Receipt No.",'');

        TESTFIELD("Return Qty. Shipped Not Invd.",0);
        TESTFIELD("Return Qty. Shipped",0);
        TESTFIELD("Return Shipment No.",'');

        TESTFIELD("Prepmt. Amt. Inv.",0);

        IF "Drop Shipment" THEN
          ERROR(
            Text001,
            FIELDCAPTION(Type),"Sales Order No.");
        IF "Special Order" THEN
          ERROR(
            Text001,
            FIELDCAPTION(Type),"Special Order Sales No.");
        IF "Prod. Order No." <> '' THEN
          ERROR(
            Text044,
            FIELDCAPTION(Type),FIELDCAPTION("Prod. Order No."),"Prod. Order No.");

        IF Type <> xRec.Type THEN BEGIN
          CASE xRec.Type OF
            Type::Item:
              IF Quantity <> 0 THEN BEGIN
                PurchHeader.TESTFIELD(Status,PurchHeader.Status::Open);
                ReservePurchLine.VerifyChange(Rec,xRec);
                CALCFIELDS("Reserved Qty. (Base)");
                TESTFIELD("Reserved Qty. (Base)",0);
                WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
                OnValidateTypeOnAfterCheckItem(Rec,xRec);
              END;
            Type::"Fixed Asset":
              IF Quantity <> 0 THEN
                PurchHeader.TESTFIELD(Status,PurchHeader.Status::Open);
            Type::"Charge (Item)":
              DeleteChargeChargeAssgnt("Document Type","Document No.","Line No.");
          END;
          IF xRec."Deferral Code" <> '' THEN
            DeferralUtilities.RemoveOrSetDeferralSchedule('',
              DeferralUtilities.GetPurchDeferralDocType,'','',
              xRec."Document Type",xRec."Document No.",xRec."Line No.",
              xRec.GetDeferralAmount,PurchHeader."Posting Date",'',xRec."Currency Code",TRUE);
        END;
        TempPurchLine := Rec;
        INIT;

        IF xRec."Line Amount" <> 0 THEN
          "Recalculate Invoice Disc." := TRUE;

        Type := TempPurchLine.Type;
        "System-Created Entry" := TempPurchLine."System-Created Entry";
        OnValidateTypeOnCopyFromTempPurchLine(Rec,TempPurchLine);
        VALIDATE("FA Posting Type");

        IF Type = Type::Item THEN
          "Allow Item Charge Assignment" := TRUE
        ELSE
          "Allow Item Charge Assignment" := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..3
        TestField("Qty. Rcd. Not Invoiced",0);
        TestField("Quantity Received",0);
        TestField("Receipt No.",'');

        TestField("Return Qty. Shipped Not Invd.",0);
        TestField("Return Qty. Shipped",0);
        TestField("Return Shipment No.",'');

        TestField("Prepmt. Amt. Inv.",0);

        if "Drop Shipment" then
          Error(
            Text001,
            FieldCaption(Type),"Sales Order No.");
        if "Special Order" then
          Error(
            Text001,
            FieldCaption(Type),"Special Order Sales No.");
        if "Prod. Order No." <> '' then
          Error(
            Text044,
            FieldCaption(Type),FieldCaption("Prod. Order No."),"Prod. Order No.");

        if Type <> xRec.Type then begin
          case xRec.Type of
            Type::Item:
              if Quantity <> 0 then begin
                PurchHeader.TestField(Status,PurchHeader.Status::Open);
                ReservePurchLine.VerifyChange(Rec,xRec);
                CalcFields("Reserved Qty. (Base)");
                TestField("Reserved Qty. (Base)",0);
                WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
                OnValidateTypeOnAfterCheckItem(Rec,xRec);
              end;
            Type::"Fixed Asset":
              if Quantity <> 0 then
                PurchHeader.TestField(Status,PurchHeader.Status::Open);
            Type::"Charge (Item)":
              DeleteChargeChargeAssgnt("Document Type","Document No.","Line No.");
          end;
          if xRec."Deferral Code" <> '' then
        #45..47
              xRec.GetDeferralAmount,PurchHeader."Posting Date",'',xRec."Currency Code",true);
        end;
        TempPurchLine := Rec;
        Init;

        if xRec."Line Amount" <> 0 then
          "Recalculate Invoice Disc." := true;
        #55..58
        Validate("FA Posting Type");

        if Type = Type::Item then
          begin
          "Allow Item Charge Assignment" := true;
          "TDS Nature of Deduction":= '194Q'
            end
        else
          "Allow Item Charge Assignment" := false;
        */
        //end;


        //Unsupported feature: CodeModification on ""No."(Field 6).OnValidate". Please convert manually.

        //trigger "(Field 6)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetPurchSetup;

        "No." := FindOrCreateRecordByNo("No.");

        TestStatusOpen;
        TESTFIELD("Qty. Rcd. Not Invoiced",0);
        TESTFIELD("Quantity Received",0);
        TESTFIELD("Receipt No.",'');

        TESTFIELD("Prepmt. Amt. Inv.",0);

        TestReturnFieldsZero;

        IF "Drop Shipment" THEN
          ERROR(
            Text001,
            FIELDCAPTION("No."),"Sales Order No.");

        IF "Special Order" THEN
          ERROR(
            Text001,
            FIELDCAPTION("No."),"Special Order Sales No.");

        IF "Prod. Order No." <> '' THEN
          ERROR(
            Text044,
            FIELDCAPTION(Type),FIELDCAPTION("Prod. Order No."),"Prod. Order No.");

        OnValidateNoOnAfterChecks(Rec,xRec,CurrFieldNo);

        IF "No." <> xRec."No." THEN BEGIN
          IF (Quantity <> 0) AND ItemExists(xRec."No.") THEN BEGIN
            ReservePurchLine.VerifyChange(Rec,xRec);
            CALCFIELDS("Reserved Qty. (Base)");
            TESTFIELD("Reserved Qty. (Base)",0);
            IF Type = Type::Item THEN
              WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
            OnValidateNoOnAfterVerifyChange(Rec,xRec);
          END;
          IF Type = Type::Item THEN
            DeleteItemChargeAssgnt("Document Type","Document No.","Line No.");
          IF Type = Type::"Charge (Item)" THEN
            DeleteChargeChargeAssgnt("Document Type","Document No.","Line No.");
        END;

        OnValidateNoOnBeforeInitRec(Rec,xRec,CurrFieldNo);
        TempPurchLine := Rec;
        INIT;
        IF xRec."Line Amount" <> 0 THEN
          "Recalculate Invoice Disc." := TRUE;
        Type := TempPurchLine.Type;
        "No." := TempPurchLine."No.";
        OnValidateNoOnCopyFromTempPurchLine(Rec,TempPurchLine);
        IF "No." = '' THEN
          EXIT;

        IF HasTypeToFillMandatoryFields THEN BEGIN
          Quantity := TempPurchLine.Quantity;
          "Outstanding Qty. (Base)" := TempPurchLine."Outstanding Qty. (Base)";
        END;

        "System-Created Entry" := TempPurchLine."System-Created Entry";
        GetPurchHeader;
        InitHeaderDefaults(PurchHeader);
        UpdateLeadTimeFields;
        UpdateDates;

        OnAfterAssignHeaderValues(Rec,PurchHeader);

        CASE Type OF
          Type::" ":
            CopyFromStandardText;
          Type::"G/L Account":
            CopyFromGLAccount;
          Type::Item:
            CopyFromItem;
          3:
            ERROR(Text003);
          Type::"Fixed Asset":
            CopyFromFixedAsset;
          Type::"Charge (Item)":
            CopyFromItemCharge;
        END;

        OnAfterAssignFieldsForNo(Rec,xRec,PurchHeader);

        IF Type <> Type::" " THEN BEGIN
          PostingSetupMgt.CheckGenPostingSetupPurchAccount("Gen. Bus. Posting Group","Gen. Prod. Posting Group");
          PostingSetupMgt.CheckVATPostingSetupPurchAccount("VAT Bus. Posting Group","VAT Prod. Posting Group");
        END;

        IF HasTypeToFillMandatoryFields AND NOT (Type = Type::"Fixed Asset") THEN
          VALIDATE("VAT Prod. Posting Group");

        UpdatePrepmtSetupFields;

        IF HasTypeToFillMandatoryFields THEN BEGIN
          Quantity := xRec.Quantity;
          OnValidateNoOnAfterAssignQtyFromXRec(Rec,TempPurchLine);
          VALIDATE("Unit of Measure Code");
          IF Quantity <> 0 THEN BEGIN
            InitOutstanding;
            IF IsCreditDocType THEN
              InitQtyToShip
            ELSE
              InitQtyToReceive;
          END;
          UpdateWithWarehouseReceive;
          UpdateDirectUnitCost(FIELDNO("No."));
          IF xRec."Job No." <> '' THEN
            VALIDATE("Job No.",xRec."Job No.");
          "Job Line Type" := xRec."Job Line Type";
          IF xRec."Job Task No." <> '' THEN BEGIN
            VALIDATE("Job Task No.",xRec."Job Task No.");
            IF "No." = xRec."No." THEN
              VALIDATE("Job Planning Line No.",xRec."Job Planning Line No.");
          END;
        END;

        CreateDim(
          DimMgt.TypeToTableID3(Type),"No.",
          DATABASE::Job,"Job No.",
          DATABASE::"Responsibility Center","Responsibility Center",
          DATABASE::"Work Center","Work Center No.");

        PurchHeader.GET("Document Type","Document No.");
        UpdateItemReference;

        GetDefaultBin;

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine(TRUE);
          UpdateJobPrices;
          UpdateDimensionsFromJobTask;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //The code has been merged but contained errors that could prevent import
        //and the code has been put in comments. Use Shift+Ctrl+O to Uncomment

        //Cashflow_Modification;

        //TestStatusOpen;
        //TESTFIELD("Qty. Rcd. Not Invoiced",0);
        //TESTFIELD("Quantity Received",0);
        //TESTFIELD("Receipt No.",'');
        //
        //TESTFIELD("Prepmt. Amt. Inv.",0);
        //TestReturnFieldsZero;
        //
        //// ----------------------- Old Code ------------------------- Commented by Vishnu Priya on 30-06-2020
        //
        //{IF "No."<>'' THEN
        //BEGIN
        //IRH.RESET;
        //IRH.SETFILTER(IRH.Flag,'%1',TRUE);
        //IRH.SETFILTER(IRH."Item No.","No.");
        //IRH.SETFILTER(IRH.Status,'%1',TRUE);
        //IF IRH.FINDFIRST THEN
        //BEGIN
        //  ERROR('Please Clear Rejection Flag From QC Department for Item No: %1',"No.");
        //END;
        //END;
        //}
        //// ----------------------- Old Code ----------------------------Commented by Vishnu Priya on 30-06-2020
        //
        //// ----------------------- New Code -------------------------Written By Vishnu Priya on 30-06-2020
        //IF "No." <> '' THEN
        //  BEGIN
        //      IRH.RESET;
        //      IRH.SETCURRENTKEY(Flag,"Item No.","Vendor No.");
        //      IRH.SETFILTER(Flag,'%1',TRUE);
        //      IRH.SETFILTER("Item No.","No.");
        //      IRH.SETFILTER("Vendor No.","Buy-from Vendor No.");
        //      IRH.SETFILTER(Status,'%1',TRUE);
        //      IF IRH.FINDFIRST THEN
        //        ERROR('QC Flag defined for this Item - '+"No." +' to Purchase from the '+Rec."Buy-from Vendor No." + ' Vendor!');
        //  END;
        //// ----------------------- New Code -------------------------Written By Vishnu Priya on 30-06-2020
        //
        //
        //IF "Drop Shipment" THEN
        //  ERROR(
        //    Text001,
        //    FIELDCAPTION("No."),"Sales Order No.");
        //
        //IF "Special Order" THEN
        //  ERROR(
        //    Text001,
        //    FIELDCAPTION("No."),"Special Order Sales No.");
        //
        //IF "Prod. Order No." <> '' THEN
        //  ERROR(
        //    Text044,
        //    FIELDCAPTION(Type),FIELDCAPTION("Prod. Order No."),"Prod. Order No.");
        //
        //OnValidateNoOnAfterChecks(Rec,xRec,CurrFieldNo);
        //
        //IF "No." <> xRec."No." THEN BEGIN
        //  IF (Quantity <> 0) AND ItemExists(xRec."No.") THEN BEGIN
        //    ReservePurchLine.VerifyChange(Rec,xRec);
        //    CALCFIELDS("Reserved Qty. (Base)");
        //    TESTFIELD("Reserved Qty. (Base)",0);
        //    IF Type = Type::Item THEN
        //      WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        //    OnValidateNoOnAfterVerifyChange(Rec,xRec);
        //  END;
        //  IF Type = Type::Item THEN
        //  BEGIN
        //    "TDS Nature of Deduction":='194Q';
        //    "TDS Group":="TDS Group"::Goods;
        //    DeleteItemChargeAssgnt("Document Type","Document No.","Line No.");
        //  END;
        //  IF Type = Type::"Charge (Item)" THEN
        //    DeleteChargeChargeAssgnt("Document Type","Document No.","Line No.");
        //END;
        //
        //OnValidateNoOnBeforeInitRec(Rec,xRec,CurrFieldNo);
        //TempPurchLine := Rec;
        //INIT;
        //IF xRec."Line Amount" <> 0 THEN
        //  "Recalculate Invoice Disc." := TRUE;
        //Type := TempPurchLine.Type;
        //"No." := TempPurchLine."No.";
        //OnValidateNoOnCopyFromTempPurchLine(Rec,TempPurchLine);
        //IF "No." = '' THEN
        //  EXIT;
        //
        //IF HasTypeToFillMandatoryFields THEN BEGIN
        //  Quantity := TempPurchLine.Quantity;
        //  "Outstanding Qty. (Base)" := TempPurchLine."Outstanding Qty. (Base)";
        //END;
        //
        //"System-Created Entry" := TempPurchLine."System-Created Entry";
        //GetPurchHeader;
        //{>>>>>>>} ORIGINAL
        //PurchHeader.TESTFIELD("Buy-from Vendor No.");
        //
        //"Buy-from Vendor No." := PurchHeader."Buy-from Vendor No.";
        //"Currency Code" := PurchHeader."Currency Code";
        //"Expected Receipt Date" := PurchHeader."Expected Receipt Date";
        //"Shortcut Dimension 1 Code" := PurchHeader."Shortcut Dimension 1 Code";
        //"Shortcut Dimension 2 Code" := PurchHeader."Shortcut Dimension 2 Code";
        //IF NOT IsServiceItem THEN
        //  "Location Code" := PurchHeader."Location Code";
        //"Service Tax Registration No." := ServiceTaxMgt.GetServiceTaxRegNoForLocation("Location Code");
        //"Transaction Type" := PurchHeader."Transaction Type";
        //"Transport Method" := PurchHeader."Transport Method";
        //"Pay-to Vendor No." := PurchHeader."Pay-to Vendor No.";
        //"Gen. Bus. Posting Group" := PurchHeader."Gen. Bus. Posting Group";
        //"VAT Bus. Posting Group" := PurchHeader."VAT Bus. Posting Group";
        //"Entry Point" := PurchHeader."Entry Point";
        //Area := PurchHeader.Area;
        //"Transaction Specification" := PurchHeader."Transaction Specification";
        //"Tax Area Code" := PurchHeader."Tax Area Code";
        //"Tax Liable" := PurchHeader."Tax Liable";
        //IF NOT "System-Created Entry" AND ("Document Type" = "Document Type"::Order) AND (Type <> Type::" ") THEN
        //  "Prepayment %" := PurchHeader."Prepayment %";
        //"Prepayment Tax Area Code" := PurchHeader."Tax Area Code";
        //"Prepayment Tax Liable" := PurchHeader."Tax Liable";
        //"Responsibility Center" := PurchHeader."Responsibility Center";
        //"Form Code" := PurchHeader."Form Code";
        //"Form No." := PurchHeader."Form No.";
        //"State Code" := PurchHeader.State;
        //IF PurchHeader."Invoice Type" = PurchHeader."Invoice Type"::Supplementary THEN
        //  Supplementary := TRUE;
        //"Excise Bus. Posting Group" := PurchHeader."Excise Bus. Posting Group";
        //"Assessee Code" := PurchHeader."Assessee Code";
        //
        //"Requested Receipt Date" := PurchHeader."Requested Receipt Date";
        //"Promised Receipt Date" := PurchHeader."Promised Receipt Date";
        //"Inbound Whse. Handling Time" := PurchHeader."Inbound Whse. Handling Time";
        //"Order Date" := PurchHeader."Order Date";
        //IF PurchHeader."GST Vendor Type" = PurchHeader."GST Vendor Type"::Exempted THEN
        //  Exempted := TRUE;
        //{=======} MODIFIED
        //InitHeaderDefaults(PurchHeader);
        //{=======} TARGET
        //PurchHeader.TESTFIELD("Buy-from Vendor No.");
        //
        //"Buy-from Vendor No." := PurchHeader."Buy-from Vendor No.";
        //"Currency Code" := PurchHeader."Currency Code";
        //"Expected Receipt Date" := PurchHeader."Expected Receipt Date";
        //"Deviated Receipt Date":=PurchHeader."Expected Receipt Date";
        ////>>Added by Pranavi on 07-Mar-2017 For updating Vendor Mat. Disp Date
        //IF "Deviated Receipt Date" <> 0D THEN
        //BEGIN
        //  IF Vendor.GET("Buy-from Vendor No.") THEN
        //  BEGIN
        //    "Vendor Mat. Dispatch Date" := CALCDATE('-'+FORMAT(Vendor."Transportation Days")+'D',"Deviated Receipt Date");
        //  END ELSE
        //    "Vendor Mat. Dispatch Date" := "Deviated Receipt Date";
        //END;
        ////<<Added by Pranavi on 07-Mar-2017 For updating Vendor Mat. Disp Date
        //
        //"Shortcut Dimension 1 Code" := PurchHeader."Shortcut Dimension 1 Code";
        //"Shortcut Dimension 2 Code" := PurchHeader."Shortcut Dimension 2 Code";
        //IF NOT IsServiceItem THEN
        //  "Location Code" := PurchHeader."Location Code";
        //"Service Tax Registration No." := ServiceTaxMgt.GetServiceTaxRegNoForLocation("Location Code");
        //"Transaction Type" := PurchHeader."Transaction Type";
        //"Transport Method" := PurchHeader."Transport Method";
        ////"TDS Nature of Deduction":='194Q';//modified by durga on 10-12-2021
        //"Pay-to Vendor No." := PurchHeader."Pay-to Vendor No.";
        //"Gen. Bus. Posting Group" := PurchHeader."Gen. Bus. Posting Group";
        //"VAT Bus. Posting Group" := PurchHeader."VAT Bus. Posting Group";
        //"Entry Point" := PurchHeader."Entry Point";
        //Area := PurchHeader.Area;
        //"Transaction Specification" := PurchHeader."Transaction Specification";
        //"Tax Area Code" := PurchHeader."Tax Area Code";
        //"Tax Liable" := PurchHeader."Tax Liable";
        ////MESSAGE('%1',"Tax Liable");
        //IF NOT "System-Created Entry" AND ("Document Type" = "Document Type"::Order) AND (Type <> Type::" ") THEN
        //  "Prepayment %" := PurchHeader."Prepayment %";
        //"Prepayment Tax Area Code" := PurchHeader."Tax Area Code";
        //"Prepayment Tax Liable" := PurchHeader."Tax Liable";
        //"Responsibility Center" := PurchHeader."Responsibility Center";
        //GPS.SETRANGE(GPS."Gen. Prod. Posting Group","Gen. Prod. Posting Group");
        //GPS.SETFILTER(GPS."Gen. Bus. Posting Group","Gen. Bus. Posting Group");
        //IF GPS.FINDFIRST THEN
        //BEGIN
        //  "Account No.":=GPS."Purch. Account";
        //END;//B2B
        //"Form Code" := PurchHeader."Form Code";
        //"Form No." := PurchHeader."Form No.";
        //"State Code" := PurchHeader.State;
        //IF PurchHeader."Invoice Type" = PurchHeader."Invoice Type"::Supplementary THEN
        //  Supplementary := TRUE;
        //"Excise Bus. Posting Group" := PurchHeader."Excise Bus. Posting Group";
        //"Assessee Code" := PurchHeader."Assessee Code";
        //
        //"Requested Receipt Date" := PurchHeader."Requested Receipt Date";
        //"Promised Receipt Date" := PurchHeader."Promised Receipt Date";
        //"Inbound Whse. Handling Time" := PurchHeader."Inbound Whse. Handling Time";
        //"Order Date" := PurchHeader."Order Date";
        //IF PurchHeader."GST Vendor Type" = PurchHeader."GST Vendor Type"::Exempted THEN
        //  Exempted := TRUE;
        //{<<<<<<<}
        //UpdateLeadTimeFields;
        //UpdateDates;
        //
        //OnAfterAssignHeaderValues(Rec,PurchHeader);
        //
        //CASE Type OF
        //  Type::" ":
        //    CopyFromStandardText;
        //  Type::"G/L Account":
        //    CopyFromGLAccount;
        //  Type::Item:
        //{>>>>>>>} ORIGINAL
        //    BEGIN
        //      GetItem;
        //      GetGLSetup;
        //      Item.TESTFIELD(Blocked,FALSE);
        //      Item.TESTFIELD("Gen. Prod. Posting Group");
        //      IF Item.Type = Item.Type::Inventory THEN BEGIN
        //        Item.TESTFIELD("Inventory Posting Group");
        //        "Posting Group" := Item."Inventory Posting Group";
        //      END;
        //      Description := Item.Description;
        //      "Description 2" := Item."Description 2";
        //      "Unit Price (LCY)" := Item."Unit Price";
        //      "Units per Parcel" := Item."Units per Parcel";
        //      "Indirect Cost %" := Item."Indirect Cost %";
        //      "Overhead Rate" := Item."Overhead Rate";
        //      "Allow Invoice Disc." := Item."Allow Invoice Disc.";
        //      "Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group";
        //      "VAT Prod. Posting Group" := Item."VAT Prod. Posting Group";
        //      "Tax Group Code" := Item."Tax Group Code";
        //      Nonstock := Item."Created From Nonstock Item";
        //      "Item Category Code" := Item."Item Category Code";
        //      "Product Group Code" := Item."Product Group Code";
        //      "Allow Item Charge Assignment" := TRUE;
        //      PrepmtMgt.SetPurchPrepaymentPct(Rec,PurchHeader."Posting Date");
        //      "Excise Prod. Posting Group" := Item."Excise Prod. Posting Group";
        //      "Excise Accounting Type" := Item."Excise Accounting Type";
        //      "Assessable Value" := Item."Assessable Value";
        //      "Capital Item" := Item."Capital Item";
        //
        //      IF Item."Price Includes VAT" THEN BEGIN
        //        IF NOT VATPostingSetup.GET(
        //             Item."VAT Bus. Posting Gr. (Price)",Item."VAT Prod. Posting Group")
        //        THEN
        //          VATPostingSetup.INIT;
        //        CASE VATPostingSetup."VAT Calculation Type" OF
        //          VATPostingSetup."VAT Calculation Type"::"Reverse Charge VAT":
        //            VATPostingSetup."VAT %" := 0;
        //          VATPostingSetup."VAT Calculation Type"::"Sales Tax":
        //            ERROR(
        //              Text002,
        //              VATPostingSetup.FIELDCAPTION("VAT Calculation Type"),
        //              VATPostingSetup."VAT Calculation Type");
        //        END;
        //        "Unit Price (LCY)" :=
        //          ROUND("Unit Price (LCY)" / (1 + VATPostingSetup."VAT %" / 100),
        //            GLSetup."Unit-Amount Rounding Precision");
        //      END;
        //
        //      IF PurchHeader."Language Code" <> '' THEN
        //        GetItemTranslation;
        //
        //      "Unit of Measure Code" := Item."Purch. Unit of Measure";
        //      InitDeferralCode;
        //      IF GSTGroup.GET(Item."GST Group Code") THEN;
        //      IF NOT PurchHeader.Subcontracting THEN
        //        UpdatePurchLineForGST(
        //          Item."GST Credit",Item."GST Group Code",GSTGroup."GST Group Type",Item."HSN/SAC Code",Item.Exempted);
        //    END;
        //  Type::"3":
        //{=======} MODIFIED
        //    CopyFromItem;
        //  3:
        //{=======} TARGET
        //    BEGIN
        //      GetItem;
        //      GetGLSetup;
        //      Item.TESTFIELD(Blocked,FALSE);
        //      IF "Document Type"="Document Type"::Order THEN
        //      Item.TESTFIELD(Item."Safety Lead Time");
        //      IF Item."Product Group Code"<>'STATIONARY' THEN
        //      BEGIN
        //        Item.TESTFIELD("Gen. Prod. Posting Group");
        //        Item.TESTFIELD("Tax Group Code");
        //        Item.TESTFIELD(Item."Excise Prod. Posting Group");
        //        Item.TESTFIELD(Item."Spec ID");
        //        Item.TESTFIELD(Item."QC Enabled");
        //      END;
        //      //B2B1.0
        //      Item.TESTFIELD("Base Unit of Measure");
        //      Item.TESTFIELD("Item Tracking Code");
        //      //B2B1.0
        //     // Item.TESTFIELD("Gen. Prod. Posting Group");
        //
        //      IF Item.Type = Item.Type::Inventory THEN BEGIN
        //        Item.TESTFIELD("Inventory Posting Group");
        //        "Posting Group" := Item."Inventory Posting Group";
        //      END;
        //      Description := Item.Description;
        //      "Description 2" := Item."Description 2";
        //
        //      //QC Begin
        //      //To insert the spec Id of the item into the purchase line when the Item is selected
        //      UpdateQualityPurchLines;
        //      //QC End
        //
        //      "Unit Price (LCY)" := Item."Unit Price";
        //      "Units per Parcel" := Item."Units per Parcel";
        //      "Indirect Cost %" := Item."Indirect Cost %";
        //      "Overhead Rate" := Item."Overhead Rate";
        //      "Allow Invoice Disc." := Item."Allow Invoice Disc.";
        //      "Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group";
        //      "Service Tax Group" := Item."Service Tax Group Code";//need to check sgs
        //      "VAT Prod. Posting Group" := Item."VAT Prod. Posting Group";
        //      "Tax Group Code" := Item."Tax Group Code";
        //      Nonstock := Item."Created From Nonstock Item";
        //      "Item Category Code" := Item."Item Category Code";
        //      "Product Group Code" := Item."Product Group Code";
        //      "Allow Item Charge Assignment" := TRUE;
        //      PrepmtMgt.SetPurchPrepaymentPct(Rec,PurchHeader."Posting Date");
        //      "Excise Prod. Posting Group" := Item."Excise Prod. Posting Group";
        //      "Excise Accounting Type" := Item."Excise Accounting Type";
        //      "Assessable Value" := Item."Assessable Value";
        //      "Capital Item" := Item."Capital Item";
        //
        //      Make:=Item.Make;
        //      Package:=Item.Package;
        //      "Part Number":=Item."Part Number";
        //
        //      IF Item."Price Includes VAT" THEN BEGIN
        //        IF NOT VATPostingSetup.GET(
        //             Item."VAT Bus. Posting Gr. (Price)",Item."VAT Prod. Posting Group")
        //        THEN
        //          VATPostingSetup.INIT;
        //        CASE VATPostingSetup."VAT Calculation Type" OF
        //          VATPostingSetup."VAT Calculation Type"::"Reverse Charge VAT":
        //            VATPostingSetup."VAT %" := 0;
        //          VATPostingSetup."VAT Calculation Type"::"Sales Tax":
        //            ERROR(
        //              Text002,
        //              VATPostingSetup.FIELDCAPTION("VAT Calculation Type"),
        //              VATPostingSetup."VAT Calculation Type");
        //        END;
        //        "Unit Price (LCY)" :=
        //          ROUND("Unit Price (LCY)" / (1 + VATPostingSetup."VAT %" / 100),
        //            GLSetup."Unit-Amount Rounding Precision");
        //      END;
        //
        //      IF PurchHeader."Language Code" <> '' THEN
        //        GetItemTranslation;
        //
        //      "Unit of Measure Code" := Item."Purch. Unit of Measure";
        //      InitDeferralCode;
        //      IF GSTGroup.GET(Item."GST Group Code") THEN;
        //      IF NOT PurchHeader.Subcontracting THEN
        //        UpdatePurchLineForGST(
        //          Item."GST Credit",Item."GST Group Code",GSTGroup."GST Group Type",Item."HSN/SAC Code",Item.Exempted);
        //    END;
        //  Type::"3":
        //{<<<<<<<}
        //    ERROR(Text003);
        //  Type::"Fixed Asset":
        //{>>>>>>>} ORIGINAL
        //    BEGIN
        //      FA.GET("No.");
        //      FA.TESTFIELD(Inactive,FALSE);
        //      FA.TESTFIELD(Blocked,FALSE);
        //      FA.TESTFIELD("Gen. Prod. Posting Group");
        //      IF GSTGroup.GET(FA."GST Group Code") THEN;
        //      UpdatePurchLineForGST(FA."GST Credit",FA."GST Group Code",GSTGroup."GST Group Type",FA."HSN/SAC Code",FA.Exempted);
        //      GetFAPostingGroup;
        //      Description := FA.Description;
        //      "Description 2" := FA."Description 2";
        //      "Allow Invoice Disc." := FALSE;
        //      "Allow Item Charge Assignment" := FALSE;
        //      "Gen. Prod. Posting Group" := FA."Gen. Prod. Posting Group";
        //      "Excise Accounting Type" := FA."Excise Accounting Type";
        //      "Excise Prod. Posting Group" := FA."Excise Prod. Posting Group";
        //      "Tax Group Code" := FA."Tax Group Code";
        //      "VAT Prod. Posting Group" := FA."VAT Product Posting Group";
        //{=======} MODIFIED
        //    CopyFromFixedAsset;
        //  Type::"Charge (Item)":
        //    CopyFromItemCharge;
        //END;
        //
        //OnAfterAssignFieldsForNo(Rec,xRec,PurchHeader);
        //{=======} TARGET
        //    BEGIN
        //      FA.GET("No.");
        //      FA.TESTFIELD(Inactive,FALSE);
        //      FA.TESTFIELD(Blocked,FALSE);
        //      FA.TESTFIELD("Gen. Prod. Posting Group");
        //      FA.TESTFIELD(FA."FA Class Code");
        //      FA.TESTFIELD(FA."FA Subclass Code");
        //      FA.TESTFIELD(FA."FA Location Code");
        //      FA.TESTFIELD(FA."Excise Prod. Posting Group");
        //      FA.TESTFIELD(FA."Gen. Prod. Posting Group");
        //      FA.TESTFIELD(FA."Tax Group Code");
        //      FA.TESTFIELD(FA."VAT Product Posting Group");
        //      FA.TESTFIELD(FA."Vendor No.");
        //      //FA.TESTFIELD(FA."Responsible Employee");
        //      //FA.TESTFIELD(FA."Service Tax Group Code");
        //      GSTGroup.GET(FA."GST Group Code");
        //      UpdatePurchLineForGST(FA."GST Credit",FA."GST Group Code",GSTGroup."GST Group Type",FA."HSN/SAC Code",FA.Exempted);
        //      GetFAPostingGroup;
        //      Description := FA.Description;
        //      "Description 2" := FA."Description 2";
        //      "Allow Invoice Disc." := FALSE;
        //      "Allow Item Charge Assignment" := FALSE;
        //      "Gen. Prod. Posting Group" := FA."Gen. Prod. Posting Group";
        //      "Excise Accounting Type" := FA."Excise Accounting Type";
        //      "Excise Prod. Posting Group" := FA."Excise Prod. Posting Group";
        //      "Tax Group Code" := FA."Tax Group Code";
        //      "VAT Prod. Posting Group" := FA."VAT Product Posting Group";
        //{<<<<<<<}
        //
        //IF Type <> Type::" " THEN BEGIN
        //  PostingSetupMgt.CheckGenPostingSetupPurchAccount("Gen. Bus. Posting Group","Gen. Prod. Posting Group");
        //  PostingSetupMgt.CheckVATPostingSetupPurchAccount("VAT Bus. Posting Group","VAT Prod. Posting Group");
        //END;
        //
        //IF HasTypeToFillMandatoryFields AND NOT (Type = Type::"Fixed Asset") THEN
        //  VALIDATE("VAT Prod. Posting Group");
        //
        //UpdatePrepmtSetupFields;
        //
        //IF HasTypeToFillMandatoryFields THEN BEGIN
        //  Quantity := xRec.Quantity;
        //  OnValidateNoOnAfterAssignQtyFromXRec(Rec,TempPurchLine);
        //  VALIDATE("Unit of Measure Code");
        //  IF Quantity <> 0 THEN BEGIN
        //    InitOutstanding;
        //    IF IsCreditDocType THEN
        //      InitQtyToShip
        //    ELSE
        //      InitQtyToReceive;
        //  END;
        //  UpdateWithWarehouseReceive;
        //  UpdateDirectUnitCost(FIELDNO("No."));
        //  IF xRec."Job No." <> '' THEN
        //    VALIDATE("Job No.",xRec."Job No.");
        //  "Job Line Type" := xRec."Job Line Type";
        //  IF xRec."Job Task No." <> '' THEN BEGIN
        //    VALIDATE("Job Task No.",xRec."Job Task No.");
        //    IF "No." = xRec."No." THEN
        //      VALIDATE("Job Planning Line No.",xRec."Job Planning Line No.");
        //  END;
        //END;
        //
        //CreateDim(
        //  DimMgt.TypeToTableID3(Type),"No.",
        //  DATABASE::Job,"Job No.",
        //  DATABASE::"Responsibility Center","Responsibility Center",
        //  DATABASE::"Work Center","Work Center No.");
        //
        //PurchHeader.GET("Document Type","Document No.");
        //UpdateItemReference;
        //
        //GetDefaultBin;
        //
        //IF JobTaskIsSet THEN BEGIN
        //  CreateTempJobJnlLine(TRUE);
        //  UpdateJobPrices;
        //  UpdateDimensionsFromJobTask;
        //END;
        //{>>>>>>>} ORIGINAL
        //"Assessable Value" := Item."Assessable Value" * "Qty. per Unit of Measure" ;
        //{=======} MODIFIED
        //{=======} TARGET
        //"Assessable Value" := Item."Assessable Value" * "Qty. per Unit of Measure" ;
        //{IF STRLEN("HSN/SAC Code") < 6
        //THEN
        //ERROR('HSN/SAC Code must be 6 characters for Item %1',"No.");
        //}
        //{<<<<<<<}
        */
        //end;


        //Unsupported feature: CodeModification on ""Location Code"(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        IF "Location Code" <> '' THEN
          IF IsNonInventoriableItem THEN BEGIN
            GetItem(Item);
            Item.TESTFIELD(Type,Item.Type::Inventory);
          END;
        IF xRec."Location Code" <> "Location Code" THEN BEGIN
          IF "Prepmt. Amt. Inv." <> 0 THEN
            IF NOT ConfirmManagement.ConfirmProcess(
                 STRSUBSTNO(
                   Text046,FIELDCAPTION("Direct Unit Cost"),FIELDCAPTION("Location Code"),PRODUCTNAME.FULL),TRUE)
            THEN BEGIN
              "Location Code" := xRec."Location Code";
              EXIT;
            END;
          TESTFIELD("Qty. Rcd. Not Invoiced",0);
          TESTFIELD("Receipt No.",'');

          TESTFIELD("Return Qty. Shipped Not Invd.",0);
          TESTFIELD("Return Shipment No.",'');
        END;

        IF "Drop Shipment" THEN
          ERROR(
            Text001,
            FIELDCAPTION("Location Code"),"Sales Order No.");
        IF "Special Order" THEN
          ERROR(
            Text001,
            FIELDCAPTION("Location Code"),"Special Order Sales No.");

        IF "Location Code" <> xRec."Location Code" THEN BEGIN
          InitItemAppl;
          IF IsInventoriableItem THEN
            PostingSetupMgt.CheckInvtPostingSetupInventoryAccount("Location Code","Posting Group");
        END;

        IF (xRec."Location Code" <> "Location Code") AND (Quantity <> 0) THEN BEGIN
          ReservePurchLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
          UpdateWithWarehouseReceive;
        END;
        "Bin Code" := '';

        IF Type = Type::Item THEN BEGIN
          GetPurchHeader;
          PurchPriceCalcMgt.FindPurchLinePrice(PurchHeader,Rec,FIELDNO("Location Code"));
          VALIDATE("Direct Unit Cost");
        END;

        IF "Location Code" = '' THEN BEGIN
          IF InvtSetup.GET THEN
            "Inbound Whse. Handling Time" := InvtSetup."Inbound Whse. Handling Time";
        END ELSE
          IF Location.GET("Location Code") THEN
            "Inbound Whse. Handling Time" := Location."Inbound Whse. Handling Time";

        UpdateLeadTimeFields;
        UpdateDates;

        GetDefaultBin;
        CheckWMS;

        IF "Document Type" = "Document Type"::"Return Order" THEN
          ValidateReturnReasonCode(FIELDNO("Location Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;

        if "Location Code" <> '' then
          if IsNonInventoriableItem then begin
            GetItem(Item);
            Item.TestField(Type,Item.Type::Inventory);
          end;
        if xRec."Location Code" <> "Location Code" then begin
          if "Prepmt. Amt. Inv." <> 0 then
            if not ConfirmManagement.ConfirmProcess(
                 StrSubstNo(
                   Text046,FieldCaption("Direct Unit Cost"),FieldCaption("Location Code"),PRODUCTNAME.Full),true)
            then begin
              "Location Code" := xRec."Location Code";
              exit;
            end;
        //  TESTFIELD("Qty. Rcd. Not Invoiced",0);
        //  TESTFIELD("Receipt No.",'');

        //  TESTFIELD("Return Qty. Shipped Not Invd.",0);
        //  TESTFIELD("Return Shipment No.",'');
        end;

        if "Drop Shipment" then
          Error(
            Text001,
            FieldCaption("Location Code"),"Sales Order No.");
        if "Special Order" then
          Error(
            Text001,
            FieldCaption("Location Code"),"Special Order Sales No.");

        if "Location Code" <> xRec."Location Code" then begin
          InitItemAppl;
          if IsInventoriableItem then
            PostingSetupMgt.CheckInvtPostingSetupInventoryAccount("Location Code","Posting Group");
        end;

        if (xRec."Location Code" <> "Location Code") and (Quantity <> 0) then begin
        #40..42
        end;
        "Bin Code" := '';

        if Type = Type::Item then begin
          GetPurchHeader;
          PurchPriceCalcMgt.FindPurchLinePrice(PurchHeader,Rec,FieldNo("Location Code"));
          Validate("Direct Unit Cost");
        end;

        if "Location Code" = '' then begin
          if InvtSetup.Get then
            "Inbound Whse. Handling Time" := InvtSetup."Inbound Whse. Handling Time";
        end else
          if Location.Get("Location Code") then
        #57..64
        if "Document Type" = "Document Type"::"Return Order" then
          ValidateReturnReasonCode(FieldNo("Location Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Expected Receipt Date"(Field 10).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT TrackingBlocked THEN BEGIN
          IsHandled := FALSE;
          OnValidateExpectedReceiptDateOnBeforeCheckDateConflict(Rec,IsHandled);
          IF NOT IsHandled THEN
            CheckDateConflict.PurchLineCheck(Rec,CurrFieldNo <> 0);
        END;

        IF "Expected Receipt Date" <> 0D THEN
          VALIDATE(
            "Planned Receipt Date",
            CalendarMgmt.CalcDateBOC2(ReversedInternalLeadTimeDays("Expected Receipt Date"),"Expected Receipt Date",
              CalChange."Source Type"::Location,"Location Code",'',
              CalChange."Source Type"::Location,"Location Code",'',FALSE))
        ELSE
          VALIDATE("Planned Receipt Date","Expected Receipt Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //The code has been merged but contained errors that could prevent import
        //and the code has been put in comments. Use Shift+Ctrl+O to Uncomment
        //IF NOT TrackingBlocked THEN BEGIN
        //  IsHandled := FALSE;
        //  OnValidateExpectedReceiptDateOnBeforeCheckDateConflict(Rec,IsHandled);
        //  IF NOT IsHandled THEN
        //    CheckDateConflict.PurchLineCheck(Rec,CurrFieldNo <> 0);
        //END;
        //
        //IF "Expected Receipt Date" <> 0D THEN
        //  VALIDATE(
        //    "Planned Receipt Date",
        //    CalendarMgmt.CalcDateBOC2(ReversedInternalLeadTimeDays("Expected Receipt Date"),"Expected Receipt Date",
        //      CalChange."Source Type"::Location,"Location Code",'',
        //      CalChange."Source Type"::Location,"Location Code",'',FALSE))
        //ELSE
        //  //VALIDATE("Planned Receipt Date","Expected Receipt Date");
        */
        //end;


        //Unsupported feature: CodeModification on "Description(Field 11).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::" " THEN
          EXIT;

        IF "No." <> '' THEN
          EXIT;

        CASE Type OF
          Type::Item:
            BEGIN
              IF IsReceivedFromOcr THEN
                EXIT;

              IF STRLEN(Description) <= MAXSTRLEN(Item."No.") THEN
                DescriptionIsNo := Item.GET(Description)
              ELSE
                DescriptionIsNo := FALSE;

              IF NOT DescriptionIsNo THEN BEGIN
                Item.SETRANGE(Blocked,FALSE);
                Item.SETRANGE("Purchasing Blocked",FALSE);

                // looking for an item with exact description
                Item.SETRANGE(Description,Description);
                IF Item.FINDFIRST THEN BEGIN
                  CurrFieldNo := FIELDNO("No.");
                  VALIDATE("No.",Item."No.");
                  EXIT;
                END;

                // looking for an item with similar description
                Item.SETFILTER(Description,'''@' + CONVERTSTR(Description,'''','?') + '''');
                IF Item.FINDFIRST THEN BEGIN
                  CurrFieldNo := FIELDNO("No.");
                  VALIDATE("No.",Item."No.");
                  EXIT;
                END;
              END;

              IF Item.TryGetItemNoOpenCard(ReturnValue,Description,FALSE,FALSE,FALSE) THEN
                CASE ReturnValue OF
                  '',"No.":
                    Description := xRec.Description;
                  ELSE BEGIN
                    CurrFieldNo := FIELDNO("No.");
                    VALIDATE("No.",COPYSTR(ReturnValue,1,MAXSTRLEN(Item."No.")));
                  END;
                END;
            END;
          ELSE BEGIN
            ReturnValue := FindRecordMgt.FindNoByDescription(Type,Description,TRUE);
            IF ReturnValue <> '' THEN BEGIN
              CurrFieldNo := FIELDNO("No.");
              VALIDATE("No.",COPYSTR(ReturnValue,1,MAXSTRLEN("No.")));
            END;
          END;
        END;

        IF ("No." = '') AND GUIALLOWED AND ApplicationAreaMgmtFacade.IsFoundationEnabled THEN
          IF "Document Type" IN ["Document Type"::Order] THEN
            ERROR(CannotFindDescErr,Type,Description);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::" " then
          exit;

        if "No." <> '' then
          exit;

        case Type of
          Type::Item:
            begin
              if IsReceivedFromOcr then
                exit;

              if StrLen(Description) <= MaxStrLen(Item."No.") then
                DescriptionIsNo := Item.Get(Description)
              else
                DescriptionIsNo := false;

              if not DescriptionIsNo then begin
                Item.SetRange(Blocked,false);
                Item.SetRange("Purchasing Blocked",false);

                // looking for an item with exact description
                Item.SetRange(Description,Description);
                if Item.FindFirst then begin
                  CurrFieldNo := FieldNo("No.");
                  Validate("No.",Item."No.");
                  exit;
                end;

                // looking for an item with similar description
                Item.SetFilter(Description,'''@' + ConvertStr(Description,'''','?') + '''');
                if Item.FindFirst then begin
                  CurrFieldNo := FieldNo("No.");
                  Validate("No.",Item."No.");
                  exit;
                end;
              end;

              if Item.TryGetItemNoOpenCard(ReturnValue,Description,false,false,false) then
                case ReturnValue of
                  '',"No.":
                    Description := xRec.Description;
                  else begin
                    CurrFieldNo := FieldNo("No.");
                    Validate("No.",CopyStr(ReturnValue,1,MaxStrLen(Item."No.")));
                  end;
                end;
            end;
          else begin
            ReturnValue := FindRecordMgt.FindNoByDescription(Type,Description,true);
            if ReturnValue <> '' then begin
              CurrFieldNo := FieldNo("No.");
              Validate("No.",CopyStr(ReturnValue,1,MaxStrLen("No.")));
            end;
          end;
        end;

        if ("No." = '') and GuiAllowed and ApplicationAreaMgmtFacade.IsFoundationEnabled then
          if "Document Type" in ["Document Type"::Order] then
            Error(CannotFindDescErr,Type,Description);
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IsHandled := FALSE;
        OnValidateQuantityOnBeforeDropShptCheck(Rec,xRec,CurrFieldNo,IsHandled);
        IF NOT IsHandled THEN
          IF "Drop Shipment" AND ("Document Type" <> "Document Type"::Invoice) THEN
            ERROR(
              Text001,FIELDCAPTION(Quantity),"Sales Order No.");
        "Quantity (Base)" := CalcBaseQty(Quantity);
        IF IsCreditDocType THEN BEGIN
          IF (Quantity * "Return Qty. Shipped" < 0) OR
             ((ABS(Quantity) < ABS("Return Qty. Shipped")) AND ("Return Shipment No." = ''))
          THEN
            FIELDERROR(Quantity,STRSUBSTNO(Text004,FIELDCAPTION("Return Qty. Shipped")));
          IF ("Quantity (Base)" * "Return Qty. Shipped (Base)" < 0) OR
             ((ABS("Quantity (Base)") < ABS("Return Qty. Shipped (Base)")) AND ("Return Shipment No." = ''))
          THEN
            FIELDERROR("Quantity (Base)",STRSUBSTNO(Text004,FIELDCAPTION("Return Qty. Shipped (Base)")));
        END ELSE BEGIN
          IF (Quantity * "Quantity Received" < 0) OR
             ((ABS(Quantity) < ABS("Quantity Received")) AND ("Receipt No." = ''))
          THEN
            FIELDERROR(Quantity,STRSUBSTNO(Text004,FIELDCAPTION("Quantity Received")));
          IF ("Quantity (Base)" * "Qty. Received (Base)" < 0) OR
             ((ABS("Quantity (Base)") < ABS("Qty. Received (Base)")) AND ("Receipt No." = ''))
          THEN
            FIELDERROR("Quantity (Base)",STRSUBSTNO(Text004,FIELDCAPTION("Qty. Received (Base)")));
        END;

        IF (Type = Type::"Charge (Item)") AND (CurrFieldNo <> 0) THEN BEGIN
          IF (Quantity = 0) AND ("Qty. to Assign" <> 0) THEN
            FIELDERROR("Qty. to Assign",STRSUBSTNO(Text011,FIELDCAPTION(Quantity),Quantity));
          IF (Quantity * "Qty. Assigned" < 0) OR (ABS(Quantity) < ABS("Qty. Assigned")) THEN
            FIELDERROR(Quantity,STRSUBSTNO(Text004,FIELDCAPTION("Qty. Assigned")));
        END;

        IF "Receipt No." <> '' THEN
          CheckReceiptRelation
        ELSE
          IF "Return Shipment No." <> '' THEN
            CheckRetShptRelation;

        IF (xRec.Quantity <> Quantity) OR (xRec."Quantity (Base)" <> "Quantity (Base)") OR
           ("No." = xRec."No.")
        THEN BEGIN
          InitOutstanding;
          IF IsCreditDocType THEN
            InitQtyToShip
          ELSE
            InitQtyToReceive;
        END;
        IF (Quantity * xRec.Quantity < 0) OR (Quantity = 0) THEN
          InitItemAppl;

        IF Type = Type::Item THEN
          UpdateDirectUnitCost(FIELDNO(Quantity))
        ELSE
          VALIDATE("Line Discount %");

        IF Type = Type::"Charge (Item)" THEN
          "Line Discount %" := 0;

        UpdateWithWarehouseReceive;
        IF (xRec.Quantity <> Quantity) OR (xRec."Quantity (Base)" <> "Quantity (Base)") THEN BEGIN
          OnBeforeVerifyReservedQty(Rec,xRec,FIELDNO(Quantity));
          ReservePurchLine.VerifyQuantity(Rec,xRec);
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
          CheckApplToItemLedgEntry;
        END;

        IF (xRec.Quantity <> Quantity) AND (Quantity = 0) AND
           ((Amount <> 0) OR ("Amount Including VAT" <> 0) OR ("VAT Base Amount" <> 0))
        THEN BEGIN
          Amount := 0;
          "Amount Including VAT" := 0;
          "VAT Base Amount" := 0;
        END;

        UpdatePrePaymentAmounts;

        IF "Job Planning Line No." <> 0 THEN
          VALIDATE("Job Planning Line No.");

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine(TRUE);
          UpdateJobPrices;
        END;

        CheckWMS;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Outstanding Quantity"(Field 16)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
        TestStatusOpen;
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Invoice"(Field 17).OnValidate". Please convert manually.

        //trigger  to Invoice"(Field 17)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Qty. to Invoice" = MaxQtyToInvoice THEN
          InitQtyToInvoice
        ELSE
          "Qty. to Invoice (Base)" := CalcBaseQty("Qty. to Invoice");
        IF ("Qty. to Invoice" * Quantity < 0) OR (ABS("Qty. to Invoice") > ABS(MaxQtyToInvoice)) THEN
          ERROR(
            Text006,
            MaxQtyToInvoice);
        IF ("Qty. to Invoice (Base)" * "Quantity (Base)" < 0) OR (ABS("Qty. to Invoice (Base)") > ABS(MaxQtyToInvoiceBase)) THEN
          ERROR(
            Text007,
            MaxQtyToInvoiceBase);
        "VAT Difference" := 0;
        CalcInvDiscToInvoice;
        CalcPrepaymentToDeduct;

        IF "Job Planning Line No." <> 0 THEN
          VALIDATE("Job Planning Line No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Qty. to Invoice" = MaxQtyToInvoice then
          InitQtyToInvoice
        else
          "Qty. to Invoice (Base)" := CalcBaseQty("Qty. to Invoice");
        if ("Qty. to Invoice" * Quantity < 0) or (Abs("Qty. to Invoice") > Abs(MaxQtyToInvoice)) then
          Error(
            Text006,
            MaxQtyToInvoice);
        if ("Qty. to Invoice (Base)" * "Quantity (Base)" < 0) or (Abs("Qty. to Invoice (Base)") > Abs(MaxQtyToInvoiceBase)) then
          Error(
        #11..16
        if "Job Planning Line No." <> 0 then
          Validate("Job Planning Line No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Receive"(Field 18).OnValidate". Please convert manually.

        //trigger  to Receive"(Field 18)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetLocation("Location Code");
        IF (CurrFieldNo <> 0) AND (Type = Type::Item) AND (NOT "Drop Shipment") THEN BEGIN
          IF Location."Require Receive" AND ("Qty. to Receive" <> 0) THEN
            CheckWarehouse;
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        END;
        OnValidateQtyToReceiveOnAfterCheck(Rec,CurrFieldNo);

        IF "Qty. to Receive" = Quantity - "Quantity Received" THEN
          InitQtyToReceive
        ELSE BEGIN
          "Qty. to Receive (Base)" := CalcBaseQty("Qty. to Receive");
          InitQtyToInvoice;
        END;

        IsHandled := FALSE;
        OnValidateQtyToReceiveOnAfterInitQty(Rec,xRec,CurrFieldNo,IsHandled);
        IF NOT IsHandled THEN BEGIN
          IF ((("Qty. to Receive" < 0) XOR (Quantity < 0)) AND (Quantity <> 0) AND ("Qty. to Receive" <> 0)) OR
             (ABS("Qty. to Receive") > ABS("Outstanding Quantity")) OR
             (((Quantity < 0 ) XOR ("Outstanding Quantity" < 0)) AND (Quantity <> 0) AND ("Outstanding Quantity" <> 0))
          THEN
            ERROR(Text008,"Outstanding Quantity");
          IF ((("Qty. to Receive (Base)" < 0) XOR ("Quantity (Base)" < 0)) AND ("Quantity (Base)" <> 0) AND ("Qty. to Receive (Base)" <> 0)) OR
             (ABS("Qty. to Receive (Base)") > ABS("Outstanding Qty. (Base)")) OR
             ((("Quantity (Base)" < 0) XOR ("Outstanding Qty. (Base)" < 0)) AND ("Quantity (Base)" <> 0) AND ("Outstanding Qty. (Base)" <> 0))
          THEN
            ERROR(Text009,"Outstanding Qty. (Base)");
        END;

        IF (CurrFieldNo <> 0) AND (Type = Type::Item) AND ("Qty. to Receive" < 0) THEN
          CheckApplToItemLedgEntry;

        IF "Job Planning Line No." <> 0 THEN
          VALIDATE("Job Planning Line No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetLocation("Location Code");
        if (CurrFieldNo <> 0) and (Type = Type::Item) and (not "Drop Shipment") then begin
          if Location."Require Receive" and ("Qty. to Receive" <> 0) then
            CheckWarehouse;
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        end;
        OnValidateQtyToReceiveOnAfterCheck(Rec,CurrFieldNo);

        if "Qty. to Receive" = Quantity - "Quantity Received" then
          InitQtyToReceive
        else begin
          "Qty. to Receive (Base)" := CalcBaseQty("Qty. to Receive");
          InitQtyToInvoice;
        end;

        IsHandled := false;
        OnValidateQtyToReceiveOnAfterInitQty(Rec,xRec,CurrFieldNo,IsHandled);
        if not IsHandled then begin
          if ((("Qty. to Receive" < 0) xor (Quantity < 0)) and (Quantity <> 0) and ("Qty. to Receive" <> 0)) or
             (Abs("Qty. to Receive") > Abs("Outstanding Quantity")) or
             (((Quantity < 0 ) xor ("Outstanding Quantity" < 0)) and (Quantity <> 0) and ("Outstanding Quantity" <> 0))
          then
            Error(Text008,"Outstanding Quantity");
          if ((("Qty. to Receive (Base)" < 0) xor ("Quantity (Base)" < 0)) and ("Quantity (Base)" <> 0) and ("Qty. to Receive (Base)" <> 0)) or
             (Abs("Qty. to Receive (Base)") > Abs("Outstanding Qty. (Base)")) or
             ((("Quantity (Base)" < 0) xor ("Outstanding Qty. (Base)" < 0)) and ("Quantity (Base)" <> 0) and ("Outstanding Qty. (Base)" <> 0))
          then
            Error(Text009,"Outstanding Qty. (Base)");
        end;

        if (CurrFieldNo <> 0) and (Type = Type::Item) and ("Qty. to Receive" < 0) then
          CheckApplToItemLedgEntry;

        if "Job Planning Line No." <> 0 then
          Validate("Job Planning Line No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Direct Unit Cost"(Field 22).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Line Discount %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        GLSetup.Get;
        if GLSetup."Active ERP-CF Connection" then
        begin
          if "Document Type"="Document Type"::Order then
            Cashflow_Modification;
        end;
        Validate("Line Discount %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Cost (LCY)"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TESTFIELD("No.");
        TESTFIELD(Quantity);

        IF "Prod. Order No." <> '' THEN
          ERROR(
            Text99000000,
            FIELDCAPTION("Unit Cost (LCY)"));

        IF CurrFieldNo = FIELDNO("Unit Cost (LCY)") THEN
          IF Type = Type::Item THEN BEGIN
            GetItem(Item);
            IF Item."Costing Method" = Item."Costing Method"::Standard THEN
              ERROR(
                Text010,
                FIELDCAPTION("Unit Cost (LCY)"),Item.FIELDCAPTION("Costing Method"),Item."Costing Method");
          END;

        UnitCostCurrency := "Unit Cost (LCY)";
        GetPurchHeader;
        IF PurchHeader."Currency Code" <> '' THEN BEGIN
          PurchHeader.TESTFIELD("Currency Factor");
          GetGLSetup;
          UnitCostCurrency :=
            ROUND(
              CurrExchRate.ExchangeAmtLCYToFCY(
                GetDate,"Currency Code",
                "Unit Cost (LCY)",PurchHeader."Currency Factor"),
              GLSetup."Unit-Amount Rounding Precision");
          OnValidateUnitCostLCYOnAfterUpdateUnitCostCurrency(Rec,UnitCostCurrency);
        END;

        "Indirect Cost %" := 0;
        IF ("Direct Unit Cost" <> 0) AND
           ("Direct Unit Cost" <> ("Line Discount Amount" / Quantity))
        THEN BEGIN
          IndirectCostPercent :=
            ROUND(
              (UnitCostCurrency - "Direct Unit Cost" + "Line Discount Amount" / Quantity) /
              ("Direct Unit Cost" - "Line Discount Amount" / Quantity) * 100,0.00001);
          IF IndirectCostPercent >= 0 THEN BEGIN
            "Indirect Cost %" := IndirectCostPercent;
            CheckLineTypeOnIndirectCostPercentUpdate;
          END;
        END;

        UpdateSalesCost;

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine(FALSE);
          TempJobJnlLine.VALIDATE("Unit Cost (LCY)","Unit Cost (LCY)");
          UpdateJobPrices;
        END
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        TestField("No.");
        TestField(Quantity);

        if "Prod. Order No." <> '' then
          Error(
            Text99000000,
            FieldCaption("Unit Cost (LCY)"));

        if CurrFieldNo = FieldNo("Unit Cost (LCY)") then
          if Type = Type::Item then begin
            GetItem(Item);
            if Item."Costing Method" = Item."Costing Method"::Standard then
              Error(
                Text010,
                FieldCaption("Unit Cost (LCY)"),Item.FieldCaption("Costing Method"),Item."Costing Method");
          end;
        #18..20
        if PurchHeader."Currency Code" <> '' then begin
          PurchHeader.TestField("Currency Factor");
          GetGLSetup;
          UnitCostCurrency :=
            Round(
        #26..30
        end;

        "Indirect Cost %" := 0;
        if ("Direct Unit Cost" <> 0) and
           ("Direct Unit Cost" <> ("Line Discount Amount" / Quantity))
        then begin
          IndirectCostPercent :=
            Round(
              (UnitCostCurrency - "Direct Unit Cost" + "Line Discount Amount" / Quantity) /
              ("Direct Unit Cost" - "Line Discount Amount" / Quantity) * 100,0.00001);
          if IndirectCostPercent >= 0 then begin
            "Indirect Cost %" := IndirectCostPercent;
            CheckLineTypeOnIndirectCostPercentUpdate;
          end;
        end;
        #46..48
        if JobTaskIsSet then begin
          CreateTempJobJnlLine(false);
          TempJobJnlLine.Validate("Unit Cost (LCY)","Unit Cost (LCY)");
          UpdateJobPrices;
        end
        */
        //end;

        //Unsupported feature: Deletion on ""Line Discount %"(Field 27).OnValidate". Please convert manually.



        //Unsupported feature: CodeModification on ""Line Discount Amount"(Field 28).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetPurchHeader;
        "Line Discount Amount" := ROUND("Line Discount Amount",Currency."Amount Rounding Precision");
        TestStatusOpen;
        TESTFIELD(Quantity);
        IF xRec."Line Discount Amount" <> "Line Discount Amount" THEN
          UpdateLineDiscPct;
        "Inv. Discount Amount" := 0;
        "Inv. Disc. Amount to Invoice" := 0;
        UpdateAmounts;
        UpdateUnitCost;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetPurchHeader;
        "Line Discount Amount" := Round("Line Discount Amount",Currency."Amount Rounding Precision");
        TestStatusOpen;
        TestField(Quantity);
        if xRec."Line Discount Amount" <> "Line Discount Amount" then
        #6..10
        */
        //end;


        //Unsupported feature: CodeModification on "Amount(Field 29).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetPurchHeader;
        Amount := ROUND(Amount,Currency."Amount Rounding Precision");
        CASE "VAT Calculation Type" OF
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            BEGIN
              "VAT Base Amount" :=
                ROUND(Amount * (1 - PurchHeader."VAT Base Discount %" / 100),Currency."Amount Rounding Precision");
              "Amount Including VAT" :=
                ROUND(Amount + "VAT Base Amount" * "VAT %" / 100,Currency."Amount Rounding Precision");
            END;
          "VAT Calculation Type"::"Full VAT":
            IF Amount <> 0 THEN
              FIELDERROR(Amount,
                STRSUBSTNO(
                  Text011,FIELDCAPTION("VAT Calculation Type"),
                  "VAT Calculation Type"));
          "VAT Calculation Type"::"Sales Tax":
            BEGIN
              PurchHeader.TESTFIELD("VAT Base Discount %",0);
              "VAT Base Amount" := Amount;
              IF "Use Tax" THEN
                "Amount Including VAT" := "VAT Base Amount"
              ELSE BEGIN
                "Amount Including VAT" :=
                  Amount +
                  ROUND(
                    SalesTaxCalculate.CalculateTax(
                      "Tax Area Code","Tax Group Code","Tax Liable",PurchHeader."Posting Date",
                      "VAT Base Amount","Quantity (Base)",PurchHeader."Currency Factor"),
                    Currency."Amount Rounding Precision");
                OnAfterSalesTaxCalculate(Rec,PurchHeader,Currency);
                IF "VAT Base Amount" <> 0 THEN
                  "VAT %" :=
                    ROUND(100 * ("Amount Including VAT" - "VAT Base Amount") / "VAT Base Amount",0.00001)
                ELSE
                  "VAT %" := 0;
              END;
            END;
        END;

        InitOutstandingAmount;
        UpdateUnitCost;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        GetPurchHeader;
        Amount := Round(Amount,Currency."Amount Rounding Precision");
        case "VAT Calculation Type" of
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            begin
              "VAT Base Amount" :=
                Round(Amount * (1 - PurchHeader."VAT Base Discount %" / 100),Currency."Amount Rounding Precision");
              "Amount Including VAT" :=
                Round(Amount + "VAT Base Amount" * "VAT %" / 100,Currency."Amount Rounding Precision");
            end;
          "VAT Calculation Type"::"Full VAT":
            if Amount <> 0 then
              FieldError(Amount,
                StrSubstNo(
                  Text011,FieldCaption("VAT Calculation Type"),
                  "VAT Calculation Type"));
          "VAT Calculation Type"::"Sales Tax":
            begin
              PurchHeader.TestField("VAT Base Discount %",0);
              "VAT Base Amount" := Amount;
              if "Use Tax" then
                "Amount Including VAT" := "VAT Base Amount"
              else begin
                "Amount Including VAT" :=
                  Amount +
                  Round(
        #28..32
                if "VAT Base Amount" <> 0 then
                  "VAT %" :=
                    Round(100 * ("Amount Including VAT" - "VAT Base Amount") / "VAT Base Amount",0.00001)
                else
                  "VAT %" := 0;
              end;
            end;
        end;
        #41..43
        */
        //end;


        //Unsupported feature: CodeModification on ""Amount Including VAT"(Field 30).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetPurchHeader;
        "Amount Including VAT" := ROUND("Amount Including VAT",Currency."Amount Rounding Precision");
        CASE "VAT Calculation Type" OF
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            BEGIN
              Amount :=
                ROUND(
                  "Amount Including VAT" /
                  (1 + (1 - PurchHeader."VAT Base Discount %" / 100) * "VAT %" / 100),
                  Currency."Amount Rounding Precision");
              "VAT Base Amount" :=
                ROUND(Amount * (1 - PurchHeader."VAT Base Discount %" / 100),Currency."Amount Rounding Precision");
            END;
          "VAT Calculation Type"::"Full VAT":
            BEGIN
              Amount := 0;
              "VAT Base Amount" := 0;
            END;
          "VAT Calculation Type"::"Sales Tax":
            BEGIN
              PurchHeader.TESTFIELD("VAT Base Discount %",0);
              IF "Use Tax" THEN BEGIN
                Amount := "Amount Including VAT";
                "VAT Base Amount" := Amount;
              END ELSE BEGIN
                Amount :=
                  ROUND(
                    SalesTaxCalculate.ReverseCalculateTax(
                      "Tax Area Code","Tax Group Code","Tax Liable",PurchHeader."Posting Date",
                      "Amount Including VAT","Quantity (Base)",PurchHeader."Currency Factor"),
                    Currency."Amount Rounding Precision");
                OnAfterSalesTaxCalculateReverse(Rec,PurchHeader,Currency);
                "VAT Base Amount" := Amount;
                IF "VAT Base Amount" <> 0 THEN
                  "VAT %" :=
                    ROUND(100 * ("Amount Including VAT" - "VAT Base Amount") / "VAT Base Amount",0.00001)
                ELSE
                  "VAT %" := 0;
              END;
            END;
        END;

        InitOutstandingAmount;
        UpdateUnitCost;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetPurchHeader;
        "Amount Including VAT" := Round("Amount Including VAT",Currency."Amount Rounding Precision");
        case "VAT Calculation Type" of
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            begin
              Amount :=
                Round(
        #9..12
                Round(Amount * (1 - PurchHeader."VAT Base Discount %" / 100),Currency."Amount Rounding Precision");
            end;
          "VAT Calculation Type"::"Full VAT":
            begin
              Amount := 0;
              "VAT Base Amount" := 0;
            end;
          "VAT Calculation Type"::"Sales Tax":
            begin
              PurchHeader.TestField("VAT Base Discount %",0);
              if "Use Tax" then begin
                Amount := "Amount Including VAT";
                "VAT Base Amount" := Amount;
              end else begin
                Amount :=
                  Round(
        #29..34
                if "VAT Base Amount" <> 0 then
                  "VAT %" :=
                    Round(100 * ("Amount Including VAT" - "VAT Base Amount") / "VAT Base Amount",0.00001)
                else
                  "VAT %" := 0;
              end;
            end;
        end;
        #43..45
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Unit Price (LCY)"(Field 31)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
        TestStatusOpen;
        */
        //end;


        //Unsupported feature: CodeModification on ""Allow Invoice Disc."(Field 32).OnValidate". Please convert manually.

        //trigger "(Field 32)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF ("VAT Calculation Type" = "VAT Calculation Type"::"Full VAT") AND "Allow Invoice Disc." THEN
          ERROR(CannotAllowInvDiscountErr,FIELDCAPTION("Allow Invoice Disc."));

        IF "Allow Invoice Disc." <> xRec."Allow Invoice Disc." THEN BEGIN
          IF NOT "Allow Invoice Disc." THEN BEGIN
            "Inv. Discount Amount" := 0;
            "Inv. Disc. Amount to Invoice" := 0;
          END;
          UpdateAmounts;
          UpdateUnitCost;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if ("VAT Calculation Type" = "VAT Calculation Type"::"Full VAT") and "Allow Invoice Disc." then
          Error(CannotAllowInvDiscountErr,FieldCaption("Allow Invoice Disc."));

        if "Allow Invoice Disc." <> xRec."Allow Invoice Disc." then begin
          if not "Allow Invoice Disc." then begin
            "Inv. Discount Amount" := 0;
            "Inv. Disc. Amount to Invoice" := 0;
          end;
          UpdateAmounts;
          UpdateUnitCost;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Appl.-to Item Entry"(Field 38).OnValidate". Please convert manually.

        //trigger -to Item Entry"(Field 38)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Appl.-to Item Entry" <> 0 THEN
          "Location Code" := CheckApplToItemLedgEntry;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Appl.-to Item Entry" <> 0 then
          "Location Code" := CheckApplToItemLedgEntry;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job No."(Field 45).OnValidate". Please convert manually.

        //trigger "(Field 45)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Drop Shipment",FALSE);
        TESTFIELD("Special Order",FALSE);
        TESTFIELD("Receipt No.",'');
        IF "Document Type" = "Document Type"::Order THEN
          TESTFIELD("Quantity Received",0);

        IF ReservEntryExist THEN
          TESTFIELD("Job No.",'');

        IF "Job No." <> xRec."Job No." THEN BEGIN
          VALIDATE("Job Task No.",'');
          VALIDATE("Job Planning Line No.",0);
        END;

        IF "Job No." = '' THEN BEGIN
          CreateDim(
            DATABASE::Job,"Job No.",
            DimMgt.TypeToTableID3(Type),"No.",
            DATABASE::"Responsibility Center","Responsibility Center",
            DATABASE::"Work Center","Work Center No.");
          EXIT;
        END;

        IF NOT (Type IN [Type::Item,Type::"G/L Account"]) THEN
          FIELDERROR("Job No.",STRSUBSTNO(Text012,FIELDCAPTION(Type),Type));
        Job.GET("Job No.");
        Job.TestBlocked;
        "Job Currency Code" := Job."Currency Code";

        CreateDim(
          DATABASE::Job,"Job No.",
          DimMgt.TypeToTableID3(Type),"No.",
          DATABASE::"Responsibility Center","Responsibility Center",
          DATABASE::"Work Center","Work Center No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Drop Shipment",false);
        TestField("Special Order",false);
        TestField("Receipt No.",'');
        if "Document Type" = "Document Type"::Order then
          TestField("Quantity Received",0);

        if ReservEntryExist then
          TestField("Job No.",'');

        if "Job No." <> xRec."Job No." then begin
          Validate("Job Task No.",'');
          Validate("Job Planning Line No.",0);
        end;

        if "Job No." = '' then begin
        #16..20
          exit;
        end;

        if not (Type in [Type::Item,Type::"G/L Account"]) then
          FieldError("Job No.",StrSubstNo(Text012,FieldCaption(Type),Type));
        Job.Get("Job No.");
        #27..34
        */
        //end;


        //Unsupported feature: CodeModification on ""Indirect Cost %"(Field 54).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("No.");
        TestStatusOpen;

        CheckLineTypeOnIndirectCostPercentUpdate;

        IF (Type = Type::Item) AND ("Prod. Order No." = '') THEN BEGIN
          GetItem(Item);
          Item.TESTFIELD(Type,Item.Type::Inventory);
          IF Item."Costing Method" = Item."Costing Method"::Standard THEN
            ERROR(
              Text010,
              FIELDCAPTION("Indirect Cost %"),Item.FIELDCAPTION("Costing Method"),Item."Costing Method");
        END;

        UpdateUnitCost;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("No.");
        #2..5
        if (Type = Type::Item) and ("Prod. Order No." = '') then begin
          GetItem(Item);
          Item.TestField(Type,Item.Type::Inventory);
          if Item."Costing Method" = Item."Costing Method"::Standard then
            Error(
              Text010,
              FieldCaption("Indirect Cost %"),Item.FieldCaption("Costing Method"),Item."Costing Method");
        end;

        UpdateUnitCost;
        */
        //end;


        //Unsupported feature: CodeModification on ""Outstanding Amount"(Field 57).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetPurchHeader;
        Currency2.InitRoundingPrecision;
        IF PurchHeader."Currency Code" <> '' THEN
          "Outstanding Amount (LCY)" :=
            ROUND(
              CurrExchRate.ExchangeAmtFCYToLCY(
                GetDate,"Currency Code",
                "Outstanding Amount",PurchHeader."Currency Factor"),
              Currency2."Amount Rounding Precision")
        ELSE
          "Outstanding Amount (LCY)" :=
            ROUND("Outstanding Amount",Currency2."Amount Rounding Precision");

        "Outstanding Amt. Ex. VAT (LCY)" :=
          ROUND("Outstanding Amount (LCY)" / (1 + "VAT %" / 100),Currency2."Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetPurchHeader;
        Currency2.InitRoundingPrecision;
        if PurchHeader."Currency Code" <> '' then
          "Outstanding Amount (LCY)" :=
            Round(
        #6..9
        else
          "Outstanding Amount (LCY)" :=
            Round("Outstanding Amount",Currency2."Amount Rounding Precision");

        "Outstanding Amt. Ex. VAT (LCY)" :=
          Round("Outstanding Amount (LCY)" / (1 + "VAT %" / 100),Currency2."Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Amt. Rcd. Not Invoiced"(Field 59).OnValidate". Please convert manually.

        //trigger  Rcd();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetPurchHeader;
        Currency2.InitRoundingPrecision;
        IF PurchHeader."Currency Code" <> '' THEN
          "Amt. Rcd. Not Invoiced (LCY)" :=
            ROUND(
              CurrExchRate.ExchangeAmtFCYToLCY(
                GetDate,"Currency Code",
                "Amt. Rcd. Not Invoiced",PurchHeader."Currency Factor"),
              Currency2."Amount Rounding Precision")
        ELSE
          "Amt. Rcd. Not Invoiced (LCY)" :=
            ROUND("Amt. Rcd. Not Invoiced",Currency2."Amount Rounding Precision");

        "A. Rcd. Not Inv. Ex. VAT (LCY)" :=
          ROUND("Amt. Rcd. Not Invoiced (LCY)" / (1 + "VAT %" / 100),Currency2."Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetPurchHeader;
        Currency2.InitRoundingPrecision;
        if PurchHeader."Currency Code" <> '' then
          "Amt. Rcd. Not Invoiced (LCY)" :=
            Round(
        #6..9
        else
          "Amt. Rcd. Not Invoiced (LCY)" :=
            Round("Amt. Rcd. Not Invoiced",Currency2."Amount Rounding Precision");

        "A. Rcd. Not Inv. Ex. VAT (LCY)" :=
          Round("Amt. Rcd. Not Invoiced (LCY)" / (1 + "VAT %" / 100),Currency2."Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Vendor Item No."(Field 70).OnValidate". Please convert manually.

        //trigger "(Field 70)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF PurchHeader."Send IC Document" AND
           ("IC Partner Ref. Type" = "IC Partner Ref. Type"::"Vendor Item No.")
        THEN
          "IC Partner Reference" := "Vendor Item No.";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if PurchHeader."Send IC Document" and
           ("IC Partner Ref. Type" = "IC Partner Ref. Type"::"Vendor Item No.")
        then
          "IC Partner Reference" := "Vendor Item No.";
        */
        //end;


        //Unsupported feature: CodeModification on ""Sales Order No."(Field 71).OnValidate". Please convert manually.

        //trigger "(Field 71)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec."Sales Order No." <> "Sales Order No.") AND (Quantity <> 0) THEN BEGIN
          ReservePurchLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec."Sales Order No." <> "Sales Order No.") and (Quantity <> 0) then begin
          ReservePurchLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Sales Order Line No."(Field 72).OnValidate". Please convert manually.

        //trigger "(Field 72)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec."Sales Order Line No." <> "Sales Order Line No.") AND (Quantity <> 0) THEN BEGIN
          ReservePurchLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec."Sales Order Line No." <> "Sales Order Line No.") and (Quantity <> 0) then begin
          ReservePurchLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Drop Shipment"(Field 73).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec."Drop Shipment" <> "Drop Shipment") AND (Quantity <> 0) THEN BEGIN
          ReservePurchLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        END;
        IF "Drop Shipment" THEN BEGIN
          "Bin Code" := '';
          EVALUATE("Inbound Whse. Handling Time",'<0D>');
          VALIDATE("Inbound Whse. Handling Time");
          EVALUATE("Safety Lead Time",'<0D>');
          VALIDATE("Safety Lead Time");
          InitOutstanding;
          InitQtyToReceive;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec."Drop Shipment" <> "Drop Shipment") and (Quantity <> 0) then begin
          ReservePurchLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        end;
        if "Drop Shipment" then begin
          "Bin Code" := '';
          Evaluate("Inbound Whse. Handling Time",'<0D>');
          Validate("Inbound Whse. Handling Time");
          Evaluate("Safety Lead Time",'<0D>');
          Validate("Safety Lead Time");
          InitOutstanding;
          InitQtyToReceive;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Bus. Posting Group"(Field 74).OnValidate". Please convert manually.

        //trigger  Bus();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" THEN
          IF GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") THEN
            VALIDATE("VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" then
          if GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") then
            Validate("VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Prod. Posting Group"(Field 75).OnValidate". Please convert manually.

        //trigger  Prod();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" THEN
          IF GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") THEN
            VALIDATE("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" then
          if GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") then
            Validate("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
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
        IF "Prepmt. Amt. Inv." <> 0 THEN
          ERROR(CannotChangeVATGroupWithPrepmInvErr);
        VATPostingSetup.GET("VAT Bus. Posting Group","VAT Prod. Posting Group");
        OnValidateVATProdPostingGroupOnAfterVATPostingSetupGet(VATPostingSetup);
        "VAT Difference" := 0;
        GetPurchHeader;
        "VAT %" := VATPostingSetup."VAT %";
        "VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
        IF "VAT Calculation Type" = "VAT Calculation Type"::"Full VAT" THEN
          VALIDATE("Allow Invoice Disc.",FALSE);
        "VAT Identifier" := VATPostingSetup."VAT Identifier";

        IsHandled := FALSE;
        OnValidateVATProdPostingGroupOnBeforeCheckVATCalcType(Rec,VATPostingSetup,IsHandled);
        IF NOT IsHandled THEN
          CASE "VAT Calculation Type" OF
            "VAT Calculation Type"::"Reverse Charge VAT",
            "VAT Calculation Type"::"Sales Tax":
              "VAT %" := 0;
            "VAT Calculation Type"::"Full VAT":
              BEGIN
                TESTFIELD(Type,Type::"G/L Account");
                TESTFIELD("No.",VATPostingSetup.GetPurchAccount(FALSE));
              END;
          END;

        IF PurchHeader."Prices Including VAT" AND (Type = Type::Item) THEN
          VALIDATE("Direct Unit Cost",
            ROUND(
              "Direct Unit Cost" * (100 + "VAT %") / (100 + xRec."VAT %"),
              Currency."Unit-Amount Rounding Precision"));
        UpdateAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Prepmt. Amt. Inv." <> 0 then
          Error(CannotChangeVATGroupWithPrepmInvErr);
        if ("VAT Bus. Posting Group"<>'') and ("VAT Prod. Posting Group"<>'') then
        VATPostingSetup.Get("VAT Bus. Posting Group","VAT Prod. Posting Group");
        #5..9
        if "VAT Calculation Type" = "VAT Calculation Type"::"Full VAT" then
          Validate("Allow Invoice Disc.",false);
        "VAT Identifier" := VATPostingSetup."VAT Identifier";

        IsHandled := false;
        OnValidateVATProdPostingGroupOnBeforeCheckVATCalcType(Rec,VATPostingSetup,IsHandled);
        if not IsHandled then
          case "VAT Calculation Type" of
        #18..21
              begin
                TestField(Type,Type::"G/L Account");
                TestField("No.",VATPostingSetup.GetPurchAccount(false));
              end;
          end;

        if PurchHeader."Prices Including VAT" and (Type = Type::Item) then
          Validate("Direct Unit Cost",
            Round(
        #31..33
        */
        //end;


        //Unsupported feature: CodeModification on ""Blanket Order No."(Field 97).OnLookup". Please convert manually.

        //trigger "(Field 97)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Received",0);
        BlanketOrderLookup;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Received",0);
        BlanketOrderLookup;
        */
        //end;


        //Unsupported feature: CodeModification on ""Blanket Order No."(Field 97).OnValidate". Please convert manually.

        //trigger "(Field 97)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Received",0);
        IF "Blanket Order No." = '' THEN
          "Blanket Order Line No." := 0
        ELSE
          VALIDATE("Blanket Order Line No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Received",0);
        if "Blanket Order No." = '' then
          "Blanket Order Line No." := 0
        else
          Validate("Blanket Order Line No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Blanket Order Line No."(Field 98).OnValidate". Please convert manually.

        //trigger "(Field 98)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Received",0);
        IF "Blanket Order Line No." <> 0 THEN BEGIN
          PurchLine2.GET("Document Type"::"Blanket Order","Blanket Order No.","Blanket Order Line No.");
          PurchLine2.TESTFIELD(Type,Type);
          PurchLine2.TESTFIELD("No.","No.");
          PurchLine2.TESTFIELD("Pay-to Vendor No.","Pay-to Vendor No.");
          PurchLine2.TESTFIELD("Buy-from Vendor No.","Buy-from Vendor No.");
          IF "Drop Shipment" THEN BEGIN
            PurchLine2.TESTFIELD("Variant Code","Variant Code");
            PurchLine2.TESTFIELD("Location Code","Location Code");
            PurchLine2.TESTFIELD("Unit of Measure Code","Unit of Measure Code");
          END ELSE BEGIN
            VALIDATE("Variant Code",PurchLine2."Variant Code");
            VALIDATE("Location Code",PurchLine2."Location Code");
            VALIDATE("Unit of Measure Code",PurchLine2."Unit of Measure Code");
          END;
          VALIDATE("Direct Unit Cost",PurchLine2."Direct Unit Cost");
          VALIDATE("Line Discount %",PurchLine2."Line Discount %");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Received",0);
        if "Blanket Order Line No." <> 0 then begin
          PurchLine2.Get("Document Type"::"Blanket Order","Blanket Order No.","Blanket Order Line No.");
          PurchLine2.TestField(Type,Type);
          PurchLine2.TestField("No.","No.");
          PurchLine2.TestField("Pay-to Vendor No.","Pay-to Vendor No.");
          PurchLine2.TestField("Buy-from Vendor No.","Buy-from Vendor No.");
          if "Drop Shipment" then begin
            PurchLine2.TestField("Variant Code","Variant Code");
            PurchLine2.TestField("Location Code","Location Code");
            PurchLine2.TestField("Unit of Measure Code","Unit of Measure Code");
          end else begin
            Validate("Variant Code",PurchLine2."Variant Code");
            Validate("Location Code",PurchLine2."Location Code");
            Validate("Unit of Measure Code",PurchLine2."Unit of Measure Code");
          end;
          Validate("Direct Unit Cost",PurchLine2."Direct Unit Cost");
          Validate("Line Discount %",PurchLine2."Line Discount %");
        end;
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Unit Cost"(Field 100)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
        TestStatusOpen;
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
        TESTFIELD("Direct Unit Cost");

        GetPurchHeader;
        "Line Amount" := ROUND("Line Amount",Currency."Amount Rounding Precision");
        VALIDATE(
          "Line Discount Amount",ROUND(Quantity * "Direct Unit Cost",Currency."Amount Rounding Precision") - "Line Amount");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type);
        TestField(Quantity);
        TestField("Direct Unit Cost");

        GetPurchHeader;
        "Line Amount" := Round("Line Amount",Currency."Amount Rounding Precision");
        Validate(
          "Line Discount Amount",Round(Quantity * "Direct Unit Cost",Currency."Amount Rounding Precision") - "Line Amount");
        */
        //end;


        //Unsupported feature: CodeModification on ""IC Partner Ref. Type"(Field 107).OnValidate". Please convert manually.

        //trigger  Type"(Field 107)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "IC Partner Code" <> '' THEN
          "IC Partner Ref. Type" := "IC Partner Ref. Type"::"G/L Account";
        IF "IC Partner Ref. Type" <> xRec."IC Partner Ref. Type" THEN
          "IC Partner Reference" := '';
        IF "IC Partner Ref. Type" = "IC Partner Ref. Type"::"Common Item No." THEN BEGIN
          GetItem(Item);
          Item.TESTFIELD("Common Item No.");
          "IC Partner Reference" := Item."Common Item No.";
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "IC Partner Code" <> '' then
          "IC Partner Ref. Type" := "IC Partner Ref. Type"::"G/L Account";
        if "IC Partner Ref. Type" <> xRec."IC Partner Ref. Type" then
          "IC Partner Reference" := '';
        if "IC Partner Ref. Type" = "IC Partner Ref. Type"::"Common Item No." then begin
          GetItem(Item);
          Item.TestField("Common Item No.");
          "IC Partner Reference" := Item."Common Item No.";
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""IC Partner Reference"(Field 108).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> '' THEN
          CASE "IC Partner Ref. Type" OF
            "IC Partner Ref. Type"::"G/L Account":
              BEGIN
                IF ICGLAccount.GET("IC Partner Reference") THEN;
                IF PAGE.RUNMODAL(PAGE::"IC G/L Account List",ICGLAccount) = ACTION::LookupOK THEN
                  VALIDATE("IC Partner Reference",ICGLAccount."No.");
              END;
            "IC Partner Ref. Type"::Item:
              BEGIN
                IF Item.GET("IC Partner Reference") THEN;
                IF PAGE.RUNMODAL(PAGE::"Item List",Item) = ACTION::LookupOK THEN
                  VALIDATE("IC Partner Reference",Item."No.");
              END;
            "IC Partner Ref. Type"::"Cross Reference":
              BEGIN
                GetPurchHeader;
                ItemCrossReference.RESET;
                ItemCrossReference.SETCURRENTKEY("Cross-Reference Type","Cross-Reference Type No.");
                ItemCrossReference.SETFILTER(
                  "Cross-Reference Type",'%1|%2',
                  ItemCrossReference."Cross-Reference Type"::Vendor,
                  ItemCrossReference."Cross-Reference Type"::" ");
                ItemCrossReference.SETFILTER("Cross-Reference Type No.",'%1|%2',PurchHeader."Buy-from Vendor No.",'');
                IF PAGE.RUNMODAL(PAGE::"Cross Reference List",ItemCrossReference) = ACTION::LookupOK THEN
                  VALIDATE("IC Partner Reference",ItemCrossReference."Cross-Reference No.");
              END;
            "IC Partner Ref. Type"::"Vendor Item No.":
              BEGIN
                GetPurchHeader;
                ItemVendorCatalog.SETCURRENTKEY("Vendor No.");
                ItemVendorCatalog.SETRANGE("Vendor No.",PurchHeader."Buy-from Vendor No.");
                IF PAGE.RUNMODAL(PAGE::"Vendor Item Catalog",ItemVendorCatalog) = ACTION::LookupOK THEN
                  VALIDATE("IC Partner Reference",ItemVendorCatalog."Vendor Item No.");
              END;
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> '' then
          case "IC Partner Ref. Type" of
            "IC Partner Ref. Type"::"G/L Account":
              begin
                if ICGLAccount.Get("IC Partner Reference") then;
                if PAGE.RunModal(PAGE::"IC G/L Account List",ICGLAccount) = ACTION::LookupOK then
                  Validate("IC Partner Reference",ICGLAccount."No.");
              end;
            "IC Partner Ref. Type"::Item:
              begin
                if Item.Get("IC Partner Reference") then;
                if PAGE.RunModal(PAGE::"Item List",Item) = ACTION::LookupOK then
                  Validate("IC Partner Reference",Item."No.");
              end;
            "IC Partner Ref. Type"::"Cross Reference":
              begin
                GetPurchHeader;
                ItemCrossReference.Reset;
                ItemCrossReference.SetCurrentKey("Cross-Reference Type","Cross-Reference Type No.");
                ItemCrossReference.SetFilter(
        #21..23
                ItemCrossReference.SetFilter("Cross-Reference Type No.",'%1|%2',PurchHeader."Buy-from Vendor No.",'');
                if PAGE.RunModal(PAGE::"Cross Reference List",ItemCrossReference) = ACTION::LookupOK then
                  Validate("IC Partner Reference",ItemCrossReference."Cross-Reference No.");
              end;
            "IC Partner Ref. Type"::"Vendor Item No.":
              begin
                GetPurchHeader;
                ItemVendorCatalog.SetCurrentKey("Vendor No.");
                ItemVendorCatalog.SetRange("Vendor No.",PurchHeader."Buy-from Vendor No.");
                if PAGE.RunModal(PAGE::"Vendor Item Catalog",ItemVendorCatalog) = ACTION::LookupOK then
                  Validate("IC Partner Reference",ItemVendorCatalog."Vendor Item No.");
              end;
          end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepayment %"(Field 109).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        UpdatePrepmtSetupFields;

        IF HasTypeToFillMandatoryFields THEN
          UpdateAmounts;
        UpdateBaseAmounts(Amount,"Amount Including VAT","VAT Base Amount");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..3
        if HasTypeToFillMandatoryFields then
          UpdateAmounts;
        UpdateBaseAmounts(Amount,"Amount Including VAT","VAT Base Amount");
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepmt. Line Amount"(Field 110).OnValidate". Please convert manually.

        //trigger  Line Amount"(Field 110)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        PrePaymentLineAmountEntered := TRUE;
        TESTFIELD("Line Amount");
        IF "Prepmt. Line Amount" < "Prepmt. Amt. Inv." THEN
          FIELDERROR("Prepmt. Line Amount",STRSUBSTNO(Text038,"Prepmt. Amt. Inv."));
        IF "Prepmt. Line Amount" > "Line Amount" THEN
          FIELDERROR("Prepmt. Line Amount",STRSUBSTNO(Text039,"Line Amount"));
        VALIDATE("Prepayment %",ROUND("Prepmt. Line Amount" * 100 / "Line Amount",0.00001));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        PrePaymentLineAmountEntered := true;
        TestField("Line Amount");
        if "Prepmt. Line Amount" < "Prepmt. Amt. Inv." then
          FieldError("Prepmt. Line Amount",StrSubstNo(Text038,"Prepmt. Amt. Inv."));
        if "Prepmt. Line Amount" > "Line Amount" then
          FieldError("Prepmt. Line Amount",StrSubstNo(Text039,"Line Amount"));
        Validate("Prepayment %",Round("Prepmt. Line Amount" * 100 / "Line Amount",0.00001));
        */
        //end;


        //Unsupported feature: CodeModification on ""Prepmt Amt to Deduct"(Field 121).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Prepmt Amt to Deduct" > "Prepmt. Amt. Inv." - "Prepmt Amt Deducted" THEN
          FIELDERROR(
            "Prepmt Amt to Deduct",
            STRSUBSTNO(Text039,"Prepmt. Amt. Inv." - "Prepmt Amt Deducted"));

        IF "Prepmt Amt to Deduct" > "Qty. to Invoice" * "Direct Unit Cost" THEN
          FIELDERROR(
            "Prepmt Amt to Deduct",
            STRSUBSTNO(Text039,"Qty. to Invoice" * "Direct Unit Cost"));
        IF ("Prepmt. Amt. Inv." - "Prepmt Amt to Deduct" - "Prepmt Amt Deducted") >
           (Quantity - "Qty. to Invoice" - "Quantity Invoiced") * "Direct Unit Cost"
        THEN
          FIELDERROR(
            "Prepmt Amt to Deduct",
            STRSUBSTNO(Text038,
              "Prepmt. Amt. Inv." - "Prepmt Amt Deducted" -
              (Quantity - "Qty. to Invoice" - "Quantity Invoiced") * "Direct Unit Cost"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Prepmt Amt to Deduct" > "Prepmt. Amt. Inv." - "Prepmt Amt Deducted" then
          FieldError(
            "Prepmt Amt to Deduct",
            StrSubstNo(Text039,"Prepmt. Amt. Inv." - "Prepmt Amt Deducted"));

        if "Prepmt Amt to Deduct" > "Qty. to Invoice" * "Direct Unit Cost" then
          FieldError(
            "Prepmt Amt to Deduct",
            StrSubstNo(Text039,"Qty. to Invoice" * "Direct Unit Cost"));
        if ("Prepmt. Amt. Inv." - "Prepmt Amt to Deduct" - "Prepmt Amt Deducted") >
           (Quantity - "Qty. to Invoice" - "Quantity Invoiced") * "Direct Unit Cost"
        then
          FieldError(
            "Prepmt Amt to Deduct",
            StrSubstNo(Text038,
              "Prepmt. Amt. Inv." - "Prepmt Amt Deducted" -
              (Quantity - "Qty. to Invoice" - "Quantity Invoiced") * "Direct Unit Cost"));
        */
        //end;


        //Unsupported feature: CodeModification on ""IC Partner Code"(Field 130).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "IC Partner Code" <> '' THEN BEGIN
          TESTFIELD(Type,Type::"G/L Account");
          GetPurchHeader;
          PurchHeader.TESTFIELD("Buy-from IC Partner Code",'');
          PurchHeader.TESTFIELD("Pay-to IC Partner Code",'');
          VALIDATE("IC Partner Ref. Type","IC Partner Ref. Type"::"G/L Account");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "IC Partner Code" <> '' then begin
          TestField(Type,Type::"G/L Account");
          GetPurchHeader;
          PurchHeader.TestField("Buy-from IC Partner Code",'');
          PurchHeader.TestField("Pay-to IC Partner Code",'');
          Validate("IC Partner Ref. Type","IC Partner Ref. Type"::"G/L Account");
        end;
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


        //Unsupported feature: CodeModification on ""Job Task No."(Field 1001).OnValidate". Please convert manually.

        //trigger "(Field 1001)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Receipt No.",'');

        IF "Job Task No." <> xRec."Job Task No." THEN BEGIN
          VALIDATE("Job Planning Line No.",0);
          IF "Document Type" = "Document Type"::Order THEN
            TESTFIELD("Quantity Received",0);
        END;

        IF "Job Task No." = '' THEN BEGIN
          CLEAR(TempJobJnlLine);
          "Job Line Type" := "Job Line Type"::" ";
          UpdateJobPrices;
          CreateDim(
            DimMgt.TypeToTableID3(Type),"No.",
            DATABASE::Job,"Job No.",
            DATABASE::"Responsibility Center","Responsibility Center",
            DATABASE::"Work Center","Work Center No.");
          EXIT;
        END;

        JobSetCurrencyFactor;
        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine(TRUE);
          UpdateJobPrices;
        END;
        UpdateDimensionsFromJobTask;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Receipt No.",'');

        if "Job Task No." <> xRec."Job Task No." then begin
          Validate("Job Planning Line No.",0);
          if "Document Type" = "Document Type"::Order then
            TestField("Quantity Received",0);
        end;

        if "Job Task No." = '' then begin
          Clear(TempJobJnlLine);
        #11..17
          exit;
        end;

        JobSetCurrencyFactor;
        if JobTaskIsSet then begin
          CreateTempJobJnlLine(true);
          UpdateJobPrices;
        end;
        UpdateDimensionsFromJobTask;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Type"(Field 1002).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Receipt No.",'');
        IF "Document Type" = "Document Type"::Order THEN
          TESTFIELD("Quantity Received",0);

        IF "Job Planning Line No." <> 0 THEN
          ERROR(Text048,FIELDCAPTION("Job Line Type"),FIELDCAPTION("Job Planning Line No."));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Receipt No.",'');
        if "Document Type" = "Document Type"::Order then
          TestField("Quantity Received",0);

        if "Job Planning Line No." <> 0 then
          Error(Text048,FieldCaption("Job Line Type"),FieldCaption("Job Planning Line No."));
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Unit Price"(Field 1003).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Receipt No.",'');
        IF "Document Type" = "Document Type"::Order THEN
          TESTFIELD("Quantity Received",0);

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine(FALSE);
          TempJobJnlLine.VALIDATE("Unit Price","Job Unit Price");
          UpdateJobPrices;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Receipt No.",'');
        if "Document Type" = "Document Type"::Order then
          TestField("Quantity Received",0);

        if JobTaskIsSet then begin
          CreateTempJobJnlLine(false);
          TempJobJnlLine.Validate("Unit Price","Job Unit Price");
          UpdateJobPrices;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Amount"(Field 1005).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Receipt No.",'');
        IF "Document Type" = "Document Type"::Order THEN
          TESTFIELD("Quantity Received",0);

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine(FALSE);
          TempJobJnlLine.VALIDATE("Line Amount","Job Line Amount");
          UpdateJobPrices;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Receipt No.",'');
        if "Document Type" = "Document Type"::Order then
          TestField("Quantity Received",0);

        if JobTaskIsSet then begin
          CreateTempJobJnlLine(false);
          TempJobJnlLine.Validate("Line Amount","Job Line Amount");
          UpdateJobPrices;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Discount Amount"(Field 1006).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Receipt No.",'');
        IF "Document Type" = "Document Type"::Order THEN
          TESTFIELD("Quantity Received",0);

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine(FALSE);
          TempJobJnlLine.VALIDATE("Line Discount Amount","Job Line Discount Amount");
          UpdateJobPrices;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Receipt No.",'');
        if "Document Type" = "Document Type"::Order then
          TestField("Quantity Received",0);

        if JobTaskIsSet then begin
          CreateTempJobJnlLine(false);
          TempJobJnlLine.Validate("Line Discount Amount","Job Line Discount Amount");
          UpdateJobPrices;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Discount %"(Field 1007).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Receipt No.",'');
        IF "Document Type" = "Document Type"::Order THEN
          TESTFIELD("Quantity Received",0);

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine(FALSE);
          TempJobJnlLine.VALIDATE("Line Discount %","Job Line Discount %");
          UpdateJobPrices;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Receipt No.",'');
        if "Document Type" = "Document Type"::Order then
          TestField("Quantity Received",0);

        if JobTaskIsSet then begin
          CreateTempJobJnlLine(false);
          TempJobJnlLine.Validate("Line Discount %","Job Line Discount %");
          UpdateJobPrices;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Unit Price (LCY)"(Field 1008).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Receipt No.",'');
        IF "Document Type" = "Document Type"::Order THEN
          TESTFIELD("Quantity Received",0);

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine(FALSE);
          TempJobJnlLine.VALIDATE("Unit Price (LCY)","Job Unit Price (LCY)");
          UpdateJobPrices;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Receipt No.",'');
        if "Document Type" = "Document Type"::Order then
          TestField("Quantity Received",0);

        if JobTaskIsSet then begin
          CreateTempJobJnlLine(false);
          TempJobJnlLine.Validate("Unit Price (LCY)","Job Unit Price (LCY)");
          UpdateJobPrices;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Amount (LCY)"(Field 1010).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Receipt No.",'');
        IF "Document Type" = "Document Type"::Order THEN
          TESTFIELD("Quantity Received",0);

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine(FALSE);
          TempJobJnlLine.VALIDATE("Line Amount (LCY)","Job Line Amount (LCY)");
          UpdateJobPrices;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Receipt No.",'');
        if "Document Type" = "Document Type"::Order then
          TestField("Quantity Received",0);

        if JobTaskIsSet then begin
          CreateTempJobJnlLine(false);
          TempJobJnlLine.Validate("Line Amount (LCY)","Job Line Amount (LCY)");
          UpdateJobPrices;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Line Disc. Amount (LCY)"(Field 1011).OnValidate". Please convert manually.

        //trigger  Amount (LCY)"(Field 1011)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Receipt No.",'');
        IF "Document Type" = "Document Type"::Order THEN
          TESTFIELD("Quantity Received",0);

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine(FALSE);
          TempJobJnlLine.VALIDATE("Line Discount Amount (LCY)","Job Line Disc. Amount (LCY)");
          UpdateJobPrices;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Receipt No.",'');
        if "Document Type" = "Document Type"::Order then
          TestField("Quantity Received",0);

        if JobTaskIsSet then begin
          CreateTempJobJnlLine(false);
          TempJobJnlLine.Validate("Line Discount Amount (LCY)","Job Line Disc. Amount (LCY)");
          UpdateJobPrices;
        end;
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
            Type::"G/L Account":
              JobPlanningLine.TESTFIELD(Type,JobPlanningLine.Type::"G/L Account");
            Type::Item:
              JobPlanningLine.TESTFIELD(Type,JobPlanningLine.Type::Item);
          END;
          JobPlanningLine.TESTFIELD("No.","No.");
          JobPlanningLine.TESTFIELD("Usage Link",TRUE);
          JobPlanningLine.TESTFIELD("System-Created Entry",FALSE);
          "Job Line Type" := JobPlanningLine."Line Type" + 1;
          VALIDATE("Job Remaining Qty.",JobPlanningLine."Remaining Qty." - "Qty. to Invoice");
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
            Type::"G/L Account":
              JobPlanningLine.TestField(Type,JobPlanningLine.Type::"G/L Account");
            Type::Item:
              JobPlanningLine.TestField(Type,JobPlanningLine.Type::Item);
          end;
          JobPlanningLine.TestField("No.","No.");
          JobPlanningLine.TestField("Usage Link",true);
          JobPlanningLine.TestField("System-Created Entry",false);
          "Job Line Type" := JobPlanningLine."Line Type" + 1;
          Validate("Job Remaining Qty.",JobPlanningLine."Remaining Qty." - "Qty. to Invoice");
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
        "Job Remaining Qty. (Base)" := CalcBaseQty("Job Remaining Qty.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Deferral Code"(Field 1700).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetPurchHeader;
        DeferralPostDate := PurchHeader."Posting Date";

        #4..6
          GetDeferralAmount,DeferralPostDate,
          Description,PurchHeader."Currency Code");

        IF "Document Type" = "Document Type"::"Return Order" THEN
          "Returns Deferral Start Date" :=
            DeferralUtilities.GetDeferralStartDate(DeferralUtilities.GetPurchDeferralDocType,
              "Document Type","Document No.","Line No.","Deferral Code",PurchHeader."Posting Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..9
        if "Document Type" = "Document Type"::"Return Order" then
        #11..13
        */
        //end;


        //Unsupported feature: CodeModification on ""Returns Deferral Start Date"(Field 1702).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetPurchHeader;
        IF DeferralHeader.GET(DeferralUtilities.GetPurchDeferralDocType,'','',"Document Type","Document No.","Line No.") THEN
          DeferralUtilities.CreateDeferralSchedule("Deferral Code",DeferralUtilities.GetPurchDeferralDocType,'','',
            "Document Type","Document No.","Line No.",GetDeferralAmount,
            DeferralHeader."Calc. Method","Returns Deferral Start Date",
            DeferralHeader."No. of Periods",TRUE,
            DeferralHeader."Schedule Description",FALSE,
            PurchHeader."Currency Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetPurchHeader;
        if DeferralHeader.Get(DeferralUtilities.GetPurchDeferralDocType,'','',"Document Type","Document No.","Line No.") then
        #3..5
            DeferralHeader."No. of Periods",true,
            DeferralHeader."Schedule Description",false,
            PurchHeader."Currency Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Prod. Order No."(Field 5401).OnValidate". Please convert manually.

        //trigger  Order No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Drop Shipment" THEN
          ERROR(
            Text001,
            FIELDCAPTION("Prod. Order No."),"Sales Order No.");

        AddOnIntegrMgt.ValidateProdOrderOnPurchLine(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Drop Shipment" then
          Error(
            Text001,
            FieldCaption("Prod. Order No."),"Sales Order No.");

        AddOnIntegrMgt.ValidateProdOrderOnPurchLine(Rec);
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
          TESTFIELD("Qty. Rcd. Not Invoiced",0);
          TESTFIELD("Receipt No.",'');
          TESTFIELD("Return Qty. Shipped Not Invd.",0);
          TESTFIELD("Return Shipment No.",'');
        END;

        IF "Drop Shipment" THEN
          ERROR(Text001,FIELDCAPTION("Variant Code"),"Sales Order No.");

        OnValidateVariantCodeOnAfterValidationChecks(Rec,xRec,CurrFieldNo);

        IF Type = Type::Item THEN
          UpdateDirectUnitCost(FIELDNO("Variant Code"));

        IF (xRec."Variant Code" <> "Variant Code") AND (Quantity <> 0) THEN BEGIN
          ReservePurchLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
          InitItemAppl;
        END;

        UpdateLeadTimeFields;
        UpdateDates;
        GetDefaultBin;
        IF Type = Type::Item THEN
          UpdateItemReference;

        IF JobTaskIsSet THEN BEGIN
          CreateTempJobJnlLine(TRUE);
          UpdateJobPrices;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" <> '' then
          TestField(Type,Type::Item);
        TestStatusOpen;

        if xRec."Variant Code" <> "Variant Code" then begin
          TestField("Qty. Rcd. Not Invoiced",0);
          TestField("Receipt No.",'');
          TestField("Return Qty. Shipped Not Invd.",0);
          TestField("Return Shipment No.",'');
        end;

        if "Drop Shipment" then
          Error(Text001,FieldCaption("Variant Code"),"Sales Order No.");
        #14..16
        if Type = Type::Item then
          UpdateDirectUnitCost(FieldNo("Variant Code"));

        if (xRec."Variant Code" <> "Variant Code") and (Quantity <> 0) then begin
        #21..23
        end;
        #25..28
        if Type = Type::Item then
          UpdateItemReference;

        if JobTaskIsSet then begin
          CreateTempJobJnlLine(true);
          UpdateJobPrices;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 5403).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT IsInbound AND ("Quantity (Base)" <> 0) THEN
          BinCode := WMSManagement.BinContentLookUp("Location Code","No.","Variant Code",'',"Bin Code")
        ELSE
          BinCode := WMSManagement.BinLookUp("Location Code","No.","Variant Code",'');

        IF BinCode <> '' THEN
          VALIDATE("Bin Code",BinCode);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not IsInbound and ("Quantity (Base)" <> 0) then
          BinCode := WMSManagement.BinContentLookUp("Location Code","No.","Variant Code",'',"Bin Code")
        else
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
        IF "Bin Code" <> '' THEN BEGIN
          IF NOT IsInbound AND ("Quantity (Base)" <> 0) THEN
            WMSManagement.FindBinContent("Location Code","Bin Code","No.","Variant Code",'')
          ELSE
            WMSManagement.FindBin("Location Code","Bin Code",'');
        END;

        IF "Drop Shipment" THEN
          ERROR(
            Text001,
            FIELDCAPTION("Bin Code"),"Sales Order No.");

        TESTFIELD(Type,Type::Item);
        TESTFIELD("Location Code");

        IF "Bin Code" <> '' THEN BEGIN
          GetLocation("Location Code");
          Location.TESTFIELD("Bin Mandatory");
          CheckWarehouse;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bin Code" <> '' then begin
          if not IsInbound and ("Quantity (Base)" <> 0) then
            WMSManagement.FindBinContent("Location Code","Bin Code","No.","Variant Code",'')
          else
            WMSManagement.FindBin("Location Code","Bin Code",'');
        end;

        if "Drop Shipment" then
          Error(
            Text001,
            FieldCaption("Bin Code"),"Sales Order No.");

        TestField(Type,Type::Item);
        TestField("Location Code");

        if "Bin Code" <> '' then begin
          GetLocation("Location Code");
          Location.TestField("Bin Mandatory");
          CheckWarehouse;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 5407).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TESTFIELD("Quantity Received",0);
        TESTFIELD("Qty. Received (Base)",0);
        TESTFIELD("Qty. Rcd. Not Invoiced",0);
        TESTFIELD("Return Qty. Shipped",0);
        TESTFIELD("Return Qty. Shipped (Base)",0);
        IF "Unit of Measure Code" <> xRec."Unit of Measure Code" THEN BEGIN
          TESTFIELD("Receipt No.",'');
          TESTFIELD("Return Shipment No.",'');
        END;
        IF "Drop Shipment" THEN
          ERROR(
            Text001,
            FIELDCAPTION("Unit of Measure Code"),"Sales Order No.");
        IF (xRec."Unit of Measure Code" <> "Unit of Measure Code") AND (Quantity <> 0) THEN
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        UpdateDirectUnitCost(FIELDNO("Unit of Measure Code"));
        IF "Unit of Measure Code" = '' THEN
          "Unit of Measure" := ''
        ELSE BEGIN
          UnitOfMeasure.GET("Unit of Measure Code");
          "Unit of Measure" := UnitOfMeasure.Description;
          GetPurchHeader;
          IF PurchHeader."Language Code" <> '' THEN BEGIN
            UnitOfMeasureTranslation.SETRANGE(Code,"Unit of Measure Code");
            UnitOfMeasureTranslation.SETRANGE("Language Code",PurchHeader."Language Code");
            IF UnitOfMeasureTranslation.FINDFIRST THEN
              "Unit of Measure" := UnitOfMeasureTranslation.Description;
          END;
        END;
        IF Type = Type::Item THEN
          UpdateItemReference;
        IF "Prod. Order No." = '' THEN BEGIN
          IF (Type = Type::Item) AND ("No." <> '') THEN BEGIN
            GetItem(Item);
            "Qty. per Unit of Measure" := UOMMgt.GetQtyPerUnitOfMeasure(Item,"Unit of Measure Code");
            "Gross Weight" := Item."Gross Weight" * "Qty. per Unit of Measure";
            "Net Weight" := Item."Net Weight" * "Qty. per Unit of Measure";
            "Unit Volume" := Item."Unit Volume" * "Qty. per Unit of Measure";
            "Units per Parcel" := ROUND(Item."Units per Parcel" / "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
            OnAfterAssignItemUOM(Rec,Item);
            IF "Qty. per Unit of Measure" > xRec."Qty. per Unit of Measure" THEN
              InitItemAppl;
            UpdateUOMQtyPerStockQty;
          END ELSE
            "Qty. per Unit of Measure" := 1;
        END ELSE
          "Qty. per Unit of Measure" := 0;

        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        TestField("Quantity Received",0);
        TestField("Qty. Received (Base)",0);
        TestField("Qty. Rcd. Not Invoiced",0);
        TestField("Return Qty. Shipped",0);
        TestField("Return Qty. Shipped (Base)",0);
        if "Unit of Measure Code" <> xRec."Unit of Measure Code" then begin
          TestField("Receipt No.",'');
          TestField("Return Shipment No.",'');
        end;
        if "Drop Shipment" then
          Error(
            Text001,
            FieldCaption("Unit of Measure Code"),"Sales Order No.");
        if (xRec."Unit of Measure Code" <> "Unit of Measure Code") and (Quantity <> 0) then
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        UpdateDirectUnitCost(FieldNo("Unit of Measure Code"));
        if "Unit of Measure Code" = '' then
          "Unit of Measure" := ''
        else begin
          UnitOfMeasure.Get("Unit of Measure Code");
          "Unit of Measure" := UnitOfMeasure.Description;
          GetPurchHeader;
          if PurchHeader."Language Code" <> '' then begin
            UnitOfMeasureTranslation.SetRange(Code,"Unit of Measure Code");
            UnitOfMeasureTranslation.SetRange("Language Code",PurchHeader."Language Code");
            if UnitOfMeasureTranslation.FindFirst then
              "Unit of Measure" := UnitOfMeasureTranslation.Description;
          end;
        end;
        if Type = Type::Item then
          UpdateItemReference;
        if "Prod. Order No." = '' then begin
          if (Type = Type::Item) and ("No." <> '') then begin
        #35..39
            "Units per Parcel" := Round(Item."Units per Parcel" / "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision);
            OnAfterAssignItemUOM(Rec,Item);
            if "Qty. per Unit of Measure" > xRec."Qty. per Unit of Measure" then
              InitItemAppl;
            UpdateUOMQtyPerStockQty;
          end else
            "Qty. per Unit of Measure" := 1;
        end else
          "Qty. per Unit of Measure" := 0;

        Validate(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity (Base)"(Field 5415).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE(Quantity,"Quantity (Base)");
        UpdateDirectUnitCost(FIELDNO("Quantity (Base)"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate(Quantity,"Quantity (Base)");
        UpdateDirectUnitCost(FieldNo("Quantity (Base)"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Invoice (Base)"(Field 5417).OnValidate". Please convert manually.

        //trigger  to Invoice (Base)"(Field 5417)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Qty. to Invoice","Qty. to Invoice (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate("Qty. to Invoice","Qty. to Invoice (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Receive (Base)"(Field 5418).OnValidate". Please convert manually.

        //trigger  to Receive (Base)"(Field 5418)();
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


        //Unsupported feature: CodeModification on ""FA Posting Type"(Field 5601).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::"Fixed Asset" THEN BEGIN
          TESTFIELD("Job No.",'');
          IF "FA Posting Type" = "FA Posting Type"::" " THEN
            "FA Posting Type" := "FA Posting Type"::"Acquisition Cost";
          GetFAPostingGroup;
        END ELSE BEGIN
          "Depreciation Book Code" := '';
          "FA Posting Date" := 0D;
          "Salvage Value" := 0;
          "Depr. until FA Posting Date" := FALSE;
          "Depr. Acquisition Cost" := FALSE;
          "Maintenance Code" := '';
          "Insurance No." := '';
          "Budgeted FA No." := '';
          "Duplicate in Depreciation Book" := '';
          "Use Duplication List" := FALSE;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::"Fixed Asset" then begin
          TestField("Job No.",'');
          if "FA Posting Type" = "FA Posting Type"::" " then
            "FA Posting Type" := "FA Posting Type"::"Acquisition Cost";
          GetFAPostingGroup;
        end else begin
        #7..9
          "Depr. until FA Posting Date" := false;
          "Depr. Acquisition Cost" := false;
        #12..15
          "Use Duplication List" := false;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Budgeted FA No."(Field 5611).OnValidate". Please convert manually.

        //trigger "(Field 5611)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Budgeted FA No." <> '' THEN BEGIN
          FixedAsset.GET("Budgeted FA No.");
          FixedAsset.TESTFIELD("Budgeted Asset",TRUE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Budgeted FA No." <> '' then begin
          FixedAsset.Get("Budgeted FA No.");
          FixedAsset.TestField("Budgeted Asset",true);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Duplicate in Depreciation Book"(Field 5612).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Use Duplication List" := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Use Duplication List" := false;
        */
        //end;


        //Unsupported feature: CodeModification on ""Cross-Reference No."(Field 5705).OnValidate". Please convert manually.

        //trigger "(Field 5705)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetPurchHeader;
        "Buy-from Vendor No." := PurchHeader."Buy-from Vendor No.";
        ValidateCrossReferenceNo(ItemCrossReference,TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetPurchHeader;
        "Buy-from Vendor No." := PurchHeader."Buy-from Vendor No.";
        ValidateCrossReferenceNo(ItemCrossReference,true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Purchasing Code"(Field 5711).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF PurchasingCode.GET("Purchasing Code") THEN BEGIN
          "Drop Shipment" := PurchasingCode."Drop Shipment";
          "Special Order" := PurchasingCode."Special Order";
        END ELSE
          "Drop Shipment" := FALSE;
        VALIDATE("Drop Shipment","Drop Shipment");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if PurchasingCode.Get("Purchasing Code") then begin
          "Drop Shipment" := PurchasingCode."Drop Shipment";
          "Special Order" := PurchasingCode."Special Order";
        end else
          "Drop Shipment" := false;
        Validate("Drop Shipment","Drop Shipment");
        */
        //end;


        //Unsupported feature: CodeModification on ""Special Order"(Field 5713).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec."Special Order" <> "Special Order") AND (Quantity <> 0) THEN
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec."Special Order" <> "Special Order") and (Quantity <> 0) then
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Special Order Sales No."(Field 5714).OnValidate". Please convert manually.

        //trigger "(Field 5714)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec."Special Order Sales No." <> "Special Order Sales No.") AND (Quantity <> 0) THEN
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec."Special Order Sales No." <> "Special Order Sales No.") and (Quantity <> 0) then
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Special Order Sales Line No."(Field 5715).OnValidate". Please convert manually.

        //trigger "(Field 5715)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec."Special Order Sales Line No." <> "Special Order Sales Line No.") AND (Quantity <> 0) THEN
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec."Special Order Sales Line No." <> "Special Order Sales Line No.") and (Quantity <> 0) then
          WhseValidateSourceLine.PurchaseLineVerifyChange(Rec,xRec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Requested Receipt Date"(Field 5790).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF (CurrFieldNo <> 0) AND
           ("Promised Receipt Date" <> 0D)
        THEN
          ERROR(
            Text023,
            FIELDCAPTION("Requested Receipt Date"),
            FIELDCAPTION("Promised Receipt Date"));

        IF "Requested Receipt Date" <> 0D THEN
          VALIDATE("Order Date",
            CalendarMgmt.CalcDateBOC2(AdjustDateFormula("Lead Time Calculation"),"Requested Receipt Date",
              CalChange."Source Type"::Vendor,"Buy-from Vendor No.",'',
              CalChange."Source Type"::Location,"Location Code",'',TRUE))
        ELSE
          IF "Requested Receipt Date" <> xRec."Requested Receipt Date" THEN
            GetUpdateBasicDates;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if (CurrFieldNo <> 0) and
           ("Promised Receipt Date" <> 0D)
        then
          Error(
            Text023,
            FieldCaption("Requested Receipt Date"),
            FieldCaption("Promised Receipt Date"));

        if "Requested Receipt Date" <> 0D then
        begin
        {    VALIDATE("Order Date",
        #12..14
        } //commented by pranavi on 04-04-2015 for testing
        end
        else
          if "Requested Receipt Date" <> xRec."Requested Receipt Date" then
            GetUpdateBasicDates;
        */
        //end;


        //Unsupported feature: CodeModification on ""Promised Receipt Date"(Field 5791).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> 0 THEN
          IF "Promised Receipt Date" <> 0D THEN
            VALIDATE("Planned Receipt Date","Promised Receipt Date")
          ELSE
            VALIDATE("Requested Receipt Date")
        ELSE
          VALIDATE("Planned Receipt Date","Promised Receipt Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> 0 then
          if "Promised Receipt Date" <> 0D then
            Validate("Planned Receipt Date","Promised Receipt Date")
          else
            Validate("Requested Receipt Date")
        else
          Validate("Planned Receipt Date","Promised Receipt Date");
        */
        //end;


        //Unsupported feature: CodeModification on ""Lead Time Calculation"(Field 5792).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        LeadTimeMgt.CheckLeadTimeIsNotNegative("Lead Time Calculation");

        IF "Requested Receipt Date" <> 0D THEN
          VALIDATE("Planned Receipt Date")
        ELSE
          GetUpdateBasicDates;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..3
        if "Requested Receipt Date" <> 0D then
          Validate("Planned Receipt Date")
        else
          GetUpdateBasicDates;
        */
        //end;


        //Unsupported feature: CodeModification on ""Inbound Whse. Handling Time"(Field 5793).OnValidate". Please convert manually.

        //trigger  Handling Time"(Field 5793)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF ("Promised Receipt Date" <> 0D) OR
           ("Requested Receipt Date" <> 0D)
        THEN
          VALIDATE("Planned Receipt Date")
        ELSE
          VALIDATE("Expected Receipt Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if ("Promised Receipt Date" <> 0D) or
           ("Requested Receipt Date" <> 0D)
        then
          Validate("Planned Receipt Date")
        else
          Validate("Expected Receipt Date");
        */
        //end;


        //Unsupported feature: CodeModification on ""Planned Receipt Date"(Field 5794).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Promised Receipt Date" <> 0D THEN BEGIN
          IF "Planned Receipt Date" <> 0D THEN
            "Expected Receipt Date" :=
              CalendarMgmt.CalcDateBOC(InternalLeadTimeDays("Planned Receipt Date"),"Planned Receipt Date",
                CalChange."Source Type"::Location,"Location Code",'',
                CalChange."Source Type"::Location,"Location Code",'',FALSE)
          ELSE
            "Expected Receipt Date" := "Planned Receipt Date";
        END ELSE
          IF "Planned Receipt Date" <> 0D THEN BEGIN
            "Order Date" :=
              CalendarMgmt.CalcDateBOC2(AdjustDateFormula("Lead Time Calculation"),"Planned Receipt Date",
                CalChange."Source Type"::Vendor,"Buy-from Vendor No.",'',
                CalChange."Source Type"::Location,"Location Code",'',TRUE);
            "Expected Receipt Date" :=
              CalendarMgmt.CalcDateBOC(InternalLeadTimeDays("Planned Receipt Date"),"Planned Receipt Date",
                CalChange."Source Type"::Location,"Location Code",'',
                CalChange."Source Type"::Location,"Location Code",'',FALSE)
          END ELSE
            GetUpdateBasicDates;

        IF NOT TrackingBlocked THEN
          CheckDateConflict.PurchLineCheck(Rec,CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Promised Receipt Date" <> 0D then begin
          if "Planned Receipt Date" <> 0D then
        #4..6
                CalChange."Source Type"::Location,"Location Code",'',false)
          else
            "Expected Receipt Date" := "Planned Receipt Date";
        end else
          if "Planned Receipt Date" <> 0D then begin
           { "Order Date" :=
              CalendarMgmt.CalcDateBOC2(AdjustDateFormula("Lead Time Calculation"),"Planned Receipt Date",
                CalChange."Source Type"::Vendor,"Buy-from Vendor No.",'',
                CalChange."Source Type"::Location,"Location Code",'',TRUE);}//commented by Sundar as order date in lines are changing.
        #16..18
                CalChange."Source Type"::Location,"Location Code",'',false)
          end else
            GetUpdateBasicDates;

        if not TrackingBlocked then
          CheckDateConflict.PurchLineCheck(Rec,CurrFieldNo <> 0);
        */
        //end;


        //Unsupported feature: CodeModification on ""Order Date"(Field 5795).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF (CurrFieldNo <> 0) AND
           ("Document Type" = "Document Type"::Order) AND
           ("Order Date" < WORKDATE) AND
           ("Order Date" <> 0D)
        THEN
          MESSAGE(
            Text018,
            FIELDCAPTION("Order Date"),"Order Date",WORKDATE);

        IF "Order Date" <> 0D THEN
          "Planned Receipt Date" :=
            CalendarMgmt.CalcDateBOC(AdjustDateFormula("Lead Time Calculation"),"Order Date",
              CalChange."Source Type"::Vendor,"Buy-from Vendor No.",'',
              CalChange."Source Type"::Location,"Location Code",'',TRUE);

        IF "Planned Receipt Date" <> 0D THEN
          "Expected Receipt Date" :=
            CalendarMgmt.CalcDateBOC(InternalLeadTimeDays("Planned Receipt Date"),"Planned Receipt Date",
              CalChange."Source Type"::Location,"Location Code",'',
              CalChange."Source Type"::Location,"Location Code",'',FALSE)
        ELSE
          "Expected Receipt Date" := "Planned Receipt Date";

        IF NOT TrackingBlocked THEN
          CheckDateConflict.PurchLineCheck(Rec,CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if (CurrFieldNo <> 0) and
           ("Document Type" = "Document Type"::Order) and
           ("Order Date" < WorkDate) and
           ("Order Date" <> 0D)
        then
          Message(
            Text018,
            FieldCaption("Order Date"),"Order Date",WorkDate);

        if "Order Date" <> 0D then
        #12..14
              CalChange."Source Type"::Location,"Location Code",'',true);

        if "Planned Receipt Date" <> 0D then begin
        #18..20
              CalChange."Source Type"::Location,"Location Code",'',false);
         //EFF Start
          "Deviated Receipt Date" :=
            CalendarMgmt.CalcDateBOC(InternalLeadTimeDays("Planned Receipt Date"),"Planned Receipt Date",
              CalChange."Source Type"::Location,"Location Code",'',
              CalChange."Source Type"::Location,"Location Code",'',false);//EFF End
        end else
        begin
          "Expected Receipt Date" := "Planned Receipt Date";
          "Deviated Receipt Date":= "Planned Receipt Date";
        if not TrackingBlocked then
          CheckDateConflict.PurchLineCheck(Rec,CurrFieldNo <> 0);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Return Qty. to Ship"(Field 5803).OnValidate". Please convert manually.

        //trigger  to Ship"(Field 5803)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (CurrFieldNo <> 0) AND
           (Type = Type::Item) AND
           ("Return Qty. to Ship" <> 0) AND
           (NOT "Drop Shipment")
        THEN
          CheckWarehouse;

        OnValidateReturnQtyToShipOnAfterCheck(Rec,CurrFieldNo);

        IF "Return Qty. to Ship" = Quantity - "Return Qty. Shipped" THEN
          InitQtyToShip
        ELSE BEGIN
          "Return Qty. to Ship (Base)" := CalcBaseQty("Return Qty. to Ship");
          InitQtyToInvoice;
        END;

        IsHandled := FALSE;
        OnValidateReturnQtyToShipOnAfterInitQty(Rec,xRec,CurrFieldNo,IsHandled);
        IF NOT IsHandled THEN BEGIN
          IF ("Return Qty. to Ship" * Quantity < 0) OR
             (ABS("Return Qty. to Ship") > ABS("Outstanding Quantity")) OR
             (Quantity * "Outstanding Quantity" < 0)
          THEN
            ERROR(Text020,"Outstanding Quantity");
          IF ("Return Qty. to Ship (Base)" * "Quantity (Base)" < 0) OR
             (ABS("Return Qty. to Ship (Base)") > ABS("Outstanding Qty. (Base)")) OR
             ("Quantity (Base)" * "Outstanding Qty. (Base)" < 0)
          THEN
            ERROR(Text021,"Outstanding Qty. (Base)");
        END;

        IF (CurrFieldNo <> 0) AND (Type = Type::Item) AND ("Return Qty. to Ship" > 0) THEN
          CheckApplToItemLedgEntry;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (CurrFieldNo <> 0) and
           (Type = Type::Item) and
           ("Return Qty. to Ship" <> 0) and
           (not "Drop Shipment")
        then
        #6..9
        if "Return Qty. to Ship" = Quantity - "Return Qty. Shipped" then
          InitQtyToShip
        else begin
          "Return Qty. to Ship (Base)" := CalcBaseQty("Return Qty. to Ship");
          InitQtyToInvoice;
        end;

        IsHandled := false;
        OnValidateReturnQtyToShipOnAfterInitQty(Rec,xRec,CurrFieldNo,IsHandled);
        if not IsHandled then begin
          if ("Return Qty. to Ship" * Quantity < 0) or
             (Abs("Return Qty. to Ship") > Abs("Outstanding Quantity")) or
             (Quantity * "Outstanding Quantity" < 0)
          then
            Error(Text020,"Outstanding Quantity");
          if ("Return Qty. to Ship (Base)" * "Quantity (Base)" < 0) or
             (Abs("Return Qty. to Ship (Base)") > Abs("Outstanding Qty. (Base)")) or
             ("Quantity (Base)" * "Outstanding Qty. (Base)" < 0)
          then
            Error(Text021,"Outstanding Qty. (Base)");
        end;

        if (CurrFieldNo <> 0) and (Type = Type::Item) and ("Return Qty. to Ship" > 0) then
          CheckApplToItemLedgEntry;
        */
        //end;


        //Unsupported feature: CodeModification on ""Return Qty. to Ship (Base)"(Field 5804).OnValidate". Please convert manually.

        //trigger  to Ship (Base)"(Field 5804)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Return Qty. to Ship","Return Qty. to Ship (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate("Return Qty. to Ship","Return Qty. to Ship (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Return Shpd. Not Invd."(Field 5807).OnValidate". Please convert manually.

        //trigger  Not Invd();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetPurchHeader;
        Currency2.InitRoundingPrecision;
        IF PurchHeader."Currency Code" <> '' THEN
          "Return Shpd. Not Invd. (LCY)" :=
            ROUND(
              CurrExchRate.ExchangeAmtFCYToLCY(
                GetDate,"Currency Code",
                "Return Shpd. Not Invd.",PurchHeader."Currency Factor"),
              Currency2."Amount Rounding Precision")
        ELSE
          "Return Shpd. Not Invd. (LCY)" :=
            ROUND("Return Shpd. Not Invd.",Currency2."Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetPurchHeader;
        Currency2.InitRoundingPrecision;
        if PurchHeader."Currency Code" <> '' then
          "Return Shpd. Not Invd. (LCY)" :=
            Round(
        #6..9
        else
          "Return Shpd. Not Invd. (LCY)" :=
            Round("Return Shpd. Not Invd.",Currency2."Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Return Reason Code"(Field 6608).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateReturnReasonCode(FIELDNO("Return Reason Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ValidateReturnReasonCode(FieldNo("Return Reason Code"));
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""Attached Doc Count"(Field 7010)". Please convert manually.



        //Unsupported feature: CodeModification on ""Operation No."(Field 99000751).OnValidate". Please convert manually.

        //trigger "(Field 99000751)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Operation No." = '' THEN
          EXIT;

        TESTFIELD(Type,Type::Item);
        TESTFIELD("Prod. Order No.");
        TESTFIELD("Routing No.");

        ProdOrderRtngLine.GET(
          ProdOrderRtngLine.Status::Released,
          "Prod. Order No.",
          "Routing Reference No.",
          "Routing No.",
          "Operation No.");

        ProdOrderRtngLine.TESTFIELD(
          Type,
          ProdOrderRtngLine.Type::"Work Center");

        "Expected Receipt Date" := ProdOrderRtngLine."Ending Date";
        VALIDATE("Work Center No.",ProdOrderRtngLine."No.");
        VALIDATE("Direct Unit Cost",ProdOrderRtngLine."Direct Unit Cost");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Operation No." = '' then
          exit;

        TestField(Type,Type::Item);
        TestField("Prod. Order No.");
        TestField("Routing No.");

        ProdOrderRtngLine.Get(
        #9..14
        ProdOrderRtngLine.TestField(
        #16..19
        Validate("Work Center No.",ProdOrderRtngLine."No.");
        Validate("Direct Unit Cost",ProdOrderRtngLine."Direct Unit Cost");
        */
        //end;


        //Unsupported feature: CodeModification on ""Work Center No."(Field 99000752).OnValidate". Please convert manually.

        //trigger "(Field 99000752)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::"Charge (Item)" THEN
          TESTFIELD("Work Center No.",'');
        IF "Work Center No." = '' THEN
          EXIT;

        WorkCenter.GET("Work Center No.");
        "Gen. Prod. Posting Group" := WorkCenter."Gen. Prod. Posting Group";
        "VAT Prod. Posting Group" := '';
        IF GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") THEN
          "VAT Prod. Posting Group" := GenProdPostingGrp."Def. VAT Prod. Posting Group";
        VALIDATE("VAT Prod. Posting Group");

        "Overhead Rate" := WorkCenter."Overhead Rate";
        VALIDATE("Indirect Cost %",WorkCenter."Indirect Cost %");

        CreateDim(
          DATABASE::"Work Center","Work Center No.",
          DimMgt.TypeToTableID3(Type),"No.",
          DATABASE::Job,"Job No.",
          DATABASE::"Responsibility Center","Responsibility Center");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::"Charge (Item)" then
          TestField("Work Center No.",'');
        if "Work Center No." = '' then
          exit;

        WorkCenter.Get("Work Center No.");
        "Gen. Prod. Posting Group" := WorkCenter."Gen. Prod. Posting Group";
        "VAT Prod. Posting Group" := '';
        if GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") then
          "VAT Prod. Posting Group" := GenProdPostingGrp."Def. VAT Prod. Posting Group";
        Validate("VAT Prod. Posting Group");

        "Overhead Rate" := WorkCenter."Overhead Rate";
        Validate("Indirect Cost %",WorkCenter."Indirect Cost %");
        #15..20
        */
        //end;


        //Unsupported feature: CodeModification on ""Overhead Rate"(Field 99000755).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Indirect Cost %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Indirect Cost %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Planning Flexibility"(Field 99000757).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Planning Flexibility" <> xRec."Planning Flexibility" THEN
          ReservePurchLine.UpdatePlanningFlexibility(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Planning Flexibility" <> xRec."Planning Flexibility" then
          ReservePurchLine.UpdatePlanningFlexibility(Rec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Safety Lead Time"(Field 99000758).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Inbound Whse. Handling Time");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Inbound Whse. Handling Time");
        */
        //end;
        field(13701; "Tax %"; Decimal)
        {
            CaptionML = ENU = 'Tax %',
                        ENN = 'Tax %';
            DataClassification = ToBeClassified;
            Editable = false;
            MinValue = 0;
        }
        field(13702; "Amount Including Tax"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Tax',
                        ENN = 'Amount Including Tax';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13703; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;

            trigger OnLookup();
            var
            //StateForm: Record "State Forms";
            begin
                /*StateForm.SETRANGE(State,"State Code");
                StateForm.SETRANGE("Transit Document",FALSE);
                IF StateForm.FINDFIRST THEN
                  IF PAGE.RUNMODAL(PAGE::"State Forms",StateForm) = ACTION::LookupOK THEN
                    "Form Code" := StateForm."Form Code";
                VALIDATE("Form Code");
                */

            end;

            trigger OnValidate();
            begin
                UpdateAmounts;
            end;
        }
        field(13704; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
            TableRelation = "Tax Forms Details"."Form No." WHERE("Form Code" = FIELD("Form Code"),
                                                                  Issued = CONST(false),
                                                                  State = FIELD("State Code"));
        }
        field(13705; "State Code"; Code[10])
        {
            CaptionML = ENU = 'State Code',
                        ENN = 'State Code';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(13711; "Tax Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Tax Base Amount',
                        ENN = 'Tax Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13713; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            Editable = true;
            //TableRelation = "Excise Bus. Posting Group";
        }
        field(13714; "Excise Prod. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Prod. Posting Group',
                        ENN = 'Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            Editable = true;
            //TableRelation = "Excise Prod. Posting Group";
        }
        field(13717; "Amount Including Excise"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Excise',
                        ENN = 'Amount Including Excise';
            DataClassification = ToBeClassified;
        }
        field(13718; "Excise Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 3;
            CaptionML = ENU = 'Excise Amount',
                        ENN = 'Excise Amount';
            DataClassification = ToBeClassified;
        }
        field(13719; "Excise Base Quantity"; Decimal)
        {
            CaptionML = ENU = 'Excise Base Quantity',
                        ENN = 'Excise Base Quantity';
            DataClassification = ToBeClassified;
        }
        field(13722; "Tax Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Tax Amount',
                        ENN = 'Tax Amount';
            DataClassification = ToBeClassified;
            DecimalPlaces = 2 : 2;
            Editable = false;
        }
        field(13724; "Excise Accounting Type"; Option)
        {
            CaptionML = ENU = 'Excise Accounting Type',
                        ENN = 'Excise Accounting Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'With CENVAT,Without CENVAT',
                              ENN = 'With CENVAT,Without CENVAT';
            OptionMembers = "With CENVAT","Without CENVAT";
        }
        field(13730; "Work Tax Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Work Tax Base Amount',
                        ENN = 'Work Tax Base Amount';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                //"Work Tax Amount" := "Work Tax Base Amount" * "Work Tax %" / 100;
            end;
        }
        field(13731; "Work Tax %"; Decimal)
        {
            CaptionML = ENU = 'Work Tax %',
                        ENN = 'Work Tax %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13732; "Work Tax Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Work Tax Amount',
                        ENN = 'Work Tax Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13733; "TDS Category"; Option)
        {
            CaptionML = ENU = 'TDS Category',
                        ENN = 'TDS Category';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,A,C,S,T',
                              ENN = ' ,A,C,S,T';
            OptionMembers = " ",A,C,S,T;
        }
        field(13734; "Surcharge %"; Decimal)
        {
            CaptionML = ENU = 'Surcharge %',
                        ENN = 'Surcharge %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13735; "Surcharge Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Surcharge Amount',
                        ENN = 'Surcharge Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13736; "Concessional Code"; Code[10])
        {
            CaptionML = ENU = 'Concessional Code',
                        ENN = 'Concessional Code';
            DataClassification = ToBeClassified;
            Editable = false;
            // TableRelation = "Concessional Codes";
        }
        field(13738; "Excise Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Base Amount',
                        ENN = 'Excise Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13740; "TDS Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'TDS Amount',
                        ENN = 'TDS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13741; "TDS Nature of Deduction"; Code[10])
        {
            CaptionML = ENU = 'TDS Nature of Deduction',
                        ENN = 'TDS Nature of Deduction';
            DataClassification = ToBeClassified;
            TableRelation = "TDS Nature of Deduction";

            trigger OnLookup();
            begin
                /*SetFilterOnNODLines('','');
                IF NODLines.FIND('-') THEN
                  REPEAT
                    TDSNOD.RESET;
                    TDSNOD.SETRANGE(Code,NODLines."NOD/NOC");
                    IF TDSNOD.FINDFIRST THEN
                      TDSNOD.MODIFYALL(Mark,TRUE);
                    COMMIT;
                  UNTIL NODLines.NEXT = 0;
                
                TDSNOD.RESET;
                TDSNOD.SETRANGE(Mark,TRUE);
                IF PAGE.RUNMODAL(PAGE::"TDS Nature of Deductions",TDSNOD) = ACTION::LookupOK THEN
                  "TDS Nature of Deduction" := TDSNOD.Code;
                
                VALIDATE("TDS Nature of Deduction");
                */

            end;

            trigger OnValidate();
            var
                Vend: Record Vendor;
            begin
                /*TDSNOD.MODIFYALL(Mark,FALSE);
                SetFilterOnNODLines("TDS Nature of Deduction",'');
                GetPurchHeader;
                IF PurchHeader."Applies-to Doc. No." <> '' THEN
                  PurchHeader.TESTFIELD("Applies-to Doc. No.",'');
                IF (PurchHeader."Applies-to ID" <> '') AND ("TDS Nature of Deduction" <> xRec."TDS Nature of Deduction") THEN
                  PurchHeader.TESTFIELD("Applies-to ID",'');
                IF NOT NODLines.FIND('-') THEN
                  IF "TDS Nature of Deduction" <> '' THEN
                    ERROR(Text13700);
                IF TDSNOD.GET("TDS Nature of Deduction") THEN BEGIN
                
                  "TDS Category" := TDSNOD.Category;
                  "TDS Group" := TDSNOD."TDS Group";
                  //"Assessee Code" := TDSNOD. added by sujani 03Jul19 for TDS Calculation
                  IF NODHeader.GET(NODHeader.Type::Vendor,"Buy-from Vendor No.") THEN
                  VALIDATE("Assessee Code",NODHeader."Assesse Code");
                
                 PurchHeader.RESET;
                   PurchHeader.SETFILTER(PurchHeader."No.","Document No.");
                    IF PurchHeader.FINDSET THEN
                      BEGIN
                      PurchHeader."Assessee Code" := "Assessee Code";
                      PurchHeader.MODIFY;
                      END;
                //added by sujani 03Jul19 for TDS Calculation//
                  IF "TDS Group" = "TDS Group"::"Payable to Non Residents" THEN BEGIN
                    Vend.GET("Buy-from Vendor No.");
                    Vend.TESTFIELD("Country/Region Code");
                    "Country Code" := Vend."Country/Region Code";
                  END;
                END ELSE BEGIN
                  "TDS Category" := "TDS Category"::" ";
                  "TDS Group" := "TDS Group"::" ";
                  "Nature of Remittance" := '';
                  "Act Applicable" := "Act Applicable"::" ";
                  "Country Code" :='';
                END;
                
                InitTDSAmounts(Rec);
                */

            end;
        }
        field(13742; "Assessee Code"; Code[10])
        {
            CaptionML = ENU = 'Assessee Code',
                        ENN = 'Assessee Code';
            DataClassification = ToBeClassified;
            Editable = true;
            //TableRelation = "Assessee Code";
        }
        field(13743; "TDS %"; Decimal)
        {
            CaptionML = ENU = 'TDS %',
                        ENN = 'TDS %';
            DataClassification = ToBeClassified;
            Editable = false;

            trigger OnValidate();
            begin
                /*"Bal. TDS Including SHE CESS" :=
                  ROUND(("TDS %" * (1 + "Surcharge %" / 100)) * Amount / 100,Currency."Amount Rounding Precision");
                */

            end;
        }
        field(13744; "TDS Amount Including Surcharge"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'TDS Amount Including Surcharge',
                        ENN = 'TDS Amount Including Surcharge';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13746; "Bal. TDS Including SHE CESS"; Decimal)
        {
            CaptionML = ENU = 'Bal. TDS Including SHE CESS',
                        ENN = 'Bal. TDS Including SHE CESS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13747; "Nature of Remittance"; Code[10])
        {
            CaptionML = ENU = 'Nature of Remittance',
                        ENN = 'Nature of Remittance';
            DataClassification = ToBeClassified;
            // TableRelation = "TDS Nature of Remittance";

            trigger OnLookup();
            var
            //NatureOfRemittance: Record "TDS Nature of Remittance";
            begin
                /*TESTFIELD("TDS Nature of Deduction");
                SetFilterOnNODLines("TDS Nature of Deduction",'');
                NatureOfRemittance.MarkEntriesUsedInNOD(NODLines);
                IF PAGE.RUNMODAL(PAGE::"TDS Nature of Remittances",NatureOfRemittance) = ACTION::LookupOK THEN
                  VALIDATE("Nature of Remittance",NatureOfRemittance.Code);
                  */

            end;

            trigger OnValidate();
            begin
                /*TESTFIELD("TDS Nature of Deduction");
                IF ("TDS Nature of Deduction" <> '') AND ("Nature of Remittance" <> '') THEN
                  TESTFIELD("TDS Group","TDS Group"::"Payable to Non Residents");
                SetFilterOnNODLines("TDS Nature of Deduction","Nature of Remittance");
                IF NOT (NODLines.FINDFIRST) AND ("Nature of Remittance" <> '') THEN
                  ERROR(Text16513);
                  */

            end;
        }
        field(13748; "Act Applicable"; Option)
        {
            CaptionML = ENU = 'Act Applicable',
                        ENN = 'Act Applicable';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,IT,DTAA',
                              ENN = ' ,IT,DTAA';
            OptionMembers = " ",IT,DTAA;

            trigger OnValidate();
            begin
                /*IF "Act Applicable" <> "Act Applicable"::" " THEN BEGIN
                  TESTFIELD("TDS Nature of Deduction");
                  TESTFIELD("TDS Group","TDS Group"::"Payable to Non Residents");
                END
                */

            end;
        }
        field(13749; "Country Code"; Code[10])
        {
            CaptionML = ENU = 'Country Code',
                        ENN = 'Country Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "Country/Region";
        }
        field(13750; "Capital Item"; Boolean)
        {
            CaptionML = ENU = 'Capital Item',
                        ENN = 'Capital Item';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13757; "BED Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'BED Amount',
                        ENN = 'BED Amount';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails
            end;
        }
        field(13758; "AED(GSI) Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(GSI) Amount',
                        ENN = 'AED(GSI) Amount';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails
            end;
        }
        field(13759; "SED Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'SED Amount',
                        ENN = 'SED Amount';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails
            end;
        }
        field(13769; "SAED Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'SAED Amount',
                        ENN = 'SAED Amount';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails
            end;
        }
        field(13770; "CESS Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'CESS Amount',
                        ENN = 'CESS Amount';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails
            end;
        }
        field(13771; "NCCD Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'NCCD Amount',
                        ENN = 'NCCD Amount';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails
            end;
        }
        field(13772; "eCess Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'eCess Amount',
                        ENN = 'eCess Amount';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails
            end;
        }
        field(13775; "Amount Added to Excise Base"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Excise Base',
                        ENN = 'Amount Added to Excise Base';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13776; "Amount Added to Tax Base"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Tax Base',
                        ENN = 'Amount Added to Tax Base';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13777; "Amount Added to Inventory"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Inventory',
                        ENN = 'Amount Added to Inventory';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16321; "Excise Credit Reversal"; Boolean)
        {
            CaptionML = ENU = 'Excise Credit Reversal',
                        ENN = 'Excise Credit Reversal';
            DataClassification = ToBeClassified;
        }
        field(16340; "Amount To Vendor"; Decimal)
        {
            CaptionML = ENU = 'Amount To Vendor',
                        ENN = 'Amount To Vendor';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*TESTFIELD(Type);
                TESTFIELD(Quantity);
                TESTFIELD("Direct Unit Cost");
                
                "Amount To Vendor" := ROUND("Amount To Vendor",Currency."Amount Rounding Precision");
                Amount := ROUND("Line Amount" - "Inv. Discount Amount",Currency."Amount Rounding Precision");
                "Tax Base Amount" := Amount;
                "Amount Including Tax" := Amount;
                InitOutstandingAmount;
                UpdateUnitCost;*/

            end;
        }
        field(16342; "Charges To Vendor"; Decimal)
        {
            CaptionML = ENU = 'Charges To Vendor',
                        ENN = 'Charges To Vendor';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16343; "TDS Base Amount"; Decimal)
        {
            CaptionML = ENU = 'TDS Base Amount',
                        ENN = 'TDS Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16362; "Surcharge Base Amount"; Decimal)
        {
            CaptionML = ENU = 'Surcharge Base Amount',
                        ENN = 'Surcharge Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16363; "TDS Group"; Option)
        {
            CaptionML = ENU = 'TDS Group',
                        ENN = 'TDS Group';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods',
                              ENN = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others,"Rent for Plant & Machinery","Rent for Land & Building","Banking Services","Compensation On Immovable Property","PF Accumulated","Payment For Immovable Property",Goods;
        }
        field(16364; "Work Tax Nature Of Deduction"; Code[10])
        {
            CaptionML = ENU = 'Work Tax Nature Of Deduction',
                        ENN = 'Work Tax Nature Of Deduction';
            DataClassification = ToBeClassified;
            TableRelation = "TDS Nature of Deduction";

            trigger OnLookup();
            begin
                /*TESTFIELD("GST Group Code",'');
                NODLines.RESET;
                NODLines.SETRANGE(Type,NODLines.Type::Vendor);
                NODLines.SETRANGE("No.","Pay-to Vendor No.");
                NODLines.SETFILTER("TDS Group",'%1',NODLines."TDS Group"::Others);
                IF NODLines.FIND('-') THEN
                  REPEAT
                    TDSNOD.RESET;
                    TDSNOD.SETRANGE(Code,NODLines."NOD/NOC");
                    IF TDSNOD.FINDFIRST THEN
                      TDSNOD.MODIFYALL(Mark,TRUE);
                    COMMIT;
                  UNTIL NODLines.NEXT = 0;
                
                TDSNOD.RESET;
                TDSNOD.SETRANGE(Mark,TRUE);
                IF PAGE.RUNMODAL(PAGE::"TDS Nature of Deductions",TDSNOD) = ACTION::LookupOK THEN BEGIN
                  "Work Tax Nature Of Deduction" := TDSNOD.Code;
                  "Work Tax Group" := TDSNOD."TDS Group";
                END;
                
                VALIDATE("Work Tax Nature Of Deduction");
                */

            end;

            trigger OnValidate();
            begin
                /*GetPurchHeader;
                IF GSTManagement.IsGSTApplicable(PurchHeader.Structure) THEN
                  ERROR(Text13700);
                
                TDSNOD.MODIFYALL(Mark,FALSE);
                NODLines.RESET;
                NODLines.SETRANGE(Type,NODLines.Type::Vendor);
                NODLines.SETRANGE("No.","Pay-to Vendor No.");
                NODLines.SETRANGE("NOD/NOC","Work Tax Nature Of Deduction");
                NODLines.SETFILTER("TDS Group",'%1',NODLines."TDS Group"::Others);
                IF NOT NODLines.FIND('-') THEN
                  IF "Work Tax Nature Of Deduction" <> '' THEN
                    ERROR(Text13700);
                
                IF TDSNOD.GET("Work Tax Nature Of Deduction") THEN
                  "Work Tax Group" := TDSNOD."TDS Group"
                ELSE
                  "Work Tax Group" := "Work Tax Group"::" ";
                  */

            end;
        }
        field(16365; "Work Tax Group"; Option)
        {
            CaptionML = ENU = 'Work Tax Group',
                        ENN = 'Work Tax Group';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others',
                              ENN = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others;
        }
        field(16366; "Temp TDS Base"; Decimal)
        {
            CaptionML = ENU = 'Temp TDS Base',
                        ENN = 'Temp TDS Base';
            DataClassification = ToBeClassified;
        }
        field(16367; "SetOff Available"; Boolean)
        {
            CaptionML = ENU = 'SetOff Available',
                        ENN = 'SetOff Available';
            DataClassification = ToBeClassified;
        }
        field(16370; Subcontracting; Boolean)
        {
            CaptionML = ENU = 'Subcontracting',
                        ENN = 'Subcontracting';
            DataClassification = ToBeClassified;
        }
        field(16371; SubConSend; Boolean)
        {
            CaptionML = ENU = 'SubConSend',
                        ENN = 'SubConSend';
            DataClassification = ToBeClassified;
        }
        field(16372; "Delivery Challan Posted"; Integer)
        {
            /*CalcFormula = Count("Delivery Challan Header" WHERE("Sub. order No." = FIELD("Document No."),
                                                                 "Sub. Order Line No." = FIELD("Line No.")));*/
            CaptionML = ENU = 'Delivery Challan Posted',
                        ENN = 'Delivery Challan Posted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16373; "Qty. to Reject (Rework)"; Decimal)
        {
            CaptionML = ENU = 'Qty. to Reject (Rework)',
                        ENN = 'Qty. to Reject (Rework)';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;

            trigger OnValidate();
            var
                SubOrderComponents: Record "Sub Order Component List";
            begin
                /*UpdateSubConOrderLines;
                ValidateQuantity;
                SubOrderComponents.UpdateIssueDetails(Rec,"Deliver Comp. For","Qty. to Reject (Rework)");
                */

            end;
        }
        field(16374; "Qty. Rejected (Rework)"; Decimal)
        {
            CaptionML = ENU = 'Qty. Rejected (Rework)',
                        ENN = 'Qty. Rejected (Rework)';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Editable = false;

            trigger OnValidate();
            begin
                /*UpdateSubConOrderLines;
                ValidateQuantity;
                */

            end;
        }
        field(16375; SendForRework; Boolean)
        {
            CaptionML = ENU = 'SendForRework',
                        ENN = 'SendForRework';
            DataClassification = ToBeClassified;
        }
        field(16376; "Qty. to Reject (C.E.)"; Decimal)
        {
            CaptionML = ENU = 'Qty. to Reject (C.E.)',
                        ENN = 'Qty. to Reject (C.E.)';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*UpdateSubConOrderLines;
                ValidateQuantity;
                */

            end;
        }
        field(16377; "Qty. to Reject (V.E.)"; Decimal)
        {
            CaptionML = ENU = 'Qty. to Reject (V.E.)',
                        ENN = 'Qty. to Reject (V.E.)';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*UpdateSubConOrderLines;
                ValidateQuantity;
                */

            end;
        }
        field(16378; "Qty. Rejected (C.E.)"; Decimal)
        {
            CaptionML = ENU = 'Qty. Rejected (C.E.)',
                        ENN = 'Qty. Rejected (C.E.)';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Editable = false;

            trigger OnValidate();
            begin
                /*UpdateSubConOrderLines;
                ValidateQuantity;
                */

            end;
        }
        field(16379; "Qty. Rejected (V.E.)"; Decimal)
        {
            CaptionML = ENU = 'Qty. Rejected (V.E.)',
                        ENN = 'Qty. Rejected (V.E.)';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Editable = false;
        }
        field(16380; "Deliver Comp. For"; Decimal)
        {
            CaptionML = ENU = 'Deliver Comp. For',
                        ENN = 'Deliver Comp. For';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;

            trigger OnValidate();
            var
                SubOrderComponents: Record "Sub Order Component List";
            begin
                /*UpdateSubConOrderLines;
                SubOrderComponents.UpdateIssueDetails(Rec,"Deliver Comp. For","Qty. to Reject (Rework)");
                */

            end;
        }
        field(16381; "Posting Date"; Date)
        {
            CaptionML = ENU = 'Posting Date',
                        ENN = 'Posting Date';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                //UpdateSubConOrderLines;
            end;
        }
        field(16382; Status; Option)
        {
            CaptionML = ENU = 'Status',
                        ENN = 'Status';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Open,Closed',
                              ENN = 'Open,Closed';
            OptionMembers = Open,Closed;

            trigger OnValidate();
            var
                SubOrderCompListVend: Record "Sub Order Comp. List Vend";
                ProdOrder: Record "Production Order";
                SubOrderCompList: Record "Sub Order Component List";
                Text16360: TextConst ENU = 'There is still components pending at vendor location.', ENN = 'There is still components pending at vendor location.';
                Text16361: TextConst ENU = 'Reopening is not allowed Production Order %1 has already been reported as Finished.', ENN = 'Reopening is not allowed Production Order %1 has already been reported as Finished.';
            begin
                /*IF Status = Status::Closed THEN BEGIN
                  "Qty. to Receive" := 0;
                  "Qty. to Receive (Base)" := 0;
                  InitQtyToInvoice;
                  SubOrderCompListVend.SETCURRENTKEY("Document No.","Document Line No.","Parent Item No.");
                  SubOrderCompListVend.SETFILTER("Document No.","Document No.");
                  SubOrderCompListVend.SETRANGE("Document Line No.","Line No.");
                  SubOrderCompListVend.SETFILTER("Parent Item No.","No.");
                  IF SubOrderCompListVend.FIND('-') THEN
                    REPEAT
                      SubOrderCompListVend.CALCFIELDS("Quantity at Vendor Location");
                      IF SubOrderCompListVend."Quantity at Vendor Location" <> 0 THEN
                        ERROR(Text16360);
                      SubOrderCompListVend."Qty. to Receive" := 0;
                      SubOrderCompListVend."Qty. to Consume" := 0;
                      SubOrderCompListVend."Qty. to Return (C.E.)" := 0;
                      SubOrderCompListVend."Qty. To Return (V.E.)" := 0;
                      SubOrderCompListVend.MODIFY;
                    UNTIL SubOrderCompListVend.NEXT = 0;
                  SubOrderCompList.SETCURRENTKEY("Document No.","Document Line No.","Parent Item No.");
                  SubOrderCompList.SETFILTER("Document No.","Document No.");
                  SubOrderCompList.SETRANGE("Document Line No.","Line No.");
                  SubOrderCompList.SETFILTER("Parent Item No.","No.");
                  IF SubOrderCompList.FIND('-') THEN
                    REPEAT
                      SubOrderCompList."Quantity To Send" := 0;
                      SubOrderCompList."Qty. for Rework" := 0;
                      SubOrderCompList.MODIFY;
                    UNTIL SubOrderCompList.NEXT = 0;
                END ELSE
                  IF xRec.Status = Status::Closed THEN
                    ProdOrder.SETRANGE(Status,ProdOrder.Status::Released);
                ProdOrder.SETFILTER("No.","Prod. Order No.");
                IF ProdOrder.ISEMPTY THEN
                  ERROR(Text16361,"Prod. Order No.");
                  */

            end;
        }
        field(16383; "Vendor Shipment No."; Code[20])
        {
            CaptionML = ENU = 'Vendor Shipment No.',
                        ENN = 'Vendor Shipment No.';
            DataClassification = ToBeClassified;
        }
        field(16384; "Released Production Order"; Code[20])
        {
            CaptionML = ENU = 'Released Production Order',
                        ENN = 'Released Production Order';
            DataClassification = ToBeClassified;
            TableRelation = "Production Order"."No." WHERE(Status = CONST(Finished),
                                                            "No." = FIELD("Prod. Order No."));
        }
        field(16385; SubConReceive; Boolean)
        {
            CaptionML = ENU = 'SubConReceive',
                        ENN = 'SubConReceive';
            DataClassification = ToBeClassified;
        }
        field(16386; "Component Item No."; Code[20])
        {
            CaptionML = ENU = 'Component Item No.',
                        ENN = 'Component Item No.';
            DataClassification = ToBeClassified;
        }
        field(16391; "Service Tax Group"; Code[20])
        {
            CaptionML = ENU = 'Service Tax Group',
                        ENN = 'Service Tax Group';
            DataClassification = ToBeClassified;
            //TableRelation = "Service Tax Groups".Code;

            trigger OnValidate();
            begin
                /*"Service Tax Registration No." := ServiceTaxMgt.GetServiceTaxRegNoForLocation("Location Code");
                UpdateTaxAmounts;
                UpdateGSTAmounts("GST Base Amount");
                */

            end;
        }
        field(16393; "Service Tax Base"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Base',
                        ENN = 'Service Tax Base';
            DataClassification = ToBeClassified;
        }
        field(16394; "Service Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Amount',
                        ENN = 'Service Tax Amount';
            DataClassification = ToBeClassified;
        }
        field(16395; "Service Tax Registration No."; Code[20])
        {
            CaptionML = ENU = 'Service Tax Registration No.',
                        ENN = 'Service Tax Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Registration Nos.".Code;
        }
        field(16397; "eCESS % on TDS"; Decimal)
        {
            CaptionML = ENU = 'eCESS % on TDS',
                        ENN = 'eCESS % on TDS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16398; "eCESS on TDS Amount"; Decimal)
        {
            CaptionML = ENU = 'eCESS on TDS Amount',
                        ENN = 'eCESS on TDS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16399; "Total TDS Including SHE CESS"; Decimal)
        {
            CaptionML = ENU = 'Total TDS Including SHE CESS',
                        ENN = 'Total TDS Including SHE CESS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16400; "Per Contract"; Boolean)
        {
            CaptionML = ENU = 'Per Contract',
                        ENN = 'Per Contract';
            DataClassification = ToBeClassified;
        }
        field(16406; "Service Tax eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax eCess Amount',
                        ENN = 'Service Tax eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(16452; "ADET Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'ADET Amount',
                        ENN = 'ADET Amount';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails
            end;
        }
        field(16455; "AED(TTA) Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(TTA) Amount',
                        ENN = 'AED(TTA) Amount';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails
            end;
        }
        field(16459; "ADE Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'ADE Amount',
                        ENN = 'ADE Amount';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails
            end;
        }
        field(16490; "Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'Assessable Value',
                        ENN = 'Assessable Value';
            DataClassification = ToBeClassified;
        }
        field(16491; "VAT Type"; Option)
        {
            CaptionML = ENU = 'VAT Type',
                        ENN = 'VAT Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Item,Capital Goods',
                              ENN = ' ,Item,Capital Goods';
            OptionMembers = " ",Item,"Capital Goods";
        }
        field(16494; "SHE Cess Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'SHE Cess Amount',
                        ENN = 'SHE Cess Amount';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails;
            end;
        }
        field(16496; "Service Tax SHE Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SHE Cess Amount',
                        ENN = 'Service Tax SHE Cess Amount';
            DataClassification = ToBeClassified;
        }
        field(16500; "Non ITC Claimable Usage %"; Decimal)
        {
            CaptionML = ENU = 'Non ITC Claimable Usage %',
                        ENN = 'Non ITC Claimable Usage %';
            DataClassification = ToBeClassified;
            MaxValue = 100;
            MinValue = 0;

            trigger OnValidate();
            begin
                UpdateAmounts;
            end;
        }
        field(16501; "Amount Loaded on Inventory"; Decimal)
        {
            CaptionML = ENU = 'Amount Loaded on Inventory',
                        ENN = 'Amount Loaded on Inventory';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16502; "Input Tax Credit Amount"; Decimal)
        {
            CaptionML = ENU = 'Input Tax Credit Amount',
                        ENN = 'Input Tax Credit Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16503; "VAT able Purchase Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'VAT able Purchase Tax Amount',
                        ENN = 'VAT able Purchase Tax Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16504; Supplementary; Boolean)
        {
            CaptionML = ENU = 'Supplementary',
                        ENN = 'Supplementary';
            DataClassification = ToBeClassified;
        }
        field(16505; "Source Document Type"; Option)
        {
            CaptionML = ENU = 'Source Document Type',
                        ENN = 'Source Document Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Posted Invoice,Posted Credit Memo',
                              ENN = 'Posted Invoice,Posted Credit Memo';
            OptionMembers = "Posted Invoice","Posted Credit Memo";
        }
        field(16506; "Source Document No."; Code[20])
        {
            CaptionML = ENU = 'Source Document No.',
                        ENN = 'Source Document No.';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                //TESTFIELD(Supplementary);
            end;
        }
        field(16509; "ADC VAT Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'ADC VAT Amount',
                        ENN = 'ADC VAT Amount';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails;
            end;
        }
        field(16510; "CIF Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'CIF Amount',
                        ENN = 'CIF Amount';
            DataClassification = ToBeClassified;
        }
        field(16511; "BCD Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'BCD Amount',
                        ENN = 'BCD Amount';
            DataClassification = ToBeClassified;
        }
        field(16512; CVD; Boolean)
        {
            CaptionML = ENU = 'CVD',
                        ENN = 'CVD';
            DataClassification = ToBeClassified;
        }
        field(16513; "Notification Sl. No."; Code[20])
        {
            CaptionML = ENU = 'Notification Sl. No.',
                        ENN = 'Notification Sl. No.';
            DataClassification = ToBeClassified;
        }
        field(16514; "Notification No."; Code[20])
        {
            CaptionML = ENU = 'Notification No.',
                        ENN = 'Notification No.';
            DataClassification = ToBeClassified;
        }
        field(16515; "CTSH No."; Code[10])
        {
            CaptionML = ENU = 'CTSH No.',
                        ENN = 'CTSH No.';
            DataClassification = ToBeClassified;
        }
        field(16518; "Reason Code"; Code[10])
        {
            CaptionML = ENU = 'Reason Code',
                        ENN = 'Reason Code';
            DataClassification = ToBeClassified;
            TableRelation = "Reason Code";
        }
        field(16519; "SHE Cess % On TDS"; Decimal)
        {
            CaptionML = ENU = 'SHE Cess % On TDS',
                        ENN = 'SHE Cess % On TDS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16520; "SHE Cess on TDS Amount"; Decimal)
        {
            CaptionML = ENU = 'SHE Cess on TDS Amount',
                        ENN = 'SHE Cess on TDS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16522; "Excise Loading on Inventory"; Boolean)
        {
            CaptionML = ENU = 'Excise Loading on Inventory',
                        ENN = 'Excise Loading on Inventory';
            DataClassification = ToBeClassified;
        }
        field(16523; "Custom eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom eCess Amount',
                        ENN = 'Custom eCess Amount';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails;
            end;
        }
        field(16524; "Custom SHECess Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom SHECess Amount',
                        ENN = 'Custom SHECess Amount';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                //UpdateStruOrdLineDetails;
            end;
        }
        field(16527; "Excise Refund"; Boolean)
        {
            CaptionML = ENU = 'Excise Refund',
                        ENN = 'Excise Refund';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(16528; "CWIP G/L Type"; Option)
        {
            CaptionML = ENU = 'CWIP G/L Type',
                        ENN = 'CWIP G/L Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Labor,Material,Overheads',
                              ENN = ' ,Labor,Material,Overheads';
            OptionMembers = " ",Labor,Material,Overheads;

            trigger OnValidate();
            var
                Job: Record Job;
            begin
                /*IF "CWIP G/L Type" <> "CWIP G/L Type"::" " THEN BEGIN
                  TESTFIELD("Job No.");
                  Job.GET("Job No.");
                  Job.TESTFIELD("Job Type",Job."Job Type"::"Capital WIP");
                  IF NOT (Type IN [Type::Item,Type::"G/L Account"]) THEN
                    ERROR(Text16507,"Document Type","Document No.","Line No.");
                  IF "CWIP G/L Type" <> "CWIP G/L Type"::Material THEN
                    TESTFIELD(Type,Type::"G/L Account");
                END ELSE BEGIN
                  IF "Job No." <> '' THEN BEGIN
                    Job.GET("Job No.");
                    IF Job."Job Type" = Job."Job Type"::"Capital WIP" THEN
                      TESTFIELD(Type,Type::"G/L Account");
                  END;
                END;
                */

            end;
        }
        field(16529; "Applies-to ID (Delivery)"; Code[50])
        {
            CaptionML = ENU = 'Applies-to ID (Delivery)',
                        ENN = 'Applies-to ID (Delivery)';
            DataClassification = ToBeClassified;
        }
        field(16530; "Applies-to ID (Receipt)"; Code[50])
        {
            CaptionML = ENU = 'Applies-to ID (Receipt)',
                        ENN = 'Applies-to ID (Receipt)';
            DataClassification = ToBeClassified;
        }
        field(16531; "Delivery Challan Date"; Date)
        {
            CaptionML = ENU = 'Delivery Challan Date',
                        ENN = 'Delivery Challan Date';
            DataClassification = ToBeClassified;
        }
        field(16532; "Item Charge Entry"; Boolean)
        {
            CaptionML = ENU = 'Item Charge Entry',
                        ENN = 'Item Charge Entry';
            DataClassification = ToBeClassified;
        }
        field(16533; "Tot. Serv Tax Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'Tot. Serv Tax Amount (Intm)',
                        ENN = 'Tot. Serv Tax Amount (Intm)';
            DataClassification = ToBeClassified;
        }
        field(16534; "S. Tax Base Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'S. Tax Base Amount (Intm)',
                        ENN = 'S. Tax Base Amount (Intm)';
            DataClassification = ToBeClassified;
        }
        field(16535; "S. Tax Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'S. Tax Amount (Intm)',
                        ENN = 'S. Tax Amount (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16536; "S. Tax eCess Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'S. Tax eCess Amount (Intm)',
                        ENN = 'S. Tax eCess Amount (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16537; "S. Tax SHE Cess Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'S. Tax SHE Cess Amount (Intm)',
                        ENN = 'S. Tax SHE Cess Amount (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16538; "Amt. Incl. Service Tax (Intm)"; Decimal)
        {
            CaptionML = ENU = 'Amt. Incl. Service Tax (Intm)',
                        ENN = 'Amt. Incl. Service Tax (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16539; "Service Tax SBC %"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC %',
                        ENN = 'Service Tax SBC %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16540; "Service Tax SBC Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC Amount(LCY)',
                        ENN = 'Service Tax SBC Amount(LCY)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16541; "Service Tax SBC Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC Amount(Intm)',
                        ENN = 'Service Tax SBC Amount(Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16542; "KK Cess%"; Decimal)
        {
            CaptionML = ENU = 'KK Cess%',
                        ENN = 'KK Cess%';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16543; "KK Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'KK Cess Amount',
                        ENN = 'KK Cess Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16544; "KK Cess Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'KK Cess Amount (Intm)',
                        ENN = 'KK Cess Amount (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16600; "GST Credit"; Option)
        {
            CaptionML = ENU = 'GST Credit',
                        ENN = 'GST Credit';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Availment,Non-Availment',
                              ENN = 'Availment,Non-Availment';
            OptionMembers = Availment,"Non-Availment";

            trigger OnValidate();
            begin
                /*  IF (xRec."GST Credit" <> "GST Credit") AND ("Quantity Received" <> 0) THEN
                    ERROR(GSTCreditTypeErr);
               */

            end;
        }
        field(16601; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            // TableRelation = "GST Group";

            trigger OnValidate();
            begin
                /*TestStatusOpen;
                TESTFIELD("Work Tax Nature Of Deduction",'');
                TESTFIELD("Non-GST Line",FALSE);
                "HSN/SAC Code" := '';
                VALIDATE("GST Reverse Charge",FALSE);
                IF "GST Group Code" <> '' THEN BEGIN
                  "Service Tax Group" := '';
                  "Service Tax Registration No." := '';
                END;
                IF GSTGroup.GET("GST Group Code") THEN BEGIN
                  "GST Group Type" := GSTGroup."GST Group Type";
                  GetPurchHeader;
                  IF PurchHeader."GST Vendor Type" = PurchHeader."GST Vendor Type"::Import THEN
                    "GST Reverse Charge" := TRUE;
                  IF PurchHeader."GST Vendor Type" IN [PurchHeader."GST Vendor Type"::Registered,
                                                      PurchHeader."GST Vendor Type"::Unregistered,
                                                       PurchHeader."GST Vendor Type"::SEZ]
                  THEN
                    VALIDATE("GST Reverse Charge",GSTGroup."Reverse Charge");
                
                  IF ("GST Group Type" = "GST Group Type"::Service) OR (Type = Type::"Charge (Item)") THEN BEGIN
                    TESTFIELD("Custom Duty Amount",0);
                    //TESTFIELD("GST Assessable Value",0);
                    END;
                END;
                */

            end;
        }
        field(16602; "GST Group Type"; Option)
        {
            CaptionML = ENU = 'GST Group Type',
                        ENN = 'GST Group Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Goods,Service',
                              ENN = 'Goods,Service';
            OptionMembers = Goods,Service;
        }
        field(16603; "HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'HSN/SAC Code',
                        ENN = 'HSN/SAC Code';
            DataClassification = ToBeClassified;
            TableRelation = "HSN/SAC".Code WHERE("GST Group Code" = FIELD("GST Group Code"));

            trigger OnValidate();
            begin
                TestStatusOpen;
                GetPurchHeader;
                // >> Condition added by pranavi on 05-09-2017 for debit note issue clearance
                if "Document Type" <> "Document Type"::"Credit Memo" then begin
                    /* PurchHeader.TestField("Applies-to Doc. No.", '');
                     PurchHeader.TestField("Applies-to ID", '');*/
                end;
            end;
        }
        field(16604; "GST Base Amount"; Decimal)
        {
            CaptionML = ENU = 'GST Base Amount',
                        ENN = 'GST Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;

            trigger OnValidate();
            begin
                /*"GST %" := 0;
                "Total GST Amount" := 0;
                */

            end;
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
        field(16608; Exempted; Boolean)
        {
            CaptionML = ENU = 'Exempted',
                        ENN = 'Exempted';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*TestStatusOpen;
                CheckExemptedStatus;
                TESTFIELD("Quantity Received",0);
                TESTFIELD("Return Qty. Shipped",0);
                TESTFIELD("Quantity Invoiced",0);
                GetPurchHeader;
                IF (PurchHeader."Applies-to Doc. No." <> '') OR (PurchHeader."Applies-to ID" <> '') THEN
                  ERROR(AppliesToDocErr);
                  */

            end;
        }
        field(16609; "GST Jurisdiction Type"; Option)
        {
            CaptionML = ENU = 'GST Jurisdiction Type',
                        ENN = 'GST Jurisdiction Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Intrastate,Interstate',
                              ENN = 'Intrastate,Interstate';
            OptionMembers = Intrastate,Interstate;
        }
        field(16611; "Custom Duty Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom Duty Amount',
                        ENN = 'Custom Duty Amount';
            DataClassification = ToBeClassified;
            MinValue = 0;

            trigger OnValidate();
            var
                Vendor: Record Vendor;
            begin
                GetPurchHeader;
                /*IF NOT GSTManagement.IsGSTApplicable(PurchHeader.Structure) THEN
                  EXIT;
                IF "Document Type" IN ["Document Type"::"Credit Memo","Document Type"::"Return Order"] THEN
                  TESTFIELD("Custom Duty Amount",0);
                Vendor.GET(PurchHeader."Buy-from Vendor No.");
                IF NOT (Vendor."GST Vendor Type" IN [Vendor."GST Vendor Type"::Import,Vendor."GST Vendor Type"::SEZ]) THEN
                  ERROR(GSTVendorTypeErr,Vendor."GST Vendor Type"::Import,Vendor."GST Vendor Type"::SEZ);
                IF ("GST Group Type" <> "GST Group Type"::Goods) OR (Type = Type::"Charge (Item)") THEN
                  TESTFIELD("Custom Duty Amount",0);
                  */

            end;
        }
        field(16612; "GST Reverse Charge"; Boolean)
        {
            CaptionML = ENU = 'GST Reverse Charge',
                        ENN = 'GST Reverse Charge';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16613; "GST Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'GST Assessable Value',
                        ENN = 'GST Assessable Value';
            DataClassification = ToBeClassified;
            MinValue = 0;

            trigger OnValidate();
            var
                Vendor: Record Vendor;
            begin
            end;
        }
        field(16614; "Order Address Code"; Code[10])
        {
            CaptionML = ENU = 'Order Address Code',
                        ENN = 'Order Address Code';
            DataClassification = ToBeClassified;
        }
        field(16615; "Buy-From GST Registration No"; Code[15])
        {
            CaptionML = ENU = 'Buy-From GST Registration No',
                        ENN = 'Buy-From GST Registration No';
            DataClassification = ToBeClassified;
        }
        field(16616; "GST Rounding Line"; Boolean)
        {
            CaptionML = ENU = 'GST Rounding Line',
                        ENN = 'GST Rounding Line';
            DataClassification = ToBeClassified;
        }
        field(16617; "Bill to-Location(POS)"; Code[20])
        {
            CaptionML = ENU = 'Bill to-Location(POS)',
                        ENN = 'Bill to-Location(POS)';
            DataClassification = ToBeClassified;
            Editable = false;
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
        field(60001; "Indent No."; Code[20])
        {
            Description = 'B2B';
            Editable = true;
            TableRelation = IF (Type = FILTER(<> " ")) "Indent Line" WHERE("Indent Status" = FILTER(Indent | Enquiry | Offer | Order));
        }
        field(60002; "Indent Line No."; Integer)
        {
            Description = 'B2B';
            Editable = true;
        }
        field(60003; Remarks; Text[80])
        {
            Description = 'B2B';
        }
        field(60004; "ICN No."; Code[20])
        {
            Description = 'POAU';
        }
        field(60005; "Document Date"; Date)
        {
            CalcFormula = Lookup("Purchase Header"."Order Date" WHERE("No." = FIELD("Document No.")));
            FieldClass = FlowField;
        }
        field(60006; "Deviated Receipt Date"; Date)
        {

            trigger OnValidate();
            begin
                if not (UpperCase(UserId) in ['EFFTRONICS\PADMASRI', 'EFFTRONICS\CHOWDARY', 'EFFTRONICS\BRAHMAIAH', 'EFFTRONICS\PARDHU', 'SUPER', 'EFFTRONICS\ANANDA', 'EFFTRONICS\PKOTESWARARAO', 'EFFTRONICS\GRAVI',
                                               'EFFTRONICS\RENUKACH', 'EFFTRONICS\RAVIKIRAN', 'EFFTRONICS\ANVESH', 'EFFTRONICS\SPURTHI', 'EFFTRONICS\NSUDHEER', 'EFFTRONICS\RATNA',
                                               'EFFTRONICS\19TE308', 'EFFTRONICS\LAKSHMIKANTH', 'EFFTRONICS\TPRIYANKA']) then
                    Error('YOU DONT HAVE SUFFICIENT RIGHTS');
            end;
        }
        field(60010; Period; Integer)
        {
        }
        field(60011; "Vendor Name"; Text[50])
        {
            CalcFormula = Lookup(Vendor.Name WHERE("No." = FIELD("Buy-from Vendor No.")));
            FieldClass = FlowField;
        }
        field(60012; "Deviated By"; Option)
        {
            OptionMembers = Vendor,Organisation;
        }
        field(60013; Sample; Boolean)
        {
        }
        field(60014; Make; Code[30])
        {
        }
        field(60015; "Account No."; Code[10])
        {
        }
        field(60016; "Purchase Orders"; Integer)
        {
            CalcFormula = Count("Purchase Line" WHERE(Type = CONST(Item),
                                                       "No." = FILTER(<> ''),
                                                       "No." = FIELD("No."),
                                                       "Document Type" = CONST(Order)));
            FieldClass = FlowField;
        }
        field(60017; "Customs Duty Value"; Decimal)
        {
        }
        field(60018; "Customs Duty Paid to"; Code[10])
        {
            TableRelation = Vendor WHERE(Blocked = CONST(" "));
        }
        field(60019; "Customs To be Paid on"; Date)
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
            //TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
        field(60093; "AMC Order"; Boolean)
        {
        }
        field(60094; "Frieght Charges"; Decimal)
        {

            trigger OnValidate();
            begin
                STRUCTURE_ORDER_DETAILS.SetRange(STRUCTURE_ORDER_DETAILS."Document No.", "Document No.");
                STRUCTURE_ORDER_DETAILS.SetRange(STRUCTURE_ORDER_DETAILS."Tax/Charge Group", 'FREIGHT');
                STRUCTURE_ORDER_DETAILS.SetFilter(STRUCTURE_ORDER_DETAILS."Calculation Value", '>%1', 0);
                if STRUCTURE_ORDER_DETAILS.FindFirst then
                    Error(' PLEASE REMOVE THE FRIEGHT CHARGES IN STRUTURE DETAILS');
            end;
        }
        field(60095; "Purchase_Order No."; Code[20])
        {
        }
        field(60096; "No. Of Deviations"; Integer)
        {
            CalcFormula = Count("Excepted Rcpt.Date Tracking" WHERE("Document Type" = FIELD("Document Type"),
                                                                     "Document No." = FIELD("Document No."),
                                                                     "Document Line No." = FIELD("Line No.")));
            FieldClass = FlowField;
        }
        field(60097; "Taxes Value"; Decimal)
        {
            CalcFormula = Sum("Structure Order Line Details"."Amount (LCY)" WHERE(Type = CONST(Purchase),
                                                                                   "Document Type" = CONST(Order),
                                                                                   "Document No." = FIELD("Document No."),
                                                                                   "Line No." = FIELD("Line No.")));
            FieldClass = FlowField;
        }
        field(60099; "Material Received at Site"; Boolean)
        {
        }
        field(70000; "VAT %age 2"; Decimal)
        {
        }
        field(70001; "VAT Base 2"; Decimal)
        {
            Editable = false;
        }
        field(70002; "VAT Amount 2"; Decimal)
        {
        }
        field(70003; "Vendor Commitment Date"; Date)
        {
        }
        field(70004; Package; Code[20])
        {
        }
        field(70005; "Part Number"; Code[30])
        {
        }
        field(70006; MailSent; Date)
        {
        }
        field(70007; "Courier Agency"; Option)
        {
            OptionMembers = " ",DHL,DTDC,FEDEX,UPS,TNT,"GATI-KWE",VRL,Komitla,BlueDart,"First-Flight",SreeMarutiCourier,Trackon,Sindu,SafExpress,Kesineni,SRMT,SriNandan,MoringStar,Kaveri,Spoton,TCIXPS,Tirupati,Jabbar,SreeKaleswari,ByVehicle,"Professional-Couriers",PatelRoadWays;

            trigger OnValidate();
            begin

                "Courier Agency Name" := Format("Courier Agency");  // Added by Pranavi on 23-may-2016
            end;
        }
        field(70008; "Docket No"; Text[30])
        {

            trigger OnValidate();
            begin
                if "Docket No" = '' then begin
                    "Tracking Status Last Updated" := 0DT;
                    "Tracking Status" := '';
                    "Tracking URL" := '';
                    "Courier Dispatch Started On" := '';
                end;
            end;
        }
        field(70009; "Tracking Status"; Text[250])
        {
        }
        field(70010; "Tracking Status Last Updated"; DateTime)
        {
        }
        field(70011; "Tracking URL"; Text[250])
        {
            ExtendedDatatype = URL;
        }
        field(70012; "Courier Agency Name"; Text[80])
        {
        }
        field(70013; "Courier Dispatch Started On"; Text[30])
        {
        }
        field(70014; "PCB Mode"; Option)
        {
            OptionCaption = 'Normal,Fast,Super Fast';
            OptionMembers = Normal,Fast,"Super Fast";

            trigger OnValidate();
            begin
                //PCB_Cost_Calc;
            end;
        }
        field(70015; Itemremarks; Option)
        {
            OptionCaption = ', ,Sampling for NewVendor,Onhold as Stock Available';
            OptionMembers = ," ","Sampling for NewVendor","Onhold as Stock Available";
        }
        field(70016; "Stock At Stores"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("No."),
                                                                              Open = CONST(true),
                                                                              "Remaining Quantity" = FILTER(> 0),
                                                                              "Location Code" = CONST('STR')));
            Editable = false;
            FieldClass = FlowField;

            trigger OnLookup();
            begin
                ItemLedgEntry.Reset;
                ItemLedgEntry.SetCurrentKey("Item No.", "Variant Code", Open, Positive, "Location Code", "Posting Date",
                "Expiration Date", "Lot No.", "Serial No.");

                ItemLedgEntry.SetRange("Item No.", "No.");
                ItemLedgEntry.SetRange(Open, true);
                ItemLedgEntry.SetRange("Location Code", 'STR');
                ItemLedgEntry.SetFilter(ItemLedgEntry."Remaining Quantity", '>%1', 0);
                if ItemLedgEntry.FindSet then
                    repeat
                    /* if not (QualityItemLedgEntry.Get(ItemLedgEntry."Entry No.")) then
                         ItemLedgEntry.Mark(true);*/
                    until ItemLedgEntry.Next = 0;
                ItemLedgEntry.MarkedOnly;
                PAGE.RunModal(0, ItemLedgEntry);
            end;
        }
        field(70017; "Stock At CS Stores"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("No."),
                                                                              Open = CONST(true),
                                                                              "Remaining Quantity" = FILTER(> 0),
                                                                              "Location Code" = CONST('CS STR')));
            Editable = false;
            FieldClass = FlowField;

            trigger OnLookup();
            begin
                ItemLedgEntry.Reset;
                ItemLedgEntry.SetCurrentKey("Item No.", "Variant Code", Open, Positive, "Location Code", "Posting Date",
                "Expiration Date", "Lot No.", "Serial No.");

                ItemLedgEntry.SetRange("Item No.", "No.");
                ItemLedgEntry.SetRange(Open, true);
                ItemLedgEntry.SetRange("Location Code", 'CS STR');
                ItemLedgEntry.SetFilter(ItemLedgEntry."Remaining Quantity", '>%1', 0);
                if ItemLedgEntry.FindSet then
                    repeat
                    /* if not (QualityItemLedgEntry.Get(ItemLedgEntry."Entry No.")) then
                         ItemLedgEntry.Mark(true);*/
                    until ItemLedgEntry.Next = 0;
                ItemLedgEntry.MarkedOnly;
                PAGE.RunModal(0, ItemLedgEntry);
            end;
        }
        field(70018; "Stock At RD Stores"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("No."),
                                                                              Open = CONST(true),
                                                                              "Remaining Quantity" = FILTER(> 0),
                                                                              "Location Code" = CONST('R&D STR')));
            Editable = false;
            FieldClass = FlowField;

            trigger OnLookup();
            begin
                ItemLedgEntry.Reset;
                ItemLedgEntry.SetCurrentKey("Item No.", "Variant Code", Open, Positive, "Location Code", "Posting Date",
                "Expiration Date", "Lot No.", "Serial No.");

                ItemLedgEntry.SetRange("Item No.", "No.");
                ItemLedgEntry.SetRange(Open, true);
                ItemLedgEntry.SetRange("Location Code", 'R&D STR');
                ItemLedgEntry.SetFilter(ItemLedgEntry."Remaining Quantity", '>%1', 0);
                if ItemLedgEntry.FindSet then
                    repeat
                    /* if not (QualityItemLedgEntry.Get(ItemLedgEntry."Entry No.")) then
                         ItemLedgEntry.Mark(true);*/
                    until ItemLedgEntry.Next = 0;
                ItemLedgEntry.MarkedOnly;
                PAGE.RunModal(0, ItemLedgEntry);
            end;
        }
        field(70019; "Stock At MCH Stores"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("No."),
                                                                              Open = CONST(true),
                                                                              "Remaining Quantity" = FILTER(> 0),
                                                                              "Location Code" = CONST('MCH')));
            Editable = false;
            FieldClass = FlowField;

            trigger OnLookup();
            begin
                ItemLedgEntry.Reset;
                ItemLedgEntry.SetCurrentKey("Item No.", "Variant Code", Open, Positive, "Location Code", "Posting Date",
                "Expiration Date", "Lot No.", "Serial No.");

                ItemLedgEntry.SetRange("Item No.", "No.");
                ItemLedgEntry.SetRange(Open, true);
                ItemLedgEntry.SetRange("Location Code", 'MCH');
                ItemLedgEntry.SetFilter(ItemLedgEntry."Remaining Quantity", '>%1', 0);
                if ItemLedgEntry.FindSet then
                    repeat
                    /*
                        if not (QualityItemLedgEntry.Get(ItemLedgEntry."Entry No.")) then
                            ItemLedgEntry.Mark(true);*/
                    until ItemLedgEntry.Next = 0;
                ItemLedgEntry.MarkedOnly;
                PAGE.RunModal(0, ItemLedgEntry);
            end;
        }
        field(70020; "Vendor Mat. Dispatch Date"; Date)
        {

            trigger OnValidate();
            begin
                //>>Added by Pranavi on 07-Mar-2017 For updating Vendor Mat. Disp Date
                if "Mat. Dispatched" then
                    Error('You cannot change the Vendor Mat. Dispatch date when material is dispatched!');

                if "Vendor Mat. Dispatch Date" <> 0D then begin
                    if Vendor.Get("Buy-from Vendor No.") then begin
                        "Deviated Receipt Date" := CalcDate('+' + Format(Vendor."Transportation Days") + 'D', "Vendor Mat. Dispatch Date");
                    end else
                        "Deviated Receipt Date" := "Vendor Mat. Dispatch Date";
                end;
                //<<Added by Pranavi on 07-Mar-2017 For updating Vendor Mat. Disp Date
            end;
        }
        field(70021; "Mat. Dispatched"; Boolean)
        {
        }
        field(70022; "Order Confimed"; Boolean)
        {

            trigger OnValidate();
            begin
                if (not (UserId in ['EFFTRONICS\VIJAYA', 'EFFTRONICS\SUJANI', 'EFFTRONICS\RENUKACH'])) and (xRec."Order Confimed" = true) then begin
                    Error('You do not have rights to change status for already confirmed item');
                end;
            end;
        }
        field(70023; "Scheduled Date"; Date)
        {

            trigger OnValidate();
            begin
                if (not (UserId in ['EFFTRONICS\VIJAYA', 'EFFTRONICS\SUJANI', 'EFFTRONICS\RENUKACH'])) and (xRec."Scheduled Date" <> 0D) then begin
                    Error('You do not have rights to change Scheduled Date for already confirmed item');
                end;
            end;
        }
        field(70024; Earliest_Mat_Req_Date; Date)
        {
        }
        field(70025; "Requested Rcpt Date"; Date)
        {
        }
        field(70026; gst_group_code_reverse_charge; Boolean)
        {
            //CalcFormula = Lookup("GST Group"."Reverse Charge" WHERE(Code = FIELD("GST Group Code")));
            FieldClass = FlowField;
        }
        field(33000250; "Spec ID"; Code[20])
        {
            // TableRelation = "Specification Header";
        }
        field(33000251; "Quantity Accepted"; Decimal)
        {
            /* CalcFormula = Sum("Quality Ledger Entry".Quantity WHERE("Order No." = FIELD("Document No."),
                                                                      "Order Line No." = FIELD("Line No."),
                                                                      "Entry Type" = FILTER(Accepted)));*/
            Editable = false;
            FieldClass = FlowField;
        }
        field(33000252; "Quantity Rework"; Decimal)
        {
            /*CalcFormula = Sum("Quality Ledger Entry"."Remaining Quantity" WHERE("Order No." = FIELD("Document No."),
                                                                                 "Order Line No." = FIELD("Line No."),
                                                                                 "Entry Type" = FILTER(Rework),
                                                                                 Open = CONST(true)));*/
            Editable = false;
            FieldClass = FlowField;
        }
        field(33000253; "QC Enabled"; Boolean)
        {

            trigger OnValidate();
            begin
                TestStatusOpen;
                TestField(Type, Type::Item);
                if "QC Enabled" then
                    TestField("Spec ID");
                if not "QC Enabled" then
                    if "Quality Before Receipt" then
                        Validate("Quality Before Receipt", false);
            end;
        }
        field(33000254; "Quantity Rejected"; Decimal)
        {
            /*CalcFormula = Sum("Quality Ledger Entry".Quantity WHERE("Order No." = FIELD("Document No."),
                                                                     "Order Line No." = FIELD("Line No."),
                                                                     "Entry Type" = FILTER(Reject)));*/
            Editable = false;
            FieldClass = FlowField;
        }
        field(33000255; "Quality Before Receipt"; Boolean)
        {

            trigger OnValidate();
            begin
                TestStatusOpen;
                TestField(Type, Type::Item);
                if "Quantity Received" <> 0 then
                    FieldError("Quantity Received", 'should be 0');
                if "Qty. Sent To Quality" <> 0 then
                    FieldError("Qty. Sent To Quality", 'should be 0');
                "Qty. Sending To Quality" := 0;
                if "Quality Before Receipt" then begin
                    //GetQCSetup;
                    //QualityCtrlSetup.TestField("Quality Before Receipt", true);
                    TestField("QC Enabled", true);
                end;
            end;
        }
        field(33000256; "Qty. Sending To Quality"; Decimal)
        {
            MinValue = 0;
        }
        field(33000257; "Qty. Sent To Quality"; Decimal)
        {
            Editable = false;
            MinValue = 0;
        }
        field(33000258; "Qty. Sending To Quality(R)"; Decimal)
        {
            MinValue = 0;
        }
        field(33000259; "Spec Version"; Code[20])
        {
            //TableRelation = "Specification Version"."Version Code" WHERE("Specification No." = FIELD("Spec ID"));
        }
        field(33000260; "Sample Lot Inspection"; Boolean)
        {
        }
        field(99000760; "Qty on Prod order Components"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Component"."Remaining Qty. (Base)" WHERE(Status = FILTER(Planned .. Released),
                                                                                     "Item No." = FIELD("No."),
                                                                                     "Production Plan Date" = FILTER(> 20190608D)));
            Description = 'added by vishnu for to be received purchase items';
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000761; "Date Filter"; Date)
        {
            CaptionML = ENU = 'Date Filter',
                        ENN = 'Date Filter';
            FieldClass = FlowFilter;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document Type,Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Line No.,Document Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Type,No.,Variant Code,Drop Shipment,Location Code,Expected Receipt Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Pay-to Vendor No.,Currency Code,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Type,No.,Variant Code,Drop Shipment,Shortcut Dimension 1 Code,Shortcut Dimension 2 Code,Location Code,Expected Receipt Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Pay-to Vendor No.,Shortcut Dimension 1 Code,Shortcut Dimension 2 Code,Currency Code,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Blanket Order No.,Blanket Order Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Type,Prod. Order No.,Prod. Order Line No.,Routing No.,Operation No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Location Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Receipt No.,Receipt Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No.,Variant Code,Drop Shipment,Location Code,Document Type,Expected Receipt Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Buy-from Vendor No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Job No.,Job Task No.,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Type,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Type,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Recalculate Invoice Disc."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Outstanding Quantity"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code,Quantity Invoiced"(Key)". Please convert manually.

        key(Document1; "Document Type", "Document No.", "Line No.")
        {
        }
        key(Line2; "Document No.", "Line No.", "Document Type")
        {
            Enabled = false;
        }
        key(Type3; "Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Location Code", "Expected Receipt Date")
        {
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(Payto4; "Document Type", "Pay-to Vendor No.", "Currency Code", "Document No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Outstanding Amount", "Amt. Rcd. Not Invoiced", "Outstanding Amount (LCY)", "Amt. Rcd. Not Invoiced (LCY)";
        }
        key(No5; "Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Location Code", "Expected Receipt Date")
        {
            Enabled = false;
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(ShortDim6; "Document Type", "Pay-to Vendor No.", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Currency Code", "Document No.")
        {
            Enabled = false;
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Outstanding Amount", "Amt. Rcd. Not Invoiced", "Outstanding Amount (LCY)", "Amt. Rcd. Not Invoiced (LCY)";
        }
        key(Blan7; "Document Type", "Blanket Order No.", "Blanket Order Line No.")
        {
        }
        key(Routing8; "Document Type", Type, "Prod. Order No.", "Prod. Order Line No.", "Routing No.", "Operation No.")
        {
        }
        key(Location9; "Document Type", "Document No.", "Location Code")
        {
            MaintainSQLIndex = false;
            SumIndexFields = Amount, "Amount Including VAT";
        }
        key(Receipt10; "Document Type", "Receipt No.", "Receipt Line No.")
        {
        }
        key(Variant11; Type, "No.", "Variant Code", "Drop Shipment", "Location Code", "Document Type", "Expected Receipt Date")
        {
            MaintainSQLIndex = false;
        }
        key(BuyFrom12; "Document Type", "Buy-from Vendor No.")
        {
        }
        key(JobNo13; "Document Type", "Job No.", "Job Task No.", "Document No.")
        {
            SumIndexFields = "Outstanding Amt. Ex. VAT (LCY)", "A. Rcd. Not Inv. Ex. VAT (LCY)";
        }
        key(No14; "Document Type", "Document No.", Type, "No.")
        {
            Enabled = false;
        }
        key(TypeNo15; "Document Type", Type, "No.")
        {
            Enabled = false;
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(Recal16; "Recalculate Invoice Disc.")
        {
        }
        key(Outsta17; "Outstanding Quantity")
        {
        }
        key(Location18; "Location Code", "Quantity Invoiced")
        {
        }
        key(BuyFrom19; "Document Type", "Document No.", "No.", "Buy-from Vendor No.")
        {
        }
        key(Indent20; "Indent No.")
        {
        }
        key(BuyFrom21; "No.", "Buy-from Vendor No.")
        {
            SumIndexFields = "Qty. to Receive";
        }
        key(UnitCost22; "No.", "Unit Cost (LCY)")
        {
            SumIndexFields = "Qty. to Receive";
        }
        key(Deviated23; "Deviated Receipt Date")
        {
            //SumIndexFields = "Qty. to Receive";
        }
        /* key(ICN24; "ICN No.", "No.")
         {
         }*/
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger 0--)();
    //Parameters and return type have not been exported.
    //begin
    /*
    */
    //end;


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestStatusOpen;
    IF (Quantity <> 0) AND ItemExists("No.") THEN BEGIN
      ReservePurchLine.DeleteLine(Rec);
      IF "Receipt No." = '' THEN
        TESTFIELD("Qty. Rcd. Not Invoiced",0);
      IF "Return Shipment No." = '' THEN
        TESTFIELD("Return Qty. Shipped Not Invd.",0);

      CALCFIELDS("Reserved Qty. (Base)");
      TESTFIELD("Reserved Qty. (Base)",0);
      WhseValidateSourceLine.PurchaseLineDelete(Rec);
    END;

    IF ("Document Type" = "Document Type"::Order) AND (Quantity <> "Quantity Invoiced") THEN
      TESTFIELD("Prepmt. Amt. Inv.","Prepmt Amt Deducted");

    IF "Sales Order Line No." <> 0 THEN BEGIN
      LOCKTABLE;
      SalesOrderLine.LOCKTABLE;
      SalesOrderLine.GET(SalesOrderLine."Document Type"::Order,"Sales Order No.","Sales Order Line No.");
      SalesOrderLine."Purchase Order No." := '';
      SalesOrderLine."Purch. Order Line No." := 0;
      SalesOrderLine.MODIFY;
    END;

    IF ("Special Order Sales Line No." <> 0) AND ("Quantity Invoiced" = 0) THEN BEGIN
      LOCKTABLE;
      SalesOrderLine.LOCKTABLE;
      IF SalesOrderLine.GET(
           SalesOrderLine."Document Type"::Order,"Special Order Sales No.","Special Order Sales Line No.")
      THEN BEGIN
        SalesOrderLine."Special Order Purchase No." := '';
        SalesOrderLine."Special Order Purch. Line No." := 0;
        SalesOrderLine.MODIFY;
      END;
    END;

    CatalogItemMgt.DelNonStockPurch(Rec);

    IF "Document Type" = "Document Type"::"Blanket Order" THEN BEGIN
      PurchLine2.RESET;
      PurchLine2.SETCURRENTKEY("Document Type","Blanket Order No.","Blanket Order Line No.");
      PurchLine2.SETRANGE("Blanket Order No.","Document No.");
      PurchLine2.SETRANGE("Blanket Order Line No.","Line No.");
      IF PurchLine2.FINDFIRST THEN
        PurchLine2.TESTFIELD("Blanket Order Line No.",0);
    END;

    IF Type = Type::Item THEN
      DeleteItemChargeAssgnt("Document Type","Document No.","Line No.");

    IF Type = Type::"Charge (Item)" THEN
      DeleteChargeChargeAssgnt("Document Type","Document No.","Line No.");

    IF "Line No." <> 0 THEN BEGIN
      PurchLine2.RESET;
      PurchLine2.SETRANGE("Document Type","Document Type");
      PurchLine2.SETRANGE("Document No.","Document No.");
      PurchLine2.SETRANGE("Attached to Line No.","Line No.");
      PurchLine2.SETFILTER("Line No.",'<>%1',"Line No.");
      PurchLine2.DELETEALL(TRUE);
    END;

    PurchCommentLine.SETRANGE("Document Type","Document Type");
    PurchCommentLine.SETRANGE("No.","Document No.");
    PurchCommentLine.SETRANGE("Document Line No.","Line No.");
    IF NOT PurchCommentLine.ISEMPTY THEN
      PurchCommentLine.DELETEALL;

    // In case we have roundings on VAT or Sales Tax, we should update some other line
    IF (Type <> Type::" ") AND ("Line No." <> 0) AND ("Attached to Line No." = 0) AND
       (Quantity <> 0) AND (Amount <> 0) AND (Amount <> "Amount Including VAT") AND NOT StatusCheckSuspended
    THEN BEGIN
      Quantity := 0;
      "Quantity (Base)" := 0;
      "Line Discount Amount" := 0;
      "Inv. Discount Amount" := 0;
      "Inv. Disc. Amount to Invoice" := 0;
      UpdateAmounts;
    END;

    IF "Deferral Code" <> '' THEN
      DeferralUtilities.DeferralCodeOnDelete(
        DeferralUtilities.GetPurchDeferralDocType,'','',
        "Document Type","Document No.","Line No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestStatusOpen;
    // added by vishnu Priya on 31-10-2020
    if Rec."Quantity Received" >0 then
      Error('Inwards done for this line. So you can''t delete this');

    // added by vishnu Priya on 31-10-2020
    Cashflow_Modification;
    if not StatusCheckSuspended and (PurchHeader.Status = PurchHeader.Status::Released) and
       (Type in [Type::"G/L Account",Type::"Charge (Item)"])
    then
      Validate(Quantity,0);

    if (Quantity <> 0) and ItemExists("No.") then begin
      ReservePurchLine.DeleteLine(Rec);
      if "Receipt No." = '' then
        TestField("Qty. Rcd. Not Invoiced",0);   //message('ok');//mnraju // added by vijaya on 22-06-2018
      if "Return Shipment No." = '' then
        TestField("Return Qty. Shipped Not Invd.",0);

      CalcFields("Reserved Qty. (Base)");
      TestField("Reserved Qty. (Base)",0);
      WhseValidateSourceLine.PurchaseLineDelete(Rec);
    end;

    if ("Document Type" = "Document Type"::Order) and (Quantity <> "Quantity Invoiced") then
      TestField("Prepmt. Amt. Inv.","Prepmt Amt Deducted");

    if "Sales Order Line No." <> 0 then begin
      LockTable;
      SalesOrderLine.LockTable;
      SalesOrderLine.Get(SalesOrderLine."Document Type"::Order,"Sales Order No.","Sales Order Line No.");
      SalesOrderLine."Purchase Order No." := '';
      SalesOrderLine."Purch. Order Line No." := 0;
      SalesOrderLine.Modify;
    end;

    if ("Special Order Sales Line No." <> 0) and ("Quantity Invoiced" = 0) then begin
      LockTable;
      SalesOrderLine.LockTable;
      if SalesOrderLine.Get(
           SalesOrderLine."Document Type"::Order,"Special Order Sales No.","Special Order Sales Line No.")
      then begin
        SalesOrderLine."Special Order Purchase No." := '';
        SalesOrderLine."Special Order Purch. Line No." := 0;
        SalesOrderLine.Modify;
      end;
    end;
    #37..39
    if "Document Type" = "Document Type"::"Blanket Order" then begin
      PurchLine2.Reset;
      PurchLine2.SetCurrentKey("Document Type","Blanket Order No.","Blanket Order Line No.");
      PurchLine2.SetRange("Blanket Order No.","Document No.");
      PurchLine2.SetRange("Blanket Order Line No.","Line No.");
      if PurchLine2.FindFirst then
        PurchLine2.TestField("Blanket Order Line No.",0);
    end;

    if Type = Type::Item then
      DeleteItemChargeAssgnt("Document Type","Document No.","Line No.");

    if Type = Type::"Charge (Item)" then
      DeleteChargeChargeAssgnt("Document Type","Document No.","Line No.");

    if "Line No." <> 0 then begin
      PurchLine2.Reset;
      PurchLine2.SetRange("Document Type","Document Type");
      PurchLine2.SetRange("Document No.","Document No.");
      PurchLine2.SetRange("Attached to Line No.","Line No.");
      PurchLine2.SetFilter("Line No.",'<>%1',"Line No.");
      PurchLine2.DeleteAll(true);
    end;

    PurchCommentLine.SetRange("Document Type","Document Type");
    PurchCommentLine.SetRange("No.","Document No.");
    PurchCommentLine.SetRange("Document Line No.","Line No.");
    if not PurchCommentLine.IsEmpty then
      PurchCommentLine.DeleteAll;

    // In case we have roundings on VAT or Sales Tax, we should update some other line
    if (Type <> Type::" ") and ("Line No." <> 0) and ("Attached to Line No." = 0) and
       (Quantity <> 0) and (Amount <> 0) and (Amount <> "Amount Including VAT") and not StatusCheckSuspended
    then begin
    #74..79
    end;
    GetPurchHeader;
    {StrOrderLine.SETRANGE(Type,StrOrderLine.Type::Purchase);
    StrOrderLine.SETRANGE("Document Type","Document Type");
    StrOrderLine.SETRANGE("Structure Code",PurchHeader.Structure);
    StrOrderLine.SETRANGE("Document No.","No.");
    StrOrderLine.SETRANGE("Line No.","Line No.");
    StrOrderLine.DELETEALL;

    DefermentBuffer.RESET;
    DefermentBuffer.SETRANGE("Document No.","Document No.");
    DefermentBuffer.SETRANGE("Line No.","Line No.");
    DefermentBuffer.DELETEALL;

    DetailTaxEntryBuffer.RESET;
    DetailTaxEntryBuffer.SETRANGE("Document No.","Document No.");
    DetailTaxEntryBuffer.SETRANGE("Line No.","Line No.");
    DetailTaxEntryBuffer.SETRANGE("Transaction Type",DetailTaxEntryBuffer."Transaction Type"::Purchase);
    DetailTaxEntryBuffer.DELETEALL;

    IF ("Line No." <> 0) AND ("Attached to Line No." = 0) THEN BEGIN
      PurchLine2.COPY(Rec);
      IF PurchLine2.FIND('<>') THEN BEGIN
        PurchLine2.VALIDATE("Recalculate Invoice Disc.",TRUE);
        PurchLine2.MODIFY;
    #35..37
    {
    //PO1.0 SGS
    IndentLine.RESET;
    IndentLine.SETRANGE(IndentLine."Document No.","Indent No.");
    IndentLine.SETRANGE(IndentLine."Line No.","Indent Line No.");
    IF IndentLine.FIND('-') THEN BEGIN
      IndentLine."Indent Status":=IndentLine."Indent Status"::Indent;
      IndentLine.MODIFY;
    END;
    //PO1.0 SGS
     } //Commented by Santhosh
    IF "Document Type"="Document Type"::Order THEN
    BEGIN
      IF Type=Type::Item THEN
      BEGIN
        IF ("ICN No."<>'') AND ("No."<>'')  THEN
        BEGIN
          IndentLine.SETRANGE(IndentLine."ICN No.","ICN No.");
          IndentLine.SETRANGE(IndentLine."No.","No.");
          IndentLine.SETRANGE(IndentLine."Delivery Location","Location Code");
          IndentLine.SETRANGE(IndentLine."Indent Status",IndentLine."Indent Status"::Order);
          IF IndentLine.FINDFIRST THEN
          REPEAT
            IndentLine."Indent Status":=IndentLine."Indent Status"::Indent;
            IndentLine."Order Mail":=FALSE;
            IndentLine.MODIFY;
          UNTIL IndentLine.NEXT=0;
        END;
      END ELSE
      BEGIN
        IF ("Indent No."<>'') AND ("Indent Line No.">0)  THEN
        BEGIN
          IndentLine.RESET;
          IndentLine.SETRANGE(IndentLine."Document No.","Indent No.");
          IndentLine.SETRANGE(IndentLine."Line No.","Indent Line No.");
          IF IndentLine.FINDFIRST THEN
          BEGIN
            IndentLine."Indent Status":=IndentLine."Indent Status"::Indent;
            IndentLine.MODIFY;
          END;
        END;
      END;
    END;
    IF ("Line No." <> 0) AND ("Attached to Line No." = 0) THEN BEGIN
      PurchLine2.COPY(Rec);
      IF PurchLine2.FIND('<>') THEN BEGIN
        PurchLine2.VALIDATE("Recalculate Invoice Disc.",TRUE);
        PurchLine2.MODIFY;
      END;
    END;

    #81..85
        }
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestStatusOpen;
    IF Quantity <> 0 THEN BEGIN
      OnBeforeVerifyReservedQty(Rec,xRec,0);
      ReservePurchLine.VerifyQuantity(Rec,xRec);
    END;
    LOCKTABLE;
    PurchHeader."No." := '';
    IF ("Deferral Code" <> '') AND (GetDeferralAmount <> 0) THEN
      UpdateDeferralAmounts;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Cashflow_Modification;
    TestStatusOpen;
    if Quantity <> 0 then begin
      OnBeforeVerifyReservedQty(Rec,xRec,0);
      ReservePurchLine.VerifyQuantity(Rec,xRec);
    end;
    LockTable;
    PurchHeader."No." := '';
    if ("Deferral Code" <> '') and (GetDeferralAmount <> 0) then
      UpdateDeferralAmounts;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF ("Document Type" = "Document Type"::"Blanket Order") AND
       ((Type <> xRec.Type) OR ("No." <> xRec."No."))
    THEN BEGIN
      PurchLine2.RESET;
      PurchLine2.SETCURRENTKEY("Document Type","Blanket Order No.","Blanket Order Line No.");
      PurchLine2.SETRANGE("Blanket Order No.","Document No.");
      PurchLine2.SETRANGE("Blanket Order Line No.","Line No.");
      IF PurchLine2.FINDSET THEN
        REPEAT
          PurchLine2.TESTFIELD(Type,Type);
          PurchLine2.TESTFIELD("No.","No.");
        UNTIL PurchLine2.NEXT = 0;
    END;

    IF ((Quantity <> 0) OR (xRec.Quantity <> 0)) AND ItemExists(xRec."No.") THEN
      ReservePurchLine.VerifyChange(Rec,xRec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*

    //Cashflow_Modification; comentted by vijaya on 02-07-2018 for need to editable for item to be recieved status
    if ("Document Type" = "Document Type"::"Blanket Order") and
       ((Type <> xRec.Type) or ("No." <> xRec."No."))
    then begin
      PurchLine2.Reset;
      PurchLine2.SetCurrentKey("Document Type","Blanket Order No.","Blanket Order Line No.");
      PurchLine2.SetRange("Blanket Order No.","Document No.");
      PurchLine2.SetRange("Blanket Order Line No.","Line No.");
      if PurchLine2.FindSet then
        repeat
          PurchLine2.TestField(Type,Type);
          PurchLine2.TestField("No.","No.");
        until PurchLine2.Next = 0;
    end;

    if ((Quantity <> 0) or (xRec.Quantity <> 0)) and ItemExists(xRec."No.") then
      ReservePurchLine.VerifyChange(Rec,xRec);
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text000,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text000,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "Type(Field 5).OnValidate.TempPurchLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Type : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Type : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""No."(Field 6).OnValidate.TempPurchLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Location Code"(Field 7).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Location Code" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Location Code" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Location Code"(Field 7).OnValidate.ConfirmManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Location Code" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Location Code" : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Description(Field 11).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Description : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Description : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Description(Field 11).OnValidate.ApplicationAreaMgmtFacade(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Description : 9179;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Description : "Application Area Mgmt. Facade";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Description(Field 11).OnValidate.FindRecordMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Description : 703;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Description : "Find Record Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit Cost (LCY)"(Field 23).OnValidate.Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit Cost  : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit Cost  : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Job No."(Field 45).OnValidate.Job(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Job No." : 167;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Job No." : Job;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Indirect Cost %"(Field 54).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Indirect Cost %" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Indirect Cost %" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Outstanding Amount"(Field 57).OnValidate.Currency2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Outstanding Amount" : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Outstanding Amount" : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Amt. Rcd. Not Invoiced"(Field 59).OnValidate.Currency2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Amt. Rcd. Not Invoiced" : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Amt. Rcd. Not Invoiced" : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""IC Partner Ref. Type"(Field 107).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"IC Partner Ref. Type" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"IC Partner Ref. Type" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""IC Partner Reference"(Field 108).OnLookup.ICGLAccount(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"IC Partner Reference" : 410;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"IC Partner Reference" : "IC G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""IC Partner Reference"(Field 108).OnLookup.Item(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"IC Partner Reference" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"IC Partner Reference" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""IC Partner Reference"(Field 108).OnLookup.ItemCrossReference(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"IC Partner Reference" : 5717;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"IC Partner Reference" : "Item Cross Reference";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""IC Partner Reference"(Field 108).OnLookup.ItemVendorCatalog(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"IC Partner Reference" : 99;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"IC Partner Reference" : "Item Vendor";
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


    //Unsupported feature: PropertyModification on ""Returns Deferral Start Date"(Field 1702).OnValidate.DeferralHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Returns Deferral Start Date" : 1701;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Returns Deferral Start Date" : "Deferral Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Returns Deferral Start Date"(Field 1702).OnValidate.DeferralUtilities(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Returns Deferral Start Date" : 1720;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Returns Deferral Start Date" : "Deferral Utilities";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 5403).OnLookup.WMSManagement(Variable 1000)". Please convert manually.

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


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 5407).OnValidate.Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 5407).OnValidate.UnitOfMeasureTranslation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : "Unit of Measure Translation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Budgeted FA No."(Field 5611).OnValidate.FixedAsset(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Budgeted FA No." : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Budgeted FA No." : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Cross-Reference No."(Field 5705).OnValidate.ItemCrossReference(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Cross-Reference No." : 5717;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Cross-Reference No." : "Item Cross Reference";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Purchasing Code"(Field 5711).OnValidate.PurchasingCode(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Purchasing Code" : 5721;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Purchasing Code" : Purchasing;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Return Shpd. Not Invd."(Field 5807).OnValidate.Currency2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Return Shpd. Not Invd." : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Return Shpd. Not Invd." : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Operation No."(Field 99000751).OnValidate.ProdOrderRtngLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Operation No." : 5409;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Operation No." : "Prod. Order Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PurchCommentLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PurchCommentLine : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PurchCommentLine : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.SalesOrderLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SalesOrderLine : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SalesOrderLine : "Sales Line";
    //Variable type has not been exported.

    var
        "--PO1.0--": Integer;
        IndentLine: Record "Indent Line";


    //Unsupported feature: PropertyModification on "CopyFromStandardText(PROCEDURE 95).StandardText(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromStandardText : 7;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromStandardText : "Standard Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromItem(PROCEDURE 100).Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromItem : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromItem : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromItem(PROCEDURE 100).PrepaymentMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromItem : 441;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromItem : "Prepayment Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CopyFromFixedAsset(PROCEDURE 101).FixedAsset(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CopyFromFixedAsset : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CopyFromFixedAsset : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectItemEntry(PROCEDURE 7).ItemLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectItemEntry : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectItemEntry : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateUnitCost(PROCEDURE 5).Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateUnitCost : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateUnitCost : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateVATAmounts(PROCEDURE 38).PurchLine2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateVATAmounts : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateVATAmounts : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePrepmtSetupFields(PROCEDURE 102).GenPostingSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePrepmtSetupFields : 252;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePrepmtSetupFields : "General Posting Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePrepmtSetupFields(PROCEDURE 102).GLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePrepmtSetupFields : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePrepmtSetupFields : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSalesCost(PROCEDURE 6).SalesOrderLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSalesCost : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSalesCost : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFAPostingGroup(PROCEDURE 10).LocalGLAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFAPostingGroup : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFAPostingGroup : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFAPostingGroup(PROCEDURE 10).FAPostingGr(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFAPostingGroup : 5606;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFAPostingGroup : "FA Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFAPostingGroup(PROCEDURE 10).FADeprBook(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFAPostingGroup : 5612;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFAPostingGroup : "FA Depreciation Book";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFAPostingGroup(PROCEDURE 10).FASetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFAPostingGroup : 5603;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFAPostingGroup : "FA Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateUOMQtyPerStockQty(PROCEDURE 9).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateUOMQtyPerStockQty : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateUOMQtyPerStockQty : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectMultipleItems(PROCEDURE 180).ItemListPage(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectMultipleItems : 31;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectMultipleItems : "Item List";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddItems(PROCEDURE 179).Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddItems : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddItems : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddItems(PROCEDURE 179).DummyPurchLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddItems : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddItems : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddItems(PROCEDURE 179).PurchLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddItems : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddItems : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddItems(PROCEDURE 179).LastPurchLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddItems : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddItems : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddItems(PROCEDURE 179).TransferExtendedText(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddItems : 378;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddItems : "Transfer Extended Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InitNewLine(PROCEDURE 178).PurchLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InitNewLine : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InitNewLine : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowReservation(PROCEDURE 8).Reservation(Variable 1000)". Please convert manually.

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


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 26).SourceCodeSetup(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemChargeAssgnt(PROCEDURE 5801).ItemChargeAssgntPurch(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemChargeAssgnt : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemChargeAssgnt : "Item Charge Assignment (Purch)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemChargeAssgnt(PROCEDURE 5801).AssignItemChargePurch(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemChargeAssgnt : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemChargeAssgnt : "Item Charge Assgnt. (Purch.)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemChargeAssgnt(PROCEDURE 5801).ItemChargeAssgnts(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemChargeAssgnt : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemChargeAssgnt : "Item Charge Assignment (Purch)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateItemChargeAssgnt(PROCEDURE 5807).ItemChargeAssgntPurch(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateItemChargeAssgnt : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateItemChargeAssgnt : "Item Charge Assignment (Purch)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteItemChargeAssgnt(PROCEDURE 5802).ItemChargeAssgntPurch(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteItemChargeAssgnt : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteItemChargeAssgnt : "Item Charge Assignment (Purch)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteChargeChargeAssgnt(PROCEDURE 5804).ItemChargeAssgntPurch(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteChargeChargeAssgnt : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteChargeChargeAssgnt : "Item Charge Assignment (Purch)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckItemChargeAssgnt(PROCEDURE 5800).ItemChargeAssgntPurch(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckItemChargeAssgnt : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckItemChargeAssgnt : "Item Charge Assignment (Purch)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCaptionClass(PROCEDURE 34).PurchLineCaptionClassMgmt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCaptionClass : 346;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCaptionClass : "Purch. Line CaptionClass Mgmt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateVATOnLines(PROCEDURE 32).TempVATAmountLineRemainder(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateVATOnLines : 290;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateVATOnLines : "VAT Amount Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateVATOnLines(PROCEDURE 32).Currency(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateVATOnLines : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateVATOnLines : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWarehouse(PROCEDURE 47).Location2(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWarehouse : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWarehouse : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWarehouse(PROCEDURE 47).WhseSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWarehouse : 5769;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWarehouse : "Warehouse Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWarehouse(PROCEDURE 47).ShowDialog(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWarehouse :  ,Message,Error;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWarehouse : " ",Message,Error;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetOverheadRateFCY(PROCEDURE 40).Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetOverheadRateFCY : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetOverheadRateFCY : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetItemTranslation(PROCEDURE 44).ItemTranslation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetItemTranslation : 30;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetItemTranslation : "Item Translation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RowID1(PROCEDURE 49).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RowID1 : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RowID1 : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultBin(PROCEDURE 50).WMSManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultBin : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HandleDedicatedBin(PROCEDURE 71).WhseIntegrationMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HandleDedicatedBin : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HandleDedicatedBin : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CrossReferenceNoLookUp(PROCEDURE 51).ItemCrossReference(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CrossReferenceNoLookUp : 5717;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CrossReferenceNoLookUp : "Item Cross Reference";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateCrossReferenceNo(PROCEDURE 156).ReturnedItemCrossReference(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateCrossReferenceNo : 5717;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateCrossReferenceNo : "Item Cross Reference";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemExists(PROCEDURE 52).Item2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemExists : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemExists : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindOrCreateRecordByNo(PROCEDURE 207).Item(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindOrCreateRecordByNo : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindOrCreateRecordByNo : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindOrCreateRecordByNo(PROCEDURE 207).FindRecordManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindOrCreateRecordByNo : 703;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindOrCreateRecordByNo : "Find Record Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckApplToItemLedgEntry(PROCEDURE 53).ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckApplToItemLedgEntry : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckApplToItemLedgEntry : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckApplToItemLedgEntry(PROCEDURE 53).ApplyRec(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckApplToItemLedgEntry : 339;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckApplToItemLedgEntry : "Item Application Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckApplToItemLedgEntry(PROCEDURE 53).ItemTrackingLines(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckApplToItemLedgEntry : 6510;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckApplToItemLedgEntry : "Item Tracking Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetLineAmountToHandleInclPrepmt(PROCEDURE 193).PurchasePostPrepayments(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetLineAmountToHandleInclPrepmt : 444;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetLineAmountToHandleInclPrepmt : "Purchase-Post Prepayments";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetLineAmountToHandleInclPrepmt(PROCEDURE 193).DocType(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetLineAmountToHandleInclPrepmt : Invoice,Credit Memo,Statistic;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetLineAmountToHandleInclPrepmt : Invoice,"Credit Memo",Statistic;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateJobPrices(PROCEDURE 69).PurchRcptLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateJobPrices : 121;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateJobPrices : "Purch. Rcpt. Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineComments(PROCEDURE 62).PurchCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineComments : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineComments : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePrePaymentAmounts(PROCEDURE 65).ReceiptLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePrePaymentAmounts : 121;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePrePaymentAmounts : "Purch. Rcpt. Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePrePaymentAmounts(PROCEDURE 65).PurchOrderLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePrePaymentAmounts : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePrePaymentAmounts : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePrePaymentAmounts(PROCEDURE 65).PurchOrderHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePrePaymentAmounts : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePrePaymentAmounts : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetVendorItemNo(PROCEDURE 64).Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetVendorItemNo : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetVendorItemNo : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetVendorItemNo(PROCEDURE 64).ItemVend(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetVendorItemNo : 99;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetVendorItemNo : "Item Vendor";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetVPGInvRoundAcc(PROCEDURE 72).Vendor(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetVPGInvRoundAcc : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetVPGInvRoundAcc : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetVPGInvRoundAcc(PROCEDURE 72).VendorPostingGroup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetVPGInvRoundAcc : 93;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetVPGInvRoundAcc : "Vendor Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckReceiptRelation(PROCEDURE 94).PurchRcptLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckReceiptRelation : 121;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckReceiptRelation : "Purch. Rcpt. Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckRetShptRelation(PROCEDURE 74).ReturnShptLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckRetShptRelation : 6651;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckRetShptRelation : "Return Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsServiceCharge(PROCEDURE 177).VendorPostingGroup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsServiceCharge : 93;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsServiceCharge : "Vendor Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ConfirmReceivedShippedItemDimChange(PROCEDURE 90).ConfirmManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmReceivedShippedItemDimChange : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmReceivedShippedItemDimChange : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsNonInventoriableItem(PROCEDURE 175).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsNonInventoriableItem : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsNonInventoriableItem : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsInventoriableItem(PROCEDURE 139).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsInventoriableItem : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsInventoriableItem : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservEntryExist(PROCEDURE 78).NewReservEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservEntryExist : 337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservEntryExist : "Reservation Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ValidateReturnReasonCode(PROCEDURE 99).ReturnReason(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateReturnReasonCode : 6635;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateReturnReasonCode : "Return Reason";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateDimensionsFromJobTask(PROCEDURE 60).SourceCodeSetup(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateDimensionsFromJobTask : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateDimensionsFromJobTask : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateICPartner(PROCEDURE 81).ICPartner(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateICPartner : 413;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateICPartner : "IC Partner";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateICPartner(PROCEDURE 81).ItemCrossReference(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateICPartner : 5717;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateICPartner : "Item Cross Reference";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InitDeferralCode(PROCEDURE 112).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InitDeferralCode : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InitDeferralCode : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DefaultDeferralCode(PROCEDURE 110).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DefaultDeferralCode : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DefaultDeferralCode : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsReceivedFromOcr(PROCEDURE 92).IncomingDocument(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsReceivedFromOcr : 130;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsReceivedFromOcr : "Incoming Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CanEditUnitOfMeasureCode(PROCEDURE 115).ItemUnitOfMeasure(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CanEditUnitOfMeasureCode : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CanEditUnitOfMeasureCode : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SendLineInvoiceDiscountResetNotification(PROCEDURE 223).NotificationLifecycleMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SendLineInvoiceDiscountResetNotification : 1511;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SendLineInvoiceDiscountResetNotification : "Notification Lifecycle Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDeferralSchedule(PROCEDURE 123).PurchaseHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDeferralSchedule : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDeferralSchedule : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchHeader(Variable 1022)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchHeader : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchHeader : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchLine2(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchLine2 : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchLine2 : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLAcc(Variable 1025)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLAcc : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLAcc : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Currency(Variable 1027)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Currency : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Currency : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CurrExchRate(Variable 1028)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CurrExchRate : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrExchRate : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VATPostingSetup(Variable 1034)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VATPostingSetup : 325;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VATPostingSetup : "VAT Posting Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenBusPostingGrp(Variable 1039)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenBusPostingGrp : 250;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenBusPostingGrp : "Gen. Business Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenProdPostingGrp(Variable 1040)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenProdPostingGrp : 251;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenProdPostingGrp : "Gen. Product Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UnitOfMeasure(Variable 1043)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UnitOfMeasure : 204;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UnitOfMeasure : "Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemCharge(Variable 1044)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemCharge : 5800;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemCharge : "Item Charge";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SKU(Variable 1046)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SKU : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SKU : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WorkCenter(Variable 1047)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WorkCenter : 99000754;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WorkCenter : "Work Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InvtSetup(Variable 1050)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InvtSetup : 313;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InvtSetup : "Inventory Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1051)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1074)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalChange(Variable 1062)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalChange : 7602;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalChange : "Customized Calendar Change";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TempJobJnlLine(Variable 1071)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TempJobJnlLine : 210;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TempJobJnlLine : "Job Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchSetup(Variable 1095)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchSetup : 312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchSetup : "Purchases & Payables Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesTaxCalculate(Variable 1057)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesTaxCalculate : 398;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesTaxCalculate : "Sales Tax Calculate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservEngineMgt(Variable 1058)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservEngineMgt : 99000831;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservEngineMgt : "Reservation Engine Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReservePurchLine(Variable 1059)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReservePurchLine : 99000834;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReservePurchLine : "Purch. Line-Reserve";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1060)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddOnIntegrMgt(Variable 1061)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddOnIntegrMgt : 5403;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddOnIntegrMgt : AddOnIntegrManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1064)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DistIntegration(Variable 1065)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DistIntegration : 5702;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DistIntegration : "Dist. Integration";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CatalogItemMgt(Variable 1066)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CatalogItemMgt : 5703;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CatalogItemMgt : "Catalog Item Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseValidateSourceLine(Variable 1067)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseValidateSourceLine : 5777;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseValidateSourceLine : "Whse. Validate Source Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LeadTimeMgt(Variable 1069)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LeadTimeMgt : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LeadTimeMgt : "Lead-Time Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchPriceCalcMgt(Variable 1030)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchPriceCalcMgt : 7010;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchPriceCalcMgt : "Purch. Price Calc. Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalendarMgmt(Variable 1032)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalendarMgmt : 7600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalendarMgmt : "Calendar Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckDateConflict(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckDateConflict : 99000815;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckDateConflict : "Reservation-Check Date Confl.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeferralUtilities(Variable 1081)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeferralUtilities : 1720;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeferralUtilities : "Deferral Utilities";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostingSetupMgt(Variable 1031)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostingSetupMgt : 48;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostingSetupMgt : PostingSetupManagement;
    //Variable type has not been exported.

    var
        "--QC": Integer;
        // QualityCtrlSetup: Record "Quality Control Setup";
        QCSetupRead: Boolean;
        GPS: Record "General Posting Setup";
        "Packing Value": Decimal;
        Insurence_Value: Decimal;
        //SQLConnection: Automation "'{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8:'{00000514-0000-0010-8000-00AA006D2EA4}':''{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8'.Connection";
        //RecordSet: Automation "'{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8:'{00000535-0000-0010-8000-00AA006D2EA4}':''{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8'.Recordset";
        SQLQuery: Text[1000];
        // LRecordSet: Automation "'{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8:'{00000535-0000-0010-8000-00AA006D2EA4}':''{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8'.Recordset";
        LineSQLQuery: Text[250];
        HeadID: Text[30];
        UpdateWebHead: Text[250];
        WebRecStatus: Text[30];
        OldWebStatus: Text[30];
        RCNT: Integer;
        Quotes: Label '''';
        Text50001: Label 'NEW';
        Text50002: Label 'OLD';
        STRUCTURE_ORDER_DETAILS: Record "Structure Order Details";
        Vendor: Record Vendor;
        //PCB: Record "PCB Vendors";
        Text50003: Label 'Do you Want to insert the record with itemno %1,vendor %2 and  area %3 in PCB Cost Details table';
        Text50004: Label 'Do you Want to insert the record with itemno %1,vendor %2 and  Quantity %3 in PCB Cost Details table';
        //IRH: Record "Inspection Receipt Header";
        PCB_Cost: Decimal;
        PCB_Last_Quote_Date: Date;
        ItemLedgEntry: Record "Item Ledger Entry";
        //QualityItemLedgEntry: Record "Quality Item Ledger Entry";
        //NODHeader: Record "NOD/NOC Header";
        PANErr: Label 'PAN No must be updated on Customer/Vendor/Party Master %1, currently its blank.';
}

