table 50005 "Mat.Issue Track. Specification"
{
    // version MI1.0

    Caption = 'Mat.Issue Track. Specification';
    // DrillDownPageID = 60200;
    Permissions = TableData "Mat.Issue Track. Specification" = rimd;

    fields
    {
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(3; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(4; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;

            trigger OnValidate();
            begin
                CheckSerialNoQty;
                /*IF Quantity < "Assay Quantity" THEN
                  "Actual Quantity" := "Actual Quantity" + ("Assay Quantity" - Quantity)
                */

            end;
        }
        field(5; "Actual Quantity"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(10; "Actual Qty to Receive"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(16; "Appl.-to Item Entry"; Integer)
        {
            Caption = 'Appl.-to Item Entry';
            TableRelation = "Item Ledger Entry";
        }
        field(24; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';

            trigger OnValidate();
            begin
                CheckSerialNoQty;
            end;
        }
        field(25; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(28; Positive; Boolean)
        {
            Caption = 'Positive';
        }
        field(29; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(40; "Warranty date"; Date)
        {
            Caption = 'Warranty date';
        }
        field(41; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            Editable = false;
        }
        field(62; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            // TableRelation = "Item Variant".Make WHERE ("Item No."=FIELD("Item No."));
        }
        field(63; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(65; "Quantity (Base)"; Decimal)
        {
        }
        field(66; "Order No."; Code[20])
        {
        }
        field(67; "Order Line No."; Integer)
        {

            trigger OnValidate();
            begin
                if "Material Issues Header".Get("Order No.") then begin
                    "Prod. Order No." := "Material Issues Header"."Prod. Order No.";
                    "Prod. Order Line No." := "Material Issues Header"."Prod. Order Line No.";
                    // MODIFY;
                end;
            end;
        }
        field(68; "Line No."; Integer)
        {
        }
        field(69; "Prod. Order No."; Code[20])
        {
        }
        field(70; "Prod. Order Line No."; Integer)
        {
        }
        field(71; "Product Group Code"; Code[20])
        {
        }
    }

    keys
    {
        key(Key1; "Order No.", "Order Line No.", "Item No.", "Location Code", "Lot No.", "Serial No.", "Appl.-to Item Entry")
        {
        }
        key(Key2; "Item No.", "Location Code", "Lot No.", "Serial No.", "Appl.-to Item Entry")
        {
            SumIndexFields = Quantity;
        }
        key(Key3; "Item No.", "Lot No.", "Order No.")
        {
        }
        key(Key4; "Prod. Order Line No.", "Product Group Code", "Item No.", "Lot No.", "Prod. Order No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        Text000: Label 'You cannot invoice more than %1 units.';
        Text001: Label 'You cannot handle more than %1 units.';
        Text002: Label 'must not be less than %1';
        Text003: Label '%1 must be -1, 0 or 1 when %2 is stated.';
        Item: Record Item;
        "Material Issues Header": Record "Material Issues Header";

    // [LineStart(810)]
    procedure CheckSerialNoQty();
    begin
        if "Serial No." <> '' then
            if not (Quantity in [-1, 0, 1]) then begin
                Message(Format("Item No."));
                Message(Format(Quantity));
                Error(Text003, FieldCaption(Quantity), FieldCaption("Serial No."));
            end;
    end;

    // [LineStart(819)]
    procedure CalcQty(BaseQty: Decimal): Decimal;
    begin
        if "Qty. per Unit of Measure" = 0 then
            "Qty. per Unit of Measure" := 1;
        exit(Round(BaseQty / "Qty. per Unit of Measure", 0.00001));
    end;
}

