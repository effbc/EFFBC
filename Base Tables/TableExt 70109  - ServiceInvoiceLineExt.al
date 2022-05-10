tableextension 70109 ServiceInvoiceLineExt extends "Service Invoice Line"
{
    // version NAVW19.00.00.51685,NAVIN9.00.00.51685,TFS225680

    fields
    {

        //Unsupported feature: Change Editable on ""Customer No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 6)". Please convert manually.

        modify("Unit Price")
        {

            //Unsupported feature: Change Editable on ""Unit Price"(Field 22)". Please convert manually.

            CaptionClass = GetCaptionClass(FieldNo("Unit Price"));
        }

        //Unsupported feature: Change Editable on ""VAT %"(Field 25)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line Discount Amount"(Field 28)". Please convert manually.


        //Unsupported feature: Change Editable on "Amount(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount Including VAT"(Field 30)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Invoice Disc."(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Item Entry"(Field 38)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer Price Group"(Field 42)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipment No."(Field 63)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipment Line No."(Field 64)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to Customer No."(Field 68)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 79)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""System-Created Entry"(Field 101)". Please convert manually.

        modify("Line Amount")
        {
            CaptionClass = GetCaptionClass(FieldNo("Line Amount"));
        }

        //Unsupported feature: Change Editable on ""VAT Difference"(Field 104)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Identifier"(Field 106)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5403)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change Editable on ""Responsibility Center"(Field 5700)". Please convert manually.


        //Unsupported feature: Change Editable on ""Substitution Available"(Field 5702)". Please convert manually.


        //Unsupported feature: Change Editable on "Nonstock(Field 5710)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Service Item No."(Field 5902)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Service Entry"(Field 5903)". Please convert manually.


        //Unsupported feature: Change Editable on ""Appl.-to Service Entry"(Field 5903)". Please convert manually.


        //Unsupported feature: Change Editable on ""Service Item Line Description"(Field 5906)". Please convert manually.


        //Unsupported feature: Change Editable on ""Serv. Price Adjmt. Gr. Code"(Field 5907)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 5916)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ship-to Code"(Field 5916)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Consumed"(Field 5918)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Consumed (Base)"(Field 5920)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Fault Code"(Field 5931)". Please convert manually.


        //Unsupported feature: Change Editable on ""Exclude Warranty"(Field 5933)". Please convert manually.


        //Unsupported feature: Change Editable on "Warranty(Field 5934)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Contract No."(Field 5936)". Please convert manually.


        //Unsupported feature: Change Editable on ""Contract No."(Field 5936)". Please convert manually.


        //Unsupported feature: Change Editable on ""Contract Disc. %"(Field 5938)". Please convert manually.


        //Unsupported feature: Change Editable on ""Warranty Disc. %"(Field 5939)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Spare Part Action"(Field 5966)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Replaced Item No."(Field 5968)". Please convert manually.


        //Unsupported feature: Change Editable on ""Exclude Contract Discount"(Field 5969)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Replaced Item Type"(Field 5970)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Price Adjmt. Status"(Field 5994)". Please convert manually.


        //Unsupported feature: Change Editable on ""Price Adjmt. Status"(Field 5994)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Line Discount Type"(Field 5997)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line Discount Type"(Field 5997)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Copy Components From"(Field 5999)". Please convert manually.

        field(16500; "Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Tax Amount',
                        ENN = 'Tax Amount';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 4;
            Editable = false;
        }
        field(16501; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(16502; "Excise Prod. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Prod. Posting Group',
                        ENN = 'Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Prod. Posting Group";
        }
        field(16503; "Excise Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Amount',
                        ENN = 'Excise Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16504; "Amount Including Excise"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Excise',
                        ENN = 'Amount Including Excise';
            DataClassification = ToBeClassified;
        }
        field(16505; "Excise Base Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Base Amount',
                        ENN = 'Excise Base Amount';
            DataClassification = ToBeClassified;
        }
        field(16506; "Excise Accounting Type"; Option)
        {
            CaptionML = ENU = 'Excise Accounting Type',
                        ENN = 'Excise Accounting Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'With CENVAT,Without CENVAT',
                              ENN = 'With CENVAT,Without CENVAT';
            OptionMembers = "With CENVAT","Without CENVAT";
        }
        field(16507; "Excise Base Quantity"; Decimal)
        {
            CaptionML = ENU = 'Excise Base Quantity',
                        ENN = 'Excise Base Quantity';
            DataClassification = ToBeClassified;
        }
        field(16508; "Tax %"; Decimal)
        {
            CaptionML = ENU = 'Tax %',
                        ENN = 'Tax %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(16509; "Amount Including Tax"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Tax',
                        ENN = 'Amount Including Tax';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16510; "Amount Added to Excise Base"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Excise Base',
                        ENN = 'Amount Added to Excise Base';
            DataClassification = ToBeClassified;
        }
        field(16511; "Amount Added to Tax Base"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Tax Base',
                        ENN = 'Amount Added to Tax Base';
            DataClassification = ToBeClassified;
        }
        field(16512; "Tax Base Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'Tax Base Amount',
                        ENN = 'Tax Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16513; "BED Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'BED Amount',
                        ENN = 'BED Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16514; "AED(GSI) Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(GSI) Amount',
                        ENN = 'AED(GSI) Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16515; "SED Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'SED Amount',
                        ENN = 'SED Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16516; "SAED Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'SAED Amount',
                        ENN = 'SAED Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16517; "CESS Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'CESS Amount',
                        ENN = 'CESS Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16518; "NCCD Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'NCCD Amount',
                        ENN = 'NCCD Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16519; "eCess Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'eCess Amount',
                        ENN = 'eCess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16520; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;
        }
        field(16521; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
        }
        field(16522; State; Code[10])
        {
            CaptionML = ENU = 'State',
                        ENN = 'State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(16523; "Amount To Customer"; Decimal)
        {
            CaptionML = ENU = 'Amount To Customer',
                        ENN = 'Amount To Customer';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16524; "Charges To Customer"; Decimal)
        {
            CaptionML = ENU = 'Charges To Customer',
                        ENN = 'Charges To Customer';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16525; "Service Tax Group"; Code[20])
        {
            CaptionML = ENU = 'Service Tax Group',
                        ENN = 'Service Tax Group';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Groups".Code;
        }
        field(16526; "Service Tax Base"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Base',
                        ENN = 'Service Tax Base';
            DataClassification = ToBeClassified;
        }
        field(16527; "Service Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Amount',
                        ENN = 'Service Tax Amount';
            DataClassification = ToBeClassified;
        }
        field(16528; "Service Tax Registration No."; Code[20])
        {
            CaptionML = ENU = 'Service Tax Registration No.',
                        ENN = 'Service Tax Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Registration Nos.".Code;
        }
        field(16529; "Service Tax eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax eCess Amount',
                        ENN = 'Service Tax eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(16530; "ADET Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'ADET Amount',
                        ENN = 'ADET Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16531; "AED(TTA) Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(TTA) Amount',
                        ENN = 'AED(TTA) Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16532; "Free Supply"; Boolean)
        {
            CaptionML = ENU = 'Free Supply',
                        ENN = 'Free Supply';
            DataClassification = ToBeClassified;
        }
        field(16533; "ADE Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'ADE Amount',
                        ENN = 'ADE Amount';
            DataClassification = ToBeClassified;
            MinValue = 0;
        }
        field(16534; "Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'Assessable Value',
                        ENN = 'Assessable Value';
            DataClassification = ToBeClassified;
        }
        field(16535; "VAT Type"; Option)
        {
            CaptionML = ENU = 'VAT Type',
                        ENN = 'VAT Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Item,Capital Goods',
                              ENN = ' ,Item,Capital Goods';
            OptionMembers = " ",Item,"Capital Goods";
        }
        field(16536; "SHE Cess Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'SHE Cess Amount',
                        ENN = 'SHE Cess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16537; "Service Tax SHE Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SHE Cess Amount',
                        ENN = 'Service Tax SHE Cess Amount';
            DataClassification = ToBeClassified;
        }
        field(16538; "Standard Deduction %"; Decimal)
        {
            CaptionML = ENU = 'Standard Deduction %',
                        ENN = 'Standard Deduction %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16539; "Standard Deduction Amount"; Decimal)
        {
            CaptionML = ENU = 'Standard Deduction Amount',
                        ENN = 'Standard Deduction Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16540; Supplementary; Boolean)
        {
            CaptionML = ENU = 'Supplementary',
                        ENN = 'Supplementary';
            DataClassification = ToBeClassified;
        }
        field(16541; "Source Document Type"; Option)
        {
            CaptionML = ENU = 'Source Document Type',
                        ENN = 'Source Document Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Posted Invoice,Posted Credit Memo',
                              ENN = 'Posted Invoice,Posted Credit Memo';
            OptionMembers = "Posted Invoice","Posted Credit Memo";
        }
        field(16542; "Source Document No."; Code[20])
        {
            CaptionML = ENU = 'Source Document No.',
                        ENN = 'Source Document No.';
            DataClassification = ToBeClassified;
        }
        field(16543; "ADC VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'ADC VAT Amount',
                        ENN = 'ADC VAT Amount';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(16544; "CIF Amount"; Decimal)
        {
            CaptionML = ENU = 'CIF Amount',
                        ENN = 'CIF Amount';
            DataClassification = ToBeClassified;
        }
        field(16545; "BCD Amount"; Decimal)
        {
            CaptionML = ENU = 'BCD Amount',
                        ENN = 'BCD Amount';
            DataClassification = ToBeClassified;
        }
        field(16546; CVD; Boolean)
        {
            CaptionML = ENU = 'CVD',
                        ENN = 'CVD';
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
        field(16560; "Service Tax SBC Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC Amount',
                        ENN = 'Service Tax SBC Amount';
            DataClassification = ToBeClassified;
        }
        field(16562; "KK Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'KK Cess Amount',
                        ENN = 'KK Cess Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16601; "GST Place Of Supply"; Option)
        {
            CaptionML = ENU = 'GST Place Of Supply',
                        ENN = 'GST Place Of Supply';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Bill-to Address,Ship-to Address,Location Address',
                              ENN = ' ,Bill-to Address,Ship-to Address,Location Address';
            OptionMembers = " ","Bill-to Address","Ship-to Address","Location Address";
        }
        field(16602; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            TableRelation = "GST Group";
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
            Editable = false;
        }
        field(16606; "Total GST Amount"; Decimal)
        {
            CaptionML = ENU = 'Total GST Amount',
                        ENN = 'Total GST Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16607; "HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'HSN/SAC Code',
                        ENN = 'HSN/SAC Code';
            DataClassification = ToBeClassified;
            TableRelation = "HSN/SAC".Code WHERE("GST Group Code" = FIELD("GST Group Code"));
        }
        field(16608; "GST Jurisdiction Type"; Option)
        {
            CaptionML = ENU = 'GST Jurisdiction Type',
                        ENN = 'GST Jurisdiction Type';
            DataClassification = ToBeClassified;
            Editable = false;
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
        field(16612; "GST On Assessable Value"; Boolean)
        {
            CaptionML = ENU = 'GST On Assessable Value',
                        ENN = 'GST On Assessable Value';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
                GSTGroup: Record "GST Group";
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
            Editable = false;
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
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Item No.,Type,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Service Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Service Item Line No.,Serv. Price Adjmt. Gr. Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Service Item Line No.,Type,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No.,Variant Code,Location Code,Posting Date,Shortcut Dimension 1 Code,Shortcut Dimension 2 Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Appl.-to Service Entry"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Service Item Line No.,Component Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Fault Reason Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Customer No."(Key)". Please convert manually.

        key(Key1; "Document No.", "Line No.")
        {
        }
        key(Key2; Type, "No.")
        {
        }
        key(Key3; "Service Item No.", Type, "Posting Date")
        {
        }
        key(Key4; "Document No.", "Service Item No.")
        {
        }
        key(Key5; "Document No.", "Service Item Line No.", "Serv. Price Adjmt. Gr. Code")
        {
            SumIndexFields = Amount;
        }
        key(Key6; "Document No.", "Service Item Line No.", Type, "No.")
        {
        }
        key(Key7; Type, "No.", "Variant Code", "Location Code", "Posting Date", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code")
        {
            SumIndexFields = "Quantity (Base)";
        }
        key(Key8; "Appl.-to Service Entry")
        {
        }
        key(Key9; "Document No.", "Service Item Line No.", "Component Line No.")
        {
        }
        key(Key10; "Fault Reason Code")
        {
        }
        key(Key11; "Customer No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ShowItemTrackingLines(PROCEDURE 1).ItemTrackingDocMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemTrackingLines : 6503;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemTrackingLines : "Item Tracking Doc. Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RowID1(PROCEDURE 2).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RowID1 : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RowID1 : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCaptionClass(PROCEDURE 3).ServiceInvHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCaptionClass : 5992;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCaptionClass : "Service Invoice Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFieldCaption(PROCEDURE 4).Field(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFieldCaption : 2000000041;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFieldCaption : Field;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCurrencyCode(PROCEDURE 6).ServiceInvHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCurrencyCode : 5992;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCurrencyCode : "Service Invoice Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetServShptLines(PROCEDURE 14).ServShptLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetServShptLines : 5991;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetServShptLines : "Service Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetServShptLines(PROCEDURE 14).ItemLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetServShptLines : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetServShptLines : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetServShptLines(PROCEDURE 14).ValueEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetServShptLines : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetServShptLines : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemShipmentLines(PROCEDURE 9).TempServShptLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemShipmentLines : 5991;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemShipmentLines : "Service Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}

