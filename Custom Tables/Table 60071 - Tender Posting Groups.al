table 60071 "Tender Posting Groups"
{
    // version B2B1.0

    // DrillDownPageID = 60096;
    // LookupPageID = 60096;

    fields
    {
        field(1; "Code"; Code[20])
        {
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
        }
        field(3; "Tender/Quote Expenses A/c"; Code[20])
        {
            TableRelation = "G/L Account";
        }
        field(4; "EMD Recoverable A/c"; Code[20])
        {
            TableRelation = "G/L Account";
        }
        field(5; "Fixed Deposit A/c"; Code[20])
        {
            TableRelation = "G/L Account";
        }
        field(6; "Tender (FDR) Control A/c"; Code[20])
        {
            TableRelation = "G/L Account";
        }
        field(7; "General Exp. A/c"; Code[20])
        {
            TableRelation = "G/L Account";
        }
        field(8; "Security Deposit A/c"; Code[20])
        {
            TableRelation = "G/L Account";
        }
        field(9; "B.G Margin Money A/c"; Code[20])
        {
            TableRelation = "G/L Account";
        }
        field(10; "Security Deposit Payable A/c"; Code[20])
        {
            TableRelation = "G/L Account";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        TenderLedgerEntries.SetRange("Tender Posting Group", Code);
        if TenderLedgerEntries.Find('-') then
            Error(Text001, Code);
    end;

    var
        TenderLedgerEntries: Record "Tender Ledger Entries";
        Text001: Label 'You cannot change Posting Group %1 because there are one or more ledger entries exists for this.';
}

