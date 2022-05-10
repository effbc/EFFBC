table 60035 "Item Sub Group"
{
    // version B2B1.0

    LookupPageID = 60054;

    fields
    {
        field(1;"Product Group Code";Code[20])
        {
            TableRelation = "Product Group".Code;
        }
        field(2;"Code";Code[20])
        {
        }
        field(3;Description;Text[50])
        {
        }
        field(4;Product_Avb;Boolean)
        {
        }
        field(50001;"Incharge id";Code[7])
        {
            Description = 'added by Vishnu Priya';
        }
        field(50002;Vertical;Text[40])
        {
            Description = 'added by Vishnu Priya';
        }
        field(50003;"Product Family";Text[40])
        {
            Description = 'added by Vishnu Priya';
        }
        field(50004;"RDSO/Not";Boolean)
        {
            Description = 'added by Vishnu Priya';
        }
        field(50005;"Railwats/Other";Option)
        {
            Description = 'added by Vishnu Priya';
            OptionMembers = " ",Railways,Private,Other,Both;
        }
    }

    keys
    {
        key(Key1;"Product Group Code","Code")
        {
        }
    }

    fieldgroups
    {
    }
}

