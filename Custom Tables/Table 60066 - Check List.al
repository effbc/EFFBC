table 60066 "Check List"
{
    // version B2B1.0

    LookupPageID = 60089;

    fields
    {
        field(1;"Document No.";Code[20])
        {
        }
        field(2;"Document  Line No.";Integer)
        {
        }
        field(3;"Document Type";Option)
        {
            OptionMembers = Purchase,Sales,Tender,Service;
        }
        field(4;Parameter;Code[20])
        {
            TableRelation = "Checklist Parameters".Parameter WHERE ("Document Type"=FIELD("Document Type"));

            trigger OnValidate();
            begin
                if ChecklistParameters.Get("Document Type",Parameter) then begin
                  Parameter := ChecklistParameters.Parameter;
                  Description := ChecklistParameters.Description;
                end;
            end;
        }
        field(5;Description;Text[100])
        {
            Editable = false;
        }
        field(6;Status;Boolean)
        {
        }
    }

    keys
    {
        key(Key1;"Document No.","Document  Line No.","Document Type",Parameter)
        {
        }
    }

    fieldgroups
    {
    }

    var
        ChecklistParameters : Record "Checklist Parameters";
}

