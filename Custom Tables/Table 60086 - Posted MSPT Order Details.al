table 60086 "Posted MSPT Order Details"
{
    // version MSPT1.0

    // B2B Software Technologies
    // ---------------------------------------------------
    // Project : Mile Stone Payment Terms
    // B2B
    // No. sign   Description
    // ---------------------------------------------------
    // 01  B2B    Posted MSPT Order Details


    fields
    {
        field(1;Type;Option)
        {
            OptionMembers = Sale,Purchase;
        }
        field(2;"Document Type";Option)
        {
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3;"Party Type";Option)
        {
            OptionMembers = Customer,Vendor;
        }
        field(4;"Document No.";Code[20])
        {
        }
        field(5;"Document Line No.";Integer)
        {
        }
        field(6;"Party No.";Code[20])
        {
        }
        field(7;"MSPT Header Code";Code[20])
        {
        }
        field(8;"Calculation Type";Option)
        {
            Enabled = false;
            OptionMembers = Percentage,"Fixed Value";
        }
        field(9;"MSPT Line No.";Integer)
        {
        }
        field(10;"MSPT Code";Code[20])
        {
        }
        field(11;Percentage;Decimal)
        {
        }
        field(12;Description;Text[80])
        {
        }
        field(13;"Calulation Period";DateFormula)
        {
        }
        field(14;Amount;Decimal)
        {
        }
        field(15;Remarks;Text[80])
        {
        }
        field(16;"Due Date";Date)
        {
        }
    }

    keys
    {
        key(Key1;Type,"Document Type","Party Type","Document No.","Document Line No.","Party No.","MSPT Header Code","MSPT Line No.","MSPT Code",Percentage,Description,"Calulation Period","Due Date")
        {
        }
    }

    fieldgroups
    {
    }
}

