table 60048 CFormlist
{
    // version B2B1.0

  // DrillDownPageID = 60069;
  //  LookupPageID = 60069;

    fields
    {
        field(1;vendor;Code[20])
        {
            TableRelation = Vendor."No.";

            trigger OnValidate();
            begin
                   ven.Get(vendor);
                   "Vendor name":=ven.Name;
                    "creationdate time":=CurrentDateTime;
            end;
        }
        field(2;"Vendor name";Text[30])
        {
        }
        field(3;"C FORM";Boolean)
        {
        }
        field(4;Month;Option)
        {
            OptionMembers = " ",APRIL,MAY,JUNE,JULY,AUGUST,SEPTEMBER,NOVEMBER,DECEMBER,JANUARY,FEBRUARY,MARCH;
        }
        field(5;Year;Option)
        {
            OptionMembers = " ","2007","2008","2009","2010","2011","2012","2013","2014","2015","2016","2017";
        }
        field(7;"C_FORM DATE";Date)
        {
        }
        field(8;"C_FORM NO";Code[20])
        {
        }
        field(9;"creationdate time";DateTime)
        {
        }
    }

    keys
    {
        key(Key1;"C_FORM NO")
        {
        }
    }

    fieldgroups
    {
    }

    var
        ven : Record Vendor;
}

