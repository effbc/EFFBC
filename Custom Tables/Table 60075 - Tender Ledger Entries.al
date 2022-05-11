table 60075 "Tender Ledger Entries"
{
    // version B2B1.0

    //  DrillDownPageID = 60099;
    // LookupPageID = 60099;

    fields
    {
        field(1; "Entry No."; Integer)
        {
        }
        field(2; "Tender No."; Code[20])
        {
        }
        field(3; "Line No."; Integer)
        {
        }
        field(4; "Posting Date"; Date)
        {
        }
        field(5; Type; Option)
        {
            OptionMembers = EMD,SD,Cost;
        }
        field(6; "Transaction Type"; Option)
        {
            OptionMembers = Payment,Receipt,Adjustment,"Write off";
        }
        field(7; "Mode of Receipt / Payment"; Option)
        {
            OptionMembers = Cash,Bank,FDR,BG,Customer," ";
        }
        field(8; "No."; Code[20])
        {
            TableRelation = IF ("Mode of Receipt / Payment" = CONST(Cash)) "G/L Account"."No."
            ELSE
            IF ("Mode of Receipt / Payment" = CONST(Bank)) "Bank Account"."No."
            ELSE
            IF ("Mode of Receipt / Payment" = CONST(BG)) "Bank Guarantee"."BG No."
            ELSE
            IF ("Mode of Receipt / Payment" = CONST(FDR)) "FDR Master"."No.";
        }
        field(9; Description; Text[250])
        {
        }
        field(10; "Global Dimension 1 Code"; Code[20])
        {
        }
        field(11; "Global Dimension 2 Code"; Code[20])
        {
        }
        field(12; Amount; Decimal)
        {
        }
        field(13; "Cheque No."; Code[30])
        {
        }
        field(14; "Cheque Date."; Date)
        {
        }
        field(15; "Tender Posting Group"; Code[20])
        {
        }
        field(16; "Document No."; Code[20])
        {
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Tender No.", "Transaction Type", Type, "Mode of Receipt / Payment")
        {
            SumIndexFields = Amount;
        }
        key(Key3; "Document No.")
        {
        }
    }

    fieldgroups
    {
    }
}

