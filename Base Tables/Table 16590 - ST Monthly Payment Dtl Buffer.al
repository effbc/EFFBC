table 16590 "ST Monthly Payment Dtl Buffer"
{
    // version NAVIN9.00.00.46621

    CaptionML = ENU='ST Monthly Payment Dtl Buffer',
                ENN='ST Monthly Payment Dtl Buffer';

    fields
    {
        field(1;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(2;"Service Tax Group Code";Code[20])
        {
            CaptionML = ENU='Service Tax Group Code',
                        ENN='Service Tax Group Code';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(3;"Liability Date";Date)
        {
            CaptionML = ENU='Liability Date',
                        ENN='Liability Date';
            DataClassification = SystemMetadata;
        }
        field(4;"Interest Amount";Decimal)
        {
            CaptionML = ENU='Interest Amount',
                        ENN='Interest Amount';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(5;"Penalty Amount";Decimal)
        {
            CaptionML = ENU='Penalty Amount',
                        ENN='Penalty Amount';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(6;"Section 73 A Amount";Decimal)
        {
            CaptionML = ENU='Section 73 A Amount',
                        ENN='Section 73 A Amount';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(7;"Any Other Amount";Decimal)
        {
            CaptionML = ENU='Any Other Amount',
                        ENN='Any Other Amount';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(8;"Other Arrear Amt";Decimal)
        {
            CaptionML = ENU='Other Arrear Amt',
                        ENN='Other Arrear Amt';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(9;"Other eCess Arrear Amt";Decimal)
        {
            CaptionML = ENU='Other eCess Arrear Amt',
                        ENN='Other eCess Arrear Amt';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(10;"Other SHE Cess Arrear Amt";Decimal)
        {
            CaptionML = ENU='Other SHE Cess Arrear Amt',
                        ENN='Other SHE Cess Arrear Amt';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(11;"Service Tax Registration No.";Code[20])
        {
            CaptionML = ENU='Service Tax Registration No.',
                        ENN='Service Tax Registration No.';
            DataClassification = SystemMetadata;
            Editable = false;
            TableRelation = "Service Tax Registration Nos.";
        }
        field(13;"Other Arrear Amt (SBC)";Decimal)
        {
            CaptionML = ENU='Other Arrear Amt (SBC)',
                        ENN='Other Arrear Amt (SBC)';
            DataClassification = SystemMetadata;
            MinValue = 0;
        }
        field(14;"Other Arrear KK Cess Amount";Decimal)
        {
            CaptionML = ENU='Other Arrear KK Cess Amount',
                        ENN='Other Arrear KK Cess Amount';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1;"Service Tax Registration No.","Document No.","Service Tax Group Code","Liability Date")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    begin
        TestField("Service Tax Group Code");
        TestField("Liability Date");
        TestField("Service Tax Registration No.");
    end;

    trigger OnModify();
    begin
        TestField("Service Tax Group Code");
        TestField("Liability Date");
        TestField("Service Tax Registration No.");
    end;
}

