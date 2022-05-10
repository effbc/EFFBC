table 50015 City
{
    LookupPageID = 60208;

    fields
    {
        field(1;"City Code";Code[10])
        {
        }
        field(2;"District Code";Code[10])
        {
            TableRelation = "Item Wise Requirement1"."Item No.";
        }
        field(3;"City Name";Text[50])
        {
        }
    }

    keys
    {
        key(Key1;"City Code")
        {
        }
    }

    fieldgroups
    {
    }
}

