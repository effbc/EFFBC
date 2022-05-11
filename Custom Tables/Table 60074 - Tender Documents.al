table 60074 "Tender Documents"
{
    // version B2B1.0

    //  DrillDownPageID = 60098;
    //   LookupPageID = 60098;

    fields
    {
        field(1; "Document No."; Code[20])
        {
        }
        field(2; "Line No."; Integer)
        {
        }
        field(3; Type; Option)
        {
            OptionMembers = FDR,BG;

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(4; Purpose; Option)
        {
            OptionMembers = " ",EMD,SD;

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(5; "No."; Code[20])
        {

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(6; "Payment/Receipt/Adjusted Date"; Date)
        {
        }
        field(8; Amount; Decimal)
        {
        }
        field(9; "Transaction Type"; Option)
        {
            OptionMembers = Payment,Receipt,Adjustment;
        }
        field(10; "Received / Adjusted"; Boolean)
        {
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }

   // [LineStart(3797)]
    procedure TestStatusOpen();
    var
        TenderHeader: Record "Tender Header";
    begin
        TenderHeader.SetRange("Tender No.", "Document No.");
        if TenderHeader.Find('-') then
            TenderHeader.TestField(Status, TenderHeader.Status::Open);
    end;
}

