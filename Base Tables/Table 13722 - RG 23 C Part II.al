table 13722 "RG 23 C Part II"
{
    // version NAVIN9.00.00.46621

    CaptionML = ENU='RG 23 C Part II',
                ENN='RG 23 C Part II';
    LookupPageID = 13728;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
        }
        field(2;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
        }
        field(3;"Opening Balance Credit CY";Decimal)
        {
            CaptionML = ENU='Opening Balance Credit CY',
                        ENN='Opening Balance Credit CY';
        }
        field(4;"Vendor Invoice No.";Code[20])
        {
            CaptionML = ENU='Vendor Invoice No.',
                        ENN='Vendor Invoice No.';
        }
        field(5;"Document Date";Date)
        {
            CaptionML = ENU='Document Date',
                        ENN='Document Date';
        }
        field(6;"Vendor E.C.C. No.";Code[20])
        {
            CaptionML = ENU='Vendor E.C.C. No.',
                        ENN='Vendor E.C.C. No.';
        }
        field(12;"Sales Invoice No.";Code[20])
        {
            CaptionML = ENU='Sales Invoice No.',
                        ENN='Sales Invoice No.';
        }
        field(13;"BED Debit";Decimal)
        {
            CaptionML = ENU='BED Debit',
                        ENN='BED Debit';
        }
        field(14;"Closing Balance Credit CY";Decimal)
        {
            CaptionML = ENU='Closing Balance Credit CY',
                        ENN='Closing Balance Credit CY';
        }
        field(21;"BED Credit";Decimal)
        {
            CaptionML = ENU='BED Credit',
                        ENN='BED Credit';
        }
        field(22;"AED(GSI) Credit";Decimal)
        {
            CaptionML = ENU='AED(GSI) Credit',
                        ENN='AED(GSI) Credit';
        }
        field(23;"SED Credit";Decimal)
        {
            CaptionML = ENU='SED Credit',
                        ENN='SED Credit';
        }
        field(24;"SAED Credit";Decimal)
        {
            CaptionML = ENU='SAED Credit',
                        ENN='SAED Credit';
        }
        field(25;"CESS Credit";Decimal)
        {
            CaptionML = ENU='CESS Credit',
                        ENN='CESS Credit';
        }
        field(26;"NCCD Credit";Decimal)
        {
            CaptionML = ENU='NCCD Credit',
                        ENN='NCCD Credit';
        }
        field(27;"eCess Credit";Decimal)
        {
            CaptionML = ENU='eCess Credit',
                        ENN='eCess Credit';
        }
        field(33;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        ENN='Location Code';
            TableRelation = Location;
        }
        field(34;"Location E.C.C. No.";Code[20])
        {
            CaptionML = ENU='Location E.C.C. No.',
                        ENN='Location E.C.C. No.';
            TableRelation = "E.C.C. Nos.";
        }
        field(35;"Total BED for Current Year";Decimal)
        {
            CaptionML = ENU='Total BED for Current Year',
                        ENN='Total BED for Current Year';
        }
        field(36;"Total BED for Next Year";Decimal)
        {
            CaptionML = ENU='Total BED for Next Year',
                        ENN='Total BED for Next Year';
        }
        field(37;"Excise Accounting Type";Option)
        {
            CaptionML = ENU='Excise Accounting Type',
                        ENN='Excise Accounting Type';
            OptionCaptionML = ENU='With CENVAT,Without CENVAT',
                              ENN='With CENVAT,Without CENVAT';
            OptionMembers = "With CENVAT","Without CENVAT";
        }
        field(38;"Total AED(GSI) for CY";Decimal)
        {
            CaptionML = ENU='Total AED(GSI) for CY',
                        ENN='Total AED(GSI) for CY';
        }
        field(39;"Total AED(GSI) for Next Year";Decimal)
        {
            CaptionML = ENU='Total AED(GSI) for Next Year',
                        ENN='Total AED(GSI) for Next Year';
        }
        field(40;"Total SED for Current Year";Decimal)
        {
            CaptionML = ENU='Total SED for Current Year',
                        ENN='Total SED for Current Year';
        }
        field(41;"Total SED for Next Year";Decimal)
        {
            CaptionML = ENU='Total SED for Next Year',
                        ENN='Total SED for Next Year';
        }
        field(42;"Total SAED for Current Year";Decimal)
        {
            CaptionML = ENU='Total SAED for Current Year',
                        ENN='Total SAED for Current Year';
        }
        field(43;"Total SAED for Next Year";Decimal)
        {
            CaptionML = ENU='Total SAED for Next Year',
                        ENN='Total SAED for Next Year';
        }
        field(44;"Total CESS for Current Year";Decimal)
        {
            CaptionML = ENU='Total CESS for Current Year',
                        ENN='Total CESS for Current Year';
        }
        field(45;"Total CESS for Next Year";Decimal)
        {
            CaptionML = ENU='Total CESS for Next Year',
                        ENN='Total CESS for Next Year';
        }
        field(46;"Total NCCD for Current Year";Decimal)
        {
            CaptionML = ENU='Total NCCD for Current Year',
                        ENN='Total NCCD for Current Year';
        }
        field(47;"Total NCCD for Next Year";Decimal)
        {
            CaptionML = ENU='Total NCCD for Next Year',
                        ENN='Total NCCD for Next Year';
        }
        field(48;"Total eCess for Current Year";Decimal)
        {
            CaptionML = ENU='Total eCess for Current Year',
                        ENN='Total eCess for Current Year';
        }
        field(49;"Total eCess for Next Year";Decimal)
        {
            CaptionML = ENU='Total eCess for Next Year',
                        ENN='Total eCess for Next Year';
        }
        field(50;"AED(GSI) Debit";Decimal)
        {
            CaptionML = ENU='AED(GSI) Debit',
                        ENN='AED(GSI) Debit';
        }
        field(51;"SAED Debit";Decimal)
        {
            CaptionML = ENU='SAED Debit',
                        ENN='SAED Debit';
        }
        field(52;"CESS Debit";Decimal)
        {
            CaptionML = ENU='CESS Debit',
                        ENN='CESS Debit';
        }
        field(53;"NCCD Debit";Decimal)
        {
            CaptionML = ENU='NCCD Debit',
                        ENN='NCCD Debit';
        }
        field(54;"eCess Debit";Decimal)
        {
            CaptionML = ENU='eCess Debit',
                        ENN='eCess Debit';
        }
        field(55;"SED Debit";Decimal)
        {
            CaptionML = ENU='SED Debit',
                        ENN='SED Debit';
        }
        field(56;"Cenvat Cr. Receivable Acc.";Code[20])
        {
            CaptionML = ENU='Cenvat Cr. Receivable Acc.',
                        ENN='Cenvat Cr. Receivable Acc.';
            TableRelation = "G/L Account";
        }
        field(57;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
        }
        field(58;"Balance Updated";Boolean)
        {
            CaptionML = ENU='Balance Updated',
                        ENN='Balance Updated';
        }
        field(59;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            OptionCaptionML = ENU=' ,Purchase,Sale,Transfer',
                              ENN=' ,Purchase,Sale,Transfer';
            OptionMembers = " ",Purchase,Sale,Transfer;
        }
        field(60;"Excise Bus. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Bus. Posting Group',
                        ENN='Excise Bus. Posting Group';
            TableRelation = "Excise Bus. Posting Group";
        }
        field(61;"Excise Prod. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Prod. Posting Group',
                        ENN='Excise Prod. Posting Group';
            TableRelation = "Excise Prod. Posting Group";
        }
        field(62;"Vendor Shipment No.";Code[20])
        {
            CaptionML = ENU='Vendor Shipment No.',
                        ENN='Vendor Shipment No.';
        }
        field(63;"Vendor No.";Code[20])
        {
            CaptionML = ENU='Vendor No.',
                        ENN='Vendor No.';
        }
        field(64;"Order no.";Code[20])
        {
            CaptionML = ENU='Order no.',
                        ENN='Order no.';
        }
        field(65;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
        }
        field(66;"ADET Credit";Decimal)
        {
            CaptionML = ENU='ADET Credit',
                        ENN='ADET Credit';
        }
        field(67;"ADET Debit";Decimal)
        {
            CaptionML = ENU='ADET Debit',
                        ENN='ADET Debit';
        }
        field(68;"Total ADET for Current Year";Decimal)
        {
            CaptionML = ENU='Total ADET for Current Year',
                        ENN='Total ADET for Current Year';
        }
        field(69;"Total ADET for Next Year";Decimal)
        {
            CaptionML = ENU='Total ADET for Next Year',
                        ENN='Total ADET for Next Year';
        }
        field(70;"AED(TTA) Credit";Decimal)
        {
            CaptionML = ENU='AED(TTA) Credit',
                        ENN='AED(TTA) Credit';
        }
        field(71;"Total AED(TTA) for CY";Decimal)
        {
            CaptionML = ENU='Total AED(TTA) for CY',
                        ENN='Total AED(TTA) for CY';
        }
        field(72;"Total AED(TTA) for Next Year";Decimal)
        {
            CaptionML = ENU='Total AED(TTA) for Next Year',
                        ENN='Total AED(TTA) for Next Year';
        }
        field(73;"AED(TTA) Debit";Decimal)
        {
            CaptionML = ENU='AED(TTA) Debit',
                        ENN='AED(TTA) Debit';
        }
        field(80;"ADE Credit";Decimal)
        {
            CaptionML = ENU='ADE Credit',
                        ENN='ADE Credit';
        }
        field(81;"ADE Debit";Decimal)
        {
            CaptionML = ENU='ADE Debit',
                        ENN='ADE Debit';
        }
        field(82;"Total ADE for Current Year";Decimal)
        {
            CaptionML = ENU='Total ADE for Current Year',
                        ENN='Total ADE for Current Year';
        }
        field(83;"Total ADE for Next Year";Decimal)
        {
            CaptionML = ENU='Total ADE for Next Year',
                        ENN='Total ADE for Next Year';
        }
        field(86;"SHE Cess Credit";Decimal)
        {
            CaptionML = ENU='SHE Cess Credit',
                        ENN='SHE Cess Credit';
        }
        field(87;"SHE Cess Debit";Decimal)
        {
            CaptionML = ENU='SHE Cess Debit',
                        ENN='SHE Cess Debit';
        }
        field(88;"Total SHECESS for Current Year";Decimal)
        {
            CaptionML = ENU='Total SHECESS for Current Year',
                        ENN='Total SHECESS for Current Year';
        }
        field(89;"Total SHECESS for Next Year";Decimal)
        {
            CaptionML = ENU='Total SHECESS for Next Year',
                        ENN='Total SHECESS for Next Year';
        }
        field(90;"Excise Credit Availed as ST";Boolean)
        {
            CaptionML = ENU='Excise Credit Availed as ST',
                        ENN='Excise Credit Availed as ST';
        }
        field(91;"Remaining BED Credit";Decimal)
        {
            CaptionML = ENU='Remaining BED Credit',
                        ENN='Remaining BED Credit';
        }
        field(92;"Remaining AED(GSI) Credit";Decimal)
        {
            CaptionML = ENU='Remaining AED(GSI) Credit',
                        ENN='Remaining AED(GSI) Credit';
        }
        field(93;"Remaining SED Credit";Decimal)
        {
            CaptionML = ENU='Remaining SED Credit',
                        ENN='Remaining SED Credit';
        }
        field(94;"Remaining SAED Credit";Decimal)
        {
            CaptionML = ENU='Remaining SAED Credit',
                        ENN='Remaining SAED Credit';
        }
        field(95;"Remaining NCCD Credit";Decimal)
        {
            CaptionML = ENU='Remaining NCCD Credit',
                        ENN='Remaining NCCD Credit';
        }
        field(96;"Remaining eCess Credit";Decimal)
        {
            CaptionML = ENU='Remaining eCess Credit',
                        ENN='Remaining eCess Credit';
        }
        field(97;"Remaining ADET Credit";Decimal)
        {
            CaptionML = ENU='Remaining ADET Credit',
                        ENN='Remaining ADET Credit';
        }
        field(98;"Remaining AED(TTA) Credit";Decimal)
        {
            CaptionML = ENU='Remaining AED(TTA) Credit',
                        ENN='Remaining AED(TTA) Credit';
        }
        field(99;"Remaining ADE Credit";Decimal)
        {
            CaptionML = ENU='Remaining ADE Credit',
                        ENN='Remaining ADE Credit';
        }
        field(100;"Remaining Excise Amount";Decimal)
        {
            CaptionML = ENU='Remaining Excise Amount',
                        ENN='Remaining Excise Amount';
        }
        field(101;Closed;Boolean)
        {
            CaptionML = ENU='Closed',
                        ENN='Closed';
        }
        field(102;"Excise as Service Tax Credit";Boolean)
        {
            CaptionML = ENU='Excise as Service Tax Credit',
                        ENN='Excise as Service Tax Credit';
        }
        field(103;Supplementary;Boolean)
        {
            CaptionML = ENU='Supplementary',
                        ENN='Supplementary';
        }
        field(104;"Source Document Type";Option)
        {
            CaptionML = ENU='Source Document Type',
                        ENN='Source Document Type';
            OptionCaptionML = ENU='Posted Invoice,Posted Credit Memo',
                              ENN='Posted Invoice,Posted Credit Memo';
            OptionMembers = "Posted Invoice","Posted Credit Memo";
        }
        field(105;"Source Document No.";Code[20])
        {
            CaptionML = ENU='Source Document No.',
                        ENN='Source Document No.';
            TableRelation = IF ("Source Document Type"=FILTER("Posted Invoice")) "Purch. Inv. Header"."No."
                            ELSE IF ("Source Document Type"=FILTER("Posted Credit Memo")) "Purch. Cr. Memo Hdr."."No.";
        }
        field(106;"ADC VAT Debit";Decimal)
        {
            CaptionML = ENU='ADC VAT Debit',
                        ENN='ADC VAT Debit';
        }
        field(107;"ADC VAT Credit";Decimal)
        {
            CaptionML = ENU='ADC VAT Credit',
                        ENN='ADC VAT Credit';
        }
        field(108;"Total ADC VAT for CY";Decimal)
        {
            CaptionML = ENU='Total ADC VAT for CY',
                        ENN='Total ADC VAT for CY';
        }
        field(109;"Remaining ADC VAT Credit";Decimal)
        {
            CaptionML = ENU='Remaining ADC VAT Credit',
                        ENN='Remaining ADC VAT Credit';
        }
        field(110;CVD;Boolean)
        {
            CaptionML = ENU='CVD',
                        ENN='CVD';
        }
        field(111;"Vendor Type";Option)
        {
            CaptionML = ENU='Vendor Type',
                        ENN='Vendor Type';
            OptionCaptionML = ENU=' ,Manufacturer,First Stage Dealer,Second Stage Dealer,Importer',
                              ENN=' ,Manufacturer,First Stage Dealer,Second Stage Dealer,Importer';
            OptionMembers = " ",Manufacturer,"First Stage Dealer","Second Stage Dealer",Importer;
        }
        field(112;"Type of Unit";Option)
        {
            CaptionML = ENU='Type of Unit',
                        ENN='Type of Unit';
            OptionCaptionML = ENU=' ,Manufacturer,100% EOU',
                              ENN=' ,Manufacturer,100% EOU';
            OptionMembers = " ",Manufacturer,"100% EOU";
        }
        field(113;"Deferred Claim";Boolean)
        {
            CaptionML = ENU='Deferred Claim',
                        ENN='Deferred Claim';
        }
        field(114;"Remaining SHECess Credit";Decimal)
        {
            CaptionML = ENU='Remaining SHECess Credit',
                        ENN='Remaining SHECess Credit';
        }
        field(115;"RG Entry No.";Code[20])
        {
            CaptionML = ENU='RG Entry No.',
                        ENN='RG Entry No.';
        }
        field(60001;"Vendor Excise Invoice No.";Code[20])
        {
            Description = 'B2B';
        }
        field(60002;"Ven. Excise Inv. Date";Date)
        {
            Description = 'B2B';
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
        key(Key3;Type)
        {
        }
        key(Key4;"Location E.C.C. No.")
        {
            SumIndexFields = "BED Credit","AED(GSI) Credit","SED Credit","SAED Credit","CESS Credit","NCCD Credit","eCess Credit","SHE Cess Credit","ADC VAT Credit";
        }
        key(Key5;"Posting Date","Location E.C.C. No.",Type)
        {
        }
        key(Key6;"Excise as Service Tax Credit",Closed,"Location E.C.C. No.")
        {
        }
        key(Key7;"Location E.C.C. No.","Excise as Service Tax Credit")
        {
            SumIndexFields = "Remaining BED Credit","Remaining AED(GSI) Credit","Remaining SED Credit","Remaining SAED Credit","Remaining NCCD Credit","Remaining eCess Credit","Remaining ADET Credit","Remaining AED(TTA) Credit","Remaining ADE Credit","Remaining ADC VAT Credit","Remaining SHECess Credit";
        }
        key(Key8;"Location E.C.C. No.",Closed,"Remaining Excise Amount","Excise as Service Tax Credit")
        {
            SumIndexFields = "Remaining BED Credit","Remaining AED(GSI) Credit","Remaining SED Credit","Remaining SAED Credit","Remaining NCCD Credit","Remaining eCess Credit","Remaining ADET Credit","Remaining AED(TTA) Credit","Remaining ADE Credit","Remaining ADC VAT Credit","Remaining SHECess Credit";
        }
        key(Key9;"Location E.C.C. No.","Excise as Service Tax Credit","Posting Date")
        {
            SumIndexFields = "Remaining BED Credit","Remaining AED(GSI) Credit","Remaining SED Credit","Remaining SAED Credit","Remaining NCCD Credit","Remaining eCess Credit","Remaining ADET Credit","Remaining AED(TTA) Credit","Remaining ADE Credit","Remaining ADC VAT Credit","Remaining SHECess Credit";
        }
        key(Key10;"Location E.C.C. No.",Closed,"Remaining Excise Amount","Excise as Service Tax Credit","Posting Date")
        {
            SumIndexFields = "Remaining BED Credit","Remaining AED(GSI) Credit","Remaining SED Credit","Remaining SAED Credit","Remaining NCCD Credit","Remaining eCess Credit","Remaining ADET Credit","Remaining AED(TTA) Credit","Remaining ADE Credit","Remaining ADC VAT Credit","Remaining SHECess Credit";
        }
        key(Key11;"Location E.C.C. No.","Posting Date")
        {
            SumIndexFields = "Remaining BED Credit","Remaining AED(GSI) Credit","Remaining SED Credit","Remaining SAED Credit","Remaining NCCD Credit","Remaining eCess Credit","Remaining ADET Credit","Remaining AED(TTA) Credit","Remaining ADE Credit","Remaining ADC VAT Credit","Remaining SHECess Credit","Remaining Excise Amount";
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    var
        GenJnlPostPreview : Codeunit "Gen. Jnl.-Post Preview";
    begin
        //GenJnlPostPreview.SaveRG23CPartIIEntry(Rec);
    end;
}

