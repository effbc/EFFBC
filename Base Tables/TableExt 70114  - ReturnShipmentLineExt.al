tableextension 70114 ReturnShipmentLineExt extends "Return Shipment Line"
{
    // version NAVW19.00.00.50221,NAVIN9.00.00.50221

    fields
    {

        //Unsupported feature: Change Editable on ""Buy-from Vendor No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT %"(Field 25)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Invoice Disc."(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Item Entry"(Field 38)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Invoiced"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pay-to Vendor No."(Field 68)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 79)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Currency Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change Editable on ""Currency Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Base Amount"(Field 99)". Please convert manually.


        //Unsupported feature: Change Editable on ""Unit Cost"(Field 100)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Job Task No."(Field 1001)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5403)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Invoiced (Base)"(Field 5461)". Please convert manually.


        //Unsupported feature: Change OptionString on ""FA Posting Type"(Field 5601)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Responsibility Center"(Field 5700)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cross-Reference No."(Field 5705)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure (Cross Ref.)"(Field 5706)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Cross-Reference Type"(Field 5707)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Qty. Shipped Not Invd."(Field 5805)". Please convert manually.


        //Unsupported feature: Change Editable on "Correction(Field 5817)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Order No."(Field 6602)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Order Line No."(Field 6603)". Please convert manually.

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
                StateForm: Record "State Forms";
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
        field(13711; "Tax Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Tax Base Amount',
                        ENN = 'Tax Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13713; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(13714; "Excise Prod. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Prod. Posting Group',
                        ENN = 'Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "Excise Prod. Posting Group";
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
        field(13722; "Tax Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Tax Amount',
                        ENN = 'Tax Amount';
            DataClassification = ToBeClassified;
            Editable = false;
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
        field(16367; "SetOff Available"; Boolean)
        {
            CaptionML = ENU = 'SetOff Available',
                        ENN = 'SetOff Available';
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
            TableRelation = "Service Tax Groups".Code;

            trigger OnValidate();
            var
                CompanyInfo: Record "Company Information";
            begin
            end;
        }
        field(16393; "Service Tax Base"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Base',
                        ENN = 'Service Tax Base';
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
        field(16494; "SHE Cess Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
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
            AutoFormatType = 1;
            CaptionML = ENU = 'ADC VAT Amount',
                        ENN = 'ADC VAT Amount';
            DataClassification = ToBeClassified;
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
            MinValue = 0;
        }
        field(16524; "Custom SHECess Amount"; Decimal)
        {
            CaptionML = ENU = 'Custom SHECess Amount',
                        ENN = 'Custom SHECess Amount';
            DataClassification = ToBeClassified;
            MinValue = 0;
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
            TableRelation = "GST Group";
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


        //Unsupported feature: Deletion on ""Return Order No.,Return Order Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Blanket Order No.,Blanket Order Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Pay-to Vendor No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Buy-from Vendor No."(Key)". Please convert manually.

        key(Key1; "Document No.", "Line No.")
        {
        }
        key(Key2; "Return Order No.", "Return Order Line No.")
        {
        }
        key(Key3; "Blanket Order No.", "Blanket Order Line No.")
        {
        }
        key(Key4; "Pay-to Vendor No.")
        {
        }
        key(Key5; "Buy-from Vendor No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    PurchDocLineComments.SETRANGE("Document Type",PurchDocLineComments."Document Type"::"Posted Return Shipment");
    PurchDocLineComments.SETRANGE("No.","Document No.");
    PurchDocLineComments.SETRANGE("Document Line No.","Line No.");
    IF NOT PurchDocLineComments.ISEMPTY THEN
      PurchDocLineComments.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    PurchDocLineComments.SetRange("Document Type",PurchDocLineComments."Document Type"::"Posted Return Shipment");
    PurchDocLineComments.SetRange("No.","Document No.");
    PurchDocLineComments.SetRange("Document Line No.","Line No.");
    if not PurchDocLineComments.IsEmpty then
      PurchDocLineComments.DeleteAll;
    */
    //end;

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


    //Unsupported feature: PropertyModification on "ShowDimensions(PROCEDURE 25).DimMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDimensions : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDimensions : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemTrackingLines(PROCEDURE 3).ItemTrackingDocMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemTrackingLines : 6503;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemTrackingLines : "Item Tracking Doc. Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRetShptLine(PROCEDURE 2).PurchHeader(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRetShptLine : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRetShptLine : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRetShptLine(PROCEDURE 2).PurchHeader2(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRetShptLine : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRetShptLine : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRetShptLine(PROCEDURE 2).PurchOrderLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRetShptLine : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRetShptLine : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRetShptLine(PROCEDURE 2).TempPurchLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRetShptLine : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRetShptLine : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRetShptLine(PROCEDURE 2).PurchSetup(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRetShptLine : 312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRetShptLine : "Purchases & Payables Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromRetShptLine(PROCEDURE 2).TransferOldExtLines(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRetShptLine : 379;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRetShptLine : "Transfer Old Ext. Text Lines";
    //Variable type has not been exported.


    //Unsupported feature: CodeModification on "InsertInvLineFromRetShptLine(PROCEDURE 2).ItemTrackingMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromRetShptLine : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromRetShptLine : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPurchCrMemoLines(PROCEDURE 4).PurchCrMemoLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPurchCrMemoLines : 125;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPurchCrMemoLines : "Purch. Cr. Memo Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPurchCrMemoLines(PROCEDURE 4).ItemLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPurchCrMemoLines : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPurchCrMemoLines : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPurchCrMemoLines(PROCEDURE 4).ValueEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPurchCrMemoLines : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPurchCrMemoLines : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemPurchCrMemoLines(PROCEDURE 9).TempPurchCrMemoLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemPurchCrMemoLines : 125;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemPurchCrMemoLines : "Purch. Cr. Memo Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineComments(PROCEDURE 5).PurchCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineComments : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineComments : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Currency(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Currency : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Currency : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReturnShptHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReturnShptHeader : 6650;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReturnShptHeader : "Return Shipment Header";
    //Variable type has not been exported.
}

