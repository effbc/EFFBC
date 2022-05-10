tableextension 70030 PurchRcptLineExt extends "Purch. Rcpt. Line"
{
    // version NAVW19.00.00.51685,NAVIN9.00.00.51685,QC1.0,B2B1.0,POAU

    fields
    {

        //Unsupported feature: Change Editable on ""Buy-from Vendor No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.

        modify("No.")
        {

            //Unsupported feature: Change TableRelation on ""No."(Field 6)". Please convert manually.

            CaptionClass = GetCaptionClass(FieldNo("No."));
        }

        //Unsupported feature: Change TableRelation on ""Location Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT %"(Field 25)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Invoice Disc."(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Item Entry"(Field 38)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Qty. Rcd. Not Invoiced"(Field 58)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Rcd. Not Invoiced"(Field 58)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Invoiced"(Field 61)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Order No."(Field 65)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Order Line No."(Field 66)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pay-to Vendor No."(Field 68)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 79)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Currency Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Base Amount"(Field 99)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit Cost"(Field 100)". Please convert manually.


        //Unsupported feature: Change OptionString on ""IC Partner Ref. Type"(Field 107)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 1001)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Job Line Type"(Field 1002)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Unit Price"(Field 1003)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Total Price"(Field 1004)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Line Amount"(Field 1005)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Line Discount Amount"(Field 1006)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Line Discount %"(Field 1007)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Unit Price (LCY)"(Field 1008)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Total Price (LCY)"(Field 1009)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Line Amount (LCY)"(Field 1010)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Line Disc. Amount (LCY)"(Field 1011)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Job Currency Factor"(Field 1012)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Prod. Order No."(Field 5401)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Prod. Order No."(Field 5401)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Prod. Order No."(Field 5401)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5403)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Quantity (Base)"(Field 5415)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Invoiced (Base)"(Field 5461)". Please convert manually.


        //Unsupported feature: Change OptionString on ""FA Posting Type"(Field 5601)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cross-Reference No."(Field 5705)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure (Cross Ref.)"(Field 5706)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Cross-Reference Type"(Field 5707)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Lead Time Calculation"(Field 5792)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Inbound Whse. Handling Time"(Field 5793)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Order Date"(Field 5795)". Please convert manually.


        //Unsupported feature: Change Editable on "Correction(Field 5817)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Operation No."(Field 99000751)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Prod. Order Line No."(Field 99000754)". Please convert manually.

        field(13701; "Tax %"; Decimal)
        {
            CaptionML = ENU = 'Tax %',
                        ENN = 'Tax %';
            DataClassification = ToBeClassified;
            Editable = false;
            MinValue = 0;
        }
        field(13703; "Form Code"; Code[10])
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
        field(13704; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
            TableRelation = "Tax Forms Details"."Form No." WHERE("Form Code" = FIELD("Form Code"),
                                                                  Issued = CONST(false),
                                                                  State = FIELD(State));
        }
        field(13705; State; Code[10])
        {
            CaptionML = ENU = 'State',
                        ENN = 'State';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(13713; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            Editable = false;
            //TableRelation = "Excise Bus. Posting Group";
        }
        field(13714; "Excise Prod. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Prod. Posting Group',
                        ENN = 'Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            Editable = false;
            //TableRelation = "Excise Prod. Posting Group";
        }
        field(13717; "Amount Including Excise"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Excise',
                        ENN = 'Amount Including Excise';
            DataClassification = ToBeClassified;
        }
        field(13718; "Excise Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Amount',
                        ENN = 'Excise Amount';
            DataClassification = ToBeClassified;
        }
        field(13719; "Excise Base Quantity"; Decimal)
        {
            CaptionML = ENU = 'Excise Base Quantity',
                        ENN = 'Excise Base Quantity';
            DataClassification = ToBeClassified;
        }
        field(13724; "Excise Accounting Type"; Option)
        {
            CaptionML = ENU = 'Excise Accounting Type',
                        ENN = 'Excise Accounting Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'With CENVAT,Without CENVAT',
                              ENN = 'With CENVAT,Without CENVAT';
            OptionMembers = "With CENVAT","Without CENVAT";
        }
        field(13738; "Excise Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Base Amount',
                        ENN = 'Excise Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13750; "Capital Item"; Boolean)
        {
            CaptionML = ENU = 'Capital Item',
                        ENN = 'Capital Item';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13757; "BED Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'BED Amount',
                        ENN = 'BED Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13758; "AED(GSI) Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(GSI) Amount',
                        ENN = 'AED(GSI) Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13759; "SED Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'SED Amount',
                        ENN = 'SED Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13769; "SAED Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'SAED Amount',
                        ENN = 'SAED Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13770; "CESS Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'CESS Amount',
                        ENN = 'CESS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13771; "NCCD Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'NCCD Amount',
                        ENN = 'NCCD Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13772; "eCess Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'eCess Amount',
                        ENN = 'eCess Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16355; "Claim VAT"; Boolean)
        {
            CaptionML = ENU = 'Claim VAT',
                        ENN = 'Claim VAT';
            DataClassification = ToBeClassified;
            InitValue = true;
        }
        field(16356; "Refund VAT"; Boolean)
        {
            CaptionML = ENU = 'Refund VAT',
                        ENN = 'Refund VAT';
            DataClassification = ToBeClassified;
        }
        field(16357; "Consume VAT"; Boolean)
        {
            CaptionML = ENU = 'Consume VAT',
                        ENN = 'Consume VAT';
            DataClassification = ToBeClassified;
        }
        field(16358; "Reverse VAT"; Boolean)
        {
            CaptionML = ENU = 'Reverse VAT',
                        ENN = 'Reverse VAT';
            DataClassification = ToBeClassified;
        }
        field(16367; "Set Off Available"; Boolean)
        {
            CaptionML = ENU = 'Set Off Available',
                        ENN = 'Set Off Available';
            DataClassification = ToBeClassified;
        }
        field(16373; "Qty. Rejected (Rework)"; Decimal)
        {
            CaptionML = ENU = 'Qty. Rejected (Rework)',
                        ENN = 'Qty. Rejected (Rework)';
            DataClassification = ToBeClassified;
        }
        field(16376; "Qty. Rejected (C.E.)"; Decimal)
        {
            CaptionML = ENU = 'Qty. Rejected (C.E.)',
                        ENN = 'Qty. Rejected (C.E.)';
            DataClassification = ToBeClassified;
        }
        field(16377; "Qty. Rejected (V.E.)"; Decimal)
        {
            CaptionML = ENU = 'Qty. Rejected (V.E.)',
                        ENN = 'Qty. Rejected (V.E.)';
            DataClassification = ToBeClassified;
        }
        field(16383; "Vendor Shipment No."; Code[20])
        {
            CaptionML = ENU = 'Vendor Shipment No.',
                        ENN = 'Vendor Shipment No.';
            DataClassification = ToBeClassified;
        }
        field(16391; "Service Tax Group"; Code[20])
        {
            CaptionML = ENU = 'Service Tax Group',
                        ENN = 'Service Tax Group';
            DataClassification = ToBeClassified;
            // TableRelation = "Service Tax Groups".Code;

            trigger OnValidate();
            var
                CompanyInfo: Record "Company Information";
            begin
            end;
        }
        field(16392; "Service Tax %"; Decimal)
        {
            CaptionML = ENU = 'Service Tax %',
                        ENN = 'Service Tax %';
            DataClassification = ToBeClassified;
        }
        field(16405; "Service Tax eCess %"; Decimal)
        {
            CaptionML = ENU = 'Service Tax eCess %',
                        ENN = 'Service Tax eCess %';
            DataClassification = ToBeClassified;
        }
        field(16409; "RG Record Type"; Option)
        {
            CaptionML = ENU = 'RG Record Type',
                        ENN = 'RG Record Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,RG23A,RG23C',
                              ENN = ' ,RG23A,RG23C';
            OptionMembers = " ",RG23A,RG23C;
        }
        field(16410; "Excise as Service Tax Credit"; Boolean)
        {
            CaptionML = ENU = 'Excise as Service Tax Credit',
                        ENN = 'Excise as Service Tax Credit';
            DataClassification = ToBeClassified;
        }
        field(16411; "Service Tax as Excise Credit"; Boolean)
        {
            CaptionML = ENU = 'Service Tax as Excise Credit',
                        ENN = 'Service Tax as Excise Credit';
            DataClassification = ToBeClassified;
        }
        field(16452; "ADET Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'ADET Amount',
                        ENN = 'ADET Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16455; "AED(TTA) Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'AED(TTA) Amount',
                        ENN = 'AED(TTA) Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16459; "ADE Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
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
        field(16494; "SHE Cess Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'SHE Cess Amount',
                        ENN = 'SHE Cess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16504; Supplementary; Boolean)
        {
            CaptionML = ENU = 'Supplementary',
                        ENN = 'Supplementary';
            DataClassification = ToBeClassified;
        }
        field(16505; "Source Document Type"; Option)
        {
            CaptionML = ENU = 'Source Document Type',
                        ENN = 'Source Document Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Posted Invoice,Posted Credit Memo',
                              ENN = 'Posted Invoice,Posted Credit Memo';
            OptionMembers = "Posted Invoice","Posted Credit Memo";
        }
        field(16506; "Source Document No."; Code[20])
        {
            CaptionML = ENU = 'Source Document No.',
                        ENN = 'Source Document No.';
            DataClassification = ToBeClassified;
        }
        field(16509; "ADC VAT Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'ADC VAT Amount',
                        ENN = 'ADC VAT Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16510; "CIF Amount"; Decimal)
        {
            CaptionML = ENU = 'CIF Amount',
                        ENN = 'CIF Amount';
            DataClassification = ToBeClassified;
        }
        field(16511; "BCD Amount"; Decimal)
        {
            CaptionML = ENU = 'BCD Amount',
                        ENN = 'BCD Amount';
            DataClassification = ToBeClassified;
        }
        field(16512; CVD; Boolean)
        {
            CaptionML = ENU = 'CVD',
                        ENN = 'CVD';
            DataClassification = ToBeClassified;
        }
        field(16513; "Notification Sl. No."; Code[20])
        {
            CaptionML = ENU = 'Notification Sl. No.',
                        ENN = 'Notification Sl. No.';
            DataClassification = ToBeClassified;
        }
        field(16514; "Notification No."; Code[20])
        {
            CaptionML = ENU = 'Notification No.',
                        ENN = 'Notification No.';
            DataClassification = ToBeClassified;
        }
        field(16515; "CTSH No."; Code[10])
        {
            CaptionML = ENU = 'CTSH No.',
                        ENN = 'CTSH No.';
            DataClassification = ToBeClassified;
        }
        field(16518; "Reason Code"; Code[10])
        {
            CaptionML = ENU = 'Reason Code',
                        ENN = 'Reason Code';
            DataClassification = ToBeClassified;
            TableRelation = "Reason Code";
        }
        field(16522; "Excise Loading on Inventory"; Boolean)
        {
            CaptionML = ENU = 'Excise Loading on Inventory',
                        ENN = 'Excise Loading on Inventory';
            DataClassification = ToBeClassified;
        }
        field(16523; "Custom eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom eCess Amount',
                        ENN = 'Custom eCess Amount';
            DataClassification = ToBeClassified;
        }
        field(16524; "Custom SHECess Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom SHECess Amount',
                        ENN = 'Custom SHECess Amount';
            DataClassification = ToBeClassified;
        }
        field(16527; "Excise Refund"; Boolean)
        {
            CaptionML = ENU = 'Excise Refund',
                        ENN = 'Excise Refund';
            DataClassification = ToBeClassified;
        }
        field(16528; "CWIP G/L Type"; Option)
        {
            CaptionML = ENU = 'CWIP G/L Type',
                        ENN = 'CWIP G/L Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Labor,Material,Overheads',
                              ENN = ' ,Labor,Material,Overheads';
            OptionMembers = " ",Labor,Material,Overheads;
        }
        field(16539; "Service Tax SBC %"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC %',
                        ENN = 'Service Tax SBC %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16540; "Service Tax SBC Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC Amount(LCY)',
                        ENN = 'Service Tax SBC Amount(LCY)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16541; "Service Tax SBC Amount (Intm)"; Decimal)
        {
            CaptionML = ENU = 'Service Tax SBC Amount(Intm)',
                        ENN = 'Service Tax SBC Amount(Intm)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16542; "KK Cess%"; Decimal)
        {
            CaptionML = ENU = 'KK Cess%',
                        ENN = 'KK Cess%';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16543; "KK Cess Amount"; Decimal)
        {
            CaptionML = ENU = 'KK Cess Amount',
                        ENN = 'KK Cess Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16600; "GST Credit"; Option)
        {
            CaptionML = ENU = 'GST Credit',
                        ENN = 'GST Credit';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Availment,Non-Availment',
                              ENN = 'Availment,Non-Availment';
            OptionMembers = Availment,"Non-Availment";
        }
        field(16601; "GST Group Code"; Code[20])
        {
            CaptionML = ENU = 'GST Group Code',
                        ENN = 'GST Group Code';
            DataClassification = ToBeClassified;
            //TableRelation = "GST Group";
        }
        field(16602; "GST Group Type"; Option)
        {
            CaptionML = ENU = 'GST Group Type',
                        ENN = 'GST Group Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Goods,Service',
                              ENN = 'Goods,Service';
            OptionMembers = Goods,Service;
        }
        field(16603; "HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'HSN/SAC Code',
                        ENN = 'HSN/SAC Code';
            DataClassification = ToBeClassified;
            TableRelation = "HSN/SAC".Code WHERE("GST Group Code" = FIELD("GST Group Code"));
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
        field(16608; Exempted; Boolean)
        {
            CaptionML = ENU = 'Exempted',
                        ENN = 'Exempted';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16609; "GST Jurisdiction Type"; Option)
        {
            CaptionML = ENU = 'GST Jurisdiction Type',
                        ENN = 'GST Jurisdiction Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'Intrastate,Interstate',
                              ENN = 'Intrastate,Interstate';
            OptionMembers = Intrastate,Interstate;
        }
        field(16611; "Custom Duty Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom Duty Amount',
                        ENN = 'Custom Duty Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16612; "GST Reverse Charge"; Boolean)
        {
            CaptionML = ENU = 'GST Reverse Charge',
                        ENN = 'GST Reverse Charge';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16613; "GST Assessable Value"; Decimal)
        {
            CaptionML = ENU = 'GST Assessable Value',
                        ENN = 'GST Assessable Value';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
                Vendor: Record Vendor;
            begin
            end;
        }
        field(16614; "Order Address Code"; Code[10])
        {
            CaptionML = ENU = 'Order Address Code',
                        ENN = 'Order Address Code';
            DataClassification = ToBeClassified;
        }
        field(16615; "Buy-From GST Registration No"; Code[15])
        {
            CaptionML = ENU = 'Buy-From GST Registration No',
                        ENN = 'Buy-From GST Registration No';
            DataClassification = ToBeClassified;
        }
        field(16616; "GST Rounding Line"; Boolean)
        {
            CaptionML = ENU = 'GST Rounding Line',
                        ENN = 'GST Rounding Line';
            DataClassification = ToBeClassified;
        }
        field(16617; "Bill to-Location(POS)"; Code[10])
        {
            CaptionML = ENU = 'Bill to-Location(POS)',
                        ENN = 'Bill to-Location(POS)';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16624; "Non-GST Line"; Boolean)
        {
            CaptionML = ENU = 'Non-GST Line',
                        ENN = 'Non-GST Line';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(60001; "Indent No."; Code[20])
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60002; "Indent Line No."; Integer)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60003; Remarks; Text[250])
        {
            Description = 'B2B';
        }
        field(60007; "Delivery Rating"; Decimal)
        {
            Description = 'POAU';
        }
        field(60008; "Document date"; Date)
        {
            CalcFormula = Lookup("Purch. Rcpt. Header"."Posting Date" WHERE("No." = FIELD("Document No.")));
            FieldClass = FlowField;
        }
        field(60009; "Store Remarks"; Text[250])
        {
        }
        field(60013; Sample; Boolean)
        {
            Editable = true;
        }
        field(60014; Make; Code[30])
        {
            TableRelation = Make;
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
            // TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
        field(60092; "QC Passed"; Boolean)
        {
            Description = 'added  by sujani for QC Passed confirmation to Bill Transfer';
            Editable = false;
        }
        field(70005; "Part Number"; Code[30])
        {
        }
        field(33000250; "Spec ID"; Code[20])
        {
            // TableRelation = "Specification Header";
        }
        field(33000251; "Quantity Accepted"; Decimal)
        {

            trigger OnValidate();
            begin
                if ("Quantity Accepted" + "Quantity Rework") > Quantity then
                    Error('Sum of the Quantity accepted and rejected should not be more than Receipt Quantity');
            end;
        }
        field(33000252; "Quantity Rework"; Decimal)
        {

            trigger OnValidate();
            begin
                Validate("Quantity Accepted");
            end;
        }
        field(33000253; "QC Enabled"; Boolean)
        {
        }
        field(33000254; "Quantity Rejected"; Decimal)
        {
        }
        field(33000255; "Quality Before Receipt"; Boolean)
        {
        }
        field(33000259; "Spec Version"; Code[20])
        {
            //TableRelation = "Specification Version"."Version Code" WHERE("Specification No." = FIELD("Spec ID"));
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order No.,Order Line No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Blanket Order No.,Blanket Order Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item Rcpt. Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Pay-to Vendor No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Buy-from Vendor No."(Key)". Please convert manually.

        key(DocNO1; "Document No.", "Line No.")
        {
        }
        key(OrdNo2; "Order No.", "Order Line No.", "Posting Date")
        {
        }
        key(BlankOrd3; "Blanket Order No.", "Blanket Order Line No.")
        {
        }
        key(ItemRcpt4; "Item Rcpt. Entry No.")
        {
        }
        key(Payto5; "Pay-to Vendor No.")
        {
        }
        key(Buyfrom6; "Buy-from Vendor No.")
        {
        }
        key(BuyFromNo7; "Buy-from Vendor No.", "No.", Type)
        {
            // SumIndexFields = Quantity, "Delivery Rating";
        }
        key(No8; "No.", "Buy-from Vendor No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    PurchDocLineComments.SETRANGE("Document Type",PurchDocLineComments."Document Type"::Receipt);
    PurchDocLineComments.SETRANGE("No.","Document No.");
    PurchDocLineComments.SETRANGE("Document Line No.","Line No.");
    IF NOT PurchDocLineComments.ISEMPTY THEN
      PurchDocLineComments.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    {PurchDocLineComments.SETRANGE("Document Type",PurchDocLineComments."Document Type"::Receipt);
    #2..5
     Body:='****  Auto Mail Generated From ERP  ****';
     Mail_From:='erp@efftronics.net';
    Mail_To:='anilkumar@efftronics.net,santhoshk@efftronics.net,swarupa@efftronics.net,sreenu@efftronics.net,phani@efftronics.net';
    // Mail_To:='santhoshk@efftronics.net';
     //USER.SETRANGE(USER."User Security ID",USERID);// Changed User."User Id" to User."User Security ID" B2B//UPGREV2.0
     USER.SETRANGE("User Name",USERID);//UPGREV2.0
     IF USER.FIND('-') THEN
     Subject:=USER."User Name"+'  is trying to Delete Purchase Receipt Line Records';// Changed User."Name" to User."User Name" B2B
     Mail.NewCDOMessage(Mail_From,Mail_To,Subject,Body,'');
      ERROR('U Dont Have Permissions to Delete');
    }
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //begin
    /*
    if not (UserId in ['EFFTRONICS\TPRIYANKA','EFFTRONICS\ANILKUMAR','EFFTRONICS\SUVARCHALADEVI','EFFTRONICS\DURGAMAHESWARI','EFFTRONICS\GRAVI'] ) then
      Error('You donot have rights to delete.Contact ERP Team');
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.PurchDocLineComments(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PurchDocLineComments : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PurchDocLineComments : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemTrackingLines(PROCEDURE 3).ItemTrackingDocMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemTrackingLines : 6503;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemTrackingLines : "Item Tracking Doc. Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRcptLine(PROCEDURE 2).PurchInvHeader(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRcptLine : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRcptLine : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRcptLine(PROCEDURE 2).PurchOrderHeader(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRcptLine : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRcptLine : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRcptLine(PROCEDURE 2).PurchOrderLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRcptLine : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRcptLine : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRcptLine(PROCEDURE 2).TempPurchLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRcptLine : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRcptLine : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRcptLine(PROCEDURE 2).TransferOldExtLines(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRcptLine : 379;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRcptLine : "Transfer Old Ext. Text Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRcptLine(PROCEDURE 2).ItemTrackingMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRcptLine : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRcptLine : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRcptLine(PROCEDURE 2).LanguageManagement(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRcptLine : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRcptLine : LanguageManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPurchInvLines(PROCEDURE 4).PurchInvLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPurchInvLines : 123;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPurchInvLines : "Purch. Inv. Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPurchInvLines(PROCEDURE 4).ItemLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPurchInvLines : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPurchInvLines : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPurchInvLines(PROCEDURE 4).ValueEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPurchInvLines : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPurchInvLines : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcReceivedPurchNotReturned(PROCEDURE 6).ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcReceivedPurchNotReturned : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcReceivedPurchNotReturned : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemPurchInvLines(PROCEDURE 9).TempPurchInvLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemPurchInvLines : 123;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemPurchInvLines : "Purch. Inv. Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineComments(PROCEDURE 11).PurchCommentLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineComments : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineComments : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FormatType(PROCEDURE 144).PurchaseLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FormatType : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FormatType : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFieldCaption(PROCEDURE 31).Field(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFieldCaption : 2000000041;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFieldCaption : Field;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Currency(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Currency : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Currency : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchRcptHeader(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PurchRcptHeader : 120;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PurchRcptHeader : "Purch. Rcpt. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.

    var
        USER: Record User;
        Body: Text[250];
        Mail_From: Text[250];
        Mail_To: Text[250];
        Mail: Codeunit Mail;
        Subject: Text[250];
        TDSNatureofDeduction: Record "TDS Nature of Deduction";
}

