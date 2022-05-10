table 60026 "Mech & Wirning Items"
{

    fields
    {
        field(1;"Production Order No.";Code[20])
        {
            TableRelation = "Production Order"."No." WHERE (Status=CONST(Released));
        }
        field(2;"Production Order Line No.";Integer)
        {
        }
        field(3;"Item No.";Code[20])
        {
            TableRelation = Item WHERE ("Product Group Code"=FILTER(<>'FPRODUCT'&<>'CPCB'),
                                        Blocked=CONST(false));
        }
        field(4;Description;Text[50])
        {
        }
        field(5;"Lot No.";Code[20])
        {
        }
        field(6;Quantity;Decimal)
        {
        }
        field(7;"BOM Type";Text[20])
        {
        }
        field(8;"Request No.";Code[20])
        {
        }
    }

    keys
    {
        key(Key1;"Production Order No.","Production Order Line No.","BOM Type","Item No.","Lot No.")
        {
        }
        key(Key2;"Item No.","Lot No.","Production Order No.")
        {
        }
    }

    fieldgroups
    {
    }
}

