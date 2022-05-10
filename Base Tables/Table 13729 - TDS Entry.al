table 13729 "TDS Entry"
{
    // version NAVIN9.00.00.51234,TDS-REGEF-194Q

    // tds entry description modified to 250

    CaptionML = ENU='TDS Entry',
                ENN='TDS Entry';
    LookupPageID = 13737;

    fields
    {
        field(3;"Account Type";Option)
        {
            CaptionML = ENU='Account Type',
                        ENN='Account Type';
            Editable = false;
            OptionCaptionML = ENU='G/L Account,Customer,Vendor,Bank Account,Fixed Asset',
                              ENN='G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(4;"Account No.";Code[20])
        {
            CaptionML = ENU='Account No.',
                        ENN='Account No.';
            Editable = false;
            TableRelation = IF ("Account Type"=CONST("G/L Account")) "G/L Account"
                            ELSE IF ("Account Type"=CONST(Customer)) Customer
                            ELSE IF ("Account Type"=CONST(Vendor)) Vendor
                            ELSE IF ("Account Type"=CONST("Bank Account")) "Bank Account"
                            ELSE IF ("Account Type"=CONST("Fixed Asset")) "Fixed Asset";
        }
        field(5;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
            ClosingDates = true;
            Editable = true;
        }
        field(6;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            Editable = false;
            OptionCaptionML = ENU=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder',
                              ENN=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder;
        }
        field(7;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
            Editable = false;
        }
        field(8;Description;Text[250])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
            Editable = false;
        }
        field(12;"TDS Amount Including Surcharge";Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='TDS Amount Including Surcharge',
                        ENN='TDS Amount Including Surcharge';
            Editable = true;
        }
        field(14;"TDS Base Amount";Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CaptionML = ENU='TDS Base Amount',
                        ENN='TDS Base Amount';
            Editable = true;
        }
        field(15;"Base Includes Service Tax";Boolean)
        {
            CaptionML = ENU='Base Includes Service Tax',
                        ENN='Base Includes Service Tax';
        }
        field(17;"Entry No.";Integer)
        {
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
            Editable = false;
        }
        field(18;"Party Type";Option)
        {
            CaptionML = ENU='Party Type',
                        ENN='Party Type';
            Editable = false;
            OptionCaptionML = ENU=' ,Party,Customer,Vendor',
                              ENN=' ,Party,Customer,Vendor';
            OptionMembers = " ",Party,Customer,Vendor;
        }
        field(19;"Party Code";Code[20])
        {
            CaptionML = ENU='Party Code',
                        ENN='Party Code';
            Editable = false;
            TableRelation = IF ("Party Type"=CONST(Vendor)) Vendor."No."
                            ELSE IF ("Party Type"=CONST(Customer)) Customer."No."
                            ELSE IF ("Party Type"=CONST(Party)) Party.Code;
        }
        field(20;"TDS Nature of Deduction";Code[10])
        {
            CaptionML = ENU='TDS Nature of Deduction',
                        ENN='TDS Nature of Deduction';
            Editable = false;
            TableRelation = "TDS Nature of Deduction";
        }
        field(21;"Assessee Code";Code[10])
        {
            CaptionML = ENU='Assessee Code',
                        ENN='Assessee Code';
            Editable = false;
            TableRelation = "Assessee Code";
        }
        field(22;"TDS Paid";Boolean)
        {
            CaptionML = ENU='TDS Paid',
                        ENN='TDS Paid';
            Editable = false;
        }
        field(23;"Applied To";Code[20])
        {
            CaptionML = ENU='Applied To',
                        ENN='Applied To';
            Editable = false;
        }
        field(24;"Challan Date";Date)
        {
            CaptionML = ENU='Challan Date',
                        ENN='Challan Date';
            Editable = false;
        }
        field(25;"Challan No.";Code[9])
        {
            CaptionML = ENU='Challan No.',
                        ENN='Challan No.';
            Editable = false;
        }
        field(26;"Bank Name";Text[100])
        {
            CaptionML = ENU='Bank Name',
                        ENN='Bank Name';
            Editable = false;
        }
        field(27;"TDS %";Decimal)
        {
            CaptionML = ENU='TDS %',
                        ENN='TDS %';
            Editable = true;
        }
        field(28;Adjusted;Boolean)
        {
            CaptionML = ENU='Adjusted',
                        ENN='Adjusted';
            Editable = false;
        }
        field(29;"Adjusted TDS %";Decimal)
        {
            CaptionML = ENU='Adjusted TDS %',
                        ENN='Adjusted TDS %';
            Editable = false;
        }
        field(30;"Bal. TDS Including SHE CESS";Decimal)
        {
            CaptionML = ENU='Bal. TDS Including SHE CESS',
                        ENN='Bal. TDS Including SHE CESS';
        }
        field(31;"Pay TDS Document No.";Code[20])
        {
            CaptionML = ENU='Pay TDS Document No.',
                        ENN='Pay TDS Document No.';
            Editable = false;
        }
        field(32;"Applies To";Boolean)
        {
            CaptionML = ENU='Applies To',
                        ENN='Applies To';
            Editable = false;
        }
        field(33;"TDS Category";Option)
        {
            CaptionML = ENU='TDS Category',
                        ENN='TDS Category';
            Editable = false;
            OptionCaptionML = ENU=' ,A,C,S,T',
                              ENN=' ,A,C,S,T';
            OptionMembers = " ",A,C,S,T;
        }
        field(34;"TDS Certificate No.";Code[20])
        {
            CaptionML = ENU='TDS Certificate No.',
                        ENN='TDS Certificate No.';
            Editable = false;
        }
        field(35;"Surcharge %";Decimal)
        {
            CaptionML = ENU='Surcharge %',
                        ENN='Surcharge %';
            Editable = false;
        }
        field(36;"Surcharge Amount";Decimal)
        {
            CaptionML = ENU='Surcharge Amount',
                        ENN='Surcharge Amount';
            Editable = false;
        }
        field(37;"No. Printed";Integer)
        {
            CaptionML = ENU='No. Printed',
                        ENN='No. Printed';
            Editable = false;
        }
        field(38;"Concessional Code";Code[10])
        {
            CaptionML = ENU='Concessional Code',
                        ENN='Concessional Code';
            Editable = false;
            TableRelation = "Concessional Codes";
        }
        field(39;"Concessional Form";Code[20])
        {
            CaptionML = ENU='Concessional Form',
                        ENN='Concessional Form';
            Editable = false;
        }
        field(40;"Work Tax Base Amount";Decimal)
        {
            CaptionML = ENU='Work Tax Base Amount',
                        ENN='Work Tax Base Amount';
            Editable = false;
        }
        field(41;"Work Tax %";Decimal)
        {
            CaptionML = ENU='Work Tax %',
                        ENN='Work Tax %';
            Editable = false;
        }
        field(42;"Work Tax Amount";Decimal)
        {
            CaptionML = ENU='Work Tax Amount',
                        ENN='Work Tax Amount';
            Editable = false;
        }
        field(43;"Return Type";Option)
        {
            CaptionML = ENU='Return Type',
                        ENN='Return Type';
            Editable = false;
            OptionCaptionML = ENU=' ,26A,26C,26J,26K,26I',
                              ENN=' ,26A,26C,26J,26K,26I';
            OptionMembers = " ","26A","26C","26J","26K","26I";
        }
        field(44;"Work Tax Paid";Boolean)
        {
            CaptionML = ENU='Work Tax Paid',
                        ENN='Work Tax Paid';
            Editable = false;
        }
        field(45;"Pay Work Tax Document No.";Code[20])
        {
            CaptionML = ENU='Pay Work Tax Document No.',
                        ENN='Pay Work Tax Document No.';
            Editable = false;
        }
        field(46;"No. Series";Code[10])
        {
            CaptionML = ENU='No. Series',
                        ENN='No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(47;"Certificate Period";Text[50])
        {
            CaptionML = ENU='Certificate Period',
                        ENN='Certificate Period';
            Editable = false;
        }
        field(48;"Balance Work Tax Amount";Decimal)
        {
            CaptionML = ENU='Balance Work Tax Amount',
                        ENN='Balance Work Tax Amount';
            Editable = false;
        }
        field(49;"Work Tax Account";Code[20])
        {
            CaptionML = ENU='Work Tax Account',
                        ENN='Work Tax Account';
            Editable = false;
            TableRelation = "G/L Account";
        }
        field(50;"Invoice Amount";Decimal)
        {
            CaptionML = ENU='Invoice Amount',
                        ENN='Invoice Amount';
            Editable = true;
        }
        field(53;"Certificate Date";Date)
        {
            CaptionML = ENU='Certificate Date',
                        ENN='Certificate Date';
            Editable = false;
        }
        field(59;"Rem. Total TDS Incl. SHE CESS";Decimal)
        {
            CaptionML = ENU='Rem. Total TDS Incl. SHE CESS',
                        ENN='Rem. Total TDS Incl. SHE CESS';
        }
        field(62;Applied;Boolean)
        {
            CaptionML = ENU='Applied',
                        ENN='Applied';
            Editable = false;
        }
        field(63;"TDS Amount";Decimal)
        {
            CaptionML = ENU='TDS Amount',
                        ENN='TDS Amount';
            Editable = true;
        }
        field(64;"Remaining Surcharge Amount";Decimal)
        {
            CaptionML = ENU='Remaining Surcharge Amount',
                        ENN='Remaining Surcharge Amount';
            Editable = true;
        }
        field(65;"Remaining TDS Amount";Decimal)
        {
            CaptionML = ENU='Remaining TDS Amount',
                        ENN='Remaining TDS Amount';
            Editable = true;
        }
        field(66;"Adjusted Surcharge %";Decimal)
        {
            CaptionML = ENU='Adjusted Surcharge %',
                        ENN='Adjusted Surcharge %';
            Editable = false;
        }
        field(67;"TDS Extra Base Amount";Decimal)
        {
            CaptionML = ENU='TDS Extra Base Amount',
                        ENN='TDS Extra Base Amount';
            Editable = false;
        }
        field(68;"TDS Group";Option)
        {
            CaptionML = ENU='TDS Group',
                        ENN='TDS Group';
            Editable = false;
            NotBlank = true;
            OptionCaptionML = ENU=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods',
                              ENN=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others,"Rent for Plant & Machinery","Rent for Land & Building","Banking Services","Compensation On Immovable Property","PF Accumulated","Payment For Immovable Property",Goods;
        }
        field(69;"Work Tax Group";Option)
        {
            CaptionML = ENU='Work Tax Group',
                        ENN='Work Tax Group';
            Editable = false;
            NotBlank = true;
            OptionCaptionML = ENU=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others',
                              ENN=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others;
        }
        field(70;"Surcharge Base Amount";Decimal)
        {
            CaptionML = ENU='Surcharge Base Amount',
                        ENN='Surcharge Base Amount';
            Editable = true;
        }
        field(71;"Work Tax Nature Of Deduction";Code[10])
        {
            CaptionML = ENU='Work Tax Nature Of Deduction',
                        ENN='Work Tax Nature Of Deduction';
            Editable = false;
            TableRelation = "TDS Nature of Deduction";
        }
        field(72;"Service Tax Including eCess";Decimal)
        {
            CaptionML = ENU='Service Tax Including eCess',
                        ENN='Service Tax Including eCess';
            Editable = false;
        }
        field(73;"eCESS %";Decimal)
        {
            CaptionML = ENU='eCESS %',
                        ENN='eCESS %';
            Editable = false;
        }
        field(74;"eCESS Amount";Decimal)
        {
            CaptionML = ENU='eCESS Amount',
                        ENN='eCESS Amount';
            Editable = false;
        }
        field(75;"Total TDS Including SHE CESS";Decimal)
        {
            CaptionML = ENU='Total TDS Including SHE CESS',
                        ENN='Total TDS Including SHE CESS';
            Editable = true;
        }
        field(76;"Adjusted eCESS %";Decimal)
        {
            CaptionML = ENU='Adjusted eCESS %',
                        ENN='Adjusted eCESS %';
            Editable = false;
        }
        field(77;"Per Contract";Boolean)
        {
            CaptionML = ENU='Per Contract',
                        ENN='Per Contract';
            Editable = false;
        }
        field(78;"T.A.N. No.";Code[10])
        {
            CaptionML = ENU='T.A.N. No.',
                        ENN='T.A.N. No.';
            Editable = false;
            TableRelation = "T.A.N. Nos.";
        }
        field(79;"Party Account No.";Code[20])
        {
            CaptionML = ENU='Party Account No.',
                        ENN='Party Account No.';
            Editable = false;
        }
        field(80;"TDS Section";Option)
        {
            CaptionML = ENU='TDS Section',
                        ENN='TDS Section';
            Editable = false;
            OptionCaptionML = ENU=' ,194C,194G,194J,194A,194I,194,193,194B,194D,194EE,194F,194H,194K,194L,194BB,194E,195,196A,196B,196C,196D,194IA,194IB,197A1F,194LA,192A,194Q',
                              ENN=' ,194C,194G,194J,194A,194I,194,193,194B,194D,194EE,194F,194H,194K,194L,194BB,194E,195,196A,196B,196C,196D,194IA,194IB,197A1F,194LA,192A,194Q';
            OptionMembers = " ","194C","194G","194J","194A","194I","194","193","194B","194D","194EE","194F","194H","194K","194L","194BB","194E","195","196A","196B","196C","196D","194IA","194IB","197A1F","194LA","192A","194Q";
        }
        field(81;"BSR Code";Code[7])
        {
            CaptionML = ENU='BSR Code',
                        ENN='BSR Code';
            Editable = false;
        }
        field(82;"Non Resident Payments";Boolean)
        {
            CaptionML = ENU='Non Resident Payments',
                        ENN='Non Resident Payments';
            Editable = false;
        }
        field(83;Reversed;Boolean)
        {
            CaptionML = ENU='Reversed',
                        ENN='Reversed';
            Editable = false;
        }
        field(84;"Reversed by Entry No.";Integer)
        {
            BlankZero = true;
            CaptionML = ENU='Reversed by Entry No.',
                        ENN='Reversed by Entry No.';
            Editable = false;
            TableRelation = "TDS Entry";
        }
        field(85;"Reversed Entry No.";Integer)
        {
            BlankZero = true;
            CaptionML = ENU='Reversed Entry No.',
                        ENN='Reversed Entry No.';
            Editable = false;
            TableRelation = "TDS Entry";
        }
        field(86;"User ID";Code[50])
        {
            CaptionML = ENU='User ID',
                        ENN='User ID';
            DataClassification = EndUserIdentifiableInformation;
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;

            trigger OnLookup();
            var
                UserMgt : Codeunit "User Management";
            begin
                UserMgt.LookupUserID("User ID");
            end;
        }
        field(87;"Source Code";Code[10])
        {
            CaptionML = ENU='Source Code',
                        ENN='Source Code';
            Editable = false;
            TableRelation = "Source Code";
        }
        field(88;"Transaction No.";Integer)
        {
            CaptionML = ENU='Transaction No.',
                        ENN='Transaction No.';
            Editable = false;
        }
        field(89;"Deductee P.A.N. No.";Code[20])
        {
            CaptionML = ENU='Deductee P.A.N. No.',
                        ENN='Deductee P.A.N. No.';
        }
        field(90;"Check/DD No.";Code[10])
        {
            CaptionML = ENU='Check/DD No.',
                        ENN='Check/DD No.';
        }
        field(91;"Check Date";Date)
        {
            CaptionML = ENU='Check Date',
                        ENN='Check Date';
        }
        field(92;"TDS Payment Date";Date)
        {
            CaptionML = ENU='TDS Payment Date',
                        ENN='TDS Payment Date';
        }
        field(93;"Challan Register Entry No.";Integer)
        {
            CaptionML = ENU='Challan Register Entry No.',
                        ENN='Challan Register Entry No.';
        }
        field(94;"SHE Cess %";Decimal)
        {
            CaptionML = ENU='SHE Cess %',
                        ENN='SHE Cess %';
            Editable = false;
        }
        field(95;"SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='SHE Cess Amount',
                        ENN='SHE Cess Amount';
            Editable = false;
        }
        field(96;"Adjusted SHE CESS %";Decimal)
        {
            CaptionML = ENU='Adjusted SHE CESS %',
                        ENN='Adjusted SHE CESS %';
            Editable = false;
        }
        field(97;"Adjusted Work Tax %";Decimal)
        {
            CaptionML = ENU='Adjusted Work Tax %',
                        ENN='Adjusted Work Tax %';
        }
        field(98;"Original TDS Base Amount";Decimal)
        {
            CaptionML = ENU='Original TDS Base Amount',
                        ENN='Original TDS Base Amount';
            Editable = true;
        }
        field(99;"TDS Base Amount Adjusted";Boolean)
        {
            CaptionML = ENU='TDS Base Amount Adjusted',
                        ENN='TDS Base Amount Adjusted';
            Editable = false;
        }
        field(100;"Original Work Tax Base Amount";Decimal)
        {
            CaptionML = ENU='Original Work Tax Base Amount',
                        ENN='Original Work Tax Base Amount';
            Editable = false;
        }
        field(101;"Work Tax Base Amount Adjusted";Boolean)
        {
            CaptionML = ENU='Work Tax Base Amount Adjusted',
                        ENN='Work Tax Base Amount Adjusted';
            Editable = false;
        }
        field(102;"Receipt Number";Text[8])
        {
            CaptionML = ENU='Receipt Number',
                        ENN='Receipt Number';
        }
        field(124;"TDS Line Amount";Decimal)
        {
            CaptionML = ENU='TDS Line Amount',
                        ENN='TDS Line Amount';
            Editable = true;
        }
        field(130;"NIL Challan Indicator";Boolean)
        {
            CaptionML = ENU='NIL Challan Indicator',
                        ENN='NIL Challan Indicator';
            Editable = false;
        }
        field(131;"Minor Head Code";Option)
        {
            CaptionML = ENU='Minor Head Code',
                        ENN='Minor Head Code';
            Editable = false;
            OptionCaptionML = ENU=' ,200,400',
                              ENN=' ,200,400';
            OptionMembers = " ","200","400";
        }
        field(132;"Nature of Remittance";Code[10])
        {
            CaptionML = ENU='Nature of Remittance',
                        ENN='Nature of Remittance';
            Editable = false;
            TableRelation = "TDS Nature of Remittance";
        }
        field(133;"Act Applicable";Option)
        {
            CaptionML = ENU='Act Applicable',
                        ENN='Act Applicable';
            Editable = false;
            OptionCaptionML = ENU=' ,IT,DTAA',
                              ENN=' ,IT,DTAA';
            OptionMembers = " ",IT,DTAA;
        }
        field(134;"Country Code";Code[10])
        {
            CaptionML = ENU='Country Code',
                        ENN='Country Code';
            Editable = false;
            TableRelation = "Country/Region";
        }
        field(135;"TDS Adjustment";Boolean)
        {
            CaptionML = ENU='TDS Adjustment',
                        ENN='TDS Adjustment';
        }
        field(136;"Over & Above Threshold Opening";Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(137;"Calc. Over & Above Threshold";Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Party Type","Party Code","Posting Date","TDS Group","Assessee Code",Applied,"Per Contract","Bal. TDS Including SHE CESS")
        {
            SumIndexFields = "TDS Base Amount","TDS Amount Including Surcharge","Surcharge Amount","Invoice Amount","Bal. TDS Including SHE CESS","TDS Amount","TDS Extra Base Amount","Service Tax Including eCess";
        }
        key(Key3;"TDS Certificate No.")
        {
        }
        key(Key4;"Document No.","Posting Date")
        {
        }
        key(Key5;"Party Type","Party Code","Posting Date","TDS Nature of Deduction","Assessee Code","Document Type")
        {
            SumIndexFields = "TDS Base Amount","TDS Amount Including Surcharge","Surcharge Amount","Invoice Amount","Bal. TDS Including SHE CESS","TDS Amount","Service Tax Including eCess";
        }
        key(Key6;"Party Code")
        {
        }
        key(Key7;"Party Type","Party Code","Posting Date","TDS Group","Assessee Code")
        {
            SumIndexFields = "TDS Base Amount","TDS Amount Including Surcharge","Surcharge Amount","Invoice Amount","Bal. TDS Including SHE CESS","TDS Amount","Service Tax Including eCess";
        }
        key(Key8;"Party Type","Party Code","TDS Group","Posting Date")
        {
        }
        key(Key9;"Document Type","Document No.")
        {
        }
        key(Key10;"Posting Date")
        {
        }
        key(Key11;"Party Type","Party Code","Posting Date","TDS Group","Assessee Code","Document Type")
        {
            SumIndexFields = "TDS Base Amount","TDS Amount Including Surcharge","Surcharge Amount","Invoice Amount","Bal. TDS Including SHE CESS","TDS Amount","TDS Extra Base Amount","Service Tax Including eCess";
        }
        key(Key12;"Challan No.")
        {
        }
        key(Key13;"Transaction No.")
        {
        }
        key(Key14;"Party Type","Party Code","Transaction No.")
        {
        }
        key(Key15;"Document No.","TDS Paid")
        {
        }
        key(Key16;"Pay TDS Document No.","Posting Date")
        {
        }
        key(Key17;"TDS Section")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown;"Entry No.",Description)
        {
        }
    }

    trigger OnInsert();
    var
        GenJnlPostPreview : Codeunit "Gen. Jnl.-Post Preview";
    begin
        //GenJnlPostPreview.SaveTDSEntry(Rec);
    end;

    [LineStart(61970)]
    procedure Export();
    var
        GeneralLedgerSetup : Record "General Ledger Setup";
    begin
        /*GeneralLedgerSetup.GET;
        GeneralLedgerSetup.TESTFIELD("TDS Report ID");
        REPORT.RUN(GeneralLedgerSetup."TDS Report ID",TRUE,FALSE);
        */

    end;

    [LineStart(61976)]
    procedure CalcNilChallanIndicator();
    var
        NODNOCLines : Record "NOD/NOC Lines";
        TDSSetup : Record "TDS Setup";
    begin
        "NIL Challan Indicator" := false;
        if NODNOCLines.FindNODLines("Party Type","Party Code","TDS Nature of Deduction") then
              if TDSSetup.FindOnDate(
              "TDS Nature of Deduction","Assessee Code","TDS Group",NODNOCLines."Concessional Code",
              "Posting Date","Nature of Remittance","Act Applicable","Country Code")
            then
              "NIL Challan Indicator" := TDSSetup."TDS %" = 0;
    end;
}

