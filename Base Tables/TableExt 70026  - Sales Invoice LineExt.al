tableextension 70026 SalesInvoiceLineExt extends "Sales Invoice Line"
{
    // version NAVW114.30

    fields
    {

        //Unsupported feature: Change Editable on ""Sell-to Customer No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.

        modify("No.")
        {

            //Unsupported feature: Change TableRelation on ""No."(Field 6)". Please convert manually.

            CaptionClass = GetCaptionClass(FieldNo("No."));
        }

        //Unsupported feature: Change TableRelation on ""Location Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting Group"(Field 8)". Please convert manually.

        modify("Unit Price")
        {
            CaptionClass = GetCaptionClass(FieldNo("Unit Price"));
        }

        //Unsupported feature: Change Editable on ""VAT %"(Field 25)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Invoice Disc."(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Item Entry"(Field 38)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipment No."(Field 63)". Please convert manually.


        //Unsupported feature: Change Editable on ""Shipment Line No."(Field 64)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to Customer No."(Field 68)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Drop Shipment"(Field 73)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Base Amount"(Field 99)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit Cost"(Field 100)". Please convert manually.


        //Unsupported feature: Change Editable on ""System-Created Entry"(Field 101)". Please convert manually.

        modify("Line Amount")
        {
            CaptionClass = GetCaptionClass(FieldNo("Line Amount"));
        }

        //Unsupported feature: Change Editable on ""VAT Identifier"(Field 106)". Please convert manually.


        //Unsupported feature: Change OptionString on ""IC Partner Ref. Type"(Field 107)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment Line"(Field 123)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Line Discount Calculation"(Field 180)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 1001)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Task No."(Field 1001)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Contract Entry No."(Field 1002)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5403)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cross-Reference No."(Field 5705)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure (Cross Ref.)"(Field 5706)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Cross-Reference Type"(Field 5707)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-from Item Entry"(Field 5811)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Line Disc."(Field 7001)". Please convert manually.

        field(13701; "Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Tax Amount',
                        ENN = 'Tax Amount';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 4;
            Editable = true;
        }
        field(13702; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            //TableRelation = "Excise Bus. Posting Group";
        }
        field(13703; "Excise Prod. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Prod. Posting Group',
                        ENN = 'Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            // TableRelation = "Excise Prod. Posting Group";
        }
        field(13708; "Excise Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Amount',
                        ENN = 'Excise Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13711; "Amount Including Excise"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Excise',
                        ENN = 'Amount Including Excise';
            DataClassification = ToBeClassified;
        }
        field(13712; "Excise Base Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Base Amount',
                        ENN = 'Excise Base Amount';
            DataClassification = ToBeClassified;
        }
        field(13715; "Excise Accounting Type"; Option)
        {
            CaptionML = ENU = 'Excise Accounting Type',
                        ENN = 'Excise Accounting Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'With CENVAT,Without CENVAT',
                              ENN = 'With CENVAT,Without CENVAT';
            OptionMembers = "With CENVAT","Without CENVAT";
        }
        field(13719; "Excise Base Quantity"; Decimal)
        {
            CaptionML = ENU = 'Excise Base Quantity',
                        ENN = 'Excise Base Quantity';
            DataClassification = ToBeClassified;
        }
        field(13721; "Tax %"; Decimal)
        {
            CaptionML = ENU = 'Tax %',
                        ENN = 'Tax %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Editable = true;
        }
        field(13722; "Amount Including Tax"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Tax',
                        ENN = 'Amount Including Tax';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13724; "Amount Added to Excise Base"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Excise Base',
                        ENN = 'Amount Added to Excise Base';
            DataClassification = ToBeClassified;
        }
        field(13725; "Amount Added to Tax Base"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Tax Base',
                        ENN = 'Amount Added to Tax Base';
            DataClassification = ToBeClassified;
        }
        field(13727; "Tax Base Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'Tax Base Amount',
                        ENN = 'Tax Base Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13734; "Surcharge %"; Decimal)
        {
            CaptionML = ENU = 'Surcharge %',
                        ENN = 'Surcharge %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13735; "Surcharge Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'Surcharge Amount',
                        ENN = 'Surcharge Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13736; "Concessional Code"; Code[10])
        {
            CaptionML = ENU = 'Concessional Code',
                        ENN = 'Concessional Code';
            DataClassification = ToBeClassified;
            // TableRelation = "Concessional Codes";
        }
        field(13742; "Assessee Code"; Code[10])
        {
            CaptionML = ENU = 'Assessee Code',
                        ENN = 'Assessee Code';
            DataClassification = ToBeClassified;
            Editable = false;
            //TableRelation = "Assessee Code";
        }
        field(13743; "TDS/TCS %"; Decimal)
        {
            CaptionML = ENU = 'TDS/TCS %',
                        ENN = 'TDS/TCS %';
            DataClassification = ToBeClassified;
            DecimalPlaces = 2 : 3;
            Editable = false;
        }
        field(13746; "Bal. TDS/TCS Including SHECESS"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'Bal. TDS/TCS Including SHECESS',
                        ENN = 'Bal. TDS/TCS Including SHECESS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13749; "Claim Deferred Excise"; Boolean)
        {
            CaptionML = ENU = 'Claim Deferred Excise',
                        ENN = 'Claim Deferred Excise';
            DataClassification = ToBeClassified;
        }
        field(13750; "Capital Item"; Boolean)
        {
            CaptionML = ENU = 'Capital Item',
                        ENN = 'Capital Item';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13755; "BED Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'BED Amount',
                        ENN = 'BED Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13758; "AED(GSI) Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(GSI) Amount',
                        ENN = 'AED(GSI) Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13759; "SED Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'SED Amount',
                        ENN = 'SED Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13769; "SAED Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'SAED Amount',
                        ENN = 'SAED Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13770; "CESS Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'CESS Amount',
                        ENN = 'CESS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13771; "NCCD Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'NCCD Amount',
                        ENN = 'NCCD Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13772; "eCess Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'eCess Amount',
                        ENN = 'eCess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(13796; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;

            trigger OnLookup();
            var
            // StateForm: Record "State Forms";
            begin
            end;
        }
        field(13797; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
        }
        field(13798; State; Code[10])
        {
            CaptionML = ENU = 'State',
                        ENN = 'State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(13799; "TDS/TCS Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'TDS/TCS Amount',
                        ENN = 'TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16340; "Amount To Customer"; Decimal)
        {
            CaptionML = ENU = 'Amount To Customer',
                        ENN = 'Amount To Customer';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16342; "Charges To Customer"; Decimal)
        {
            CaptionML = ENU = 'Charges To Customer',
                        ENN = 'Charges To Customer';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16343; "TDS/TCS Base Amount"; Decimal)
        {
            CaptionML = ENU = 'TDS/TCS Base Amount',
                        ENN = 'TDS/TCS Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16363; "Surcharge Base Amount"; Decimal)
        {
            CaptionML = ENU = 'Surcharge Base Amount',
                        ENN = 'Surcharge Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16377; "Service Tax Group"; Code[20])
        {
            CaptionML = ENU = 'Service Tax Group',
                        ENN = 'Service Tax Group';
            DataClassification = ToBeClassified;
            //TableRelation = "Service Tax Groups".Code;

            trigger OnValidate();
            var
                CompanyInfo: Record "Company Information";
            begin
            end;
        }
        field(16379; "Service Tax Base"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Base',
                        ENN = 'Service Tax Base';
            DataClassification = ToBeClassified;
        }
        field(16380; "Service Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Amount',
                        ENN = 'Service Tax Amount';
            DataClassification = ToBeClassified;
        }
        field(16381; "Service Tax Registration No."; Code[20])
        {
            CaptionML = ENU = 'Service Tax Registration No.',
                        ENN = 'Service Tax Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Registration Nos.".Code;
        }
        field(16383; "eCESS % on TDS/TCS"; Decimal)
        {
            CaptionML = ENU = 'eCESS % on TDS/TCS',
                        ENN = 'eCESS % on TDS/TCS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16384; "eCESS on TDS/TCS Amount"; Decimal)
        {
            CaptionML = ENU = 'eCESS on TDS/TCS Amount',
                        ENN = 'eCESS on TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16385; "Total TDS/TCS Incl. SHE CESS"; Decimal)
        {
            CaptionML = ENU = 'Total TDS/TCS Incl. SHE CESS',
                        ENN = 'Total TDS/TCS Incl. SHE CESS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16386; "Per Contract"; Boolean)
        {
            CaptionML = ENU = 'Per Contract',
                        ENN = 'Per Contract';
            DataClassification = ToBeClassified;
        }
        field(16391; "Service Tax eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax eCess Amount',
                        ENN = 'Service Tax eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(16452; "ADET Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'ADET Amount',
                        ENN = 'ADET Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16455; "AED(TTA) Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(TTA) Amount',
                        ENN = 'AED(TTA) Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16456; "Free Supply"; Boolean)
        {
            CaptionML = ENU = 'Free Supply',
                        ENN = 'Free Supply';
            DataClassification = ToBeClassified;
        }
        field(16459; "ADE Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'ADE Amount',
                        ENN = 'ADE Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16490; "Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'Assessable Value',
                        ENN = 'Assessable Value';
            DataClassification = ToBeClassified;
        }
        field(16491; "VAT Type"; Option)
        {
            CaptionML = ENU = 'VAT Type',
                        ENN = 'VAT Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Item,Capital Goods',
                              ENN = ' ,Item,Capital Goods';
            OptionMembers = " ",Item,"Capital Goods";
        }
        field(16494; "SHE Cess Amount"; Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU = 'SHE Cess Amount',
                        ENN = 'SHE Cess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16496; "Service Tax SHE Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SHE Cess Amount',
                        ENN = 'Service Tax SHE Cess Amount';
            DataClassification = ToBeClassified;
        }
        field(16500; "Direct Debit To PLA / RG"; Boolean)
        {
            CaptionML = ENU = 'Direct Debit To PLA / RG',
                        ENN = 'Direct Debit To PLA / RG';
            DataClassification = ToBeClassified;
        }
        field(16502; "TCS Nature of Collection"; Code[10])
        {
            CaptionML = ENU = 'TCS Nature of Collection',
                        ENN = 'TCS Nature of Collection';
            DataClassification = ToBeClassified;
            // TableRelation = "TCS Nature Of Collection";
        }
        field(16503; "TCS Type"; Option)
        {
            CaptionML = ENU = 'TCS Type',
                        ENN = 'TCS Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,1H',
                              ENN = ' ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,1H';
            OptionMembers = " ",A,B,C,D,E,F,G,H,I,J,K,L,M,N,"1H";
        }
        field(16504; "Standard Deduction %"; Decimal)
        {
            CaptionML = ENU = 'Standard Deduction %',
                        ENN = 'Standard Deduction %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16505; "Standard Deduction Amount"; Decimal)
        {
            CaptionML = ENU = 'Standard Deduction Amount',
                        ENN = 'Standard Deduction Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16519; Supplementary; Boolean)
        {
            CaptionML = ENU = 'Supplementary',
                        ENN = 'Supplementary';
            DataClassification = ToBeClassified;
        }
        field(16520; "Source Document Type"; Option)
        {
            CaptionML = ENU = 'Source Document Type',
                        ENN = 'Source Document Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Posted Invoice,Posted Credit Memo',
                              ENN = 'Posted Invoice,Posted Credit Memo';
            OptionMembers = "Posted Invoice","Posted Credit Memo";
        }
        field(16521; "Source Document No."; Code[20])
        {
            CaptionML = ENU = 'Source Document No.',
                        ENN = 'Source Document No.';
            DataClassification = ToBeClassified;
        }
        field(16524; "ADC VAT Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'ADC VAT Amount',
                        ENN = 'ADC VAT Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16525; "CIF Amount"; Decimal)
        {
            CaptionML = ENU = 'CIF Amount',
                        ENN = 'CIF Amount';
            DataClassification = ToBeClassified;
        }
        field(16526; "BCD Amount"; Decimal)
        {
            CaptionML = ENU = 'BCD Amount',
                        ENN = 'BCD Amount';
            DataClassification = ToBeClassified;
        }
        field(16527; CVD; Boolean)
        {
            CaptionML = ENU = 'CVD',
                        ENN = 'CVD';
            DataClassification = ToBeClassified;
        }
        field(16528; "Process Carried Out"; Code[10])
        {
            CaptionML = ENU = 'Process Carried Out',
                        ENN = 'Process Carried Out';
            DataClassification = ToBeClassified;
            //TableRelation = "Process Carried Out".Code;
        }
        field(16529; "Identification Mark"; Text[30])
        {
            CaptionML = ENU = 'Identification Mark',
                        ENN = 'Identification Mark';
            DataClassification = ToBeClassified;
        }
        field(16530; "Re-Dispatch"; Boolean)
        {
            CaptionML = ENU = 'Re-Dispatch',
                        ENN = 'Re-Dispatch';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16531; "Return Rcpt line No."; Integer)
        {
            CaptionML = ENU = 'Return Rcpt line No.',
                        ENN = 'Return Rcpt line No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16532; "Qty. to be Re-Dispatched"; Decimal)
        {
            CaptionML = ENU = 'Qty. to be Re-Dispatched',
                        ENN = 'Qty. to be Re-Dispatched';
            DataClassification = ToBeClassified;
        }
        field(16533; "Return Re-Dispatch Rcpt. No."; Code[20])
        {
            CaptionML = ENU = 'Return Re-Dispatch Rcpt. No.',
                        ENN = 'Return Re-Dispatch Rcpt. No.';
            DataClassification = ToBeClassified;
        }
        field(16534; "SHE Cess % on TDS/TCS"; Decimal)
        {
            CaptionML = ENU = 'SHE Cess % on TDS/TCS',
                        ENN = 'SHE Cess % on TDS/TCS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16535; "SHE Cess on TDS/TCS Amount"; Decimal)
        {
            CaptionML = ENU = 'SHE Cess on TDS/TCS Amount',
                        ENN = 'SHE Cess on TDS/TCS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16537; "MRP Price"; Decimal)
        {
            CaptionML = ENU = 'MRP Price',
                        ENN = 'MRP Price';
            DataClassification = ToBeClassified;
        }
        field(16538; MRP; Boolean)
        {
            CaptionML = ENU = 'MRP',
                        ENN = 'MRP';
            DataClassification = ToBeClassified;
        }
        field(16539; "Abatement %"; Decimal)
        {
            CaptionML = ENU = 'Abatement %',
                        ENN = 'Abatement %';
            DataClassification = ToBeClassified;
        }
        field(16540; "PIT Structure"; Code[10])
        {
            CaptionML = ENU = 'PIT Structure',
                        ENN = 'PIT Structure';
            DataClassification = ToBeClassified;
            // TableRelation = "Structure Header";
        }
        field(16541; "Price Inclusive of Tax"; Boolean)
        {
            CaptionML = ENU = 'Price Inclusive of Tax',
                        ENN = 'Price Inclusive of Tax';
            DataClassification = ToBeClassified;
        }
        field(16542; "Unit Price Incl. of Tax"; Decimal)
        {
            CaptionML = ENU = 'Unit Price Incl. of Tax',
                        ENN = 'Unit Price Incl. of Tax';
            DataClassification = ToBeClassified;
        }
        field(16545; "Amount To Customer UPIT"; Decimal)
        {
            CaptionML = ENU = 'Amount To Customer UPIT',
                        ENN = 'Amount To Customer UPIT';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16546; "UPIT Rounding Inserted"; Boolean)
        {
            CaptionML = ENU = 'UPIT Rounding Inserted',
                        ENN = 'UPIT Rounding Inserted';
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
        field(16560; "Service Tax SBC %"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC %',
                        ENN = 'Service Tax SBC %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16561; "Service Tax SBC Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC Amount',
                        ENN = 'Service Tax SBC Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16562; "Service Tax SBC Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC Amount(Intm)',
                        ENN = 'Service Tax SBC Amount(Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16563; "KK Cess%"; Decimal)
        {
            CaptionML = ENU = 'KK Cess%',
                        ENN = 'KK Cess%';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16564; "KK Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'KK Cess Amount',
                        ENN = 'KK Cess Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16601; "GST Place of Supply"; Option)
        {
            CaptionML = ENU = 'GST Place of Supply',
                        ENN = 'GST Place of Supply';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Bill-to Address,Ship-to Address,Location Address ',
                              ENN = ' ,Bill-to Address,Ship-to Address,Location Address ';
            OptionMembers = " ","Bill-to Address","Ship-to Address","Location Address ";
        }
        field(16602; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            //TableRelation = "GST Group";
        }
        field(16603; "GST Group Type"; Option)
        {
            CaptionML = ENU = 'GST Group Type',
                        ENN = 'GST Group Type';
            DataClassification = ToBeClassified;
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
            Editable = true;
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
        field(16625; "Sales Amount"; Decimal)
        {
            CaptionML = ENU = 'Sales Amount',
                        ENN = 'Sales Amount';
            DataClassification = ToBeClassified;
        }
        field(50002; "Packet No"; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(50100; "Description New"; Text[250])
        {
            DataClassification = ToBeClassified;
            Description = 'B2BPG';
        }
        field(50101; "Description New 1"; Text[250])
        {
            DataClassification = ToBeClassified;
            Description = 'B2BPG';
        }
        field(50102; "Transfer Method 1"; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'B2BPG';
        }
        field(60001; "Production BOM No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
            TableRelation = "Production BOM Header"."No.";
        }
        field(60002; "Production Bom Version No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
            TableRelation = "Production BOM Version"."Version Code" WHERE("Production BOM No." = FIELD("Production BOM No."));
        }
        field(60003; "Estimated Unit Cost"; Decimal)
        {
            CalcFormula = Sum("Design Worksheet Header"."Total Cost" WHERE("Document No." = FIELD("Document No."),
                                                                            "Document Type" = CONST(Order),
                                                                            "Document Line No." = FIELD("Line No.")));
            Description = 'B2B';
            FieldClass = FlowField;
        }
        field(60004; "Estimated Total Unit Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60005; "RDSO Unit Charges"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60006; "Prod Start Date"; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'LD Start Date has been modified as Prod start date due to unavailability of feilds';
        }
        field(60007; "LD Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60008; "RDSO Charges Paid By"; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
            OptionMembers = "By ESPL","By Customer";
        }
        field(60009; "RDSO Inspection Required"; Boolean)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60010; "RDSO Inspection By"; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
            OptionMembers = Us,Them;
        }
        field(60011; "RDSO Charges"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60012; "Schedule Type"; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
            OptionCaption = '" ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z"';
            OptionMembers = " ",A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z;
        }
        field(60020; "Material Reuired Date"; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(60024; "CL_CNSGN  rcvd Qty"; Integer)
        {
            DataClassification = ToBeClassified;
            Description = 'added  by sujani for renucha mam';
        }
        field(60025; "CL_CNSGN  rcvd Date1"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(60090; "Dimension Corrected"; Boolean)
        {
            DataClassification = ToBeClassified;
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091; "OLD Dim Set ID"; Integer)
        {
            DataClassification = ToBeClassified;
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            // TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
        field(60100; "Order No.1"; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60101; "Order Line No.1"; Integer)
        {
            DataClassification = ToBeClassified;
            Description = 'B2B';
        }
        field(60102; "Document Date"; Date)
        {
            CalcFormula = Lookup("Sales Invoice Header"."Posting Date" WHERE("No." = FIELD("Document No.")));
            FieldClass = FlowField;
        }
        field(60103; "External Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(60110; "Supply Portion"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(60111; "Retention Portion"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(60112; "Type of Item"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ","Only Supply","Supply & Inst","Supply & Laying","Only Inst";
        }
        field(60113; "Schedule No"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(60114; "Unitcost(LOA)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(60118; MainCategory; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
            OptionMembers = "  ",Sales,"No Issue","R&D","Need to Specify",CS,MKT,LMD;
        }
        field(60119; SubCategory; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
            OptionMembers = "  ","Yet to Start","Under Inspection","Ready for Inspection","Under Production","Inspection Completed","Ready For Dispatch","BOM Pending","PO Pending","BOI Pending","Docs Pending","RDSO renewal Pending","S/W Pending","Call Letter Pending","Customer side Pending","Installation material pending","Site not ready","R&D Pending","Installation Inprogress",Commisioned,"Completion letter taken","Yet to dispatch";
        }
        field(60120; Reason; Text[100])
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
        }
        field(60121; Remarks; Text[100])
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
        }
        field(60122; ProductGroup; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 2-11-2018 for analysis purpose';
        }
        field(60123; Main_CATEGORY; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by Vishnu Priya on 20-11-2018 for analysis purpose';
            OptionCaption = ',Sales,No Issue,R&D,Need to Specify,CS,MKT';
            OptionMembers = ,Sales,"No Issue","R&D","Need to Specify",CS,MKT;
        }
        field(60124; "Call Letter Status"; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
            OptionMembers = " ",Received,Pending,NA,"Cust.Pending";
        }
        field(60125; "RDSO Number"; Code[15])
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
        }
        field(60126; Vertical; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
            OptionMembers = " ","Smart Signalling","Smart Cities","Smart Building",IOT,other;
        }
        field(60127; "Deviated Dispatch Date"; DateTime)
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
        }
        field(60128; "Dispatch Date"; DateTime)
        {
            DataClassification = ToBeClassified;
            Description = 'added by sujani on 30-11-2018 for pending orders analysis purpose';
        }
        field(60131; "Tentative RDSO Date"; Date)
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Vishnu Priya on 14-12-2018';
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Blanket Order No.,Blanket Order Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Sell-to Customer No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Sell-to Customer No.,Type,Document No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Shipment No.,Shipment Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Job Contract Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bill-to Customer No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order No.,Order Line No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Location Code"(Key)". Please convert manually.

        key(Document1; "Document No.", "Line No.")
        {
        }
        key(BlanketOrder2; "Blanket Order No.", "Blanket Order Line No.")
        {
        }
        key(SelltoCust3; "Sell-to Customer No.")
        {
        }
        key(Sellcust4; "Sell-to Customer No.", Type, "Document No.")
        {
            Enabled = false;
            MaintainSQLIndex = false;
        }
        key(Shipment5; "Shipment No.", "Shipment Line No.")
        {
        }
        key(JobContract6; "Job Contract Entry No.")
        {
        }
        key(Billto7; "Bill-to Customer No.")
        {
        }
        key(Order8; "Order No.", "Order Line No.", "Posting Date")
        {
        }
        key(DocLoca9; "Document No.", "Location Code")
        {
            MaintainSQLIndex = false;
            SumIndexFields = Amount, "Amount Including VAT";
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SalesDocLineComments.SETRANGE("Document Type",SalesDocLineComments."Document Type"::"Posted Invoice");
    SalesDocLineComments.SETRANGE("No.","Document No.");
    SalesDocLineComments.SETRANGE("Document Line No.","Line No.");
    IF NOT SalesDocLineComments.ISEMPTY THEN
      SalesDocLineComments.DELETEALL;

    PostedDeferralHeader.DeleteHeader(DeferralUtilities.GetSalesDeferralDocType,'','',
      SalesDocLineComments."Document Type"::"Posted Invoice","Document No.","Line No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    SalesDocLineComments.SetRange("Document Type",SalesDocLineComments."Document Type"::"Posted Invoice");
    SalesDocLineComments.SetRange("No.","Document No.");
    SalesDocLineComments.SetRange("Document Line No.","Line No.");
    if not SalesDocLineComments.IsEmpty then
      SalesDocLineComments.DeleteAll;
    #6..8
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.SalesDocLineComments(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SalesDocLineComments : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SalesDocLineComments : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PostedDeferralHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PostedDeferralHeader : 1704;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PostedDeferralHeader : "Posted Deferral Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemTrackingLines(PROCEDURE 3).ItemTrackingDocMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemTrackingLines : 6503;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemTrackingLines : "Item Tracking Doc. Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFieldCaption(PROCEDURE 31).Field(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFieldCaption : 2000000041;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFieldCaption : Field;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RowID1(PROCEDURE 44).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RowID1 : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RowID1 : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSalesShptLines(PROCEDURE 4).SalesShptLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSalesShptLines : 111;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSalesShptLines : "Sales Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSalesShptLines(PROCEDURE 4).ItemLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSalesShptLines : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSalesShptLines : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSalesShptLines(PROCEDURE 4).ValueEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSalesShptLines : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSalesShptLines : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcShippedSaleNotReturned(PROCEDURE 5).TempItemLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcShippedSaleNotReturned : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcShippedSaleNotReturned : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetItemLedgEntries(PROCEDURE 6).ItemLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetItemLedgEntries : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetItemLedgEntries : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetItemLedgEntries(PROCEDURE 6).ValueEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetItemLedgEntries : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetItemLedgEntries : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemShipmentLines(PROCEDURE 9).TempSalesShptLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemShipmentLines : 111;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemShipmentLines : "Sales Shipment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineComments(PROCEDURE 8).SalesCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineComments : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineComments : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdatePriceDescription(PROCEDURE 143).Currency(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdatePriceDescription : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdatePriceDescription : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FormatType(PROCEDURE 144).SalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FormatType : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FormatType : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDocumentType(PROCEDURE 14).SalesCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDocumentType : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDocumentType : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesInvoiceHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesInvoiceHeader : 112;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesInvoiceHeader : "Sales Invoice Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Currency(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Currency : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Currency : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeferralUtilities(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeferralUtilities : 1720;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeferralUtilities : "Deferral Utilities";
    //Variable type has not been exported.
}

