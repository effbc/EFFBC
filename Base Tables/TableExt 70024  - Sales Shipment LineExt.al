tableextension 70024 SalesShipmentLineExt extends "Sales Shipment Line"
{
    // version NAVW19.00.00.51685,NAVIN9.00.00.51685,TFS225680,B2B1.0

    fields
    {

        //Unsupported feature: Change NotBlank on ""Sell-to Customer No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.

        modify("No.")
        {

            //Unsupported feature: Change TableRelation on ""No."(Field 6)". Please convert manually.

            CaptionClass = GetCaptionClass(FieldNo("No."));
        }

        //Unsupported feature: Change TableRelation on ""Location Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 11)". Please convert manually.


        //Unsupported feature: Change Data type on ""Description 2"(Field 12)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT %"(Field 25)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Invoice Disc."(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Item Entry"(Field 38)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Qty. Shipped Not Invoiced"(Field 58)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Shipped Not Invoiced"(Field 58)". Please convert manually.


        //Unsupported feature: Change Editable on ""Quantity Invoiced"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to Customer No."(Field 68)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Drop Shipment"(Field 73)". Please convert manually.


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


        //Unsupported feature: Change Editable on ""Job Task No."(Field 1001)". Please convert manually.


        //Unsupported feature: Change Editable on ""Job Contract Entry No."(Field 1002)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5403)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. Invoiced (Base)"(Field 5461)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cross-Reference No."(Field 5705)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure (Cross Ref.)"(Field 5706)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Cross-Reference Type"(Field 5707)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change Editable on ""Requested Delivery Date"(Field 5790)". Please convert manually.


        //Unsupported feature: Change Editable on ""Promised Delivery Date"(Field 5791)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Time"(Field 5792)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Outbound Whse. Handling Time"(Field 5793)". Please convert manually.


        //Unsupported feature: Change Editable on ""Planned Delivery Date"(Field 5794)". Please convert manually.


        //Unsupported feature: Change Editable on ""Planned Shipment Date"(Field 5795)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-from Item Entry"(Field 5811)". Please convert manually.


        //Unsupported feature: Change Editable on "Correction(Field 5817)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Line Disc."(Field 7001)". Please convert manually.

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
            //TableRelation = "Excise Prod. Posting Group";
        }
        field(13708; "Excise Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Amount',
                        ENN = 'Excise Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13711; "Amount Including Excise"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Excise',
                        ENN = 'Amount Including Excise';
            DataClassification = ToBeClassified;
        }
        field(13712; "Excise Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
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
        field(13796; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;

            trigger OnLookup();
            var
            //StateForm: Record "State Forms";
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
        field(16378; "Service Tax %"; Decimal)
        {
            CaptionML = ENU = 'Service Tax %',
                        ENN = 'Service Tax %';
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
        field(16456; "Free Supply"; Boolean)
        {
            CaptionML = ENU = 'Free Supply',
                        ENN = 'Free Supply';
            DataClassification = ToBeClassified;
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
            AutoFormatType = 1;
            CaptionML = ENU = 'SHE Cess Amount',
                        ENN = 'SHE Cess Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16500; "Direct Debit To PLA / RG"; Boolean)
        {
            CaptionML = ENU = 'Direct Debit To PLA / RG',
                        ENN = 'Direct Debit To PLA / RG';
            DataClassification = ToBeClassified;
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
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'ADC VAT Amount',
                        ENN = 'ADC VAT Amount';
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(16525; "CIF Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'CIF Amount',
                        ENN = 'CIF Amount';
            DataClassification = ToBeClassified;
        }
        field(16526; "BCD Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
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
            //TableRelation = "Structure Header";
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
            // TableRelation = "GST Group";
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
        field(60001; "Production BOM No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Production BOM Header"."No.";
        }
        field(60002; "Production Bom Version No."; Code[20])
        {
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
            Description = 'B2B';
        }
        field(60005; "RDSO Unit Charges"; Decimal)
        {
            Description = 'B2B';
        }
        field(60006; "LD Starting Date"; Date)
        {
            Description = 'B2B';
        }
        field(60007; "LD Amount"; Decimal)
        {
            Description = 'B2B';
        }
        field(60008; "RDSO Charges Paid By"; Option)
        {
            Description = 'B2B';
            OptionMembers = "By ESPL","By Customer";
        }
        field(60009; "RDSO Inspection Required"; Boolean)
        {
            Description = 'B2B';
        }
        field(60010; "RDSO Inspection By"; Option)
        {
            Description = 'B2B';
            OptionMembers = Us,Them;
        }
        field(60011; "RDSO Charges"; Decimal)
        {
            Description = 'B2B';
        }
        field(60012; "Schedule Type"; Option)
        {
            Description = 'B2B';
            OptionCaption = '" ,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z"';
            OptionMembers = " ",A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z;
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
        field(60110; "Supply Portion"; Decimal)
        {
        }
        field(60111; "Retention Portion"; Decimal)
        {
        }
        field(60112; "Type of Item"; Option)
        {
            OptionMembers = " ","Only Supply","Supply & Inst","Supply & Laying","Only Inst";
        }
        field(60113; "Schedule No"; Integer)
        {
        }
        field(60114; "Unitcost(LOA)"; Decimal)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order No.,Order Line No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Blanket Order No.,Blanket Order Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item Shpt. Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Sell-to Customer No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Bill-to Customer No."(Key)". Please convert manually.

        key(Doc1; "Document No.", "Line No.")
        {
        }
        key(Ord2; "Order No.", "Order Line No.", "Posting Date")
        {
        }
        key(Blan3; "Blanket Order No.", "Blanket Order Line No.")
        {
        }
        key(ItemShpt4; "Item Shpt. Entry No.")
        {
        }
        key(SellToCust5; "Sell-to Customer No.")
        {
        }
        key(BilltoCust6; "Bill-to Customer No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ServItem.RESET;
    ServItem.SETCURRENTKEY("Sales/Serv. Shpt. Document No.","Sales/Serv. Shpt. Line No.");
    ServItem.SETRANGE("Sales/Serv. Shpt. Document No.","Document No.");
    ServItem.SETRANGE("Sales/Serv. Shpt. Line No.","Line No.");
    ServItem.SETRANGE("Shipment Type",ServItem."Shipment Type"::Sales);
    IF ServItem.FIND('-') THEN
      REPEAT
        ServItem.VALIDATE("Sales/Serv. Shpt. Document No.",'');
        ServItem.VALIDATE("Sales/Serv. Shpt. Line No.",0);
        ServItem.MODIFY(TRUE);
      UNTIL ServItem.NEXT = 0;

    SalesDocLineComments.SETRANGE("Document Type",SalesDocLineComments."Document Type"::Shipment);
    SalesDocLineComments.SETRANGE("No.","Document No.");
    SalesDocLineComments.SETRANGE("Document Line No.","Line No.");
    IF NOT SalesDocLineComments.ISEMPTY THEN
      SalesDocLineComments.DELETEALL;

    PostedATOLink.DeleteAsmFromSalesShptLine(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ServItem.Reset;
    ServItem.SetCurrentKey("Sales/Serv. Shpt. Document No.","Sales/Serv. Shpt. Line No.");
    ServItem.SetRange("Sales/Serv. Shpt. Document No.","Document No.");
    ServItem.SetRange("Sales/Serv. Shpt. Line No.","Line No.");
    ServItem.SetRange("Shipment Type",ServItem."Shipment Type"::Sales);
    if ServItem.Find('-') then
      repeat
        ServItem.Validate("Sales/Serv. Shpt. Document No.",'');
        ServItem.Validate("Sales/Serv. Shpt. Line No.",0);
        ServItem.Modify(true);
      until ServItem.Next = 0;

    SalesDocLineComments.SetRange("Document Type",SalesDocLineComments."Document Type"::Shipment);
    SalesDocLineComments.SetRange("No.","Document No.");
    SalesDocLineComments.SetRange("Document Line No.","Line No.");
    if not SalesDocLineComments.IsEmpty then
      SalesDocLineComments.DeleteAll;

    PostedATOLink.DeleteAsmFromSalesShptLine(Rec);
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.ServItem(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ServItem : 5940;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ServItem : "Service Item";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.SalesDocLineComments(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SalesDocLineComments : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SalesDocLineComments : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemTrackingLines(PROCEDURE 6500).ItemTrackingDocMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemTrackingLines : 6503;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemTrackingLines : "Item Tracking Doc. Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromShptLine(PROCEDURE 2).SalesInvHeader(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromShptLine : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromShptLine : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromShptLine(PROCEDURE 2).SalesOrderHeader(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromShptLine : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromShptLine : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromShptLine(PROCEDURE 2).SalesOrderLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromShptLine : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromShptLine : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromShptLine(PROCEDURE 2).TempSalesLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromShptLine : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromShptLine : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromShptLine(PROCEDURE 2).TransferOldExtLines(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromShptLine : 379;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromShptLine : "Transfer Old Ext. Text Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromShptLine(PROCEDURE 2).ItemTrackingMgt(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromShptLine : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromShptLine : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertInvLineFromShptLine(PROCEDURE 2).LanguageManagement(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertInvLineFromShptLine : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertInvLineFromShptLine : LanguageManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSalesInvLines(PROCEDURE 4).SalesInvLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSalesInvLines : 113;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSalesInvLines : "Sales Invoice Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSalesInvLines(PROCEDURE 4).ItemLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSalesInvLines : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSalesInvLines : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSalesInvLines(PROCEDURE 4).ValueEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSalesInvLines : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSalesInvLines : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcShippedSaleNotReturned(PROCEDURE 3).ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcShippedSaleNotReturned : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcShippedSaleNotReturned : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowItemSalesInvLines(PROCEDURE 8).TempSalesInvLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemSalesInvLines : 113;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemSalesInvLines : "Sales Invoice Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineComments(PROCEDURE 10).SalesCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineComments : 44;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineComments : "Sales Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AsmToShipmentExists(PROCEDURE 72).PostedAssembleToOrderLink(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AsmToShipmentExists : 914;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AsmToShipmentExists : "Posted Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FormatType(PROCEDURE 144).SalesLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FormatType : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FormatType : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFieldCaption(PROCEDURE 31).Field(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFieldCaption : 2000000041;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFieldCaption : Field;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Currency(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Currency : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Currency : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesShptHeader(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesShptHeader : 110;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesShptHeader : "Sales Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostedATOLink(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostedATOLink : 914;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostedATOLink : "Posted Assemble-to-Order Link";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.
}

