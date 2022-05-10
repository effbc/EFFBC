table 60096 "Calibration Procedure Line"
{
    // version Cal1.0

    Caption = 'Calibration Procedure Line';

    fields
    {
        field(1;"No.";Code[20])
        {
            Caption = 'No.';
            TableRelation = "Calibration Procedure Header";
        }
        field(2;"Line No.";Integer)
        {
            Caption = 'Line No.';
        }
        field(3;Comment;Text[80])
        {
            Caption = 'Comment';
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
}

