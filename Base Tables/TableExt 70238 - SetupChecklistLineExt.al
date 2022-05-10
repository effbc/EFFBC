tableextension 70238 SetupChecklistLineExt extends "Setup Checklist Line"
{
    // version NAVW16.00,Rev01

    Caption = 'Setup Checklist Line';
    //DataCaptionFields = "Table Name";
    //DrillDownPageID = 531;
    //LookupPageID = 531;

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(2; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            Editable = false;
            TableRelation = AllObj."Object ID" WHERE("Object Type" = CONST(Table));
        }
        field(3; "Table Name"; Text[80])
        {
            Caption = 'Table Name';
            Editable = false;
        }
        field(4; "Company Filter"; Text[30])
        {
            Caption = 'Company Filter';
            FieldClass = FlowFilter;
            TableRelation = Company;
        }
        field(6; "Company Filter (Source Table)"; Text[30])
        {
            Caption = 'Company Filter (Source Table)';
            FieldClass = FlowFilter;
            TableRelation = Company;
        }
        field(8; "No. of Records"; Integer)
        {
            BlankZero = true;
            /*CalcFormula = Lookup("Table Information"."No. of Records" WHERE("Company Name" = FIELD("Company Filter"),
                                                                                 "Table No." = FIELD("Table ID"),
                                                                                 "No. of Records" = FILTER(<> 0)));*/
            Caption = 'No. of Records';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "No. of Records (Source Table)"; Integer)
        {
            BlankZero = true;
            /* CalcFormula = Lookup("Table Information"."No. of Records" WHERE("Company Name" = FIELD("Company Filter (Source Table)"),
                                                                              "Table No." = FIELD("Table ID"),
                                                                              "No. of Records" = FILTER(<> 0)));*/
            Caption = 'No. of Records (Source Table)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Licensed Table"; Boolean)
        {
            BlankZero = true;
            /* CalcFormula = Exist("License Permission" WHERE("Object Type" = CONST(TableData),
                                                             "Object Number" = FIELD("License Table ID"),
                                                             "Read Permission" = CONST(Yes),
                                                             "Insert Permission" = CONST(Yes),
                                                             "Modify Permission" = CONST(Yes),
                                                             "Delete Permission" = CONST(Yes)));*/
            Caption = 'Licensed Table';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Copying Available"; Boolean)
        {
            Caption = 'Copying Available';
            Editable = false;
        }
        field(14; "Form ID"; Integer)
        {
            Caption = 'Form ID';
            Editable = false;
            // TableRelation = AllObj."Object ID" WHERE("Object Type" = CONST("2"));
        }
        field(15; "Form Name"; Text[80])
        {
            Caption = 'Form Name';
            Editable = false;
        }
        field(16; "License Table ID"; Integer)
        {
            Caption = 'License Table ID';
            Editable = false;
            TableRelation = AllObj."Object ID" WHERE("Object Type" = CONST(Table));
        }
        field(17; "License Table Name"; Text[80])
        {
            Caption = 'License Table Name';
            Editable = false;
        }
        field(18; "Starting Date"; Date)
        {
            Caption = 'Starting Date';

            trigger OnValidate();
            begin
                if ("Starting Date" <> 0D) and (xRec."Starting Date" <> 0D) and ("Ending Date" <> 0D) then
                    "Ending Date" := "Ending Date" + ("Starting Date" - xRec."Starting Date");
            end;
        }
        field(19; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(20; "Responsible ID"; Code[50])
        {
            Caption = 'Responsible ID';
            Description = 'Rev01';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup();
            var
                LoginMgt: Codeunit "User Management";
            begin
                // LoginMgt.LookupUserID("Responsible ID");
            end;

            trigger OnValidate();
            var
                LoginMgt: Codeunit "User Management";
            begin
                // LoginMgt.ValidateUserID("Responsible ID");
            end;
        }
        field(21; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = '" ,Planning,Started,Completed,Not Used"';
            OptionMembers = " ",Planning,Started,Completed,"Not Used";
        }
        field(22; Comments; Boolean)
        {
            BlankZero = true;
            //CalcFormula = Exist("Setup Checklist Comment" WHERE("Table ID" = FIELD("Table ID")));
            Caption = 'Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Application Area ID"; Integer)
        {
            Caption = 'Application Area ID';
            Editable = false;
            //TableRelation = "Application Area Line";
        }
        field(24; "Application Area Name"; Text[80])
        {
            // CalcFormula = Lookup("Application Area Line".Name WHERE(ID = FIELD("Application Area ID")));
            Caption = 'Application Area Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Vertical Sorting"; Integer)
        {
            Caption = 'Vertical Sorting';
        }
        field(26; "Data Origin"; Text[50])
        {
            Caption = 'Data Origin';
        }
        field(30; "Licensed Form"; Boolean)
        {
            /*  CalcFormula = Exist("License Permission" WHERE("Object Type" = CONST("2"),
                                                              "Object Number" = FIELD("Form ID"),
                                                              "Execute Permission" = CONST(Yes)));*/
            Caption = 'Licensed Form';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Table ID")
        {
        }
        key(Key2; "Line No.")
        {
        }
        key(Key3; "Table Name")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        //  CommentLine.SetRange("Table ID", "Table ID");
        // CommentLine.DeleteAll;
    end;

    var
    // CommentLine: Record "Setup Checklist Comment";
}

