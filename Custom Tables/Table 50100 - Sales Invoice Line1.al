table 50100 "Sales Invoice Line1"
{
    // version NAVW114.30

    CaptionML = ENU='Sales Invoice Line',
                ENN='Sales Invoice Line';
    DrillDownPageID = "Posted Sales Invoice Lines";
    LookupPageID = "Posted Sales Invoice Lines";
    Permissions = TableData "Item Ledger Entry"=r,
                  TableData "Value Entry"=r;

    fields
    {
        field(2;"Sell-to Customer No.";Code[20])
        {
            CaptionML = ENU='Sell-to Customer No.',
                        ENN='Sell-to Customer No.';
            Editable = false;
            TableRelation = Customer;
        }
        field(3;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
            TableRelation = "Sales Invoice Header";
        }
        field(4;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
        }
        field(5;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            OptionCaptionML = ENU=' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)',
                              ENN=' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,Resource,"Fixed Asset","Charge (Item)";
        }
        field(6;"No.";Code[20])
        {
            CaptionClass = GetCaptionClass(FieldNo("No."));
            CaptionML = ENU='No.',
                        ENN='No.';
            TableRelation = IF (Type=CONST("G/L Account")) "G/L Account"
                            ELSE IF (Type=CONST(Item)) Item
                            ELSE IF (Type=CONST(Resource)) Resource
                            ELSE IF (Type=CONST("Fixed Asset")) "Fixed Asset"
                            ELSE IF (Type=CONST("Charge (Item)")) "Item Charge";
        }
        field(7;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        ENN='Location Code';
            TableRelation = Location WHERE ("Use As In-Transit"=CONST(false));
        }
        field(8;"Posting Group";Code[20])
        {
            CaptionML = ENU='Posting Group',
                        ENN='Posting Group';
            Editable = false;
            TableRelation = IF (Type=CONST(Item)) "Inventory Posting Group"
                            ELSE IF (Type=CONST("Fixed Asset")) "FA Posting Group";
        }
        field(10;"Shipment Date";Date)
        {
            CaptionML = ENU='Shipment Date',
                        ENN='Shipment Date';
        }
        field(11;Description;Text[100])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
        }
        field(12;"Description 2";Text[50])
        {
            CaptionML = ENU='Description 2',
                        ENN='Description 2';
        }
        field(13;"Unit of Measure";Text[50])
        {
            CaptionML = ENU='Unit of Measure',
                        ENN='Unit of Measure';
        }
        field(15;Quantity;Decimal)
        {
            CaptionML = ENU='Quantity',
                        ENN='Quantity';
            DecimalPlaces = 0:5;
        }
        field(22;"Unit Price";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 2;
            CaptionClass = GetCaptionClass(FieldNo("Unit Price"));
            CaptionML = ENU='Unit Price',
                        ENN='Unit Price';
        }
        field(23;"Unit Cost (LCY)";Decimal)
        {
            AutoFormatType = 2;
            CaptionML = ENU='Unit Cost (LCY)',
                        ENN='Unit Cost (LCY)';
        }
        field(25;"VAT %";Decimal)
        {
            CaptionML = ENU='VAT %',
                        ENN='VAT %';
            DecimalPlaces = 0:5;
            Editable = false;
        }
        field(27;"Line Discount %";Decimal)
        {
            CaptionML = ENU='Line Discount %',
                        ENN='Line Discount %';
            DecimalPlaces = 0:5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(28;"Line Discount Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Line Discount Amount',
                        ENN='Line Discount Amount';
        }
        field(29;Amount;Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Amount',
                        ENN='Amount';
        }
        field(30;"Amount Including VAT";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Amount Including VAT',
                        ENN='Amount Including VAT';
        }
        field(32;"Allow Invoice Disc.";Boolean)
        {
            CaptionML = ENU='Allow Invoice Disc.',
                        ENN='Allow Invoice Disc.';
            InitValue = true;
        }
        field(34;"Gross Weight";Decimal)
        {
            CaptionML = ENU='Gross Weight',
                        ENN='Gross Weight';
            DecimalPlaces = 0:5;
        }
        field(35;"Net Weight";Decimal)
        {
            CaptionML = ENU='Net Weight',
                        ENN='Net Weight';
            DecimalPlaces = 0:5;
        }
        field(36;"Units per Parcel";Decimal)
        {
            CaptionML = ENU='Units per Parcel',
                        ENN='Units per Parcel';
            DecimalPlaces = 0:5;
        }
        field(37;"Unit Volume";Decimal)
        {
            CaptionML = ENU='Unit Volume',
                        ENN='Unit Volume';
            DecimalPlaces = 0:5;
        }
        field(38;"Appl.-to Item Entry";Integer)
        {
            AccessByPermission = TableData Item=R;
            CaptionML = ENU='Appl.-to Item Entry',
                        ENN='Appl.-to Item Entry';
        }
        field(40;"Shortcut Dimension 1 Code";Code[20])
        {
            CaptionClass = '1,2,1';
            CaptionML = ENU='Shortcut Dimension 1 Code',
                        ENN='Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(1));
        }
        field(41;"Shortcut Dimension 2 Code";Code[20])
        {
            CaptionClass = '1,2,2';
            CaptionML = ENU='Shortcut Dimension 2 Code',
                        ENN='Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(2));
        }
        field(42;"Customer Price Group";Code[10])
        {
            CaptionML = ENU='Customer Price Group',
                        ENN='Customer Price Group';
            TableRelation = "Customer Price Group";
        }
        field(45;"Job No.";Code[20])
        {
            CaptionML = ENU='Job No.',
                        ENN='Job No.';
            TableRelation = Job;
        }
        field(52;"Work Type Code";Code[10])
        {
            CaptionML = ENU='Work Type Code',
                        ENN='Work Type Code';
            TableRelation = "Work Type";
        }
        field(63;"Shipment No.";Code[20])
        {
            CaptionML = ENU='Shipment No.',
                        ENN='Shipment No.';
            Editable = false;
        }
        field(64;"Shipment Line No.";Integer)
        {
            CaptionML = ENU='Shipment Line No.',
                        ENN='Shipment Line No.';
            Editable = false;
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
        field(68;"Bill-to Customer No.";Code[20])
        {
            CaptionML = ENU='Bill-to Customer No.',
                        ENN='Bill-to Customer No.';
            Editable = false;
            TableRelation = Customer;
        }
        field(69;"Inv. Discount Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Inv. Discount Amount',
                        ENN='Inv. Discount Amount';
        }
        field(73;"Drop Shipment";Boolean)
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer"=R;
            CaptionML = ENU='Drop Shipment',
                        ENN='Drop Shipment';
        }
        field(74;"Gen. Bus. Posting Group";Code[20])
        {
            CaptionML = ENU='Gen. Bus. Posting Group',
                        ENN='Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(75;"Gen. Prod. Posting Group";Code[20])
        {
            CaptionML = ENU='Gen. Prod. Posting Group',
                        ENN='Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(77;"VAT Calculation Type";Option)
        {
            CaptionML = ENU='VAT Calculation Type',
                        ENN='VAT Calculation Type';
            OptionCaptionML = ENU='Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax',
                              ENN='Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(78;"Transaction Type";Code[10])
        {
            CaptionML = ENU='Transaction Type',
                        ENN='Transaction Nature Code';
            TableRelation = "Transaction Type";
        }
        field(79;"Transport Method";Code[10])
        {
            CaptionML = ENU='Transport Method',
                        ENN='Transport Method';
            TableRelation = "Transport Method";
        }
        field(80;"Attached to Line No.";Integer)
        {
            CaptionML = ENU='Attached to Line No.',
                        ENN='Attached to Line No.';
            TableRelation = "Sales Invoice Line"."Line No." WHERE ("Document No."=FIELD("Document No."));
        }
        field(81;"Exit Point";Code[10])
        {
            CaptionML = ENU='Exit Point',
                        ENN='Exit Point';
            TableRelation = "Entry/Exit Point";
        }
        field(82;"Area";Code[10])
        {
            CaptionML = ENU='Area',
                        ENN='Area';
            TableRelation = Area;
        }
        field(83;"Transaction Specification";Code[10])
        {
            CaptionML = ENU='Transaction Specification',
                        ENN='Transaction Specification';
            TableRelation = "Transaction Specification";
        }
        field(84;"Tax Category";Code[10])
        {
            CaptionML = ENU='Tax Category',
                        ENN='Tax Category';
        }
        field(85;"Tax Area Code";Code[20])
        {
            CaptionML = ENU='Tax Area Code',
                        ENN='VAT Area Code';
            TableRelation = "Tax Area";
        }
        field(86;"Tax Liable";Boolean)
        {
            CaptionML = ENU='Tax Liable',
                        ENN='VAT Liable';
        }
        field(87;"Tax Group Code";Code[20])
        {
            CaptionML = ENU='Tax Group Code',
                        ENN='VAT Group Code';
            TableRelation = "Tax Group";
        }
        field(88;"VAT Clause Code";Code[20])
        {
            CaptionML = ENU='VAT Clause Code',
                        ENN='VAT Clause Code';
            TableRelation = "VAT Clause";
        }
        field(89;"VAT Bus. Posting Group";Code[20])
        {
            CaptionML = ENU='VAT Bus. Posting Group',
                        ENN='VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(90;"VAT Prod. Posting Group";Code[20])
        {
            CaptionML = ENU='VAT Prod. Posting Group',
                        ENN='VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(97;"Blanket Order No.";Code[20])
        {
            CaptionML = ENU='Blanket Order No.',
                        ENN='Blanket Order No.';
            TableRelation = "Sales Header"."No." WHERE ("Document Type"=CONST("Blanket Order"));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(98;"Blanket Order Line No.";Integer)
        {
            CaptionML = ENU='Blanket Order Line No.',
                        ENN='Blanket Order Line No.';
            TableRelation = "Sales Line"."Line No." WHERE ("Document Type"=CONST("Blanket Order"),
                                                           "Document No."=FIELD("Blanket Order No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(99;"VAT Base Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='VAT Base Amount',
                        ENN='VAT Base Amount';
            Editable = false;
        }
        field(100;"Unit Cost";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 2;
            CaptionML = ENU='Unit Cost',
                        ENN='Unit Cost';
            Editable = false;
        }
        field(101;"System-Created Entry";Boolean)
        {
            CaptionML = ENU='System-Created Entry',
                        ENN='System-Created Entry';
            Editable = false;
        }
        field(103;"Line Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionClass = GetCaptionClass(FieldNo("Line Amount"));
            CaptionML = ENU='Line Amount',
                        ENN='Line Amount';
        }
        field(104;"VAT Difference";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='VAT Difference',
                        ENN='VAT Difference';
        }
        field(106;"VAT Identifier";Code[20])
        {
            CaptionML = ENU='VAT Identifier',
                        ENN='VAT Identifier';
            Editable = false;
        }
        field(107;"IC Partner Ref. Type";Option)
        {
            CaptionML = ENU='IC Partner Ref. Type',
                        ENN='IC Partner Ref. Type';
            OptionCaptionML = ENU=' ,G/L Account,Item,,,Charge (Item),Cross reference,Common Item No.',
                              ENN=' ,G/L Account,Item,,,Charge (Item),Cross reference,Common Item No.';
            OptionMembers = " ","G/L Account",Item,,,"Charge (Item)","Cross reference","Common Item No.";
        }
        field(108;"IC Partner Reference";Code[20])
        {
            CaptionML = ENU='IC Partner Reference',
                        ENN='IC Partner Reference';
        }
        field(123;"Prepayment Line";Boolean)
        {
            CaptionML = ENU='Prepayment Line',
                        ENN='Prepayment Line';
            Editable = false;
        }
        field(130;"IC Partner Code";Code[20])
        {
            CaptionML = ENU='IC Partner Code',
                        ENN='IC Partner Code';
            TableRelation = "IC Partner";
        }
        field(131;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
        }
        field(145;"Pmt. Discount Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Pmt. Discount Amount',
                        ENN='Pmt. Discount Amount';
        }
        field(180;"Line Discount Calculation";Option)
        {
            CaptionML = ENU='Line Discount Calculation',
                        ENN='Line Discount Calculation';
            OptionCaptionML = ENU='None,%,Amount',
                              ENN='None,%,Amount';
            OptionMembers = "None","%",Amount;
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
        field(1001;"Job Task No.";Code[20])
        {
            CaptionML = ENU='Job Task No.',
                        ENN='Job Task No.';
            Editable = false;
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No."=FIELD("Job No."));
        }
        field(1002;"Job Contract Entry No.";Integer)
        {
            CaptionML = ENU='Job Contract Entry No.',
                        ENN='Job Contract Entry No.';
            Editable = false;
        }
        field(1700;"Deferral Code";Code[10])
        {
            CaptionML = ENU='Deferral Code',
                        ENN='Deferral Code';
            TableRelation = "Deferral Template"."Deferral Code";
        }
        field(5402;"Variant Code";Code[10])
        {
            CaptionML = ENU='Variant Code',
                        ENN='Variant Code';
            TableRelation = IF (Type=CONST(Item)) "Item Variant".Make WHERE ("Item No."=FIELD("No."));
        }
        field(5403;"Bin Code";Code[20])
        {
            CaptionML = ENU='Bin Code',
                        ENN='Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code"=FIELD("Location Code"),
                                            "Item Filter"=FIELD("No."),
                                            "Variant Filter"=FIELD("Variant Code"));
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
            TableRelation = IF (Type=CONST(Item)) "Item Unit of Measure".Code WHERE ("Item No."=FIELD("No."))
                            ELSE "Unit of Measure";
        }
        field(5415;"Quantity (Base)";Decimal)
        {
            CaptionML = ENU='Quantity (Base)',
                        ENN='Quantity (Base)';
            DecimalPlaces = 0:5;
        }
        field(5600;"FA Posting Date";Date)
        {
            CaptionML = ENU='FA Posting Date',
                        ENN='FA Posting Date';
        }
        field(5602;"Depreciation Book Code";Code[10])
        {
            CaptionML = ENU='Depreciation Book Code',
                        ENN='Depreciation Book Code';
            TableRelation = "Depreciation Book";
        }
        field(5605;"Depr. until FA Posting Date";Boolean)
        {
            CaptionML = ENU='Depr. until FA Posting Date',
                        ENN='Depr. until FA Posting Date';
        }
        field(5612;"Duplicate in Depreciation Book";Code[10])
        {
            CaptionML = ENU='Duplicate in Depreciation Book',
                        ENN='Duplicate in Depreciation Book';
            TableRelation = "Depreciation Book";
        }
        field(5613;"Use Duplication List";Boolean)
        {
            CaptionML = ENU='Use Duplication List',
                        ENN='Use Duplication List';
        }
        field(5700;"Responsibility Center";Code[10])
        {
            CaptionML = ENU='Responsibility Center',
                        ENN='Responsibility Centre';
            TableRelation = "Responsibility Center";
        }
        field(5705;"Cross-Reference No.";Code[20])
        {
            AccessByPermission = TableData "Item Cross Reference"=R;
            CaptionML = ENU='Cross-Reference No.',
                        ENN='Cross-Reference No.';
        }
        field(5706;"Unit of Measure (Cross Ref.)";Code[10])
        {
            CaptionML = ENU='Unit of Measure (Cross Ref.)',
                        ENN='Unit of Measure (Cross Ref.)';
            TableRelation = IF (Type=CONST(Item)) "Item Unit of Measure".Code WHERE ("Item No."=FIELD("No."));
        }
        field(5707;"Cross-Reference Type";Option)
        {
            CaptionML = ENU='Cross-Reference Type',
                        ENN='Cross-Reference Type';
            OptionCaptionML = ENU=' ,Customer,Vendor,Bar Code',
                              ENN=' ,Customer,Vendor,Bar Code';
            OptionMembers = " ",Customer,Vendor,"Bar Code";
        }
        field(5708;"Cross-Reference Type No.";Code[30])
        {
            CaptionML = ENU='Cross-Reference Type No.',
                        ENN='Cross-Reference Type No.';
        }
        field(5709;"Item Category Code";Code[20])
        {
            CaptionML = ENU='Item Category Code',
                        ENN='Item Category Code';
            TableRelation = IF (Type=CONST(Item)) "Item Category";
        }
        field(5710;Nonstock;Boolean)
        {
            CaptionML = ENU='Catalog',
                        ENN='Catalogue';
        }
        field(5711;"Purchasing Code";Code[10])
        {
            CaptionML = ENU='Purchasing Code',
                        ENN='Purchasing Code';
            TableRelation = Purchasing;
        }
        field(5712;"Product Group Code";Code[10])
        {
            CaptionML = ENU='Product Group Code',
                        ENN='Product Group Code';
            ObsoleteReason = 'Product Groups became first level children of Item Categories.';
            ObsoleteState = Removed;
            TableRelation = "Product Group".Code WHERE ("Item Category Code"=FIELD("Item Category Code"));
            ValidateTableRelation = false;
        }
        field(5811;"Appl.-from Item Entry";Integer)
        {
            AccessByPermission = TableData Item=R;
            CaptionML = ENU='Appl.-from Item Entry',
                        ENN='Appl.-from Item Entry';
            MinValue = 0;
        }
        field(6608;"Return Reason Code";Code[10])
        {
            CaptionML = ENU='Return Reason Code',
                        ENN='Return Reason Code';
            TableRelation = "Return Reason";
        }
        field(7001;"Allow Line Disc.";Boolean)
        {
            CaptionML = ENU='Allow Line Disc.',
                        ENN='Allow Line Disc.';
            InitValue = true;
        }
        field(7002;"Customer Disc. Group";Code[20])
        {
            CaptionML = ENU='Customer Disc. Group',
                        ENN='Customer Disc. Group';
            TableRelation = "Customer Discount Group";
        }
        field(7004;"Price description";Text[80])
        {
            CaptionML = ENU='Price description',
                        ENN='Price description';
        }
        field(13701;"Tax Amount";Decimal)
        {
            CaptionML = ENU='Tax Amount',
                        ENN='Tax Amount';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0:4;
            Editable = true;
        }
        field(13702;"Excise Bus. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Bus. Posting Group',
                        ENN='Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(13703;"Excise Prod. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Prod. Posting Group',
                        ENN='Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Prod. Posting Group";
        }
        field(13708;"Excise Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Excise Amount',
                        ENN='Excise Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13711;"Amount Including Excise";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Amount Including Excise',
                        ENN='Amount Including Excise';
            DataClassification = ToBeClassified;
        }
        field(13712;"Excise Base Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Excise Base Amount',
                        ENN='Excise Base Amount';
            DataClassification = ToBeClassified;
        }
        field(13715;"Excise Accounting Type";Option)
        {
            CaptionML = ENU='Excise Accounting Type',
                        ENN='Excise Accounting Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU='With CENVAT,Without CENVAT',
                              ENN='With CENVAT,Without CENVAT';
            OptionMembers = "With CENVAT","Without CENVAT";
        }
        field(13719;"Excise Base Quantity";Decimal)
        {
            CaptionML = ENU='Excise Base Quantity',
                        ENN='Excise Base Quantity';
            DataClassification = ToBeClassified;
        }
        field(13721;"Tax %";Decimal)
        {
            CaptionML = ENU='Tax %',
                        ENN='Tax %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0:2;
            Editable = true;
        }
        field(13722;"Amount Including Tax";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Amount Including Tax',
                        ENN='Amount Including Tax';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13724;"Amount Added to Excise Base";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Amount Added to Excise Base',
                        ENN='Amount Added to Excise Base';
            DataClassification = ToBeClassified;
        }
        field(13725;"Amount Added to Tax Base";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Amount Added to Tax Base',
                        ENN='Amount Added to Tax Base';
            DataClassification = ToBeClassified;
        }
        field(13727;"Tax Base Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Tax Base Amount',
                        ENN='Tax Base Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13734;"Surcharge %";Decimal)
        {
            CaptionML = ENU='Surcharge %',
                        ENN='Surcharge %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13735;"Surcharge Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Surcharge Amount',
                        ENN='Surcharge Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13736;"Concessional Code";Code[10])
        {
            CaptionML = ENU='Concessional Code',
                        ENN='Concessional Code';
            DataClassification = ToBeClassified;
            TableRelation = "Concessional Codes";
        }
        field(13742;"Assessee Code";Code[10])
        {
            CaptionML = ENU='Assessee Code',
                        ENN='Assessee Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "Assessee Code";
        }
        field(13743;"TDS/TCS %";Decimal)
        {
            CaptionML = ENU='TDS/TCS %',
                        ENN='TDS/TCS %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 2:3;
            Editable = false;
        }
        field(13746;"Bal. TDS/TCS Including SHECESS";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Bal. TDS/TCS Including SHECESS',
                        ENN='Bal. TDS/TCS Including SHECESS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13749;"Claim Deferred Excise";Boolean)
        {
            CaptionML = ENU='Claim Deferred Excise',
                        ENN='Claim Deferred Excise';
            DataClassification = ToBeClassified;
        }
        field(13750;"Capital Item";Boolean)
        {
            CaptionML = ENU='Capital Item',
                        ENN='Capital Item';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13755;"BED Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='BED Amount',
                        ENN='BED Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13758;"AED(GSI) Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='AED(GSI) Amount',
                        ENN='AED(GSI) Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13759;"SED Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='SED Amount',
                        ENN='SED Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13769;"SAED Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='SAED Amount',
                        ENN='SAED Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13770;"CESS Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='CESS Amount',
                        ENN='CESS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13771;"NCCD Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='NCCD Amount',
                        ENN='NCCD Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13772;"eCess Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='eCess Amount',
                        ENN='eCess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13796;"Form Code";Code[10])
        {
            CaptionML = ENU='Form Code',
                        ENN='Form Code';
            DataClassification = ToBeClassified;

            trigger OnLookup();
            var
                StateForm : Record "State Forms";
            begin
            end;
        }
        field(13797;"Form No.";Code[10])
        {
            CaptionML = ENU='Form No.',
                        ENN='Form No.';
            DataClassification = ToBeClassified;
        }
        field(13798;State;Code[10])
        {
            CaptionML = ENU='State',
                        ENN='State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(13799;"TDS/TCS Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='TDS/TCS Amount',
                        ENN='TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16340;"Amount To Customer";Decimal)
        {
            CaptionML = ENU='Amount To Customer',
                        ENN='Amount To Customer';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16342;"Charges To Customer";Decimal)
        {
            CaptionML = ENU='Charges To Customer',
                        ENN='Charges To Customer';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16343;"TDS/TCS Base Amount";Decimal)
        {
            CaptionML = ENU='TDS/TCS Base Amount',
                        ENN='TDS/TCS Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16363;"Surcharge Base Amount";Decimal)
        {
            CaptionML = ENU='Surcharge Base Amount',
                        ENN='Surcharge Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16377;"Service Tax Group";Code[20])
        {
            CaptionML = ENU='Service Tax Group',
                        ENN='Service Tax Group';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Groups".Code;

            trigger OnValidate();
            var
                CompanyInfo : Record "Company Information";
            begin
            end;
        }
        field(16379;"Service Tax Base";Decimal)
        {
            CaptionML = ENU='Service Tax Base',
                        ENN='Service Tax Base';
            DataClassification = ToBeClassified;
        }
        field(16380;"Service Tax Amount";Decimal)
        {
            CaptionML = ENU='Service Tax Amount',
                        ENN='Service Tax Amount';
            DataClassification = ToBeClassified;
        }
        field(16381;"Service Tax Registration No.";Code[20])
        {
            CaptionML = ENU='Service Tax Registration No.',
                        ENN='Service Tax Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Registration Nos.".Code;
        }
        field(16383;"eCESS % on TDS/TCS";Decimal)
        {
            CaptionML = ENU='eCESS % on TDS/TCS',
                        ENN='eCESS % on TDS/TCS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16384;"eCESS on TDS/TCS Amount";Decimal)
        {
            CaptionML = ENU='eCESS on TDS/TCS Amount',
                        ENN='eCESS on TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16385;"Total TDS/TCS Incl. SHE CESS";Decimal)
        {
            CaptionML = ENU='Total TDS/TCS Incl. SHE CESS',
                        ENN='Total TDS/TCS Incl. SHE CESS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16386;"Per Contract";Boolean)
        {
            CaptionML = ENU='Per Contract',
                        ENN='Per Contract';
            DataClassification = ToBeClassified;
        }
        field(16391;"Service Tax eCess Amount";Decimal)
        {
            CaptionML = ENU='Service Tax eCess Amount',
                        ENN='Service Tax eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(16452;"ADET Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='ADET Amount',
                        ENN='ADET Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16455;"AED(TTA) Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='AED(TTA) Amount',
                        ENN='AED(TTA) Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16456;"Free Supply";Boolean)
        {
            CaptionML = ENU='Free Supply',
                        ENN='Free Supply';
            DataClassification = ToBeClassified;
        }
        field(16459;"ADE Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='ADE Amount',
                        ENN='ADE Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16490;"Assessable Value";Decimal)
        {
            CaptionML = ENU='Assessable Value',
                        ENN='Assessable Value';
            DataClassification = ToBeClassified;
        }
        field(16491;"VAT Type";Option)
        {
            CaptionML = ENU='VAT Type',
                        ENN='VAT Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU=' ,Item,Capital Goods',
                              ENN=' ,Item,Capital Goods';
            OptionMembers = " ",Item,"Capital Goods";
        }
        field(16494;"SHE Cess Amount";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='SHE Cess Amount',
                        ENN='SHE Cess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16496;"Service Tax SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='Service Tax SHE Cess Amount',
                        ENN='Service Tax SHE Cess Amount';
            DataClassification = ToBeClassified;
        }
        field(16500;"Direct Debit To PLA / RG";Boolean)
        {
            CaptionML = ENU='Direct Debit To PLA / RG',
                        ENN='Direct Debit To PLA / RG';
            DataClassification = ToBeClassified;
        }
        field(16502;"TCS Nature of Collection";Code[10])
        {
            CaptionML = ENU='TCS Nature of Collection',
                        ENN='TCS Nature of Collection';
            DataClassification = ToBeClassified;
            TableRelation = "TCS Nature Of Collection";
        }
        field(16503;"TCS Type";Option)
        {
            CaptionML = ENU='TCS Type',
                        ENN='TCS Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU=' ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,1H',
                              ENN=' ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,1H';
            OptionMembers = " ",A,B,C,D,E,F,G,H,I,J,K,L,M,N,"1H";
        }
        field(16504;"Standard Deduction %";Decimal)
        {
            CaptionML = ENU='Standard Deduction %',
                        ENN='Standard Deduction %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16505;"Standard Deduction Amount";Decimal)
        {
            CaptionML = ENU='Standard Deduction Amount',
                        ENN='Standard Deduction Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16519;Supplementary;Boolean)
        {
            CaptionML = ENU='Supplementary',
                        ENN='Supplementary';
            DataClassification = ToBeClassified;
        }
        field(16520;"Source Document Type";Option)
        {
            CaptionML = ENU='Source Document Type',
                        ENN='Source Document Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU='Posted Invoice,Posted Credit Memo',
                              ENN='Posted Invoice,Posted Credit Memo';
            OptionMembers = "Posted Invoice","Posted Credit Memo";
        }
        field(16521;"Source Document No.";Code[20])
        {
            CaptionML = ENU='Source Document No.',
                        ENN='Source Document No.';
            DataClassification = ToBeClassified;
        }
        field(16524;"ADC VAT Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='ADC VAT Amount',
                        ENN='ADC VAT Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16525;"CIF Amount";Decimal)
        {
            CaptionML = ENU='CIF Amount',
                        ENN='CIF Amount';
            DataClassification = ToBeClassified;
        }
        field(16526;"BCD Amount";Decimal)
        {
            CaptionML = ENU='BCD Amount',
                        ENN='BCD Amount';
            DataClassification = ToBeClassified;
        }
        field(16527;CVD;Boolean)
        {
            CaptionML = ENU='CVD',
                        ENN='CVD';
            DataClassification = ToBeClassified;
        }
        field(16528;"Process Carried Out";Code[10])
        {
            CaptionML = ENU='Process Carried Out',
                        ENN='Process Carried Out';
            DataClassification = ToBeClassified;
            TableRelation = "Process Carried Out".Code;
        }
        field(16529;"Identification Mark";Text[30])
        {
            CaptionML = ENU='Identification Mark',
                        ENN='Identification Mark';
            DataClassification = ToBeClassified;
        }
        field(16530;"Re-Dispatch";Boolean)
        {
            CaptionML = ENU='Re-Dispatch',
                        ENN='Re-Dispatch';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16531;"Return Rcpt line No.";Integer)
        {
            CaptionML = ENU='Return Rcpt line No.',
                        ENN='Return Rcpt line No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16532;"Qty. to be Re-Dispatched";Decimal)
        {
            CaptionML = ENU='Qty. to be Re-Dispatched',
                        ENN='Qty. to be Re-Dispatched';
            DataClassification = ToBeClassified;
        }
        field(16533;"Return Re-Dispatch Rcpt. No.";Code[20])
        {
            CaptionML = ENU='Return Re-Dispatch Rcpt. No.',
                        ENN='Return Re-Dispatch Rcpt. No.';
            DataClassification = ToBeClassified;
        }
        field(16534;"SHE Cess % on TDS/TCS";Decimal)
        {
            CaptionML = ENU='SHE Cess % on TDS/TCS',
                        ENN='SHE Cess % on TDS/TCS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16535;"SHE Cess on TDS/TCS Amount";Decimal)
        {
            CaptionML = ENU='SHE Cess on TDS/TCS Amount',
                        ENN='SHE Cess on TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16537;"MRP Price";Decimal)
        {
            CaptionML = ENU='MRP Price',
                        ENN='MRP Price';
            DataClassification = ToBeClassified;
        }
        field(16538;MRP;Boolean)
        {
            CaptionML = ENU='MRP',
                        ENN='MRP';
            DataClassification = ToBeClassified;
        }
        field(16539;"Abatement %";Decimal)
        {
            CaptionML = ENU='Abatement %',
                        ENN='Abatement %';
            DataClassification = ToBeClassified;
        }
        field(16540;"PIT Structure";Code[10])
        {
            CaptionML = ENU='PIT Structure',
                        ENN='PIT Structure';
            DataClassification = ToBeClassified;
            TableRelation = "Structure Header";
        }
        field(16541;"Price Inclusive of Tax";Boolean)
        {
            CaptionML = ENU='Price Inclusive of Tax',
                        ENN='Price Inclusive of Tax';
            DataClassification = ToBeClassified;
        }
        field(16542;"Unit Price Incl. of Tax";Decimal)
        {
            CaptionML = ENU='Unit Price Incl. of Tax',
                        ENN='Unit Price Incl. of Tax';
            DataClassification = ToBeClassified;
        }
        field(16545;"Amount To Customer UPIT";Decimal)
        {
            CaptionML = ENU='Amount To Customer UPIT',
                        ENN='Amount To Customer UPIT';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16546;"UPIT Rounding Inserted";Boolean)
        {
            CaptionML = ENU='UPIT Rounding Inserted',
                        ENN='UPIT Rounding Inserted';
            DataClassification = ToBeClassified;
        }
        field(16550;"Custom eCess Amount";Decimal)
        {
            CaptionML = ENU='Custom eCess Amount',
                        ENN='Custom eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(16551;"Custom SHECess Amount";Decimal)
        {
            CaptionML = ENU='Custom SHECess Amount',
                        ENN='Custom SHECess Amount';
            DataClassification = ToBeClassified;
        }
        field(16552;"Excise Effective Rate";Decimal)
        {
            CaptionML = ENU='Excise Effective Rate',
                        ENN='Excise Effective Rate';
            DataClassification = ToBeClassified;
        }
        field(16560;"Service Tax SBC %";Decimal)
        {
            CaptionML = ENU='Service Tax SBC %',
                        ENN='Service Tax SBC %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16561;"Service Tax SBC Amount";Decimal)
        {
            CaptionML = ENU='Service Tax SBC Amount',
                        ENN='Service Tax SBC Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16562;"Service Tax SBC Amount (Intm)";Decimal)
        {
            CaptionML = ENU='Service Tax SBC Amount(Intm)',
                        ENN='Service Tax SBC Amount(Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16563;"KK Cess%";Decimal)
        {
            CaptionML = ENU='KK Cess%',
                        ENN='KK Cess%';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16564;"KK Cess Amount";Decimal)
        {
            CaptionML = ENU='KK Cess Amount',
                        ENN='KK Cess Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16601;"GST Place of Supply";Option)
        {
            CaptionML = ENU='GST Place of Supply',
                        ENN='GST Place of Supply';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU=' ,Bill-to Address,Ship-to Address,Location Address ',
                              ENN=' ,Bill-to Address,Ship-to Address,Location Address ';
            OptionMembers = " ","Bill-to Address","Ship-to Address","Location Address ";
        }
        field(16602;"GST Group Code";Code[20])
        {
            CaptionML = ENU='GST Group Code',
                        ENN='GST Group Code';
            DataClassification = ToBeClassified;
            TableRelation = "GST Group";
        }
        field(16603;"GST Group Type";Option)
        {
            CaptionML = ENU='GST Group Type',
                        ENN='GST Group Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU='Goods,Service',
                              ENN='Goods,Service';
            OptionMembers = Goods,Service;
        }
        field(16604;"GST Base Amount";Decimal)
        {
            CaptionML = ENU='GST Base Amount',
                        ENN='GST Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16605;"GST %";Decimal)
        {
            CaptionML = ENU='GST %',
                        ENN='GST %';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16606;"Total GST Amount";Decimal)
        {
            CaptionML = ENU='Total GST Amount',
                        ENN='Total GST Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16607;"HSN/SAC Code";Code[8])
        {
            CaptionML = ENU='HSN/SAC Code',
                        ENN='HSN/SAC Code';
            DataClassification = ToBeClassified;
            TableRelation = "HSN/SAC".Code WHERE ("GST Group Code"=FIELD("GST Group Code"));
        }
        field(16608;"GST Jurisdiction Type";Option)
        {
            CaptionML = ENU='GST Jurisdiction Type',
                        ENN='GST Jurisdiction Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU='Intrastate,Interstate',
                              ENN='Intrastate,Interstate';
            OptionMembers = Intrastate,Interstate;
        }
        field(16609;"Invoice Type";Option)
        {
            CaptionML = ENU='Invoice Type',
                        ENN='Invoice Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU=' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable',
                              ENN=' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable';
            OptionMembers = " ","Bill of Supply",Export,Supplementary,"Debit Note","Non-GST",Taxable;
        }
        field(16610;Exempted;Boolean)
        {
            CaptionML = ENU='Exempted',
                        ENN='Exempted';
            DataClassification = ToBeClassified;
        }
        field(16612;"GST On Assessable Value";Boolean)
        {
            CaptionML = ENU='GST On Assessable Value',
                        ENN='GST On Assessable Value';
            DataClassification = ToBeClassified;
        }
        field(16613;"GST Assessable Value (LCY)";Decimal)
        {
            CaptionML = ENU='GST Assessable Value (LCY)',
                        ENN='GST Assessable Value (LCY)';
            DataClassification = ToBeClassified;
        }
        field(16624;"Non-GST Line";Boolean)
        {
            CaptionML = ENU='Non-GST Line',
                        ENN='Non-GST Line';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16625;"Sales Amount";Decimal)
        {
            CaptionML = ENU='Sales Amount',
                        ENN='Sales Amount';
            DataClassification = ToBeClassified;
        }
        field(50002;"Packet No";Integer)
        {
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(50100;"Description New";Text[250])
        {
            DataClassification = ToBeClassified;
            Description = 'B2BPG';
        }
        field(50101;"Description New 1";Text[250])
        {
            DataClassification = ToBeClassified;
            Description = 'B2BPG';
        }
        field(50102;"Transfer Method 1";Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'B2BPG';
        }
        field(60001;"Production BOM No.";Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
            TableRelation = "Production BOM Header"."No.";
        }
        field(60002;"Production Bom Version No.";Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No."=FIELD("Production BOM No."));
        }
        field(60003;"Estimated Unit Cost";Decimal)
        {
            CalcFormula = Sum("Design Worksheet Header"."Total Cost" WHERE ("Document No."=FIELD("Document No."),
                                                                            "Document Type"=CONST(Order),
                                                                            "Document Line No."=FIELD("Line No.")));
            Description = 'B2B';
            FieldClass = FlowField;
        }
        field(60004;"Estimated Total Unit Cost";Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60005;"RDSO Unit Charges";Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60006;"Prod Start Date";Date)
        {
            DataClassification = ToBeClassified;
            Description = 'LD Start Date has been modified as Prod start date due to unavailability of feilds';
        }
        field(60007;"LD Amount";Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60008;"RDSO Charges Paid By";Option)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
            OptionMembers = "By ESPL","By Customer";
        }
        field(60009;"RDSO Inspection Required";Boolean)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60010;"RDSO Inspection By";Option)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
            OptionMembers = Us,Them;
        }
        field(60011;"RDSO Charges";Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60012;"Schedule Type";Option)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
            OptionCaption = '" ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z"';
            OptionMembers = " ",A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z;
        }
        field(60020;"Material Reuired Date";Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(60024;"CL_CNSGN  rcvd Qty";Integer)
        {
            DataClassification = ToBeClassified;
            Description = 'added  by sujani for renucha mam';
        }
        field(60025;"CL_CNSGN  rcvd Date1";Date)
        {
            DataClassification = ToBeClassified;
        }
        field(60090;"Dimension Corrected";Boolean)
        {
            DataClassification = ToBeClassified;
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091;"OLD Dim Set ID";Integer)
        {
            DataClassification = ToBeClassified;
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE ("Dimension Set ID"=FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
        field(60100;"Order No.1";Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60101;"Order Line No.1";Integer)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60102;"Document Date";Date)
        {
            CalcFormula = Lookup("Sales Invoice Header"."Posting Date" WHERE ("No."=FIELD("Document No.")));
            FieldClass = FlowField;
        }
        field(60103;"External Document No.";Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(60110;"Supply Portion";Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(60111;"Retention Portion";Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(60112;"Type of Item";Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ","Only Supply","Supply & Inst","Supply & Laying","Only Inst";
        }
        field(60113;"Schedule No";Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(60114;"Unitcost(LOA)";Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(60118;MainCategory;Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
            OptionMembers = "  ",Sales,"No Issue","R&D","Need to Specify",CS,MKT,LMD;
        }
        field(60119;SubCategory;Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
            OptionMembers = "  ","Yet to Start","Under Inspection","Ready for Inspection","Under Production","Inspection Completed","Ready For Dispatch","BOM Pending","PO Pending","BOI Pending","Docs Pending","RDSO renewal Pending","S/W Pending","Call Letter Pending","Customer side Pending","Installation material pending","Site not ready","R&D Pending","Installation Inprogress",Commisioned,"Completion letter taken","Yet to dispatch";
        }
        field(60120;Reason;Text[100])
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
        }
        field(60121;Remarks;Text[100])
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
        }
        field(60122;ProductGroup;Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
        }
        field(60123;Main_CATEGORY;Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by Vishnu Priya on 20-11-2018 for analysis purpose';
            OptionCaption = ',Sales,No Issue,R&D,Need to Specify,CS,MKT';
            OptionMembers = ,Sales,"No Issue","R&D","Need to Specify",CS,MKT;
        }
        field(60124;"Call Letter Status";Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
            OptionMembers = " ",Received,Pending,NA,"Cust.Pending";
        }
        field(60125;"RDSO Number";Code[15])
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
        }
        field(60126;Vertical;Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
            OptionMembers = " ","Smart Signalling","Smart Cities","Smart Building",IOT,other;
        }
        field(60127;"Deviated Dispatch Date";DateTime)
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
        }
        field(60128;"Dispatch Date";DateTime)
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
        }
        field(60131;"Tentative RDSO Date";Date)
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Vishnu Priya on 14-12-2018';
        }
    }

    keys
    {
        key(Key1;"Document No.","Line No.")
        {
        }
        key(Key2;"Blanket Order No.","Blanket Order Line No.")
        {
        }
        key(Key3;"Sell-to Customer No.")
        {
        }
        key(Key4;"Sell-to Customer No.",Type,"Document No.")
        {
            Enabled = false;
            MaintainSQLIndex = false;
        }
        key(Key5;"Shipment No.","Shipment Line No.")
        {
        }
        key(Key6;"Job Contract Entry No.")
        {
        }
        key(Key7;"Bill-to Customer No.")
        {
        }
        key(Key8;"Order No.","Order Line No.","Posting Date")
        {
        }
        key(Key9;"Document No.","Location Code")
        {
            MaintainSQLIndex = false;
            SumIndexFields = Amount,"Amount Including VAT";
        }
    }

    fieldgroups
    {
        fieldgroup(Brick;"No.",Description,"Line Amount","Price description",Quantity,"Unit of Measure Code")
        {
        }
    }

    trigger OnDelete();
    var
        SalesDocLineComments : Record "Sales Comment Line";
        PostedDeferralHeader : Record "Posted Deferral Header";
    begin
        SalesDocLineComments.SetRange("Document Type",SalesDocLineComments."Document Type"::"Posted Invoice");
        SalesDocLineComments.SetRange("No.","Document No.");
        SalesDocLineComments.SetRange("Document Line No.","Line No.");
        if not SalesDocLineComments.IsEmpty then
          SalesDocLineComments.DeleteAll;

        PostedDeferralHeader.DeleteHeader(DeferralUtilities.GetSalesDeferralDocType,'','',
          SalesDocLineComments."Document Type"::"Posted Invoice","Document No.","Line No.");
    end;

    var
        SalesInvoiceHeader : Record "Sales Invoice Header";
        Currency : Record Currency;
        DimMgt : Codeunit DimensionManagement;
        UOMMgt : Codeunit "Unit of Measure Management";
        DeferralUtilities : Codeunit "Deferral Utilities";
        PriceDescriptionTxt : TextConst Comment='{Locked}',ENU='x%1 (%2%3/%4)',ENN='x%1 (%2%3/%4)';
        PriceDescriptionWithLineDiscountTxt : TextConst Comment='{Locked}',ENU='x%1 (%2%3/%4) - %5%',ENN='x%1 (%2%3/%4) - %5%';

    [Scope('Personalization')]
    [LineStart(1047)]
    procedure GetCurrencyCode() : Code[10];
    begin
        GetHeader;
        exit(SalesInvoiceHeader."Currency Code");
    end;

    [Scope('Personalization')]
    [LineStart(1051)]
    procedure ShowDimensions();
    begin
        DimMgt.ShowDimensionSet("Dimension Set ID",StrSubstNo('%1 %2 %3',TableCaption,"Document No.","Line No."));
    end;

    [Scope('Personalization')]
    [LineStart(1054)]
    procedure ShowItemTrackingLines();
    var
        ItemTrackingDocMgt : Codeunit "Item Tracking Doc. Management";
    begin
        ItemTrackingDocMgt.ShowItemTrackingForInvoiceLine(RowID1);
    end;

    [Scope('Personalization')]
    [LineStart(1057)]
    procedure CalcVATAmountLines(SalesInvHeader : Record "Sales Invoice Header";var TempVATAmountLine : Record "VAT Amount Line" temporary);
    begin
    end;

    [Scope('Personalization')]
    [LineStart(1060)]
    procedure GetLineAmountExclVAT() : Decimal;
    begin
        GetHeader;
        if not SalesInvoiceHeader."Prices Including VAT" then
          exit("Line Amount");

        exit(Round("Line Amount" / (1 + "VAT %" / 100),Currency."Amount Rounding Precision"));
    end;

    [Scope('Personalization')]
    [LineStart(1067)]
    procedure GetLineAmountInclVAT() : Decimal;
    begin
        GetHeader;
        if SalesInvoiceHeader."Prices Including VAT" then
          exit("Line Amount");

        exit(Round("Line Amount" * (1 + "VAT %" / 100),Currency."Amount Rounding Precision"));
    end;

    [LineStart(1074)]
    local procedure GetHeader();
    begin
        if SalesInvoiceHeader."No." = "Document No." then
          exit;
        if not SalesInvoiceHeader.Get("Document No.") then
          SalesInvoiceHeader.Init;

        if SalesInvoiceHeader."Currency Code" = '' then
          Currency.InitRoundingPrecision
        else
          if not Currency.Get(SalesInvoiceHeader."Currency Code") then
            Currency.InitRoundingPrecision;
    end;

    [LineStart(1086)]
    local procedure GetFieldCaption(FieldNumber : Integer) : Text[100];
    var
        "Field" : Record "Field";
    begin
        Field.Get(DATABASE::"Sales Invoice Line",FieldNumber);
        exit(Field."Field Caption");
    end;

    [Scope('Personalization')]
    [LineStart(1090)]
    procedure GetCaptionClass(FieldNumber : Integer) : Text[80];
    begin
        GetHeader;
        case FieldNumber of
          FieldNo("No."):
            exit(StrSubstNo('3,%1',GetFieldCaption(FieldNumber)));
          else begin
            if SalesInvoiceHeader."Prices Including VAT" then
              exit('2,1,' + GetFieldCaption(FieldNumber));
            exit('2,0,' + GetFieldCaption(FieldNumber));
          end
        end;
    end;

    [Scope('Personalization')]
    [LineStart(1102)]
    procedure RowID1() : Text[250];
    var
        ItemTrackingMgt : Codeunit "Item Tracking Management";
    begin
        exit(ItemTrackingMgt.ComposeRowID(DATABASE::"Sales Invoice Line",
            0,"Document No.",'',0,"Line No."));
    end;

    [Scope('Personalization')]
    [LineStart(1106)]
    procedure GetSalesShptLines(var TempSalesShptLine : Record "Sales Shipment Line" temporary);
    var
        SalesShptLine : Record "Sales Shipment Line";
        ItemLedgEntry : Record "Item Ledger Entry";
        ValueEntry : Record "Value Entry";
    begin
        TempSalesShptLine.Reset;
        TempSalesShptLine.DeleteAll;

        if Type <> Type::Item then
          exit;

        FilterPstdDocLineValueEntries(ValueEntry);
        if ValueEntry.FindSet then
          repeat
            ItemLedgEntry.Get(ValueEntry."Item Ledger Entry No.");
            if ItemLedgEntry."Document Type" = ItemLedgEntry."Document Type"::"Sales Shipment" then
              if SalesShptLine.Get(ItemLedgEntry."Document No.",ItemLedgEntry."Document Line No.") then begin
                TempSalesShptLine.Init;
                TempSalesShptLine := SalesShptLine;
                if TempSalesShptLine.Insert then;
              end;
          until ValueEntry.Next = 0;
    end;

    [Scope('Personalization')]
    [LineStart(1125)]
    procedure CalcShippedSaleNotReturned(var ShippedQtyNotReturned : Decimal;var RevUnitCostLCY : Decimal;ExactCostReverse : Boolean);
    var
        TempItemLedgEntry : Record "Item Ledger Entry" temporary;
        TotalCostLCY : Decimal;
        TotalQtyBase : Decimal;
    begin
        ShippedQtyNotReturned := 0;
        if (Type <> Type::Item) or (Quantity <= 0) then begin
          RevUnitCostLCY := "Unit Cost (LCY)";
          exit;
        end;

        RevUnitCostLCY := 0;
        GetItemLedgEntries(TempItemLedgEntry,false);
        if TempItemLedgEntry.FindSet then
          repeat
            ShippedQtyNotReturned := ShippedQtyNotReturned - TempItemLedgEntry."Shipped Qty. Not Returned";
            if ExactCostReverse then begin
              TempItemLedgEntry.CalcFields("Cost Amount (Expected)","Cost Amount (Actual)");
              TotalCostLCY :=
                TotalCostLCY + TempItemLedgEntry."Cost Amount (Expected)" + TempItemLedgEntry."Cost Amount (Actual)";
              TotalQtyBase := TotalQtyBase + TempItemLedgEntry.Quantity;
            end;
          until TempItemLedgEntry.Next = 0;

        if ExactCostReverse and (ShippedQtyNotReturned <> 0) and (TotalQtyBase <> 0) then
          RevUnitCostLCY := Abs(TotalCostLCY / TotalQtyBase) * "Qty. per Unit of Measure"
        else
          RevUnitCostLCY := "Unit Cost (LCY)";
        ShippedQtyNotReturned := CalcQty(ShippedQtyNotReturned);

        if ShippedQtyNotReturned > Quantity then
          ShippedQtyNotReturned := Quantity;
    end;

    [LineStart(1154)]
    local procedure CalcQty(QtyBase : Decimal) : Decimal;
    begin
        if "Qty. per Unit of Measure" = 0 then
          exit(QtyBase);
        exit(Round(QtyBase / "Qty. per Unit of Measure",UOMMgt.QtyRndPrecision));
    end;

    [Scope('Personalization')]
    [LineStart(1159)]
    procedure GetItemLedgEntries(var TempItemLedgEntry : Record "Item Ledger Entry" temporary;SetQuantity : Boolean);
    var
        ItemLedgEntry : Record "Item Ledger Entry";
        ValueEntry : Record "Value Entry";
    begin
        if SetQuantity then begin
          TempItemLedgEntry.Reset;
          TempItemLedgEntry.DeleteAll;

          if Type <> Type::Item then
            exit;
        end;

        FilterPstdDocLineValueEntries(ValueEntry);
        ValueEntry.SetFilter("Invoiced Quantity",'<>0');
        if ValueEntry.FindSet then
          repeat
            ItemLedgEntry.Get(ValueEntry."Item Ledger Entry No.");
            TempItemLedgEntry := ItemLedgEntry;
            if SetQuantity then begin
              TempItemLedgEntry.Quantity := ValueEntry."Invoiced Quantity";
              if Abs(TempItemLedgEntry."Shipped Qty. Not Returned") > Abs(TempItemLedgEntry.Quantity) then
                TempItemLedgEntry."Shipped Qty. Not Returned" := TempItemLedgEntry.Quantity;
            end;
            OnGetItemLedgEntriesOnBeforeTempItemLedgEntryInsert(TempItemLedgEntry,ValueEntry,SetQuantity);
            if TempItemLedgEntry.Insert then;
          until ValueEntry.Next = 0;
    end;

    [Scope('Personalization')]
    [LineStart(1183)]
    procedure FilterPstdDocLineValueEntries(var ValueEntry : Record "Value Entry");
    begin
        ValueEntry.Reset;
        ValueEntry.SetCurrentKey("Document No.");
        ValueEntry.SetRange("Document No.","Document No.");
        ValueEntry.SetRange("Document Type",ValueEntry."Document Type"::"Sales Invoice");
        ValueEntry.SetRange("Document Line No.","Line No.");
    end;

    [Scope('Personalization')]
    [LineStart(1190)]
    procedure ShowItemShipmentLines();
    var
        TempSalesShptLine : Record "Sales Shipment Line" temporary;
    begin
        if Type = Type::Item then begin
          GetSalesShptLines(TempSalesShptLine);
          PAGE.RunModal(0,TempSalesShptLine);
        end;
    end;

    [Scope('Personalization')]
    [LineStart(1196)]
    procedure ShowLineComments();
    var
        SalesCommentLine : Record "Sales Comment Line";
    begin
        SalesCommentLine.ShowComments(SalesCommentLine."Document Type"::"Posted Invoice","Document No.","Line No.");
    end;

    [Scope('Personalization')]
    [LineStart(1199)]
    procedure ShowShortcutDimCode(var ShortcutDimCode : array [8] of Code[20]);
    begin
        DimMgt.GetShortcutDimensions("Dimension Set ID",ShortcutDimCode);
    end;

    [Scope('Personalization')]
    [LineStart(1202)]
    procedure InitFromSalesLine(SalesInvHeader : Record "Sales Invoice Header";SalesLine : Record "Sales Line");
    begin
        Init;
        TransferFields(SalesLine);
        if ("No." = '') and (Type in [Type::"G/L Account"..Type::"Charge (Item)"]) then
          Type := Type::" ";
        "Posting Date" := SalesInvHeader."Posting Date";
        "Document No." := SalesInvHeader."No.";
        Quantity := SalesLine."Qty. to Invoice";
        "Quantity (Base)" := SalesLine."Qty. to Invoice (Base)";

        OnAfterInitFromSalesLine(Rec,SalesInvHeader,SalesLine);
    end;

    [Scope('Personalization')]
    [LineStart(1214)]
    procedure ShowDeferrals();
    begin
        DeferralUtilities.OpenLineScheduleView(
          "Deferral Code",DeferralUtilities.GetSalesDeferralDocType,'','',
          GetDocumentType,"Document No.","Line No.");
    end;

    [Scope('Personalization')]
    [LineStart(1219)]
    procedure UpdatePriceDescription();
    var
        Currency : Record Currency;
    begin
        "Price description" := '';
        if Type in [Type::"Charge (Item)",Type::"Fixed Asset",Type::Item,Type::Resource] then begin
          if "Line Discount %" = 0 then
            "Price description" := StrSubstNo(
                PriceDescriptionTxt,Quantity,Currency.ResolveGLCurrencySymbol(GetCurrencyCode),
                "Unit Price","Unit of Measure")
          else
            "Price description" := StrSubstNo(
                PriceDescriptionWithLineDiscountTxt,Quantity,Currency.ResolveGLCurrencySymbol(GetCurrencyCode),
                "Unit Price","Unit of Measure","Line Discount %")
        end;
    end;

    [Scope('Personalization')]
    [LineStart(1232)]
    procedure FormatType() : Text;
    var
        SalesLine : Record "Sales Line";
    begin
        if Type = Type::" " then
          exit(SalesLine.FormatType);

        exit(Format(Type));
    end;

    [Scope('Personalization')]
    [LineStart(1238)]
    procedure GetDocumentType() : Integer;
    var
        SalesCommentLine : Record "Sales Comment Line";
    begin
        exit(SalesCommentLine."Document Type"::"Posted Invoice")
    end;

    [Scope('Personalization')]
    [LineStart(1241)]
    procedure HasTypeToFillMandatoryFields() : Boolean;
    begin
        exit(Type <> Type::" ");
    end;

    [Scope('Personalization')]
    [LineStart(1244)]
    procedure IsCancellationSupported() : Boolean;
    begin
        exit(Type in [Type::" ",Type::Item,Type::"G/L Account",Type::"Charge (Item)"]);
    end;

    [IntegrationEvent(false, false)]
    [LineStart(1247)]
    local procedure OnAfterInitFromSalesLine(var SalesInvLine : Record "Sales Invoice Line";SalesInvHeader : Record "Sales Invoice Header";SalesLine : Record "Sales Line");
    begin
    end;

    [IntegrationEvent(false, false)]
    [LineStart(1250)]
    local procedure OnGetItemLedgEntriesOnBeforeTempItemLedgEntryInsert(var TempItemLedgerEntry : Record "Item Ledger Entry" temporary;ValueEntry : Record "Value Entry";SetQuantity : Boolean);
    begin
    end;
}

