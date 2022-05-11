table 60087 "MSPT Dtld. Cust. Ledg. Entry"
{
    // version MSPT1.0,Rev01

    // B2B Software Technologies
    // ---------------------------------------------------
    // Project : Mile Stone Payment Terms
    // B2B
    // No. sign   Description
    // ---------------------------------------------------
    // 01  B2B    MSPT Detailed Customer Ledger Entry

    Caption = 'MSPT Dtld. Cust. Ledg. Entry';
    DataCaptionFields = "Customer No.";
   // DrillDownPageID = 60108;
   // LookupPageID = 60108;

    fields
    {
        field(1;"Entry No.";Integer)
        {
            Caption = 'Entry No.';
        }
        field(2;"Cust. Ledger Entry No.";Integer)
        {
            Caption = 'Cust. Ledger Entry No.';
            TableRelation = "Cust. Ledger Entry";
        }
        field(3;"Entry Type";Option)
        {
            Caption = 'Entry Type';
            OptionCaption = ',Initial Entry,Application,Unrealized Loss,Unrealized Gain,Realized Loss,Realized Gain,Payment Discount,Payment Discount (VAT Excl.),Payment Discount (VAT Adjustment),Appln. Rounding,Correction of Remaining Amount,Payment Tolerance,Payment Discount Tolerance,Payment Tolerance (VAT Excl.),Payment Tolerance (VAT Adjustment),Payment Discount Tolerance (VAT Excl.),Payment Discount Tolerance (VAT Adjustment)';
            OptionMembers = ,"Initial Entry",Application,"Unrealized Loss","Unrealized Gain","Realized Loss","Realized Gain","Payment Discount","Payment Discount (VAT Excl.)","Payment Discount (VAT Adjustment)","Appln. Rounding","Correction of Remaining Amount","Payment Tolerance","Payment Discount Tolerance","Payment Tolerance (VAT Excl.)","Payment Tolerance (VAT Adjustment)","Payment Discount Tolerance (VAT Excl.)","Payment Discount Tolerance (VAT Adjustment)";
        }
        field(4;"Posting Date";Date)
        {
            Caption = 'Posting Date';
        }
        field(5;"Document Type";Option)
        {
            Caption = 'Document Type';
            OptionCaption = '" ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund"';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(6;"Document No.";Code[20])
        {
            Caption = 'Document No.';
        }
        field(7;Amount;Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(8;"Amount (LCY)";Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
        }
        field(9;"Customer No.";Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
        }
        field(10;"Currency Code";Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(11;"User ID";Code[50])
        {
            Caption = 'User ID';
            Description = 'Rev01';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;

            trigger OnLookup();
            var
                LoginMgt : Codeunit "User Management";
            begin
                //LoginMgt.LookupUserID("User ID");
            end;
        }
        field(12;"Source Code";Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(13;"Transaction No.";Integer)
        {
            Caption = 'Transaction No.';
        }
        field(14;"Journal Batch Name";Code[10])
        {
            Caption = 'Journal Batch Name';
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(15;"Reason Code";Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(16;"Debit Amount";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Debit Amount';
        }
        field(17;"Credit Amount";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Credit Amount';
        }
        field(18;"Debit Amount (LCY)";Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Debit Amount (LCY)';
        }
        field(19;"Credit Amount (LCY)";Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Credit Amount (LCY)';
        }
        field(20;"Initial Entry Due Date";Date)
        {
            Caption = 'Initial Entry Due Date';
        }
        field(21;"Initial Entry Global Dim. 1";Code[20])
        {
            Caption = 'Initial Entry Global Dim. 1';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(1));
        }
        field(22;"Initial Entry Global Dim. 2";Code[20])
        {
            Caption = 'Initial Entry Global Dim. 2';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(2));
        }
        field(35;"Initial Document Type";Option)
        {
            Caption = 'Initial Document Type';
            OptionCaption = '" ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund"';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(13700;"Export Document";Boolean)
        {
        }
        field(13702;"TDS Nature of Deduction";Code[10])
        {
            NotBlank = true;
            TableRelation = "TDS Nature of Deduction";
        }
        field(13703;"TDS Group";Option)
        {
            Editable = false;
            OptionCaption = '" ,Contractor,Commission,Professional,Interest,Rent,Dividend,Interest on Securities,Lotteries,Insurance Commission,NSS,Mutual fund,Brokerage,Income from Units,Capital Assets,Horse Races,Sports Association,Payable to Non Residents,Income of Mutual Funds,Units,Foreign Currency Bonds,FII from Securities,Others"';
            OptionMembers = " ",Contractor,Commission,Professional,Interest,Rent,Dividend,"Interest on Securities",Lotteries,"Insurance Commission",NSS,"Mutual fund",Brokerage,"Income from Units","Capital Assets","Horse Races","Sports Association","Payable to Non Residents","Income of Mutual Funds",Units,"Foreign Currency Bonds","FII from Securities",Others;
        }
        field(13704;"Total TDS Including eCESS";Decimal)
        {
        }
        field(50001;"MSPT Dtld. Entry No.";Integer)
        {
        }
        field(50002;"MSPT Header Code";Code[20])
        {
        }
        field(50003;"MSPT Line No.";Integer)
        {
        }
        field(50004;"MSPT Amount";Decimal)
        {
        }
        field(50005;"Calculation Type";Option)
        {
            Enabled = false;
            OptionMembers = Percentage,"Fixed Value";
        }
        field(50006;"MSPT Credit Value";Decimal)
        {
        }
        field(50007;"MSPT Debit Value";Decimal)
        {
        }
        field(50008;"Calculation Value";Decimal)
        {
            Enabled = false;
        }
        field(50009;"MSPT Due Date";Date)
        {
        }
        field(50010;"MSPT Remaining Amount";Decimal)
        {
        }
        field(50011;"MSPT Cust. Led. Entry No.";Integer)
        {
        }
        field(50012;"MSPT Line Code";Code[10])
        {
        }
    }

    keys
    {
        key(Key1;"MSPT Dtld. Entry No.")
        {
        }
        key(Key2;"MSPT Cust. Led. Entry No.","Posting Date")
        {
            SumIndexFields = "MSPT Amount";
        }
        key(Key3;"MSPT Cust. Led. Entry No.","Entry Type","Posting Date")
        {
            SumIndexFields = "MSPT Amount","MSPT Credit Value","MSPT Debit Value";
        }
        key(Key4;"Cust. Ledger Entry No.","Posting Date")
        {
        }
        key(Key5;"Cust. Ledger Entry No.","Entry Type","Posting Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Amount,"Amount (LCY)","Debit Amount","Credit Amount","Debit Amount (LCY)","Credit Amount (LCY)";
        }
        key(Key6;"Customer No.","Initial Entry Due Date","Posting Date","Currency Code")
        {
            SumIndexFields = Amount,"Amount (LCY)","Debit Amount","Credit Amount","Debit Amount (LCY)","Credit Amount (LCY)";
        }
        key(Key7;"Customer No.","Posting Date","Entry Type","Currency Code")
        {
            SumIndexFields = Amount,"Amount (LCY)","Debit Amount","Debit Amount (LCY)","Credit Amount","Credit Amount (LCY)";
        }
        key(Key8;"Customer No.","Initial Document Type","Document Type")
        {
            SumIndexFields = Amount,"Amount (LCY)";
        }
        key(Key9;"Document No.","Document Type","Posting Date")
        {
        }
        key(Key10;"Initial Document Type","Customer No.","Posting Date","Currency Code","Entry Type")
        {
            SumIndexFields = Amount,"Amount (LCY)";
        }
        key(Key11;"Customer No.","Initial Entry Due Date","Posting Date","Initial Entry Global Dim. 1","Initial Entry Global Dim. 2","Currency Code")
        {
            Enabled = false;
            SumIndexFields = Amount,"Amount (LCY)","Debit Amount","Credit Amount","Debit Amount (LCY)","Credit Amount (LCY)";
        }
        key(Key12;"Customer No.","Posting Date","Entry Type","Initial Entry Global Dim. 1","Initial Entry Global Dim. 2","Currency Code")
        {
            Enabled = false;
            SumIndexFields = Amount,"Amount (LCY)";
        }
        key(Key13;"Customer No.","Initial Document Type","Document Type","Initial Entry Global Dim. 1","Initial Entry Global Dim. 2")
        {
            Enabled = false;
            SumIndexFields = Amount,"Amount (LCY)";
        }
        key(Key14;"Initial Document Type","Customer No.","Posting Date","Currency Code","Entry Type","Initial Entry Global Dim. 1","Initial Entry Global Dim. 2")
        {
            Enabled = false;
            SumIndexFields = Amount,"Amount (LCY)";
        }
        key(Key15;"Customer No.","MSPT Due Date")
        {
            SumIndexFields = "MSPT Amount";
        }
        key(Key16;"Customer No.","MSPT Due Date","Posting Date")
        {
            SumIndexFields = "MSPT Amount";
        }
    }

    fieldgroups
    {
    }
}

