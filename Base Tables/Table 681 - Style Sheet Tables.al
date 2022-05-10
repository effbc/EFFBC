table 681 "Style Sheet Tables"
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

            trigger OnLookup();
            begin
                ValidateTableNo(true);
            end;

            trigger OnValidate();
            begin
                ValidateTableNo(false);
            end;
        }
        field(3;"Table Name";Text[30])
        {
            Editable = false;
        }
        field(4;"Fields Selected";Boolean)
        {
            BlankZero = true;
            CalcFormula = Exist("Style Sheet Fields" WHERE ("Style Sheet Code"=FIELD("Style Sheet Code"),
                                                            "Table No."=FIELD("Table No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(5;"Base Record";Boolean)
        {

            trigger OnValidate();
            var
                StylesheetTables : Record "Style Sheet Tables";
            begin
                StylesheetTables.SetRange("Style Sheet Code","Style Sheet Code");
                StylesheetTables.SetRange("Base Record",true);
                StylesheetTables.SetFilter("Table No.",'<>%1',"Table No.");
                if StylesheetTables.FindFirst then
                  Error(Text002);
            end;
        }
        field(6;Relationships;Boolean)
        {
            CalcFormula = Exist("Style Sheet Table Relations" WHERE ("Style Sheet Code"=FIELD("Style Sheet Code"),
                                                                     "Table No."=FIELD("Table No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(7;"Multiple Lines";Boolean)
        {
        }
        field(8;"Show Captions";Boolean)
        {
            CalcFormula = Exist("Style Sheet Fields" WHERE ("Style Sheet Code"=FIELD("Style Sheet Code"),
                                                            "Table No."=FIELD("Table No.")));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1;"Style Sheet Code","Table No.")
        {
        }
        key(Key2;"Base Record")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    var
        StylesheetFields : Record "Style Sheet Fields";
        StylesheetTableRelationships : Record "Style Sheet Table Relations";
    begin
        StylesheetFields.SetRange("Style Sheet Code","Style Sheet Code");
        StylesheetFields.SetRange("Table No.","Table No.");
        if StylesheetFields.FindFirst then
          StylesheetFields.DeleteAll(true);

        StylesheetTableRelationships.SetRange("Style Sheet Code","Style Sheet Code");
        StylesheetTableRelationships.SetRange("Table No.","Table No.");
        if StylesheetTableRelationships.FindFirst then
          StylesheetTableRelationships.DeleteAll(true);
    end;

    trigger OnInsert();
    begin
        if "Table No." = 0 then
          Error(StrSubstNo(Text001,Format("Table No.")));
    end;

    var
        Text001 : Label 'Table No. %1 is not valid.';
        Text002 : Label 'You can only select one base record.';

    [LineStart(36611)]
    procedure ValidateTableNo(LookUp : Boolean);
    var
        Objects : Record "Object";
    begin
        if LookUp then begin
          Objects.SetRange(Type,Objects.Type::TableData);
          Objects.SetFilter(ID,'<%1',DATABASE::Table2000000002);
          if PAGE.RunModal(PAGE::Page685,Objects) <> ACTION::LookupOK then
            exit;
        end else begin
          if not Objects.Get(Objects.Type::TableData,CompanyName,"Table No.") then
            Error(StrSubstNo(Text001,Format("Table No.")));
        end;

        "Table No." := Objects.ID;
        "Table Name" := Objects.Name;
    end;
}

