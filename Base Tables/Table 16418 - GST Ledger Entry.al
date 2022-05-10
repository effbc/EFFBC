table 16418 "GST Ledger Entry"
{
    // version NAVIN9.00.00.51685,TFS223871

    CaptionML = ENU='GST Ledger Entry',
                ENN='GST Ledger Entry';
    DrillDownPageID = 16418;
    LookupPageID = 16418;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
        }
        field(2;"Gen. Bus. Posting Group";Code[10])
        {
            CaptionML = ENU='Gen. Bus. Posting Group',
                        ENN='Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(3;"Gen. Prod. Posting Group";Code[10])
        {
            CaptionML = ENU='Gen. Prod. Posting Group',
                        ENN='Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(4;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
        }
        field(5;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
        }
        field(7;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            OptionCaptionML = ENU=' ,Payment,Invoice,Credit Memo,Transfer,,,Refund',
                              ENN=' ,Payment,Invoice,Credit Memo,Transfer,,,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo",Transfer,,,Refund;
        }
        field(8;"Transaction Type";Option)
        {
            CaptionML = ENU='Transaction Type',
                        ENN='Transaction Type';
            OptionCaptionML = ENU='Purchase,Sales',
                              ENN='Purchase,Sales';
            OptionMembers = Purchase,Sales;
        }
        field(9;"GST Base Amount";Decimal)
        {
            CaptionML = ENU='GST Base Amount',
                        ENN='GST Base Amount';
        }
        field(10;"Source Type";Option)
        {
            CaptionML = ENU='Source Type',
                        ENN='Source Type';
            OptionCaptionML = ENU='Customer,Vendor,G/L Account,Transfer,Bank Account,Party',
                              ENN='Customer,Vendor,G/L Account,Transfer,Bank Account,Party';
            OptionMembers = Customer,Vendor,"G/L Account",Transfer,"Bank Account",Party;
        }
        field(11;"Source No.";Code[20])
        {
            CaptionML = ENU='Source No.',
                        ENN='Source No.';
        }
        field(12;"User ID";Code[50])
        {
            CaptionML = ENU='User ID',
                        ENN='User ID';
            DataClassification = EndUserIdentifiableInformation;
        }
        field(13;"Source Code";Code[10])
        {
            CaptionML = ENU='Source Code',
                        ENN='Source Code';
            TableRelation = "Source Code";
        }
        field(14;"Reason Code";Code[10])
        {
            CaptionML = ENU='Reason Code',
                        ENN='Reason Code';
            TableRelation = "Reason Code";
        }
        field(15;"Purchase Group Type";Option)
        {
            CaptionML = ENU='Purchase Group Type',
                        ENN='Purchase Group Type';
            OptionCaptionML = ENU=' ,Goods,Service',
                              ENN=' ,Goods,Service';
            OptionMembers = " ",Goods,Service;
        }
        field(18;"Transaction No.";Integer)
        {
            CaptionML = ENU='Transaction No.',
                        ENN='Transaction No.';
        }
        field(19;"External Document No.";Code[35])
        {
            CaptionML = ENU='External Document No.',
                        ENN='External Document No.';
        }
        field(20;"GST Component Code";Code[10])
        {
            CaptionML = ENU='GST Component Code',
                        ENN='GST Component Code';
            TableRelation = "GST Component";
        }
        field(25;"GST on Advance Payment";Boolean)
        {
            CaptionML = ENU='GST on Advance Payment',
                        ENN='GST on Advance Payment';
        }
        field(26;"Reverse Charge";Boolean)
        {
            CaptionML = ENU='Reverse Charge',
                        ENN='Reverse Charge';
        }
        field(27;"GST Amount";Decimal)
        {
            CaptionML = ENU='GST Amount',
                        ENN='GST Amount';
        }
        field(28;"Currency Code";Code[10])
        {
            CaptionML = ENU='Currency Code',
                        ENN='Currency Code';
            TableRelation = Currency;
        }
        field(29;"Currency Factor";Decimal)
        {
            CaptionML = ENU='Currency Factor',
                        ENN='Currency Factor';
        }
        field(30;Reversed;Boolean)
        {
            CaptionML = ENU='Reversed',
                        ENN='Reversed';
            Editable = false;
        }
        field(31;"Reversed Entry No.";Integer)
        {
            CaptionML = ENU='Reversed Entry No.',
                        ENN='Reversed Entry No.';
            Editable = false;
        }
        field(32;"Reversed by Entry No.";Integer)
        {
            CaptionML = ENU='Reversed by Entry No.',
                        ENN='Reversed by Entry No.';
            Editable = false;
        }
        field(33;UnApplied;Boolean)
        {
            CaptionML = ENU='UnApplied',
                        ENN='UnApplied';
        }
        field(34;"Entry Type";Option)
        {
            CaptionML = ENU='Entry Type',
                        ENN='Entry Type';
            OptionCaptionML = ENU='Initial Entry,Application',
                              ENN='Initial Entry,Application';
            OptionMembers = "Initial Entry",Application;
        }
        field(35;"Payment Type";Option)
        {
            CaptionML = ENU='Payment Type',
                        ENN='Payment Type';
            OptionCaptionML = ENU=' ,Advance,Normal',
                              ENN=' ,Advance,Normal';
            OptionMembers = " ",Advance,Normal;
        }
        field(36;"Input Service Distribution";Boolean)
        {
            CaptionML = ENU='Input Service Distribution',
                        ENN='Input Service Distribution';
            Editable = false;
        }
        field(37;Availment;Boolean)
        {
            CaptionML = ENU='Availment',
                        ENN='Availment';
            Editable = false;
        }
        field(38;"Account No.";Code[20])
        {
            CaptionML = ENU='Account No.',
                        ENN='Account No.';
            Editable = false;
        }
        field(39;"Bal. Account No.";Code[20])
        {
            CaptionML = ENU='Bal. Account No.',
                        ENN='Bal. Account No.';
            Editable = false;
        }
        field(40;"Bal. Account No. 2";Code[20])
        {
            CaptionML = ENU='Bal. Account No. 2',
                        ENN='Bal. Account No. 2';
            Editable = false;
        }
        field(41;"Account No. 2";Code[20])
        {
            CaptionML = ENU='Account No. 2',
                        ENN='Account No. 2';
            Editable = false;
        }
        field(42;"POS Out Of India";Boolean)
        {
            CaptionML = ENU='POS Out Of India',
                        ENN='POS Out Of India';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
        key(Key2;"Transaction No.")
        {
        }
        key(Key3;"Transaction Type","Transaction No.","Source No.","Entry Type","Document Type","Document No.","GST Component Code")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        USER.Reset;
        USER.SetFilter("User Name",UserId);
        if USER.FindFirst then
          begin
            //IF (NOT( USER.Tams_Dept IN ['SAL','ERP','F&A'])) AND (NOT(USER."User Name" IN ['EFFTRONICS\YESU','EFFTRONICS\MBNAGAMANI','EFFTRONICS\SSIRISHA','EFFTRONICS\RISHIANVESH','EFFTRONICS\GANURADHA'])) THEN
            if (not( USER.Tams_Dept in ['ERP'])) then //modified by priyanka to remove edit permissions
              Error('You don''t have Permissions');
          end
          else
            Error('User not found. Contact ERP');
    end;

    trigger OnInsert();
    begin
        //GenJnlPostPreview.SaveGSTLedgerEntry(Rec);
    end;

    trigger OnModify();
    begin
        USER.Reset;
        USER.SetFilter("User Name",UserId);
        if USER.FindFirst then
          begin
            //IF (NOT( USER.Tams_Dept IN ['SAL','ERP','F&A'])) AND (NOT(USER."User Name" IN ['EFFTRONICS\YESU','EFFTRONICS\MBNAGAMANI','EFFTRONICS\SSIRISHA','EFFTRONICS\RISHIANVESH','EFFTRONICS\GANURADHA'])) THEN
            if (not( USER.Tams_Dept in ['ERP']) and (USER."User Name"<>'EFFTRONICS\VHARIPRASAD'))then //modified by priyanka to remove edit permissions
              Error('You don''t have Permissions');
          end
          else
            Error('User not found. Contact ERP');
    end;

    var
        GenJnlPostPreview : Codeunit "Gen. Jnl.-Post Preview";
        USER : Record User;
}

