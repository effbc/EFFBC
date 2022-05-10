table 60109 "Site Old Stock Data"
{

    fields
    {
        field(1;"Entry No";Integer)
        {
        }
        field(2;"Item No.";Code[20])
        {
        }
        field(3;"Serial No.";Code[20])
        {
        }
        field(4;"Lot No.";Code[20])
        {
        }
        field(5;Mismatch;Boolean)
        {
        }
        field(6;Remarks;Text[30])
        {
        }
        field(7;Replace;Boolean)
        {
        }
        field(8;Avb;Boolean)
        {
        }
        field(9;"Avb at Site";Boolean)
        {
        }
        field(10;"Posting Date";Date)
        {
        }
        field(11;"Present Location";Code[10])
        {
        }
        field(12;Remain;Boolean)
        {
        }
        field(13;"Last Transaction Date";Date)
        {
        }
        field(14;"Latest Location";Code[20])
        {
        }
    }

    keys
    {
        key(Key1;"Entry No")
        {
        }
    }

    fieldgroups
    {
    }
}

