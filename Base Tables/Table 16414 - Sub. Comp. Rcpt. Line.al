table 16414 "Sub. Comp. Rcpt. Line"
{
    // version NAVIN7.00

    CaptionML = ENU='Sub. Comp. Rcpt. Line',
                ENN='Sub. Comp. Rcpt. Line';
    LookupPageID = "Posted Purchase Receipt Lines";

    fields
    {
        field(2;"Buy-from Vendor No.";Code[20])
        {
            CaptionML = ENU='Buy-from Vendor No.',
                        ENN='Buy-from Vendor No.';
            Editable = false;
            TableRelation = Vendor;
        }
        field(3;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
        }
        field(4;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
        }
        field(6;"No.";Code[20])
        {
            CaptionML = ENU='No.',
                        ENN='No.';
            Description = '1';
            TableRelation = Item;
        }
        field(7;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        ENN='Location Code';
            Description = '1';
            TableRelation = Location WHERE ("Use As In-Transit"=CONST(false));
        }
        field(11;Description;Text[50])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
            Description = '1';
        }
        field(13;"Unit of Measure";Text[10])
        {
            CaptionML = ENU='Unit of Measure',
                        ENN='Unit of Measure';
            Description = '1';
        }
        field(15;Quantity;Decimal)
        {
            CaptionML = ENU='Quantity',
                        ENN='Quantity';
            DecimalPlaces = 0:5;
            Description = '1';
        }
        field(22;"Direct Unit Cost";Decimal)
        {
            AutoFormatType = 2;
            CaptionML = ENU='Direct Unit Cost',
                        ENN='Direct Unit Cost';
        }
        field(23;"Unit Cost (LCY)";Decimal)
        {
            AutoFormatType = 2;
            CaptionML = ENU='Unit Cost (LCY)',
                        ENN='Unit Cost (LCY)';
        }
        field(31;"Unit Price (LCY)";Decimal)
        {
            AutoFormatType = 2;
            CaptionML = ENU='Unit Price (LCY)',
                        ENN='Unit Price (LCY)';
        }
        field(65;"Order No.";Code[20])
        {
            CaptionML = ENU='Order No.',
                        ENN='Order No.';
        }
        field(66;"Order Line No.";Integer)
        {
            CaptionML = ENU='Order Line No.',
                        ENN='Order Line No.';
        }
        field(100;"Unit Cost";Decimal)
        {
            AutoFormatType = 2;
            CaptionML = ENU='Unit Cost',
                        ENN='Unit Cost';
            Editable = false;
        }
        field(480;"Dimension Set ID";Integer)
        {
            CaptionML = ENU='Dimension Set ID',
                        ENN='Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";

            trigger OnLookup();
            begin
                ShowDimensions;
            end;
        }
        field(5401;"Prod. Order No.";Code[20])
        {
            CaptionML = ENU='Prod. Order No.',
                        ENN='Prod. Order No.';
            Description = '1';
            TableRelation = "Production Order"."No." WHERE (Status=FILTER(Released|Finished));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5402;"Variant Code";Code[10])
        {
            CaptionML = ENU='Variant Code',
                        ENN='Variant Code';
            TableRelation = "Item Variant".Make WHERE ("Item No."=FIELD("No."));
        }
        field(5404;"Qty. per Unit of Measure";Decimal)
        {
            CaptionML = ENU='Qty. per Unit of Measure',
                        ENN='Qty. per Unit of Measure';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(5407;"Unit of Measure Code";Code[10])
        {
            CaptionML = ENU='Unit of Measure Code',
                        ENN='Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No."=FIELD("No."));
        }
        field(5415;"Quantity (Base)";Decimal)
        {
            CaptionML = ENU='Quantity (Base)',
                        ENN='Quantity (Base)';
            DecimalPlaces = 0:5;
        }
        field(5461;"Qty. Invoiced (Base)";Decimal)
        {
            CaptionML = ENU='Qty. Invoiced (Base)',
                        ENN='Qty. Invoiced (Base)';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(16321;"Sub Order Component Line No.";Integer)
        {
            CaptionML = ENU='Sub Order Component Line No.',
                        ENN='Sub Order Component Line No.';
        }
        field(16322;"Sub Order Component";Code[20])
        {
            CaptionML = ENU='Sub Order Component',
                        ENN='Sub Order Component';
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
        field(99000754;"Prod. Order Line No.";Integer)
        {
            CaptionML = ENU='Prod. Order Line No.',
                        ENN='Prod. Order Line No.';
            Description = '1';
            TableRelation = "Prod. Order Line"."Line No." WHERE (Status=FILTER(Released..),
                                                                 "Prod. Order No."=FIELD("Prod. Order No."));
        }
    }

    keys
    {
        key(Key1;"Document No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        DimMgt : Codeunit DimensionManagement;

    [LineStart(62813)]
    procedure ShowDimensions();
    begin
        DimMgt.ShowDimensionSet("Dimension Set ID",StrSubstNo('%1 %2 %3',TableCaption,"Document No.","Line No."));
    end;
}

