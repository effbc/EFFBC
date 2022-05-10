table 16440 "Service Transfer Shpt. Line"
{
    // version NAVIN9.00.00.48822

    CaptionML = ENU='Service Transfer Shpt. Line',
                ENN='Service Transfer Shpt. Line';

    fields
    {
        field(1;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
            Editable = false;
        }
        field(2;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
            Editable = false;
        }
        field(3;"Transfer From G/L Account No.";Code[20])
        {
            CaptionML = ENU='Transfer From G/L Account No.',
                        ENN='Transfer From G/L Account No.';
            Editable = false;
            TableRelation = "G/L Account" WHERE ("Direct Posting"=CONST(true));
        }
        field(4;"Transfer To G/L Account No.";Code[20])
        {
            CaptionML = ENU='Transfer To G/L Account No.',
                        ENN='Transfer To G/L Account No.';
            Editable = false;
            TableRelation = "G/L Account" WHERE ("Direct Posting"=CONST(true));
        }
        field(5;"Transfer Price";Decimal)
        {
            CaptionML = ENU='Transfer Price',
                        ENN='Transfer Price';
            Editable = false;
        }
        field(6;"Ship Control A/C No.";Code[20])
        {
            CaptionML = ENU='Ship Control A/C No.',
                        ENN='Ship Control A/C No.';
            Editable = false;
            TableRelation = "G/L Account" WHERE ("Direct Posting"=CONST(true));
        }
        field(7;"Receive Control A/C No.";Code[20])
        {
            CaptionML = ENU='Receive Control A/C No.',
                        ENN='Receive Control A/C No.';
            Editable = false;
            TableRelation = "G/L Account" WHERE ("Direct Posting"=CONST(true));
        }
        field(8;Shipped;Boolean)
        {
            CaptionML = ENU='Shipped',
                        ENN='Shipped';
            Editable = false;
        }
        field(9;"Shortcut Dimension 1 Code";Code[20])
        {
            CaptionClass = '1,2,1';
            CaptionML = ENU='Shortcut Dimension 1 Code',
                        ENN='Shortcut Dimension 1 Code';
            Editable = false;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(1));
        }
        field(10;"Shortcut Dimension 2 Code";Code[20])
        {
            CaptionClass = '1,2,2';
            CaptionML = ENU='Shortcut Dimension 2 Code',
                        ENN='Shortcut Dimension 2 Code';
            Editable = false;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(2));
        }
        field(11;"GST Group Code";Code[20])
        {
            CaptionML = ENU='GST Group Code',
                        ENN='GST Group Code';
            Editable = false;
            TableRelation = "GST Group".Code WHERE ("GST Group Type"=FILTER(Service));
        }
        field(12;"SAC Code";Code[8])
        {
            CaptionML = ENU='SAC Code',
                        ENN='SAC Code';
            Editable = false;
            TableRelation = "HSN/SAC".Code WHERE ("GST Group Code"=FIELD("GST Group Code"));
        }
        field(13;"GST Base Amount";Decimal)
        {
            CaptionML = ENU='GST Base Amount',
                        ENN='GST Base Amount';
            Editable = false;
        }
        field(14;"GST %";Decimal)
        {
            CaptionML = ENU='GST %',
                        ENN='GST %';
            Editable = false;
        }
        field(15;"Total GST Amount";Decimal)
        {
            CaptionML = ENU='Total GST Amount',
                        ENN='Total GST Amount';
            Editable = false;
        }
        field(16;"GST Rounding Type";Option)
        {
            CaptionML = ENU='GST Rounding Type',
                        ENN='GST Rounding Type';
            Editable = false;
            OptionCaptionML = ENU='Nearest,Up,Down',
                              ENN='Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(17;"GST Rounding Precision";Decimal)
        {
            CaptionML = ENU='GST Rounding Precision',
                        ENN='GST Rounding Precision';
            Editable = false;
        }
        field(18;"From G/L Account Description";Text[50])
        {
            CaptionML = ENU='From G/L Account Description',
                        ENN='From G/L Account Description';
        }
        field(19;"To G/L Account Description";Text[50])
        {
            CaptionML = ENU='To G/L Account Description',
                        ENN='To G/L Account Description';
        }
        field(20;Exempted;Boolean)
        {
            CaptionML = ENU='Exempted',
                        ENN='Exempted';
        }
        field(480;"Dimension Set ID";Integer)
        {
            CaptionML = ENU='Dimension Set ID',
                        ENN='Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(60090;"Dimension Corrected";Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091;"OLD Dim Set ID";Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE ("Dimension Set ID"=FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }

    keys
    {
        key(Key1;"Document No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

