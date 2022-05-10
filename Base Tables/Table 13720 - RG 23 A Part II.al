table 13720 "RG 23 A Part II"
{
    // version NAVIN9.00.00.46621

    CaptionML = ENU='RG 23 A Part II',
                ENN='RG 23 A Part II';
    LookupPageID = 13726;

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
        field(3;"Op. Bal. BED/AED";Decimal)
        {
            CaptionML = ENU='Op. Bal. BED/AED',
                        ENN='Op. Bal. BED/AED';
        }
        field(4;"Op. Bal. ODs";Decimal)
        {
            CaptionML = ENU='Op. Bal. ODs',
                        ENN='Op. Bal. ODs';
        }
        field(5;"Vendor Invoice No.";Code[20])
        {
            CaptionML = ENU='Vendor Invoice No.',
                        ENN='Vendor Invoice No.';
        }
        field(6;"Vendor E.C.C. No.";Code[20])
        {
            CaptionML = ENU='Vendor E.C.C. No.',
                        ENN='Vendor E.C.C. No.';
            TableRelation = "E.C.C. Nos.";
        }
        field(9;"BED Credit";Decimal)
        {
            CaptionML = ENU='BED Credit',
                        ENN='BED Credit';
        }
        field(10;"AED(GSI) Credit";Decimal)
        {
            CaptionML = ENU='AED(GSI) Credit',
                        ENN='AED(GSI) Credit';
        }
        field(11;"Credit Other Duties";Decimal)
        {
            CaptionML = ENU='Credit Other Duties',
                        ENN='Credit Other Duties';
        }
        field(12;"Closing Bal. BED/AED";Decimal)
        {
            CaptionML = ENU='Closing Bal. BED/AED',
                        ENN='Closing Bal. BED/AED';
        }
        field(13;"Closing Bal. Other Duties";Decimal)
        {
            CaptionML = ENU='Closing Bal. Other Duties',
                        ENN='Closing Bal. Other Duties';
        }
        field(16;"Customer E.C.C. No.";Code[20])
        {
            CaptionML = ENU='Customer E.C.C. No.',
                        ENN='Customer E.C.C. No.';
            TableRelation = "E.C.C. Nos.";
        }
        field(17;"Debit Balance BED/AED";Decimal)
        {
            CaptionML = ENU='Debit Balance BED/AED',
                        ENN='Debit Balance BED/AED';
        }
        field(18;"Debit Balance Other Duties";Decimal)
        {
            CaptionML = ENU='Debit Balance Other Duties',
                        ENN='Debit Balance Other Duties';
        }
        field(19;"Credit Balance BED/AED";Decimal)
        {
            CaptionML = ENU='Credit Balance BED/AED',
                        ENN='Credit Balance BED/AED';
        }
        field(20;"Credit Balance Other Duties";Decimal)
        {
            CaptionML = ENU='Credit Balance Other Duties',
                        ENN='Credit Balance Other Duties';
        }
        field(21;"Total BED Amount";Decimal)
        {
            CaptionML = ENU='Total BED Amount',
                        ENN='Total BED Amount';
        }
        field(22;"Total AED(GSI) Amount";Decimal)
        {
            CaptionML = ENU='Total AED(GSI) Amount',
                        ENN='Total AED(GSI) Amount';
        }
        field(23;"Total SED Amount";Decimal)
        {
            CaptionML = ENU='Total SED Amount',
                        ENN='Total SED Amount';
        }
        field(24;"Total SAED Amount";Decimal)
        {
            CaptionML = ENU='Total SAED Amount',
                        ENN='Total SAED Amount';
        }
        field(25;"Total CESS Amount";Decimal)
        {
            CaptionML = ENU='Total CESS Amount',
                        ENN='Total CESS Amount';
        }
        field(26;"Total NCCD Amount";Decimal)
        {
            CaptionML = ENU='Total NCCD Amount',
                        ENN='Total NCCD Amount';
        }
        field(27;"Total eCess Amount";Decimal)
        {
            CaptionML = ENU='Total eCess Amount',
                        ENN='Total eCess Amount';
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
        field(35;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
        }
        field(36;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
        }
        field(37;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            OptionCaptionML = ENU=' ,Purchase,Sale,Transfer',
                              ENN=' ,Purchase,Sale,Transfer';
            OptionMembers = " ",Purchase,Sale,Transfer;
        }
        field(40;"Cenvat Cr. Receivable Account";Code[20])
        {
            CaptionML = ENU='Cenvat Cr. Receivable Account',
                        ENN='Cenvat Cr. Receivable Account';
            TableRelation = "G/L Account";
        }
        field(41;"SED Credit";Decimal)
        {
            CaptionML = ENU='SED Credit',
                        ENN='SED Credit';
        }
        field(42;"SAED Credit";Decimal)
        {
            CaptionML = ENU='SAED Credit',
                        ENN='SAED Credit';
        }
        field(43;"NCCD Credit";Decimal)
        {
            CaptionML = ENU='NCCD Credit',
                        ENN='NCCD Credit';
        }
        field(44;"eCess Credit";Decimal)
        {
            CaptionML = ENU='eCess Credit',
                        ENN='eCess Credit';
        }
        field(45;"BED Debit";Decimal)
        {
            CaptionML = ENU='BED Debit',
                        ENN='BED Debit';
        }
        field(46;"AED(GSI) Debit";Decimal)
        {
            CaptionML = ENU='AED(GSI) Debit',
                        ENN='AED(GSI) Debit';
        }
        field(47;"SED Debit";Decimal)
        {
            CaptionML = ENU='SED Debit',
                        ENN='SED Debit';
        }
        field(48;"SAED Debit";Decimal)
        {
            CaptionML = ENU='SAED Debit',
                        ENN='SAED Debit';
        }
        field(49;"NCCD Debit";Decimal)
        {
            CaptionML = ENU='NCCD Debit',
                        ENN='NCCD Debit';
        }
        field(50;"eCess Debit";Decimal)
        {
            CaptionML = ENU='eCess Debit',
                        ENN='eCess Debit';
        }
        field(51;"Excise Bus. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Bus. Posting Group',
                        ENN='Excise Bus. Posting Group';
            TableRelation = "Excise Bus. Posting Group";
        }
        field(52;"Excise Prod. Posting Group";Code[10])
        {
            CaptionML = ENU='Excise Prod. Posting Group',
                        ENN='Excise Prod. Posting Group';
            TableRelation = "Excise Prod. Posting Group";
        }
        field(53;"Vendor Shipment No.";Code[20])
        {
            CaptionML = ENU='Vendor Shipment No.',
                        ENN='Vendor Shipment No.';
        }
        field(54;"Order No.";Code[20])
        {
            CaptionML = ENU='Order No.',
                        ENN='Order No.';
        }
        field(55;"Vendor No.";Code[20])
        {
            CaptionML = ENU='Vendor No.',
                        ENN='Vendor No.';
            TableRelation = Vendor;
        }
        field(56;"CESS Debit";Decimal)
        {
            CaptionML = ENU='CESS Debit',
                        ENN='CESS Debit';
        }
        field(57;"ADET Credit";Decimal)
        {
            CaptionML = ENU='ADET Credit',
                        ENN='ADET Credit';
        }
        field(58;"ADET Debit";Decimal)
        {
            CaptionML = ENU='ADET Debit',
                        ENN='ADET Debit';
        }
        field(59;"Total ADET Amount";Decimal)
        {
            CaptionML = ENU='Total ADET Amount',
                        ENN='Total ADET Amount';
        }
        field(60;"AED(TTA) Credit";Decimal)
        {
            CaptionML = ENU='AED(TTA) Credit',
                        ENN='AED(TTA) Credit';
        }
        field(61;"AED(TTA) Debit";Decimal)
        {
            CaptionML = ENU='AED(TTA) Debit',
                        ENN='AED(TTA) Debit';
        }
        field(62;"Total AED(TTA) Amount";Decimal)
        {
            CaptionML = ENU='Total AED(TTA) Amount',
                        ENN='Total AED(TTA) Amount';
        }
        field(67;"ADE Credit";Decimal)
        {
            CaptionML = ENU='ADE Credit',
                        ENN='ADE Credit';
        }
        field(68;"ADE Debit";Decimal)
        {
            CaptionML = ENU='ADE Debit',
                        ENN='ADE Debit';
        }
        field(69;"Total ADE Amount";Decimal)
        {
            CaptionML = ENU='Total ADE Amount',
                        ENN='Total ADE Amount';
        }
        field(72;"SHE Cess Credit";Decimal)
        {
            CaptionML = ENU='SHE Cess Credit',
                        ENN='SHE Cess Credit';
        }
        field(73;"SHE Cess Debit";Decimal)
        {
            CaptionML = ENU='SHE Cess Debit',
                        ENN='SHE Cess Debit';
        }
        field(74;"Total SHE Cess Amount";Decimal)
        {
            CaptionML = ENU='Total SHE Cess Amount',
                        ENN='Total SHE Cess Amount';
        }
        field(75;"Excise Credit Availed as ST";Boolean)
        {
            CaptionML = ENU='Excise Credit Availed as ST',
                        ENN='Excise Credit Availed as ST';
        }
        field(76;"Remaining BED Credit";Decimal)
        {
            CaptionML = ENU='Remaining BED Credit',
                        ENN='Remaining BED Credit';
        }
        field(77;"Remaining AED(GSI) Credit";Decimal)
        {
            CaptionML = ENU='Remaining AED(GSI) Credit',
                        ENN='Remaining AED(GSI) Credit';
        }
        field(78;"Remaining SED Credit";Decimal)
        {
            CaptionML = ENU='Remaining SED Credit',
                        ENN='Remaining SED Credit';
        }
        field(79;"Remaining SAED Credit";Decimal)
        {
            CaptionML = ENU='Remaining SAED Credit',
                        ENN='Remaining SAED Credit';
        }
        field(80;"Remaining NCCD Credit";Decimal)
        {
            CaptionML = ENU='Remaining NCCD Credit',
                        ENN='Remaining NCCD Credit';
        }
        field(81;"Remaining eCess Credit";Decimal)
        {
            CaptionML = ENU='Remaining eCess Credit',
                        ENN='Remaining eCess Credit';
        }
        field(82;"Remaining ADET Credit";Decimal)
        {
            CaptionML = ENU='Remaining ADET Credit',
                        ENN='Remaining ADET Credit';
        }
        field(83;"Remaining AED(TTA) Credit";Decimal)
        {
            CaptionML = ENU='Remaining AED(TTA) Credit',
                        ENN='Remaining AED(TTA) Credit';
        }
        field(84;"Remaining ADE Credit";Decimal)
        {
            CaptionML = ENU='Remaining ADE Credit',
                        ENN='Remaining ADE Credit';
        }
        field(85;"Remaining Excise Amount";Decimal)
        {
            CaptionML = ENU='Remaining Excise Amount',
                        ENN='Remaining Excise Amount';
        }
        field(86;Closed;Boolean)
        {
            CaptionML = ENU='Closed',
                        ENN='Closed';
        }
        field(87;"Excise as Service Tax Credit";Boolean)
        {
            CaptionML = ENU='Excise as Service Tax Credit',
                        ENN='Excise as Service Tax Credit';
        }
        field(88;Supplementary;Boolean)
        {
            CaptionML = ENU='Supplementary',
                        ENN='Supplementary';
        }
        field(89;"Source Document Type";Option)
        {
            CaptionML = ENU='Source Document Type',
                        ENN='Source Document Type';
            OptionCaptionML = ENU='Posted Invoice,Posted Credit Memo',
                              ENN='Posted Invoice,Posted Credit Memo';
            OptionMembers = "Posted Invoice","Posted Credit Memo";
        }
        field(90;"Source Document No.";Code[20])
        {
            CaptionML = ENU='Source Document No.',
                        ENN='Source Document No.';
            TableRelation = IF ("Source Document Type"=FILTER("Posted Invoice")) "Purch. Inv. Header"."No."
                            ELSE IF ("Source Document Type"=FILTER("Posted Credit Memo")) "Purch. Cr. Memo Hdr."."No.";
        }
        field(91;"ADC VAT Debit";Decimal)
        {
            CaptionML = ENU='ADC VAT Debit',
                        ENN='ADC VAT Debit';
        }
        field(92;"ADC VAT Credit";Decimal)
        {
            CaptionML = ENU='ADC VAT Credit',
                        ENN='ADC VAT Credit';
        }
        field(93;"Total ADC VAT Amount";Decimal)
        {
            CaptionML = ENU='Total ADC VAT Amount',
                        ENN='Total ADC VAT Amount';
        }
        field(94;"Remaining ADC VAT Credit";Decimal)
        {
            CaptionML = ENU='Remaining ADC VAT Credit',
                        ENN='Remaining ADC VAT Credit';
        }
        field(95;CVD;Boolean)
        {
            CaptionML = ENU='CVD',
                        ENN='CVD';
        }
        field(96;"Vendor Type";Option)
        {
            CaptionML = ENU='Vendor Type',
                        ENN='Vendor Type';
            OptionCaptionML = ENU=' ,Manufacturer,First Stage Dealer,Second Stage Dealer,Importer',
                              ENN=' ,Manufacturer,First Stage Dealer,Second Stage Dealer,Importer';
            OptionMembers = " ",Manufacturer,"First Stage Dealer","Second Stage Dealer",Importer;
        }
        field(97;"Type of Unit";Option)
        {
            CaptionML = ENU='Type of Unit',
                        ENN='Type of Unit';
            OptionCaptionML = ENU=' ,Manufacturer,100% EOU',
                              ENN=' ,Manufacturer,100% EOU';
            OptionMembers = " ",Manufacturer,"100% EOU";
        }
        field(98;"Remaining SHECess Credit";Decimal)
        {
            CaptionML = ENU='Remaining SHECess Credit',
                        ENN='Remaining SHECess Credit';
        }
        field(99;"RG Entry No.";Code[20])
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
            SumIndexFields = "BED Credit","AED(GSI) Credit","SED Credit","SAED Credit","NCCD Credit","eCess Credit","CESS Debit","ADC VAT Credit","SHE Cess Credit";
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
        key(Key8;"Location E.C.C. No.",Closed,"Remaining Excise Amount","Excise as Service Tax Credit","Cenvat Cr. Receivable Account")
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
        //GenJnlPostPreview.SaveRG23APartIIEntry(Rec);
    end;
}

