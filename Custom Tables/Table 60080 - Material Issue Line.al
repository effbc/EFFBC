table 60080 "Material Issue Line"
{
   // DrillDownPageID = 60141;
    //LookupPageID = 60141;

    fields
    {
        field(1;"Document No.";Code[20])
        {
            Caption = 'Document No.';
            Editable = false;
        }
        field(2;"Line No.";Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(3;"Item No.";Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item;

            trigger OnValidate();
            var
                TempTransferLine : Record "Transfer Line" temporary;
                Location : Record Location;
            begin
            end;
        }
        field(4;"Received Quantity";Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0:5;
            Editable = false;
            MinValue = 0;

            trigger OnValidate();
            var
                TransferHeader : Record "Transfer Header";
                Location : Record Location;
            begin
            end;
        }
        field(5;"Unit of Measure";Text[10])
        {
            Caption = 'Unit of Measure';
            Editable = false;
        }
        field(11;"Shortcut Dimension 1 Code";Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'Shortcut Dimension 1 Code';
            Editable = false;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(1));
        }
        field(12;"Shortcut Dimension 2 Code";Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Shortcut Dimension 2 Code';
            Editable = false;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(2));
        }
        field(13;Description;Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(22;"Qty. per Unit of Measure";Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0:5;
            Editable = false;
            InitValue = 1;
        }
        field(23;"Unit of Measure Code";Code[10])
        {
            Caption = 'Unit of Measure Code';
            Editable = false;
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No."=FIELD("Item No."));

            trigger OnValidate();
            var
                UnitOfMeasure : Record "Unit of Measure";
                UOMMgt : Codeunit "Unit of Measure Management";
            begin
            end;
        }
        field(32;"Description 2";Text[50])
        {
            Caption = 'Description 2';
            Editable = false;
        }
        field(36;"Transfer-from Code";Code[10])
        {
            Caption = 'Transfer-from Code';
            Editable = false;
            TableRelation = Location;
        }
        field(37;"Transfer-to Code";Code[10])
        {
            Caption = 'Transfer-to Code';
            Editable = false;
            TableRelation = Location;
        }
        field(38;"Item Ledger Entry No.";Integer)
        {
        }
        field(60001;"Prod. Order No.";Code[20])
        {
            Editable = false;
            TableRelation = "Production Order"."No." WHERE (Status=CONST(Released));
        }
        field(60002;"Prod. Order Line No.";Integer)
        {
            Editable = false;
            TableRelation = "Prod. Order Line"."Line No." WHERE ("Prod. Order No."=FIELD("Prod. Order No."),
                                                                 Status=CONST(Released));
        }
        field(60005;"Production BOM No.";Code[20])
        {
            Editable = false;

            trigger OnLookup();
            var
                ProductionOrderLine : Record "Prod. Order Line";
                ProductionBOMHeader : Record "Production BOM Header";
            begin
            end;
        }
        field(60008;"Prod. Order Comp. Line No.";Integer)
        {
            Caption = 'Prod. Order Comp. Line No.';
            Editable = false;
            TableRelation = "Prod. Order Component"."Line No." WHERE (Status=CONST(Released),
                                                                      "Prod. Order No."=FIELD("Prod. Order No."),
                                                                      "Prod. Order Line No."=FIELD("Prod. Order Line No."));
        }
        field(60009;"Material Issue Doc No";Code[20])
        {
        }
        field(60010;"Material Issue Doc Line No.";Integer)
        {
        }
        field(60011;"Original Qty";Decimal)
        {
            Description = 'b2b EFF';
        }
        field(60012;"Reason Code";Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
    }

    keys
    {
        key(Key1;"Document No.","Line No.")
        {
        }
        key(Key2;"Prod. Order No.","Prod. Order Line No.","Prod. Order Comp. Line No.")
        {
            SumIndexFields = "Received Quantity";
        }
        key(Key3;"Material Issue Doc No","Material Issue Doc Line No.")
        {
            SumIndexFields = "Received Quantity";
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        Error('Your can not Delete Lines');
    end;
}

