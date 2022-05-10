table 13757 "Tax Forms Details"
{
    // version NAVIN7.00

    CaptionML = ENU='Tax Forms Details',
                ENN='Tax Forms Details';
    DrillDownPageID = 13782;
    LookupPageID = 13782;

    fields
    {
        field(1;"Form Code";Code[10])
        {
            CaptionML = ENU='Form Code',
                        ENN='Form Code';
            NotBlank = true;
            TableRelation = "Form Codes";
        }
        field(3;"Form No.";Code[10])
        {
            CaptionML = ENU='Form No.',
                        ENN='Form No.';
        }
        field(4;Issued;Boolean)
        {
            CaptionML = ENU='Issued',
                        ENN='Issued';
        }
        field(5;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
        }
        field(11;State;Code[10])
        {
            CaptionML = ENU='State',
                        ENN='State';
        }
        field(12;"Series Prefix";Code[10])
        {
            CaptionML = ENU='Series Prefix',
                        ENN='Series Prefix';
        }
        field(60001;"Order No.";Code[20])
        {
        }
        field(60002;Amount;Decimal)
        {
        }
        field(60003;Canceled;Boolean)
        {
        }
    }

    keys
    {
        key(Key1;"Form Code","Form No.","Line No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown;"Form Code","Form No.","Line No.")
        {
        }
    }

    [LineStart(62031)]
    procedure LookupStateTaxFormDetails(State : Code[10];FormCode : Code[10];var FormNo : Code[10]) : Code[10];
    var
        TaxFormsDetailsRec : Record "Tax Forms Details";
    begin
        /*IF NOT GUIALLOWED THEN
          EXIT;
        TaxFormsDetailsRec.SETRANGE(State,State);
        TaxFormsDetailsRec.SETRANGE(Issued,FALSE);
        TaxFormsDetailsRec.SETRANGE("Form Code",FormCode);
        IF TaxFormsDetailsRec.FINDFIRST THEN
          TaxFormsDetailsRec."Form No." := FormNo;
        IF PAGE.RUNMODAL(PAGE::"Tax Forms Details",TaxFormsDetailsRec,TaxFormsDetailsRec."Form No.") = ACTION::LookupOK THEN
          FormNo := TaxFormsDetailsRec."Form No.";*/

    end;

    [LineStart(62042)]
    procedure LookupTaxFormDetails(FormCode : Code[10];var FormNo : Code[10]) : Code[10];
    var
        TaxFormsDetailsRec : Record "Tax Forms Details";
    begin
        /*IF NOT GUIALLOWED THEN
          EXIT;
        TaxFormsDetailsRec.SETRANGE(Issued,FALSE);
        TaxFormsDetailsRec.SETRANGE("Form Code",FormCode);
        IF TaxFormsDetailsRec.FINDFIRST THEN
          TaxFormsDetailsRec."Form No." := FormNo;
        IF PAGE.RUNMODAL(PAGE::"Tax Forms Details",TaxFormsDetailsRec,TaxFormsDetailsRec."Form No.") = ACTION::LookupOK THEN
          FormNo := TaxFormsDetailsRec."Form No.";
          */

    end;
}

