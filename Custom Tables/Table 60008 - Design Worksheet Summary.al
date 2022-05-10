table 60008 "Design Worksheet Summary"
{
    // version B2B1.0


    fields
    {
        field(1;"Document No.";Code[20])
        {
        }
        field(2;"Document Type";Option)
        {
            OptionCaption = '" ,Tender,Quote,Order,Blanket Order"';
            OptionMembers = " ",Tender,Quote,"Order","Blanket Order";
        }
        field(3;"Document Line No.";Integer)
        {
        }
        field(4;"Line No.";Integer)
        {
        }
        field(5;"Material Direct Cost";Decimal)
        {
            Description = 'Direct Cost';
        }
        field(6;"Labour Direct Cost";Decimal)
        {
            Description = 'Direct Cost';
        }
        field(7;"Other Direct Cost";Decimal)
        {
            Description = 'Direct Cost';
        }
        field(8;"Totals Direct Cost";Decimal)
        {
            Description = 'Direct Cost';
        }
        field(9;"Material Indirect Cost";Decimal)
        {
            Description = 'Indirect Cost';
        }
        field(10;"Labour Indirect Cost";Decimal)
        {
            Description = 'Indirect Cost';
        }
        field(11;"Other Indirect Cost";Decimal)
        {
            Description = 'Indirect Cost';
        }
        field(12;"Total Indirect Cost";Decimal)
        {
            Description = 'Indirect Cost';
        }
    }

    keys
    {
        key(Key1;"Document No.","Document Type","Document Line No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

