table 60043 "Temp. RGP Ledger Entry"
{
    // version B2B1.0,Cal1.0


    fields
    {
        field(1;"Line No.";Integer)
        {
        }
        field(2;Consignee;Option)
        {
            OptionCaption = 'Customer,Vendor,Party';
            OptionMembers = Customer,Vendor,Party;
        }
        field(3;"Consignee No.";Code[20])
        {
        }
        field(4;Type;Option)
        {
            OptionCaption = '" ,Item,Fixed Asset"';
            OptionMembers = " ",Item,"Fixed Asset";
        }
        field(5;"No.";Code[20])
        {
        }
        field(6;Quantity;Decimal)
        {
        }
        field(7;"Quantity to Recieve";Decimal)
        {
        }
        field(8;"RGP In No.";Code[20])
        {
        }
        field(9;"RGP Line No.";Integer)
        {
        }
        field(10;"RGP Document Date";Date)
        {
        }
        field(11;"RGP Out No.";Code[20])
        {
            Description = 'B2B(For Reverse Functionality)';
        }
        field(12;"RGP Out Line No.";Integer)
        {
            Description = 'B2B(For Reverse Functionality)';
        }
    }

    keys
    {
        key(Key1;"Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

