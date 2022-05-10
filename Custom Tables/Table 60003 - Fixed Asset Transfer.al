table 60003 "Fixed Asset Transfer"
{
    // version B2B1.0


    fields
    {
        field(1;"Entry No.";Integer)
        {
            Editable = false;
        }
        field(2;"Fixed Asset No.";Code[20])
        {
            Editable = false;
        }
        field(3;"FA Location";Code[20])
        {
            Editable = false;
        }
        field(4;"FA New Location";Code[20])
        {
            Editable = false;
        }
        field(5;Date;Date)
        {
            Editable = false;
        }
        field(6;"User id";Code[50])
        {
            Editable = false;
        }
        field(7;"Location Trns. Reason";Text[100])
        {
        }
        field(8;"Responsible Employee";Code[50])
        {
            Caption = 'Responsible Employee';
            Editable = true;
            TableRelation = Employee;
        }
        field(9;"New Responsible Employee";Code[50])
        {
            Caption = 'New Responsible Employee';
            Editable = false;
            TableRelation = Employee;
        }
        field(10;"Employee Trns. Reason";Text[100])
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

