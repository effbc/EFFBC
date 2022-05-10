table 13770 "Transit Document Details"
{
    // version NAVIN7.00

    CaptionML = ENU='Transit Document Details',
                ENN='Transit Document Details';
    LookupPageID = 13700;

    fields
    {
        field(1;State;Code[10])
        {
            CaptionML = ENU='State',
                        ENN='State';
            Editable = false;
            TableRelation = State;
        }
        field(2;"Form Code";Code[10])
        {
            CaptionML = ENU='Form Code',
                        ENN='Form Code';
            Editable = false;
            TableRelation = "Form Codes".Code WHERE ("Transit Document"=CONST(true));
        }
        field(3;"Series Prefix";Code[10])
        {
            CaptionML = ENU='Series Prefix',
                        ENN='Series Prefix';
            Editable = false;
        }
        field(4;"Form No.";Code[20])
        {
            CaptionML = ENU='Form No.',
                        ENN='Form No.';
            Editable = false;
        }
        field(5;Issued;Boolean)
        {
            CaptionML = ENU='Issued',
                        ENN='Issued';
            Editable = false;
        }
        field(6;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            Editable = false;
            OptionCaptionML = ENU='Transit,Forms',
                              ENN='Transit,Forms';
            OptionMembers = Transit,Forms;
        }
    }

    keys
    {
        key(Key1;Type,State,"Form Code","Series Prefix","Form No.")
        {
        }
    }

    fieldgroups
    {
    }
}

