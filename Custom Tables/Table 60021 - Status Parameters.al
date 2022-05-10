table 60021 "Status Parameters"
{
    // version B2B1.0

    LookupPageID = 60035;

    fields
    {
        field(1;"Document Type";Option)
        {
            OptionMembers = Purchase,Sale,Service,Jobs,Budgets;
        }
        field(2;"Code";Code[20])
        {
        }
        field(3;Description;Text[50])
        {
        }
        field(4;"Status Sequence";Integer)
        {
        }
    }

    keys
    {
        key(Key1;"Document Type","Code")
        {
        }
    }

    fieldgroups
    {
    }
}

