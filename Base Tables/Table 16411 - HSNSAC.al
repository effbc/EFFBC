table 16411 "HSN/SAC"
{
    // version NAVIN9.00.00.48992

    CaptionML = ENU='HSN/SAC',
                ENN='HSN/SAC';
    DrillDownPageID = 16411;
    LookupPageID = 16411;

    fields
    {
        field(1;"GST Group Code";Code[20])
        {
            CaptionML = ENU='GST Group Code',
                        ENN='GST Group Code';
            NotBlank = true;
            TableRelation = "GST Group";
        }
        field(2;"Code";Code[8])
        {
            CaptionML = ENU='Code',
                        ENN='Code';
            NotBlank = true;

            trigger OnValidate();
            begin
                if StrLen(Code) < 6
                  then
                  Error('Code length should be minimum 6');
            end;
        }
        field(3;Description;Text[50])
        {
            CaptionML = ENU='Description',
                        ENN='Description';
        }
        field(4;Type;Option)
        {
            CaptionML = ENU='Type',
                        ENN='Type';
            OptionCaptionML = ENU='HSN,SAC',
                              ENN='HSN,SAC';
            OptionMembers = HSN,SAC;
        }
    }

    keys
    {
        key(Key1;"GST Group Code","Code")
        {
        }
    }

    fieldgroups
    {
    }
}

