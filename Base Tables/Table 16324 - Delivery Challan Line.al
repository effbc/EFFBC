table 16324 "Delivery Challan Line"
{
    // version NAVIN9.00.00.51103

    CaptionML = ENU='Delivery Challan Line',
                ENN='Delivery Challan Line';
    DrillDownPageID = 16442;
    LookupPageID = 16328;

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
        field(8;"Item No.";Code[20])
        {
            CaptionML = ENU='Item No.',
                        ENN='Item No.';
            TableRelation = Item;
        }
        field(9;"Unit of Measure";Code[10])
        {
            CaptionML = ENU='Unit of Measure',
                        ENN='Unit of Measure';
            Editable = false;
            TableRelation = "Unit of Measure";
        }
        field(10;"Prod. BOM Quantity";Decimal)
        {
            CalcFormula = Sum("Prod. Order Component"."Expected Quantity" WHERE (Status=CONST(Released),
                                                                                 "Prod. Order No."=FIELD("Production Order No."),
                                                                                 "Prod. Order Line No."=FIELD("Production Order Line No."),
                                                                                 "Line No."=FIELD("Line No.")));
            CaptionML = ENU='Prod. BOM Quantity',
                        ENN='Prod. BOM Quantity';
            DecimalPlaces = 2:5;
            FieldClass = FlowField;
        }
        field(11;"Quantity To Send";Decimal)
        {
            CaptionML = ENU='Quantity To Send',
                        ENN='Quantity To Send';
        }
        field(12;"Quantity (Base)";Decimal)
        {
            CaptionML = ENU='Quantity (Base)',
                        ENN='Quantity (Base)';
        }
        field(13;"Quantity To Send (Base)";Decimal)
        {
            CaptionML = ENU='Quantity To Send (Base)',
                        ENN='Quantity To Send (Base)';
        }
        field(14;Description;Text[30])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
        }
        field(15;Position;Code[10])
        {
            CaptionML = ENU='Position',
                        ENN='Position';
        }
        field(16;"Position 2";Code[10])
        {
            CaptionML = ENU='Position 2',
                        ENN='Position 2';
        }
        field(17;"Position 3";Code[10])
        {
            CaptionML = ENU='Position 3',
                        ENN='Position 3';
        }
        field(18;"Production Lead Time";DateFormula)
        {
            CaptionML = ENU='Production Lead Time',
                        ENN='Production Lead Time';
        }
        field(19;"Routing Link Code";Code[10])
        {
            CaptionML = ENU='Routing Link Code',
                        ENN='Routing Link Code';
            TableRelation = "Routing Link";
        }
        field(20;"Scrap %";Decimal)
        {
            BlankNumbers = BlankNeg;
            CaptionML = ENU='Scrap %',
                        ENN='Scrap %';
            DecimalPlaces = 0:5;
            MaxValue = 100;
        }
        field(21;"Variant Code";Code[10])
        {
            CaptionML = ENU='Variant Code',
                        ENN='Variant Code';
        }
        field(28;"Starting Date";Date)
        {
            CaptionML = ENU='Starting Date',
                        ENN='Starting Date';
        }
        field(29;"Ending Date";Date)
        {
            CaptionML = ENU='Ending Date',
                        ENN='Ending Date';
        }
        field(40;Length;Decimal)
        {
            CaptionML = ENU='Length',
                        ENN='Length';
            DecimalPlaces = 0:5;

            trigger OnValidate();
            begin
                Validate("Calculation Formula");
            end;
        }
        field(41;Width;Decimal)
        {
            CaptionML = ENU='Width',
                        ENN='Width';
            DecimalPlaces = 0:5;

            trigger OnValidate();
            begin
                Validate("Calculation Formula");
            end;
        }
        field(42;Weight;Decimal)
        {
            CaptionML = ENU='Weight',
                        ENN='Weight';
            DecimalPlaces = 0:5;

            trigger OnValidate();
            begin
                Validate("Calculation Formula");
            end;
        }
        field(43;Depth;Decimal)
        {
            CaptionML = ENU='Depth',
                        ENN='Depth';
            DecimalPlaces = 0:5;

            trigger OnValidate();
            begin
                Validate("Calculation Formula");
            end;
        }
        field(44;"Calculation Formula";Option)
        {
            CaptionML = ENU='Calculation Formula',
                        ENN='Calculation Formula';
            OptionCaptionML = ENU=' ,Length,Length * Width,Length * Width * Depth,Weight',
                              ENN=' ,Length,Length * Width,Length * Width * Depth,Weight';
            OptionMembers = " ",Length,"Length * Width","Length * Width * Depth",Weight;

            trigger OnValidate();
            begin
                case "Calculation Formula" of
                  "Calculation Formula"::" ":
                    "Prod. BOM Quantity" := "Quantity per";
                  "Calculation Formula"::Length:
                    "Prod. BOM Quantity" := Round(Length * "Quantity per",0.00001);
                  "Calculation Formula"::"Length * Width":
                    "Prod. BOM Quantity" := Round(Length * Width * "Quantity per",0.00001);
                  "Calculation Formula"::"Length * Width * Depth":
                    "Prod. BOM Quantity" := Round(Length * Width * Depth * "Quantity per",0.00001);
                  "Calculation Formula"::Weight:
                    "Prod. BOM Quantity" := Round(Weight * "Quantity per",0.00001);
                end;
            end;
        }
        field(45;"Quantity per";Decimal)
        {
            CaptionML = ENU='Quantity per',
                        ENN='Quantity per';
            DecimalPlaces = 0:5;

            trigger OnValidate();
            begin
                Validate("Calculation Formula");
            end;
        }
        field(46;"Company Location";Code[10])
        {
            CaptionML = ENU='Company Location',
                        ENN='Company Location';
        }
        field(47;"Vendor Location";Code[10])
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
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE ("Item No."=FIELD("Item No."),
                                                                              "Location Code"=FIELD("Vendor Location")));
            CaptionML = ENU='Quantity at Vendor Location',
                        ENN='Quantity at Vendor Location';
            FieldClass = FlowField;
        }
        field(53;"Total Scrap Quantity";Decimal)
        {
            CaptionML = ENU='Total Scrap Quantity',
                        ENN='Total Scrap Quantity';

            trigger OnValidate();
            begin
                CalcFields("Prod. BOM Quantity");
            end;
        }
        field(54;"Deliver Challan No.";Code[10])
        {
            CaptionML = ENU='Deliver Challan No.',
                        ENN='Deliver Challan No.';
        }
        field(55;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
        }
        field(56;Quantity;Decimal)
        {
            CaptionML = ENU='Quantity',
                        ENN='Quantity';
        }
        field(57;"Remaining Quantity";Decimal)
        {
            CaptionML = ENU='Remaining Quantity',
                        ENN='Remaining Quantity';
            FieldClass = FlowField;
        }
        field(58;"Components in Rework Qty.";Decimal)
        {
            CaptionML = ENU='Components in Rework Qty.',
                        ENN='Components in Rework Qty.';
        }
        field(59;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
        }
        field(60;"Vendor No.";Code[20])
        {
            CaptionML = ENU='Vendor No.',
                        ENN='Vendor No.';
            TableRelation = Vendor;
        }
        field(61;"Process Description";Text[30])
        {
            CaptionML = ENU='Process Description',
                        ENN='Process Description';
        }
        field(62;"Prod. Order Comp. Line No.";Integer)
        {
            CaptionML = ENU='Prod. Order Comp. Line No.',
                        ENN='Prod. Order Comp. Line No.';
        }
        field(63;"Excise Bus. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Bus. Posting Group',
                        ENN='Excise Bus. Posting Group';
            Editable = false;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(64;"Excise Prod. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Prod. Posting Group',
                        ENN='Excise Prod. Posting Group';
            Editable = false;
            TableRelation = "Excise Prod. Posting Group";
        }
        field(65;SSI;Boolean)
        {
            CaptionML = ENU='SSI',
                        ENN='SSI';
        }
        field(66;"Amount Including Excise";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Amount Including Excise',
                        ENN='Amount Including Excise';
        }
        field(67;"Excise Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Excise Amount',
                        ENN='Excise Amount';
        }
        field(68;"Excise Base Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Excise Base Amount',
                        ENN='Excise Base Amount';
            Editable = false;
        }
        field(69;"AED(GSI) % / Amount";Decimal)
        {
            CaptionML = ENU='AED(GSI) % / Amount',
                        ENN='AED(GSI) % / Amount';
        }
        field(70;"SED % / Amount";Decimal)
        {
            CaptionML = ENU='SED % / Amount',
                        ENN='SED % / Amount';
        }
        field(71;"BED Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='BED Amount',
                        ENN='BED Amount';
            Editable = false;
        }
        field(72;"AED(GSI) Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='AED(GSI) Amount',
                        ENN='AED(GSI) Amount';
            Editable = false;
        }
        field(73;"SED Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='SED Amount',
                        ENN='SED Amount';
            Editable = false;
        }
        field(74;"SAED % / Amount";Decimal)
        {
            CaptionML = ENU='SAED % / Amount',
                        ENN='SAED % / Amount';
        }
        field(75;"CESS % / Amount";Decimal)
        {
            CaptionML = ENU='CESS % / Amount',
                        ENN='CESS % / Amount';
        }
        field(76;"NCCD % / Amount";Decimal)
        {
            CaptionML = ENU='NCCD % / Amount',
                        ENN='NCCD % / Amount';
        }
        field(77;"eCess % / Amount";Decimal)
        {
            CaptionML = ENU='eCess % / Amount',
                        ENN='eCess % / Amount';
        }
        field(78;"SAED Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='SAED Amount',
                        ENN='SAED Amount';
            Editable = false;
        }
        field(79;"CESS Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='CESS Amount',
                        ENN='CESS Amount';
            Editable = false;
        }
        field(80;"NCCD Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='NCCD Amount',
                        ENN='NCCD Amount';
            Editable = false;
        }
        field(81;"eCess Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='eCess Amount',
                        ENN='eCess Amount';
            Editable = false;
        }
        field(82;"Amount Added to Excise Base";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Amount Added to Excise Base',
                        ENN='Amount Added to Excise Base';
            Editable = false;
        }
        field(83;"Debit Note Created";Boolean)
        {
            CaptionML = ENU='Debit Note Created',
                        ENN='Debit Note Created';
        }
        field(84;"Return Date";Date)
        {
            CaptionML = ENU='Return Date',
                        ENN='Return Date';
        }
        field(85;"Debit Note Excise Amount";Decimal)
        {
            CaptionML = ENU='Debit Note Excise Amount',
                        ENN='Debit Note Excise Amount';
        }
        field(86;"Last Date";Date)
        {
            CaptionML = ENU='Last Date',
                        ENN='Last Date';
            Editable = false;
        }
        field(89;"AED(TTA) Amount";Decimal)
        {
            CaptionML = ENU='AED(TTA) Amount',
                        ENN='AED(TTA) Amount';
            Editable = false;
        }
        field(90;"ADET Amount";Decimal)
        {
            CaptionML = ENU='ADET Amount',
                        ENN='ADET Amount';
            Editable = false;
        }
        field(91;"ADE Amount";Decimal)
        {
            CaptionML = ENU='ADE Amount',
                        ENN='ADE Amount';
            Editable = false;
        }
        field(92;"SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='SHE Cess Amount',
                        ENN='SHE Cess Amount';
            Editable = false;
        }
        field(93;"ADC VAT Amount";Decimal)
        {
            CaptionML = ENU='ADC VAT Amount',
                        ENN='ADC VAT Amount';
            Editable = false;
        }
        field(94;"Job Work Return Period";Integer)
        {
            CaptionML = ENU='Job Work Return Period',
                        ENN='Job Work Return Period';
            Editable = false;
        }
        field(95;"Excise Liability Created";Decimal)
        {
            CaptionML = ENU='Excise Liability Created',
                        ENN='Excise Liability Created';
            Editable = false;
        }
        field(96;"Excise Debit to Vendor";Boolean)
        {
            CaptionML = ENU='Excise Debit to Vendor',
                        ENN='Excise Debit to Vendor';
        }
        field(98;"Excise Amount Remaining";Decimal)
        {
            CaptionML = ENU='Excise Amount Remaining',
                        ENN='Excise Amount Remaining';
            Editable = false;
        }
        field(100;"Identification Mark";Text[20])
        {
            CaptionML = ENU='Identification Mark',
                        ENN='Identification Mark';
            Editable = false;
        }
        field(101;"Excise Amount (Total)";Decimal)
        {
            CaptionML = ENU='Excise Amount (Total)',
                        ENN='Excise Amount (Total)';
            Editable = false;
        }
        field(102;"GST Group Code";Code[20])
        {
            CaptionML = ENU='GST Group Code',
                        ENN='GST Group Code';
            TableRelation = "GST Group";
        }
        field(103;"HSN/SAC Code";Code[8])
        {
            CaptionML = ENU='HSN/SAC Code',
                        ENN='HSN/SAC Code';
            TableRelation = "HSN/SAC".Code WHERE ("GST Group Code"=FIELD("GST Group Code"));
        }
        field(104;"GST Base Amount";Decimal)
        {
            CaptionML = ENU='GST Base Amount',
                        ENN='GST Base Amount';
        }
        field(105;"Total GST Amount";Decimal)
        {
            CaptionML = ENU='Total GST Amount',
                        ENN='Total GST Amount';
        }
        field(106;"GST Liability Created";Decimal)
        {
            CaptionML = ENU='GST Liability Created',
                        ENN='GST Liability Created';
        }
        field(107;"GST Last Date";Date)
        {
            CaptionML = ENU='GST Last Date',
                        ENN='GST Last Date';
        }
        field(109;"GST Amount Remaining";Decimal)
        {
            CaptionML = ENU='GST Amount Remaining',
                        ENN='GST Amount Remaining';
        }
        field(110;"Job Work Return Period (GST)";Integer)
        {
            CaptionML = ENU='Job Work Return Period (GST)',
                        ENN='Job Work Return Period (GST)';
        }
        field(111;"GST Credit";Option)
        {
            CaptionML = ENU='GST Credit',
                        ENN='GST Credit';
            OptionCaptionML = ENU='Availment,Non-Availment',
                              ENN='Availment,Non-Availment';
            OptionMembers = Availment,"Non-Availment";
        }
        field(112;Exempted;Boolean)
        {
            CaptionML = ENU='Exempted',
                        ENN='Exempted';
        }
        field(113;"GST Jurisdiction Type";Option)
        {
            CaptionML = ENU='GST Jurisdiction Type',
                        ENN='GST Jurisdiction Type';
            Editable = false;
            OptionCaptionML = ENU='Intrastate,Interstate',
                              ENN='Intrastate,Interstate';
            OptionMembers = Intrastate,Interstate;
        }
        field(480;"Dimension Set ID";Integer)
        {
            CaptionML = ENU='Dimension Set ID',
                        ENN='Dimension Set ID';
        }
        field(60090;"Dimension Corrected";Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091;"OLD Dim Set ID";Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE ("Dimension Set ID"=FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }

    keys
    {
        key(Key1;"Deliver Challan No.","Line No.")
        {
            SumIndexFields = "Excise Amount","BED Amount","AED(GSI) Amount","SED Amount","SAED Amount","CESS Amount","NCCD Amount","eCess Amount","AED(TTA) Amount","ADET Amount","ADE Amount","SHE Cess Amount","ADC VAT Amount";
        }
        key(Key2;"Production Order No.","Production Order Line No.","Prod. Order Comp. Line No.")
        {
            SumIndexFields = "Excise Amount","BED Amount","AED(GSI) Amount","SED Amount","SAED Amount","CESS Amount","NCCD Amount","eCess Amount","AED(TTA) Amount","ADET Amount","ADE Amount","SHE Cess Amount","ADC VAT Amount";
        }
        key(Key3;"Deliver Challan No.","Item No.")
        {
        }
        key(Key4;"Item No.")
        {
        }
        key(Key5;"Document No.","Document Line No.","Production Order No.","Production Order Line No.","Prod. Order Comp. Line No.")
        {
        }
        key(Key6;"Vendor No.","Document No.","Document Line No.","Production Order No.","Production Order Line No.","Prod. Order Comp. Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        Text101 : TextConst ENU='Item Ledger entry no %1 is not adjusted yet; Excise details are not available.',ENN='Item Ledger entry no %1 is not adjusted yet; Excise details are not available.';
        Exciseamount : Decimal;
        AEDAmount : Decimal;
        BEDAmount : Decimal;
        SEDAmount : Decimal;
        SAEDAmount : Decimal;
        CESSAmount : Decimal;
        NCCDAmount : Decimal;
        Duty4Amount : Decimal;
        ExProdPostingGroup : Code[10];
        ExBusinessPostingGroup : Code[10];
        "AED(TTA)Amount" : Decimal;
        ADETAmount : Decimal;
        ADEAmount : Decimal;
        SHECessAmount : Decimal;
        ADCVATAmount : Decimal;
        LiabilityErr : TextConst Comment='Liability Document No. %1 already exists.',ENU='Liability Document No. %1 already exists.',ENN='Liability Document No. %1 already exists.';
        LoopCount : Integer;
        CostErr : TextConst Comment='%1 = Unit Cost',ENU='UnitCost should not be empty in %1.',ENN='UnitCost should not be empty in %1.';
        GSTStateErr : TextConst Comment='%1 = Code',ENU='GST cannot calculate this document %1.',ENN='GST cannot calculate this document %1.';
        IGSTAggTurnoverErr : TextConst ENU='Interstate transaction cannot be calculated against Unregistered Vendor whose aggregate turnover is more than 20 Lakhs.',ENN='Interstate transaction cannot be calculated against Unregistered Vendor whose aggregate turnover is more than 20 Lakhs.';
        IGSTUnregisteredErr : TextConst ENU='Interstate transactions are not allowed for supply of Goods from Unregistered Vendor.',ENN='Interstate transactions are not allowed for supply of Goods from Unregistered Vendor.';

    [LineStart(62435)]
    procedure UpdateExciseAmount(ItemLedgerEntry : Record "Item Ledger Entry");
    var
        ItemapplicationEntry : Record "Item Application Entry";
        ItemLedgerEntry2 : Record "Item Ledger Entry";
        ValueEntry : Record "Value Entry";
        ExciseEntry : Record "Excise Entry";
        Vendor : Record Vendor;
    begin
        Exciseamount := 0;
        BEDAmount := 0;
        AEDAmount := 0;
        SEDAmount := 0;
        SAEDAmount := 0;
        CESSAmount := 0;
        NCCDAmount := 0;
        Duty4Amount := 0;
        "AED(TTA)Amount" := 0;
        ADETAmount := 0;
        ADEAmount := 0;
        SHECessAmount := 0;
        ADCVATAmount := 0;
        LoopCount := 0;
        ExBusinessPostingGroup := '';
        ExProdPostingGroup := '';
        ItemapplicationEntry.SetRange("Inbound Item Entry No.",ItemLedgerEntry."Entry No.");
        if ItemapplicationEntry.Find('-') then
          repeat
            ItemLedgerEntry2.SetRange("Entry No.",ItemapplicationEntry."Transferred-from Entry No.");
            if ItemLedgerEntry2.FindFirst then begin
              if ItemLedgerEntry2."Entry Type" = ItemLedgerEntry2."Entry Type"::Transfer then
                UpdateExciseAmount(ItemLedgerEntry2);
              ValueEntry.SetRange("Item Ledger Entry No.",ItemLedgerEntry2."Entry No.");
              ValueEntry.SetFilter("Invoiced Quantity",'<>0');
              if ValueEntry.FindSet then
                repeat
                  ExciseEntry.Reset;
                  ExciseEntry.SetRange(Type,ExciseEntry.Type::Purchase);
                  ExciseEntry.SetRange("Document No.",ValueEntry."Document No.");
                  ExciseEntry.SetRange("Posting Date",ValueEntry."Posting Date");
                  ExciseEntry.SetFilter("Item No.",ValueEntry."Item No.");
                  if ExciseEntry.FindFirst then
                    if ExciseEntry.Quantity <> 0 then begin
                      Exciseamount += (ExciseEntry.Amount / ExciseEntry.Quantity);
                      BEDAmount += (ExciseEntry."BED Amount" / ExciseEntry.Quantity);
                      AEDAmount += (ExciseEntry."AED(GSI) Amount" / ExciseEntry.Quantity);
                      SEDAmount += (ExciseEntry."SED Amount" / ExciseEntry.Quantity);
                      SAEDAmount += (ExciseEntry."SAED Amount" / ExciseEntry.Quantity);
                      CESSAmount += (ExciseEntry."CESS Amount" / ExciseEntry.Quantity);
                      NCCDAmount += (ExciseEntry."NCCD Amount" / ExciseEntry.Quantity);
                      Duty4Amount += (ExciseEntry."eCess Amount" / ExciseEntry.Quantity);
                      "AED(TTA)Amount" += (ExciseEntry."AED(TTA) Amount" / ExciseEntry.Quantity);
                      ADETAmount += (ExciseEntry."ADET Amount" / ExciseEntry.Quantity);
                      ADEAmount += (ExciseEntry."ADE Amount" / ExciseEntry.Quantity);
                      SHECessAmount += (ExciseEntry."SHE Cess Amount" / ExciseEntry.Quantity);
                      ADCVATAmount += (ExciseEntry."ADC VAT Amount" / ExciseEntry.Quantity);
                      ExBusinessPostingGroup := ExciseEntry."Excise Bus. Posting Group";
                      ExProdPostingGroup := ExciseEntry."Excise Prod. Posting Group";
                      Vendor.Get(ExciseEntry."Sell-to/Buy-from No.");
                      //SSI := Vendor.SSI;
                      LoopCount := LoopCount + 1;
                    end;
                until ValueEntry.Next = 0;
            end;
          until ItemapplicationEntry.Next = 0
        else
          Error(Text101,ItemLedgerEntry."Entry No.");
    end;

    [LineStart(62495)]
    procedure UpdateChallanLine(ChallanLine : Record "Delivery Challan Line");
    begin
        CalcFields("Remaining Quantity");
        if LoopCount = 0 then
          LoopCount := 1;

        "Excise Amount (Total)" := Round((Exciseamount * Quantity) / LoopCount);
        "BED Amount" := Round((BEDAmount * "Remaining Quantity") / LoopCount);
        "AED(GSI) Amount" := Round((AEDAmount * "Remaining Quantity") / LoopCount);
        "SED Amount" := Round((SEDAmount * "Remaining Quantity") / LoopCount);
        "SAED Amount" := Round((SAEDAmount * "Remaining Quantity") / LoopCount);
        "CESS Amount" := Round((CESSAmount * "Remaining Quantity") / LoopCount);
        "NCCD Amount" := Round((NCCDAmount * "Remaining Quantity") / LoopCount);
        "eCess Amount" := Round((Duty4Amount * "Remaining Quantity") / LoopCount);
        "AED(TTA) Amount" := Round(("AED(TTA)Amount" * "Remaining Quantity") / LoopCount);
        "ADET Amount" := Round((ADETAmount * "Remaining Quantity") / LoopCount);
        "ADE Amount" := Round((ADEAmount * "Remaining Quantity") / LoopCount);
        "SHE Cess Amount" := Round((SHECessAmount * "Remaining Quantity") / LoopCount);
        "ADC VAT Amount" := Round((ADCVATAmount * "Remaining Quantity") / LoopCount);
        "Excise Amount" :=
          ("BED Amount" + "AED(GSI) Amount" + "SED Amount" + "SAED Amount" +
           "CESS Amount" + "NCCD Amount" + "eCess Amount" + "AED(TTA) Amount" +
           "ADET Amount" + "ADE Amount" + "SHE Cess Amount" + "ADC VAT Amount");
        "Excise Amount Remaining" := "Excise Amount" - "Excise Liability Created";
        "Excise Bus. Posting Group" := ExBusinessPostingGroup;
        "Excise Prod. Posting Group" := ExProdPostingGroup;
        SSI := SSI;
        Modify;
    end;

    [LineStart(62523)]
    procedure FillExciseLiability("Liability Date" : Date;LiabilityDocNo : Code[20]);
    var
        DeliveryChallanLine : Record "Delivery Challan Line";
        ExciseLiabilityLine : Record "Excise Liability Line";
        ExciseLiabilityLine2 : Record "Excise Liability Line";
        PostedExciseLiabilityLine : Record "Posted Excise Liability Line";
    begin
        PostedExciseLiabilityLine.Reset;
        PostedExciseLiabilityLine.SetRange("Liability Document No.",LiabilityDocNo);
        if PostedExciseLiabilityLine.FindFirst then
          Error(LiabilityErr,LiabilityDocNo);
        DeliveryChallanLine.CopyFilters(Rec);
        if DeliveryChallanLine.FindSet then
          repeat
            ExciseLiabilityLine.Init;
            ExciseLiabilityLine."Liability Document No." := LiabilityDocNo;
            ExciseLiabilityLine2.Reset;
            ExciseLiabilityLine2.SetRange("Liability Document No.",LiabilityDocNo);
            if ExciseLiabilityLine2.FindLast then
              ExciseLiabilityLine."Liability Document Line No." := ExciseLiabilityLine2."Liability Document Line No." + 10000
            else
              ExciseLiabilityLine."Liability Document Line No." := 10000;
            ExciseLiabilityLine."Liability Date" := "Liability Date";
            ExciseLiabilityLine.TransferFields(DeliveryChallanLine);
            ExciseLiabilityLine.Insert;
          until DeliveryChallanLine.Next = 0;

        //PAGE.RUN(PAGE::"Excise Liability Line");
    end;

    [LineStart(62546)]
    procedure PostedExciseLiability();
    var
        PostedExciseLiabilityLine : Record "Posted Excise Liability Line";
    begin
        PostedExciseLiabilityLine.Reset;
        PostedExciseLiabilityLine.SetRange("Deliver Challan No.","Deliver Challan No.");
        PostedExciseLiabilityLine.SetRange("Line No.","Line No.");
        //PAGE.RUN(PAGE::"Posted Excise Liability Line",PostedExciseLiabilityLine);
    end;

    [LineStart(62552)]
    procedure ShowDimensions();
    var
        DimMgt : Codeunit DimensionManagement;
    begin
        DimMgt.ShowDimensionSet("Dimension Set ID",StrSubstNo('%1 %2 %3',TableCaption,"Deliver Challan No.","Line No."));
    end;

    [LineStart(62555)]
    procedure UpdateGSTChallanLine(Item : Record Item);
    var
        Location : Record Location;
        Vendor : Record Vendor;
        CompanyInformation : Record "Company Information";
        DummyDeliveryChallanHeader : Record "Delivery Challan Header";
        PurchaseHeader : Record "Purchase Header";
        GSTGroup : Record "GST Group";
        GSTPerStateCode : Code[10];
        GSTJurisdiction : Option Intrastate,Interstate;
        TransactionType : Option Purchase,Sales,Transfer,Service,"Service Transfer",Production;
        SourceType : Option Vendor,Customer;
        UnitCost : Decimal;
    begin
        /*CALCFIELDS("Remaining Quantity");
        "HSN/SAC Code" := Item."HSN/SAC Code";
        "GST Group Code" := Item."GST Group Code";
        "GST Credit" := Item."GST Credit";
        Exempted := Item.Exempted;
        CompanyInformation.GET;
        CompanyInformation.TESTFIELD("GST Registration No.");
        IF Location.GET("Company Location") THEN;
        IF Vendor.GET("Vendor No.") THEN;
        Location.TESTFIELD("State Code");
        GSTPerStateCode :=
          GSTManagement.GetGSTConfiguration(
            SourceType::Customer,Location."State Code",Vendor."State Code",GSTJurisdiction);
        
        IF GSTPerStateCode = '' THEN
          ERROR(GSTStateErr,"Document No.");
        GSTGroup.GET("GST Group Code");
        DummyDeliveryChallanHeader.GET("Deliver Challan No.");
        PurchaseHeader.SETRANGE("No.",DummyDeliveryChallanHeader."Sub. order No.");
        PurchaseHeader.FINDFIRST;
        IF (PurchaseHeader."GST Vendor Type" = PurchaseHeader."GST Vendor Type"::Unregistered) AND
           (GSTJurisdiction = GSTJurisdiction::Interstate) AND
           (Vendor."Aggregate Turnover" = Vendor."Aggregate Turnover"::"More than 20 lakh") AND
           (GSTGroup."GST Group Type" = GSTGroup."GST Group Type"::Service)
        THEN
          ERROR(IGSTAggTurnoverErr);
        IF (PurchaseHeader."GST Vendor Type" = PurchaseHeader."GST Vendor Type"::Unregistered) AND
           (GSTJurisdiction = GSTJurisdiction::Interstate) AND
           (GSTGroup."GST Group Type" = GSTGroup."GST Group Type"::Goods)
        THEN
          ERROR(IGSTUnregisteredErr);
        UnitCost :=
          GetUnitCost("Production Order No.","Production Order Line No.","Item No.");
        
        IF UnitCost = 0 THEN
          ERROR(CostErr,"Item No.");
        
        "GST Jurisdiction Type" := GSTJurisdiction;
        "GST Base Amount" := UnitCost * "Remaining Quantity";
        "Total GST Amount" :=
          GSTManagement.CalculateGSTAmounts(
            "Deliver Challan No.","Line No.",GSTJurisdiction,GSTPerStateCode,"GST Group Code",
            "GST Last Date","GST Base Amount",TransactionType::Production,0,'',1,UnitCost,TRUE,
            Quantity,"Unit of Measure","Item No.");
        
        IF NOT (Vendor."GST Vendor Type" IN [Vendor."GST Vendor Type"::Composite,
                                             Vendor."GST Vendor Type"::Exempted]) AND NOT
           Exempted AND ("GST Base Amount" <> 0)
        THEN
          TESTFIELD("Total GST Amount");
        
        MODIFY;*/

    end;

    [LineStart(62609)]
    procedure FillGSTLiability(LiabilityDate : Date;LiabilityDocNo : Code[20]);
    var
        DeliveryChallanLine : Record "Delivery Challan Line";
        GSTLiabilityLine : Record "GST Liability Line";
        GSTLiabilityLine2 : Record "GST Liability Line";
        PostedGSTLiabilityLine : Record "Posted GST Liability Line";
        UnitCost : Decimal;
    begin
        PostedGSTLiabilityLine.Reset;
        PostedGSTLiabilityLine.SetRange("Liability Document No.",LiabilityDocNo);
        if PostedGSTLiabilityLine.FindFirst then
          Error(LiabilityErr,LiabilityDocNo);
        DeleteGSTliability;

        DeliveryChallanLine.CopyFilters(Rec);
        if DeliveryChallanLine.FindSet then
          repeat
            DeliveryChallanLine.CalcFields("Remaining Quantity");
            GSTLiabilityLine.Init;
            GSTLiabilityLine."Liability Document No." := LiabilityDocNo;
            GSTLiabilityLine2.Reset;
            GSTLiabilityLine2.SetRange("Liability Document No.",LiabilityDocNo);
            if GSTLiabilityLine2.FindLast then
              GSTLiabilityLine."Liability Document Line No." := GSTLiabilityLine2."Liability Document Line No." + 10000
            else
              GSTLiabilityLine."Liability Document Line No." := 10000;
            GSTLiabilityLine."Liability Date" := LiabilityDate;
            GSTLiabilityLine."Posting Date" := WorkDate;
            GSTLiabilityLine.TransferFields(DeliveryChallanLine);
            UnitCost :=
              GetUnitCost(DeliveryChallanLine."Production Order No.",DeliveryChallanLine."Production Order Line No.",
                DeliveryChallanLine."Item No.");
            if UnitCost = 0 then
              Error(CostErr,DeliveryChallanLine."Item No.");

            GSTLiabilityLine."GST Base Amount" := -1 * UnitCost * DeliveryChallanLine."Remaining Quantity";
            GSTLiabilityLine."GST Amount" := UpdateDetailedGSTEntryBuffer(DeliveryChallanLine,GSTLiabilityLine."GST Base Amount");
            if GSTLiabilityLine."GST Base Amount" <> 0 then
              GSTLiabilityLine.TestField("GST Base Amount");
            GSTLiabilityLine."GST Jurisdiction Type" := DeliveryChallanLine."GST Jurisdiction Type";
            GSTLiabilityLine.Insert;
          until DeliveryChallanLine.Next = 0;

        //PAGE.RUN(PAGE::"GST Liability Line");
    end;

    [LineStart(62647)]
    local procedure DeleteGSTliability();
    var
        DeliveryChallanLine : Record "Delivery Challan Line";
        GSTLiabilityLine : Record "GST Liability Line";
    begin
        DeliveryChallanLine.CopyFilters(Rec);
        if DeliveryChallanLine.FindSet then
          repeat
            GSTLiabilityLine.DeleteAll;
          until DeliveryChallanLine.Next = 0;
    end;

    [LineStart(62654)]
    procedure PostedGSTLiability();
    var
        PostedGSTLiabilityLine : Record "Posted GST Liability Line";
    begin
        PostedGSTLiabilityLine.Reset;
        PostedGSTLiabilityLine.SetRange("Deliver Challan No.","Deliver Challan No.");
        PostedGSTLiabilityLine.SetRange("Line No.","Line No.");
        //PAGE.RUN(PAGE::"Posted GST Liability",PostedGSTLiabilityLine);
    end;

    [LineStart(62660)]
    procedure GetUnitCost(ProdOrderNo : Code[20];ProdOrderLineNo : Integer;ItemNo : Code[20]) : Decimal;
    var
        ProdOrderComponent : Record "Prod. Order Component";
    begin
        ProdOrderComponent.SetRange("Prod. Order No.",ProdOrderNo);
        ProdOrderComponent.SetRange("Prod. Order Line No.",ProdOrderLineNo);
        ProdOrderComponent.SetRange("Item No.",ItemNo);
        if ProdOrderComponent.FindFirst then
          exit(ProdOrderComponent."Unit Cost");
    end;

    [LineStart(62667)]
    local procedure UpdateDetailedGSTEntryBuffer(DeliveryChallanLine : Record "Delivery Challan Line";Amount : Decimal) : Decimal;
    var
        DetailedGSTEntryBuffer : Record "Detailed GST Entry Buffer";
        TotalGST : Decimal;
        Sign : Integer;
    begin
        /*Sign := -1;
        DetailedGSTEntryBuffer.RESET;
        DetailedGSTEntryBuffer.SETCURRENTKEY("Transaction Type","Document Type","Document No.","Line No.");
        DetailedGSTEntryBuffer.SETRANGE("Transaction Type",DetailedGSTEntryBuffer."Transaction Type"::Production);
        DetailedGSTEntryBuffer.SETRANGE("Document No.",DeliveryChallanLine."Deliver Challan No.");
        DetailedGSTEntryBuffer.SETRANGE(Type,DetailedGSTEntryBuffer.Type::Item);
        DetailedGSTEntryBuffer.SETRANGE("No.",DeliveryChallanLine."Item No.");
        DetailedGSTEntryBuffer.SETRANGE("Line No.",DeliveryChallanLine."Line No.");
        IF DetailedGSTEntryBuffer.FINDSET THEN
          REPEAT
            DetailedGSTEntryBuffer."GST Base Amount" := Amount;
            DetailedGSTEntryBuffer."Delivery Challan Amount" := DetailedGSTEntryBuffer."GST Amount";
            IF DetailedGSTEntryBuffer."GST %" <> 0 THEN
              DetailedGSTEntryBuffer."GST Amount" :=
                GSTManagement.RoundGSTAmount(Amount * DetailedGSTEntryBuffer."GST %" / 100,'');
            DetailedGSTEntryBuffer.Quantity := Sign * DeliveryChallanLine."Remaining Quantity";
            TotalGST += DetailedGSTEntryBuffer."GST Amount";
            DetailedGSTEntryBuffer.MODIFY;
          UNTIL DetailedGSTEntryBuffer.NEXT = 0;
        EXIT(TotalGST);
        */

    end;
}

