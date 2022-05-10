table 16475 "Service Tax Registration Nos."
{
    // version NAVIN7.10

    CaptionML = ENU='Service Tax Registration Nos.',
                ENN='Service Tax Registration Nos.';
    DataCaptionFields = "Code",Description;
    DrillDownPageID = 16475;
    LookupPageID = 16475;

    fields
    {
        field(1;"Code";Code[20])
        {
            CaptionML = ENU='Code',
                        ENN='Code';
        }
        field(2;Description;Text[50])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
        }
        field(3;"Premises Code No.";Code[20])
        {
            CaptionML = ENU='Premises Code No.',
                        ENN='Premises Code No.';
        }
        field(4;"Service Entity Type";Code[20])
        {
            CaptionML = ENU='Service Entity Type',
                        ENN='Service Entity Type';
            TableRelation = "Service Entity Type";
        }
    }

    keys
    {
        key(Key1;"Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown;"Code",Description)
        {
        }
    }

    [LineStart(63950)]
    procedure GetServiceEntityType(ServiceTaxRegistrationCode : Code[20]) : Code[20];
    var
        ServiceTaxRegistrationNos : Record "Service Tax Registration Nos.";
    begin
        if ServiceTaxRegistrationCode = '' then
          exit(ServiceTaxRegistrationCode);

        ServiceTaxRegistrationNos.Get(ServiceTaxRegistrationCode);
        exit(ServiceTaxRegistrationNos."Service Entity Type");
    end;
}

