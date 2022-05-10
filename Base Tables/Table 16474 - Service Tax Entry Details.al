table 16474 "Service Tax Entry Details"
{
    // version NAVIN9.00.00.46621

    CaptionML = ENU='Service Tax Entry Details',
                ENN='Service Tax Entry Details';
    DataCaptionFields = "Service Tax Registration No.";
    DrillDownPageID = 16474;
    LookupPageID = 16474;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            AutoIncrement = true;
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
            Editable = false;
        }
        field(2;"Service Tax Entry No.";Integer)
        {
            CaptionML = ENU='Service Tax Entry No.',
                        ENN='Service Tax Entry No.';
            Editable = false;
            TableRelation = "Service Tax Entry"."Entry No.";
        }
        field(3;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            Editable = false;
            OptionCaptionML = ENU='Sale,Purchase,Charge',
                              ENN='Sale,Purchase,Charge';
            OptionMembers = Sale,Purchase,Charge;
        }
        field(4;"Service Tax Registration No.";Code[20])
        {
            CaptionML = ENU='Service Tax Registration No.',
                        ENN='Service Tax Registration No.';
            Editable = false;
            TableRelation = "Service Tax Registration Nos.";
        }
        field(10;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
            Editable = false;
        }
        field(11;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
            Editable = false;
        }
        field(12;"Base Amount";Decimal)
        {
            CaptionML = ENU='Base Amount',
                        ENN='Base Amount';
            Editable = false;
        }
        field(13;"Service Tax Amount";Decimal)
        {
            CaptionML = ENU='Service Tax Amount',
                        ENN='Service Tax Amount';
            Editable = false;
        }
        field(14;Amount;Decimal)
        {
            CaptionML = ENU='Amount',
                        ENN='Amount';
            Editable = false;
        }
        field(15;"GL Account";Code[20])
        {
            CaptionML = ENU='GL Account',
                        ENN='GL Account';
            Editable = false;
            TableRelation = "G/L Account";
        }
        field(16;"Service Tax Group Code";Code[20])
        {
            CaptionML = ENU='Service Tax Group Code',
                        ENN='Service Tax Group Code';
            Editable = false;
            TableRelation = "Service Tax Groups";
        }
        field(20;Closed;Boolean)
        {
            CaptionML = ENU='Closed',
                        ENN='Closed';
        }
        field(21;"Payment Document No.";Code[20])
        {
            CaptionML = ENU='Payment Document No.',
                        ENN='Payment Document No.';
            Editable = false;
        }
        field(22;"Payment Document Date";Date)
        {
            CaptionML = ENU='Payment Document Date',
                        ENN='Payment Document Date';
            Editable = false;
        }
        field(25;"Remaining Credit";Decimal)
        {
            CaptionML = ENU='Remaining Credit',
                        ENN='Remaining Credit';
            Editable = false;
        }
        field(26;"Transaction No.";Integer)
        {
            CaptionML = ENU='Transaction No.',
                        ENN='Transaction No.';
        }
        field(27;"Application No.";Integer)
        {
            CaptionML = ENU='Application No.',
                        ENN='Application No.';
            Editable = false;
        }
        field(30;"Challan No.";Text[30])
        {
            CaptionML = ENU='Challan No.',
                        ENN='Challan No.';
            Editable = false;
        }
        field(31;"Challan Date";Date)
        {
            CaptionML = ENU='Challan Date',
                        ENN='Challan Date';
            Editable = false;
        }
        field(32;"Bank Name";Text[30])
        {
            CaptionML = ENU='Bank Name',
                        ENN='Bank Name';
            Editable = false;
        }
        field(33;Branch;Text[50])
        {
            CaptionML = ENU='Branch',
                        ENN='Branch';
            Editable = false;
        }
        field(40;"Goes to Excise Entry";Boolean)
        {
            CaptionML = ENU='Goes to Excise Entry',
                        ENN='Goes to Excise Entry';
            Editable = false;
        }
        field(41;"From Excise";Boolean)
        {
            CaptionML = ENU='From Excise',
                        ENN='From Excise';
            Editable = false;
        }
        field(46;"Service Tax eCess Amount";Decimal)
        {
            CaptionML = ENU='Service Tax eCess Amount',
                        ENN='Service Tax eCess Amount';
            Editable = false;
        }
        field(50;"Closed (eCess)";Boolean)
        {
            CaptionML = ENU='Closed (eCess)',
                        ENN='Closed (eCess)';
        }
        field(51;"Payment Document No. (eCess)";Code[20])
        {
            CaptionML = ENU='Payment Document No. (eCess)',
                        ENN='Payment Document No. (eCess)';
            Editable = false;
        }
        field(52;"Payment Document Date (eCess)";Date)
        {
            CaptionML = ENU='Payment Document Date (eCess)',
                        ENN='Payment Document Date (eCess)';
            Editable = false;
        }
        field(53;"Remaining Credit (eCess)";Decimal)
        {
            CaptionML = ENU='Remaining Credit (eCess)',
                        ENN='Remaining Credit (eCess)';
            Editable = false;
        }
        field(60;"Location E.C.C. No.";Code[20])
        {
            CaptionML = ENU='Location E.C.C. No.',
                        ENN='Location E.C.C. No.';
            Editable = false;
            TableRelation = "E.C.C. Nos.";
        }
        field(61;"RG Record Type";Option)
        {
            CaptionML = ENU='RG Record Type',
                        ENN='RG Record Type';
            Editable = false;
            OptionCaptionML = ENU=' ,RG23A,RG23C',
                              ENN=' ,RG23A,RG23C';
            OptionMembers = " ",RG23A,RG23C;
        }
        field(62;"Reverse Charge";Boolean)
        {
            CaptionML = ENU='Reverse Charge',
                        ENN='Reverse Charge';
            Editable = false;
        }
        field(63;"Rev. Chrg. Remaining Credit";Decimal)
        {
            CaptionML = ENU='Rev. Chrg. Remaining Credit',
                        ENN='Rev. Chrg. Remaining Credit';
            Editable = false;
        }
        field(64;"Rev. Chrg. Rem. Credit (eCESS)";Decimal)
        {
            CaptionML = ENU='Rev. Chrg. Rem. Credit (eCESS)',
                        ENN='Rev. Chrg. Rem. Credit (eCESS)';
            Editable = false;
        }
        field(65;Positive;Boolean)
        {
            CaptionML = ENU='Positive',
                        ENN='Positive';
            Editable = false;
        }
        field(66;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            Editable = false;
            OptionCaptionML = ENU=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund',
                              ENN=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(67;"Closed Reverse Charge";Boolean)
        {
            CaptionML = ENU='Closed Reverse Charge',
                        ENN='Closed Reverse Charge';
            NotBlank = false;
        }
        field(68;"Reverse Charge Pmt. Doc. No.";Code[20])
        {
            CaptionML = ENU='Reverse Charge Pmt. Doc. No.',
                        ENN='Reverse Charge Pmt. Doc. No.';
            Editable = false;
        }
        field(69;"Closed Reverse Charge (eCESS)";Boolean)
        {
            CaptionML = ENU='Closed Reverse Charge (eCESS)',
                        ENN='Closed Reverse Charge (eCESS)';
            Editable = false;
        }
        field(70;"Rev.Ch. Pmt. Doc. No. (eCESS)";Code[20])
        {
            CaptionML = ENU='Rev.Ch. Pmt. Doc. No. (eCESS)',
                        ENN='Rev.Ch. Pmt. Doc. No. (eCESS)';
            Editable = false;
        }
        field(71;"Mark Record";Boolean)
        {
            CaptionML = ENU='Mark Record',
                        ENN='Mark Record';
            Editable = false;
        }
        field(72;"Service Type (Rev. Chrg.)";Option)
        {
            CaptionML = ENU='Service Type (Rev. Chrg.)',
                        ENN='Service Type (Rev. Chrg.)';
            OptionCaptionML = ENU=' ,Inward,Outward Stock Transfer,Outward Input Service,Outward',
                              ENN=' ,Inward,Outward Stock Transfer,Outward Input Service,Outward';
            OptionMembers = " ",Inward,"Outward Stock Transfer","Outward Input Service",Outward;
        }
        field(73;"Service Tax SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='Service Tax SHE Cess Amount',
                        ENN='Service Tax SHE Cess Amount';
            Editable = false;
        }
        field(74;"Closed (SHECess)";Boolean)
        {
            CaptionML = ENU='Closed (SHECess)',
                        ENN='Closed (SHECess)';
        }
        field(75;"Payment Doc. No. (SHECess)";Code[20])
        {
            CaptionML = ENU='Payment Doc. No. (SHECess)',
                        ENN='Payment Doc. No. (SHECess)';
            Editable = false;
        }
        field(76;"Payment Doc. Date (SHECess)";Date)
        {
            CaptionML = ENU='Payment Doc. Date (SHECess)',
                        ENN='Payment Doc. Date (SHECess)';
            Editable = false;
        }
        field(77;"Remaining Credit (SHECess)";Decimal)
        {
            CaptionML = ENU='Remaining Credit (SHECess)',
                        ENN='Remaining Credit (SHECess)';
            Editable = false;
        }
        field(78;"Rev. Chrg. Rem. Cr. (SHECess)";Decimal)
        {
            CaptionML = ENU='Rev. Chrg. Rem. Cr. (SHECess)',
                        ENN='Rev. Chrg. Rem. Cr. (SHECess)';
            Editable = false;
        }
        field(79;"Closed Rev. Charge (SHECess)";Boolean)
        {
            CaptionML = ENU='Closed Rev. Charge (SHECess)',
                        ENN='Closed Rev. Charge (SHECess)';
            Editable = false;
        }
        field(80;"Rev.Ch. Pmt. Doc. No.(SHECess)";Code[20])
        {
            CaptionML = ENU='Rev.Ch. Pmt. Doc. No.(SHECess)',
                        ENN='Rev.Ch. Pmt. Doc. No.(SHECess)';
            Editable = false;
        }
        field(81;"Service Tax as Excise";Boolean)
        {
            CaptionML = ENU='Service Tax as Excise',
                        ENN='Service Tax as Excise';
        }
        field(82;"Applied Amount";Decimal)
        {
            CaptionML = ENU='Applied Amount',
                        ENN='Applied Amount';
        }
        field(83;"Applied eCess Amount";Decimal)
        {
            CaptionML = ENU='Applied eCess Amount',
                        ENN='Applied eCess Amount';
        }
        field(84;"Serv. Tax on Advance Payment";Boolean)
        {
            CaptionML = ENU='Serv. Tax on Advance Payment',
                        ENN='Serv. Tax on Advance Payment';
        }
        field(85;Adjusted;Boolean)
        {
            CaptionML = ENU='Adjusted',
                        ENN='Adjusted';
            Editable = false;
        }
        field(86;"Adjusted Agst Entry No.";Integer)
        {
            CaptionML = ENU='Adjusted Agst Entry No.',
                        ENN='Adjusted Agst Entry No.';
            Editable = false;
            TableRelation = "Service Tax Entry"."Entry No.";
        }
        field(87;"Applied SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='Applied SHE Cess Amount',
                        ENN='Applied SHE Cess Amount';
        }
        field(88;"Type of Unit";Option)
        {
            CaptionML = ENU='Type of Unit',
                        ENN='Type of Unit';
            OptionCaptionML = ENU=' ,Manufacturer,100% EOU',
                              ENN=' ,Manufacturer,100% EOU';
            OptionMembers = " ",Manufacturer,"100% EOU";
        }
        field(89;"ST Credit Transfered";Boolean)
        {
            CaptionML = ENU='ST Credit Transfered',
                        ENN='ST Credit Transfered';
        }
        field(90;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        ENN='Location Code';
            Editable = true;
            TableRelation = Location;
        }
        field(91;"Input Service Distribution";Boolean)
        {
            CaptionML = ENU='Input Service Distribution',
                        ENN='Input Service Distribution';
            Editable = true;
        }
        field(92;"ST Credit Received";Boolean)
        {
            CaptionML = ENU='ST Credit Received',
                        ENN='ST Credit Received';
        }
        field(93;"From Location";Code[10])
        {
            CaptionML = ENU='From Location',
                        ENN='From Location';
            TableRelation = Location;
        }
        field(94;"Dist. Input Service Tax Credit";Boolean)
        {
            CaptionML = ENU='Dist. Input Service Tax Credit',
                        ENN='Dist. Input Service Tax Credit';
        }
        field(95;"Distribution No.";Code[20])
        {
            CaptionML = ENU='Distribution No.',
                        ENN='Distribution No.';
        }
        field(96;"Applied S.T. Credit";Decimal)
        {
            CaptionML = ENU='Applied S.T. Credit',
                        ENN='Applied S.T. Credit';
        }
        field(97;"Applied S.T. eCess Credit";Decimal)
        {
            CaptionML = ENU='Applied S.T. eCess Credit',
                        ENN='Applied S.T. eCess Credit';
        }
        field(98;"Applied S.T. SHECess Credit";Decimal)
        {
            CaptionML = ENU='Applied S.T. SHECess Credit',
                        ENN='Applied S.T. SHECess Credit';
        }
        field(99;"Applied S.T. Base Amount";Decimal)
        {
            CaptionML = ENU='Applied S.T. Base Amount',
                        ENN='Applied S.T. Base Amount';
        }
        field(100;"Remaining S.T. Base Amount";Decimal)
        {
            CaptionML = ENU='Remaining S.T. Base Amount',
                        ENN='Remaining S.T. Base Amount';
        }
        field(101;"Service Tax %";Decimal)
        {
            CaptionML = ENU='Service Tax %',
                        ENN='Service Tax %';
            Editable = false;
        }
        field(102;"Service Tax eCess %";Decimal)
        {
            CaptionML = ENU='Service Tax eCess %',
                        ENN='Service Tax eCess %';
            Editable = false;
        }
        field(103;"Service Tax SHE Cess %";Decimal)
        {
            CaptionML = ENU='Service Tax SHE Cess %',
                        ENN='Service Tax SHE Cess %';
            Editable = false;
        }
        field(104;"Nature of Services";Option)
        {
            CaptionML = ENU='Nature of Services',
                        ENN='Nature of Services';
            OptionCaptionML = ENU=' ,Exempted,Export',
                              ENN=' ,Exempted,Export';
            OptionMembers = " ",Exempted,Export;
        }
        field(105;"ST Pure Agent";Boolean)
        {
            CaptionML = ENU='ST Pure Agent',
                        ENN='ST Pure Agent';
        }
        field(106;"Service Tax Abatement %";Decimal)
        {
            CaptionML = ENU='Service Tax Abatement %',
                        ENN='Service Tax Abatement %';
            Editable = false;
        }
        field(107;"Payment Amount";Decimal)
        {
            CaptionML = ENU='Payment Amount',
                        ENN='Payment Amount';
            Editable = false;
        }
        field(108;"Payment Amount eCess";Decimal)
        {
            CaptionML = ENU='Payment Amount eCess',
                        ENN='Payment Amount eCess';
            Editable = false;
        }
        field(109;"Payment Amount SHE Cess";Decimal)
        {
            CaptionML = ENU='Payment Amount SHE Cess',
                        ENN='Payment Amount SHE Cess';
            Editable = false;
        }
        field(110;"Service Tax Rounding Precision";Decimal)
        {
            CaptionML = ENU='Service Tax Rounding Precision',
                        ENN='Service Tax Rounding Precision';
            Editable = false;
        }
        field(111;"Service Tax Rounding Type";Option)
        {
            CaptionML = ENU='Service Tax Rounding Type',
                        ENN='Service Tax Rounding Type';
            Editable = false;
            OptionCaptionML = ENU='Nearest,Up,Down',
                              ENN='Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(112;PoT;Boolean)
        {
            CaptionML = ENU='PoT',
                        ENN='PoT';
            Editable = false;
        }
        field(113;"Corrective Application Entry";Boolean)
        {
            CaptionML = ENU='Corrective Application Entry',
                        ENN='Corrective Application Entry';
            Editable = false;
        }
        field(114;"Entry Type";Option)
        {
            CaptionML = ENU='Entry Type',
                        ENN='Entry Type';
            Editable = false;
            OptionCaptionML = ENU=' ,Initial Entry,Application,Unrealized Loss,Unrealized Gain,Realized Loss,Realized Gain',
                              ENN=' ,Initial Entry,Application,Unrealized Loss,Unrealized Gain,Realized Loss,Realized Gain';
            OptionMembers = " ","Initial Entry",Application,"Unrealized Loss","Unrealized Gain","Realized Loss","Realized Gain";
        }
        field(115;"Zero Amount";Boolean)
        {
            CaptionML = ENU='Zero Amount',
                        ENN='Zero Amount';
        }
        field(116;"Payment Doc. No. (SBC)";Code[20])
        {
            CaptionML = ENU='Payment Doc. No. (SBC)',
                        ENN='Payment Doc. No. (SBC)';
            Editable = false;
        }
        field(117;"Payment Doc. Date (SBC)";Date)
        {
            CaptionML = ENU='Payment Doc. Date (SBC)',
                        ENN='Payment Doc. Date (SBC)';
            Editable = false;
        }
        field(118;"Remaining Credit (SBC)";Decimal)
        {
            CaptionML = ENU='Remaining Credit (SBC)',
                        ENN='Remaining Credit (SBC)';
            Editable = false;
        }
        field(119;"Rev. Chrg. Rem. Credit (SBC)";Decimal)
        {
            CaptionML = ENU='Rev. Chrg. Rem. Credit (SBC)',
                        ENN='Rev. Chrg. Rem. Credit (SBC)';
            Editable = false;
        }
        field(120;"Rev. Chrg. Pmt. Doc. No. (SBC)";Code[20])
        {
            CaptionML = ENU='Rev. Chrg. Pmt. Doc. No. (SBC)',
                        ENN='Rev. Chrg. Pmt. Doc. No. (SBC)';
            Editable = false;
        }
        field(121;"Applied SBC Amount";Decimal)
        {
            CaptionML = ENU='Applied SBC Amount',
                        ENN='Applied SBC Amount';
            Editable = false;
        }
        field(122;"Applied ST SBC Credit";Decimal)
        {
            CaptionML = ENU='Applied ST SBC Credit',
                        ENN='Applied ST SBC Credit';
            Editable = false;
        }
        field(123;"Payment Amount SBC";Decimal)
        {
            CaptionML = ENU='Payment Amount SBC',
                        ENN='Payment Amount SBC';
            Editable = false;
        }
        field(124;"Remaining Credit (KK Cess)";Decimal)
        {
            CaptionML = ENU='Remaining Credit (KK Cess)',
                        ENN='Remaining Credit (KK Cess)';
            Editable = false;
        }
        field(125;"Rev. Chrg. Rem. Credit (KKC)";Decimal)
        {
            CaptionML = ENU='Rev. Chrg. Rem. Credit (KKC)',
                        ENN='Rev. Chrg. Rem. Credit (KKC)';
            Editable = false;
        }
        field(126;"Applied KK Cess Amount";Decimal)
        {
            CaptionML = ENU='Applied KK Cess Amount',
                        ENN='Applied KK Cess Amount';
            Editable = false;
        }
        field(127;"Applied KK Cess Credit";Decimal)
        {
            CaptionML = ENU='Applied ST KK Cess Credit',
                        ENN='Applied ST KK Cess Credit';
            Editable = false;
        }
        field(128;"Payment Amount KK Cess";Decimal)
        {
            CaptionML = ENU='Payment Amount KK Cess',
                        ENN='Payment Amount KK Cess';
            Editable = false;
        }
        field(16539;"Service Tax SBC %";Decimal)
        {
            CaptionML = ENU='Service Tax SBC %',
                        ENN='Service Tax SBC %';
            Editable = false;
        }
        field(16540;"Service Tax SBC Amount";Decimal)
        {
            CaptionML = ENU='Service Tax SBC Amount(LCY)',
                        ENN='Service Tax SBC Amount(LCY)';
            Editable = false;
        }
        field(16541;"Closed (SBC)";Boolean)
        {
            CaptionML = ENU='Closed (SBC)',
                        ENN='Closed (SBC)';
        }
        field(16542;"Closed Reversed (SBC)";Boolean)
        {
            CaptionML = ENU='Closed Reversed (SBC)',
                        ENN='Closed Reversed (SBC)';
        }
        field(16543;"SBC G/L Account";Code[20])
        {
            CaptionML = ENU='SBC G/L Account',
                        ENN='SBC G/L Account';
            Editable = false;
            TableRelation = "G/L Account";
        }
        field(16544;"KK Cess%";Decimal)
        {
            CaptionML = ENU='KK Cess%',
                        ENN='KK Cess%';
            Editable = false;
        }
        field(16545;"KK Cess Amount";Decimal)
        {
            CaptionML = ENU='KK Cess Amount',
                        ENN='KK Cess Amount';
            Editable = false;
        }
        field(16546;"Closed (KK Cess)";Boolean)
        {
            CaptionML = ENU='Closed (KK Cess)',
                        ENN='Closed (KK Cess)';
            Editable = false;
        }
        field(16547;"Closed Reversed (KK Cess)";Boolean)
        {
            CaptionML = ENU='Closed Reversed (KK Cess)',
                        ENN='Closed Reversed (KK Cess)';
            Editable = false;
        }
        field(16548;"KK Cess G/L Account";Code[20])
        {
            CaptionML = ENU='KK Cess G/L Account',
                        ENN='KK Cess G/L Account';
            Editable = false;
            TableRelation = "G/L Account";
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Document No.","Posting Date")
        {
        }
        key(Key3;"Service Tax Entry No.")
        {
            SumIndexFields = Amount,"Service Tax Amount","Base Amount","Service Tax eCess Amount","Service Tax SHE Cess Amount","Service Tax SBC Amount","KK Cess Amount";
        }
        key(Key4;Type,"Remaining Credit")
        {
        }
        key(Key5;Type,"Service Tax Registration No.","Posting Date",Closed,"Closed (eCess)","Service Tax Group Code")
        {
            SumIndexFields = "Service Tax Amount","Remaining Credit","Remaining Credit (eCess)","Remaining Credit (SHECess)","Remaining Credit (SBC)","Service Tax SBC Amount","Remaining Credit (KK Cess)","KK Cess Amount";
        }
        key(Key6;Type,"Service Tax Registration No.","Service Tax Group Code","Posting Date","Input Service Distribution","Zero Amount","Service Type (Rev. Chrg.)","Reverse Charge","Payment Document Date","Reverse Charge Pmt. Doc. No.")
        {
            SumIndexFields = Amount,"Service Tax Amount","Base Amount","Applied Amount","Applied eCess Amount","Applied SHE Cess Amount","Applied SBC Amount","Service Tax eCess Amount","Service Tax SHE Cess Amount","Service Tax SBC Amount","Applied KK Cess Amount","KK Cess Amount";
        }
        key(Key7;"Payment Document No.")
        {
        }
        key(Key8;"Payment Document No. (eCess)")
        {
        }
        key(Key9;"Reverse Charge Pmt. Doc. No.")
        {
        }
        key(Key10;"Rev.Ch. Pmt. Doc. No. (eCESS)")
        {
        }
        key(Key11;"Payment Doc. No. (SHECess)")
        {
        }
        key(Key12;"Rev.Ch. Pmt. Doc. No.(SHECess)")
        {
        }
        key(Key13;"Posting Date","Service Tax as Excise")
        {
            SumIndexFields = "Applied Amount","Applied eCess Amount","Applied SHE Cess Amount","Applied SBC Amount","Applied KK Cess Amount";
        }
        key(Key14;Type,Closed,"Closed (eCess)","Service Tax Registration No.","Service Tax Group Code","Posting Date","Location E.C.C. No.","Service Tax as Excise","Closed (SHECess)")
        {
            SumIndexFields = "Remaining Credit","Remaining Credit (eCess)","Remaining Credit (SHECess)","Remaining Credit (SBC)","Remaining Credit (KK Cess)";
        }
        key(Key15;"Dist. Input Service Tax Credit","Input Service Distribution")
        {
            SumIndexFields = "Remaining Credit","Remaining Credit (eCess)","Remaining Credit (SHECess)","Remaining Credit (SBC)","Remaining Credit (KK Cess)";
        }
        key(Key16;Type,"Input Service Distribution","Location Code","Distribution No.","Service Tax Group Code",Closed)
        {
            SumIndexFields = "Remaining Credit","Remaining Credit (eCess)","Remaining Credit (SHECess)","Remaining Credit (SBC)","Remaining Credit (KK Cess)";
        }
        key(Key17;Type,"Distribution No.")
        {
        }
        key(Key18;"Service Tax Registration No.","Service Tax Group Code","Service Tax %")
        {
        }
        key(Key19;"Service Tax Registration No.","Posting Date","Reverse Charge","Closed Reverse Charge","Service Type (Rev. Chrg.)")
        {
            SumIndexFields = "Service Tax Amount","Service Tax eCess Amount","Service Tax SHE Cess Amount","Service Tax SBC Amount","KK Cess Amount";
        }
        key(Key20;"Service Tax Registration No.","Service Tax Group Code",Type,"ST Pure Agent","Nature of Services","Service Tax %")
        {
        }
        key(Key21;"Transaction No.","Application No.")
        {
            SumIndexFields = Amount;
        }
        key(Key22;Positive)
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    var
        GenJnlPostPreview : Codeunit "Gen. Jnl.-Post Preview";
    begin
        //GenJnlPostPreview.SaveServiceTaxEntryDetails(Rec);
    end;

    var
        Text16500 : TextConst ENU='You cannot apply the document %1 because the Service Tax credit has already been utilized against the tax payment.',ENN='You cannot apply the document %1 because the Service Tax credit has already been utilized against the tax payment.';

    [LineStart(63875)]
    procedure BlankRemainingCredit();
    begin
        if "Reverse Charge" then begin
          "Rev. Chrg. Remaining Credit" := 0;
          "Closed Reverse Charge" := true;
          "Rev. Chrg. Rem. Credit (eCESS)" := 0;
          "Closed Reverse Charge (eCESS)" := true;
          "Rev. Chrg. Rem. Cr. (SHECess)" := 0;
          "Closed Rev. Charge (SHECess)" := true;
          "Closed Reversed (SBC)" := true;
          "Rev. Chrg. Rem. Credit (SBC)" := 0;
          "Closed Reversed (KK Cess)" := true;
          "Rev. Chrg. Rem. Credit (KKC)" := 0;
        end;
        "Remaining Credit" := 0;
        Closed := true;
        "Remaining Credit (eCess)" := 0;
        "Closed (eCess)" := true;
        "Remaining Credit (SHECess)" := 0;
        "Closed (SHECess)" := true;
        "Remaining Credit (SBC)" := 0;
        "Closed (SBC)" := true;
        "Remaining Credit (KK Cess)" := 0;
        "Closed (KK Cess)" := true;
    end;

    [LineStart(63899)]
    procedure CheckRemainingCreditOverflow(RemainingCredit : Decimal);
    var
        ServiceTaxEntry : Record "Service Tax Entry";
    begin
        if RemainingCredit <> 0 then
          if Positive xor (RemainingCredit > 0) then begin
            ServiceTaxEntry.Get("Service Tax Entry No.");
            Error(Text16500,ServiceTaxEntry."Document No.");
          end;
    end;

    [LineStart(63906)]
    procedure FullTaxAmount() : Decimal;
    begin
        exit("Service Tax Amount" + "Service Tax eCess Amount" + "Service Tax SHE Cess Amount");
    end;

    [LineStart(63909)]
    procedure FullRemainingCredit() : Decimal;
    begin
        exit("Remaining Credit" + "Remaining Credit (eCess)" + "Remaining Credit (SHECess)");
    end;

    [LineStart(63912)]
    procedure FullRevChargeRemainingCredit() : Decimal;
    begin
        exit("Rev. Chrg. Remaining Credit" + "Rev. Chrg. Rem. Credit (eCESS)" + "Rev. Chrg. Rem. Cr. (SHECess)");
    end;

    [LineStart(63915)]
    procedure IsAnyRemainingCreditUtilized() : Boolean;
    begin
        exit(IsRemainingCreditUtilized or IsRevChargeRemCreditUtilized);
    end;

    [LineStart(63918)]
    procedure IsRemainingCreditUtilized() : Boolean;
    begin
        exit(
          ("Payment Document No." <> '') or
          ("Payment Document No. (eCess)" <> '') or
          ("Payment Doc. No. (SHECess)" <> '') or
          ("Payment Doc. No. (SBC)" <> ''));
    end;

    [LineStart(63925)]
    procedure IsRevChargeRemCreditUtilized() : Boolean;
    begin
        exit(
          ("Reverse Charge Pmt. Doc. No." <> '') or
          ("Rev.Ch. Pmt. Doc. No. (eCESS)" <> '') or
          ("Rev.Ch. Pmt. Doc. No.(SHECess)" <> '') or
          ("Rev. Chrg. Pmt. Doc. No. (SBC)"<>''));
    end;

    [LineStart(63932)]
    procedure FullTaxSBCAmount() : Decimal;
    begin
        exit("Service Tax SBC Amount");
    end;

    [LineStart(63935)]
    procedure FullRemainingSBCCredit() : Decimal;
    begin
        exit("Remaining Credit (SBC)");
    end;

    [LineStart(63938)]
    procedure FullRevChargeRemainingSBCCredit() : Decimal;
    begin
        exit("Rev. Chrg. Rem. Credit (SBC)");
    end;

    [LineStart(63941)]
    procedure KKCessAmount() : Decimal;
    begin
        exit("KK Cess Amount");
    end;

    [LineStart(63944)]
    procedure KKCessRemainingCredit() : Decimal;
    begin
        exit("Remaining Credit (KK Cess)");
    end;

    [LineStart(63947)]
    procedure KKcessRevChargeRemainingCredit() : Decimal;
    begin
        exit("Rev. Chrg. Rem. Credit (KKC)");
    end;
}

