table 16321 "Sub Order Component List"
{
    // version NAVIN9.00.00.48067

    CaptionML = ENU='Sub Order Component List',
                ENN='Sub Order Component List';

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
                  Error(Text001);
            end;
        }
        field(9;"Unit of Measure Code";Code[10])
        {
            CaptionML = ENU='Unit of Measure Code',
                        ENN='Unit of Measure Code';
            Editable = false;

            trigger OnValidate();
            begin
                if "Line Type" = "Line Type"::Production then
                  Error(Text001);
            end;
        }
        field(10;"Prod. Order Qty.";Decimal)
        {
            CalcFormula = Sum("Prod. Order Component"."Expected Quantity" WHERE (Status=CONST(Released),
                                                                                 "Prod. Order No."=FIELD("Production Order No."),
                                                                                 "Prod. Order Line No."=FIELD("Production Order Line No."),
                                                                                 "Line No."=FIELD("Line No.")));
            CaptionML = ENU='Prod. Order Qty.',
                        ENN='Prod. Order Qty.';
            DecimalPlaces = 2:5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(11;"Quantity To Send";Decimal)
        {
            CaptionML = ENU='Quantity To Send',
                        ENN='Quantity To Send';

            trigger OnValidate();
            begin
                PurchaseLine.Get(PurchaseLine."Document Type"::Order,"Document No.","Document Line No.");
                //PurchaseLine.TESTFIELD(Status,PurchaseLine.Status::Open);
                Validate("Quantity To Send (Base)",CalcBaseQty("Quantity To Send"));
            end;
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
                CalcFields("Prod. Order Qty.");
                "Total Scrap Quantity" := ("Prod. Order Qty." * "Scrap %") / 100;
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
        field(52;"Total Qty at Vendor Location";Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE ("Location Code"=FIELD("Vendor Location"),
                                                                              "Item No."=FIELD("Item No.")));
            CaptionML = ENU='Total Qty at Vendor Location',
                        ENN='Total Qty at Vendor Location';
            Editable = false;
            FieldClass = FlowField;
        }
        field(53;"Total Scrap Quantity";Decimal)
        {
            CaptionML = ENU='Total Scrap Quantity',
                        ENN='Total Scrap Quantity';

            trigger OnValidate();
            begin
                CalcFields("Prod. Order Qty.");
                "Scrap %" := (100 * "Total Scrap Quantity") / "Prod. Order Qty.";
                GetProdOrderCompLine;
                ProdOrderComp.Validate("Scrap %","Scrap %");
                ProdOrderComp.Modify;
            end;
        }
        field(54;"Qty. at Vendor Location";Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE ("Entry Type"=CONST(Transfer),
                                                                              "Location Code"=FIELD("Vendor Location"),
                                                                              "Order Type"=CONST(Production),
                                                                              "Order No."=FIELD("Production Order No."),
                                                                              "Order Line No."=FIELD("Production Order Line No."),
                                                                              "Prod. Order Comp. Line No."=FIELD("Line No.")));
            CaptionML = ENU='Qty. at Vendor Location',
                        ENN='Qty. at Vendor Location';
            Editable = false;
            FieldClass = FlowField;
        }
        field(55;"Qty. for Rework";Decimal)
        {
            CaptionML = ENU='Qty. for Rework',
                        ENN='Qty. for Rework';
            Editable = false;
        }
        field(56;"Posting date";Date)
        {
            CaptionML = ENU='Posting date',
                        ENN='Posting date';
        }
        field(57;"Applies-to Entry (Sending)";Integer)
        {
            BlankZero = true;
            CaptionML = ENU='Applies-to Entry (Sending)',
                        ENN='Applies-to Entry (Sending)';
            TableRelation = "Item Ledger Entry"."Entry No." WHERE ("Location Code"=FIELD("Company Location"),
                                                                   "Item No."=FIELD("Item No."),
                                                                   Positive=CONST(true),
                                                                   Correction=CONST(false),
                                                                   Open=CONST(true));
        }
        field(58;"Qty. per Unit of Measure";Decimal)
        {
            CaptionML = ENU='Qty. per Unit of Measure',
                        ENN='Qty. per Unit of Measure';
            DecimalPlaces = 0:5;
            Editable = false;
            InitValue = 1;
        }
        field(59;"Job Work Return Period";Integer)
        {
            CaptionML = ENU='Job Work Return Period',
                        ENN='Job Work Return Period';
            MinValue = 0;
        }
        field(60;"Identification Mark";Text[20])
        {
            CaptionML = ENU='Identification Mark',
                        ENN='Identification Mark';
        }
        field(61;"Job Work Return Period (GST)";Integer)
        {
            CaptionML = ENU='Job Work Return Period (GST)',
                        ENN='Job Work Return Period (GST)';
            MinValue = 0;
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
          Error(Text001);
    end;

    trigger OnInsert();
    begin
        if "Line Type" = "Line Type"::Production then
          Error(Text001);
    end;

    var
        Text001 : TextConst ENU='Can Not Insert,Delete  OR Modify Component details ',ENN='Can Not Insert,Delete  OR Modify Component details ';
        ProdOrderComp : Record "Prod. Order Component";
        SubOderComponentList : Record "Sub Order Component List";
        PurchaseLine : Record "Purchase Line";
        Text002 : TextConst ENU='Production Order %1 does not exist in released state, \ No transaction allowed',ENN='Production Order %1 does not exist in released state, \ No transaction allowed';
        ReserveProdOrderComp : Codeunit "Prod. Order Comp.-Reserve";

    [LineStart(62249)]
    procedure GetProdOrderCompLine();
    begin
        ProdOrderComp.Reset;
        ProdOrderComp.SetRange(Status,ProdOrderComp.Status::Released);
        ProdOrderComp.SetFilter("Prod. Order No.","Production Order No.");
        ProdOrderComp.SetRange("Prod. Order Line No.","Production Order Line No.");
        ProdOrderComp.SetRange("Line No.","Line No.");
        if not ProdOrderComp.FindFirst then
          Error(Text002,"Production Order No.");
    end;

    [LineStart(62258)]
    procedure CalculateQtyToSend(PurchLine : Record "Purchase Line";Quantity : Decimal);
    begin
        SubOderComponentList.Reset;
        SubOderComponentList.SetFilter("Document No.",PurchLine."Document No.");
        SubOderComponentList.SetRange("Document Line No.",PurchLine."Line No.");
        SubOderComponentList.SetFilter("Parent Item No.",PurchLine."No.");
        SubOderComponentList.Find('-');
        repeat
          SubOderComponentList."Quantity To Send" := SubOderComponentList."Quantity per" * Quantity;
          SubOderComponentList.Modify;
        until SubOderComponentList.Next = 0;
    end;

    [LineStart(62269)]
    procedure OpenItemTrackingLines(SubOrderComp : Record "Sub Order Component List");
    begin
        ProdOrderComp.Reset;
        ProdOrderComp.SetRange(Status,ProdOrderComp.Status::Released);
        ProdOrderComp.SetFilter("Prod. Order No.","Production Order No.");
        ProdOrderComp.SetRange("Prod. Order Line No.","Production Order Line No.");
        ProdOrderComp.SetRange("Line No.","Line No.");
        GetProdOrderCompLine;
        ReserveProdOrderComp.CallItemTracking(ProdOrderComp);
    end;

    [LineStart(62278)]
    procedure UpdateIssueDetails(PurchLine : Record "Purchase Line";"Deliver Comp. For" : Decimal;"Qty. to Reject (Rework)" : Decimal);
    var
        SubOrderComponents : Record "Sub Order Component List";
    begin
        with PurchLine do begin
          SubOrderComponents.Reset;
          SubOrderComponents.SetFilter("Document No.","Document No.");
          SubOrderComponents.SetRange("Document Line No.","Line No.");
          SubOrderComponents.Find('-');
          repeat
            SubOrderComponents.Validate(
              "Quantity To Send",("Deliver Comp. For" * SubOrderComponents."Quantity per"));
            SubOrderComponents.Validate(
              "Qty. for Rework",(SubOrderComponents."Quantity per" * "Qty. to Reject (Rework)"));
            if SubOrderComponents."Scrap %" <> 0 then begin
              SubOrderComponents."Quantity To Send" := SubOrderComponents."Quantity To Send" +
                (SubOrderComponents."Quantity To Send" / 100) * SubOrderComponents."Scrap %";
              SubOrderComponents."Quantity To Send (Base)" := SubOrderComponents."Quantity To Send (Base)" +
                (SubOrderComponents."Quantity To Send (Base)" / 100) * SubOrderComponents."Scrap %";
            end;
            SubOrderComponents.Modify;
          until SubOrderComponents.Next = 0
        end;
    end;

    [LineStart(62299)]
    procedure CalcBaseQty(Qty : Decimal) : Decimal;
    begin
        TestField("Qty. per Unit of Measure");
        exit(Round(Qty * "Qty. per Unit of Measure",0.00001));
    end;

    [LineStart(62303)]
    procedure ShowDimensions();
    var
        DimMgt : Codeunit DimensionManagement;
    begin
        TestField("Document No.");
        TestField("Line No.");
        DimMgt.ShowDimensionSet("Dimension Set ID",StrSubstNo('%1 %2 %3',TableCaption,"Document No.","Line No."));
    end;

    [LineStart(62308)]
    procedure InitTrackingSpecification(var TrackingSpecification : Record "Tracking Specification");
    begin
        TrackingSpecification.Init;
        TrackingSpecification."Source Type" := DATABASE::"Sub Order Component List";
        TrackingSpecification."Item No." := "Item No.";
        TrackingSpecification."Location Code" := "Company Location";
        TrackingSpecification.Description := Description;
        TrackingSpecification."Variant Code" := "Variant Code";
        TrackingSpecification."Source ID" := "Production Order No.";
        TrackingSpecification."Source Batch Name" := '';
        TrackingSpecification."Source Prod. Order Line" := "Production Order Line No.";
        TrackingSpecification."Source Ref. No." := "Line No.";
        TrackingSpecification."Quantity (Base)" := "Quantity To Send (Base)";
        TrackingSpecification."Qty. to Handle" := "Quantity To Send";
        TrackingSpecification."Qty. to Handle (Base)" := "Quantity To Send (Base)";
        TrackingSpecification."Qty. to Invoice" := "Quantity To Send";
        TrackingSpecification."Qty. to Invoice (Base)" := "Quantity To Send (Base)";
        TrackingSpecification."Quantity Handled (Base)" := "Quantity To Send (Base)";
        TrackingSpecification."Quantity Invoiced (Base)" := "Quantity To Send (Base)";
        TrackingSpecification."Qty. per Unit of Measure" := "Qty. per Unit of Measure";
    end;

    [LineStart(62328)]
    procedure OpenItemTrackingLinesSubcon();
    var
        TrackingSpecification : Record "Tracking Specification";
        ItemTrackingForm : Page "Item Tracking Lines";
    begin
        TestField("Item No.");
        InitTrackingSpecification(TrackingSpecification);
        //ItemTrackingForm.SetSource(TrackingSpecification,WORKDATE);
        ItemTrackingForm.RunModal;
    end;
}

