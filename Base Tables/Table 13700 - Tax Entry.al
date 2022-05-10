table 13700 "Tax Entry"
{
    // version NAVIN9.00.00.46621

    CaptionML = ENU='Tax Entry',
                ENN='Tax Entry';
    LookupPageID = 13716;
    Permissions = TableData "Tax Entry"=rimd;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            CaptionML = ENU='Entry No.',
                        ENN='Entry No.';
            Editable = true;
        }
        field(2;"Gen. Bus. Posting Group";Code[10])
        {
            CaptionML = ENU='Gen. Bus. Posting Group',
                        ENN='Gen. Bus. Posting Group';
            Editable = true;
            TableRelation = "Gen. Business Posting Group";
        }
        field(3;"Gen. Prod. Posting Group";Code[10])
        {
            CaptionML = ENU='Gen. Prod. Posting Group',
                        ENN='Gen. Prod. Posting Group';
            Editable = true;
            TableRelation = "Gen. Product Posting Group";
        }
        field(4;"Posting Date";Date)
        {
            CaptionML = ENU='Posting Date',
                        ENN='Posting Date';
            Editable = true;
        }
        field(5;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
            Editable = true;
        }
        field(6;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ENN='Document Type';
            Editable = true;
            OptionCaptionML = ENU=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder',
                              ENN=' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder;
        }
        field(7;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            Editable = true;
            OptionCaptionML = ENU=' ,Purchase,Sale,Settlement',
                              ENN=' ,Purchase,Sale,Settlement';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(8;Base;Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Base',
                        ENN='Base';
            Editable = true;
        }
        field(9;Amount;Decimal)
        {
            AutoFormatType = 1;
            CaptionML = ENU='Amount',
                        ENN='Amount';
            Editable = true;
        }
        field(12;"Sell-to/Buy-from No.";Code[20])
        {
            CaptionML = ENU='Sell-to/Buy-from No.',
                        ENN='Sell-to/Buy-from No.';
            Editable = true;
            TableRelation = IF (Type=CONST(Purchase)) Vendor
                            ELSE IF (Type=CONST(Sale)) Customer;
        }
        field(13;"EU 3-Party Trade";Boolean)
        {
            CaptionML = ENU='EU 3-Party Trade',
                        ENN='EU 3-Party Trade';
            Editable = true;
        }
        field(14;"User ID";Code[50])
        {
            CaptionML = ENU='User ID',
                        ENN='User ID';
            DataClassification = EndUserIdentifiableInformation;
            Editable = true;
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
        field(15;"Source Code";Code[10])
        {
            CaptionML = ENU='Source Code',
                        ENN='Source Code';
            Editable = true;
            TableRelation = "Source Code";
        }
        field(16;"Reason Code";Code[10])
        {
            CaptionML = ENU='Reason Code',
                        ENN='Reason Code';
            Editable = true;
            TableRelation = "Reason Code";
        }
        field(17;"Closed by Entry No.";Integer)
        {
            CaptionML = ENU='Closed by Entry No.',
                        ENN='Closed by Entry No.';
            Editable = false;
            TableRelation = "VAT Entry";
        }
        field(18;Closed;Boolean)
        {
            CaptionML = ENU='Closed',
                        ENN='Closed';
            Editable = true;
        }
        field(19;"Country/Region Code";Code[10])
        {
            CaptionML = ENU='Country/Region Code',
                        ENN='Country/Region Code';
            Editable = true;
            TableRelation = "Country/Region";
        }
        field(20;"Internal Ref. No.";Code[10])
        {
            CaptionML = ENU='Internal Ref. No.',
                        ENN='Internal Ref. No.';
            Editable = true;
        }
        field(21;"Transaction No.";Integer)
        {
            CaptionML = ENU='Transaction No.',
                        ENN='Transaction No.';
            Editable = true;
        }
        field(26;"External Document No.";Code[35])
        {
            CaptionML = ENU='External Document No.',
                        ENN='External Document No.';
            Editable = true;
        }
        field(28;"No. Series";Code[10])
        {
            CaptionML = ENU='No. Series',
                        ENN='No. Series';
            Editable = true;
            TableRelation = "No. Series";
        }
        field(29;"Tax Area Code";Code[20])
        {
            CaptionML = ENU='Tax Area Code',
                        ENN='Tax Area Code';
            Editable = true;
            TableRelation = "Tax Area";
        }
        field(30;"Tax Liable";Boolean)
        {
            CaptionML = ENU='Tax Liable',
                        ENN='Tax Liable';
            Editable = true;
        }
        field(31;"Tax Group Code";Code[10])
        {
            CaptionML = ENU='Tax Group Code',
                        ENN='Tax Group Code';
            Editable = true;
            TableRelation = "Tax Group";
        }
        field(32;"Use Tax";Boolean)
        {
            CaptionML = ENU='Use Tax',
                        ENN='Use Tax';
            Editable = true;
        }
        field(33;"Tax Jurisdiction Code";Code[10])
        {
            CaptionML = ENU='Tax Jurisdiction Code',
                        ENN='Tax Jurisdiction Code';
            Editable = true;
            TableRelation = "Tax Jurisdiction";
        }
        field(34;"Tax Group Used";Code[10])
        {
            CaptionML = ENU='Tax Group Used',
                        ENN='Tax Group Used';
            Editable = true;
            TableRelation = "Tax Group";
        }
        field(37;"Sales Tax Connection No.";Integer)
        {
            CaptionML = ENU='Sales Tax Connection No.',
                        ENN='Sales Tax Connection No.';
            Editable = true;
        }
        field(38;"Unrealized Tax Entry No.";Integer)
        {
            CaptionML = ENU='Unrealized Tax Entry No.',
                        ENN='Unrealized Tax Entry No.';
            Editable = true;
            TableRelation = "VAT Entry";
        }
        field(43;"Additional-Currency Amount";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Additional-Currency Amount',
                        ENN='Additional-Currency Amount';
            Editable = true;
        }
        field(44;"Additional-Currency Base";Decimal)
        {
            AutoFormatExpression = GetCurrencyCode;
            AutoFormatType = 1;
            CaptionML = ENU='Additional-Currency Base',
                        ENN='Additional-Currency Base';
            Editable = true;
        }
        field(54;Paid;Boolean)
        {
            CaptionML = ENU='Paid',
                        ENN='Paid';
            Editable = true;
        }
        field(55;"Applied To";Code[50])
        {
            CaptionML = ENU='Applied To',
                        ENN='Applied To';
            Editable = true;
        }
        field(57;"Form Code";Code[20])
        {
            CaptionML = ENU='Form Code',
                        ENN='Form Code';
            Editable = true;
        }
        field(58;"Form No.";Code[20])
        {
            CaptionML = ENU='Form No.',
                        ENN='Form No.';
            Editable = true;
        }
        field(59;"Account No.";Code[20])
        {
            CaptionML = ENU='Account No.',
                        ENN='Account No.';
            Editable = true;
            TableRelation = "G/L Account";
        }
        field(60;"Pay Tax Document No.";Code[20])
        {
            CaptionML = ENU='Pay Tax Document No.',
                        ENN='Pay Tax Document No.';
            Editable = true;
        }
        field(61;"VAT Type";Option)
        {
            CaptionML = ENU='VAT Type',
                        ENN='VAT Type';
            Editable = true;
            OptionCaptionML = ENU=' ,Item,Capital Item',
                              ENN=' ,Item,Capital Item';
            OptionMembers = " ",Item,"Capital Item";
        }
        field(62;"VAT Applicable";Boolean)
        {
            CaptionML = ENU='VAT Applicable',
                        ENN='VAT Applicable';
            Editable = true;
        }
        field(63;"T.I.N. No.";Code[11])
        {
            CaptionML = ENU='T.I.N. No.',
                        ENN='T.I.N. No.';
            Editable = true;
            TableRelation = "T.I.N. Nos.";
        }
        field(64;"Vendor/Customer T.I.N. No.";Code[11])
        {
            CaptionML = ENU='Vendor/Customer T.I.N. No.',
                        ENN='Vendor/Customer T.I.N. No.';
            Editable = true;
            TableRelation = "T.I.N. Nos.";
        }
        field(65;"VAT Exempted Goods";Boolean)
        {
            CaptionML = ENU='VAT Exempted Goods',
                        ENN='VAT Exempted Goods';
            Editable = true;
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
        key(Key3;"Tax Jurisdiction Code")
        {
        }
        key(Key4;"Sell-to/Buy-from No.")
        {
        }
        key(Key5;Type)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown;"Entry No.")
        {
        }
    }

    trigger OnInsert();
    var
        GenJnlPostPreview : Codeunit "Gen. Jnl.-Post Preview";
    begin
        //GenJnlPostPreview.SaveTaxEntry(Rec);
    end;

    [LineStart(61832)]
    procedure GetCurrencyCode() : Code[10];
    begin
    end;
}

