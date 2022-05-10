table 90000 "VAT Applicable Entries"
{
    // version B2B1.0,Rev01

    LookupPageID = 90000;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            Caption = 'Entry No.';
        }
        field(2;"Gen. Bus. Posting Group";Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(3;"Gen. Prod. Posting Group";Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(4;"Posting Date";Date)
        {
            Caption = 'Posting Date';
        }
        field(5;"Document No.";Code[20])
        {
            Caption = 'Document No.';
        }
        field(6;"Document Type";Option)
        {
            Caption = 'Document Type';
            OptionCaption = '" ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder"';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder;
        }
        field(7;Type;Option)
        {
            Caption = 'Type';
            OptionCaption = '" ,Purchase,Sale,Settlement"';
            OptionMembers = " ",Purchase,Sale,Settlement;
        }
        field(8;Base;Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Base';
        }
        field(9;Amount;Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(12;"Sell-to/Buy-from No.";Code[20])
        {
            Caption = 'Sell-to/Buy-from No.';
            TableRelation = IF (Type=CONST(Purchase)) Vendor
                            ELSE IF (Type=CONST(Sale)) Customer;
        }
        field(13;"EU 3-Party Trade";Boolean)
        {
            Caption = 'EU 3-Party Trade';
        }
        field(14;"User ID";Code[50])
        {
            Caption = 'User ID';
            Description = 'Rev01';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(15;"Source Code";Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(16;"Reason Code";Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(17;"Closed by Entry No.";Integer)
        {
            Caption = 'Closed by Entry No.';
            TableRelation = "VAT Entry";
        }
        field(18;Closed;Boolean)
        {
            Caption = 'Closed';
        }
        field(19;"Country Code";Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
        }
        field(20;"Internal Ref. No.";Code[10])
        {
        }
        field(21;"Transaction No.";Integer)
        {
            Caption = 'Transaction No.';
        }
        field(26;"External Document No.";Code[20])
        {
            Caption = 'External Document No.';
        }
        field(28;"No. Series";Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(29;"Tax Area Code";Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(30;"Tax Liable";Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(31;"Tax Group Code";Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(32;"Use Tax";Boolean)
        {
            Caption = 'Use Tax';
        }
        field(33;"Tax Jurisdiction Code";Code[10])
        {
            Caption = 'Tax Jurisdiction Code';
            TableRelation = "Tax Jurisdiction";
        }
        field(34;"Tax Group Used";Code[10])
        {
            Caption = 'Tax Group Used';
            TableRelation = "Tax Group";
        }
        field(37;"Sales Tax Connection No.";Integer)
        {
            Caption = 'Sales Tax Connection No.';
        }
        field(38;"Unrealized TAX Entry No.";Integer)
        {
            Caption = 'Unrealized TAX Entry No.';
            TableRelation = "VAT Entry";
        }
        field(43;"Additional-Currency Amount";Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Additional-Currency Amount';
        }
        field(44;"Additional-Currency Base";Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Additional-Currency Base';
        }
        field(54;Paid;Boolean)
        {
        }
        field(55;"Applied To";Code[50])
        {
        }
        field(56;"VAT Type";Option)
        {
            OptionCaption = '" ,Item,Capital Item"';
            OptionMembers = " ",Item,"Capital Item";
        }
        field(57;"VAT Applicable";Boolean)
        {
        }
        field(58;"T.I.N. No.";Text[11])
        {
            TableRelation = "T.I.N. Nos.";
        }
        field(59;"Vendor/Customer T.I.N. No.";Text[11])
        {
            TableRelation = "T.I.N. Nos.";
        }
        field(60;"VAT Exempted Goods";Boolean)
        {
        }
        field(13700;"Sub Area Type";Option)
        {
            OptionCaption = 'None,Full Tax,Concessional Tax';
            OptionMembers = "None","Full Tax","Concessional Tax";
        }
        field(13701;"Form Code";Code[20])
        {
        }
        field(13702;"Form No.";Code[20])
        {
        }
        field(13703;"Account No.";Code[20])
        {
            TableRelation = "G/L Account";
        }
        field(13704;"Pay Tax Document No.";Code[20])
        {
        }
        field(60001;Status;Option)
        {
            Description = 'B2B';
            OptionMembers = Open,Closed;
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

