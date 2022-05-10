table 50016 Place
{
    LookupPageID = 60209;

    fields
    {
        field(1;"Place Code";Code[10])
        {
        }
        field(2;"City Code";Code[10])
        {
        }
        field(3;"Place Name";Text[50])
        {
        }
        field(4;"Place status";Option)
        {
            OptionMembers = " ",Up,Down;

            trigger OnValidate();
            begin
                    "Updation date time":=CurrentDateTime;
            end;
        }
        field(5;"Updation date time";DateTime)
        {
            Editable = false;
        }
    }

    keys
    {
        key(Key1;"Place Code")
        {
        }
    }

    fieldgroups
    {
    }
}

