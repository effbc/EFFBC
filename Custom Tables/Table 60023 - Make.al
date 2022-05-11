table 60023 Make
{
    //  LookupPageID = 60041;

    fields
    {
        field(1; Make; Code[30])
        {
        }
        field(2; "Created By"; Code[50])
        {
        }
        field(3; "Entry Date Time"; DateTime)
        {
        }
        field(4; Blocked; Boolean)
        {
            Description = 'Pranavi';
        }
        field(5; "Vendors Link"; Text[250])
        {
            ExtendedDatatype = URL;
        }
        field(50001; "Make Origin Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            Description = 'Durgamaheswari';
            TableRelation = State.Code;

            trigger OnValidate();
            begin

                if state.Get("Make Origin Code") then begin
                    "Make Origin Name" := state.Description
                end;

            end;
        }
        field(50002; "Make Origin Name"; Text[30])
        {
            DataClassification = ToBeClassified;
            Description = 'Durgamaheswari';
        }
    }

    keys
    {
        key(Key1; Make)
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    begin
        "Created By" := UserId;
        "Entry Date Time" := CurrentDateTime;
    end;

    var
        state: Record State;
}

