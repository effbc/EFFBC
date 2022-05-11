table 60053 "Calibration Header"
{
    // version B2B1.0

    // DrillDownPageID = 60077;
    //  LookupPageID = 60077;

    fields
    {
        field(1; "No."; Code[20])
        {
        }
        field(2; Name; Text[50])
        {
        }
        field(3; "Equipment Type"; Code[20])
        {
        }
        field(4; "Calibration Next Due Date"; Date)
        {
        }
        field(5; Frequency; DateFormula)
        {
        }
        field(6; "Notice Period"; DateFormula)
        {
            TableRelation = "Status Parameters"."Document Type";
        }
        field(7; "Current Status"; Option)
        {
            OptionMembers = " ",Calibrated,Scrapped,"Out of Calibration";
        }
        field(8; Remarks; Text[50])
        {
        }
        field(9; "Inspection Party"; Option)
        {
            OptionMembers = Internal,External;
        }
        field(10; Agency; Text[50])
        {
            Editable = false;
        }
        field(11; "Purpose of Instrument"; Text[50])
        {
        }
        field(12; "Usage Type"; Option)
        {
            OptionMembers = Master,Instrument;
        }
        field(13; "Least Count"; Decimal)
        {
        }
        field(14; UOM; Code[10])
        {
        }
    }

    keys
    {
        key(Key1; "No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        FixedAsset: Record "Fixed Asset";

    // [LineStart(2698)]
    procedure TenderAttachments();
    var
        Attachments: Record Attachments;
    begin
        Attachments.Reset;
        Attachments.SetRange("Table ID", DATABASE::"Calibration Header");
        Attachments.SetRange("Document No.", "No.");

        // PAGE.Run(PAGE::Page60117,Attachments);
    end;
}

