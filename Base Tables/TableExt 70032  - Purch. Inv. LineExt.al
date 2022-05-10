tableextension 70032 PurchInvLineExt extends "Purch. Inv. Line"
{
    // version NAVW19.00.00.51685,NAVIN9.00.00.51685,TDS-REGEF-194Q

    fields
    {

        //Unsupported feature: Change Editable on ""Buy-from Vendor No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Posting Group"(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Posting Group"(Field 8)". Please convert manually.

        modify("Direct Unit Cost")
        {
            CaptionClass = GetCaptionClass(FieldNo("Direct Unit Cost"));
        }

        //Unsupported feature: Change Editable on ""VAT %"(Field 25)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Allow Invoice Disc."(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Appl.-to Item Entry"(Field 38)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 40)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Receipt No."(Field 63)". Please convert manually.


        //Unsupported feature: Change Editable on ""Receipt Line No."(Field 64)". Please convert manually.


        //Unsupported feature: Change Editable on ""Pay-to Vendor No."(Field 68)". Please convert manually.


        //Unsupported feature: Change OptionString on ""VAT Calculation Type"(Field 77)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 79)". Please convert manually.


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


        //Unsupported feature: Change OptionString on ""FA Posting Type"(Field 5601)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cross-Reference No."(Field 5705)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure (Cross Ref.)"(Field 5706)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Cross-Reference Type"(Field 5707)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Product Group Code"(Field 5712)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Operation No."(Field 99000751)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Prod. Order Line No."(Field 99000754)". Please convert manually.

        field(13701; "Tax %"; Decimal)
        {
            CaptionML = ENU = 'Tax %',
                        ENN = 'Tax %';
            DataClassification = ToBeClassified;
            Editable = true;
            MinValue = 0;
        }
        field(13702; "Amount Including Tax"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
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
            //StateForm: Record "State Forms";
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
                                                                  State = FIELD("State Code"));
        }
        field(13705; "State Code"; Code[10])
        {
            CaptionML = ENU = 'State Code',
                        ENN = 'State Code';
            DataClassification = ToBeClassified;
            TableRelation = State;
        }
        field(13711; "Tax Base Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
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
            //TableRelation = "Excise Bus. Posting Group";
        }
        field(13714; "Excise Prod. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Prod. Posting Group',
                        ENN = 'Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            Editable = false;
            // TableRelation = "Excise Prod. Posting Group";
        }
        field(13717; "Amount Including Excise"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'Amount Including Excise',
                        ENN = 'Amount Including Excise';
            DataClassification = ToBeClassified;
        }
        field(13718; "Excise Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
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
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'Tax Amount',
                        ENN = 'Tax Amount';
            DataClassification = ToBeClassified;
            Editable = true;
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
            AutoFormatExpression = GetCurrencyCode;
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
            AutoFormatExpression = GetCurrencyCode;
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
            Editable = false;
            // TableRelation = "Concessional Codes";
        }
        field(13738; "Excise Base Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'Excise Base Amount',
                        ENN = 'Excise Base Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(13740; "TDS Amount"; Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'TDS Amount',
                        ENN = 'TDS Amount';
            DataClassification = ToBeClassified;
            Editable = true;
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
            //TableRelation = "Assessee Code";
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
            AutoFormatExpression = GetCurrencyCode;
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
            Editable = true;
        }
        field(13747; "Nature of Remittance"; Code[10])
        {
            CaptionML = ENU = 'Nature of Remittance',
                        ENN = 'Nature of Remittance';
            DataClassification = ToBeClassified;
            //TableRelation = "TDS Nature of Remittance";
        }
        field(13748; "Act Applicable"; Option)
        {
            CaptionML = ENU = 'Act Applicable',
                        ENN = 'Act Applicable';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,IT,DTAA',
                              ENN = ' ,IT,DTAA';
            OptionMembers = " ",IT,DTAA;
        }
        field(13749; "Country Code"; Code[10])
        {
            CaptionML = ENU = 'Country Code',
                        ENN = 'Country Code';
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
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
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU = 'BED Amount',
                        ENN = 'BED Amount';
            DataClassification = ToBeClassified;
            Editable = false;
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
            OptionCaptionML = ENU = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Goods',
                              ENN = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others,Goods;
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
            OptionCaptionML = ENU = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others',
                              ENN = ' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others;
        }
        field(16366; "Temp TDS Base"; Decimal)
        {
            CaptionML = ENU = 'Temp TDS Base',
                        ENN = 'Temp TDS Base';
            DataClassification = ToBeClassified;
        }
        field(16367; "Set Off Available"; Boolean)
        {
            CaptionML = ENU = 'Set Off Available',
                        ENN = 'Set Off Available';
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
            Editable = true;
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
        field(16500; "Non ITC Claimable Usage %"; Decimal)
        {
            CaptionML = ENU = 'Non ITC Claimable Usage %',
                        ENN = 'Non ITC Claimable Usage %';
            DataClassification = ToBeClassified;
        }
        field(16501; "Amount Loaded on Inventory"; Decimal)
        {
            CaptionML = ENU = 'Amount Loaded on Inventory',
                        ENN = 'Amount Loaded on Inventory';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16502; "Input Tax Credit Amount"; Decimal)
        {
            CaptionML = ENU = 'Input Tax Credit Amount',
                        ENN = 'Input Tax Credit Amount';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16503; "Purchase Tax Amount"; Decimal)
        {
            CaptionML = ENU = 'Purchase Tax Amount',
                        ENN = 'Purchase Tax Amount';
            DataClassification = ToBeClassified;
            Editable = false;
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
            AutoFormatExpression = GetCurrencyCode;
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
        field(16516; "Receipt Document No."; Code[20])
        {
            CaptionML = ENU = 'Receipt Document No.',
                        ENN = 'Receipt Document No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16517; "Receipt Document Line No."; Integer)
        {
            CaptionML = ENU = 'Receipt Document Line No.',
                        ENN = 'Receipt Document Line No.';
            DataClassification = ToBeClassified;
            Editable = false;
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
            // TableRelation = "GST Group";
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
            Editable = true;
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
            Editable = true;
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
        field(16610; "New HSN/SAC Code"; Code[8])
        {
            CaptionML = ENU = 'New HSN/SAC Code',
                        ENN = 'New HSN/SAC Code';
            DataClassification = ToBeClassified;
            TableRelation = "HSN/SAC".Code WHERE("GST Group Code" = FIELD("GST Group Code"));
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
            Editable = true;
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
        field(60090; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091; "OLD Dim Set ID"; Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            //TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
        field(60095; "Purchase_Order No."; Code[20])
        {
        }
        field(60098; "Invoice Date"; Date)
        {
        }
        field(70026; gst_group_code_reverse_charge; Boolean)
        {
            FieldClass = FlowField;
        }
        field(70027; "GST Claiming Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionCaption = '" ,Ineligible,Missed,Can Claim in Future,Claimed"';
            OptionMembers = " ",Ineligible,Missed,"Can Claim in Future",Claimed;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Blanket Order No.,Blanket Order Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No.,Variant Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Buy-from Vendor No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Order No.,Order Line No.,Posting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Location Code"(Key)". Please convert manually.

        key(Doc1; "Document No.", "Line No.")
        {
            //SumIndexFields = Amount, "Amount Including VAT", "Amount To Vendor";
        }
        key(BlanketOrder2; "Blanket Order No.", "Blanket Order Line No.")
        {
        }
        /*        key(Type3; Type, "No.", "Variant Code", "Invoice Date")
                {
                }*/
        key(Buyfrom4; "Buy-from Vendor No.")
        {
        }
        key(Order5; "Order No.", "Order Line No.", "Posting Date")
        {
        }
        key(DocumentNo6; "Document No.", "Location Code")
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
    PurchDocLineComments.SETRANGE("Document Type",PurchDocLineComments."Document Type"::"Posted Invoice");
    PurchDocLineComments.SETRANGE("No.","Document No.");
    PurchDocLineComments.SETRANGE("Document Line No.","Line No.");
    IF NOT PurchDocLineComments.ISEMPTY THEN
      PurchDocLineComments.DELETEALL;

    PostedDeferralHeader.DeleteHeader(DeferralUtilities.GetPurchDeferralDocType,'','',
      PurchDocLineComments."Document Type"::"Posted Invoice","Document No.","Line No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Body:='****  Auto Mail Generated From ERP  ****';
    Mail_From:='erp@efftronics.net';
    Mail_To:='anilkumar@efftronics.net,santhoshk@efftronics.net,swarupa@efftronics.net,sreenu@efftronics.net,phani@efftronics.net';
    // Mail_To:='santhoshk@efftronics.net';
     USER.SetRange(USER."User Security ID" ,UserId);// Changed User."User Id" to User."User Security ID" B2B//UPGREV2.0
     USER.SetRange("User Name" ,UserId);//UPGREV2.0
     if USER.Find('-') then
     Subject:=USER."User Name"+'  is trying to Delete Purchase Invoice Line Records';// Changed User."Name" to User."User Name" B2B
     //Mail.NewCDOMessage(Mail_From,Mail_To,Subject,Body,'');
      Error('U Dont Have Permissions to Delete');
    PurchDocLineComments.SetRange("Document Type",PurchDocLineComments."Document Type"::"Posted Invoice");
    PurchDocLineComments.SetRange("No.","Document No.");
    PurchDocLineComments.SetRange("Document Line No.","Line No.");
    if not PurchDocLineComments.IsEmpty then
      PurchDocLineComments.DeleteAll;
    #6..8
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


    //Unsupported feature: PropertyModification on "OnDelete.PostedDeferralHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PostedDeferralHeader : 1704;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PostedDeferralHeader : "Posted Deferral Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCurrencyCode(PROCEDURE 1).PurchInvHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCurrencyCode : 122;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCurrencyCode : "Purch. Inv. Header";
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


    //Unsupported feature: PropertyModification on "GetCaptionClass(PROCEDURE 34).PurchInvHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCaptionClass : 122;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCaptionClass : "Purch. Inv. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RowID1(PROCEDURE 44).ItemTrackingMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RowID1 : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RowID1 : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPurchRcptLines(PROCEDURE 5).PurchRcptLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPurchRcptLines : 121;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPurchRcptLines : "Purch. Rcpt. Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPurchRcptLines(PROCEDURE 5).ItemLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPurchRcptLines : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPurchRcptLines : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetPurchRcptLines(PROCEDURE 5).ValueEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetPurchRcptLines : 5802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetPurchRcptLines : "Value Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcReceivedPurchNotReturned(PROCEDURE 4).TempItemLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcReceivedPurchNotReturned : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcReceivedPurchNotReturned : "Item Ledger Entry";
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


    //Unsupported feature: PropertyModification on "ShowItemReceiptLines(PROCEDURE 9).TempPurchRcptLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowItemReceiptLines : 121;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowItemReceiptLines : "Purch. Rcpt. Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowLineComments(PROCEDURE 8).PurchCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowLineComments : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowLineComments : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDocumentType(PROCEDURE 14).PurchCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDocumentType : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDocumentType : "Purch. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FormatType(PROCEDURE 144).PurchaseLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FormatType : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FormatType : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1002)". Please convert manually.

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

    var
        USER: Record User;
        Body: Text[250];
        Mail_From: Text[250];
        Mail_To: Text[250];
        Mail: Codeunit Mail;
        Subject: Text[250];

    var
        "-ALE-": Integer;
        Item: Record Item;
        Structure_Amount: Decimal;
        StrOrdLineDetails: Record "Structure Order Line Details";
}

