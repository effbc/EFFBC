table 60002 "RG Register 23 A Part II"
{
    // version B2B1.0


    fields
    {
        field(1;"Entry No.";Integer)
        {
        }
        field(2;"Posting Date";Date)
        {
        }
        field(3;"Op. Bal. BED/AED";Decimal)
        {
            Caption = 'Op. Bal. BED/AED';
        }
        field(4;"Op. Bal. ODs";Decimal)
        {
            Caption = 'Op. Bal. ODs';
        }
        field(5;"Vendor Invoice No.";Code[20])
        {
            Caption = 'Vendor Invoice No.';
        }
        field(6;"Vendor E.C.C. No.";Code[20])
        {
            TableRelation = "E.C.C. Nos.";
        }
        field(7;Range;Code[20])
        {
            Caption = 'Range';
            Description = 'NR';
        }
        field(8;"RG 23 A S. No.";Integer)
        {
            Caption = 'RG 23 A S.No.';
            Description = 'NR';
        }
        field(9;"BED Credit";Decimal)
        {
            Caption = 'BED Credit';
        }
        field(10;"AED(GSI) Credit";Decimal)
        {
            Caption = 'AED(GSI) Credit';
        }
        field(11;"Credit Other Duties";Decimal)
        {
            Caption = 'Other Duties';
        }
        field(12;"Closing Bal. BED/AED";Decimal)
        {
            Caption = 'Closing Bal. BED/AED';
        }
        field(13;"Closing Bal. Other Duties";Decimal)
        {
            Caption = 'Closing Bal. Other Duties';
        }
        field(14;"Sales Invoice No.";Code[20])
        {
            Caption = 'Sales Invoice No.';
            Description = 'NR';
        }
        field(15;"Tariff heading of the Items";Code[250])
        {
            Caption = 'Tariff heading of the Items';
            Description = 'NR';
        }
        field(16;"Customer E.C.C. No.";Code[20])
        {
            Caption = 'Customer E.C.C.No.';
        }
        field(17;"Debit Balance BED/AED";Decimal)
        {
            Caption = 'Debit BED';
        }
        field(18;"Debit Balance Other Duties";Decimal)
        {
            Caption = 'Debit Other Duties';
        }
        field(19;"Credit Balance BED/AED";Decimal)
        {
            Caption = 'Balance BED/AD of Customs';
        }
        field(20;"Credit Balance Other Duties";Decimal)
        {
            Caption = 'Balance of Other Duties';
        }
        field(21;"Total BED Amount";Decimal)
        {
        }
        field(22;"Total AED(GSI) Amount";Decimal)
        {
        }
        field(23;"Total SED Amount";Decimal)
        {
        }
        field(24;"Total SAED Amount";Decimal)
        {
        }
        field(25;"Total CESS Amount";Decimal)
        {
        }
        field(26;"Total NCCD Amount";Decimal)
        {
        }
        field(27;"Total eCess Amount";Decimal)
        {
        }
        field(33;"Location Code";Code[20])
        {
            TableRelation = Location;
        }
        field(34;"Location E.C.C. No.";Code[20])
        {
            TableRelation = "E.C.C. Nos.";
        }
        field(13700;"Document No.";Code[20])
        {
        }
        field(13701;"Line No.";Integer)
        {
            Caption = 'Line No.';
        }
        field(13702;Type;Option)
        {
            OptionCaption = '" ,Purchase,Sale,Transfer"';
            OptionMembers = " ",Purchase,Sale,Transfer;
        }
        field(13703;"Cenvat Balance BED/AED";Decimal)
        {
            Description = 'NR';
        }
        field(13704;"Centvat Opening Balance";Decimal)
        {
            Description = 'NR';
        }
        field(13705;"Cenvat Cr. Receivable Acc.";Code[20])
        {
            TableRelation = "G/L Account";
        }
        field(13706;"SED Credit";Decimal)
        {
        }
        field(13707;"SAED Credit";Decimal)
        {
        }
        field(13708;"NCCD Credit";Decimal)
        {
        }
        field(13709;"eCess Credit";Decimal)
        {
        }
        field(13710;"BED Debit";Decimal)
        {
        }
        field(13711;"AED(GSI) Debit";Decimal)
        {
        }
        field(13712;"SED Debit";Decimal)
        {
        }
        field(13713;"SAED Debit";Decimal)
        {
        }
        field(13714;"NCCD Debit";Decimal)
        {
        }
        field(13715;"eCess Debit";Decimal)
        {
        }
        field(13716;"Excise Bus. Posting Group";Code[10])
        {
            Caption = 'Excise Bus. Posting Group';
            TableRelation = "Excise Bus. Posting Group";
        }
        field(13717;"Excise Prod. Posting Group";Code[10])
        {
            Caption = 'Excise Prod. Posting Group';
            TableRelation = "Excise Prod. Posting Group";
        }
        field(13718;"Vendor Shipment No.";Code[20])
        {
        }
        field(13719;"Order No.";Code[20])
        {
        }
        field(13720;"Vendor No.";Code[20])
        {
        }
        field(13721;"CESS Debit";Decimal)
        {
        }
        field(13732;"ADET Credit";Decimal)
        {
            Caption = 'ADET Credit';
        }
        field(13733;"ADET Debit";Decimal)
        {
            Caption = 'ADET Debit';
        }
        field(13734;"Total ADET Amount";Decimal)
        {
            Caption = 'Total ADET Amount';
        }
        field(13735;"AED(TTA) Credit";Decimal)
        {
            Caption = 'AED(TTA) Credit';
        }
        field(13736;"AED(TTA) Debit";Decimal)
        {
            Caption = 'AED(TTA) Debit';
        }
        field(13737;"Total AED(TTA) Amount";Decimal)
        {
            Caption = 'Total AED(TTA) Amount';
        }
        field(16300;"Service Tax Debit";Decimal)
        {
            Caption = 'Service Tax Debit';
        }
        field(16301;"Service Tax eCess Debit";Decimal)
        {
            Caption = 'Service Tax eCess Debit';
        }
        field(16302;"Total Service Tax Amount";Decimal)
        {
            Caption = 'Total Service Tax Amount';
        }
        field(16303;"Total Service Tax eCess Amount";Decimal)
        {
            Caption = 'Total Service Tax eCess Amount';
        }
        field(16304;"ADE Credit";Decimal)
        {
            Caption = 'ADE Credit';
        }
        field(16305;"ADE Debit";Decimal)
        {
            Caption = 'ADE Debit';
        }
        field(16306;"Total ADE Amount";Decimal)
        {
            Caption = 'Total ADE Amount';
        }
        field(16307;"Service Tax Credit";Decimal)
        {
            Caption = 'Service Tax Credit';
        }
        field(16308;"Service Tax eCess Credit";Decimal)
        {
            Caption = 'Service Tax eCess Credit';
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
    }

    fieldgroups
    {
    }
}

