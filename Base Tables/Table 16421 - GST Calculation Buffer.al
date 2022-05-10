table 16421 "GST Calculation Buffer"
{
    // version NAVIN9.00.00.49326

    CaptionML = ENU='GST Calculation Buffer',
                ENN='GST Calculation Buffer';

    fields
    {
        field(1;"Transaction Type";Option)
        {
            CaptionML = ENU='Transaction Type',
                        ENN='Transaction Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU='Purchase,Sales,Transfer,Service,Service Transfer,Production',
                              ENN='Purchase,Sales,Transfer,Service,Service Transfer,Production';
            OptionMembers = Purchase,Sales,Transfer,Service,"Service Transfer",Production;
        }
        field(2;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order',
                              ENN='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(4;"GST State Code";Code[10])
        {
            CaptionML = ENU='GST State Code',
                        ENN='GST State Code';
            DataClassification = SystemMetadata;
        }
        field(5;"GST Group Code";Code[20])
        {
            CaptionML = ENU='GST Group Code',
                        ENN='GST Group Code';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "GST Group";
        }
        field(6;"GST Component Code";Code[10])
        {
            CaptionML = ENU='GST Component Code',
                        ENN='GST Component Code';
            DataClassification = SystemMetadata;
            NotBlank = true;
            TableRelation = "GST Component";
        }
        field(7;"Effective Date";Date)
        {
            CaptionML = ENU='Effective Date',
                        ENN='Effective Date';
            DataClassification = SystemMetadata;
            NotBlank = true;
        }
        field(8;"Document Line No.";Integer)
        {
            CaptionML = ENU='Document Line No.',
                        ENN='Document Line No.';
            DataClassification = SystemMetadata;
        }
        field(9;"GST Component %";Decimal)
        {
            CaptionML = ENU='GST Component %',
                        ENN='GST Component %';
            DataClassification = SystemMetadata;
        }
        field(10;"Calculation Order";Integer)
        {
            CaptionML = ENU='Calculation Order',
                        ENN='Calculation Order';
            DataClassification = SystemMetadata;
        }
        field(11;Formula;Code[250])
        {
            CaptionML = ENU='Formula',
                        ENN='Formula';
            DataClassification = SystemMetadata;
        }
        field(12;"Include Base";Boolean)
        {
            CaptionML = ENU='Include Base',
                        ENN='Include Base';
            DataClassification = SystemMetadata;
        }
        field(13;"Component Calc. Type";Option)
        {
            CaptionML = ENU='Component Calc. Type',
                        ENN='Component Calc. Type';
            DataClassification = SystemMetadata;
            OptionCaptionML = ENU='General,Threshold,Cess %,Cess % + Amount / Unit Factor,Cess % Or Amount / Unit Factor Whichever Higher,Amount / Unit Factor',
                              ENN='General,Threshold,Cess %,Cess % + Amount / Unit Factor,Cess % Or Amount / Unit Factor Whichever Higher,Amount / Unit Factor';
            OptionMembers = General,Threshold,"Cess %","Cess % + Amount / Unit Factor","Cess % Or Amount / Unit Factor Whichever Higher","Amount / Unit Factor";
        }
        field(14;"Cess Amount Per Unit Factor";Decimal)
        {
            CaptionML = ENU='Cess Amount Per Unit Factor',
                        ENN='Cess Amount Per Unit Factor';
            DataClassification = SystemMetadata;
        }
        field(15;"Cess UOM";Code[10])
        {
            CaptionML = ENU='Cess UOM',
                        ENN='Cess UOM';
            DataClassification = SystemMetadata;
            TableRelation = "Unit of Measure";
        }
        field(16;"Cess Factor Quantity";Decimal)
        {
            CaptionML = ENU='Cess Factor Quantity',
                        ENN='Cess Factor Quantity';
            DataClassification = SystemMetadata;
        }
        field(17;"Cess Amt Per Unit Factor (LCY)";Decimal)
        {
            CaptionML = ENU='Cess Amt Per Unit Factor (LCY)',
                        ENN='Cess Amt Per Unit Factor (LCY)';
            DataClassification = SystemMetadata;
        }
        field(18;"Non-Availment";Boolean)
        {
            CaptionML = ENU='Non-Availment',
                        ENN='Non-Availment';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1;"Transaction Type","Document Type","Document No.","Document Line No.","GST State Code","GST Group Code","GST Component Code","Effective Date")
        {
        }
        key(Key2;"Transaction Type","Document Type","Document No.","Document Line No.","Calculation Order")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    begin
        /*GSTManagement.CheckGSTCalculationOrder("Transaction Type","Document Type","Document No.",
          "Document Line No.","Calculation Order");
          */

    end;
}

