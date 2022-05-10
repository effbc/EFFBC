table 680 "Style Sheet Header"
{
    // version Style Sheet ToolW11.0

    DrillDownPageID = "Server Printers";
    LookupPageID = "Server Printers";

    fields
    {
        field(1;"Code";Code[20])
        {
        }
        field(2;Description;Text[50])
        {
        }
        field(3;"Form No.";Integer)
        {

            trigger OnLookup();
            begin
                ValidateFormNo(true);
            end;

            trigger OnValidate();
            begin
                ValidateFormNo(false);
            end;
        }
        field(4;"Style Sheet Document";BLOB)
        {
        }
        field(5;"Mail Merge Document";BLOB)
        {
        }
        field(6;"Form Name";Text[50])
        {
        }
        field(8;"Include Work Date";Boolean)
        {
        }
        field(9;"Version No.";Integer)
        {
        }
        field(10;"Include Data Link";Boolean)
        {
        }
        field(11;"Use System Generated Caption";Boolean)
        {
            InitValue = true;
        }
        field(12;"Data Link Caption";Text[50])
        {
        }
        field(13;"Use MS Default Hyperlink Fmt.";Boolean)
        {
            InitValue = true;
        }
        field(14;"Use Default Language Only";Boolean)
        {
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
    }

    trigger OnDelete();
    var
        StylesheetTables : Record "Style Sheet Tables";
        StylesheetFields : Record "Style Sheet Fields";
        StylesheetTableRelations : Record "Style Sheet Table Relations";
        StylesheetLink : Record "Style Sheet Link";
    begin
        StylesheetTables.SetRange("Style Sheet Code",Code);
        if StylesheetTables.FindFirst then
          StylesheetTables.DeleteAll(true);

        StylesheetFields.SetRange("Style Sheet Code",Code);
        if StylesheetFields.FindFirst then
          StylesheetFields.DeleteAll(true);

        StylesheetTableRelations.SetRange("Style Sheet Code",Code);
        if StylesheetTableRelations.FindFirst then
          StylesheetTableRelations.DeleteAll(true);

        StylesheetLink.SetRange("Template Code",Code);
        if StylesheetLink.FindFirst then
          StylesheetLink.DeleteAll(true);
    end;

    trigger OnInsert();
    begin
        if Code = '' then
          Error(Text001);
    end;

    trigger OnRename();
    begin
        Error(Text003,TableCaption);
    end;

    var
        Text001 : Label 'Code must be filled in. Please enter a value.';
        Text002 : Label 'Form %1 does not exist.';
        Text003 : Label 'You cannot rename a %1.';

    [LineStart(36583)]
    procedure ValidateFormNo(Lookup : Boolean);
    var
        Objects : Record "Object";
    begin
        if Lookup then begin
          Objects.SetRange(Type,Objects.Type::"2");
          if PAGE.RunModal(PAGE::Page685,Objects) <> ACTION::LookupOK then
            exit;
        end else begin
          if not Objects.Get(Objects.Type::"2",'',"Form No.") then
            Error(StrSubstNo(Text002,Format("Form No.")));
        end;

        "Form No." := Objects.ID;
        "Form Name" := Objects.Name;
    end;
}

