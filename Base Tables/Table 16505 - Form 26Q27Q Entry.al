table 16505 "Form 26Q/27Q Entry"
{
    // version NAVIN9.00.00.50221,Rev01,TDS-REGEF-194Q

    CaptionML = ENU='Form 26Q/27Q Entry',
                ENN='Form 26Q/27Q Entry';
    DrillDownPageID = 16510;
    LookupPageID = 16510;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
        }
        field(2;"Account Type";Option)
        {
            CaptionML = ENU='Account Type',
                        ENN='Account Type';
            OptionCaptionML = ENU='G/L Account,Customer,Vendor,Bank Account,Fixed Asset',
                              ENN='G/L Account,Customer,Vendor,Bank Account,Fixed Asset';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account","Fixed Asset";
        }
        field(3;"Account No.";Code[20])
        {
            CaptionML = ENU='Account No.',
                        ENN='Account No.';
        }
        field(4;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
        }
        field(5;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            OptionCaptionML = ENU=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder',
                              ENN=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder;
        }
        field(6;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
        }
        field(7;Description;Text[250])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
        }
        field(8;"TDS Amount Including Surcharge";Decimal)
        {
            CaptionML = ENU='TDS Amount Including Surcharge',
                        ENN='TDS Amount Including Surcharge';
        }
        field(9;"TDS Base Amount";Decimal)
        {
            CaptionML = ENU='TDS Base Amount',
                        ENN='TDS Base Amount';
        }
        field(10;"TDS Entry No.";Integer)
        {
            CaptionML = ENU='TDS Entry No.',
                        ENN='TDS Entry No.';
        }
        field(11;"Party Type";Option)
        {
            CaptionML = ENU='Party Type',
                        ENN='Party Type';
            OptionCaptionML = ENU=' ,Party,Customer,Vendor',
                              ENN=' ,Party,Customer,Vendor';
            OptionMembers = " ",Party,Customer,Vendor;
        }
        field(12;"Party Code";Code[20])
        {
            CaptionML = ENU='Party Code',
                        ENN='Party Code';
        }
        field(13;"TDS Nature of Deduction";Code[10])
        {
            CaptionML = ENU='TDS Nature of Deduction',
                        ENN='TDS Nature of Deduction';
        }
        field(14;"Assessee Code";Code[10])
        {
            CaptionML = ENU='Assessee Code',
                        ENN='Assessee Code';
        }
        field(15;"TDS Paid";Boolean)
        {
            CaptionML = ENU='TDS Paid',
                        ENN='TDS Paid';
        }
        field(16;"Applied To";Code[20])
        {
            CaptionML = ENU='Applied To',
                        ENN='Applied To';
        }
        field(17;"Challan Date";Date)
        {
            CaptionML = ENU='Challan Date',
                        ENN='Challan Date';
        }
        field(18;"Challan No.";Code[20])
        {
            CaptionML = ENU='Challan No.',
                        ENN='Challan No.';
        }
        field(19;"Bank Name";Text[100])
        {
            CaptionML = ENU='Bank Name',
                        ENN='Bank Name';
        }
        field(20;"TDS %";Decimal)
        {
            CaptionML = ENU='TDS %',
                        ENN='TDS %';
            DecimalPlaces = 4:4;
        }
        field(21;Adjusted;Boolean)
        {
            CaptionML = ENU='Adjusted',
                        ENN='Adjusted';
        }
        field(22;"Adjusted TDS %";Decimal)
        {
            CaptionML = ENU='Adjusted TDS %',
                        ENN='Adjusted TDS %';
            DecimalPlaces = 4:4;
        }
        field(23;"Bal. TDS Including SHE CESS";Decimal)
        {
            CaptionML = ENU='Bal. TDS Including SHE CESS',
                        ENN='Bal. TDS Including SHE CESS';
        }
        field(24;"Pay TDS Document No.";Code[20])
        {
            CaptionML = ENU='Pay TDS Document No.',
                        ENN='Pay TDS Document No.';
        }
        field(25;"Applies To";Boolean)
        {
            CaptionML = ENU='Applies To',
                        ENN='Applies To';
        }
        field(26;"TDS Category";Option)
        {
            CaptionML = ENU='TDS Category',
                        ENN='TDS Category';
            OptionCaptionML = ENU=' ,A,C,S',
                              ENN=' ,A,C,S';
            OptionMembers = " ",A,C,S;
        }
        field(27;"TDS Certificate No.";Code[20])
        {
            CaptionML = ENU='TDS Certificate No.',
                        ENN='TDS Certificate No.';
        }
        field(28;"Surcharge %";Decimal)
        {
            CaptionML = ENU='Surcharge %',
                        ENN='Surcharge %';
            DecimalPlaces = 4:4;
        }
        field(29;"Surcharge Amount";Decimal)
        {
            CaptionML = ENU='Surcharge Amount',
                        ENN='Surcharge Amount';
        }
        field(30;"No. Printed";Integer)
        {
            CaptionML = ENU='No. Printed',
                        ENN='No. Printed';
        }
        field(31;"Concessional Code";Code[10])
        {
            CaptionML = ENU='Concessional Code',
                        ENN='Concessional Code';
        }
        field(32;"Concessional Form";Code[20])
        {
            CaptionML = ENU='Concessional Form',
                        ENN='Concessional Form';
        }
        field(33;"Work Tax Base Amount";Decimal)
        {
            CaptionML = ENU='Work Tax Base Amount',
                        ENN='Work Tax Base Amount';
        }
        field(34;"Work Tax %";Decimal)
        {
            CaptionML = ENU='Work Tax %',
                        ENN='Work Tax %';
            DecimalPlaces = 4:4;
        }
        field(35;"Work Tax Amount";Decimal)
        {
            CaptionML = ENU='Work Tax Amount',
                        ENN='Work Tax Amount';
        }
        field(36;"Return Type";Option)
        {
            CaptionML = ENU='Return Type',
                        ENN='Return Type';
            OptionCaptionML = ENU=' ,26A,26C,26J,26K,26I',
                              ENN=' ,26A,26C,26J,26K,26I';
            OptionMembers = " ","26A","26C","26J","26K","26I";
        }
        field(37;"Work Tax Paid";Boolean)
        {
            CaptionML = ENU='Work Tax Paid',
                        ENN='Work Tax Paid';
        }
        field(38;"Pay Work Tax Document No.";Code[20])
        {
            CaptionML = ENU='Pay Work Tax Document No.',
                        ENN='Pay Work Tax Document No.';
        }
        field(39;"No. Series";Code[10])
        {
            CaptionML = ENU='No. Series',
                        ENN='No. Series';
        }
        field(40;"Certificate Period";Text[50])
        {
            CaptionML = ENU='Certificate Period',
                        ENN='Certificate Period';
        }
        field(41;"Balance Work Tax Amount";Decimal)
        {
            CaptionML = ENU='Balance Work Tax Amount',
                        ENN='Balance Work Tax Amount';
        }
        field(42;"Work Tax Account";Code[20])
        {
            CaptionML = ENU='Work Tax Account',
                        ENN='Work Tax Account';
            Editable = false;
            TableRelation = "G/L Account";
        }
        field(43;"Invoice Amount";Decimal)
        {
            CaptionML = ENU='Invoice Amount',
                        ENN='Invoice Amount';
        }
        field(44;"Certificate Date";Date)
        {
            CaptionML = ENU='Certificate Date',
                        ENN='Certificate Date';
        }
        field(45;"Rem. Total TDS Incl. SHE CESS";Decimal)
        {
            CaptionML = ENU='Rem. Total TDS Incl. SHE CESS',
                        ENN='Rem. Total TDS Incl. SHE CESS';
        }
        field(46;Applied;Boolean)
        {
            CaptionML = ENU='Applied',
                        ENN='Applied';
        }
        field(47;"TDS Amount";Decimal)
        {
            CaptionML = ENU='TDS Amount',
                        ENN='TDS Amount';
        }
        field(48;"Remaining Surcharge Amount";Decimal)
        {
            CaptionML = ENU='Remaining Surcharge Amount',
                        ENN='Remaining Surcharge Amount';
        }
        field(49;"Remaining TDS Amount";Decimal)
        {
            CaptionML = ENU='Remaining TDS Amount',
                        ENN='Remaining TDS Amount';
        }
        field(50;"Adjusted Surcharge %";Decimal)
        {
            CaptionML = ENU='Adjusted Surcharge %',
                        ENN='Adjusted Surcharge %';
            DecimalPlaces = 4:4;
        }
        field(51;"TDS Extra Base Amount";Decimal)
        {
            CaptionML = ENU='TDS Extra Base Amount',
                        ENN='TDS Extra Base Amount';
        }
        field(52;"TDS Group";Option)
        {
            CaptionML = ENU='TDS Group',
                        ENN='TDS Group';
            OptionCaptionML = ENU=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods',
                              ENN=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others,Rent for Plant & Machinery,Rent for Land & Building,Banking Services,Compensation On Immovable Property,PF Accumulated,Payment For Immovable Property,Goods';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others,"Rent for Plant & Machinery","Rent for Land & Building","Banking Services","Compensation On Immovable Property","PF Accumulated","Payment For Immovable Property",Goods;
        }
        field(53;"Work Tax Group";Option)
        {
            CaptionML = ENU='Work Tax Group',
                        ENN='Work Tax Group';
            OptionCaptionML = ENU=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others',
                              ENN=' ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others;
        }
        field(54;"Surcharge Base Amount";Decimal)
        {
            CaptionML = ENU='Surcharge Base Amount',
                        ENN='Surcharge Base Amount';
        }
        field(55;"Work Tax Nature Of Deduction";Code[10])
        {
            CaptionML = ENU='Work Tax Nature Of Deduction',
                        ENN='Work Tax Nature Of Deduction';
            Editable = false;
            TableRelation = "TDS Nature of Deduction";
        }
        field(56;"Service Tax Including eCess";Decimal)
        {
            CaptionML = ENU='Service Tax Including eCess',
                        ENN='Service Tax Including eCess';
        }
        field(57;"eCESS %";Decimal)
        {
            CaptionML = ENU='eCESS %',
                        ENN='eCESS %';
            DecimalPlaces = 4:4;
        }
        field(58;"eCESS Amount";Decimal)
        {
            CaptionML = ENU='eCESS Amount',
                        ENN='eCESS Amount';
        }
        field(59;"Total TDS Including SHE CESS";Decimal)
        {
            CaptionML = ENU='Total TDS Including SHE CESS',
                        ENN='Total TDS Including SHE CESS';
        }
        field(60;"Adjusted eCESS %";Decimal)
        {
            CaptionML = ENU='Adjusted eCESS %',
                        ENN='Adjusted eCESS %';
            DecimalPlaces = 4:4;
        }
        field(61;"Per Contract";Boolean)
        {
            CaptionML = ENU='Per Contract',
                        ENN='Per Contract';
        }
        field(62;"T.A.N. No.";Code[10])
        {
            CaptionML = ENU='T.A.N. No.',
                        ENN='T.A.N. No.';
        }
        field(63;"Party Account No.";Code[20])
        {
            CaptionML = ENU='Party Account No.',
                        ENN='Party Account No.';
        }
        field(64;"TDS Section";Option)
        {
            CaptionML = ENU='TDS Section',
                        ENN='TDS Section';
            OptionCaptionML = ENU=' ,194C,194G,194J,194A,194I,194,193,194B,194D,194EE,194F,194H,194K,194L,194BB,194E,195,196A,196B,196C,196D,194IA,194IB,197A1F,194LA,192A,194Q',
                              ENN=' ,194C,194G,194J,194A,194I,194,193,194B,194D,194EE,194F,194H,194K,194L,194BB,194E,195,196A,196B,196C,196D,194IA,194IB,197A1F,194LA,192A,194Q';
            OptionMembers = " ","194C","194G","194J","194A","194I","194","193","194B","194D","194EE","194F","194H","194K","194L","194BB","194E","195","196A","196B","196C","196D","194IA","194IB","197A1F","194LA","192A","194Q";
        }
        field(65;"BSR Code";Code[20])
        {
            CaptionML = ENU='BSR Code',
                        ENN='BSR Code';
        }
        field(66;"Non Resident Payments";Boolean)
        {
            CaptionML = ENU='Non Resident Payments',
                        ENN='Non Resident Payments';
        }
        field(67;Reversed;Boolean)
        {
            CaptionML = ENU='Reversed',
                        ENN='Reversed';
        }
        field(68;"Reversed by Entry No.";Integer)
        {
            CaptionML = ENU='Reversed by Entry No.',
                        ENN='Reversed by Entry No.';
        }
        field(69;"Reversed Entry No.";Integer)
        {
            CaptionML = ENU='Reversed Entry No.',
                        ENN='Reversed Entry No.';
        }
        field(70;"User ID";Code[50])
        {
            CaptionML = ENU='User ID',
                        ENN='User ID';
            DataClassification = EndUserIdentifiableInformation;
            Description = 'Rev01';
            TableRelation = User."User Name";
        }
        field(71;"Source Code";Code[10])
        {
            CaptionML = ENU='Source Code',
                        ENN='Source Code';
        }
        field(72;"Transaction No.";Integer)
        {
            CaptionML = ENU='Transaction No.',
                        ENN='Transaction No.';
        }
        field(73;Printed;Boolean)
        {
            CaptionML = ENU='Printed',
                        ENN='Printed';
        }
        field(74;Filed;Boolean)
        {
            CaptionML = ENU='Filed',
                        ENN='Filed';
        }
        field(75;"Filing Date";Date)
        {
            CaptionML = ENU='Filing Date',
                        ENN='Filing Date';
        }
        field(76;Revised;Boolean)
        {
            CaptionML = ENU='Revised',
                        ENN='Revised';
        }
        field(77;"No. of Revision";Integer)
        {
            CaptionML = ENU='No. of Revision',
                        ENN='No. of Revision';
        }
        field(78;"Filing Date of Revised eTDS";Date)
        {
            CaptionML = ENU='Filing Date of Revised eTDS',
                        ENN='Filing Date of Revised eTDS';
        }
        field(79;"Check / DD No.";Code[10])
        {
            CaptionML = ENU='Check / DD No.',
                        ENN='Check / DD No.';
        }
        field(80;"Check / DD Date";Date)
        {
            CaptionML = ENU='Check / DD Date',
                        ENN='Check / DD Date';
        }
        field(81;"Assessment Year";Code[6])
        {
            CaptionML = ENU='Assessment Year',
                        ENN='Assessment Year';
        }
        field(82;"Financial Year";Code[6])
        {
            CaptionML = ENU='Financial Year',
                        ENN='Financial Year';
        }
        field(83;Quarter;Option)
        {
            CaptionML = ENU='Quarter',
                        ENN='Quarter';
            OptionCaptionML = ENU=' ,Q1,Q2,Q3,Q4',
                              ENN=' ,Q1,Q2,Q3,Q4';
            OptionMembers = " ",Q1,Q2,Q3,Q4;
        }
        field(84;Remarks;Text[75])
        {
            CaptionML = ENU='Remarks',
                        ENN='Remarks';
        }
        field(85;"NIL Challan Indicator";Boolean)
        {
            CaptionML = ENU='NIL Challan Indicator',
                        ENN='NIL Challan Indicator';
        }
        field(86;"Transfer Voucher No.";Code[20])
        {
            CaptionML = ENU='Transfer Voucher No.',
                        ENN='Transfer Voucher No.';
        }
        field(87;Mode;Text[1])
        {
            CaptionML = ENU='Mode',
                        ENN='Mode';
        }
        field(88;"Deductee Code";Text[1])
        {
            CaptionML = ENU='Deductee Code',
                        ENN='Deductee Code';
        }
        field(89;"Deductee P.A.N. No.";Code[20])
        {
            CaptionML = ENU='Deductee P.A.N. No.',
                        ENN='Deductee P.A.N. No.';
        }
        field(90;"Deductee P.A.N. Ref. No.";Code[20])
        {
            CaptionML = ENU='Deductee P.A.N. Ref. No.',
                        ENN='Deductee P.A.N. Ref. No.';
        }
        field(91;"Deductee Name";Text[75])
        {
            CaptionML = ENU='Deductee Name',
                        ENN='Deductee Name';
        }
        field(92;"Book Entry / Cash Indicator";Boolean)
        {
            CaptionML = ENU='Book Entry / Cash Indicator',
                        ENN='Book Entry / Cash Indicator';
        }
        field(93;"Remarks 1";Text[1])
        {
            CaptionML = ENU='Remarks 1',
                        ENN='Remarks 1';
        }
        field(94;"Remarks 2";Text[75])
        {
            CaptionML = ENU='Remarks 2',
                        ENN='Remarks 2';
        }
        field(95;"Remarks 3";Text[14])
        {
            CaptionML = ENU='Remarks 3',
                        ENN='Remarks 3';
        }
        field(96;"Form No.";Option)
        {
            CaptionML = ENU='Form No.',
                        ENN='Form No.';
            OptionCaptionML = ENU='26Q,27Q',
                              ENN='26Q,27Q';
            OptionMembers = "26Q","27Q";
        }
        field(97;"Batch No.";Integer)
        {
            CaptionML = ENU='Batch No.',
                        ENN='Batch No.';
        }
        field(98;"Challan-Detail Record No.";Integer)
        {
            CaptionML = ENU='Challan-Detail Record No.',
                        ENN='Challan-Detail Record No.';
        }
        field(99;"Deductee Detail Record No.";Integer)
        {
            CaptionML = ENU='Deductee Detail Record No.',
                        ENN='Deductee Detail Record No.';
        }
        field(100;"Last Emp. / Party P.A.N. No.";Code[20])
        {
            CaptionML = ENU='Last Emp. / Party P.A.N. No.',
                        ENN='Last Emp. / Party P.A.N. No.';
        }
        field(101;"Last Emp./Party P.A.N Ref. No.";Code[20])
        {
            CaptionML = ENU='Last Emp./Party P.A.N Ref. No.',
                        ENN='Last Emp./Party P.A.N Ref. No.';
        }
        field(102;"Last Total Income TDS";Decimal)
        {
            CaptionML = ENU='Last Total Income TDS',
                        ENN='Last Total Income TDS';
        }
        field(103;"Total Tax Deposited";Decimal)
        {
            CaptionML = ENU='Total Tax Deposited',
                        ENN='Total Tax Deposited';
        }
        field(104;"Last Total Tax Deposited";Decimal)
        {
            CaptionML = ENU='Last Total Tax Deposited',
                        ENN='Last Total Tax Deposited';
        }
        field(105;"PAN Modified";Decimal)
        {
            CaptionML = ENU='PAN Modified',
                        ENN='PAN Modified';
        }
        field(106;"PAN Other Modified";Decimal)
        {
            CaptionML = ENU='PAN Other Modified',
                        ENN='PAN Other Modified';
        }
        field(107;"Correction-C3";Boolean)
        {
            CaptionML = ENU='Correction-C3',
                        ENN='Correction-C3';
            Editable = false;
        }
        field(108;"Correction-C5";Boolean)
        {
            CaptionML = ENU='Correction-C5',
                        ENN='Correction-C5';
            Editable = false;
        }
        field(109;"Correction-C9";Boolean)
        {
            CaptionML = ENU='Correction-C9',
                        ENN='Correction-C9';
            Editable = false;
        }
        field(110;"Correction-Y";Boolean)
        {
            CaptionML = ENU='Correction-Y',
                        ENN='Correction-Y';
            Editable = false;
        }
        field(111;"Challan Register Entry No.";Integer)
        {
            CaptionML = ENU='Challan Register Entry No.',
                        ENN='Challan Register Entry No.';
        }
        field(112;"Amount of Payment / Credit";Decimal)
        {
            CaptionML = ENU='Amount of Payment / Credit',
                        ENN='Amount of Payment / Credit';
        }
        field(113;"Amount Paid / Credited on Date";Date)
        {
            CaptionML = ENU='Amount Paid / Credited on Date',
                        ENN='Amount Paid / Credited on Date';
        }
        field(114;"Tax Deducted / Collected Date";Date)
        {
            CaptionML = ENU='Tax Deducted / Collected Date',
                        ENN='Tax Deducted / Collected Date';
        }
        field(115;"TDS Payment Date";Date)
        {
            CaptionML = ENU='TDS Payment Date',
                        ENN='TDS Payment Date';
        }
        field(119;"Normal eTDS Generated";Boolean)
        {
            CaptionML = ENU='Normal eTDS Generated',
                        ENN='Normal eTDS Generated';
        }
        field(120;"Revised eTDS Generated";Boolean)
        {
            CaptionML = ENU='Revised eTDS Generated',
                        ENN='Revised eTDS Generated';
        }
        field(121;"SHE Cess %";Decimal)
        {
            CaptionML = ENU='SHE Cess %',
                        ENN='SHE Cess %';
            DecimalPlaces = 4:4;
        }
        field(122;"SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='SHE Cess Amount',
                        ENN='SHE Cess Amount';
        }
        field(123;"Adjusted SHE CESS %";Decimal)
        {
            CaptionML = ENU='Adjusted SHE CESS %',
                        ENN='Adjusted SHE CESS %';
            DecimalPlaces = 4:4;
        }
        field(124;"TDS Line Amount";Decimal)
        {
            CaptionML = ENU='TDS Line Amount',
                        ENN='TDS Line Amount';
        }
        field(125;"Reporting Quarter";Option)
        {
            CaptionML = ENU='Reporting Quarter',
                        ENN='Reporting Quarter';
            OptionCaptionML = ENU=' ,Q1,Q2,Q3,Q4',
                              ENN=' ,Q1,Q2,Q3,Q4';
            OptionMembers = " ",Q1,Q2,Q3,Q4;
        }
        field(126;"Reporting Challan Entry No.";Integer)
        {
            CaptionML = ENU='Reporting Challan Entry No.',
                        ENN='Reporting Challan Entry No.';
        }
        field(127;"Minor Head Code";Option)
        {
            CaptionML = ENU='Minor Head Code',
                        ENN='Minor Head Code';
            OptionCaptionML = ENU=' ,200,400',
                              ENN=' ,200,400';
            OptionMembers = " ","200","400";
        }
        field(132;"Nature of Remittance";Code[10])
        {
            CaptionML = ENU='Nature of Remittance',
                        ENN='Nature of Remittance';
            TableRelation = "TDS Nature of Remittance";
        }
        field(133;"Act Applicable";Option)
        {
            CaptionML = ENU='Act Applicable',
                        ENN='Act Applicable';
            OptionCaptionML = ENU=' ,IT,DTAA',
                              ENN=' ,IT,DTAA';
            OptionMembers = " ",IT,DTAA;
        }
        field(134;"Country Code";Code[10])
        {
            CaptionML = ENU='Country Code',
                        ENN='Country Code';
            TableRelation = "Country/Region";
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Challan No.")
        {
            SumIndexFields = "TDS Amount","Surcharge Amount","eCESS Amount","Invoice Amount","Total TDS Including SHE CESS","SHE Cess Amount";
        }
        key(Key3;"Reporting Quarter","Financial Year")
        {
        }
        key(Key4;"Challan Register Entry No.")
        {
            SumIndexFields = "TDS Amount","Surcharge Amount","eCESS Amount","Invoice Amount","Total TDS Including SHE CESS","SHE Cess Amount";
        }
        key(Key5;"Reporting Challan Entry No.","Correction-C3","Correction-C5","Correction-C9","Correction-Y",Revised,"Reporting Quarter","Financial Year","Form No.","T.A.N. No.",Printed)
        {
            SumIndexFields = "TDS Amount","Surcharge Amount","eCESS Amount","Invoice Amount","Total TDS Including SHE CESS","SHE Cess Amount";
        }
        key(Key6;"Party Type","Party Code","Posting Date")
        {
        }
        key(Key7;"Reporting Challan Entry No.","Reporting Quarter","Party Code")
        {
        }
    }

    fieldgroups
    {
    }

    [LineStart(63965)]
    procedure GetSection() : Text[3];
    begin
        case "TDS Section" of
          "TDS Section"::"194LA":
            exit('94L');
          "TDS Section"::"192A":
            exit('2AA');
          "TDS Section"::"194IA":
            exit('9IA');
        end;
        exit(CopyStr(Format("TDS Section"),StrLen(Format("TDS Section")) - 2,3));
    end;

    [LineStart(63976)]
    procedure GetActApplicable() : Text[1];
    begin
        case "Act Applicable" of
          "Act Applicable"::IT:
            exit('A');
          "Act Applicable"::DTAA:
            exit('B');
        end;
        exit('');
    end;
}

