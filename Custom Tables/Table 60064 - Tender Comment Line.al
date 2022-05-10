table 60064 "Tender Comment Line"
{
    // version B2B1.0

    LookupPageID = 60087;

    fields
    {
        field(1;"No.";Code[20])
        {
            Caption = 'No.';
        }
        field(2;"Line No.";Integer)
        {
            Caption = 'Line No.';
        }
        field(3;Date;Date)
        {
            Caption = 'Date';
        }
        field(4;Comment;Text[100])
        {
        }
    }

    keys
    {
        key(Key1;"No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    [LineStart(3333)]
    procedure SetUpNewLine();
    var
        TenderCommentLine : Record "Tender Comment Line";
    begin
        TenderCommentLine.SetRange("No.","No.");
        if not TenderCommentLine.Find('-') then
          Date := WorkDate;
    end;
}

