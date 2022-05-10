table 60059 "Inprocess Inspection"
{
    // version B2B1.0


    fields
    {
        field(1;"Entry No.";Integer)
        {
            Caption = 'Entry No.';
        }
        field(2;"Item No.";Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(3;"Posting Date";Date)
        {
            Caption = 'Posting Date';
        }
        field(4;"Entry Type";Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Purchase,Sale,Positive Adjmt.,Negative Adjmt.,Transfer,Consumption,Output';
            OptionMembers = Purchase,Sale,"Positive Adjmt.","Negative Adjmt.",Transfer,Consumption,Output;
        }
        field(5;"Source No.";Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type"=CONST(Customer)) Customer
                            ELSE IF ("Source Type"=CONST(Vendor)) Vendor
                            ELSE IF ("Source Type"=CONST(Item)) Item;
        }
        field(6;"Document No.";Code[20])
        {
            Caption = 'Document No.';
        }
        field(7;Description;Text[50])
        {
            Caption = 'Description';
        }
        field(8;"Location Code";Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(12;Quantity;Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0:5;
        }
        field(13;"Remaining Quantity";Decimal)
        {
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0:5;
        }
        field(14;"Invoiced Quantity";Decimal)
        {
            Caption = 'Invoiced Quantity';
            DecimalPlaces = 0:5;
        }
        field(28;"Applies-to Entry";Integer)
        {
            Caption = 'Applies-to Entry';
        }
        field(29;Open;Boolean)
        {
            Caption = 'Open';
        }
        field(33;"Global Dimension 1 Code";Code[20])
        {
            CaptionClass = '1,1,1';
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(1));
        }
        field(34;"Global Dimension 2 Code";Code[20])
        {
            CaptionClass = '1,1,2';
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(2));
        }
        field(36;Positive;Boolean)
        {
            Caption = 'Positive';
        }
        field(41;"Source Type";Option)
        {
            Caption = 'Source Type';
            OptionCaption = '" ,Customer,Vendor,Item"';
            OptionMembers = " ",Customer,Vendor,Item;
        }
        field(47;"Drop Shipment";Boolean)
        {
            Caption = 'Drop Shipment';
        }
        field(50;"Transaction Type";Code[10])
        {
            Caption = 'Transaction Type';
            TableRelation = "Transaction Type";
        }
        field(51;"Transport Method";Code[10])
        {
            Caption = 'Transport Method';
            TableRelation = "Transport Method";
        }
        field(52;"Country Code";Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
        }
        field(59;"Entry/Exit Point";Code[10])
        {
            Caption = 'Entry/Exit Point';
            TableRelation = "Entry/Exit Point";
        }
        field(60;"Document Date";Date)
        {
            Caption = 'Document Date';
        }
        field(61;"External Document No.";Code[20])
        {
            Caption = 'External Document No.';
        }
        field(62;"Area";Code[10])
        {
            Caption = 'Area';
            TableRelation = Area;
        }
        field(63;"Transaction Specification";Code[10])
        {
            Caption = 'Transaction Specification';
            TableRelation = "Transaction Specification";
        }
        field(64;"No. Series";Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(70;"Reserved Quantity";Decimal)
        {
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE ("Reservation Status"=CONST(Reservation),
                                                                           "Source Type"=CONST(32),
                                                                           "Source Subtype"=CONST("0"),
                                                                           "Source ID"=CONST(''),
                                                                           "Source Batch Name"=CONST(''),
                                                                           "Source Prod. Order Line"=CONST(0),
                                                                           "Source Ref. No."=FIELD("Entry No.")));
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0:5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5401;"Prod. Order No.";Code[20])
        {
            Caption = 'Prod. Order No.';
        }
        field(5402;"Variant Code";Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Make WHERE ("Item No."=FIELD("Item No."));
        }
        field(5404;"Qty. per Unit of Measure";Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0:5;
        }
        field(5407;"Unit of Measure Code";Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No."=FIELD("Item No."));
        }
        field(5408;"Derived from Blanket Order";Boolean)
        {
            Caption = 'Derived from Blanket Order';
        }
        field(5700;"Cross-Reference No.";Code[20])
        {
            Caption = 'Cross-Reference No.';
        }
        field(5701;"Originally Ordered No.";Code[20])
        {
            Caption = 'Originally Ordered No.';
            TableRelation = Item;
        }
        field(5702;"Originally Ordered Var. Code";Code[10])
        {
            Caption = 'Originally Ordered Var. Code';
            TableRelation = "Item Variant".Make WHERE ("Item No."=FIELD("Originally Ordered No."));
        }
        field(5703;"Out-of-Stock Substitution";Boolean)
        {
            Caption = 'Out-of-Stock Substitution';
        }
        field(5704;"Item Category Code";Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(5705;Nonstock;Boolean)
        {
            Caption = 'Nonstock';
        }
        field(5706;"Purchasing Code";Code[10])
        {
            Caption = 'Purchasing Code';
            TableRelation = Purchasing;
        }
        field(5707;"Product Group Code";Code[10])
        {
            Caption = 'Product Group Code';
            TableRelation = "Product Group".Code WHERE ("Item Category Code"=FIELD("Item Category Code"));
        }
        field(5740;"Transfer Order No.";Code[20])
        {
            Caption = 'Transfer Order No.';
            Editable = false;
        }
        field(5800;"Completely Invoiced";Boolean)
        {
            Caption = 'Completely Invoiced';
        }
        field(5832;"Prod. Order Line No.";Integer)
        {
            Caption = 'Prod. Order Line No.';
        }
        field(5833;"Prod. Order Comp. Line No.";Integer)
        {
            Caption = 'Prod. Order Comp. Line No.';
        }
        field(5900;"Service Order No.";Code[20])
        {
            Caption = 'Service Order No.';
        }
        field(6500;"Serial No.";Code[20])
        {
            Caption = 'Serial No.';
        }
        field(6501;"Lot No.";Code[20])
        {
            Caption = 'Lot No.';
        }
        field(6502;"Warranty Date";Date)
        {
            Caption = 'Warranty Date';
        }
        field(6503;"Expiration Date";Date)
        {
            Caption = 'Expiration Date';
        }
        field(6602;"Return Reason Code";Code[10])
        {
            Caption = 'Return Reason Code';
            TableRelation = "Return Reason";
        }
        field(13700;"Export Document";Boolean)
        {
        }
        field(13701;"Import Document";Boolean)
        {
        }
        field(13702;"Excise %";Decimal)
        {
        }
        field(13703;"Excise Amount";Decimal)
        {
        }
        field(13745;"Declared Goods";Boolean)
        {
        }
        field(60001;Inspection;Boolean)
        {
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
    }

    fieldgroups
    {
    }
}

