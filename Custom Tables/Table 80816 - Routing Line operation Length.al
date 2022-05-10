table 80816 "Routing Line operation Length"
{
    // version NAVW16.00,QC1.0,B2B1.0

    Caption = 'Routing Line';

    fields
    {
        field(1;"Routing No.";Code[20])
        {
            Caption = 'Routing No.';
            NotBlank = true;
            TableRelation = "Routing Header";
        }
        field(2;"Version Code";Code[10])
        {
            Caption = 'Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No."=FIELD("Routing No."));
        }
        field(3;"OPeration No. Min";Integer)
        {
        }
        field(4;"Operation No. Max";Integer)
        {
        }
        field(5;Diff;Boolean)
        {
        }
    }

    keys
    {
        key(Key1;"Routing No.","Version Code")
        {
        }
    }

    fieldgroups
    {
    }

    var
        WorkCenter : Record "Work Center";
        MachineCenter : Record "Machine Center";
        RtngTool : Record "Routing Tool";
        RtngPersonnel : Record "Routing Personnel";
        RtngQltyMeasure : Record "Routing Quality Measure";
        RtngComment : Record "Routing Comment Line";
        StdTaskTool : Record "Standard Task Tool";
        StdTaskPersonnel : Record "Standard Task Personnel";
        StdTaskQltyMeasure : Record "Standard Task Quality Measure";
        StdTaskComment : Record "Standard Task Description";
        "--QC--" : Integer;
        Subassembly : Record "Sub Assembly";

    [LineStart(5883)]
    procedure TestStatus();
    var
        RtngHeader : Record "Routing Header";
        RtngVersion : Record "Routing Version";
    begin
    end;

    [LineStart(5886)]
    procedure DeleteRelations();
    begin
    end;

    [LineStart(5889)]
    procedure WorkCenterTransferfields();
    begin
    end;

    [LineStart(5892)]
    procedure MachineCtrTransferfields();
    begin
    end;

    [LineStart(5895)]
    procedure SetRecalcStatus();
    begin
    end;

    [LineStart(5898)]
    procedure RunTimePer() : Decimal;
    begin
    end;
}

