tableextension 70012 SalesLineExt extends "Sales Line"
{
    // version NAVW19.00.00.51947,NAVIN9.00.00.51947,TFS225680,B2B1.0,DWS1.0,SH1.0

    fields
    {
        modify("Document Type")
        {
            OptionCaptionML = ENU = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Amc', ENN = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Amc';

            //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.

        }

        //Unsupported feature: Change Editable on ""Sell-to Customer No."(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Document No."(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 6)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""No."(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipment Date"(Field 10)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 11)". Please convert manually.


        //Unsupported feature: Change TableRelation on "Description(Field 11)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "Description(Field 11)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "Description(Field 11)". Please convert manually.


        //Unsupported feature: Change Data type on ""Description 2"(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure"(Field 13)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Unit of Measure"(Field 13)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Unit of Measure"(Field 13)". Please convert manually.


        //Unsupported feature: Change BlankZero on "Quantity(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Quantity"(Field 16)". Please convert manually.


        //Unsupported feature: Change Enabled on ""Outstanding Quantity"(Field 16)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Qty. to Ship"(Field 18)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT %"(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on "Amount(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount Including VAT"(Field 30)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Invoice Disc."(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Item Entry"(Field 38)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer Price Group"(Field 42)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job No."(Field 45)". Please convert manually.


        //Unsupported feature: Change Editable on ""Recalculate Invoice Disc."(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Amount"(Field 57)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipped Not Invoiced"(Field 59)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Quantity Shipped"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Shipped"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Invoiced"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipment No."(Field 63)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipment Line No."(Field 64)". Please convert manually.


        //Unsupported feature: Change Editable on ""Profit %"(Field 67)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to Customer No."(Field 68)". Please convert manually.


        //Unsupported feature: Change Editable on ""Inv. Discount Amount"(Field 69)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Purchase Order No."(Field 71)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Purchase Order No."(Field 71)". Please convert manually.


        //Unsupported feature: Change Editable on ""Purchase Order No."(Field 71)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Purch. Order Line No."(Field 72)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Purch. Order Line No."(Field 72)". Please convert manually.


        //Unsupported feature: Change Editable on ""Purch. Order Line No."(Field 72)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Drop Shipment"(Field 73)". Please convert manually.


        //Unsupported feature: Change Editable on ""Drop Shipment"(Field 73)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 79)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Amount (LCY)"(Field 92)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipped Not Invoiced (LCY)"(Field 93)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipped Not Inv. (LCY) No VAT"(Field 94)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Quantity"(Field 95)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Reserved Quantity"(Field 95)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Quantity"(Field 95)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on "Reserve(Field 96)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Base Amount"(Field 99)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit Cost"(Field 100)". Please convert manually.


        //Unsupported feature: Change Editable on ""System-Created Entry"(Field 101)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Difference"(Field 104)". Please convert manually.


        //Unsupported feature: Change Editable on ""Inv. Disc. Amount to Invoice"(Field 105)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Identifier"(Field 106)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""IC Partner Ref. Type"(Field 107)". Please convert manually.


        //Unsupported feature: Change OptionString on ""IC Partner Ref. Type"(Field 107)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""IC Partner Reference"(Field 108)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. Amt. Inv."(Field 111)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. Amt. Incl. VAT"(Field 112)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment Amount"(Field 113)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. VAT Base Amt."(Field 114)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment VAT %"(Field 115)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Prepmt. VAT Calc. Type"(Field 116)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. VAT Calc. Type"(Field 116)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment VAT Identifier"(Field 117)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt Amt Deducted"(Field 122)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment Line"(Field 123)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. Amount Inv. Incl. VAT"(Field 124)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. Amount Inv. (LCY)"(Field 129)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. VAT Amount Inv. (LCY)"(Field 132)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment VAT Difference"(Field 135)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt VAT Diff. to Deduct"(Field 136)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt VAT Diff. Deducted"(Field 137)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Line Discount Calculation"(Field 180)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Qty. to Assemble to Order"(Field 900)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""ATO Whse. Outstanding Qty."(Field 902)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""ATO Whse. Outstanding Qty."(Field 902)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""ATO Whse. Outstanding Qty."(Field 902)". Please convert manually.


        //Unsupported feature: Change Editable on ""ATO Whse. Outstanding Qty."(Field 902)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""ATO Whse. Outstd. Qty. (Base)"(Field 903)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""ATO Whse. Outstd. Qty. (Base)"(Field 903)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""ATO Whse. Outstd. Qty. (Base)"(Field 903)". Please convert manually.


        //Unsupported feature: Change Editable on ""ATO Whse. Outstd. Qty. (Base)"(Field 903)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 1001)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Task No."(Field 1001)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Job Contract Entry No."(Field 1002)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Contract Entry No."(Field 1002)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Posting Date"(Field 1300)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5403)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change Editable on "Planned(Field 5405)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity (Base)"(Field 5415)". Please convert manually.


        //Unsupported feature: Change Editable on ""Outstanding Qty. (Base)"(Field 5416)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. to Invoice (Base)"(Field 5417)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. to Ship (Base)"(Field 5418)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Shipped Not Invd. (Base)"(Field 5458)". Please convert manually.


        //Unsupported feature: Change Enabled on ""Qty. Shipped Not Invd. (Base)"(Field 5458)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Shipped (Base)"(Field 5460)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Invoiced (Base)"(Field 5461)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Reserved Qty. (Base)"(Field 5495)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Reserved Qty. (Base)"(Field 5495)". Please convert manually.


        //Unsupported feature: Change Editable on ""Reserved Qty. (Base)"(Field 5495)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""FA Posting Date"(Field 5600)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Depr. until FA Posting Date"(Field 5605)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Use Duplication List"(Field 5613)". Please convert manually.


        //Unsupported feature: Change Editable on ""Responsibility Center"(Field 5700)". Please convert manually.


        //Unsupported feature: Change Editable on ""Out-of-Stock Substitution"(Field 5701)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Substitution Available"(Field 5702)". Please convert manually.


        //Unsupported feature: Change Editable on ""Substitution Available"(Field 5702)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Originally Ordered No."(Field 5703)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Originally Ordered Var. Code"(Field 5704)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Originally Ordered Var. Code"(Field 5704)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cross-Reference No."(Field 5705)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure (Cross Ref.)"(Field 5706)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Unit of Measure (Cross Ref.)"(Field 5706)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Cross-Reference Type"(Field 5707)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on "Nonstock(Field 5710)". Please convert manually.


        //Unsupported feature: Change Editable on "Nonstock(Field 5710)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Purchasing Code"(Field 5711)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Special Order"(Field 5713)". Please convert manually.


        //Unsupported feature: Change Editable on ""Special Order"(Field 5713)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Special Order Purchase No."(Field 5714)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Special Order Purchase No."(Field 5714)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Special Order Purch. Line No."(Field 5715)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Special Order Purch. Line No."(Field 5715)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Whse. Outstanding Qty."(Field 5749)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Whse. Outstanding Qty."(Field 5749)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Whse. Outstanding Qty."(Field 5749)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Outstanding Qty."(Field 5749)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Whse. Outstanding Qty. (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Whse. Outstanding Qty. (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Whse. Outstanding Qty. (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change Editable on ""Whse. Outstanding Qty. (Base)"(Field 5750)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Shipped"(Field 5752)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Promised Delivery Date"(Field 5791)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Time"(Field 5792)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Outbound Whse. Handling Time"(Field 5793)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Planned Delivery Date"(Field 5794)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Planned Shipment Date"(Field 5795)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Agent Code"(Field 5796)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 5797)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Agent Service Code"(Field 5797)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Item Charge Assignment"(Field 5800)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Allow Item Charge Assignment"(Field 5800)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Qty. to Assign"(Field 5801)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. to Assign"(Field 5801)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Qty. Assigned"(Field 5802)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Assigned"(Field 5802)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Return Qty. to Receive"(Field 5803)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Qty. Rcd. Not Invd."(Field 5805)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ret. Qty. Rcd. Not Invd.(Base)"(Field 5806)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Rcd. Not Invd."(Field 5807)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Rcd. Not Invd. (LCY)"(Field 5808)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Return Qty. Received"(Field 5809)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Qty. Received"(Field 5809)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Qty. Received (Base)"(Field 5810)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-from Item Entry"(Field 5811)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Receipt No."(Field 6600)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Receipt Line No."(Field 6601)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Line Disc."(Field 7001)". Please convert manually.


        //Unsupported feature: Change OptionString on "Subtype(Field 7003)". Please convert manually.


        //Unsupported feature: CodeModification on "Type(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;
        GetSalesHeader;

        TESTFIELD("Qty. Shipped Not Invoiced",0);
        TESTFIELD("Quantity Shipped",0);
        TESTFIELD("Shipment No.",'');

        TESTFIELD("Return Qty. Rcd. Not Invd.",0);
        TESTFIELD("Return Qty. Received",0);
        TESTFIELD("Return Receipt No.",'');

        TESTFIELD("Prepmt. Amt. Inv.",0);

        CheckAssocPurchOrder(FIELDCAPTION(Type));

        IF Type <> xRec.Type THEN BEGIN
          CASE xRec.Type OF
            Type::Item:
              BEGIN
                ATOLink.DeleteAsmFromSalesLine(Rec);
                IF Quantity <> 0 THEN BEGIN
                  SalesHeader.TESTFIELD(Status,SalesHeader.Status::Open);
                  CALCFIELDS("Reserved Qty. (Base)");
                  TESTFIELD("Reserved Qty. (Base)",0);
                  ReserveSalesLine.VerifyChange(Rec,xRec);
                  WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
                  OnValidateTypeOnAfterCheckItem(Rec,xRec);
                END;
              END;
            Type::"Fixed Asset":
              IF Quantity <> 0 THEN
                SalesHeader.TESTFIELD(Status,SalesHeader.Status::Open);
            Type::"Charge (Item)":
              DeleteChargeChargeAssgnt("Document Type","Document No.","Line No.");
          END;
          IF xRec."Deferral Code" <> '' THEN
            DeferralUtilities.RemoveOrSetDeferralSchedule('',
              DeferralUtilities.GetSalesDeferralDocType,'','',
              xRec."Document Type",xRec."Document No.",xRec."Line No.",
              xRec.GetDeferralAmount,xRec."Posting Date",'',xRec."Currency Code",TRUE);
        END;
        AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);
        TempSalesLine := Rec;
        INIT;
        IF xRec."Line Amount" <> 0 THEN
          "Recalculate Invoice Disc." := TRUE;

        Type := TempSalesLine.Type;
        "System-Created Entry" := TempSalesLine."System-Created Entry";
        "Currency Code" := SalesHeader."Currency Code";

        OnValidateTypeOnCopyFromTempSalesLine(Rec,TempSalesLine);

        IF Type = Type::Item THEN
          "Allow Item Charge Assignment" := TRUE
        ELSE
          "Allow Item Charge Assignment" := FALSE;
        IF Type = Type::Item THEN BEGIN
          IF SalesHeader.InventoryPickConflict("Document Type","Document No.",SalesHeader."Shipping Advice") THEN
            ERROR(Text056,SalesHeader."Shipping Advice");
          IF SalesHeader.WhseShpmntConflict("Document Type","Document No.",SalesHeader."Shipping Advice") THEN
            ERROR(Text052,SalesHeader."Shipping Advice");
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

        TestField("Return Qty. Rcd. Not Invd.",0);
        TestField("Return Qty. Received",0);
        TestField("Return Receipt No.",'');

        TestField("Prepmt. Amt. Inv.",0);

        CheckAssocPurchOrder(FieldCaption(Type));

        if Type <> xRec.Type then begin
          case xRec.Type of
            Type::Item:
              begin
                ATOLink.DeleteAsmFromSalesLine(Rec);
                if Quantity <> 0 then begin
                  SalesHeader.TestField(Status,SalesHeader.Status::Open);
                  CalcFields("Reserved Qty. (Base)");
                  TestField("Reserved Qty. (Base)",0);
        #26..28
                end;
              end;
            Type::"Fixed Asset":
              if Quantity <> 0 then
                SalesHeader.TestField(Status,SalesHeader.Status::Open);
            Type::"Charge (Item)":
              DeleteChargeChargeAssgnt("Document Type","Document No.","Line No.");
          end;
          if xRec."Deferral Code" <> '' then
        #38..40
              xRec.GetDeferralAmount,xRec."Posting Date",'',xRec."Currency Code",true);
        end;
        AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);
        TempSalesLine := Rec;
        Init;
        if xRec."Line Amount" <> 0 then
          "Recalculate Invoice Disc." := true;
        #48..54
        if Type = Type::Item then
          "Allow Item Charge Assignment" := true
        else
          "Allow Item Charge Assignment" := false;
        if Type = Type::Item then begin
          if SalesHeader.InventoryPickConflict("Document Type","Document No.",SalesHeader."Shipping Advice") then
            Error(Text056,SalesHeader."Shipping Advice");
          if SalesHeader.WhseShpmntConflict("Document Type","Document No.",SalesHeader."Shipping Advice") then
            Error(Text052,SalesHeader."Shipping Advice");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""No."(Field 6).OnValidate". Please convert manually.

        //trigger "(Field 6)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetSalesSetup;

        "No." := FindOrCreateRecordByNo("No.");

        TestJobPlanningLine;
        TestStatusOpen;
        CheckItemAvailable(FIELDNO("No."));

        IF (xRec."No." <> "No.") AND (Quantity <> 0) THEN BEGIN
          TESTFIELD("Qty. to Asm. to Order (Base)",0);
          CALCFIELDS("Reserved Qty. (Base)");
          TESTFIELD("Reserved Qty. (Base)",0);
          IF Type = Type::Item THEN
            WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
          OnValidateNoOnAfterVerifyChange(Rec,xRec);
        END;

        TESTFIELD("Qty. Shipped Not Invoiced",0);
        TESTFIELD("Quantity Shipped",0);
        TESTFIELD("Shipment No.",'');

        TESTFIELD("Prepmt. Amt. Inv.",0);

        TESTFIELD("Return Qty. Rcd. Not Invd.",0);
        TESTFIELD("Return Qty. Received",0);
        TESTFIELD("Return Receipt No.",'');

        IF "No." = '' THEN
          ATOLink.DeleteAsmFromSalesLine(Rec);
        CheckAssocPurchOrder(FIELDCAPTION("No."));
        AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);

        OnValidateNoOnBeforeInitRec(Rec,xRec,CurrFieldNo);
        TempSalesLine := Rec;
        INIT;
        IF xRec."Line Amount" <> 0 THEN
          "Recalculate Invoice Disc." := TRUE;
        Type := TempSalesLine.Type;
        "No." := TempSalesLine."No.";
        OnValidateNoOnCopyFromTempSalesLine(Rec,TempSalesLine);
        IF "No." = '' THEN
          EXIT;

        IF HasTypeToFillMandatoryFields THEN
          Quantity := TempSalesLine.Quantity;

        "System-Created Entry" := TempSalesLine."System-Created Entry";
        GetSalesHeader;
        InitHeaderDefaults(SalesHeader);
        OnValidateNoOnAfterInitHeaderDefaults(SalesHeader,TempSalesLine);

        CALCFIELDS("Substitution Available");

        "Promised Delivery Date" := SalesHeader."Promised Delivery Date";
        "Requested Delivery Date" := SalesHeader."Requested Delivery Date";
        "Shipment Date" :=
          CalendarMgmt.CalcDateBOC(
            '',SalesHeader."Shipment Date",CalChange."Source Type"::Location,"Location Code",'',
            CalChange."Source Type"::"Shipping Agent","Shipping Agent Code","Shipping Agent Service Code",FALSE);

        IsHandled := FALSE;
        OnValidateNoOnBeforeUpdateDates(Rec,xRec,SalesHeader,CurrFieldNo,IsHandled,TempSalesLine);
        IF NOT IsHandled THEN
          UpdateDates;

        OnAfterAssignHeaderValues(Rec,SalesHeader);

        CASE Type OF
          Type::" ":
            CopyFromStandardText;
          Type::"G/L Account":
            CopyFromGLAccount;
          Type::Item:
            CopyFromItem;
          Type::Resource:
            CopyFromResource;
          Type::"Fixed Asset":
            CopyFromFixedAsset;
          Type::"Charge (Item)":
            CopyFromItemCharge;
        END;

        OnAfterAssignFieldsForNo(Rec,xRec,SalesHeader);

        IF Type <> Type::" " THEN BEGIN
          PostingSetupMgt.CheckGenPostingSetupSalesAccount("Gen. Bus. Posting Group","Gen. Prod. Posting Group");
          PostingSetupMgt.CheckGenPostingSetupCOGSAccount("Gen. Bus. Posting Group","Gen. Prod. Posting Group");
          PostingSetupMgt.CheckVATPostingSetupSalesAccount("VAT Bus. Posting Group","VAT Prod. Posting Group");
        END;

        IF HasTypeToFillMandatoryFields AND (Type <> Type::"Fixed Asset") THEN
          VALIDATE("VAT Prod. Posting Group");

        UpdatePrepmtSetupFields;

        IF HasTypeToFillMandatoryFields THEN BEGIN
          VALIDATE("Unit of Measure Code");
          IF Quantity <> 0 THEN BEGIN
            InitOutstanding;
            IF IsCreditDocType THEN
              InitQtyToReceive
            ELSE
              InitQtyToShip;
            InitQtyToAsm;
            UpdateWithWarehouseShip;
          END;
          UpdateUnitPrice(FIELDNO("No."));
        END;

        OnValidateNoOnAfterUpdateUnitPrice(Rec,xRec);

        CreateDim(
          DimMgt.TypeToTableID3(Type),"No.",
          DATABASE::Job,"Job No.",
          DATABASE::"Responsibility Center","Responsibility Center");

        IF "No." <> xRec."No." THEN BEGIN
          IF Type = Type::Item THEN
            IF (Quantity <> 0) AND ItemExists(xRec."No.") THEN BEGIN
              ReserveSalesLine.VerifyChange(Rec,xRec);
              WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
            END;
          GetDefaultBin;
          AutoAsmToOrder;
          DeleteItemChargeAssgnt("Document Type","Document No.","Line No.");
          IF Type = Type::"Charge (Item)" THEN
            DeleteChargeChargeAssgnt("Document Type","Document No.","Line No.");
        END;

        UpdateItemCrossRef;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //The code has been merged but contained errors that could prevent import
        //and the code has been put in comments. Use Shift+Ctrl+O to Uncomment
        //{>>>>>>>} ORIGINAL
        //{=======} MODIFIED
        //GetSalesSetup;
        //
        //"No." := FindOrCreateRecordByNo("No.");
        //
        //{=======} TARGET
        //{ //commented by pranavi
        //rpoQty:=0;
        //PrdOrder.RESET;
        //PrdOrder.SETFILTER(PrdOrder."Sales Order No.","Document No.");
        //PrdOrder.SETFILTER(PrdOrder."Sales Order Line No.",'%1',"Line No.");
        //PrdOrder.SETFILTER(PrdOrder."Schedule Line No.",'%1',0);
        //IF PrdOrder.FINDSET THEN
        //REPEAT
        //  rpoQty:=rpoQty+PrdOrder.Quantity;
        //UNTIL PrdOrder.NEXT=0;
        //
        //IF rpoQty>0 THEN
        //BEGIN
        //
        //  IF xRec."No."<>'' THEN
        //  BEGIN
        //
        //   IF xRec."No."<>"No." THEN
        //     ERROR('Already '+FORMAT(rpoQty)+' Production Orders was released for the item '+xRec."No."+' in line no: '+FORMAT("Line No.")+'. Please contact Production Manager for further actions');
        //
        //
        //  IF rpoQty>Quantity THEN
        //    ERROR('Already Production Orders was released for the quantity  '+FORMAT(rpoQty)+' on line No: '+FORMAT("Line No.")+'. Present Quantity '+FORMAT(Quantity)+'. Please contact Production Manager for further actions');
        //  END;
        //END;
        //
        //}
        //{SalesHeader.RESET;
        //SalesHeader.SETRANGE(SalesHeader."No.","Document No.");
        //IF SalesHeader.FINDFIRST THEN
        //BEGIN
        //   "Bill-to Customer No.":= SalesHeader."Bill-to Customer No.";
        //END;
        //}
        //{<<<<<<<}
        //TestJobPlanningLine;
        //TestStatusOpen;
        //testOrderVerification('You do not have permision to Change the Item when Order Verified');
        //CheckItemAvailable(FIELDNO("No."));
        //
        //IF (xRec."No." <> "No.") AND (Quantity <> 0) THEN BEGIN
        //  TESTFIELD("Qty. to Asm. to Order (Base)",0);
        //  CALCFIELDS("Reserved Qty. (Base)");
        //  TESTFIELD("Reserved Qty. (Base)",0);
        //  IF Type = Type::Item THEN
        //    WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        //  OnValidateNoOnAfterVerifyChange(Rec,xRec);
        //END;
        //
        //TESTFIELD("Qty. Shipped Not Invoiced",0);
        //TESTFIELD("Quantity Shipped",0);
        //TESTFIELD("Shipment No.",'');
        //
        //TESTFIELD("Prepmt. Amt. Inv.",0);
        //
        //TESTFIELD("Return Qty. Rcd. Not Invd.",0);
        //TESTFIELD("Return Qty. Received",0);
        //TESTFIELD("Return Receipt No.",'');
        //
        //IF "No." = '' THEN
        //  ATOLink.DeleteAsmFromSalesLine(Rec);
        //CheckAssocPurchOrder(FIELDCAPTION("No."));
        //AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);
        //
        //OnValidateNoOnBeforeInitRec(Rec,xRec,CurrFieldNo);
        //TempSalesLine := Rec;
        //INIT;
        //IF xRec."Line Amount" <> 0 THEN
        //  "Recalculate Invoice Disc." := TRUE;
        //Type := TempSalesLine.Type;
        //"No." := TempSalesLine."No.";
        //OnValidateNoOnCopyFromTempSalesLine(Rec,TempSalesLine);
        //IF "No." = '' THEN
        //  EXIT;
        //
        //IF HasTypeToFillMandatoryFields THEN
        //  Quantity := TempSalesLine.Quantity;
        //
        //"System-Created Entry" := TempSalesLine."System-Created Entry";
        //GetSalesHeader;
        //InitHeaderDefaults(SalesHeader);
        //OnValidateNoOnAfterInitHeaderDefaults(SalesHeader,TempSalesLine);
        //
        //CALCFIELDS("Substitution Available");
        //
        //"Promised Delivery Date" := SalesHeader."Promised Delivery Date";
        //"Requested Delivery Date" := SalesHeader."Requested Delivery Date";
        //"Shipment Date" :=
        //  CalendarMgmt.CalcDateBOC(
        //    '',SalesHeader."Shipment Date",CalChange."Source Type"::Location,"Location Code",'',
        //    CalChange."Source Type"::"Shipping Agent","Shipping Agent Code","Shipping Agent Service Code",FALSE);
        //
        //IsHandled := FALSE;
        //OnValidateNoOnBeforeUpdateDates(Rec,xRec,SalesHeader,CurrFieldNo,IsHandled,TempSalesLine);
        //IF NOT IsHandled THEN
        //  UpdateDates;
        //
        //OnAfterAssignHeaderValues(Rec,SalesHeader);
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
        //      Item.TESTFIELD(Blocked,FALSE);
        //      Item.TESTFIELD("Gen. Prod. Posting Group");
        //      IF Item.Type = Item.Type::Inventory THEN BEGIN
        //        Item.TESTFIELD("Inventory Posting Group");
        //        "Posting Group" := Item."Inventory Posting Group";
        //      END;
        //      Description := Item.Description;
        //      "Description 2" := Item."Description 2";
        //      GetUnitCost;
        //      "Allow Invoice Disc." := Item."Allow Invoice Disc.";
        //      "Units per Parcel" := Item."Units per Parcel";
        //      "Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group";
        //      "VAT Prod. Posting Group" := Item."VAT Prod. Posting Group";
        //      "Tax Group Code" := Item."Tax Group Code";
        //      "Item Category Code" := Item."Item Category Code";
        //      "Product Group Code" := Item."Product Group Code";
        //      Nonstock := Item."Created From Nonstock Item";
        //      "Profit %" := Item."Profit %";
        //      "Allow Item Charge Assignment" := TRUE;
        //      PrepaymentMgt.SetSalesPrepaymentPct(Rec,SalesHeader."Posting Date");
        //      "Excise Prod. Posting Group" := Item."Excise Prod. Posting Group";
        //      "Excise Accounting Type" := Item."Excise Accounting Type";
        //      "Capital Item" := Item."Capital Item";
        //      "Assessable Value" := Item."Assessable Value";
        //      IF "Free Supply" THEN
        //        "Line Discount %" := 100;
        //
        //      IF SalesHeader."Language Code" <> '' THEN
        //        GetItemTranslation;
        //      IF Item.Reserve = Item.Reserve::Optional THEN
        //        Reserve := SalesHeader.Reserve
        //      ELSE
        //        Reserve := Item.Reserve;
        //      "Unit of Measure Code" := Item."Sales Unit of Measure";
        //      UpdateGSTPlaceOfSupply(Item."HSN/SAC Code",Item."GST Group Code",Item.Exempted);
        //      VALIDATE("Price Inclusive of Tax",Item."Price Inclusive of Tax");
        //      InitDeferralCode;
        //    END;
        //{=======} MODIFIED
        //    CopyFromItem;
        //{=======} TARGET
        //    BEGIN
        //      GetItem;
        //      Item.TESTFIELD(Blocked,FALSE);
        //      IF Item."Item Status"=Item."Item Status"::"In-Active" THEN   //added by pranavi on 03-06-2015 not to allow in-active items in sales lines
        //        ERROR('Item is IN-Activated! You cannot select this Item!');
        //      Item.TESTFIELD("Gen. Prod. Posting Group");
        //      IF Item.Type = Item.Type::Inventory THEN BEGIN
        //        Item.TESTFIELD("Inventory Posting Group");
        //        "Posting Group" := Item."Inventory Posting Group";
        //      END;
        //   //   Description := Item.Description; // commented by sujani in order to not to reset sales people updated item details
        //   //   "Description 2" := Item."Description 2"; // commented by sujani in order to not to reset sales people updated item details
        //      GetUnitCost;
        //      "Allow Invoice Disc." := Item."Allow Invoice Disc.";
        //      //"Units per Parcel" := Item."Units per Parcel"; // commented by sujani in order to not to reset sales people updated item details
        //      "Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group";
        //      "VAT Prod. Posting Group" := Item."VAT Prod. Posting Group";
        //      "Tax Group Code" := Item."Tax Group Code";
        //      "Item Category Code" := Item."Item Category Code";
        //      "Product Group Code" := Item."Product Group Code";
        //      Nonstock := Item."Created From Nonstock Item";
        //      "Profit %" := Item."Profit %";
        //      "Allow Item Charge Assignment" := TRUE;
        //      PrepaymentMgt.SetSalesPrepaymentPct(Rec,SalesHeader."Posting Date");
        //      "Excise Prod. Posting Group" := Item."Excise Prod. Posting Group";
        //      "Excise Accounting Type" := Item."Excise Accounting Type";
        //      "Capital Item" := Item."Capital Item";
        //      "Assessable Value" := Item."Assessable Value";
        //      IF "Free Supply" THEN
        //        "Line Discount %" := 100;
        //
        //      IF SalesHeader."Language Code" <> '' THEN
        //        GetItemTranslation;
        //      IF Item.Reserve = Item.Reserve::Optional THEN
        //        Reserve := SalesHeader.Reserve
        //      ELSE
        //        Reserve := Item.Reserve;
        //      "Unit of Measure Code" := Item."Sales Unit of Measure";
        //      UpdateGSTPlaceOfSupply(Item."HSN/SAC Code",Item."GST Group Code",Item.Exempted);
        //      VALIDATE("Price Inclusive of Tax",Item."Price Inclusive of Tax");
        //      InitDeferralCode;
        //      //B2B
        //      "Production BOM No." := Item."Production BOM No.";
        //      ProductionBOMHeader.SETRANGE("No.","Production BOM No.");
        //      IF ProductionBOMHeader.FIND('-') THEN
        //         "Production Bom Version No." := VersionMgt.GetBOMVersion(ProductionBOMHeader."No.",WORKDATE,TRUE);
        //      "Spec ID" := Item."Spec ID";
        //      "QC Enabled" := Item."QC Enabled";
        //      //B2B
        //      //Added by Pranavi on 05-Dec-2015 for updating schedule item no if item is changed in sales line
        //      Schedule.RESET;
        //      Schedule.SETRANGE("Document Type",Schedule."Document Type" :: Order);
        //      Schedule.SETRANGE("Document No.","Document No.");
        //      Schedule.SETRANGE("Document Line No.","Line No.");
        //      Schedule.SETRANGE(Schedule."Line No.","Line No.");
        //      Schedule.SETRANGE(Schedule."No.",xRec."No.");
        //      IF Schedule.FINDFIRST THEN
        //      BEGIN
        //        Schedule."No.":="No.";
        //        Schedule.VALIDATE("No.");
        //        Schedule.MODIFY;
        //      END;
        //      //End by Pranavi on 05-Dec-2015
        //    END;
        //{<<<<<<<}
        //  Type::Resource:
        //    CopyFromResource;
        //  Type::"Fixed Asset":
        //    CopyFromFixedAsset;
        //  Type::"Charge (Item)":
        //    CopyFromItemCharge;
        //END;
        //
        //OnAfterAssignFieldsForNo(Rec,xRec,SalesHeader);
        //
        //IF Type <> Type::" " THEN BEGIN
        //  PostingSetupMgt.CheckGenPostingSetupSalesAccount("Gen. Bus. Posting Group","Gen. Prod. Posting Group");
        //  PostingSetupMgt.CheckGenPostingSetupCOGSAccount("Gen. Bus. Posting Group","Gen. Prod. Posting Group");
        //  PostingSetupMgt.CheckVATPostingSetupSalesAccount("VAT Bus. Posting Group","VAT Prod. Posting Group");
        //END;
        //
        //IF HasTypeToFillMandatoryFields AND (Type <> Type::"Fixed Asset") THEN
        //  VALIDATE("VAT Prod. Posting Group");
        //
        //UpdatePrepmtSetupFields;
        //
        //IF HasTypeToFillMandatoryFields THEN BEGIN
        //  VALIDATE("Unit of Measure Code");
        //  IF Quantity <> 0 THEN BEGIN
        //    InitOutstanding;
        //    IF IsCreditDocType THEN
        //      InitQtyToReceive
        //    ELSE
        //      InitQtyToShip;
        //    InitQtyToAsm;
        //    UpdateWithWarehouseShip;
        //  END;
        //  UpdateUnitPrice(FIELDNO("No."));
        //END;
        //
        //OnValidateNoOnAfterUpdateUnitPrice(Rec,xRec);
        //
        //CreateDim(
        //  DimMgt.TypeToTableID3(Type),"No.",
        //  DATABASE::Job,"Job No.",
        //  DATABASE::"Responsibility Center","Responsibility Center");
        //
        //IF "No." <> xRec."No." THEN BEGIN
        //  IF Type = Type::Item THEN
        //    IF (Quantity <> 0) AND ItemExists(xRec."No.") THEN BEGIN
        //      ReserveSalesLine.VerifyChange(Rec,xRec);
        //      WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        //    END;
        //  GetDefaultBin;
        //  AutoAsmToOrder;
        //  DeleteItemChargeAssgnt("Document Type","Document No.","Line No.");
        //  IF Type = Type::"Charge (Item)" THEN
        //    DeleteChargeChargeAssgnt("Document Type","Document No.","Line No.");
        //END;
        //{>>>>>>>} ORIGINAL
        //{=======} MODIFIED
        //
        //{=======} TARGET
        //
        ////B2B-KNR
        //SalesHeaderRDSO.SETRANGE("Document Type","Document Type");
        //SalesHeaderRDSO.SETRANGE("No.","Document No.");
        //IF SalesHeaderRDSO.FIND('-') THEN BEGIN
        //  //"RDSO Unit Charges" :=
        //  "RDSO Charges Paid By" := SalesHeaderRDSO."RDSO Charges Paid By";
        //  "RDSO Inspection Required" := SalesHeaderRDSO."RDSO Inspection Required";
        //  "RDSO Inspection By" := SalesHeaderRDSO."RDSO Inspection By";
        //
        //  ////ANIL13/10/09
        // "Line Amount(LOA)":="Unitcost(LOA)"*Quantity;
        //// "OutStanding(LOA)":="Unitcost(LOA)"*"Qty. to Invoice (Base)";
        // "OutStanding(LOA)":="Unitcost(LOA)"*(Quantity-"Quantity Invoiced");
        // ////ANIL13/10/09
        //
        //  //"RDSO Charges"
        //END;
        ////B2B-KNR
        //{<<<<<<<}
        //UpdateItemCrossRef;
        //{>>>>>>>} ORIGINAL
        //GetStandardDeduction(SalesHeader);
        //"Assessable Value" := Item."Assessable Value" * "Qty. per Unit of Measure" ;
        //"Invoice Type" := SalesHeader."Invoice Type";
        //{=======} MODIFIED
        //{=======} TARGET
        //GetStandardDeduction(SalesHeader);
        //"Assessable Value" := Item."Assessable Value" * "Qty. per Unit of Measure" ;
        //"Invoice Type" := SalesHeader."Invoice Type";
        //InitOutstandingAmount;
        //{IF STRLEN("HSN/SAC Code") < 6
        //THEN
        //ERROR('HSN/SAC Code length should be 6 for Item %1',"No.");
        //}
        //{<<<<<<<}
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""No."(Field 6)". Please convert manually.



        //Unsupported feature: CodeModification on ""Location Code"(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;
        CheckAssocPurchOrder(FIELDCAPTION("Location Code"));
        IF "Location Code" <> '' THEN
          IF IsNonInventoriableItem THEN BEGIN
            GetItem(Item);
            Item.TESTFIELD(Type,Item.Type::Inventory);
          END;
        IF xRec."Location Code" <> "Location Code" THEN BEGIN
          IF NOT FullQtyIsForAsmToOrder THEN BEGIN
            CALCFIELDS("Reserved Qty. (Base)");
            TESTFIELD("Reserved Qty. (Base)","Qty. to Asm. to Order (Base)");
          END;
          TESTFIELD("Qty. Shipped Not Invoiced",0);
          TESTFIELD("Shipment No.",'');
          TESTFIELD("Return Qty. Rcd. Not Invd.",0);
          TESTFIELD("Return Receipt No.",'');
        END;

        GetSalesHeader;
        IsHandled := FALSE;
        OnValidateLocationCodeOnBeforeSetShipmentDate(Rec,IsHandled);
        IF NOT IsHandled THEN
          "Shipment Date" :=
            CalendarMgmt.CalcDateBOC(
              '',SalesHeader."Shipment Date",CalChange."Source Type"::Location,"Location Code",
              '',CalChange."Source Type"::"Shipping Agent","Shipping Agent Code","Shipping Agent Service Code",
              FALSE);

        CheckItemAvailable(FIELDNO("Location Code"));

        IF NOT "Drop Shipment" THEN BEGIN
          IF "Location Code" = '' THEN BEGIN
            IF InvtSetup.GET THEN
              "Outbound Whse. Handling Time" := InvtSetup."Outbound Whse. Handling Time";
          END ELSE
            IF Location.GET("Location Code") THEN
              "Outbound Whse. Handling Time" := Location."Outbound Whse. Handling Time";
        END ELSE
          EVALUATE("Outbound Whse. Handling Time",'<0D>');

        IF "Location Code" <> xRec."Location Code" THEN BEGIN
          InitItemAppl(TRUE);
          GetDefaultBin;
          InitQtyToAsm;
          AutoAsmToOrder;
          IF Quantity <> 0 THEN BEGIN
            IF NOT "Drop Shipment" THEN
              UpdateWithWarehouseShip;
            IF NOT FullReservedQtyIsForAsmToOrder THEN
              ReserveSalesLine.VerifyChange(Rec,xRec);
            WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
          END;
          IF IsInventoriableItem THEN
            PostingSetupMgt.CheckInvtPostingSetupInventoryAccount("Location Code","Posting Group");
        END;

        UpdateDates;

        IF (Type = Type::Item) AND ("No." <> '') THEN
          GetUnitCost;

        CheckWMS;

        IF "Document Type" = "Document Type"::"Return Order" THEN
          ValidateReturnReasonCode(FIELDNO("Location Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;
        CheckAssocPurchOrder(FieldCaption("Location Code"));
        if "Location Code" <> '' then
          if IsNonInventoriableItem then begin
            GetItem(Item);
            Item.TestField(Type,Item.Type::Inventory);
          end;
        if xRec."Location Code" <> "Location Code" then begin
          if not FullQtyIsForAsmToOrder then begin
            CalcFields("Reserved Qty. (Base)");
            TestField("Reserved Qty. (Base)","Qty. to Asm. to Order (Base)");
          end;
          TestField("Qty. Shipped Not Invoiced",0);
          TestField("Shipment No.",'');
          TestField("Return Qty. Rcd. Not Invd.",0);
          TestField("Return Receipt No.",'');
        end;

        GetSalesHeader;
        IsHandled := false;
        OnValidateLocationCodeOnBeforeSetShipmentDate(Rec,IsHandled);
        if not IsHandled then
        #24..27
              false);

        CheckItemAvailable(FieldNo("Location Code"));

        if not "Drop Shipment" then begin
          if "Location Code" = '' then begin
            if InvtSetup.Get then
              "Outbound Whse. Handling Time" := InvtSetup."Outbound Whse. Handling Time";
          end else
            if Location.Get("Location Code") then
              "Outbound Whse. Handling Time" := Location."Outbound Whse. Handling Time";
        end else
          Evaluate("Outbound Whse. Handling Time",'<0D>');

        if "Location Code" <> xRec."Location Code" then begin
          InitItemAppl(true);
        #44..46
          if Quantity <> 0 then begin
            if not "Drop Shipment" then
              UpdateWithWarehouseShip;
            if not FullReservedQtyIsForAsmToOrder then
              ReserveSalesLine.VerifyChange(Rec,xRec);
            WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
          end;
          if IsInventoriableItem then
            PostingSetupMgt.CheckInvtPostingSetupInventoryAccount("Location Code","Posting Group");
        end;
        #57..59
        if (Type = Type::Item) and ("No." <> '') then
        #61..64
        if "Document Type" = "Document Type"::"Return Order" then
          ValidateReturnReasonCode(FieldNo("Location Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipment Date"(Field 10).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        IF CurrFieldNo <> 0 THEN
          AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);

        IF "Shipment Date" <> 0D THEN BEGIN
          IF CurrFieldNo IN [
                             FIELDNO("Planned Shipment Date"),
                             FIELDNO("Planned Delivery Date"),
                             FIELDNO("Shipment Date"),
                             FIELDNO("Shipping Time"),
                             FIELDNO("Outbound Whse. Handling Time"),
                             FIELDNO("Requested Delivery Date")]
          THEN
            CheckItemAvailable(FIELDNO("Shipment Date"));

          IF ("Shipment Date" < WORKDATE) AND HasTypeToFillMandatoryFields THEN
            IF NOT (GetHideValidationDialog OR HasBeenShown) AND GUIALLOWED THEN BEGIN
              MESSAGE(
                Text014,
                FIELDCAPTION("Shipment Date"),"Shipment Date",WORKDATE);
              HasBeenShown := TRUE;
            END;
        END;

        AutoAsmToOrder;
        IF (xRec."Shipment Date" <> "Shipment Date") AND
           (Quantity <> 0) AND
           NOT StatusCheckSuspended
        THEN
          CheckDateConflict.SalesLineCheck(Rec,CurrFieldNo <> 0);

        IF NOT PlannedShipmentDateCalculated THEN
          "Planned Shipment Date" := CalcPlannedShptDate(FIELDNO("Shipment Date"));
        IF NOT PlannedDeliveryDateCalculated THEN
          "Planned Delivery Date" := CalcPlannedDeliveryDate(FIELDNO("Shipment Date"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //The code has been merged but contained errors that could prevent import
        //and the code has been put in comments. Use Shift+Ctrl+O to Uncomment
        //TestStatusOpen;
        //WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        //IF CurrFieldNo <> 0 THEN
        //  AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);
        //
        //IF "Shipment Date" <> 0D THEN BEGIN
        //  IF CurrFieldNo IN [
        //                     FIELDNO("Planned Shipment Date"),
        //                     FIELDNO("Planned Delivery Date"),
        //                     FIELDNO("Shipment Date"),
        //                     FIELDNO("Shipping Time"),
        //                     FIELDNO("Outbound Whse. Handling Time"),
        //                     FIELDNO("Requested Delivery Date")]
        //  THEN
        //    CheckItemAvailable(FIELDNO("Shipment Date"));
        //
        //{>>>>>>>} ORIGINAL
        //  IF ("Shipment Date" < WORKDATE) AND (Type <> Type::" ") THEN
        //    IF NOT (HideValidationDialog OR HasBeenShown) AND GUIALLOWED THEN BEGIN
        //      MESSAGE(
        //        Text014,
        //        FIELDCAPTION("Shipment Date"),"Shipment Date",WORKDATE);
        //{=======} MODIFIED
        //  IF ("Shipment Date" < WORKDATE) AND HasTypeToFillMandatoryFields THEN
        //    IF NOT (GetHideValidationDialog OR HasBeenShown) AND GUIALLOWED THEN BEGIN
        //      MESSAGE(
        //        Text014,
        //        FIELDCAPTION("Shipment Date"),"Shipment Date",WORKDATE);
        //{=======} TARGET
        //  IF ("Shipment Date" < WORKDATE) AND (Type <> Type::" ") THEN
        //    IF NOT (HideValidationDialog OR HasBeenShown) AND GUIALLOWED THEN BEGIN
        ////      MESSAGE(
        // //       Text014,
        //   //     FIELDCAPTION("Shipment Date"),"Shipment Date",WORKDATE);
        //{<<<<<<<}
        //      HasBeenShown := TRUE;
        //    END;
        //END;
        //
        //AutoAsmToOrder;
        //IF (xRec."Shipment Date" <> "Shipment Date") AND
        //   (Quantity <> 0) AND
        //   NOT StatusCheckSuspended
        //THEN
        //  CheckDateConflict.SalesLineCheck(Rec,CurrFieldNo <> 0);
        //
        //IF NOT PlannedShipmentDateCalculated THEN
        //  "Planned Shipment Date" := CalcPlannedShptDate(FIELDNO("Shipment Date"));
        //IF NOT PlannedDeliveryDateCalculated THEN
        //  "Planned Delivery Date" := CalcPlannedDeliveryDate(FIELDNO("Shipment Date"));
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
              IF STRLEN(Description) <= MAXSTRLEN(Item."No.") THEN
                DescriptionIsNo := Item.GET(Description)
              ELSE
                DescriptionIsNo := FALSE;

              IF NOT DescriptionIsNo THEN BEGIN
                Item.SETRANGE(Blocked,FALSE);
                Item.SETRANGE("Sales Blocked",FALSE);

                // looking for an item with exact description
                Item.SETRANGE(Description,Description);
                IF Item.FINDFIRST THEN BEGIN
                  VALIDATE("No.",Item."No.");
                  EXIT;
                END;

                // looking for an item with similar description
                Item.SETFILTER(Description,'''@' + CONVERTSTR(Description,'''','?') + '''');
                IF Item.FINDFIRST THEN BEGIN
                  VALIDATE("No.",Item."No.");
                  EXIT;
                END;
              END;

              GetSalesSetup;
              DefaultCreate := ("No." = '') AND SalesSetup."Create Item from Description";
              IF Item.TryGetItemNoOpenCard(
                   ReturnValue,Description,DefaultCreate,NOT GetHideValidationDialog,TRUE)
              THEN
                CASE ReturnValue OF
                  '':
                    BEGIN
                      LookupRequested := TRUE;
                      Description := xRec.Description;
                    END;
                  "No.":
                    Description := xRec.Description;
                  ELSE BEGIN
                    CurrFieldNo := FIELDNO("No.");
                    VALIDATE("No.",COPYSTR(ReturnValue,1,MAXSTRLEN(Item."No.")));
                  END;
                END;
            END;
          ELSE BEGIN
            IsHandled := FALSE;
            OnBeforeFindNoByDescription(Rec,xRec,CurrFieldNo,IsHandled);
            IF NOT IsHandled THEN BEGIN
              ReturnValue := FindRecordMgt.FindNoByDescription(Type,Description,TRUE);
              IF ReturnValue <> '' THEN BEGIN
                CurrFieldNo := FIELDNO("No.");
                VALIDATE("No.",COPYSTR(ReturnValue,1,MAXSTRLEN("No.")));
              END;
            END;
          END;
        END;

        IsHandled := FALSE;
        OnValidateDescriptionOnBeforeCannotFindDescrError(Rec,xRec,IsHandled);
        IF NOT IsHandled THEN
          IF ("No." = '') AND GUIALLOWED AND ApplicationAreaMgmtFacade.IsFoundationEnabled THEN
            IF "Document Type" IN
               ["Document Type"::Order,"Document Type"::Invoice,"Document Type"::Quote,"Document Type"::"Credit Memo"]
            THEN
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
              if StrLen(Description) <= MaxStrLen(Item."No.") then
                DescriptionIsNo := Item.Get(Description)
              else
                DescriptionIsNo := false;

              if not DescriptionIsNo then begin
                Item.SetRange(Blocked,false);
                Item.SetRange("Sales Blocked",false);

                // looking for an item with exact description
                Item.SetRange(Description,Description);
                if Item.FindFirst then begin
                  Validate("No.",Item."No.");
                  exit;
                end;

                // looking for an item with similar description
                Item.SetFilter(Description,'''@' + ConvertStr(Description,'''','?') + '''');
                if Item.FindFirst then begin
                  Validate("No.",Item."No.");
                  exit;
                end;
              end;

              GetSalesSetup;
              DefaultCreate := ("No." = '') and SalesSetup."Create Item from Description";
              if Item.TryGetItemNoOpenCard(
                   ReturnValue,Description,DefaultCreate,not GetHideValidationDialog,true)
              then
                case ReturnValue of
                  '':
                    begin
                      LookupRequested := true;
                      Description := xRec.Description;
                    end;
                  "No.":
                    Description := xRec.Description;
                  else begin
                    CurrFieldNo := FieldNo("No.");
                    Validate("No.",CopyStr(ReturnValue,1,MaxStrLen(Item."No.")));
                  end;
                end;
            end;
          else begin
            IsHandled := false;
            OnBeforeFindNoByDescription(Rec,xRec,CurrFieldNo,IsHandled);
            if not IsHandled then begin
              ReturnValue := FindRecordMgt.FindNoByDescription(Type,Description,true);
              if ReturnValue <> '' then begin
                CurrFieldNo := FieldNo("No.");
                Validate("No.",CopyStr(ReturnValue,1,MaxStrLen("No.")));
              end;
            end;
          end;
        end;

        IsHandled := false;
        OnValidateDescriptionOnBeforeCannotFindDescrError(Rec,xRec,IsHandled);
        if not IsHandled then
          if ("No." = '') and GuiAllowed and ApplicationAreaMgmtFacade.IsFoundationEnabled then
            if "Document Type" in
               ["Document Type"::Order,"Document Type"::Invoice,"Document Type"::Quote,"Document Type"::"Credit Memo"]
            then
              Error(CannotFindDescErr,Type,Description);
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;

        CheckAssocPurchOrder(FIELDCAPTION(Quantity));

        IF "Shipment No." <> '' THEN
          CheckShipmentRelation
        ELSE
          IF "Return Receipt No." <> '' THEN
            CheckRetRcptRelation;

        "Quantity (Base)" := CalcBaseQty(Quantity);

        OnValidateQuantityOnAfterCalcBaseQty(Rec,xRec);

        IF IsCreditDocType THEN BEGIN
          IF (Quantity * "Return Qty. Received" < 0) OR
             ((ABS(Quantity) < ABS("Return Qty. Received")) AND ("Return Receipt No." = ''))
          THEN
            FIELDERROR(Quantity,STRSUBSTNO(Text003,FIELDCAPTION("Return Qty. Received")));
          IF ("Quantity (Base)" * "Return Qty. Received (Base)" < 0) OR
             ((ABS("Quantity (Base)") < ABS("Return Qty. Received (Base)")) AND ("Return Receipt No." = ''))
          THEN
            FIELDERROR("Quantity (Base)",STRSUBSTNO(Text003,FIELDCAPTION("Return Qty. Received (Base)")));
        END ELSE BEGIN
          IF (Quantity * "Quantity Shipped" < 0) OR
             ((ABS(Quantity) < ABS("Quantity Shipped")) AND ("Shipment No." = ''))
          THEN
            FIELDERROR(Quantity,STRSUBSTNO(Text003,FIELDCAPTION("Quantity Shipped")));
          IF ("Quantity (Base)" * "Qty. Shipped (Base)" < 0) OR
             ((ABS("Quantity (Base)") < ABS("Qty. Shipped (Base)")) AND ("Shipment No." = ''))
          THEN
            FIELDERROR("Quantity (Base)",STRSUBSTNO(Text003,FIELDCAPTION("Qty. Shipped (Base)")));
        END;

        IF (Type = Type::"Charge (Item)") AND (CurrFieldNo <> 0) THEN BEGIN
          IF (Quantity = 0) AND ("Qty. to Assign" <> 0) THEN
            FIELDERROR("Qty. to Assign",STRSUBSTNO(Text009,FIELDCAPTION(Quantity),Quantity));
          IF (Quantity * "Qty. Assigned" < 0) OR (ABS(Quantity) < ABS("Qty. Assigned")) THEN
            FIELDERROR(Quantity,STRSUBSTNO(Text003,FIELDCAPTION("Qty. Assigned")));
        END;

        AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);
        IF (xRec.Quantity <> Quantity) OR (xRec."Quantity (Base)" <> "Quantity (Base)") THEN BEGIN
          InitOutstanding;
          IF IsCreditDocType THEN
            InitQtyToReceive
          ELSE
            InitQtyToShip;
          InitQtyToAsm;
          SetDefaultQuantity;
        END;

        CheckItemAvailable(FIELDNO(Quantity));

        IF (Quantity * xRec.Quantity < 0) OR (Quantity = 0) THEN
          InitItemAppl(FALSE);

        IF Type = Type::Item THEN BEGIN
          UpdateUnitPrice(FIELDNO(Quantity));
          IF (xRec.Quantity <> Quantity) OR (xRec."Quantity (Base)" <> "Quantity (Base)") THEN BEGIN
            OnBeforeVerifyReservedQty(Rec,xRec,FIELDNO(Quantity));
            ReserveSalesLine.VerifyQuantity(Rec,xRec);
            IF NOT "Drop Shipment" THEN
              UpdateWithWarehouseShip;
            WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
            IF ("Quantity (Base)" * xRec."Quantity (Base)" <= 0) AND ("No." <> '') THEN BEGIN
              GetItem(Item);
              OnValidateQuantityOnBeforeGetUnitCost(Rec,Item);
              IF (Item."Costing Method" = Item."Costing Method"::Standard) AND NOT IsShipment THEN
                GetUnitCost;
            END;
          END;
          VALIDATE("Qty. to Assemble to Order");
          IF (Quantity = "Quantity Invoiced") AND (CurrFieldNo <> 0) THEN
            CheckItemChargeAssgnt;
          CheckApplFromItemLedgEntry(ItemLedgEntry);
        END ELSE
          VALIDATE("Line Discount %");

        IF (xRec.Quantity <> Quantity) AND (Quantity = 0) AND
           ((Amount <> 0) OR ("Amount Including VAT" <> 0) OR ("VAT Base Amount" <> 0))
        THEN BEGIN
          Amount := 0;
          "Amount Including VAT" := 0;
          "VAT Base Amount" := 0;
        END;

        UpdatePrePaymentAmounts;

        CheckWMS;

        UpdatePlanned;
        IF "Document Type" = "Document Type"::"Return Order" THEN
          ValidateReturnReasonCode(FIELDNO(Quantity));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {   //commented by pranavi
        rpoQty:=0;
        PrdOrder.RESET;
        PrdOrder.SETFILTER(PrdOrder."Sales Order No.","Document No.");
        PrdOrder.SETFILTER(PrdOrder."Sales Order Line No.",'%1',"Line No.");
        PrdOrder.SETFILTER(PrdOrder."Schedule Line No.",'%1',0);
        IF PrdOrder.FINDSET THEN
        REPEAT
          rpoQty:=rpoQty+PrdOrder.Quantity;
        UNTIL PrdOrder.NEXT=0;

        IF rpoQty>0 THEN
        BEGIN
        uom.RESET;
        uom.SETFILTER(uom."Item No.","No.");
        uom.SETFILTER(uom.Code,"Unit of Measure");
        IF uom.FINDFIRST THEN
          rpoQty:=rpoQty DIV uom."Qty. per Unit of Measure";
        //  IF xRec."No."<>"No." THEN
        //    ERROR('Already Production Orders was released for the item '+xRec."No."+' in line no: '+FORMAT("Line No.")+'. Please contact Production Manager for further actions');
          IF xRec.Quantity>0 THEN
            IF rpoQty>Quantity THEN
            BEGIN
            IF NOT (UPPERCASE(USERID) IN ['EFFTRONICS\ANILKUMAR','EFFTRONICS\PRANAVI']) THEN
              ERROR('Already Production Orders was released for the quantity  '+FORMAT(rpoQty)+' on line No: '+FORMAT("Line No.")+'. Please contact Production Manager for further actions');
            END;
        END;
        }


        TestJobPlanningLine;
        TestStatusOpen;
        testOrderVerification('You do not have permision to Change the Item Qty when Order Verified');
        CheckAssocPurchOrder(FieldCaption(Quantity));

        if "Shipment No." <> '' then
          CheckShipmentRelation
        else
          if "Return Receipt No." <> '' then
        #10..15
        if IsCreditDocType then begin
          if (Quantity * "Return Qty. Received" < 0) or
             ((Abs(Quantity) < Abs("Return Qty. Received")) and ("Return Receipt No." = ''))
          then
            FieldError(Quantity,StrSubstNo(Text003,FieldCaption("Return Qty. Received")));
          if ("Quantity (Base)" * "Return Qty. Received (Base)" < 0) or
             ((Abs("Quantity (Base)") < Abs("Return Qty. Received (Base)")) and ("Return Receipt No." = ''))
          then
            FieldError("Quantity (Base)",StrSubstNo(Text003,FieldCaption("Return Qty. Received (Base)")));
        end else begin
          if (Quantity * "Quantity Shipped" < 0) or
             ((Abs(Quantity) < Abs("Quantity Shipped")) and ("Shipment No." = ''))
          then
            FieldError(Quantity,StrSubstNo(Text003,FieldCaption("Quantity Shipped")));
          if ("Quantity (Base)" * "Qty. Shipped (Base)" < 0) or
             ((Abs("Quantity (Base)") < Abs("Qty. Shipped (Base)")) and ("Shipment No." = ''))
          then
            FieldError("Quantity (Base)",StrSubstNo(Text003,FieldCaption("Qty. Shipped (Base)")));
        end;

        if (Type = Type::"Charge (Item)") and (CurrFieldNo <> 0) then begin
          if (Quantity = 0) and ("Qty. to Assign" <> 0) then
            FieldError("Qty. to Assign",StrSubstNo(Text009,FieldCaption(Quantity),Quantity));
          if (Quantity * "Qty. Assigned" < 0) or (Abs(Quantity) < Abs("Qty. Assigned")) then
            FieldError(Quantity,StrSubstNo(Text003,FieldCaption("Qty. Assigned")));
        end;

        AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);
        if (xRec.Quantity <> Quantity) or (xRec."Quantity (Base)" <> "Quantity (Base)") then begin
          InitOutstanding;
          if IsCreditDocType then
            InitQtyToReceive
          else
        #49..51
        end;
                                                                        // B2B ESPL commented  because here  no need of stock verification at the time of releasing a sale order/quote
        //CheckItemAvailable(FIELDNO(Quantity));
        if (Quantity * xRec.Quantity < 0) or (Quantity = 0) then
          InitItemAppl(false);

        if Type = Type::Item then begin
          UpdateUnitPrice(FieldNo(Quantity));
          if (xRec.Quantity <> Quantity) or (xRec."Quantity (Base)" <> "Quantity (Base)") then begin
            OnBeforeVerifyReservedQty(Rec,xRec,FieldNo(Quantity));
            ReserveSalesLine.VerifyQuantity(Rec,xRec);
            if not "Drop Shipment" then
              UpdateWithWarehouseShip;
            WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
            if ("Quantity (Base)" * xRec."Quantity (Base)" <= 0) and ("No." <> '') then begin
              GetItem(Item);
              OnValidateQuantityOnBeforeGetUnitCost(Rec,Item);
              if (Item."Costing Method" = Item."Costing Method"::Standard) and not IsShipment then
                GetUnitCost;
            end;
          end;
          Validate("Qty. to Assemble to Order");
          if (Quantity = "Quantity Invoiced") and (CurrFieldNo <> 0) then
            CheckItemChargeAssgnt;
          CheckApplFromItemLedgEntry(ItemLedgEntry);
        end else
          Validate("Line Discount %");

        if (xRec.Quantity <> Quantity) and (Quantity = 0) and
           ((Amount <> 0) or ("Amount Including VAT" <> 0) or ("VAT Base Amount" <> 0))
        then begin
        #84..86
        end;
        #88..92

        CalcFields("Reserved Qty. (Base)");
        Validate("Reserved Qty. (Base)");
        //Added by Pranavi on 05-Dec-2015 for updating Main item qty in schedule if qty is changed in line
        Schedule.Reset;
        Schedule.SetRange("Document Type",Schedule."Document Type" :: Order);
        Schedule.SetRange("Document No.","Document No.");
        Schedule.SetRange("Document Line No.","Line No.");
        Schedule.SetRange(Schedule."Line No.","Line No.");
        Schedule.SetRange(Schedule."No.","No.");
        if Schedule.FindFirst then
        begin
          Schedule."Qty. Per":=1;
          Schedule.Quantity := Quantity;
          Schedule.Validate(Quantity);
          Schedule.Modify;
        end;
        //End by Pranavi on 05-Dec-2015
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Outstanding Quantity"(Field 16)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
        // "OutStanding(LOA)":="Unitcost(LOA)"*(Quantity-"Quantity Invoiced");
        //"Outstanding Qty. (Base)" := "Outstanding Quantity";
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
        IF ("Qty. to Invoice" * Quantity < 0) OR
           (ABS("Qty. to Invoice") > ABS(MaxQtyToInvoice))
        THEN
          ERROR(
            Text005,
            MaxQtyToInvoice);
        IF ("Qty. to Invoice (Base)" * "Quantity (Base)" < 0) OR
           (ABS("Qty. to Invoice (Base)") > ABS(MaxQtyToInvoiceBase))
        THEN
          ERROR(
            Text006,
            MaxQtyToInvoiceBase);
        "VAT Difference" := 0;
        CalcInvDiscToInvoice;
        CalcPrepaymentToDeduct;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Qty. to Invoice" = MaxQtyToInvoice then
          InitQtyToInvoice
        else
          "Qty. to Invoice (Base)" := CalcBaseQty("Qty. to Invoice");
        if ("Qty. to Invoice" * Quantity < 0) or
           (Abs("Qty. to Invoice") > Abs(MaxQtyToInvoice))
        then
          Error(
            Text005,
            MaxQtyToInvoice);
        if ("Qty. to Invoice (Base)" * "Quantity (Base)" < 0) or
           (Abs("Qty. to Invoice (Base)") > Abs(MaxQtyToInvoiceBase))
        then
          Error(
        #15..19
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Ship"(Field 18).OnValidate". Please convert manually.

        //trigger  to Ship"(Field 18)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetLocation("Location Code");
        IF (CurrFieldNo <> 0) AND
           (Type = Type::Item) AND
           (NOT "Drop Shipment")
        THEN BEGIN
          IF Location."Require Shipment" AND
             ("Qty. to Ship" <> 0)
          THEN
            CheckWarehouse;
          WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        END;
        OnValidateQtyToShipOnAfterCheck(Rec,CurrFieldNo);

        IF "Qty. to Ship" = "Outstanding Quantity" THEN
          InitQtyToShip
        ELSE BEGIN
          "Qty. to Ship (Base)" := CalcBaseQty("Qty. to Ship");
          CheckServItemCreation;
          InitQtyToInvoice;
        END;

        IsHandled := FALSE;
        OnValidateQtyToShipAfterInitQty(Rec,xRec,CurrFieldNo,IsHandled);
        IF NOT IsHandled THEN BEGIN
          IF ((("Qty. to Ship" < 0) XOR (Quantity < 0)) AND (Quantity <> 0) AND ("Qty. to Ship" <> 0)) OR
             (ABS("Qty. to Ship") > ABS("Outstanding Quantity")) OR
             (((Quantity < 0) XOR ("Outstanding Quantity" < 0)) AND (Quantity <> 0) AND ("Outstanding Quantity" <> 0))
          THEN
            ERROR(Text007,"Outstanding Quantity");
          IF ((("Qty. to Ship (Base)" < 0) XOR ("Quantity (Base)" < 0)) AND ("Qty. to Ship (Base)" <> 0) AND ("Quantity (Base)" <> 0)) OR
             (ABS("Qty. to Ship (Base)") > ABS("Outstanding Qty. (Base)")) OR
             ((("Quantity (Base)" < 0) XOR ("Outstanding Qty. (Base)" < 0)) AND ("Quantity (Base)" <> 0) AND ("Outstanding Qty. (Base)" <> 0))
          THEN
            ERROR(Text008,"Outstanding Qty. (Base)");
        END;

        IF (CurrFieldNo <> 0) AND (Type = Type::Item) AND ("Qty. to Ship" < 0) THEN
          CheckApplFromItemLedgEntry(ItemLedgEntry);

        ATOLink.UpdateQtyToAsmFromSalesLine(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetLocation("Location Code");
        if (CurrFieldNo <> 0) and
           (Type = Type::Item) and
           (not "Drop Shipment")
        then begin
          if Location."Require Shipment" and
             ("Qty. to Ship" <> 0)
          then
            CheckWarehouse;
          WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        end;
        OnValidateQtyToShipOnAfterCheck(Rec,CurrFieldNo);

        if "Qty. to Ship" = "Outstanding Quantity" then
          InitQtyToShip
        else begin
        #17..19
        end;

        IsHandled := false;
        OnValidateQtyToShipAfterInitQty(Rec,xRec,CurrFieldNo,IsHandled);
        if not IsHandled then begin
          if ((("Qty. to Ship" < 0) xor (Quantity < 0)) and (Quantity <> 0) and ("Qty. to Ship" <> 0)) or
             (Abs("Qty. to Ship") > Abs("Outstanding Quantity")) or
             (((Quantity < 0) xor ("Outstanding Quantity" < 0)) and (Quantity <> 0) and ("Outstanding Quantity" <> 0))
          then
            Error(Text007,"Outstanding Quantity");
          if ((("Qty. to Ship (Base)" < 0) xor ("Quantity (Base)" < 0)) and ("Qty. to Ship (Base)" <> 0) and ("Quantity (Base)" <> 0)) or
             (Abs("Qty. to Ship (Base)") > Abs("Outstanding Qty. (Base)")) or
             ((("Quantity (Base)" < 0) xor ("Outstanding Qty. (Base)" < 0)) and ("Quantity (Base)" <> 0) and ("Outstanding Qty. (Base)" <> 0))
          then
            Error(Text008,"Outstanding Qty. (Base)");
        end;

        if (CurrFieldNo <> 0) and (Type = Type::Item) and ("Qty. to Ship" < 0) then
        #38..40

         "OutStanding(LOA)":="Unitcost(LOA)"*(Quantity-"Quantity Invoiced");   //anil
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Price"(Field 22).OnValidate". Please convert manually.

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
        Validate("Line Discount %");
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""Unit Price"(Field 22)". Please convert manually.



        //Unsupported feature: CodeModification on ""Unit Cost (LCY)"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (CurrFieldNo = FIELDNO("Unit Cost (LCY)")) AND
           ("Unit Cost (LCY)" <> xRec."Unit Cost (LCY)")
        THEN
          CheckAssocPurchOrder(FIELDCAPTION("Unit Cost (LCY)"));

        IF (CurrFieldNo = FIELDNO("Unit Cost (LCY)")) AND
           (Type = Type::Item) AND ("No." <> '') AND ("Quantity (Base)" <> 0)
        THEN BEGIN
          TestJobPlanningLine;
          GetItem(Item);
          IF (Item."Costing Method" = Item."Costing Method"::Standard) AND NOT IsShipment THEN BEGIN
            IF IsCreditDocType THEN
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

        GetSalesHeader;
        IF SalesHeader."Currency Code" <> '' THEN BEGIN
          Currency.TESTFIELD("Unit-Amount Rounding Precision");
          "Unit Cost" :=
            ROUND(
              CurrExchRate.ExchangeAmtLCYToFCY(
                GetDate,SalesHeader."Currency Code",
                "Unit Cost (LCY)",SalesHeader."Currency Factor"),
              Currency."Unit-Amount Rounding Precision")
        END ELSE
          "Unit Cost" := "Unit Cost (LCY)";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
          GetSalesHeader;
          SalesHeader.TestField(SalesHeader.Status,SalesHeader.Status::Open);
        if (CurrFieldNo = FieldNo("Unit Cost (LCY)")) and
           ("Unit Cost (LCY)" <> xRec."Unit Cost (LCY)")
        then
          CheckAssocPurchOrder(FieldCaption("Unit Cost (LCY)"));

        if (CurrFieldNo = FieldNo("Unit Cost (LCY)")) and
           (Type = Type::Item) and ("No." <> '') and ("Quantity (Base)" <> 0)
        then begin
          TestJobPlanningLine;
          GetItem(Item);
          if (Item."Costing Method" = Item."Costing Method"::Standard) and not IsShipment then begin
            if IsCreditDocType then
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

        GetSalesHeader;
        if SalesHeader."Currency Code" <> '' then begin
          Currency.TestField("Unit-Amount Rounding Precision");
          "Unit Cost" :=
            Round(
        #29..32
        end else
          "Unit Cost" := "Unit Cost (LCY)";
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Discount %"(Field 27).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateLineDiscountPercent(TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ValidateLineDiscountPercent(true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Line Discount Amount"(Field 28).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetSalesHeader;
        "Line Discount Amount" := ROUND("Line Discount Amount",Currency."Amount Rounding Precision");
        TestJobPlanningLine;
        TestStatusOpen;
        TESTFIELD(Quantity);
        IF xRec."Line Discount Amount" <> "Line Discount Amount" THEN
          UpdateLineDiscPct;
        "Inv. Discount Amount" := 0;
        "Inv. Disc. Amount to Invoice" := 0;
        UpdateAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetSalesHeader;
        "Line Discount Amount" := Round("Line Discount Amount",Currency."Amount Rounding Precision");
        TestJobPlanningLine;
        TestStatusOpen;
        TestField(Quantity);
        if xRec."Line Discount Amount" <> "Line Discount Amount" then
        #7..10
        */
        //end;


        //Unsupported feature: CodeModification on "Amount(Field 29).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        Amount := ROUND(Amount,Currency."Amount Rounding Precision");
        CASE "VAT Calculation Type" OF
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            BEGIN
              "VAT Base Amount" :=
                ROUND(Amount * (1 - SalesHeader."VAT Base Discount %" / 100),Currency."Amount Rounding Precision");
              "Amount Including VAT" :=
                ROUND(Amount + "VAT Base Amount" * "VAT %" / 100,Currency."Amount Rounding Precision");
            END;
          "VAT Calculation Type"::"Full VAT":
            IF Amount <> 0 THEN
              FIELDERROR(Amount,
                STRSUBSTNO(
                  Text009,FIELDCAPTION("VAT Calculation Type"),
                  "VAT Calculation Type"));
          "VAT Calculation Type"::"Sales Tax":
            BEGIN
              SalesHeader.TESTFIELD("VAT Base Discount %",0);
              "VAT Base Amount" := ROUND(Amount,Currency."Amount Rounding Precision");
              "Amount Including VAT" :=
                Amount +
                SalesTaxCalculate.CalculateTax(
                  "Tax Area Code","Tax Group Code","Tax Liable",SalesHeader."Posting Date",
                  "VAT Base Amount","Quantity (Base)",SalesHeader."Currency Factor");
              OnAfterSalesTaxCalculate(Rec,SalesHeader,Currency);
              UpdateVATPercent("VAT Base Amount","Amount Including VAT" - "VAT Base Amount");
              "Amount Including VAT" := ROUND("Amount Including VAT",Currency."Amount Rounding Precision");
            END;
        END;

        InitOutstandingAmount;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Amount := Round(Amount,Currency."Amount Rounding Precision");
        case "VAT Calculation Type" of
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            begin
              "VAT Base Amount" :=
                Round(Amount * (1 - SalesHeader."VAT Base Discount %" / 100),Currency."Amount Rounding Precision");
              "Amount Including VAT" :=
                Round(Amount + "VAT Base Amount" * "VAT %" / 100,Currency."Amount Rounding Precision");
            end;
          "VAT Calculation Type"::"Full VAT":
            if Amount <> 0 then
              FieldError(Amount,
                StrSubstNo(
                  Text009,FieldCaption("VAT Calculation Type"),
                  "VAT Calculation Type"));
          "VAT Calculation Type"::"Sales Tax":
            begin
              SalesHeader.TestField("VAT Base Discount %",0);
              "VAT Base Amount" := Round(Amount,Currency."Amount Rounding Precision");
        #21..27
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
        "Amount Including VAT" := ROUND("Amount Including VAT",Currency."Amount Rounding Precision");
        CASE "VAT Calculation Type" OF
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            BEGIN
              Amount :=
                ROUND(
                  "Amount Including VAT" /
                  (1 + (1 - SalesHeader."VAT Base Discount %" / 100) * "VAT %" / 100),
                  Currency."Amount Rounding Precision");
              "VAT Base Amount" :=
                ROUND(Amount * (1 - SalesHeader."VAT Base Discount %" / 100),Currency."Amount Rounding Precision");
            END;
          "VAT Calculation Type"::"Full VAT":
            BEGIN
              Amount := 0;
              "VAT Base Amount" := 0;
            END;
          "VAT Calculation Type"::"Sales Tax":
            BEGIN
              SalesHeader.TESTFIELD("VAT Base Discount %",0);
              Amount :=
                SalesTaxCalculate.ReverseCalculateTax(
                  "Tax Area Code","Tax Group Code","Tax Liable",SalesHeader."Posting Date",
                  "Amount Including VAT","Quantity (Base)",SalesHeader."Currency Factor");
              OnAfterSalesTaxCalculateReverse(Rec,SalesHeader,Currency);
              UpdateVATPercent(Amount,"Amount Including VAT" - Amount);
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
        "Amount Including VAT" := Round("Amount Including VAT",Currency."Amount Rounding Precision");
        case "VAT Calculation Type" of
          "VAT Calculation Type"::"Normal VAT",
          "VAT Calculation Type"::"Reverse Charge VAT":
            begin
              Amount :=
                Round(
        #8..11
                Round(Amount * (1 - SalesHeader."VAT Base Discount %" / 100),Currency."Amount Rounding Precision");
            end;
          "VAT Calculation Type"::"Full VAT":
            begin
              Amount := 0;
              "VAT Base Amount" := 0;
            end;
          "VAT Calculation Type"::"Sales Tax":
            begin
              SalesHeader.TestField("VAT Base Discount %",0);
        #22..27
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
        IF ("VAT Calculation Type" = "VAT Calculation Type"::"Full VAT") AND "Allow Invoice Disc." THEN
          ERROR(CannotAllowInvDiscountErr,FIELDCAPTION("Allow Invoice Disc."));

        IF "Allow Invoice Disc." <> xRec."Allow Invoice Disc." THEN BEGIN
          IF NOT "Allow Invoice Disc." THEN BEGIN
            "Inv. Discount Amount" := 0;
            "Inv. Disc. Amount to Invoice" := 0;
          END;
          UpdateAmounts;
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
          AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);

          TESTFIELD(Type,Type::Item);
          TESTFIELD(Quantity);
          IF IsCreditDocType THEN BEGIN
            IF Quantity > 0 THEN
              FIELDERROR(Quantity,Text030);
          END ELSE BEGIN
            IF Quantity < 0 THEN
              FIELDERROR(Quantity,Text029);
          END;
          ItemLedgEntry.GET("Appl.-to Item Entry");
          ItemLedgEntry.TESTFIELD(Positive,TRUE);
          IF ItemLedgEntry.TrackingExists THEN
            ERROR(Text040,ItemTrackingLines.CAPTION,FIELDCAPTION("Appl.-to Item Entry"));
          IF ABS("Qty. to Ship (Base)") > ItemLedgEntry.Quantity THEN
            ERROR(ShippingMoreUnitsThanReceivedErr,ItemLedgEntry.Quantity,ItemLedgEntry."Document No.");

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
          AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);

          TestField(Type,Type::Item);
          TestField(Quantity);
          if IsCreditDocType then begin
            if Quantity > 0 then
              FieldError(Quantity,Text030);
          end else begin
            if Quantity < 0 then
              FieldError(Quantity,Text029);
          end;
          ItemLedgEntry.Get("Appl.-to Item Entry");
          ItemLedgEntry.TestField(Positive,true);
          if ItemLedgEntry.TrackingExists then
            Error(Text040,ItemTrackingLines.Caption,FieldCaption("Appl.-to Item Entry"));
          if Abs("Qty. to Ship (Base)") > ItemLedgEntry.Quantity then
            Error(ShippingMoreUnitsThanReceivedErr,ItemLedgEntry.Quantity,ItemLedgEntry."Document No.");

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
        GetSalesHeader;
        Currency2.InitRoundingPrecision;
        IF SalesHeader."Currency Code" <> '' THEN
          "Outstanding Amount (LCY)" :=
            ROUND(
              CurrExchRate.ExchangeAmtFCYToLCY(
                GetDate,"Currency Code",
                "Outstanding Amount",SalesHeader."Currency Factor"),
              Currency2."Amount Rounding Precision")
        ELSE
          "Outstanding Amount (LCY)" :=
            ROUND("Outstanding Amount",Currency2."Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetSalesHeader;
        Currency2.InitRoundingPrecision;
        if SalesHeader."Currency Code" <> '' then
          "Outstanding Amount (LCY)" :=
            Round(
        #6..9
        else
          "Outstanding Amount (LCY)" :=
            Round("Outstanding Amount",Currency2."Amount Rounding Precision");
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""Qty. Shipped Not Invoiced"(Field 58)". Please convert manually.



        //Unsupported feature: CodeModification on ""Shipped Not Invoiced"(Field 59).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetSalesHeader;
        Currency2.InitRoundingPrecision;
        IF SalesHeader."Currency Code" <> '' THEN
          "Shipped Not Invoiced (LCY)" :=
            ROUND(
              CurrExchRate.ExchangeAmtFCYToLCY(
                GetDate,"Currency Code",
                "Shipped Not Invoiced",SalesHeader."Currency Factor"),
              Currency2."Amount Rounding Precision")
        ELSE
          "Shipped Not Invoiced (LCY)" :=
            ROUND("Shipped Not Invoiced",Currency2."Amount Rounding Precision");

        CalculateNotShippedInvExlcVatLCY;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetSalesHeader;
        Currency2.InitRoundingPrecision;
        if SalesHeader."Currency Code" <> '' then
          "Shipped Not Invoiced (LCY)" :=
            Round(
        #6..9
        else
          "Shipped Not Invoiced (LCY)" :=
            Round("Shipped Not Invoiced",Currency2."Amount Rounding Precision");

        CalculateNotShippedInvExlcVatLCY;
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Quantity Shipped"(Field 60)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
        // PRANAVI
        Schedule.Reset;
        Schedule.SetRange(Schedule."Document No.","Document No.");
        Schedule.SetRange(Schedule."Document Line No.","Line No.");
        if Schedule.FindSet then
        repeat
          if (Schedule."Document Line No." = Schedule."Line No.") and (Schedule."No." = "No.") then
          begin
            Schedule."Qty. Shipped" := "Quantity Shipped";
            Schedule."Qty.Shipped (Base)" := "Quantity Shipped";
            Schedule."Outstanding Qty." := Quantity-"Quantity Shipped";
            Schedule."Outstanding Qty.(Base)" := Quantity-"Quantity Shipped";
            Schedule.Modify;
          end;
        until Schedule.Next=0;
        // PRANAVI END
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Quantity Invoiced"(Field 61)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
        //Added by pranavi on 13-07-2015
        "OutStanding(LOA)":="Unitcost(LOA)"*(Quantity-"Quantity Invoiced");
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""Inv. Discount Amount"(Field 69)". Please convert manually.



        //Unsupported feature: CodeModification on ""Purchase Order No."(Field 71).OnValidate". Please convert manually.

        //trigger "(Field 71)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec."Purchase Order No." <> "Purchase Order No.") AND (Quantity <> 0) THEN BEGIN
          ReserveSalesLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec."Purchase Order No." <> "Purchase Order No.") and (Quantity <> 0) then begin
          ReserveSalesLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Purch. Order Line No."(Field 72).OnValidate". Please convert manually.

        //trigger  Order Line No();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec."Purch. Order Line No." <> "Purch. Order Line No.") AND (Quantity <> 0) THEN BEGIN
          ReserveSalesLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec."Purch. Order Line No." <> "Purch. Order Line No.") and (Quantity <> 0) then begin
          ReserveSalesLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Drop Shipment"(Field 73).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Document Type","Document Type"::Order);
        TESTFIELD(Type,Type::Item);
        TESTFIELD("Quantity Shipped",0);
        TESTFIELD("Job No.",'');
        TESTFIELD("Qty. to Asm. to Order (Base)",0);

        IF "Drop Shipment" THEN
          TESTFIELD("Special Order",FALSE);

        CheckAssocPurchOrder(FIELDCAPTION("Drop Shipment"));

        IF "Special Order" THEN
          Reserve := Reserve::Never
        ELSE
          IF "Drop Shipment" THEN BEGIN
            Reserve := Reserve::Never;
            EVALUATE("Outbound Whse. Handling Time",'<0D>');
            EVALUATE("Shipping Time",'<0D>');
            UpdateDates;
            "Bin Code" := '';
          END ELSE
            SetReserveWithoutPurchasingCode;

        CheckItemAvailable(FIELDNO("Drop Shipment"));

        AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);
        IF (xRec."Drop Shipment" <> "Drop Shipment") AND (Quantity <> 0) THEN BEGIN
          IF NOT "Drop Shipment" THEN BEGIN
            InitQtyToAsm;
            AutoAsmToOrder;
            UpdateWithWarehouseShip
          END ELSE
            InitQtyToShip;
          WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
          IF NOT FullReservedQtyIsForAsmToOrder THEN
            ReserveSalesLine.VerifyChange(Rec,xRec);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Document Type","Document Type"::Order);
        TestField(Type,Type::Item);
        TestField("Quantity Shipped",0);
        TestField("Job No.",'');
        TestField("Qty. to Asm. to Order (Base)",0);

        if "Drop Shipment" then
          TestField("Special Order",false);

        CheckAssocPurchOrder(FieldCaption("Drop Shipment"));

        if "Special Order" then
          Reserve := Reserve::Never
        else
          if "Drop Shipment" then begin
            Reserve := Reserve::Never;
            Evaluate("Outbound Whse. Handling Time",'<0D>');
            Evaluate("Shipping Time",'<0D>');
            UpdateDates;
            "Bin Code" := '';
          end else
            SetReserveWithoutPurchasingCode;

        CheckItemAvailable(FieldNo("Drop Shipment"));

        AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);
        if (xRec."Drop Shipment" <> "Drop Shipment") and (Quantity <> 0) then begin
          if not "Drop Shipment" then begin
        #29..31
          end else
            InitQtyToShip;
          WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
          if not FullReservedQtyIsForAsmToOrder then
            ReserveSalesLine.VerifyChange(Rec,xRec);
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
        TestJobPlanningLine;
        TestStatusOpen;
        IF xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" THEN
          IF GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") THEN
            VALIDATE("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestJobPlanningLine;
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
        "VAT Difference" := 0;

        GetSalesHeader;
        "VAT %" := VATPostingSetup."VAT %";
        "VAT Calculation Type" := VATPostingSetup."VAT Calculation Type";
        IF "VAT Calculation Type" = "VAT Calculation Type"::"Full VAT" THEN
          VALIDATE("Allow Invoice Disc.",FALSE);
        "VAT Identifier" := VATPostingSetup."VAT Identifier";
        "VAT Clause Code" := VATPostingSetup."VAT Clause Code";

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
                TESTFIELD("No.",VATPostingSetup.GetSalesAccount(FALSE));
              END;
          END;

        IF SalesHeader."Prices Including VAT" AND (Type IN [Type::Item,Type::Resource]) THEN
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
        if "Prepmt. Amt. Inv." <> 0 then
          Error(CannotChangeVATGroupWithPrepmInvErr);
        //VATPostingSetup.GET("VAT Prod. Posting Group","VAT Bus. Posting Group");
        #5..9
        if "VAT Calculation Type" = "VAT Calculation Type"::"Full VAT" then
          Validate("Allow Invoice Disc.",false);
        #12..14
        IsHandled := false;
        OnValidateVATProdPostingGroupOnBeforeCheckVATCalcType(Rec,VATPostingSetup,IsHandled);
        if not IsHandled then
          case "VAT Calculation Type" of
        #19..22
              begin
                TestField(Type,Type::"G/L Account");
                TestField("No.",VATPostingSetup.GetSalesAccount(false));
              end;
          end;

        if SalesHeader."Prices Including VAT" and (Type in [Type::Item,Type::Resource]) then
          Validate("Unit Price",
            Round(
        #32..34
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

        IF "Drop Shipment" OR "Special Order" THEN
          TESTFIELD(Reserve,Reserve::Never);
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

        if "Drop Shipment" or "Special Order" then
          TestField(Reserve,Reserve::Never);
        if xRec.Reserve = Reserve::Always then begin
          GetItem(Item);
          if Item.Reserve = Item.Reserve::Always then
            TestField(Reserve,Reserve::Always);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Blanket Order No."(Field 97).OnValidate". Please convert manually.

        //trigger "(Field 97)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Shipped",0);
        IF "Blanket Order No." = '' THEN
          "Blanket Order Line No." := 0
        ELSE
          VALIDATE("Blanket Order Line No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Shipped",0);
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
        TESTFIELD("Quantity Shipped",0);
        IF "Blanket Order Line No." <> 0 THEN BEGIN
          SalesLine2.GET("Document Type"::"Blanket Order","Blanket Order No.","Blanket Order Line No.");
          SalesLine2.TESTFIELD(Type,Type);
          SalesLine2.TESTFIELD("No.","No.");
          SalesLine2.TESTFIELD("Bill-to Customer No.","Bill-to Customer No.");
          SalesLine2.TESTFIELD("Sell-to Customer No.","Sell-to Customer No.");
          IF "Drop Shipment" THEN BEGIN
            SalesLine2.TESTFIELD("Variant Code","Variant Code");
            SalesLine2.TESTFIELD("Location Code","Location Code");
            SalesLine2.TESTFIELD("Unit of Measure Code","Unit of Measure Code");
          END ELSE BEGIN
            VALIDATE("Variant Code",SalesLine2."Variant Code");
            VALIDATE("Location Code",SalesLine2."Location Code");
            VALIDATE("Unit of Measure Code",SalesLine2."Unit of Measure Code");
          END;
          VALIDATE("Unit Price",SalesLine2."Unit Price");
          VALIDATE("Line Discount %",SalesLine2."Line Discount %");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Quantity Shipped",0);
        if "Blanket Order Line No." <> 0 then begin
          SalesLine2.Get("Document Type"::"Blanket Order","Blanket Order No.","Blanket Order Line No.");
          SalesLine2.TestField(Type,Type);
          SalesLine2.TestField("No.","No.");
          SalesLine2.TestField("Bill-to Customer No.","Bill-to Customer No.");
          SalesLine2.TestField("Sell-to Customer No.","Sell-to Customer No.");
          if "Drop Shipment" then begin
            SalesLine2.TestField("Variant Code","Variant Code");
            SalesLine2.TestField("Location Code","Location Code");
            SalesLine2.TestField("Unit of Measure Code","Unit of Measure Code");
          end else begin
            Validate("Variant Code",SalesLine2."Variant Code");
            Validate("Location Code",SalesLine2."Location Code");
            Validate("Unit of Measure Code",SalesLine2."Unit of Measure Code");
          end;
          Validate("Unit Price",SalesLine2."Unit Price");
          Validate("Line Discount %",SalesLine2."Line Discount %");
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
        GetSalesHeader;

        "Line Amount" := ROUND("Line Amount",Currency."Amount Rounding Precision");
        MaxLineAmount := ROUND(Quantity * "Unit Price",Currency."Amount Rounding Precision");

        IF "Line Amount" < 0 THEN
          IF "Line Amount" < MaxLineAmount THEN
            ERROR(LineAmountInvalidErr);

        IF "Line Amount" > 0 THEN
          IF "Line Amount" > MaxLineAmount THEN
            ERROR(LineAmountInvalidErr);

        VALIDATE("Line Discount Amount",MaxLineAmount - "Line Amount");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type);
        TestField(Quantity);
        TestField("Unit Price");
        GetSalesHeader;

        "Line Amount" := Round("Line Amount",Currency."Amount Rounding Precision");
        MaxLineAmount := Round(Quantity * "Unit Price",Currency."Amount Rounding Precision");

        if "Line Amount" < 0 then
          if "Line Amount" < MaxLineAmount then
            Error(LineAmountInvalidErr);

        if "Line Amount" > 0 then
          if "Line Amount" > MaxLineAmount then
            Error(LineAmountInvalidErr);

        Validate("Line Discount Amount",MaxLineAmount - "Line Amount");
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""Line Amount"(Field 103)". Please convert manually.



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
                ItemCrossReference.RESET;
                ItemCrossReference.SETCURRENTKEY("Cross-Reference Type","Cross-Reference Type No.");
                ItemCrossReference.SETFILTER(
                  "Cross-Reference Type",'%1|%2',
                  ItemCrossReference."Cross-Reference Type"::Customer,
                  ItemCrossReference."Cross-Reference Type"::" ");
                ItemCrossReference.SETFILTER("Cross-Reference Type No.",'%1|%2',"Sell-to Customer No.",'');
                IF PAGE.RUNMODAL(PAGE::"Cross Reference List",ItemCrossReference) = ACTION::LookupOK THEN
                  VALIDATE("IC Partner Reference",ItemCrossReference."Cross-Reference No.");
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
                ItemCrossReference.Reset;
                ItemCrossReference.SetCurrentKey("Cross-Reference Type","Cross-Reference Type No.");
                ItemCrossReference.SetFilter(
        #20..22
                ItemCrossReference.SetFilter("Cross-Reference Type No.",'%1|%2',"Sell-to Customer No.",'');
                if PAGE.RunModal(PAGE::"Cross Reference List",ItemCrossReference) = ACTION::LookupOK then
                  Validate("IC Partner Reference",ItemCrossReference."Cross-Reference No.");
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
          FIELDERROR("Prepmt. Line Amount",STRSUBSTNO(Text044,"Prepmt. Amt. Inv."));
        IF "Prepmt. Line Amount" > "Line Amount" THEN
          FIELDERROR("Prepmt. Line Amount",STRSUBSTNO(Text045,"Line Amount"));
        IF "System-Created Entry" AND NOT IsServiceCharge THEN
          FIELDERROR("Prepmt. Line Amount",STRSUBSTNO(Text045,0));
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
          FieldError("Prepmt. Line Amount",StrSubstNo(Text044,"Prepmt. Amt. Inv."));
        if "Prepmt. Line Amount" > "Line Amount" then
          FieldError("Prepmt. Line Amount",StrSubstNo(Text045,"Line Amount"));
        if "System-Created Entry" and not IsServiceCharge then
          FieldError("Prepmt. Line Amount",StrSubstNo(Text045,0));
        Validate("Prepayment %",Round("Prepmt. Line Amount" * 100 / "Line Amount",0.00001));
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""Prepmt. Line Amount"(Field 110)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Prepmt. Amt. Inv."(Field 111)". Please convert manually.



        //Unsupported feature: CodeModification on ""Prepmt Amt to Deduct"(Field 121).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Prepmt Amt to Deduct" > "Prepmt. Amt. Inv." - "Prepmt Amt Deducted" THEN
          FIELDERROR(
            "Prepmt Amt to Deduct",
            STRSUBSTNO(Text045,"Prepmt. Amt. Inv." - "Prepmt Amt Deducted"));

        IF "Prepmt Amt to Deduct" > "Qty. to Invoice" * "Unit Price" THEN
          FIELDERROR(
            "Prepmt Amt to Deduct",
            STRSUBSTNO(Text045,"Qty. to Invoice" * "Unit Price"));

        IF ("Prepmt. Amt. Inv." - "Prepmt Amt to Deduct" - "Prepmt Amt Deducted") >
           (Quantity - "Qty. to Invoice" - "Quantity Invoiced") * "Unit Price"
        THEN
          FIELDERROR(
            "Prepmt Amt to Deduct",
            STRSUBSTNO(Text044,
              "Prepmt. Amt. Inv." - "Prepmt Amt Deducted" - (Quantity - "Qty. to Invoice" - "Quantity Invoiced") * "Unit Price"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Prepmt Amt to Deduct" > "Prepmt. Amt. Inv." - "Prepmt Amt Deducted" then
          FieldError(
            "Prepmt Amt to Deduct",
            StrSubstNo(Text045,"Prepmt. Amt. Inv." - "Prepmt Amt Deducted"));

        if "Prepmt Amt to Deduct" > "Qty. to Invoice" * "Unit Price" then
          FieldError(
            "Prepmt Amt to Deduct",
            StrSubstNo(Text045,"Qty. to Invoice" * "Unit Price"));

        if ("Prepmt. Amt. Inv." - "Prepmt Amt to Deduct" - "Prepmt Amt Deducted") >
           (Quantity - "Qty. to Invoice" - "Quantity Invoiced") * "Unit Price"
        then
          FieldError(
            "Prepmt Amt to Deduct",
            StrSubstNo(Text044,
              "Prepmt. Amt. Inv." - "Prepmt Amt Deducted" - (Quantity - "Qty. to Invoice" - "Quantity Invoiced") * "Unit Price"));
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""Prepmt Amt to Deduct"(Field 121)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Prepmt Amt Deducted"(Field 122)". Please convert manually.



        //Unsupported feature: CodeModification on ""IC Partner Code"(Field 130).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "IC Partner Code" <> '' THEN BEGIN
          TESTFIELD(Type,Type::"G/L Account");
          GetSalesHeader;
          SalesHeader.TESTFIELD("Sell-to IC Partner Code",'');
          SalesHeader.TESTFIELD("Bill-to IC Partner Code",'');
          VALIDATE("IC Partner Ref. Type","IC Partner Ref. Type"::"G/L Account");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "IC Partner Code" <> '' then begin
          TestField(Type,Type::"G/L Account");
          GetSalesHeader;
          SalesHeader.TestField("Sell-to IC Partner Code",'');
          SalesHeader.TestField("Bill-to IC Partner Code",'');
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


        //Unsupported feature: CodeModification on ""Qty. to Assemble to Order"(Field 900).OnValidate". Please convert manually.

        //trigger  to Assemble to Order"(Field 900)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);

        "Qty. to Asm. to Order (Base)" := CalcBaseQty("Qty. to Assemble to Order");

        IF "Qty. to Asm. to Order (Base)" <> 0 THEN BEGIN
          TESTFIELD("Drop Shipment",FALSE);
          TESTFIELD("Special Order",FALSE);
          IF "Qty. to Asm. to Order (Base)" < 0 THEN
            FIELDERROR("Qty. to Assemble to Order",STRSUBSTNO(Text009,FIELDCAPTION("Quantity (Base)"),"Quantity (Base)"));
          TESTFIELD("Appl.-to Item Entry",0);

          CASE "Document Type" OF
            "Document Type"::"Blanket Order",
            "Document Type"::Quote:
              IF ("Quantity (Base)" = 0) OR ("Qty. to Asm. to Order (Base)" <= 0) OR SalesLineReserve.ReservEntryExist(Rec) THEN
                TESTFIELD("Qty. to Asm. to Order (Base)",0)
              ELSE
                IF "Quantity (Base)" <> "Qty. to Asm. to Order (Base)" THEN
                  FIELDERROR("Qty. to Assemble to Order",STRSUBSTNO(Text031,0,"Quantity (Base)"));
            "Document Type"::Order:
              ;
            ELSE
              TESTFIELD("Qty. to Asm. to Order (Base)",0);
          END;
        END;

        CheckItemAvailable(FIELDNO("Qty. to Assemble to Order"));
        IF NOT (CurrFieldNo IN [FIELDNO(Quantity),FIELDNO("Qty. to Assemble to Order")]) THEN
          GetDefaultBin;
        AutoAsmToOrder;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..4
        if "Qty. to Asm. to Order (Base)" <> 0 then begin
          TestField("Drop Shipment",false);
          TestField("Special Order",false);
          if "Qty. to Asm. to Order (Base)" < 0 then
            FieldError("Qty. to Assemble to Order",StrSubstNo(Text009,FieldCaption("Quantity (Base)"),"Quantity (Base)"));
          TestField("Appl.-to Item Entry",0);

          case "Document Type" of
            "Document Type"::"Blanket Order",
            "Document Type"::Quote:
              if ("Quantity (Base)" = 0) or ("Qty. to Asm. to Order (Base)" <= 0) or SalesLineReserve.ReservEntryExist(Rec) then
                TestField("Qty. to Asm. to Order (Base)",0)
              else
                if "Quantity (Base)" <> "Qty. to Asm. to Order (Base)" then
                  FieldError("Qty. to Assemble to Order",StrSubstNo(Text031,0,"Quantity (Base)"));
            "Document Type"::Order:
              ;
            else
              TestField("Qty. to Asm. to Order (Base)",0);
          end;
        end;

        CheckItemAvailable(FieldNo("Qty. to Assemble to Order"));
        if not (CurrFieldNo in [FieldNo(Quantity),FieldNo("Qty. to Assemble to Order")]) then
          GetDefaultBin;
        AutoAsmToOrder;
        */
        //end;


        //Unsupported feature: CodeModification on ""Qty. to Asm. to Order (Base)"(Field 901).OnValidate". Please convert manually.

        //trigger  to Asm();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Qty. to Assemble to Order","Qty. to Asm. to Order (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate("Qty. to Assemble to Order","Qty. to Asm. to Order (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Job Contract Entry No."(Field 1002).OnValidate". Please convert manually.

        //trigger "(Field 1002)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        JobPlanningLine.SETCURRENTKEY("Job Contract Entry No.");
        JobPlanningLine.SETRANGE("Job Contract Entry No.","Job Contract Entry No.");
        JobPlanningLine.FINDFIRST;
        CreateDim(
          DimMgt.TypeToTableID3(Type),"No.",
          DATABASE::Job,JobPlanningLine."Job No.",
          DATABASE::"Responsibility Center","Responsibility Center");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        JobPlanningLine.SetCurrentKey("Job Contract Entry No.");
        JobPlanningLine.SetRange("Job Contract Entry No.","Job Contract Entry No.");
        JobPlanningLine.FindFirst;
        #4..7
        */
        //end;


        //Unsupported feature: CodeModification on ""Deferral Code"(Field 1700).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetSalesHeader;
        OnGetDeferralPostDate(SalesHeader,DeferralPostDate,Rec);
        IF DeferralPostDate = 0D THEN
          DeferralPostDate := SalesHeader."Posting Date";

        DeferralUtilities.DeferralCodeOnValidate(
          "Deferral Code",DeferralUtilities.GetSalesDeferralDocType,'','',
          "Document Type","Document No.","Line No.",
          GetDeferralAmount,DeferralPostDate,
          Description,SalesHeader."Currency Code");

        IF "Document Type" = "Document Type"::"Return Order" THEN
          "Returns Deferral Start Date" :=
            DeferralUtilities.GetDeferralStartDate(DeferralUtilities.GetSalesDeferralDocType,
              "Document Type","Document No.","Line No.","Deferral Code",SalesHeader."Posting Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetSalesHeader;
        OnGetDeferralPostDate(SalesHeader,DeferralPostDate,Rec);
        if DeferralPostDate = 0D then
        #4..11
        if "Document Type" = "Document Type"::"Return Order" then
        #13..15
        */
        //end;


        //Unsupported feature: CodeModification on ""Returns Deferral Start Date"(Field 1702).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetSalesHeader;
        IF DeferralHeader.GET(DeferralUtilities.GetSalesDeferralDocType,'','',"Document Type","Document No.","Line No.") THEN
          DeferralUtilities.CreateDeferralSchedule("Deferral Code",DeferralUtilities.GetSalesDeferralDocType,'','',
            "Document Type","Document No.","Line No.",GetDeferralAmount,
            DeferralHeader."Calc. Method","Returns Deferral Start Date",
            DeferralHeader."No. of Periods",TRUE,
            DeferralHeader."Schedule Description",FALSE,
            SalesHeader."Currency Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetSalesHeader;
        if DeferralHeader.Get(DeferralUtilities.GetSalesDeferralDocType,'','',"Document Type","Document No.","Line No.") then
        #3..5
            DeferralHeader."No. of Periods",true,
            DeferralHeader."Schedule Description",false,
            SalesHeader."Currency Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 5402).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        IF "Variant Code" <> '' THEN
          TESTFIELD(Type,Type::Item);
        TestStatusOpen;
        CheckAssocPurchOrder(FIELDCAPTION("Variant Code"));

        IF xRec."Variant Code" <> "Variant Code" THEN BEGIN
          TESTFIELD("Qty. Shipped Not Invoiced",0);
          TESTFIELD("Shipment No.",'');

          TESTFIELD("Return Qty. Rcd. Not Invd.",0);
          TESTFIELD("Return Receipt No.",'');
          InitItemAppl(FALSE);
        END;

        OnValidateVariantCodeOnAfterChecks(Rec,xRec,CurrFieldNo);

        CheckItemAvailable(FIELDNO("Variant Code"));

        IF Type = Type::Item THEN BEGIN
          GetUnitCost;
          UpdateUnitPrice(FIELDNO("Variant Code"));
        END;

        GetDefaultBin;
        InitQtyToAsm;
        AutoAsmToOrder;
        IF (xRec."Variant Code" <> "Variant Code") AND (Quantity <> 0) THEN BEGIN
          IF NOT FullReservedQtyIsForAsmToOrder THEN
            ReserveSalesLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        END;

        UpdateItemCrossRef;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestJobPlanningLine;
        if "Variant Code" <> '' then
          TestField(Type,Type::Item);
        TestStatusOpen;
        CheckAssocPurchOrder(FieldCaption("Variant Code"));

        if xRec."Variant Code" <> "Variant Code" then begin
          TestField("Qty. Shipped Not Invoiced",0);
          TestField("Shipment No.",'');

          TestField("Return Qty. Rcd. Not Invd.",0);
          TestField("Return Receipt No.",'');
          InitItemAppl(false);
        end;
        #15..17
        CheckItemAvailable(FieldNo("Variant Code"));

        if Type = Type::Item then begin
          GetUnitCost;
          UpdateUnitPrice(FieldNo("Variant Code"));
        end;
        #24..27
        if (xRec."Variant Code" <> "Variant Code") and (Quantity <> 0) then begin
          if not FullReservedQtyIsForAsmToOrder then
            ReserveSalesLine.VerifyChange(Rec,xRec);
          WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        end;

        UpdateItemCrossRef;
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
          IF NOT IsInbound AND ("Quantity (Base)" <> 0) AND ("Qty. to Asm. to Order (Base)" = 0) THEN
            WMSManagement.FindBinContent("Location Code","Bin Code","No.","Variant Code",'')
          ELSE
            WMSManagement.FindBin("Location Code","Bin Code",'');
        END;

        IF "Drop Shipment" THEN
          CheckAssocPurchOrder(FIELDCAPTION("Bin Code"));

        TESTFIELD(Type,Type::Item);
        TESTFIELD("Location Code");

        IF (Type = Type::Item) AND ("Bin Code" <> '') THEN BEGIN
          TESTFIELD("Drop Shipment",FALSE);
          GetLocation("Location Code");
          Location.TESTFIELD("Bin Mandatory");
          CheckWarehouse;
        END;
        ATOLink.UpdateAsmBinCodeFromSalesLine(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bin Code" <> '' then begin
          if not IsInbound and ("Quantity (Base)" <> 0) and ("Qty. to Asm. to Order (Base)" = 0) then
            WMSManagement.FindBinContent("Location Code","Bin Code","No.","Variant Code",'')
          else
            WMSManagement.FindBin("Location Code","Bin Code",'');
        end;

        if "Drop Shipment" then
          CheckAssocPurchOrder(FieldCaption("Bin Code"));

        TestField(Type,Type::Item);
        TestField("Location Code");

        if (Type = Type::Item) and ("Bin Code" <> '') then begin
          TestField("Drop Shipment",false);
          GetLocation("Location Code");
          Location.TestField("Bin Mandatory");
          CheckWarehouse;
        end;
        ATOLink.UpdateAsmBinCodeFromSalesLine(Rec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 5407).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;
        TESTFIELD("Quantity Shipped",0);
        TESTFIELD("Qty. Shipped (Base)",0);
        #5..62
            "Qty. per Unit of Measure" := 1;
        END;
        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {TestJobPlanningLine;
        #2..65
        }
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity (Base)"(Field 5415).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE(Quantity,"Quantity (Base)");
        UpdateUnitPrice(FIELDNO("Quantity (Base)"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestJobPlanningLine;
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


        //Unsupported feature: CodeModification on ""Qty. to Ship (Base)"(Field 5418).OnValidate". Please convert manually.

        //trigger  to Ship (Base)"(Field 5418)();
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
        GetSalesHeader;
        "Sell-to Customer No." := SalesHeader."Sell-to Customer No.";
        ValidateCrossReferenceNo(ItemCrossReference,TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetSalesHeader;
        "Sell-to Customer No." := SalesHeader."Sell-to Customer No.";
        ValidateCrossReferenceNo(ItemCrossReference,true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Purchasing Code"(Field 5711).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TESTFIELD(Type,Type::Item);
        CheckAssocPurchOrder(FIELDCAPTION(Type));

        IF PurchasingCode.GET("Purchasing Code") THEN BEGIN
          "Drop Shipment" := PurchasingCode."Drop Shipment";
          "Special Order" := PurchasingCode."Special Order";
          IF "Drop Shipment" OR "Special Order" THEN BEGIN
            TESTFIELD("Qty. to Asm. to Order (Base)",0);
            CALCFIELDS("Reserved Qty. (Base)");
            TESTFIELD("Reserved Qty. (Base)",0);
            ReserveSalesLine.VerifyChange(Rec,xRec);

            IF (Quantity <> 0) AND (Quantity = "Quantity Shipped") THEN
              ERROR(SalesLineCompletelyShippedErr);
            Reserve := Reserve::Never;
            IF "Drop Shipment" THEN BEGIN
              EVALUATE("Outbound Whse. Handling Time",'<0D>');
              EVALUATE("Shipping Time",'<0D>');
              UpdateDates;
              "Bin Code" := '';
            END;
          END ELSE
            SetReserveWithoutPurchasingCode;
        END ELSE BEGIN
          "Drop Shipment" := FALSE;
          "Special Order" := FALSE;
          SetReserveWithoutPurchasingCode;
        END;

        IF ("Purchasing Code" <> xRec."Purchasing Code") AND
           (NOT "Drop Shipment") AND
           ("Drop Shipment" <> xRec."Drop Shipment")
        THEN BEGIN
          IF "Location Code" = '' THEN BEGIN
            IF InvtSetup.GET THEN
              "Outbound Whse. Handling Time" := InvtSetup."Outbound Whse. Handling Time";
          END ELSE
            IF Location.GET("Location Code") THEN
              "Outbound Whse. Handling Time" := Location."Outbound Whse. Handling Time";
          IF ShippingAgentServices.GET("Shipping Agent Code","Shipping Agent Service Code") THEN
            "Shipping Time" := ShippingAgentServices."Shipping Time"
          ELSE BEGIN
            GetSalesHeader;
            "Shipping Time" := SalesHeader."Shipping Time";
          END;
          UpdateDates;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        TestField(Type,Type::Item);
        CheckAssocPurchOrder(FieldCaption(Type));

        if PurchasingCode.Get("Purchasing Code") then begin
          "Drop Shipment" := PurchasingCode."Drop Shipment";
          "Special Order" := PurchasingCode."Special Order";
          if "Drop Shipment" or "Special Order" then begin
            TestField("Qty. to Asm. to Order (Base)",0);
            CalcFields("Reserved Qty. (Base)");
            TestField("Reserved Qty. (Base)",0);
            ReserveSalesLine.VerifyChange(Rec,xRec);

            if (Quantity <> 0) and (Quantity = "Quantity Shipped") then
              Error(SalesLineCompletelyShippedErr);
            Reserve := Reserve::Never;
            if "Drop Shipment" then begin
              Evaluate("Outbound Whse. Handling Time",'<0D>');
              Evaluate("Shipping Time",'<0D>');
              UpdateDates;
              "Bin Code" := '';
            end;
          end else
            SetReserveWithoutPurchasingCode;
        end else begin
          "Drop Shipment" := false;
          "Special Order" := false;
          SetReserveWithoutPurchasingCode;
        end;

        if ("Purchasing Code" <> xRec."Purchasing Code") and
           (not "Drop Shipment") and
           ("Drop Shipment" <> xRec."Drop Shipment")
        then begin
          if "Location Code" = '' then begin
            if InvtSetup.Get then
              "Outbound Whse. Handling Time" := InvtSetup."Outbound Whse. Handling Time";
          end else
            if Location.Get("Location Code") then
              "Outbound Whse. Handling Time" := Location."Outbound Whse. Handling Time";
          if ShippingAgentServices.Get("Shipping Agent Code","Shipping Agent Service Code") then
            "Shipping Time" := ShippingAgentServices."Shipping Time"
          else begin
            GetSalesHeader;
            "Shipping Time" := SalesHeader."Shipping Time";
          end;
          UpdateDates;
        end;
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
            Text028,
            FIELDCAPTION("Requested Delivery Date"),
            FIELDCAPTION("Promised Delivery Date"));

        IF "Requested Delivery Date" <> 0D THEN
          VALIDATE("Planned Delivery Date","Requested Delivery Date")
        ELSE BEGIN
          GetSalesHeader;
          VALIDATE("Shipment Date",SalesHeader."Shipment Date");
        END;
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
            Text028,
            FieldCaption("Requested Delivery Date"),
            FieldCaption("Promised Delivery Date"));

        if "Requested Delivery Date" <> 0D then
          Validate("Planned Delivery Date","Requested Delivery Date")
        else begin
          GetSalesHeader;
          Validate("Shipment Date",SalesHeader."Shipment Date");
        end;
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


        //Unsupported feature: CodeModification on ""Shipping Time"(Field 5792).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Drop Shipment" THEN
          DateFormularZero("Shipping Time",FIELDNO("Shipping Time"),FIELDCAPTION("Shipping Time"));
        UpdateDates;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Drop Shipment" then
          DateFormularZero("Shipping Time",FieldNo("Shipping Time"),FieldCaption("Shipping Time"));
        UpdateDates;
        */
        //end;


        //Unsupported feature: CodeModification on ""Outbound Whse. Handling Time"(Field 5793).OnValidate". Please convert manually.

        //trigger  Handling Time"(Field 5793)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Drop Shipment" THEN
          DateFormularZero("Outbound Whse. Handling Time",
            FIELDNO("Outbound Whse. Handling Time"),FIELDCAPTION("Outbound Whse. Handling Time"));
        UpdateDates;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Drop Shipment" then
          DateFormularZero("Outbound Whse. Handling Time",
            FieldNo("Outbound Whse. Handling Time"),FieldCaption("Outbound Whse. Handling Time"));
        UpdateDates;
        */
        //end;


        //Unsupported feature: CodeModification on ""Planned Delivery Date"(Field 5794).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Planned Delivery Date" <> 0D THEN BEGIN
          PlannedDeliveryDateCalculated := TRUE;

          VALIDATE("Planned Shipment Date",CalcPlannedDate);

          IF "Planned Shipment Date" > "Planned Delivery Date" THEN
            "Planned Delivery Date" := "Planned Shipment Date";
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Planned Delivery Date" <> 0D then begin
          PlannedDeliveryDateCalculated := true;

          Validate("Planned Shipment Date",CalcPlannedDate);

          if "Planned Shipment Date" > "Planned Delivery Date" then
            "Planned Delivery Date" := "Planned Shipment Date";
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Planned Shipment Date"(Field 5795).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Planned Shipment Date" <> 0D THEN BEGIN
          PlannedShipmentDateCalculated := TRUE;

          VALIDATE("Shipment Date",CalcShipmentDate);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Planned Shipment Date" <> 0D then begin
          PlannedShipmentDateCalculated := true;

          Validate("Shipment Date",CalcShipmentDate);
        end;
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
          EVALUATE("Shipping Time",'<>');

        IF "Drop Shipment" THEN BEGIN
          EVALUATE("Shipping Time",'<0D>');
          UpdateDates;
        END ELSE
          IF ShippingAgentServices.GET("Shipping Agent Code","Shipping Agent Service Code") THEN
            "Shipping Time" := ShippingAgentServices."Shipping Time"
          ELSE BEGIN
            GetSalesHeader;
            "Shipping Time" := SalesHeader."Shipping Time";
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
          Evaluate("Shipping Time",'<>');

        if "Drop Shipment" then begin
          Evaluate("Shipping Time",'<0D>');
          UpdateDates;
        end else
          if ShippingAgentServices.Get("Shipping Agent Code","Shipping Agent Service Code") then
            "Shipping Time" := ShippingAgentServices."Shipping Time"
          else begin
            GetSalesHeader;
            "Shipping Time" := SalesHeader."Shipping Time";
          end;

        if ShippingAgentServices."Shipping Time" <> xRec."Shipping Time" then
          Validate("Shipping Time","Shipping Time");
        */
        //end;


        //Unsupported feature: CodeModification on ""Return Qty. to Receive"(Field 5803).OnValidate". Please convert manually.

        //trigger  to Receive"(Field 5803)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (CurrFieldNo <> 0) AND
           (Type = Type::Item) AND
           ("Return Qty. to Receive" <> 0) AND
           (NOT "Drop Shipment")
        THEN
          CheckWarehouse;

        OnValidateReturnQtyToReceiveOnAfterCheck(Rec,CurrFieldNo);

        IF "Return Qty. to Receive" = Quantity - "Return Qty. Received" THEN
          InitQtyToReceive
        ELSE BEGIN
          "Return Qty. to Receive (Base)" := CalcBaseQty("Return Qty. to Receive");
          InitQtyToInvoice;
        END;

        IsHandled := FALSE;
        OnValidateQtyToReturnAfterInitQty(Rec,xRec,CurrFieldNo,IsHandled);
        IF NOT IsHandled THEN BEGIN
          IF ("Return Qty. to Receive" * Quantity < 0) OR
             (ABS("Return Qty. to Receive") > ABS("Outstanding Quantity")) OR
             (Quantity * "Outstanding Quantity" < 0)
          THEN
            ERROR(Text020,"Outstanding Quantity");
          IF ("Return Qty. to Receive (Base)" * "Quantity (Base)" < 0) OR
             (ABS("Return Qty. to Receive (Base)") > ABS("Outstanding Qty. (Base)")) OR
             ("Quantity (Base)" * "Outstanding Qty. (Base)" < 0)
          THEN
            ERROR(Text021,"Outstanding Qty. (Base)");
        END;

        IF (CurrFieldNo <> 0) AND (Type = Type::Item) AND ("Return Qty. to Receive" > 0) THEN
          CheckApplFromItemLedgEntry(ItemLedgEntry);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (CurrFieldNo <> 0) and
           (Type = Type::Item) and
           ("Return Qty. to Receive" <> 0) and
           (not "Drop Shipment")
        then
        #6..9
        if "Return Qty. to Receive" = Quantity - "Return Qty. Received" then
          InitQtyToReceive
        else begin
          "Return Qty. to Receive (Base)" := CalcBaseQty("Return Qty. to Receive");
          InitQtyToInvoice;
        end;

        IsHandled := false;
        OnValidateQtyToReturnAfterInitQty(Rec,xRec,CurrFieldNo,IsHandled);
        if not IsHandled then begin
          if ("Return Qty. to Receive" * Quantity < 0) or
             (Abs("Return Qty. to Receive") > Abs("Outstanding Quantity")) or
             (Quantity * "Outstanding Quantity" < 0)
          then
            Error(Text020,"Outstanding Quantity");
          if ("Return Qty. to Receive (Base)" * "Quantity (Base)" < 0) or
             (Abs("Return Qty. to Receive (Base)") > Abs("Outstanding Qty. (Base)")) or
             ("Quantity (Base)" * "Outstanding Qty. (Base)" < 0)
          then
            Error(Text021,"Outstanding Qty. (Base)");
        end;

        if (CurrFieldNo <> 0) and (Type = Type::Item) and ("Return Qty. to Receive" > 0) then
          CheckApplFromItemLedgEntry(ItemLedgEntry);
        */
        //end;


        //Unsupported feature: CodeModification on ""Return Qty. to Receive (Base)"(Field 5804).OnValidate". Please convert manually.

        //trigger  to Receive (Base)"(Field 5804)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Qty. per Unit of Measure",1);
        VALIDATE("Return Qty. to Receive","Return Qty. to Receive (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Qty. per Unit of Measure",1);
        Validate("Return Qty. to Receive","Return Qty. to Receive (Base)");
        */
        //end;


        //Unsupported feature: CodeModification on ""Return Rcd. Not Invd."(Field 5807).OnValidate". Please convert manually.

        //trigger  Not Invd();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetSalesHeader;
        Currency2.InitRoundingPrecision;
        IF SalesHeader."Currency Code" <> '' THEN
          "Return Rcd. Not Invd. (LCY)" :=
            ROUND(
              CurrExchRate.ExchangeAmtFCYToLCY(
                GetDate,"Currency Code",
                "Return Rcd. Not Invd.",SalesHeader."Currency Factor"),
              Currency2."Amount Rounding Precision")
        ELSE
          "Return Rcd. Not Invd. (LCY)" :=
            ROUND("Return Rcd. Not Invd.",Currency2."Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetSalesHeader;
        Currency2.InitRoundingPrecision;
        if SalesHeader."Currency Code" <> '' then
          "Return Rcd. Not Invd. (LCY)" :=
            Round(
        #6..9
        else
          "Return Rcd. Not Invd. (LCY)" :=
            Round("Return Rcd. Not Invd.",Currency2."Amount Rounding Precision");
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


        //Unsupported feature: CodeModification on ""Customer Disc. Group"(Field 7002).OnValidate". Please convert manually.

        //trigger  Group"(Field 7002)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Item THEN
          UpdateUnitPrice(FIELDNO("Customer Disc. Group"))
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Item then
          UpdateUnitPrice(FieldNo("Customer Disc. Group"))
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""Attached Doc Count"(Field 7010)". Please convert manually.

        field(13701; "Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Tax Amount',
                        ENN = 'Tax Amount';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 4;
            Editable = true;
        }
        field(13702; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            //TableRelation = "Excise Bus. Posting Group";
        }
        field(13703; "Excise Prod. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Prod. Posting Group',
                        ENN = 'Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            //TableRelation = "Excise Prod. Posting Group";
        }
        field(13708; "Excise Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Amount',
                        ENN = 'Excise Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13711; "Amount Including Excise"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Excise',
                        ENN = 'Amount Including Excise';
            DataClassification = ToBeClassified;
        }
        field(13712; "Excise Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Base Amount',
                        ENN = 'Excise Base Amount';
            DataClassification = ToBeClassified;
        }
        field(13715; "Excise Accounting Type"; Option)
        {
            CaptionML = ENU = 'Excise Accounting Type',
                        ENN = 'Excise Accounting Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'With CENVAT,Without CENVAT',
                              ENN = 'With CENVAT,Without CENVAT';
            OptionMembers = "With CENVAT","Without CENVAT";
        }
        field(13719; "Excise Base Quantity"; Decimal)
        {
            CaptionML = ENU = 'Excise Base Quantity',
                        ENN = 'Excise Base Quantity';
            DataClassification = ToBeClassified;
        }
        field(13721; "Tax %"; Decimal)
        {
            CaptionML = ENU = 'Tax %',
                        ENN = 'Tax %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Editable = true;

            trigger OnValidate();
            begin
                UpdateAmounts;
            end;
        }
        field(13722; "Amount Including Tax"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Tax',
                        ENN = 'Amount Including Tax';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13724; "Amount Added to Excise Base"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Excise Base',
                        ENN = 'Amount Added to Excise Base';
            DataClassification = ToBeClassified;
        }
        field(13725; "Amount Added to Tax Base"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Tax Base',
                        ENN = 'Amount Added to Tax Base';
            DataClassification = ToBeClassified;
        }
        field(13727; "Tax Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            BlankZero = true;
            CaptionML = ENU = 'Tax Base Amount',
                        ENN = 'Tax Base Amount';
            DataClassification = ToBeClassified;
            Editable = true;
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
            //TableRelation = "Concessional Codes";
        }
        field(13742; "Assessee Code"; Code[10])
        {
            CaptionML = ENU = 'Assessee Code',
                        ENN = 'Assessee Code';
            DataClassification = ToBeClassified;
            Editable = false;
            //TableRelation = "Assessee Code";
        }
        field(13743; "TDS/TCS %"; Decimal)
        {
            CaptionML = ENU = 'TDS/TCS %',
                        ENN = 'TDS/TCS %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 2 : 3;
            Editable = false;
        }
        field(13746; "Bal. TDS/TCS Including SHECESS"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Bal. TDS/TCS Including SHECESS',
                        ENN = 'Bal. TDS/TCS Including SHECESS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13749; "Claim Deferred Excise"; Boolean)
        {
            CaptionML = ENU = 'Claim Deferred Excise',
                        ENN = 'Claim Deferred Excise';
            DataClassification = ToBeClassified;
        }
        field(13750; "Capital Item"; Boolean)
        {
            CaptionML = ENU = 'Capital Item',
                        ENN = 'Capital Item';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13755; "BED Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'BED Amount',
                        ENN = 'BED Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(13758; "AED(GSI) Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(GSI) Amount',
                        ENN = 'AED(GSI) Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(13759; "SED Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'SED Amount',
                        ENN = 'SED Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(13769; "SAED Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'SAED Amount',
                        ENN = 'SAED Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(13770; "CESS Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'CESS Amount',
                        ENN = 'CESS Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(13771; "NCCD Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'NCCD Amount',
                        ENN = 'NCCD Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13772; "eCess Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            BlankZero = true;
            CaptionML = ENU = 'eCess Amount',
                        ENN = 'eCess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(13796; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;

            trigger OnLookup();
            var
            // StateForm: Record "State Forms";
            begin
            end;

            trigger OnValidate();
            begin
                UpdateAmounts;
            end;
        }
        field(13797; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
        }
        field(13798; State; Code[10])
        {
            CaptionML = ENU = 'State',
                        ENN = 'State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(13799; "TDS/TCS Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'TDS/TCS Amount',
                        ENN = 'TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16340; "Amount To Customer"; Decimal)
        {
            CaptionML = ENU = 'Amount To Customer',
                        ENN = 'Amount To Customer';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16342; "Charges To Customer"; Decimal)
        {
            CaptionML = ENU = 'Charges To Customer',
                        ENN = 'Charges To Customer';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16343; "TDS/TCS Base Amount"; Decimal)
        {
            CaptionML = ENU = 'TDS/TCS Base Amount',
                        ENN = 'TDS/TCS Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16363; "Surcharge Base Amount"; Decimal)
        {
            CaptionML = ENU = 'Surcharge Base Amount',
                        ENN = 'Surcharge Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16367; "Temp TDS/TCS Base"; Decimal)
        {
            CaptionML = ENU = 'Temp TDS/TCS Base',
                        ENN = 'Temp TDS/TCS Base';
            DataClassification = ToBeClassified;
        }
        field(16377; "Service Tax Group"; Code[20])
        {
            CaptionML = ENU = 'Service Tax Group',
                        ENN = 'Service Tax Group';
            DataClassification = ToBeClassified;
            //TableRelation = "Service Tax Groups".Code;
        }
        field(16379; "Service Tax Base"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Base',
                        ENN = 'Service Tax Base';
            DataClassification = ToBeClassified;
        }
        field(16380; "Service Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Amount',
                        ENN = 'Service Tax Amount';
            DataClassification = ToBeClassified;
        }
        field(16381; "Service Tax Registration No."; Code[20])
        {
            CaptionML = ENU = 'Service Tax Registration No.',
                        ENN = 'Service Tax Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Registration Nos.".Code;

            trigger OnValidate();
            begin
                //TESTFIELD("Service Tax Group");
            end;
        }
        field(16383; "eCESS % on TDS/TCS"; Decimal)
        {
            CaptionML = ENU = 'eCESS % on TDS/TCS',
                        ENN = 'eCESS % on TDS/TCS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16384; "eCESS on TDS/TCS Amount"; Decimal)
        {
            CaptionML = ENU = 'eCESS on TDS/TCS Amount',
                        ENN = 'eCESS on TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16385; "Total TDS/TCS Incl. SHE CESS"; Decimal)
        {
            CaptionML = ENU = 'Total TDS/TCS Incl. SHE CESS',
                        ENN = 'Total TDS/TCS Incl. SHE CESS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16386; "Per Contract"; Boolean)
        {
            CaptionML = ENU = 'Per Contract',
                        ENN = 'Per Contract';
            DataClassification = ToBeClassified;
        }
        field(16391; "Service Tax eCess Amount"; Decimal)
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
            MinValue = 0;
        }
        field(16455; "AED(TTA) Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(TTA) Amount',
                        ENN = 'AED(TTA) Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16456; "Free Supply"; Boolean)
        {
            CaptionML = ENU = 'Free Supply',
                        ENN = 'Free Supply';
            DataClassification = ToBeClassified;
        }
        field(16459; "ADE Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'ADE Amount',
                        ENN = 'ADE Amount';
            DataClassification = ToBeClassified;
            MinValue = 0;
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
            MinValue = 0;
        }
        field(16496; "Service Tax SHE Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SHE Cess Amount',
                        ENN = 'Service Tax SHE Cess Amount';
            DataClassification = ToBeClassified;
        }
        field(16500; "Direct Debit To PLA / RG"; Boolean)
        {
            CaptionML = ENU = 'Direct Debit To PLA / RG',
                        ENN = 'Direct Debit To PLA / RG';
            DataClassification = ToBeClassified;
        }
        field(16502; "TCS Nature of Collection"; Code[10])
        {
            CaptionML = ENU = 'TCS Nature of Collection',
                        ENN = 'TCS Nature of Collection';
            DataClassification = ToBeClassified;
            //TableRelation = "TCS Nature Of Collection";

            trigger OnLookup();
            var
            //NatureOfCollection: Record "TCS Nature Of Collection";
            //TempNatureOfCollection: Record "TCS Nature Of Collection" temporary;
            begin
            end;
        }
        field(16503; "TCS Type"; Option)
        {
            CaptionML = ENU = 'TCS Type',
                        ENN = 'TCS Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,1H',
                              ENN = ' ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,1H';
            OptionMembers = " ",A,B,C,D,E,F,G,H,I,J,K,L,M,N,"1H";
        }
        field(16504; "Standard Deduction %"; Decimal)
        {
            CaptionML = ENU = 'Standard Deduction %',
                        ENN = 'Standard Deduction %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16505; "Standard Deduction Amount"; Decimal)
        {
            CaptionML = ENU = 'Standard Deduction Amount',
                        ENN = 'Standard Deduction Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16519; Supplementary; Boolean)
        {
            CaptionML = ENU = 'Supplementary',
                        ENN = 'Supplementary';
            DataClassification = ToBeClassified;
        }
        field(16520; "Source Document Type"; Option)
        {
            CaptionML = ENU = 'Source Document Type',
                        ENN = 'Source Document Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Posted Invoice,Posted Credit Memo',
                              ENN = 'Posted Invoice,Posted Credit Memo';
            OptionMembers = "Posted Invoice","Posted Credit Memo";
        }
        field(16521; "Source Document No."; Code[20])
        {
            CaptionML = ENU = 'Source Document No.',
                        ENN = 'Source Document No.';
            DataClassification = ToBeClassified;
        }
        field(16524; "ADC VAT Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'ADC VAT Amount',
                        ENN = 'ADC VAT Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16525; "CIF Amount"; Decimal)
        {
            CaptionML = ENU = 'CIF Amount',
                        ENN = 'CIF Amount';
            DataClassification = ToBeClassified;
        }
        field(16526; "BCD Amount"; Decimal)
        {
            CaptionML = ENU = 'BCD Amount',
                        ENN = 'BCD Amount';
            DataClassification = ToBeClassified;
        }
        field(16527; CVD; Boolean)
        {
            CaptionML = ENU = 'CVD',
                        ENN = 'CVD';
            DataClassification = ToBeClassified;
        }
        field(16528; "Process Carried Out"; Code[10])
        {
            CaptionML = ENU = 'Process Carried Out',
                        ENN = 'Process Carried Out';
            DataClassification = ToBeClassified;
            //TableRelation = "Process Carried Out".Code;
        }
        field(16529; "Identification Mark"; Text[30])
        {
            CaptionML = ENU = 'Identification Mark',
                        ENN = 'Identification Mark';
            DataClassification = ToBeClassified;
        }
        field(16530; "Re-Dispatch"; Boolean)
        {
            CaptionML = ENU = 'Re-Dispatch',
                        ENN = 'Re-Dispatch';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16531; "Return Rcpt Line No."; Integer)
        {
            CaptionML = ENU = 'Return Rcpt Line No.',
                        ENN = 'Return Rcpt Line No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16532; "Qty. to be Re-Dispatched"; Decimal)
        {
            CaptionML = ENU = 'Qty. to be Re-Dispatched',
                        ENN = 'Qty. to be Re-Dispatched';
            DataClassification = ToBeClassified;
        }
        field(16533; "Return Re-Dispatch Rcpt. No."; Code[20])
        {
            CaptionML = ENU = 'Return Re-Dispatch Rcpt. No.',
                        ENN = 'Return Re-Dispatch Rcpt. No.';
            DataClassification = ToBeClassified;
        }
        field(16534; "SHE Cess % on TDS/TCS"; Decimal)
        {
            CaptionML = ENU = 'SHE Cess % on TDS/TCS',
                        ENN = 'SHE Cess % on TDS/TCS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16535; "SHE Cess on TDS/TCS Amount"; Decimal)
        {
            CaptionML = ENU = 'SHE Cess on TDS/TCS Amount',
                        ENN = 'SHE Cess on TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16537; "MRP Price"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            CaptionML = ENU = 'MRP Price',
                        ENN = 'MRP Price';
            DataClassification = ToBeClassified;
            MinValue = 0;

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(16538; MRP; Boolean)
        {
            CaptionML = ENU = 'MRP',
                        ENN = 'MRP';
            DataClassification = ToBeClassified;
            Editable = true;

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(16539; "Abatement %"; Decimal)
        {
            CaptionML = ENU = 'Abatement %',
                        ENN = 'Abatement %';
            DataClassification = ToBeClassified;
            MaxValue = 100;
            MinValue = 0;

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(16540; "PIT Structure"; Code[10])
        {
            CaptionML = ENU = 'PIT Structure',
                        ENN = 'PIT Structure';
            DataClassification = ToBeClassified;
            //TableRelation = "Structure Header";
        }
        field(16541; "Price Inclusive of Tax"; Boolean)
        {
            CaptionML = ENU = 'Price Inclusive of Tax',
                        ENN = 'Price Inclusive of Tax';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
                StrOrderDetails: Record "Structure Order Details";
                StrOrderLines: Record "Structure Order Line Details";
                //SaleLineDetailBuffer: Record "Sale Line Detail Buffer";
            begin
            end;
        }
        field(16542; "Unit Price Incl. of Tax"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 2;
            CaptionML = ENU = 'Unit Price Incl. of Tax',
                        ENN = 'Unit Price Incl. of Tax';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(16543; "Excise Base Variable"; Decimal)
        {
            CaptionML = ENU = 'Excise Base Variable',
                        ENN = 'Excise Base Variable';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16544; "Tax Base Variable"; Decimal)
        {
            CaptionML = ENU = 'Tax Base Variable',
                        ENN = 'Tax Base Variable';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16545; "Amount To Customer UPIT"; Decimal)
        {
            CaptionML = ENU = 'Amount To Customer UPIT',
                        ENN = 'Amount To Customer UPIT';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16546; "UPIT Rounding Inserted"; Boolean)
        {
            CaptionML = ENU = 'UPIT Rounding Inserted',
                        ENN = 'UPIT Rounding Inserted';
            DataClassification = ToBeClassified;
        }
        field(16547; "Total UPIT Amount"; Decimal)
        {
            CaptionML = ENU = 'Total UPIT Amount',
                        ENN = 'Total UPIT Amount';
            DataClassification = ToBeClassified;
        }
        field(16548; "Inv Discount Fixed"; Decimal)
        {
            CaptionML = ENU = 'Inv Discount Fixed',
                        ENN = 'Inv Discount Fixed';
            DataClassification = ToBeClassified;
        }
        field(16549; "Inv Discount Variable"; Decimal)
        {
            CaptionML = ENU = 'Inv Discount Variable',
                        ENN = 'Inv Discount Variable';
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
        field(16560; "Service Tax SBC %"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC %',
                        ENN = 'Service Tax SBC %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16561; "Service Tax SBC Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC Amount',
                        ENN = 'Service Tax SBC Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16562; "Service Tax SBC Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC Amount(Intm)',
                        ENN = 'Service Tax SBC Amount(Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16563; "KK Cess%"; Decimal)
        {
            CaptionML = ENU = 'KK Cess%',
                        ENN = 'KK Cess%';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16564; "KK Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'KK Cess Amount',
                        ENN = 'KK Cess Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16565; "KK Cess Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'KK Cess Amount (Intm)',
                        ENN = 'KK Cess Amount (Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16601; "GST Place of Supply"; Option)
        {
            CaptionML = ENU = 'GST Place of Supply',
                        ENN = 'GST Place of Supply';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Bill-to Address,Ship-to Address,Location Address',
                              ENN = ' ,Bill-to Address,Ship-to Address,Location Address';
            OptionMembers = " ","Bill-to Address","Ship-to Address","Location Address";

            trigger OnValidate();
            var
                SalesHeaderRec: Record "Sales Header";
                ShipToAddress: Record "Ship-to Address";
            begin
            end;
        }
        field(16602; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            //TableRelation = "GST Group";
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
            Editable = true;
        }
        field(16606; "Total GST Amount"; Decimal)
        {
            CaptionML = ENU = 'Total GST Amount',
                        ENN = 'Total GST Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16607; "HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'HSN/SAC Code',
                        ENN = 'HSN/SAC Code';
            DataClassification = ToBeClassified;
            TableRelation = "HSN/SAC".Code WHERE ("GST Group Code" = FIELD ("GST Group Code"));

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
        field(16611; "GST Rounding Line"; Boolean)
        {
            CaptionML = ENU = 'GST Rounding Line',
                        ENN = 'GST Rounding Line';
            DataClassification = ToBeClassified;
        }
        field(16612; "GST On Assessable Value"; Boolean)
        {
            CaptionML = ENU = 'GST On Assessable Value',
                        ENN = 'GST On Assessable Value';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
            // GSTGroup: Record "GST Group";
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
        field(16625; "Sales Amount"; Decimal)
        {
            CaptionML = ENU = 'Sales Amount',
                        ENN = 'Sales Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50002; "Packet No"; Integer)
        {
        }
        field(60001; "Production BOM No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Production BOM Header"."No.";

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(60002; "Production Bom Version No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("Production BOM No."));

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(60003; "Estimated Unit Cost"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Design Worksheet Header"."Total Cost" WHERE ("Document No." = FIELD ("Document No."),
                                                                            "Document Type" = CONST (Order),
                                                                            "Document Line No." = FIELD ("Line No.")));
            Description = 'B2B';
            FieldClass = FlowField;

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(60004; "Estimated Total Unit Cost"; Decimal)
        {
            BlankZero = true;
            Description = 'B2B';

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(60005; "RDSO Unit Charges"; Decimal)
        {
            BlankZero = true;
            Description = 'B2B';

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(60006; "Prod Start Date"; Date)
        {
            Description = 'B2B';

            trigger OnValidate();
            begin
                //TestStatusOpen;
            end;
        }
        field(60007; "LD Amount"; Decimal)
        {
            BlankZero = true;
            Description = 'B2B';

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(60008; "RDSO Charges Paid By"; Option)
        {
            Description = 'B2B';
            OptionMembers = " ","By Customer","By Railways";

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(60009; "RDSO Inspection Required"; Boolean)
        {
            Description = 'B2B';

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(60010; "RDSO Inspection By"; Option)
        {
            Description = 'B2B';
            OptionMembers = " ","By RDSO"," By Consignee";

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(60011; "RDSO Charges"; Decimal)
        {
            BlankZero = true;
            Description = 'B2B';

            trigger OnValidate();
            begin
                TestField("RDSO Inspection Required", true);
                TestStatusOpen;
            end;
        }
        field(60012; "Schedule Type"; Option)
        {
            Description = 'B2B';
            OptionCaption = '" ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z"';
            OptionMembers = " ",A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z;
        }
        field(60013; "Prod. Order Quantity"; Decimal)
        {
            CalcFormula = Sum ("Production Order".Quantity WHERE ("Sales Order No." = FIELD ("Document No."),
                                                                 "Sales Order Line No." = FIELD ("Line No."),
                                                                 "Source No." = FIELD ("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(60014; "Tender No."; Code[20])
        {
        }
        field(60015; "Tender Line No."; Integer)
        {
        }
        field(60016; "Prod. Qty"; Decimal)
        {

            trigger OnValidate();
            begin
                CalcFields("Prod. Order Quantity");
                if "Prod. Order Quantity" + "Prod. Qty" > Quantity then
                    Error(text112);
            end;
        }
        field(60017; "Prod. Due Date"; Date)
        {
        }
        field(60018; "Item Sub Group Code"; Code[20])
        {
            CalcFormula = Lookup (Item."Item Sub Group Code" WHERE ("No." = FIELD ("No.")));
            FieldClass = FlowField;
        }
        field(60019; "To Be Shipped Qty"; Decimal)
        {
        }
        field(60020; "Material Reuired Date"; Date)
        {
            Editable = false;
        }
        field(60021; "Dummy Unit Cost"; Decimal)
        {
        }
        field(60022; "Plan Shifting Date"; Date)
        {
        }
        field(60023; "Change to Specified Plan Date"; Boolean)
        {
        }
        field(60024; "CL_CNSGN  rcvd Qty"; Integer)
        {
            Description = 'added  by sujani for renucha mam';
        }
        field(60025; "CL_CNSGN  rcvd Date1"; Date)
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
            // TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
        field(60110; "Supply Portion"; Decimal)
        {

            trigger OnValidate();
            begin
                // Added by Pranavi on 16-Sep-2016
                if "Retention Portion" + "Supply Portion" > 100 then
                    Error('TOTAL SUPPLY+RETENTION Portion should not be > 100 %!');
            end;
        }
        field(60111; "Retention Portion"; Decimal)
        {

            trigger OnValidate();
            begin
                // Added by Pranavi on 16-Sep-2016
                if "Retention Portion" + "Supply Portion" > 100 then
                    Error('TOTAL SUPPLY+RETENTION Portion should not be > 100 %!');
            end;
        }
        field(60112; "Type of Item"; Option)
        {
            OptionMembers = " ","Only Supply","Supply & Inst","Supply & Laying","Only Inst";
        }
        field(60113; "Schedule No"; Integer)
        {
        }
        field(60114; "Unitcost(LOA)"; Decimal)
        {
        }
        field(60115; "Line Amount(LOA)"; Decimal)
        {
        }
        field(60116; "OutStanding(LOA)"; Decimal)
        {
        }
        field(60117; "BOI Status"; Option)
        {
            OptionCaption = '" ,To be Ordered,To be Received,Received,To be Dispatched,Confirmation Pending,Material Supplied,Cancelled"';
            OptionMembers = " ","To be Ordered","To be Received",Received,"To be Dispatched","Confirmation Pending","Material Supplied",Cancelled;
        }
        field(60118; MainCategory; Option)
        {
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
            OptionMembers = "  ",Sales,"No Issue","R&D","Need to Specify",CS,MKT,LMD,"Temp-Closed";
        }
        field(60119; SubCategory; Option)
        {
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
            OptionMembers = "  ","Yet to Start","Under Inspection","Ready for Inspection","Under Production","Inspection Completed","Ready For Dispatch","BOM Pending","PO Pending","BOI Pending","Docs Pending","RDSO renewal Pending","S/W Pending","Call Letter Pending","Customer side Pending","Installation material pending","Site not ready","R&D Pending","Installation Inprogress",Commisioned,"Completion letter taken","Yet to dispatch",Received,"To Be Received","Under Design","Dispatched on DC";
        }
        field(60120; Reason; Text[100])
        {
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
        }
        field(60121; Remarks; Text[100])
        {
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
        }
        field(60122; ProductGroup; Code[20])
        {
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
            TableRelation = "Item Sub Group".Code;
        }
        field(60123; Main_CATEGORY; Option)
        {
            OptionMembers = "  ",Sales,"No Issue","R&D","Need to Specify",CS,MKT;
        }
        field(60124; "Call Letter Status"; Option)
        {
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
            OptionMembers = " ",Received,Pending,NA,"Cust.Pending";
        }
        field(60125; "RDSO Number"; Code[15])
        {
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
        }
        field(60126; Vertical; Option)
        {
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
            OptionMembers = " ","Smart Signalling","Smart Cities","Smart Building",IOT,other;
        }
        field(60127; "Deviated Dispatch Date"; DateTime)
        {
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
        }
        field(60128; "Dispatch Date"; DateTime)
        {
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
        }
        field(60129; "Call Letter Exp Date"; Date)
        {
            Description = 'added by sujani on 07-12-2018 for pending orders analysis purpose';
        }
        field(60130; "Sell-to Customer Name"; Text[50])
        {
            CaptionML = ENU = 'Sell-to Customer Name',
                        ENN = 'Sell-to Customer Name';
        }
        field(60131; "Tentative RDSO Date"; Date)
        {
            Description = 'Added by Vishnu Priya on 14-12-2018';
        }
        field(60132; "Production Confirmed Status"; Boolean)
        {
            Description = 'Added by Vishnu Priya on 26-05-2020 for Sales Process Tracking';
        }
        field(60133; "Dispatch Confirm Date"; Date)
        {
            Description = 'Added by Vishnu Priya on 26-05-2020 for Sales Process Tracking';
        }
        field(60134; "Production Stage"; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Vishnu Priya on 04-11-2020 for Sales Process Tracking';
            OptionCaption = '" ,Soldering ,Testing,Product Integration,Call letter Registration,Inspection Completed,Final Testing,QA Completed,Offer to QA,IP QA,Ready For Inspection"';
            OptionMembers = " ","Soldering ",Testing,"Product Integration","Call letter Registration","Inspection Completed","Final Testing","QA Completed","Offer to QA","IP QA","Ready For Inspection";
        }
        field(60135; "Product ready Date Committed"; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Vishnu Priya on 04-11-2020 for Sales Process Tracking';
        }
        field(60136; "Product ready Date (Revised)"; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Vishnu Priya on 04-11-2020 for Sales Process Tracking';
        }
        field(80000; "VAT Business Posting Group 2"; Code[10])
        {
            TableRelation = "VAT Business Posting Group".Code;
        }
        field(80001; "VAT Product Posting Group 2"; Code[10])
        {
            TableRelation = "VAT Business Posting Group".Code;
        }
        field(80002; "VAT %age 2"; Decimal)
        {
        }
        field(80003; "VAT Base 2"; Decimal)
        {
            Editable = false;
        }
        field(80004; "VAT Amount 2"; Decimal)
        {
        }
        field(80005; "Service Tax % 2"; Decimal)
        {
            BlankZero = true;
            Caption = 'Service Tax %';
        }
        field(80006; "Pending By"; Option)
        {
            OptionMembers = " ","R&D",Sales,LMD,Customer,Purchase,CUS;

            trigger OnValidate();
            begin
                // Added by Pranavi on 20-Feb-2016 for the tracking of pending by removed date
                if (xRec."Pending By" in [1, 2, 3, 4, 5, 6]) and ("Pending By" = 0) then
                    "Pending By Removed Date" := Today()
                else
                    "Pending By Removed Date" := 0D;
                // end by pranavi
            end;
        }
        field(80007; "Pending By Removed Date"; Date)
        {
        }
        field(80008; "Purchase Remarks"; Option)
        {
            OptionCaption = '" ,Sales Configuration Pending,Purchase order placed Mat Exp,Call letters Pending,Purchase Prices under negotiations,Material Received,Material Supplied-Invoice Pending,PO will place before Mfg items Ready,Will supply at site"';
            OptionMembers = " ","Sales Conformation Pending","Purchase order placed Mat Exp","Call letters Pending","Purchase Prices under negotiations","Material Received","Material Supplied-Invoice Pending","PO will place before Mfg items Ready","Will supply at site";
        }
        field(80009; "Planned Dispatch Date"; Date)
        {
            Description = 'Pranavi-for BOI Planning';
        }
        field(33000250; "Spec ID"; Code[20])
        {
            Description = 'QC1.0';
            //TableRelation = "Specification Header";
        }
        field(33000251; "Quantity Accepted"; Decimal)
        {
            BlankZero = true;
            /*CalcFormula = Sum("Quality Ledger Entry".Quantity WHERE("Order No." = FIELD("Document No."),
                                                                     "Sales Line No" = FIELD("Line No."),
                                                                     "Entry Type" = FILTER(Accepted)));*/
            Description = 'QC1.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33000252; "Quantity Rework"; Decimal)
        {
            BlankZero = true;
            /*CalcFormula = Sum("Quality Ledger Entry"."Remaining Quantity" WHERE("Order No." = FIELD("Document No."),
                                                                                 "Sales Line No" = FIELD("Line No."),
                                                                                 "Entry Type" = FILTER(Rework)));*/
            Description = 'QC1.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33000253; "QC Enabled"; Boolean)
        {
            Description = 'QC1.0';

            trigger OnValidate();
            begin
                TestStatusOpen;
                TestField(Type, Type::Item);
                if "QC Enabled" then
                    TestField("Spec ID");
                if not "QC Enabled" then;
                /* if "Quality Before Receipt" then
                     Validate("Quality Before Receipt", false);*/
            end;
        }
        field(33000254; "Quantity Rejected"; Decimal)
        {
            BlankZero = true;
            /*CalcFormula = Sum("Quality Ledger Entry".Quantity WHERE("Order No." = FIELD("Document No."),
                                                                     "Sales Line No" = FIELD("Line No."),
                                                                     "Entry Type" = FILTER(Reject)));*/
            Description = 'QC1.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33000255; "Quality Before Receipt"; Boolean)
        {
            Description = 'QC1.0';

            trigger OnValidate();
            begin
                TestStatusOpen;
                TestField(Type, Type::Item);
                if "Qty. to Ship" <> 0 then
                    FieldError("Qty. to Ship", 'should be 0');
                if "Qty. Sent To Quality" <> 0 then
                    FieldError("Qty. Sent To Quality", 'should be 0');
                "Qty. Sending To Quality" := 0;
                if "Quality Before Receipt" then begin
                    //GetQCSetup;
                    // QualityCtrlSetup.TestField("Quality Before Receipt", true);
                    TestField("QC Enabled", true);
                end;
            end;
        }
        field(33000256; "Qty. Sending To Quality"; Decimal)
        {
            BlankZero = true;
            Description = 'QC1.0';
            MinValue = 0;
        }
        field(33000257; "Qty. Sent To Quality"; Decimal)
        {
            BlankZero = true;
            Description = 'QC1.0';
            Editable = false;
            MinValue = 0;
        }
        field(33000258; "Qty. Sending To Quality(R)"; Decimal)
        {
            BlankZero = true;
            Description = 'QC1.0';
            MinValue = 0;
        }
        field(33000259; "Spec Version"; Code[20])
        {
            Description = 'QC1.0';
            //TableRelation = "Specification Version"."Version Code" WHERE("Specification No." = FIELD("Spec ID"));
        }
        field(33000260; "Reg/Non reg Product"; Option)
        {
            DataClassification = CustomerContent;
            Description = 'added by durga for expected orders form';
            OptionMembers = " ",Issue,"No-Issue";
        }
        field(33000261; Priority; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by priyanka on 24-02-2022';
            OptionMembers = " ","1","2","3";
        }
        field(33000262; "M Stage"; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by priyanka on 02-03-2022';
            OptionMembers = " ",Machine,Man,Method,Material;
        }
        field(33000263; "Non Regular Stages"; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by priyanka on 03-03-2022';
            OptionMembers = " ","Sample PCB Evaluation","Hardware-Temp BOM","Final BOM","Inst BOM",Firmware,Software,"Production DOC","UPG BOM","Design In-Progress","Design to be Start";
        }
        field(33000264; "Responsible Dept"; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by priyanka on 03-03-2022';
            OptionMembers = " ","R&D",DQA,CS;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document Type,Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Line No.,Document Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Type,No.,Variant Code,Drop Shipment,Location Code,Shipment Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Bill-to Customer No.,Currency Code,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Type,No.,Variant Code,Drop Shipment,Shortcut Dimension 1 Code,Shortcut Dimension 2 Code,Location Code,Shipment Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Bill-to Customer No.,Shortcut Dimension 1 Code,Shortcut Dimension 2 Code,Currency Code,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Blanket Order No.,Blanket Order Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Location Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Shipment No.,Shipment Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No.,Variant Code,Drop Shipment,Location Code,Document Type,Shipment Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Sell-to Customer No.,Shipment No.,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Job Contract Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Qty. Shipped Not Invoiced"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Type,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Recalculate Invoice Disc."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Qty. Shipped Not Invoiced"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Qty. Shipped (Base)"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Shipment Date,Outstanding Quantity"(Key)". Please convert manually.

        key(DocType1; "Document Type", "Document No.", "Line No.")
        {
        }
        key(DocNo2; "Document No.", "Line No.", "Document Type")
        {
            //SumIndexFields = "Amount Including Tax";
        }
        key(No3; "Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Location Code", "Shipment Date")
        {
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(Bill4; "Document Type", "Bill-to Customer No.", "Currency Code", "Document No.")
        {
            SumIndexFields = "Outstanding Amount", "Shipped Not Invoiced", "Outstanding Amount (LCY)", "Shipped Not Invoiced (LCY)", "Return Rcd. Not Invd. (LCY)";
        }
        key(Type5; "Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Location Code", "Shipment Date")
        {
            Enabled = false;
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(Document6; "Document Type", "Bill-to Customer No.", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Currency Code", "Document No.")
        {
            Enabled = false;
            SumIndexFields = "Outstanding Amount", "Shipped Not Invoiced", "Outstanding Amount (LCY)", "Shipped Not Invoiced (LCY)";
        }
        key(DocumentType7; "Document Type", "Blanket Order No.", "Blanket Order Line No.")
        {
        }
        key(DocumentNo8; "Document Type", "Document No.", "Location Code")
        {
            MaintainSQLIndex = false;
            SumIndexFields = Amount, "Amount Including VAT", "Outstanding Amount", "Shipped Not Invoiced", "Outstanding Amount (LCY)", "Shipped Not Invoiced (LCY)";
        }
        key(ShipmentNo9; "Document Type", "Shipment No.", "Shipment Line No.")
        {
        }
        key(Varint10; Type, "No.", "Variant Code", "Drop Shipment", "Location Code", "Document Type", "Shipment Date")
        {
            MaintainSQLIndex = false;
        }
        key(SelltoCustomer11; "Document Type", "Sell-to Customer No.", "Shipment No.", "Document No.")
        {
            SumIndexFields = "Outstanding Amount (LCY)";
        }
        key(JobContract12; "Job Contract Entry No.")
        {
        }
        key(QtyShipped13; "Document Type", "Document No.", "Qty. Shipped Not Invoiced")
        {
            Enabled = false;
        }
        key(NO14; "Document Type", "Document No.", Type, "No.")
        {
            Enabled = false;
        }
        key(Recalculate15; "Recalculate Invoice Disc.")
        {
        }
        key(QtyShipped16; "Qty. Shipped Not Invoiced")
        {
        }
        key(ShippedBase17; "Qty. Shipped (Base)")
        {
        }
        key(ShipDate18; "Shipment Date", "Outstanding Quantity")
        {
        }
        /* key(ScheduleType19; "Document Type", "Document No.", "Schedule Type", "Line No.")
         {
         }*/
        key(GenProd20; "Document No.", "Gen. Prod. Posting Group", "No.")
        {
            //SumIndexFields = "Line Amount", "Line Amount(LOA)", "OutStanding(LOA)";
        }
        /*key(Material21; "Material Reuired Date", "No.")
        {
            SumIndexFields = "To Be Shipped Qty";
        }*/
    }


    //Unsupported feature: CodeInsertion on "OnDelete". Please convert manually.

    //trigger (Variable: DesignworksheetHeader)();
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
      ReserveSalesLine.DeleteLine(Rec);
      CALCFIELDS("Reserved Qty. (Base)");
      TESTFIELD("Reserved Qty. (Base)",0);
      IF "Shipment No." = '' THEN
        TESTFIELD("Qty. Shipped Not Invoiced",0);
      IF "Return Receipt No." = '' THEN
        TESTFIELD("Return Qty. Rcd. Not Invd.",0);
      WhseValidateSourceLine.SalesLineDelete(Rec);
    END;

    IF ("Document Type" = "Document Type"::Order) AND (Quantity <> "Quantity Invoiced") THEN
      TESTFIELD("Prepmt. Amt. Inv.","Prepmt Amt Deducted");

    CleanDropShipmentFields;
    CleanSpecialOrderFieldsAndCheckAssocPurchOrder;
    CatalogItemMgt.DelNonStockSales(Rec);

    IF "Document Type" = "Document Type"::"Blanket Order" THEN BEGIN
      SalesLine2.RESET;
      SalesLine2.SETCURRENTKEY("Document Type","Blanket Order No.","Blanket Order Line No.");
      SalesLine2.SETRANGE("Blanket Order No.","Document No.");
      SalesLine2.SETRANGE("Blanket Order Line No.","Line No.");
      IF SalesLine2.FINDFIRST THEN
        SalesLine2.TESTFIELD("Blanket Order Line No.",0);
    END;

    IF Type = Type::Item THEN BEGIN
      ATOLink.DeleteAsmFromSalesLine(Rec);
      DeleteItemChargeAssgnt("Document Type","Document No.","Line No.");
    END;

    IF Type = Type::"Charge (Item)" THEN
      DeleteChargeChargeAssgnt("Document Type","Document No.","Line No.");

    CapableToPromise.RemoveReqLines("Document No.","Line No.",0,FALSE);

    IF "Line No." <> 0 THEN BEGIN
      SalesLine2.RESET;
      SalesLine2.SETRANGE("Document Type","Document Type");
      SalesLine2.SETRANGE("Document No.","Document No.");
      SalesLine2.SETRANGE("Attached to Line No.","Line No.");
      SalesLine2.SETFILTER("Line No.",'<>%1',"Line No.");
      SalesLine2.DELETEALL(TRUE);
    END;

    IF "Job Contract Entry No." <> 0 THEN
      JobCreateInvoice.DeleteSalesLine(Rec);

    SalesCommentLine.SETRANGE("Document Type","Document Type");
    SalesCommentLine.SETRANGE("No.","Document No.");
    SalesCommentLine.SETRANGE("Document Line No.","Line No.");
    IF NOT SalesCommentLine.ISEMPTY THEN
      SalesCommentLine.DELETEALL;

    // In case we have roundings on VAT or Sales Tax, we should update some other line
    IF (Type <> Type::" ") AND ("Line No." <> 0) AND ("Attached to Line No." = 0) AND ("Job Contract Entry No." = 0 ) AND
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
        DeferralUtilities.GetSalesDeferralDocType,'','',
        "Document Type","Document No.","Line No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
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
      ReserveSalesLine.VerifyQuantity(Rec,xRec);
    END;
    LOCKTABLE;
    SalesHeader."No." := '';
    IF Type = Type::Item THEN
      IF SalesHeader.InventoryPickConflict("Document Type","Document No.",SalesHeader."Shipping Advice") THEN
        ERROR(Text056,SalesHeader."Shipping Advice");
    IF ("Deferral Code" <> '') AND (GetDeferralAmount <> 0) THEN
      UpdateDeferralAmounts;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //The code has been merged but contained errors that could prevent import
    //and the code has been put in comments. Use Shift+Ctrl+O to Uncomment
    //TestStatusOpen;

    //GetSalesHeader;
    //IF SalesHeader."Free Supply" THEN
    //  TESTFIELD("Price Inclusive of Tax",FALSE);
    //IF "Price Inclusive of Tax" THEN BEGIN
    //  SalesHeader.TESTFIELD("VAT Exempted",FALSE);
    //  SalesHeader.TESTFIELD("Export or Deemed Export",FALSE);

    //IF Quantity <> 0 THEN BEGIN
    //  OnBeforeVerifyReservedQty(Rec,xRec,0);
    //  ReserveSalesLine.VerifyQuantity(Rec,xRec);

    //testOrderVerification('You do not have permision to add Item when Order Verified');
    //GetSalesHeader;
    //IF SalesHeader."Free Supply" THEN
    //  TESTFIELD("Price Inclusive of Tax",FALSE);
    //IF "Price Inclusive of Tax" THEN BEGIN
    //  SalesHeader.TESTFIELD("VAT Exempted",FALSE);
    //  SalesHeader.TESTFIELD("Export or Deemed Export",FALSE);

    //END;
    //LOCKTABLE;
    //SalesHeader."No." := '';
    //IF Type = Type::Item THEN
    //  IF SalesHeader.InventoryPickConflict("Document Type","Document No.",SalesHeader."Shipping Advice") THEN
    //    ERROR(Text056,SalesHeader."Shipping Advice");
    //IF ("Deferral Code" <> '') AND (GetDeferralAmount <> 0) THEN
    //  UpdateDeferralAmounts;
    //
    //
    //
    ////B2B-KNR
    //SalesHeader.SETRANGE("Document Type","Document Type");
    //SalesHeader.SETRANGE("No.","Document No.");
    //IF SalesHeader.FIND('-') THEN BEGIN
    //  //"RDSO Unit Charges" :=
    //  "RDSO Charges Paid By" := SalesHeader."RDSO Charges Paid By";
    //  "RDSO Inspection Required" := SalesHeader."RDSO Inspection Required";
    //  "RDSO Inspection By" := SalesHeader."RDSO Inspection By";
    //  "Sell-to Customer No." := SalesHeader."Sell-to Customer No.";
    //  "Bill-to Customer No." := SalesHeader."Bill-to Customer No.";
    //  //"RDSO Charges"
    //END;
    //"Location Code":='PROD';
    ////B2B-KNR
    //// added by pranavi on 01-sep-2016 for payment terms
    //IF "Document Type" = "Document Type"::Order THEN
    //BEGIN
    //  SalesHeader.RESET;
    //  SalesHeader.SETRANGE(SalesHeader."No.","Document No.");
    //  IF SalesHeader.FINDFIRST THEN
    //    IF SalesHeader."Customer Posting Group" IN['PRIVATE','OTHERS'] THEN
    //      IF Type = Type::Item THEN
    //      BEGIN
    //        "Supply Portion" := 100;
    //        "Retention Portion" := 0;
    //      END ELSE BEGIN
    //        "Supply Portion" := 0;
    //        "Retention Portion" := 100;
    //      END;
    //END;
    //// end by pranavi
    //
    //// Added by Pranavi on 13-Dec-2016
    //IF "Document Type" = "Document Type"::Order THEN
    //BEGIN
    //  SalesHeader.RESET;
    //  SalesHeader.SETRANGE(SalesHeader."Document Type",SalesHeader."Document Type"::Order);
    //  SalesHeader.SETRANGE(SalesHeader."No.","Document No.");
    //  IF SalesHeader.FINDFIRST THEN
    //  BEGIN
    //    SO.RESET;
    //    SO.SETRANGE(SO."Document Type",SO."Document Type"::Order);
    //    SO.SETRANGE(SO."No.",SalesHeader."No.");
    //    IF NOT SO.FINDFIRST THEN
    //    BEGIN
    //      SO.INIT;
    //      IF COPYSTR(SalesHeader."No.",1,7) ='EFF/SAL' THEN
    //         SO."Document Type":=SO."Document Type"::Order
    //      ELSE IF COPYSTR(SalesHeader."No.",1,7) ='EFF/AMC' THEN
    //         SO."Document Type":=SO."Document Type"::Amc;
    //      SO."No.":=SalesHeader."No.";
    //      SO."Sell-to Customer No.":=SalesHeader."Sell-to Customer No.";
    //      SO."Customer OrderNo.":=SalesHeader."Customer OrderNo.";
    //      SO."Bill-to Name":=SalesHeader."Bill-to Name";
    //      SO."Bill-to Customer No.":=SalesHeader."Bill-to Customer No.";
    //      SO."Customer Posting Group":=SalesHeader."Customer Posting Group";
    //      // Pranavi
    //      SO."Security Deposit Amount":=SalesHeader."Security Deposit Amount";
    //      SO."SD Status":=SalesHeader."SD Status";
    //      SO."Sale Order Total Amount":=SalesHeader."Sale Order Total Amount";
    //      SO."EMD Amount":=SalesHeader."EMD Amount";
    //      SO."Security Deposit Status":=SalesHeader."Security Deposit Status";
    //      SO."SD Requested Date":=SalesHeader."SD Requested Date";
    //      SO."SD Required Date":=SalesHeader."SD Required Date";
    //      SO."Warranty Period":=SalesHeader."Warranty Period";
    //      SO.Product:=SalesHeader.Product;
    //      SO."Security Deposit":=SalesHeader."Security Deposit";
    //      // Pranavi
    //      SO.INSERT;
    //    END;
    //  END;
    //END;
    //// End--Pranavi
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger (Variable: PrdOrder)();
    //Parameters and return type have not been exported.
    //begin
    /*
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
    #4..13

    IF ((Quantity <> 0) OR (xRec.Quantity <> 0)) AND ItemExists(xRec."No.") AND NOT FullReservedQtyIsForAsmToOrder THEN
      ReserveSalesLine.VerifyChange(Rec,xRec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*


    {
    rpoQty:=0;
    PrdOrder.RESET;
    PrdOrder.SETFILTER(PrdOrder."Sales Order No.","Document No.");
    PrdOrder.SETFILTER(PrdOrder."Sales Order Line No.",'%1',"Line No.");
    PrdOrder.SETFILTER(PrdOrder."Schedule Line No.",'%1',0);
    IF PrdOrder.FINDSET THEN
    REPEAT
      rpoQty:=rpoQty+PrdOrder.Quantity;
    UNTIL PrdOrder.NEXT=0;

    IF rpoQty>0 THEN
    BEGIN
      IF xRec."No."<>"No." THEN
        ERROR('Already Production Orders was released for the item '+xRec."No."+' in line no: '+FORMAT("Line No.")+'. Please contact Production Manager for further actions');

      IF rpoQty>Quantity THEN
        ERROR('Already Production Orders was released for the quantity  '+FORMAT(rpoQty)+' on line No: '+FORMAT("Line No.")+'. Please contact Production Manager for further actions');
    END;
     }


    GetSalesHeader;
     //  IF(("Prod. Qty"=xRec."Prod. Qty")) THEN
        // SalesHeader.TESTFIELD(SalesHeader.Status,SalesHeader.Status::Open);//anil
    {IF SalesHeader."Free Supply" THEN
      TESTFIELD("Price Inclusive of Tax",FALSE);
    IF "Price Inclusive of Tax" THEN BEGIN
      SalesHeader.TESTFIELD("VAT Exempted",FALSE);
      SalesHeader.TESTFIELD("Export or Deemed Export",FALSE);
    END;

    #1..16
    //ANIL13/10/09
    SalesHeader.SETRANGE("Document Type","Document Type");
    SalesHeader.SETRANGE("No.","Document No.");
    IF SalesHeader.FIND('-') THEN BEGIN
     "Line Amount(LOA)":="Unitcost(LOA)"*Quantity;
     "OutStanding(LOA)":="Unitcost(LOA)"*(Quantity-"Quantity Invoiced");
    END;
    //ANIL13/10/09
    // "OutStanding(LOA)":="Unitcost(LOA)"*(Quantity-"Quantity Invoiced");
    }
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
    //ERROR(Text001,TABLECAPTION);
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "Type(Field 5).OnValidate.TempSalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Type : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Type : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""No."(Field 6).OnValidate.TempSalesLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : "Sales Line";
    //Variable type has not been exported.

    var
        ProductionBOMHeader: Record "Production BOM Header";
        VersionMgt: Codeunit VersionManagement;
        SalesHeaderRDSO: Record "Sales Header";
        //PrdOrder: Record "Production Order";
        rpoQty: Integer;


        //Unsupported feature: PropertyModification on ""Location Code"(Field 7).OnValidate.Item(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Location Code" : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Location Code" : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on ""Shipment Date"(Field 10).OnValidate.CheckDateConflict(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Shipment Date" : 99000815;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Shipment Date" : "Reservation-Check Date Confl.";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "Description(Field 11).OnValidate.Item(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //Description : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Description : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "Description(Field 11).OnValidate.ApplicationAreaMgmtFacade(Variable 1004)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //Description : 9179;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Description : "Application Area Mgmt. Facade";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "Description(Field 11).OnValidate.FindRecordMgt(Variable 1005)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //Description : 703;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Description : "Find Record Management";
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

    var
        //PrdOrder: Record "Production Order";
        //rpoQty: Integer;
        uom: Record "Item Unit of Measure";


        //Unsupported feature: PropertyModification on ""Qty. to Ship"(Field 18).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Qty. to Ship" : 32;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Qty. to Ship" : "Item Ledger Entry";
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


        //Unsupported feature: PropertyModification on ""Appl.-to Item Entry"(Field 38).OnValidate.ItemTrackingLines(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Appl.-to Item Entry" : 6510;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Appl.-to Item Entry" : "Item Tracking Lines";
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


        //Unsupported feature: PropertyModification on "Reserve(Field 96).OnValidate.Item(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //Reserve : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Reserve : Item;
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


        //Unsupported feature: PropertyModification on ""Qty. to Assemble to Order"(Field 900).OnValidate.SalesLineReserve(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Qty. to Assemble to Order" : 99000832;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Qty. to Assemble to Order" : "Sales Line-Reserve";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on ""Job Contract Entry No."(Field 1002).OnValidate.JobPlanningLine(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Job Contract Entry No." : 1003;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Job Contract Entry No." : "Job Planning Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on ""Returns Deferral Start Date"(Field 1702).OnValidate.DeferralHeader(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Returns Deferral Start Date" : 1701;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Returns Deferral Start Date" : "Deferral Header";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on ""Bin Code"(Field 5403).OnLookup.WMSManagement(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Bin Code" : 7302;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Bin Code" : "WMS Management";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on ""Bin Code"(Field 5403).OnValidate.WMSManagement(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Bin Code" : 7302;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Bin Code" : "WMS Management";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 5407).OnValidate.Item(Variable 1002)". Please convert manually.

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


        //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 5407).OnValidate.ResUnitofMeasure(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Unit of Measure Code" : 205;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Unit of Measure Code" : "Resource Unit of Measure";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 5407).OnValidate.IdentityManagement(Variable 1161)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Unit of Measure Code" : 9801;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Unit of Measure Code" : "Identity Management";
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


        //Unsupported feature: PropertyModification on ""Purchasing Code"(Field 5711).OnValidate.ShippingAgentServices(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Purchasing Code" : 5790;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Purchasing Code" : "Shipping Agent Services";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on ""Shipping Agent Service Code"(Field 5797).OnValidate.ShippingAgentServices(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Shipping Agent Service Code" : 5790;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Shipping Agent Service Code" : "Shipping Agent Services";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on ""Return Qty. to Receive"(Field 5803).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Return Qty. to Receive" : 32;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Return Qty. to Receive" : "Item Ledger Entry";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on ""Return Rcd. Not Invd."(Field 5807).OnValidate.Currency2(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Return Rcd. Not Invd." : 4;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Return Rcd. Not Invd." : Currency;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on ""Appl.-from Item Entry"(Field 5811).OnValidate.ItemLedgEntry(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //"Appl.-from Item Entry" : 32;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Appl.-from Item Entry" : "Item Ledger Entry";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "OnDelete.SalesCommentLine(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //OnDelete.SalesCommentLine : 44;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //OnDelete.SalesCommentLine : "Sales Comment Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "OnDelete.CapableToPromise(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //OnDelete.CapableToPromise : 99000886;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //OnDelete.CapableToPromise : "Capable to Promise";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "OnDelete.JobCreateInvoice(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //OnDelete.JobCreateInvoice : 1002;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //OnDelete.JobCreateInvoice : "Job Create-Invoice";
        //Variable type has not been exported.

    var
        DesignworksheetHeader: Record "Design Worksheet Header";
        //Schedule: Record Schedule2;
        //PrdOrder: Record "Production Order";
        //rpoQty: Integer;

    var
        PrdOrder: Record "Production Order";
        // rpoQty: Integer;


        //Unsupported feature: PropertyModification on "CopyFromStandardText(PROCEDURE 131).StandardText(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CopyFromStandardText : 7;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CopyFromStandardText : "Standard Text";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CopyFromItem(PROCEDURE 144).Item(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CopyFromItem : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CopyFromItem : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CopyFromItem(PROCEDURE 144).PrepaymentMgt(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CopyFromItem : 441;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CopyFromItem : "Prepayment Mgt.";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CopyFromFixedAsset(PROCEDURE 148).FixedAsset(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CopyFromFixedAsset : 5600;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CopyFromFixedAsset : "Fixed Asset";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "SelectItemEntry(PROCEDURE 8).ItemLedgEntry(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //SelectItemEntry : 32;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SelectItemEntry : "Item Ledger Entry";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "SelectItemEntry(PROCEDURE 8).SalesLine3(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //SelectItemEntry : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SelectItemEntry : "Sales Line";
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


        //Unsupported feature: PropertyModification on "UpdateVATAmounts(PROCEDURE 38).SalesLine2(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //UpdateVATAmounts : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UpdateVATAmounts : "Sales Line";
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


        //Unsupported feature: PropertyModification on "AutoReserve(PROCEDURE 11).SalesSetup(Variable 1003)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //AutoReserve : 311;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //AutoReserve : "Sales & Receivables Setup";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "AutoReserve(PROCEDURE 11).ReservMgt(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //AutoReserve : 99000845;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //AutoReserve : "Reservation Management";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "AutoReserve(PROCEDURE 11).ConfirmManagement(Variable 1004)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //AutoReserve : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //AutoReserve : "Confirm Management";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "OpenItemTrackingLines(PROCEDURE 6500).Job(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //OpenItemTrackingLines : 167;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //OpenItemTrackingLines : Job;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 26).SourceCodeSetup(Variable 1006)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CreateDim : 242;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CreateDim : "Source Code Setup";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "SelectMultipleItems(PROCEDURE 180).ItemListPage(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //SelectMultipleItems : 31;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SelectMultipleItems : "Item List";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "AddItems(PROCEDURE 181).Item(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //AddItems : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //AddItems : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "AddItems(PROCEDURE 181).SalesLine(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //AddItems : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //AddItems : "Sales Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "AddItems(PROCEDURE 181).LastSalesLine(Variable 1003)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //AddItems : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //AddItems : "Sales Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "InitNewLine(PROCEDURE 183).SalesLine(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //InitNewLine : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //InitNewLine : "Sales Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ShowNonstock(PROCEDURE 32).TempItemTemplate(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ShowNonstock : 1301;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ShowNonstock : "Mini Item Template";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GetFAPostingGroup(PROCEDURE 6).LocalGLAcc(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetFAPostingGroup : 15;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetFAPostingGroup : "G/L Account";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GetFAPostingGroup(PROCEDURE 6).FASetup(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetFAPostingGroup : 5603;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetFAPostingGroup : "FA Setup";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GetFAPostingGroup(PROCEDURE 6).FAPostingGr(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetFAPostingGroup : 5606;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetFAPostingGroup : "FA Posting Group";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GetFAPostingGroup(PROCEDURE 6).FADeprBook(Variable 1003)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetFAPostingGroup : 5612;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetFAPostingGroup : "FA Depreciation Book";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GetUnitCost(PROCEDURE 5808).Item(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetUnitCost : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetUnitCost : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CalcUnitCost(PROCEDURE 5809).ValueEntry(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CalcUnitCost : 5802;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalcUnitCost : "Value Entry";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ShowItemChargeAssgnt(PROCEDURE 5801).ItemChargeAssgntSales(Variable 1003)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ShowItemChargeAssgnt : 5809;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ShowItemChargeAssgnt : "Item Charge Assignment (Sales)";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ShowItemChargeAssgnt(PROCEDURE 5801).AssignItemChargeSales(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ShowItemChargeAssgnt : 5807;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ShowItemChargeAssgnt : "Item Charge Assgnt. (Sales)";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ShowItemChargeAssgnt(PROCEDURE 5801).ItemChargeAssgnts(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ShowItemChargeAssgnt : 5814;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ShowItemChargeAssgnt : "Item Charge Assignment (Sales)";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "UpdateItemChargeAssgnt(PROCEDURE 5807).ItemChargeAssgntSales(Variable 1003)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //UpdateItemChargeAssgnt : 5809;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UpdateItemChargeAssgnt : "Item Charge Assignment (Sales)";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "DeleteItemChargeAssgnt(PROCEDURE 5802).ItemChargeAssgntSales(Variable 1003)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //DeleteItemChargeAssgnt : 5809;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //DeleteItemChargeAssgnt : "Item Charge Assignment (Sales)";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "DeleteChargeChargeAssgnt(PROCEDURE 5804).ItemChargeAssgntSales(Variable 1003)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //DeleteChargeChargeAssgnt : 5809;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //DeleteChargeChargeAssgnt : "Item Charge Assignment (Sales)";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CheckItemChargeAssgnt(PROCEDURE 5800).ItemChargeAssgntSales(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CheckItemChargeAssgnt : 5809;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckItemChargeAssgnt : "Item Charge Assignment (Sales)";
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


        //Unsupported feature: PropertyModification on "GetCPGInvRoundAcc(PROCEDURE 71).Cust(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetCPGInvRoundAcc : 18;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetCPGInvRoundAcc : Customer;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GetCPGInvRoundAcc(PROCEDURE 71).CustTemplate(Variable 1003)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetCPGInvRoundAcc : 5105;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetCPGInvRoundAcc : "Customer Template";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GetCPGInvRoundAcc(PROCEDURE 71).CustPostingGroup(Variable 1004)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetCPGInvRoundAcc : 92;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetCPGInvRoundAcc : "Customer Posting Group";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CheckWarehouse(PROCEDURE 46).Location2(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CheckWarehouse : 14;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckWarehouse : Location;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CheckWarehouse(PROCEDURE 46).WhseSetup(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CheckWarehouse : 5769;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckWarehouse : "Warehouse Setup";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CheckWarehouse(PROCEDURE 46).ShowDialog(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CheckWarehouse :  ,Message,Error;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckWarehouse : " ",Message,Error;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GetItemTranslation(PROCEDURE 42).ItemTranslation(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetItemTranslation : 30;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetItemTranslation : "Item Translation";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "RowID1(PROCEDURE 47).ItemTrackingMgt(Variable 1000)". Please convert manually.

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


        //Unsupported feature: PropertyModification on "GetATOBin(PROCEDURE 89).AsmHeader(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetATOBin : 900;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetATOBin : "Assembly Header";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "HandleDedicatedBin(PROCEDURE 70).WhseIntegrationMgt(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //HandleDedicatedBin : 7317;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //HandleDedicatedBin : "Whse. Integration Management";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CheckPurchOrderLineDeleted(PROCEDURE 209).PurchaseLine(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CheckPurchOrderLineDeleted : 39;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckPurchOrderLineDeleted : "Purchase Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CrossReferenceNoLookUp(PROCEDURE 53).ItemCrossReference(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CrossReferenceNoLookUp : 5717;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CrossReferenceNoLookUp : "Item Cross Reference";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CrossReferenceNoLookUp(PROCEDURE 53).ICGLAcc(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CrossReferenceNoLookUp : 410;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CrossReferenceNoLookUp : "IC G/L Account";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ValidateCrossReferenceNo(PROCEDURE 211).ReturnedItemCrossReference(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ValidateCrossReferenceNo : 5717;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ValidateCrossReferenceNo : "Item Cross Reference";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CheckServItemCreation(PROCEDURE 52).Item(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CheckServItemCreation : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckServItemCreation : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CheckServItemCreation(PROCEDURE 52).ServItemGroup(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CheckServItemCreation : 5904;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckServItemCreation : "Service Item Group";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ItemExists(PROCEDURE 54).Item2(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ItemExists : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ItemExists : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "FindOrCreateRecordByNo(PROCEDURE 276).Item(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //FindOrCreateRecordByNo : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //FindOrCreateRecordByNo : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "FindOrCreateRecordByNo(PROCEDURE 276).FindRecordManagement(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //FindOrCreateRecordByNo : 703;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //FindOrCreateRecordByNo : "Find Record Management";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GetHideValidationDialog(PROCEDURE 123).IdentityManagement(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetHideValidationDialog : 9801;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetHideValidationDialog : "Identity Management";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CheckApplFromItemLedgEntry(PROCEDURE 157).ItemTrackingLines(Variable 1003)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CheckApplFromItemLedgEntry : 6510;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckApplFromItemLedgEntry : "Item Tracking Lines";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GetLineAmountToHandleInclPrepmt(PROCEDURE 265).SalesPostPrepayments(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetLineAmountToHandleInclPrepmt : 442;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetLineAmountToHandleInclPrepmt : "Sales-Post Prepayments";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GetLineAmountToHandleInclPrepmt(PROCEDURE 265).DocType(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetLineAmountToHandleInclPrepmt : Invoice,Credit Memo,Statistic;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetLineAmountToHandleInclPrepmt : Invoice,"Credit Memo",Statistic;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "TestJobPlanningLine(PROCEDURE 60).JobPostLine(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //TestJobPlanningLine : 1001;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //TestJobPlanningLine : "Job Post-Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ShowLineComments(PROCEDURE 61).SalesCommentLine(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ShowLineComments : 44;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ShowLineComments : "Sales Comment Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ShowLineComments(PROCEDURE 61).SalesCommentSheet(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ShowLineComments : 67;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ShowLineComments : "Sales Comment Sheet";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "SetReserveWithoutPurchasingCode(PROCEDURE 198).Item(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //SetReserveWithoutPurchasingCode : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SetReserveWithoutPurchasingCode : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "UpdatePrePaymentAmounts(PROCEDURE 64).ShipmentLine(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //UpdatePrePaymentAmounts : 111;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UpdatePrePaymentAmounts : "Sales Shipment Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "UpdatePrePaymentAmounts(PROCEDURE 64).SalesOrderLine(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //UpdatePrePaymentAmounts : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UpdatePrePaymentAmounts : "Sales Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "UpdatePrePaymentAmounts(PROCEDURE 64).SalesOrderHeader(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //UpdatePrePaymentAmounts : 36;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UpdatePrePaymentAmounts : "Sales Header";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "AsmToOrderExists(PROCEDURE 72).ATOLink(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //AsmToOrderExists : 904;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //AsmToOrderExists : "Assemble-to-Order Link";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "QtyBaseOnATO(PROCEDURE 86).AsmHeader(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //QtyBaseOnATO : 900;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //QtyBaseOnATO : "Assembly Header";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "QtyAsmRemainingBaseOnATO(PROCEDURE 90).AsmHeader(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //QtyAsmRemainingBaseOnATO : 900;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //QtyAsmRemainingBaseOnATO : "Assembly Header";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "QtyToAsmBaseOnATO(PROCEDURE 88).AsmHeader(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //QtyToAsmBaseOnATO : 900;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //QtyToAsmBaseOnATO : "Assembly Header";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "IsAsmToOrderRequired(PROCEDURE 81).Item(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //IsAsmToOrderRequired : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //IsAsmToOrderRequired : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ShowAsmToOrderLines(PROCEDURE 80).ATOLink(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ShowAsmToOrderLines : 904;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ShowAsmToOrderLines : "Assemble-to-Order Link";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "FindOpenATOEntry(PROCEDURE 96).PostedATOLink(Variable 1002)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //FindOpenATOEntry : 914;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //FindOpenATOEntry : "Posted Assemble-to-Order Link";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "FindOpenATOEntry(PROCEDURE 96).ItemLedgEntry(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //FindOpenATOEntry : 32;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //FindOpenATOEntry : "Item Ledger Entry";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "UpdateICPartner(PROCEDURE 78).ICPartner(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //UpdateICPartner : 413;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UpdateICPartner : "IC Partner";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "UpdateICPartner(PROCEDURE 78).ItemCrossReference(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //UpdateICPartner : 5717;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UpdateICPartner : "Item Cross Reference";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "OutstandingInvoiceAmountFromShipment(PROCEDURE 12).SalesLine(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //OutstandingInvoiceAmountFromShipment : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //OutstandingInvoiceAmountFromShipment : "Sales Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CheckShipmentRelation(PROCEDURE 94).SalesShptLine(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CheckShipmentRelation : 111;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckShipmentRelation : "Sales Shipment Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CheckRetRcptRelation(PROCEDURE 95).ReturnRcptLine(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CheckRetRcptRelation : 6661;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckRetRcptRelation : "Return Receipt Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "IsServiceCharge(PROCEDURE 177).CustomerPostingGroup(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //IsServiceCharge : 92;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //IsServiceCharge : "Customer Posting Group";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ConfirmShippedReceivedItemDimChange(PROCEDURE 114).ConfirmManagement(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ConfirmShippedReceivedItemDimChange : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ConfirmShippedReceivedItemDimChange : "Confirm Management";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "IsNonInventoriableItem(PROCEDURE 195).Item(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //IsNonInventoriableItem : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //IsNonInventoriableItem : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "IsInventoriableItem(PROCEDURE 196).Item(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //IsInventoriableItem : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //IsInventoriableItem : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ValidateReturnReasonCode(PROCEDURE 99).ReturnReason(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ValidateReturnReasonCode : 6635;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ValidateReturnReasonCode : "Return Reason";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "UpdatePriceDescription(PROCEDURE 147).Currency(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //UpdatePriceDescription : 4;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UpdatePriceDescription : Currency;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "InitDeferralCode(PROCEDURE 108).Item(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //InitDeferralCode : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //InitDeferralCode : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "DefaultDeferralCode(PROCEDURE 109).Item(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //DefaultDeferralCode : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //DefaultDeferralCode : Item;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CleanPurchaseLineDropShipmentFields(PROCEDURE 155).PurchaseLine(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CleanPurchaseLineDropShipmentFields : 39;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CleanPurchaseLineDropShipmentFields : "Purchase Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CleanPurchaseLineSpecialOrderFields(PROCEDURE 219).PurchaseLine(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CleanPurchaseLineSpecialOrderFields : 39;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CleanPurchaseLineSpecialOrderFields : "Purchase Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CanEditUnitOfMeasureCode(PROCEDURE 115).ItemUnitOfMeasure(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CanEditUnitOfMeasureCode : 5404;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CanEditUnitOfMeasureCode : "Item Unit of Measure";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ValidateTaxGroupCode(PROCEDURE 79).TaxDetail(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ValidateTaxGroupCode : 322;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ValidateTaxGroupCode : "Tax Detail";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "InsertFreightLine(PROCEDURE 121).SalesLine(Variable 1001)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //InsertFreightLine : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //InsertFreightLine : "Sales Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CalculateNotShippedInvExlcVatLCY(PROCEDURE 118).Currency2(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CalculateNotShippedInvExlcVatLCY : 4;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalculateNotShippedInvExlcVatLCY : Currency;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "SendLineInvoiceDiscountResetNotification(PROCEDURE 323).NotificationLifecycleMgt(Variable 1003)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //SendLineInvoiceDiscountResetNotification : 1511;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SendLineInvoiceDiscountResetNotification : "Notification Lifecycle Mgt.";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GetDocumentTypeDescription(PROCEDURE 156).IdentityManagement(Variable 1000)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GetDocumentTypeDescription : 9801;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetDocumentTypeDescription : "Identity Management";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CurrExchRate(Variable 1030)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CurrExchRate : 330;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CurrExchRate : "Currency Exchange Rate";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "SalesHeader(Variable 1031)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //SalesHeader : 36;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SalesHeader : "Sales Header";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "SalesLine2(Variable 1032)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //SalesLine2 : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SalesLine2 : "Sales Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GLAcc(Variable 1035)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GLAcc : 15;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GLAcc : "G/L Account";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "Resource(Variable 1400)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //Resource : 156;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Resource : Resource;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "Currency(Variable 1037)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //Currency : 4;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Currency : Currency;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "Res(Variable 1043)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //Res : 156;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Res : Resource;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ResCost(Variable 1045)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ResCost : 202;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ResCost : "Resource Cost";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "VATPostingSetup(Variable 1048)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //VATPostingSetup : 325;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //VATPostingSetup : "VAT Posting Setup";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GenBusPostingGrp(Variable 1050)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GenBusPostingGrp : 250;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GenBusPostingGrp : "Gen. Business Posting Group";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "GenProdPostingGrp(Variable 1051)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //GenProdPostingGrp : 251;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GenProdPostingGrp : "Gen. Product Posting Group";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "UnitOfMeasure(Variable 1054)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //UnitOfMeasure : 204;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UnitOfMeasure : "Unit of Measure";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "NonstockItem(Variable 1058)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //NonstockItem : 5718;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //NonstockItem : "Nonstock Item";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "SKU(Variable 1060)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //SKU : 5700;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SKU : "Stockkeeping Unit";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ItemCharge(Variable 1061)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ItemCharge : 5800;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ItemCharge : "Item Charge";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "InvtSetup(Variable 1063)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //InvtSetup : 313;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //InvtSetup : "Inventory Setup";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "Location(Variable 1064)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //Location : 14;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Location : Location;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ATOLink(Variable 1016)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ATOLink : 904;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ATOLink : "Assemble-to-Order Link";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "SalesSetup(Variable 1065)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //SalesSetup : 311;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SalesSetup : "Sales & Receivables Setup";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CalChange(Variable 1052)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CalChange : 7602;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalChange : "Customized Calendar Change";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ConfigTemplateHeader(Variable 1057)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ConfigTemplateHeader : 8618;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ConfigTemplateHeader : "Config. Template Header";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "TempErrorMessage(Variable 1036)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //TempErrorMessage : 700;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //TempErrorMessage : "Error Message";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "PriceCalcMgt(Variable 1071)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //PriceCalcMgt : 7000;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //PriceCalcMgt : "Sales Price Calc. Mgt.";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CustCheckCreditLimit(Variable 1074)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CustCheckCreditLimit : 312;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CustCheckCreditLimit : "Cust-Check Cr. Limit";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ItemCheckAvail(Variable 1075)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ItemCheckAvail : 311;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ItemCheckAvail : "Item-Check Avail.";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "SalesTaxCalculate(Variable 1076)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //SalesTaxCalculate : 398;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SalesTaxCalculate : "Sales Tax Calculate";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ReserveSalesLine(Variable 1079)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ReserveSalesLine : 99000832;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ReserveSalesLine : "Sales Line-Reserve";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "UOMMgt(Variable 1080)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //UOMMgt : 5402;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UOMMgt : "Unit of Measure Management";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "AddOnIntegrMgt(Variable 1081)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //AddOnIntegrMgt : 5403;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //AddOnIntegrMgt : AddOnIntegrManagement;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "DimMgt(Variable 1082)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //DimMgt : 408;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //DimMgt : DimensionManagement;
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "ItemSubstitutionMgt(Variable 1085)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //ItemSubstitutionMgt : 5701;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ItemSubstitutionMgt : "Item Subst.";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "DistIntegration(Variable 1086)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //DistIntegration : 5702;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //DistIntegration : "Dist. Integration";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CatalogItemMgt(Variable 1087)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CatalogItemMgt : 5703;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CatalogItemMgt : "Catalog Item Management";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "WhseValidateSourceLine(Variable 1088)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //WhseValidateSourceLine : 5777;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //WhseValidateSourceLine : "Whse. Validate Source Line";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "TransferExtendedText(Variable 1100)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //TransferExtendedText : 378;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //TransferExtendedText : "Transfer Extended Text";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "DeferralUtilities(Variable 1026)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //DeferralUtilities : 1720;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //DeferralUtilities : "Deferral Utilities";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "CalendarMgmt(Variable 1056)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //CalendarMgmt : 7600;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalendarMgmt : "Calendar Management";
        //Variable type has not been exported.


        //Unsupported feature: PropertyModification on "PostingSetupMgt(Variable 1068)". Please convert manually.

        //var
        //>>>> ORIGINAL VALUE:
        //PostingSetupMgt : 48;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //PostingSetupMgt : PostingSetupManagement;
        //Variable type has not been exported.

    var
        "--Qc--": Integer;
        //QualityCtrlSetup: Record "Quality Control Setup";
        QCSetupRead: Boolean;
        text112: Label 'You can''t create more porduction order''s than Qty';
        Schedule: Record Schedule2;
        //SO: Record "Sales Invoice-Dummy";
        SkipOrderVerification: Boolean;
}

