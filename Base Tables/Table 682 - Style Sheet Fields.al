table 682 "Style Sheet Fields"
{
    // version Style Sheet ToolW11.1

    // Deleted StylesheetFunctions Local record variable(CU681)


    fields
    {
        field(1;"Style Sheet Code";Code[20])
        {
            TableRelation = "Style Sheet Header".Code;
        }
        field(2;"Table No.";Integer)
        {
        }
        field(3;"Field No.";Integer)
        {

            trigger OnLookup();
            begin
                ValidateFieldNo(true);
            end;

            trigger OnValidate();
            begin
                ValidateFieldNo(false);
            end;
        }
        field(4;"Field Name";Text[30])
        {
        }
        field(5;"XML Path";Text[250])
        {
        }
        field(6;"Merge Field";Text[100])
        {
        }
        field(7;"Include Caption";Boolean)
        {
            InitValue = true;
        }
        field(8;Currency;Boolean)
        {

            trigger OnValidate();
            var
                "Fields" : Record "Field";
            begin
                if Fields.Get("Table No.","Field No.") then
                  if (Fields.Type <> Fields.Type::Decimal) and Currency then
                    Error(Text002);
            end;
        }
    }

    keys
    {
        key(Key1;"Style Sheet Code","Table No.","Field No.")
        {
        }
        key(Key2;"Merge Field")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    begin
        if "Field No." = 0 then
          Error(StrSubstNo(Text001,Format("Field No.")));

        BuildPlaceHolders;
    end;

    trigger OnModify();
    begin
        BuildPlaceHolders;
    end;

    var
        Text001 : Label 'Field No. %1 is not valid.';
        Text002 : Label 'The Currency formatting can only be applied to decimal type fields.';

    [LineStart(36634)]
    procedure ValidateFieldNo(LookUp : Boolean);
    var
        "Fields" : Record "Field";
    begin
        if LookUp then begin
          Fields.SetRange(TableNo,"Table No.");
          if PAGE.RunModal(PAGE::Page686,Fields) <> ACTION::LookupOK then
            exit;
        end else begin
          if not Fields.Get("Table No.","Field No.") then
            Error(StrSubstNo(Text001,Format("Field No.")));
        end;

        "Field No." := Fields."No.";
        "Field Name" := Fields.FieldName;
    end;

    [LineStart(36647)]
    procedure BuildPlaceHolders();
    var
        StyleSheetTables : Record "Style Sheet Tables";
    begin
        StyleSheetTables.Get("Style Sheet Code","Table No.");
        /*"XML Path" := 'Object/' + StylesheetFunctions.StyleSheetFieldName(StyleSheetTables."Table Name","Field Name");
        "Merge Field" := StylesheetFunctions.MailMergeFieldName(StyleSheetTables."Table Name","Field Name");*///B2b since CU 681 doesn't exist in Nav 2013

    end;
}

