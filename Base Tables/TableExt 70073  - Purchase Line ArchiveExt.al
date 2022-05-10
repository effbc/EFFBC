tableextension 70073 PurchaseLineArchiveExt extends "Purchase Line Archive"
{
    // version NAVW19.00.00.51685,NAVIN9.00.00.51685,POAU,TDS-REGEF-194Q

    fields
    {
        modify("Document Type")
        {
            OptionCaptionML = ENU = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Enquiry', ENN = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Enquiry';

            //Unsupported feature: Change OptionString on ""Document Type"(Field 1)". Please convert manually.

        }

        //Unsupported feature: Change TableRelation on ""Document No."(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Qty. to Receive"(Field 18)". Please convert manually.

        modify("Direct Unit Cost")
        {
            CaptionClass = GetCaptionClass(FieldNo("Direct Unit Cost"));
        }

        //Unsupported feature: Change InitValue on ""Allow Invoice Disc."(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Item Entry"(Field 38)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Quantity Received"(Field 60)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sales Order No."(Field 71)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sales Order Line No."(Field 72)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Drop Shipment"(Field 73)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 79)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change Editable on ""Attached to Line No."(Field 80)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Blanket Order No."(Field 97)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Blanket Order Line No."(Field 98)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Blanket Order Line No."(Field 98)". Please convert manually.

        modify("Line Amount")
        {
            CaptionClass = GetCaptionClass(FieldNo("Line Amount"));
        }

        //Unsupported feature: Change OptionString on ""IC Partner Ref. Type"(Field 107)". Please convert manually.

        modify("Prepmt. Line Amount")
        {
            CaptionClass = GetCaptionClass(FieldNo("Prepmt. Line Amount"));
        }
        modify("Prepmt. Amt. Inv.")
        {

            //Unsupported feature: Change Editable on ""Prepmt. Amt. Inv."(Field 111)". Please convert manually.

            CaptionClass = GetCaptionClass(FieldNo("Prepmt. Amt. Inv."));
        }

        //Unsupported feature: Change Editable on ""Prepmt. Amt. Incl. VAT"(Field 112)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment Amount"(Field 113)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. VAT Base Amt."(Field 114)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment VAT %"(Field 115)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Prepmt. VAT Calc. Type"(Field 116)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. VAT Calc. Type"(Field 116)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepayment VAT Identifier"(Field 117)". Please convert manually.

        modify("Prepmt Amt to Deduct")
        {
            CaptionClass = GetCaptionClass(FieldNo("Prepmt Amt to Deduct"));
        }
        modify("Prepmt Amt Deducted")
        {

            //Unsupported feature: Change Editable on ""Prepmt Amt Deducted"(Field 122)". Please convert manually.

            CaptionClass = GetCaptionClass(FieldNo("Prepmt Amt Deducted"));
        }

        //Unsupported feature: Change Editable on ""Prepayment Line"(Field 123)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prepmt. Amount Inv. Incl. VAT"(Field 124)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Prod. Order No."(Field 5401)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Prod. Order No."(Field 5401)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Prod. Order No."(Field 5401)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 5403)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change OptionString on ""FA Posting Type"(Field 5601)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cross-Reference No."(Field 5705)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure (Cross Ref.)"(Field 5706)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Cross-Reference Type"(Field 5707)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Special Order Sales No."(Field 5714)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Special Order Sales Line No."(Field 5715)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Lead Time Calculation"(Field 5792)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Inbound Whse. Handling Time"(Field 5793)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Order Date"(Field 5795)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Item Charge Assignment"(Field 5800)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Allow Item Charge Assignment"(Field 5800)". Please convert manually.


        //Unsupported feature: Change Editable on ""Return Shipment Line No."(Field 6601)". Please convert manually.


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
        field(13702; "Amount Including Tax"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Tax',
                        ENN = 'Amount Including Tax';
            DataClassification = ToBeClassified;
            Editable = false;
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
        field(13730; "Work Tax Base Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Work Tax Base Amount',
                        ENN = 'Work Tax Base Amount';
            DataClassification = ToBeClassified;
        }
        field(13731; "Work Tax %"; Decimal)
        {
            CaptionML = ENU = 'Work Tax %',
                        ENN = 'Work Tax %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13732; "Work Tax Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Work Tax Amount',
                        ENN = 'Work Tax Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13733; "TDS Category"; Option)
        {
            CaptionML = ENU = 'TDS Category',
                        ENN = 'TDS Category';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,A,C,S',
                              ENN = ' ,A,C,S';
            OptionMembers = " ",A,C,S;
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
            AutoFormatExpression = "Currency Code";
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
            Editable = false;
            TableRelation = "Concessional Codes";
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
        field(13740; "TDS Amount"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'TDS Amount',
                        ENN = 'TDS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13741; "TDS Nature of Deduction"; Code[10])
        {
            CaptionML = ENU = 'TDS Nature of Deduction',
                        ENN = 'TDS Nature of Deduction';
            DataClassification = ToBeClassified;
            TableRelation = "TDS Nature of Deduction";
        }
        field(13742; "Assessee Code"; Code[10])
        {
            CaptionML = ENU = 'Assessee Code',
                        ENN = 'Assessee Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "Assessee Code";
        }
        field(13743; "TDS %"; Decimal)
        {
            CaptionML = ENU = 'TDS %',
                        ENN = 'TDS %';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13744; "TDS Amount Including Surcharge"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'TDS Amount Including Surcharge',
                        ENN = 'TDS Amount Including Surcharge';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13746; "Bal. TDS Including SHE CESS"; Decimal)
        {
            CaptionML = ENU = 'Bal. TDS Including SHE CESS',
                        ENN = 'Bal. TDS Including SHE CESS';
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
        field(13775; "Amount Added to Excise Base"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Excise Base',
                        ENN = 'Amount Added to Excise Base';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13776; "Amount Added to Tax Base"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Tax Base',
                        ENN = 'Amount Added to Tax Base';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13777; "Amount Added to Inventory"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Added to Inventory',
                        ENN = 'Amount Added to Inventory';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16340; "Amount To Vendor"; Decimal)
        {
            CaptionML = ENU = 'Amount To Vendor',
                        ENN = 'Amount To Vendor';
            DataClassification = ToBeClassified;
        }
        field(16342; "Charges To Vendor"; Decimal)
        {
            CaptionML = ENU = 'Charges To Vendor',
                        ENN = 'Charges To Vendor';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16343; "TDS Base Amount"; Decimal)
        {
            CaptionML = ENU = 'TDS Base Amount',
                        ENN = 'TDS Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16362; "Surcharge Base Amount"; Decimal)
        {
            CaptionML = ENU = 'Surcharge Base Amount',
                        ENN = 'Surcharge Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16363; "TDS Group"; Option)
        {
            CaptionML = ENU = 'TDS Group',
                        ENN = 'TDS Group';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Contractor,Commission,Professional,Interest,Rent,Others,Dividend,Goods',
                              ENN = ' ,Contractor,Commission,Professional,Interest,Rent,Others,Dividend,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Others,Dividend,Goods;
        }
        field(16364; "Work Tax Nature Of Deduction"; Code[10])
        {
            CaptionML = ENU = 'Work Tax Nature Of Deduction',
                        ENN = 'Work Tax Nature Of Deduction';
            DataClassification = ToBeClassified;
            TableRelation = "TDS Nature of Deduction";
        }
        field(16365; "Work Tax Group"; Option)
        {
            CaptionML = ENU = 'Work Tax Group',
                        ENN = 'Work Tax Group';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Contractor,Commission,Professional,Interest,Rent,Others',
                              ENN = ' ,Contractor,Commission,Professional,Interest,Rent,Others';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Others;
        }
        field(16366; "Temp TDS Base"; Decimal)
        {
            CaptionML = ENU = 'Temp TDS Base',
                        ENN = 'Temp TDS Base';
            DataClassification = ToBeClassified;
        }
        field(16367; "SetOff Available"; Boolean)
        {
            CaptionML = ENU = 'SetOff Available',
                        ENN = 'SetOff Available';
            DataClassification = ToBeClassified;
        }
        field(16370; Subcontracting; Boolean)
        {
            CaptionML = ENU = 'Subcontracting',
                        ENN = 'Subcontracting';
            DataClassification = ToBeClassified;
        }
        field(16371; SubConSend; Boolean)
        {
            CaptionML = ENU = 'SubConSend',
                        ENN = 'SubConSend';
            DataClassification = ToBeClassified;
        }
        field(16372; "Delivery Challan Posted"; Integer)
        {
            CalcFormula = Count("Delivery Challan Header" WHERE("Sub. order No." = FIELD("Document No."),
                                                                 "Sub. Order Line No." = FIELD("Line No.")));
            CaptionML = ENU = 'Delivery Challan Posted',
                        ENN = 'Delivery Challan Posted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16373; "Qty. to Reject (Rework)"; Decimal)
        {
            CaptionML = ENU = 'Qty. to Reject (Rework)',
                        ENN = 'Qty. to Reject (Rework)';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
        }
        field(16374; "Qty. Rejected (Rework)"; Decimal)
        {
            CaptionML = ENU = 'Qty. Rejected (Rework)',
                        ENN = 'Qty. Rejected (Rework)';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Editable = false;
        }
        field(16375; SendForRework; Boolean)
        {
            CaptionML = ENU = 'SendForRework',
                        ENN = 'SendForRework';
            DataClassification = ToBeClassified;
        }
        field(16376; "Qty. to Reject (C.E.)"; Decimal)
        {
            CaptionML = ENU = 'Qty. to Reject (C.E.)',
                        ENN = 'Qty. to Reject (C.E.)';
            DataClassification = ToBeClassified;
        }
        field(16377; "Qty. to Reject (V.E.)"; Decimal)
        {
            CaptionML = ENU = 'Qty. to Reject (V.E.)',
                        ENN = 'Qty. to Reject (V.E.)';
            DataClassification = ToBeClassified;
        }
        field(16378; "Qty. Rejected (C.E.)"; Decimal)
        {
            CaptionML = ENU = 'Qty. Rejected (C.E.)',
                        ENN = 'Qty. Rejected (C.E.)';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Editable = false;
        }
        field(16379; "Qty. Rejected (V.E.)"; Decimal)
        {
            CaptionML = ENU = 'Qty. Rejected (V.E.)',
                        ENN = 'Qty. Rejected (V.E.)';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            Editable = false;
        }
        field(16380; "Deliver Comp. For"; Decimal)
        {
            CaptionML = ENU = 'Deliver Comp. For',
                        ENN = 'Deliver Comp. For';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
        }
        field(16381; "Posting Date"; Date)
        {
            CaptionML = ENU = 'Posting Date',
                        ENN = 'Posting Date';
            DataClassification = ToBeClassified;
        }
        field(16382; Status; Option)
        {
            CaptionML = ENU = 'Status',
                        ENN = 'Status';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Open,Closed',
                              ENN = 'Open,Closed';
            OptionMembers = Open,Closed;

            trigger OnValidate();
            var
                SubOrderCompListVend: Record "Sub Order Comp. List Vend";
                ProdOrder: Record "Production Order";
                SubOrderCompList: Record "Sub Order Component List";
                Text16360: TextConst ENU = 'There is still components pending at vendor location.', ENN = 'There is still components pending at vendor location.';
                Text16361: TextConst ENU = 'Reopening is not allowed Production Order %1 has already been reported as Finished.', ENN = 'Reopening is not allowed Production Order %1 has already been reported as Finished.';
            begin
            end;
        }
        field(16383; "Vendor Shipment No."; Code[20])
        {
            CaptionML = ENU = 'Vendor Shipment No.',
                        ENN = 'Vendor Shipment No.';
            DataClassification = ToBeClassified;
        }
        field(16384; "Released Production Order"; Code[20])
        {
            CaptionML = ENU = 'Released Production Order',
                        ENN = 'Released Production Order';
            DataClassification = ToBeClassified;
            TableRelation = "Production Order"."No." WHERE(Status = CONST(Finished),
                                                            "No." = FIELD("Prod. Order No."));
        }
        field(16385; SubConReceive; Boolean)
        {
            CaptionML = ENU = 'SubConReceive',
                        ENN = 'SubConReceive';
            DataClassification = ToBeClassified;
        }
        field(16386; "Component Item No."; Code[20])
        {
            CaptionML = ENU = 'Component Item No.',
                        ENN = 'Component Item No.';
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
        field(16394; "Service Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax Amount',
                        ENN = 'Service Tax Amount';
            DataClassification = ToBeClassified;
        }
        field(16395; "Service Tax Registration No."; Code[20])
        {
            CaptionML = ENU = 'Service Tax Registration No.',
                        ENN = 'Service Tax Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Registration Nos.".Code;
        }
        field(16397; "eCESS % on TDS"; Decimal)
        {
            CaptionML = ENU = 'eCESS % on TDS',
                        ENN = 'eCESS % on TDS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16398; "eCESS on TDS Amount"; Decimal)
        {
            CaptionML = ENU = 'eCESS on TDS Amount',
                        ENN = 'eCESS on TDS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16399; "Total TDS Including SHE CESS"; Decimal)
        {
            CaptionML = ENU = 'Total TDS Including SHE CESS',
                        ENN = 'Total TDS Including SHE CESS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16400; "Per Contract"; Boolean)
        {
            CaptionML = ENU = 'Per Contract',
                        ENN = 'Per Contract';
            DataClassification = ToBeClassified;
        }
        field(16406; "Service Tax eCess Amount"; Decimal)
        {
            CaptionML = ENU = 'Service Tax eCess Amount',
                        ENN = 'Service Tax eCess Amount';
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
        field(16519; "SHE Cess % On TDS"; Decimal)
        {
            CaptionML = ENU = 'SHE Cess % On TDS',
                        ENN = 'SHE Cess % On TDS';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16520; "SHE Cess on TDS Amount"; Decimal)
        {
            CaptionML = ENU = 'SHE Cess on TDS Amount',
                        ENN = 'SHE Cess on TDS Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16522; "Excise Loading on Inventory"; Boolean)
        {
            CaptionML = ENU = 'Excise Loading on Inventory',
                        ENN = 'Excise Loading on Inventory';
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

            trigger OnValidate();
            begin
                /*IF "CWIP G/L Type" > "CWIP G/L Type"::" " THEN
                  TESTFIELD(Type,Type::"G/L Account");
                  */

            end;
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
        }
        field(16624; "Non-GST Line"; Boolean)
        {
            CaptionML = ENU = 'Non-GST Line',
                        ENN = 'Non-GST Line';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(60013; Sample; Boolean)
        {
        }
        field(60014; Make; Code[30])
        {
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
        field(60092; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document Type,Document No.,Doc. No. Occurrence,Version No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Line No.,Doc. No. Occurrence,Version No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Buy-from Vendor No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Pay-to Vendor No."(Key)". Please convert manually.

        key(Key1; "Document Type", "Document No.", "Doc. No. Occurrence", "Version No.", "Line No.")
        {
        }
        key(Key2; "Document Type", "Document No.", "Line No.", "Doc. No. Occurrence", "Version No.")
        {
        }
        key(Key3; "Buy-from Vendor No.")
        {
        }
        key(Key4; "Pay-to Vendor No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    PurchCommentLineArch.SETRANGE("Document Type","Document Type");
    PurchCommentLineArch.SETRANGE("No.","No.");
    PurchCommentLineArch.SETRANGE("Document Line No.","Line No.");
    PurchCommentLineArch.SETRANGE("Doc. No. Occurrence","Doc. No. Occurrence");
    PurchCommentLineArch.SETRANGE("Version No.","Version No.");
    IF NOT PurchCommentLineArch.ISEMPTY THEN
      PurchCommentLineArch.DELETEALL;

    IF "Deferral Code" <> '' THEN
      DeferralHeaderArchive.DeleteHeader(DeferralUtilities.GetPurchDeferralDocType,
        "Document Type","Document No.","Doc. No. Occurrence","Version No.","Line No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    PurchCommentLineArch.SetRange("Document Type","Document Type");
    PurchCommentLineArch.SetRange("No.","No.");
    PurchCommentLineArch.SetRange("Document Line No.","Line No.");
    PurchCommentLineArch.SetRange("Doc. No. Occurrence","Doc. No. Occurrence");
    PurchCommentLineArch.SetRange("Version No.","Version No.");
    if not PurchCommentLineArch.IsEmpty then
      PurchCommentLineArch.DeleteAll;

    if "Deferral Code" <> '' then
      DeferralHeaderArchive.DeleteHeader(DeferralUtilities.GetPurchDeferralDocType,
        "Document Type","Document No.","Doc. No. Occurrence","Version No.","Line No.");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.PurchCommentLineArch(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PurchCommentLineArch : 5125;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PurchCommentLineArch : "Purch. Comment Line Archive";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.DeferralHeaderArchive(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.DeferralHeaderArchive : 5127;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.DeferralHeaderArchive : "Deferral Header Archive";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCaptionClass(PROCEDURE 34).PurchaseHeaderArchive(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCaptionClass : 5109;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCaptionClass : "Purchase Header Archive";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetFieldCaption(PROCEDURE 31).Field(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetFieldCaption : 2000000041;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetFieldCaption : Field;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineComments(PROCEDURE 1).PurchCommentLineArch(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineComments : 5125;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineComments : "Purch. Comment Line Archive";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineComments(PROCEDURE 1).PurchArchCommentSheet(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineComments : 5179;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineComments : "Purch. Archive Comment Sheet";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeferralUtilities(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeferralUtilities : 1720;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeferralUtilities : "Deferral Utilities";
    //Variable type has not been exported.
}

