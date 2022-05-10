table 60044 "Temp. Applied RGPs"
{
    // version B2B1.0,Cal1.0


    fields
    {
        field(1;"Entry No.";Integer)
        {
        }
        field(2;"Entry Date";Date)
        {
        }
        field(3;"Document No.";Code[20])
        {
        }
        field(4;"Document Line No.";Integer)
        {
        }
        field(5;"Document Date";Date)
        {
        }
        field(6;"Document Type";Option)
        {
            OptionCaption = 'In,Out';
            OptionMembers = "In",Out;
        }
        field(7;Consignee;Option)
        {
            OptionCaption = 'Customer,Vendor,Party';
            OptionMembers = Customer,Vendor,Party;
        }
        field(8;"Consignee No.";Code[20])
        {
        }
        field(9;Quantity;Decimal)
        {
        }
        field(10;"Remaining Quantity";Decimal)
        {
        }
        field(11;"Applied To Entry";Integer)
        {
            BlankZero = true;
        }
        field(12;Open;Boolean)
        {
        }
        field(13;Type;Option)
        {
            OptionCaption = '" ,Item,Fixed Asset,Calibration"';
            OptionMembers = " ",Item,"Fixed Asset",Calibration;
        }
        field(14;"No.";Code[20])
        {
        }
        field(15;"Applies To";Code[20])
        {
        }
    }

    keys
    {
        key(Key1;"Entry No.")
        {
        }
    }

    fieldgroups
    {
    }
}

