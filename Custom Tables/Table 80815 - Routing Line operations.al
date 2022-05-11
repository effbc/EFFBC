table 80815 "Routing Line operations"
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
        field(4;"Operation No.";Code[10])
        {
            Caption = 'Operation No.';
            NotBlank = true;
        }
        field(5;"Next Operation No.";Code[30])
        {
            Caption = 'Next Operation No.';
        }
        field(6;"Previous Operation No.";Code[30])
        {
            Caption = 'Previous Operation No.';
        }
        field(80000;"Operation No. Length";Integer)
        {
        }
        field(80001;"Next Operation No. Length";Integer)
        {
        }
        field(80002;"Previous Operation No. Length";Integer)
        {
        }
    }

    keys
    {
        key(Key1;"Routing No.","Version Code","Operation No.")
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
        //Subassembly : Record "Sub Assembly";

    //[LineStart(5871)]
    procedure TestStatus();
    var
        RtngHeader : Record "Routing Header";
        RtngVersion : Record "Routing Version";
    begin
    end;

    //[LineStart(5874)]
    procedure DeleteRelations();
    begin
    end;

    //[LineStart(5877)]
    procedure WorkCenterTransferfields();
    begin
    end;

    //[LineStart(5880)]
    procedure MachineCtrTransferfields();
    begin
    end;

    //[LineStart(5883)]
    procedure SetRecalcStatus();
    begin
    end;

    //[LineStart(5886)]
    procedure RunTimePer() : Decimal;
    begin
    end;
}

