table 60076 "Create Indent"
{
    // version POAU


    fields
    {
        field(1;"Item No.";Code[20])
        {
            Editable = false;
            TableRelation = Item;
        }
        field(2;Description;Text[50])
        {
            Editable = false;
        }
        field(3;Quantity;Decimal)
        {
        }
        field(4;"Indent No.";Code[20])
        {
            Editable = false;
        }
        field(5;"Indent Line No.";Integer)
        {
            Editable = false;
        }
        field(6;"Indent Status";Option)
        {
            Editable = false;
            OptionCaption = 'Indent,Enquiry,Offer,Order,Cancel,Closed';
            OptionMembers = Indent,Enquiry,Offer,"Order",Cancel,Closed;
        }
        field(7;"Accept Action Message";Boolean)
        {
        }
        field(8;"Release Status";Option)
        {
            Editable = false;
            OptionMembers = Open,Released,Cancel,Closed;
        }
        field(9;"Due Date";Date)
        {
            Editable = false;
        }
        field(10;"Location Code";Code[10])
        {
            TableRelation = Location;
        }
        field(11;"ICN No.";Code[20])
        {
        }
    }

    keys
    {
        key(Key1;"Item No.","Indent No.","Indent Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

