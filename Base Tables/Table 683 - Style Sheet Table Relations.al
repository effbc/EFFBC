table 683 "Style Sheet Table Relations"
{
    // version Style Sheet ToolW11.0


    fields
    {
        field(1;"Style Sheet Code";Code[20])
        {
            TableRelation = "Style Sheet Header".Code;
        }
        field(2;"Table No.";Integer)
        {
        }
        field(4;"Field No.";Integer)
        {

            trigger OnLookup();
            begin
                ValidateFieldNo(true,false);
            end;

            trigger OnValidate();
            begin
                ValidateFieldNo(false,false);
            end;
        }
        field(5;"Field Name";Text[30])
        {
        }
        field(6;"Related-to Table No.";Integer)
        {
        }
        field(8;"Related-to Field No.";Integer)
        {

            trigger OnLookup();
            begin
                ValidateFieldNo(true,true);
            end;

            trigger OnValidate();
            begin
                ValidateFieldNo(false,true);
            end;
        }
        field(9;"Related-to Field Name";Text[30])
        {
        }
        field(10;"Constant Value";Text[30])
        {
        }
    }

    keys
    {
        key(Key1;"Style Sheet Code","Table No.","Related-to Table No.","Field No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        Text001 : Label 'Field No. %1 is not valid.';

    [LineStart(36652)]
    procedure ValidateFieldNo(LookUp : Boolean;BaseTable : Boolean);
    var
        "Fields" : Record "Field";
    begin
        if LookUp then begin
          if BaseTable then
            Fields.SetRange(TableNo,"Related-to Table No.")
          else
            Fields.SetRange(TableNo,"Table No.");

          if PAGE.RunModal(PAGE::Page686,Fields) <> ACTION::LookupOK then
            exit;
        end else begin
          if BaseTable then begin
            if not Fields.Get("Related-to Table No.","Related-to Field No.") then
              Error(StrSubstNo(Text001,Format("Field No.")));
          end else begin
            if not Fields.Get("Table No.","Field No.") then
              Error(StrSubstNo(Text001,Format("Field No.")));
          end;
        end;

        if BaseTable then begin
          "Related-to Field No." := Fields."No.";
          "Related-to Field Name" := Fields.FieldName;
        end else begin
          "Field No." := Fields."No.";
          "Field Name" := Fields.FieldName;
        end;
    end;
}

