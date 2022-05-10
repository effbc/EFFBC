table 16322 "Sub Order Comp. List Vend"
{
    // version NAVIN9.00.00.45778,B2B1.0

    CaptionML = ENU='Sub Order Comp. List Vend',
                ENN='Sub Order Comp. List Vend';

    fields
    {
        field(1;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
        }
        field(2;"Document Line No.";Integer)
        {
            CaptionML = ENU='Document Line No.',
                        ENN='Document Line No.';
        }
        field(6;"Parent Item No.";Code[20])
        {
            CaptionML = ENU='Parent Item No.',
                        ENN='Parent Item No.';
            TableRelation = Item;
        }
        field(7;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
        }
        field(8;"Item No.";Code[20])
        {
            CaptionML = ENU='Item No.',
                        ENN='Item No.';
            TableRelation = Item;

            trigger OnValidate();
            begin
                if "Line Type" = "Line Type"::Production then
                  Error(Text002);
            end;
        }
        field(9;"Unit of Measure";Code[10])
        {
            CaptionML = ENU='Unit of Measure',
                        ENN='Unit of Measure';
            Editable = false;
            TableRelation = "Unit of Measure";

            trigger OnValidate();
            begin
                if "Line Type" = "Line Type"::Production then
                  Error(Text002);
            end;
        }
        field(10;"Expected Quantity";Decimal)
        {
            CalcFormula = Sum("Prod. Order Component"."Expected Quantity" WHERE (Status=CONST(Released),
                                                                                 "Prod. Order No."=FIELD("Production Order No."),
                                                                                 "Prod. Order Line No."=FIELD("Production Order Line No."),
                                                                                 "Line No."=FIELD("Line No.")));
            CaptionML = ENU='Expected Quantity',
                        ENN='Expected Quantity';
            DecimalPlaces = 2:5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(12;"Quantity (Base)";Decimal)
        {
            CaptionML = ENU='Quantity (Base)',
                        ENN='Quantity (Base)';
        }
        field(14;Description;Text[30])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
        }
        field(20;"Scrap %";Decimal)
        {
            BlankNumbers = BlankNeg;
            CaptionML = ENU='Scrap %',
                        ENN='Scrap %';
            DecimalPlaces = 0:5;
            MaxValue = 100;

            trigger OnValidate();
            begin
                GetProdOrderCompLine;
                ProdOrderComp.Validate("Scrap %","Scrap %");
                ProdOrderComp.Modify;
                CalcFields("Expected Quantity");
                "Total Scrap Quantity" := ("Expected Quantity" * "Scrap %") / 100;
            end;
        }
        field(21;"Variant Code";Code[10])
        {
            CaptionML = ENU='Variant Code',
                        ENN='Variant Code';
        }
        field(45;"Quantity per";Decimal)
        {
            CaptionML = ENU='Quantity per',
                        ENN='Quantity per';
            DecimalPlaces = 0:5;
        }
        field(46;"Company Location";Code[10])
        {
            CaptionML = ENU='Company Location',
                        ENN='Company Location';
        }
        field(47;"Vendor Location";Code[20])
        {
            CaptionML = ENU='Vendor Location',
                        ENN='Vendor Location';
        }
        field(48;"Production Order No.";Code[20])
        {
            CaptionML = ENU='Production Order No.',
                        ENN='Production Order No.';
        }
        field(49;"Production Order Line No.";Integer)
        {
            CaptionML = ENU='Production Order Line No.',
                        ENN='Production Order Line No.';
        }
        field(50;"Line Type";Option)
        {
            CaptionML = ENU='Line Type',
                        ENN='Line Type';
            OptionCaptionML = ENU='Production,Purchase',
                              ENN='Production,Purchase';
            OptionMembers = Production,Purchase;
        }
        field(51;"Gen. Prod. Posting Group";Code[10])
        {
            CaptionML = ENU='Gen. Prod. Posting Group',
                        ENN='Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(52;"Quantity at Vendor Location";Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE ("Entry Type"=CONST(Transfer),
                                                                              "Location Code"=FIELD("Vendor Location"),
                                                                              "Order Type"=CONST(Production),
                                                                              "Order No."=FIELD("Production Order No."),
                                                                              "Order Line No."=FIELD("Production Order Line No."),
                                                                              "Prod. Order Comp. Line No."=FIELD("Line No.")));
            CaptionML = ENU='Quantity at Vendor Location',
                        ENN='Quantity at Vendor Location';
            Editable = false;
            FieldClass = FlowField;
        }
        field(53;"Total Scrap Quantity";Decimal)
        {
            CaptionML = ENU='Total Scrap Quantity',
                        ENN='Total Scrap Quantity';

            trigger OnValidate();
            begin
                CalcFields("Expected Quantity");
                "Scrap %" := (100 * "Total Scrap Quantity") / "Expected Quantity";
                GetProdOrderCompLine;
                ProdOrderComp.Validate("Scrap %","Scrap %");
                ProdOrderComp.Modify;
            end;
        }
        field(54;"Qty. Received";Decimal)
        {
            CaptionML = ENU='Qty. Received',
                        ENN='Qty. Received';
        }
        field(55;"Qty. Received (Base)";Decimal)
        {
            CaptionML = ENU='Qty. Received (Base)',
                        ENN='Qty. Received (Base)';
        }
        field(56;"Qty. to Receive";Decimal)
        {
            CaptionML = ENU='Qty. to Receive',
                        ENN='Qty. to Receive';

            trigger OnValidate();
            begin
                ReinitializeApplication;
            end;
        }
        field(57;"Qty. to Consume";Decimal)
        {
            CaptionML = ENU='Qty. to Consume',
                        ENN='Qty. to Consume';

            trigger OnValidate();
            begin
                GetProdOrderCompLine;
                GetPurchaseOrderLine;
                UpdateConInProdCompLines;
                ReinitializeApplication
            end;
        }
        field(59;"Qty. to Return (C.E.)";Decimal)
        {
            CaptionML = ENU='Qty. to Return (C.E.)',
                        ENN='Qty. to Return (C.E.)';
            Editable = false;

            trigger OnValidate();
            begin
                UpdateConInProdCompLines;
                ReinitializeApplication
            end;
        }
        field(60;"Qty. To Return (V.E.)";Decimal)
        {
            CaptionML = ENU='Qty. To Return (V.E.)',
                        ENN='Qty. To Return (V.E.)';
            Editable = false;

            trigger OnValidate();
            begin
                ReinitializeApplication
            end;
        }
        field(61;"Qty. Consumed";Decimal)
        {
            CalcFormula = -Sum("Item Ledger Entry".Quantity WHERE ("Entry Type"=CONST(Consumption),
                                                                   "Order Type"=CONST(Production),
                                                                   "Order No."=FIELD("Production Order No."),
                                                                   "Order Line No."=FIELD("Production Order Line No."),
                                                                   "Prod. Order Comp. Line No."=FIELD("Line No.")));
            CaptionML = ENU='Qty. Consumed',
                        ENN='Qty. Consumed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
        }
        field(63;"Quantity Dispatched";Decimal)
        {
            CalcFormula = -Sum("Item Ledger Entry".Quantity WHERE ("Entry Type"=CONST(Transfer),
                                                                   "Location Code"=FIELD("Company Location"),
                                                                   "Order Type"=CONST(Production),
                                                                   "Order No."=FIELD("Production Order No."),
                                                                   "Order Line No."=FIELD("Production Order Line No."),
                                                                   "Prod. Order Comp. Line No."=FIELD("Line No.")));
            CaptionML = ENU='Quantity Dispatched',
                        ENN='Quantity Dispatched';
            Editable = false;
            FieldClass = FlowField;
        }
        field(64;"Charge Recoverable";Decimal)
        {
            CalcFormula = -Sum("Value Entry"."Cost Amount (Actual)" WHERE ("Item Ledger Entry Type"=CONST("Negative Adjmt."),
                                                                           "Location Code"=FIELD("Vendor Location"),
                                                                           "Order Type"=CONST(Production),
                                                                           "Order No."=FIELD("Production Order No."),
                                                                           "Order Line No."=FIELD("Production Order Line No."),
                                                                           "Source Type"=CONST(Item),
                                                                           "Source No."=FIELD("Item No.")));
            CaptionML = ENU='Charge Recoverable',
                        ENN='Charge Recoverable';
            Editable = false;
            FieldClass = FlowField;
        }
        field(65;"Debit Note Amount";Decimal)
        {
            CaptionML = ENU='Debit Note Amount',
                        ENN='Debit Note Amount';
            Editable = false;
        }
        field(66;"Applies-to Entry";Integer)
        {
            BlankZero = true;
            CaptionML = ENU='Applies-to Entry',
                        ENN='Applies-to Entry';
            Editable = false;
            TableRelation = "Item Ledger Entry";
        }
        field(67;"Applied Delivery Challan No.";Code[20])
        {
            CaptionML = ENU='Applied Delivery Challan No.',
                        ENN='Applied Delivery Challan No.';

            trigger OnLookup();
            begin
                DeliveryChallanHeader.Reset;
                if DeliveryChallanHeader.Find('-') then
                  repeat
                    TempDeliveryChallanHeader := DeliveryChallanHeader;
                    TempDeliveryChallanHeader.Insert;
                  until DeliveryChallanHeader.Next = 0;

                if ACTION::LookupOK = PAGE.RunModal(PAGE::Page16327,TempDeliveryChallanHeader) then begin
                  DeliveryChallanHeader.Get(TempDeliveryChallanHeader."No.");
                  TempDeliveryChallanHeader.DeleteAll;
                  Validate("Applied Delivery Challan No.",DeliveryChallanHeader."No.");
                end;

                TempDeliveryChallanHeader.DeleteAll;
            end;

            trigger OnValidate();
            begin
                if "Applied Delivery Challan No." <> '' then
                  if not DeliveryChallanHeader.Get("Applied Delivery Challan No.") then
                    Error(Text005);

                if "Applied Delivery Challan No." <> '' then
                  CheckAvialibility
                else
                  "Applies-to Entry" := 0;
            end;
        }
        field(68;"Excise Bus. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Bus. Posting Group',
                        ENN='Excise Bus. Posting Group';
            Editable = false;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(69;"Excise Prod. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Prod. Posting Group',
                        ENN='Excise Prod. Posting Group';
            Editable = false;
            TableRelation = "Excise Prod. Posting Group";
        }
        field(70;SSI;Boolean)
        {
            CaptionML = ENU='SSI',
                        ENN='SSI';
        }
        field(71;"Amount Including Excise";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Amount Including Excise',
                        ENN='Amount Including Excise';
        }
        field(72;"Excise Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Excise Amount',
                        ENN='Excise Amount';
            Editable = false;
        }
        field(73;"Excise Base Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Excise Base Amount',
                        ENN='Excise Base Amount';
            Editable = false;
        }
        field(74;"BED Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='BED Amount',
                        ENN='BED Amount';
            Editable = false;
        }
        field(75;"AED(GSI) Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='AED(GSI) Amount',
                        ENN='AED(GSI) Amount';
            Editable = false;
        }
        field(76;"SED Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='SED Amount',
                        ENN='SED Amount';
            Editable = false;
        }
        field(77;"SAED Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='SAED Amount',
                        ENN='SAED Amount';
            Editable = false;
        }
        field(78;"CESS Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='CESS Amount',
                        ENN='CESS Amount';
            Editable = false;
        }
        field(79;"NCCD Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='NCCD Amount',
                        ENN='NCCD Amount';
            Editable = false;
        }
        field(80;"eCess Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='eCess Amount',
                        ENN='eCess Amount';
            Editable = false;
        }
        field(81;"DN Excise Amount";Decimal)
        {
            CaptionML = ENU='DN Excise Amount',
                        ENN='DN Excise Amount';
        }
        field(82;"DN BED Amount";Decimal)
        {
            CaptionML = ENU='DN BED Amount',
                        ENN='DN BED Amount';
        }
        field(83;"DN AED Amount";Decimal)
        {
            CaptionML = ENU='DN AED Amount',
                        ENN='DN AED Amount';
        }
        field(84;"DN SED Amount";Decimal)
        {
            CaptionML = ENU='DN SED Amount',
                        ENN='DN SED Amount';
        }
        field(85;"DN SAED Amount";Decimal)
        {
            CaptionML = ENU='DN SAED Amount',
                        ENN='DN SAED Amount';
        }
        field(86;"DN CESS Amount";Decimal)
        {
            CaptionML = ENU='DN CESS Amount',
                        ENN='DN CESS Amount';
        }
        field(87;"DN NCCD Amount";Decimal)
        {
            CaptionML = ENU='DN NCCD Amount',
                        ENN='DN NCCD Amount';
        }
        field(88;"DN eCess Amount";Decimal)
        {
            CaptionML = ENU='DN eCess Amount',
                        ENN='DN eCess Amount';
        }
        field(89;"Qty. per Unit of Measure";Decimal)
        {
            CaptionML = ENU='Qty. per Unit of Measure',
                        ENN='Qty. per Unit of Measure';
            DecimalPlaces = 0:5;
            Editable = false;
            InitValue = 1;
        }
        field(90;"AED(TTA) Amount";Decimal)
        {
            CaptionML = ENU='AED(TTA) Amount',
                        ENN='AED(TTA) Amount';
            Editable = false;
        }
        field(91;"ADET Amount";Decimal)
        {
            CaptionML = ENU='ADET Amount',
                        ENN='ADET Amount';
            Editable = false;
        }
        field(92;"ADE Amount";Decimal)
        {
            CaptionML = ENU='ADE Amount',
                        ENN='ADE Amount';
            Editable = false;
        }
        field(93;"SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='SHE Cess Amount',
                        ENN='SHE Cess Amount';
            Editable = false;
        }
        field(94;"ADC VAT Amount";Decimal)
        {
            CaptionML = ENU='ADC VAT Amount',
                        ENN='ADC VAT Amount';
            Editable = false;
        }
        field(95;"DN AED(TTA) Amount";Decimal)
        {
            CaptionML = ENU='DN AED(TTA) Amount',
                        ENN='DN AED(TTA) Amount';
        }
        field(96;"DN ADET Amount";Decimal)
        {
            CaptionML = ENU='DN ADET Amount',
                        ENN='DN ADET Amount';
        }
        field(97;"DN ADE Amount";Decimal)
        {
            CaptionML = ENU='DN ADE Amount',
                        ENN='DN ADE Amount';
        }
        field(98;"DN SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='DN SHE Cess Amount',
                        ENN='DN SHE Cess Amount';
        }
        field(99;"DN ADC VAT Amount";Decimal)
        {
            CaptionML = ENU='DN ADC VAT Amount',
                        ENN='DN ADC VAT Amount';
        }
    }

    keys
    {
        key(Key1;"Document No.","Document Line No.","Parent Item No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        if "Line Type" = "Line Type"::Production then
          Error(Text002);
    end;

    trigger OnInsert();
    begin
        if "Line Type" = "Line Type"::Production then
          Error(Text002);
    end;

    var
        ProdOrderComp : Record "Prod. Order Component";
        PurchaseLine : Record "Purchase Line";
        SubOrderCompList : Record "Sub Order Component List";
        Text002 : TextConst ENU='Can Not Insert,Delete  OR Modify Component details. ',ENN='Can Not Insert,Delete  OR Modify Component details. ';
        DeliveryChallanHeader : Record "Delivery Challan Header";
        TempDeliveryChallanHeader : Record "Delivery Challan Header" temporary;
        Text004 : TextConst ENU='Item No. %1 was not delivered in Delivery Challan No. %2.',ENN='Item No. %1 was not delivered in Delivery Challan No. %2.';
        Text005 : TextConst ENU='Delivery Challan does not exist.',ENN='Delivery Challan does not exist.';
        Text006 : TextConst ENU='Remaining Quantity is not sufficient in the challan selected.',ENN='Remaining Quantity is not sufficient in the challan selected.';

    [LineStart(62342)]
    procedure GetProdOrderCompLine();
    begin
        ProdOrderComp.Reset;
        ProdOrderComp.SetRange(Status,ProdOrderComp.Status::Released);
        ProdOrderComp.SetFilter("Prod. Order No.","Production Order No.");
        ProdOrderComp.SetRange("Prod. Order Line No.","Production Order Line No.");
        ProdOrderComp.SetRange("Line No.","Line No.");
        if ProdOrderComp.FindFirst then;
    end;

    [LineStart(62350)]
    procedure GetPurchaseOrderLine();
    begin
        PurchaseLine.Reset;
        PurchaseLine.SetRange("Document Type",PurchaseLine."Document Type"::Order);
        PurchaseLine.SetFilter("Document No.","Document No.");
        PurchaseLine.SetRange("Line No.","Document Line No.");
        PurchaseLine.FindFirst;
        //PurchaseLine.TESTFIELD(Status,PurchaseLine.Status::Open);
    end;

    [LineStart(62358)]
    procedure SyncronizeSubOrderCompList();
    begin
        SubOrderCompList.Reset;
        SubOrderCompList.SetFilter("Document No.","Document No.");
        SubOrderCompList.SetRange("Document Line No.","Document Line No.");
        SubOrderCompList.SetRange("Parent Item No.","Parent Item No.");
        SubOrderCompList.SetRange("Line No.","Line No.");
        SubOrderCompList.SetFilter("Item No.","Item No.");
        SubOrderCompList.FindFirst;
    end;

    [LineStart(62367)]
    procedure UpdateConInProdCompLines();
    begin
        //ProdOrderComp."Qty. To Consume" := "Qty. to Consume" + "Qty. to Return (C.E.)";
        ProdOrderComp.Modify;
    end;

    [LineStart(62371)]
    procedure CheckAvialibility();
    var
        DeliveryChallanLine : Record "Delivery Challan Line";
        ILE : Record "Item Ledger Entry";
    begin
        DeliveryChallanLine.Reset;
        DeliveryChallanLine.SetCurrentKey("Deliver Challan No.","Item No.");
        DeliveryChallanLine.SetFilter("Deliver Challan No.",DeliveryChallanHeader."No.");
        DeliveryChallanLine.SetFilter("Item No.","Item No.");
        if DeliveryChallanLine.FindFirst then begin
          DeliveryChallanLine.CalcFields("Remaining Quantity");
          if (DeliveryChallanLine."Remaining Quantity" <
              ("Qty. to Receive" + "Qty. to Consume" + "Qty. to Return (C.E.)" + "Qty. To Return (V.E.)"))
          then
            Error(Text006);

          ILE.Reset;
          ILE.SetCurrentKey("Entry Type","Location Code","External Document No.","Item No.");
          ILE.SetRange("Entry Type",ILE."Entry Type"::Transfer);
          ILE.SetFilter("Location Code",DeliveryChallanLine."Vendor Location");
          ILE.SetFilter("External Document No.",DeliveryChallanLine."Deliver Challan No.");
          ILE.SetFilter("Item No.","Item No.");
          if ILE.FindFirst then
            "Applies-to Entry" := ILE."Entry No."
          else
            Error(Text004,"Item No.",DeliveryChallanLine."Deliver Challan No.");
        end else
          "Applies-to Entry" := 0;
    end;

    [LineStart(62396)]
    procedure GetILE();
    begin
    end;

    [LineStart(62399)]
    procedure ReinitializeApplication();
    begin
        Validate("Applied Delivery Challan No.",'');
    end;

    [LineStart(62402)]
    procedure UpdateReceiptDetails(var PurchLine : Record "Purchase Line";"Qty. to Reject (C.E.)" : Decimal;"Qty. to Reject (V.E.)" : Decimal);
    var
        SubOrderCompListVend : Record "Sub Order Comp. List Vend";
    begin
        with PurchLine do begin
          SubOrderCompListVend.Reset;
          SubOrderCompListVend.SetRange("Document No.","Document No.");
          SubOrderCompListVend.SetRange("Document Line No.","Line No.");
          SubOrderCompListVend.Find('-');
          repeat
            SubOrderCompListVend.Validate(
              "Qty. to Consume","Qty. to Receive" * SubOrderCompListVend."Quantity per");
            SubOrderCompListVend.Validate(
              "Qty. to Return (C.E.)","Qty. to Reject (C.E.)" * SubOrderCompListVend."Quantity per");
            SubOrderCompListVend.Validate(
              "Qty. To Return (V.E.)",(SubOrderCompListVend."Quantity per" * "Qty. to Reject (V.E.)"));
            if SubOrderCompListVend."Scrap %" <> 0 then begin
              SubOrderCompListVend."Qty. to Consume" +=
                (SubOrderCompListVend."Qty. to Consume" / 100) * SubOrderCompListVend."Scrap %";
              SubOrderCompListVend."Qty. to Return (C.E.)" +=
                (SubOrderCompListVend."Qty. to Return (C.E.)" / 100) * SubOrderCompListVend."Scrap %";
              SubOrderCompListVend."Qty. To Return (V.E.)" +=
                (SubOrderCompListVend."Qty. To Return (V.E.)" / 100) * SubOrderCompListVend."Scrap %";
            end;
            SubOrderCompListVend.Modify;
          until SubOrderCompListVend.Next = 0
        end;
    end;

    [LineStart(62427)]
    procedure ApplyDeliveryChallan();
    var
        AppliedDeliveryChallan : Record "Applied Delivery Challan";
    begin
        AppliedDeliveryChallan.Reset;
        AppliedDeliveryChallan.SetRange("Document No.","Document No.");
        AppliedDeliveryChallan.SetRange("Document Line No.","Document Line No.");
        AppliedDeliveryChallan.SetRange("Parent Item No.","Parent Item No.");
        AppliedDeliveryChallan.SetRange("Line No.","Line No.");
        AppliedDeliveryChallan.SetRange("Item No.","Item No.");
        PAGE.Run(PAGE::Page16437,AppliedDeliveryChallan);
    end;
}

