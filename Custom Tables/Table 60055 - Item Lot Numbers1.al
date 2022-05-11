table 60055 "Item Lot Numbers1"
{
    // version B2B1.0

    // LookupPageID = 60078;

    fields
    {
        field(1; "Item No"; Code[20])
        {
        }
        field(2; "Lot No."; Code[20])
        {
        }
        field(3; Location; Code[10])
        {
        }
    }

    keys
    {
        key(Key1; "Item No", "Lot No.", Location)
        {
        }
    }

    fieldgroups
    {
    }

    var
        DeveationParameters: Record "Shortage Temp";
}

