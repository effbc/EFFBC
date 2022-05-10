table 60036 "Item Sub Sub Group"
{
    // version B2B1.0

    LookupPageID = 60055;

    fields
    {
        field(1;"Item Sub Group Code";Code[20])
        {
            TableRelation = "Item Sub Group".Code;
        }
        field(2;"Code";Code[20])
        {
        }
        field(3;Description;Text[50])
        {
        }
        field(4;Module;Text[100])
        {
            Description = 'added by sujani on 06-May-19 for Module tracking';
        }
    }

    keys
    {
        key(Key1;"Item Sub Group Code","Code")
        {
        }
    }

    fieldgroups
    {
    }
}

