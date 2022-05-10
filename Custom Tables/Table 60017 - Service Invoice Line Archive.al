table 60017 "Service Invoice Line Archive"
{
    // version B2B1.0


    fields
    {
        field(1;"Document No.";Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Service Header"."No." WHERE ("Document Type"=FIELD("Document Type"));
        }
        field(2;"Line No.";Integer)
        {
            Caption = 'Line No.';
        }
        field(3;"Service Item Line No.";Integer)
        {
            Caption = 'Service Item Line No.';
            TableRelation = "Service Item Line"."Line No." WHERE ("Document Type"=FIELD("Document Type"),
                                                                  "Document No."=FIELD("Document No."));
        }
        field(4;"Service Item No.";Code[20])
        {
            Caption = 'Service Item No.';
            TableRelation = "Service Item"."No.";
        }
        field(5;"Service Item Serial No.";Code[20])
        {
            Caption = 'Service Item Serial No.';
        }
        field(6;"Service Item Description";Text[30])
        {
            CalcFormula = Lookup("Service Item Line".Description WHERE ("Document Type"=FIELD("Document Type"),
                                                                        "Document No."=FIELD("Document No."),
                                                                        "Line No."=FIELD("Service Item Line No.")));
            Caption = 'Service Item Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7;"Posting Date";Date)
        {
            Caption = 'Posting Date';

            trigger OnValidate();
            var
                Confirmation : Boolean;
            begin
            end;
        }
        field(8;"Order Date";Date)
        {
            Caption = 'Order Date';
            Editable = false;
        }
        field(9;Type;Option)
        {
            Caption = 'Type';
            OptionCaption = '" ,Item,Resource,Cost"';
            OptionMembers = " ",Item,Resource,Cost;
        }
        field(10;"No.";Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type=CONST(" ")) "Standard Text"
                            ELSE IF (Type=CONST(Item)) Item
                            ELSE IF (Type=CONST(Resource)) Resource
                            ELSE IF (Type=CONST(Cost)) "Service Cost";

            trigger OnValidate();
            var
                ShowLocMessage : Boolean;
            begin
            end;
        }
        field(11;"Unit of Measure";Text[10])
        {
            Caption = 'Unit of Measure';
        }
        field(12;"Qty. per Unit of Measure";Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0:5;
            Editable = false;
            InitValue = 1;
        }
        field(13;"Variant Code";Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type=CONST(Item)) "Item Variant".Make WHERE ("Item No."=FIELD("No."));
        }
        field(14;"Bin Code";Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code"=FIELD("Location Code"));
        }
        field(15;"Customer No.";Code[20])
        {
            Caption = 'Customer No.';
            Editable = false;
            TableRelation = Customer;
        }
        field(16;"Ship-to Code";Code[10])
        {
            Caption = 'Ship-to Code';
            Editable = false;
            TableRelation = "Ship-to Address".Code WHERE ("Customer No."=FIELD("Customer No."));
        }
        field(17;"Bill-to Customer No.";Code[20])
        {
            Caption = 'Bill-to Customer No.';
            Editable = false;
            TableRelation = Customer;
        }
        field(18;Description;Text[50])
        {
            Caption = 'Description';
        }
        field(19;"Description 2";Text[50])
        {
            Caption = 'Description 2';
        }
        field(20;"Unit of Measure Code";Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type=CONST(Item)) "Item Unit of Measure".Code WHERE ("Item No."=FIELD("No."))
                            ELSE "Unit of Measure";

            trigger OnValidate();
            var
                UnitOfMeasureTranslation : Record "Unit of Measure Translation";
            begin
            end;
        }
        field(21;"Shortcut Dimension 1 Code";Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(1));
        }
        field(22;"Shortcut Dimension 2 Code";Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(2));
        }
        field(23;"Posting Group";Code[10])
        {
            Caption = 'Posting Group';
            TableRelation = IF (Type=CONST(Item)) "Inventory Posting Group";
        }
        field(24;"Currency Code";Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(25;"Currency Factor";Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0:15;
        }
        field(26;Posted;Boolean)
        {
            Caption = 'Posted';
            Editable = false;
            InitValue = false;
        }
        field(28;"Service Price Group Code";Code[10])
        {
            Caption = 'Service Price Group Code';
            TableRelation = "Service Price Group";
        }
        field(29;"Fault Area Code";Code[10])
        {
            Caption = 'Fault Area Code';
            TableRelation = "Fault Area";
        }
        field(30;"Symptom Code";Code[10])
        {
            Caption = 'Symptom Code';
            TableRelation = "Symptom Code";
        }
        field(31;"Fault Code";Code[10])
        {
            Caption = 'Fault Code';
            TableRelation = "Fault Code".Code WHERE ("Fault Area Code"=FIELD("Fault Area Code"),
                                                     "Symptom Code"=FIELD("Symptom Code"));
        }
        field(32;"Resolution Code";Code[10])
        {
            Caption = 'Resolution Code';
            TableRelation = "Resolution Code";
        }
        field(33;"Exclude Warranty";Boolean)
        {
            Caption = 'Exclude Warranty';
            Editable = true;
        }
        field(34;Warranty;Boolean)
        {
            Caption = 'Warranty';
            Editable = false;
        }
        field(35;"Job No.";Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job."No." WHERE ("Bill-to Customer No."=FIELD("Bill-to Customer No."));
        }
        field(36;"Contract No.";Code[20])
        {
            Caption = 'Contract No.';
            Editable = false;
            TableRelation = "Service Contract Header"."Contract No." WHERE ("Contract Type"=CONST(Contract));
        }
        field(38;"Contract Disc. %";Decimal)
        {
            Caption = 'Contract Disc. %';
            DecimalPlaces = 0:5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(39;"Warranty Disc. %";Decimal)
        {
            Caption = 'Warranty Disc. %';
            DecimalPlaces = 0:5;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(43;"Line Discount %";Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0:5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(44;"Line Discount Amount";Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Discount Amount';
            Editable = false;
        }
        field(45;"VAT Calculation Type";Option)
        {
            Caption = 'VAT Calculation Type';
            Editable = false;
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(46;"VAT Bus. Posting Group";Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(47;"VAT Prod. Posting Group";Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(48;"VAT Base Amount";Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Base Amount';
        }
        field(49;"VAT %";Decimal)
        {
            Caption = 'VAT %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(50;"Amount Including VAT";Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Including VAT';
            Editable = false;
        }
        field(51;"Tax Area Code";Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(52;"Tax Liable";Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(53;"Tax Group Code";Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(54;"Serv. Price Adjmt. Gr. Code";Code[10])
        {
            Caption = 'Serv. Price Adjmt. Gr. Code';
            Editable = false;
            TableRelation = "Service Price Adjustment Group";
        }
        field(55;"Customer Price Group";Code[10])
        {
            Caption = 'Customer Price Group';
            Editable = false;
            TableRelation = "Customer Price Group";
        }
        field(56;Quantity;Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0:5;
        }
        field(57;"Qty. to Invoice";Decimal)
        {
            Caption = 'Qty. to Invoice';
            DecimalPlaces = 0:5;
        }
        field(58;"Unit Price";Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
            Editable = true;
        }
        field(59;"Unit Cost";Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
        }
        field(60;"Unit Cost (LCY)";Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost (LCY)';
        }
        field(61;"Cost Amount";Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Cost Amount';
            Editable = false;
        }
        field(62;"Total Amount";Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Amount';
            Editable = false;
        }
        field(63;Amount;Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
            Editable = false;
        }
        field(65;"Component Line No.";Integer)
        {
            Caption = 'Component Line No.';
        }
        field(66;"Spare Part Action";Option)
        {
            Caption = 'Spare Part Action';
            OptionCaption = '" ,Permanent,Temporary,Component Replaced,Component Installed"';
            OptionMembers = " ",Permanent,"Temporary","Component Replaced","Component Installed";
        }
        field(67;"Fault Reason Code";Code[10])
        {
            Caption = 'Fault Reason Code';
            TableRelation = "Fault Reason Code";
        }
        field(68;"Replaced Item No.";Code[20])
        {
            Caption = 'Replaced Item No.';
            TableRelation = Item;
        }
        field(69;"Exclude Contract Discount";Boolean)
        {
            Caption = 'Exclude Contract Discount';
            Editable = true;
        }
        field(71;"Document Type";Option)
        {
            Caption = 'Document Type';
            Editable = false;
            OptionCaption = 'Quote,Order';
            OptionMembers = Quote,"Order";
        }
        field(73;"Work Type Code";Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(74;"Gen. Bus. Posting Group";Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(75;"Gen. Prod. Posting Group";Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(76;Chargeable;Boolean)
        {
            Caption = 'Chargeable';
        }
        field(78;"Responsibility Center";Code[10])
        {
            Caption = 'Responsibility Center';
            Editable = false;
            TableRelation = "Responsibility Center";
        }
        field(79;"Location Code";Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(81;"Attached to Line No.";Integer)
        {
            Caption = 'Attached to Line No.';
            Editable = false;
            TableRelation = "Service Line"."Customer No." WHERE (Field71=FIELD("Document Type"),
                                                                 "Document Type"=FIELD("Document No."));
        }
        field(82;"Item Category Code";Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category".Code;
        }
        field(83;Nonstock;Boolean)
        {
            Caption = 'Nonstock';
            Editable = false;
        }
        field(84;"Product Group Code";Code[10])
        {
            Caption = 'Product Group Code';
            TableRelation = "Product Group".Code WHERE ("Item Category Code"=FIELD("Item Category Code"));
        }
        field(85;"Quantity (Base)";Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0:5;
        }
        field(86;"Qty. to Invoice (Base)";Decimal)
        {
            Caption = 'Qty. to Invoice (Base)';
            DecimalPlaces = 0:5;
        }
        field(87;"Expected Receipt Date";Date)
        {
            Caption = 'Expected Receipt Date';
        }
        field(88;"Outstanding Qty. (Base)";Decimal)
        {
            Caption = 'Outstanding Qty. (Base)';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(89;"Reserved Qty. (Base)";Decimal)
        {
            CalcFormula = -Sum("Reservation Entry"."Quantity (Base)" WHERE ("Source Type"=CONST(5902),
                                                                            "Source Subtype"=FIELD("Document Type"),
                                                                            "Source ID"=FIELD("Document No."),
                                                                            "Source Ref. No."=FIELD("Line No."),
                                                                            "Reservation Status"=CONST(Reservation)));
            Caption = 'Reserved Qty. (Base)';
            DecimalPlaces = 0:5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(90;"Reserved Quantity";Decimal)
        {
            CalcFormula = -Sum("Reservation Entry".Quantity WHERE ("Source Type"=CONST(5902),
                                                                   "Source Subtype"=FIELD("Document Type"),
                                                                   "Source ID"=FIELD("Document No."),
                                                                   "Source Ref. No."=FIELD("Line No."),
                                                                   "Reservation Status"=CONST(Reservation)));
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0:5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(91;Reserve;Option)
        {
            Caption = 'Reserve';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(92;"Apply to Service Entry";Integer)
        {
            Caption = 'Apply to Service Entry';
            Editable = false;
        }
        field(93;"Substitution Available";Boolean)
        {
            Caption = 'Substitution Available';
            Editable = false;
        }
        field(94;"Price Adjmt. Status";Option)
        {
            Caption = 'Price Adjmt. Status';
            Editable = false;
            OptionCaption = '" ,Adjusted,Modified"';
            OptionMembers = " ",Adjusted,Modified;
        }
        field(97;"Line Discount Type";Option)
        {
            Caption = 'Line Discount Type';
            Editable = false;
            OptionCaption = '" ,Warranty Disc.,Contract Disc.,Line Disc.,Manual"';
            OptionMembers = " ","Warranty Disc.","Contract Disc.","Line Disc.",Manual;
        }
        field(7001;"Allow Line Disc.";Boolean)
        {
            Caption = 'Allow Line Disc.';
        }
        field(7002;"Customer Disc. Group";Code[10])
        {
            Caption = 'Customer Disc. Group';
            TableRelation = "Customer Discount Group";
        }
        field(60001;"Version No.";Integer)
        {
            Caption = 'Version No.';
        }
        field(60002;"Doc. No. Occurrence";Integer)
        {
            Caption = 'Doc. No. Occurrence';
        }
        field(60003;"Resolution Description";Text[50])
        {
            Description = 'Editable=No';
        }
        field(60004;"Fault Code Description";Text[50])
        {
            Description = 'Editable=No';
        }
        field(60005;"Fault Area Description";Text[50])
        {
            Description = 'Editable=No';
        }
        field(60006;"Symptom Description";Text[50])
        {
            Description = 'Editable=No';
        }
    }

    keys
    {
        key(Key1;"Document Type","Document No.","Doc. No. Occurrence","Version No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

