table 60022 Status
{
    // version B2B1.0

    LookupPageID = 60039;

    fields
    {
        field(1;"Document No.";Code[20])
        {
        }
        field(2;"Document Line No.";Integer)
        {
        }
        field(3;"Document Type";Option)
        {
            OptionMembers = Purchase,Sale,Service,Jobs,Budgets;
        }
        field(4;"Code";Code[20])
        {
            NotBlank = true;
            TableRelation = "Status Parameters".Code WHERE ("Document Type"=FIELD("Document Type"));

            trigger OnValidate();
            begin
                StatusParameters.SetRange(Code,Code);
                if StatusParameters.Find('-') then begin
                  Description := StatusParameters.Description;
                  "Status Sequence" := StatusParameters."Status Sequence";
                end;
            end;
        }
        field(5;Description;Text[50])
        {
        }
        field(6;"Status Sequence";Integer)
        {
        }
        field(7;"Status Date";Date)
        {
        }
        field(8;"Status Modified Date";Date)
        {
        }
    }

    keys
    {
        key(Key1;"Document No.","Document Line No.","Document Type","Code")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    begin
        "Status Date" := WorkDate;
    end;

    var
        StatusParameters : Record "Status Parameters";
}

