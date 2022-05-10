tableextension 70124 RoutingLineExt extends "Routing Line"
{
    // version NAVW19.00.00.45778,QC1.0,B2B1.0

    fields
    {

        //Unsupported feature: Change NotBlank on ""Routing No."(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Version Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Operation No."(Field 4)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Work Center No."(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Work Center Group Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change Editable on "Recalculate(Field 41)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 45)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 45)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sequence No. (Forward)"(Field 50)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sequence No. (Backward)"(Field 51)". Please convert manually.


        //Unsupported feature: Change Editable on ""Fixed Scrap Qty. (Accum.)"(Field 52)". Please convert manually.


        //Unsupported feature: Change Editable on ""Scrap Factor % (Accumulated)"(Field 53)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 8).OnValidate". Please convert manually.

        //trigger "(Field 8)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SetRecalcStatus;

        IF "No." = '' THEN
          EXIT;

        CASE Type OF
          Type::"Work Center":
            BEGIN
              WorkCenter.GET("No.");
              WorkCenter.TESTFIELD(Blocked,FALSE);
              WorkCenterTransferFields;
            END;
          Type::"Machine Center":
            BEGIN
              MachineCenter.GET("No.");
              MachineCenter.TESTFIELD(Blocked,FALSE);
              MachineCtrTransferFields;
            END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SetRecalcStatus;

        if "No." = '' then
          exit;

        case Type of
          Type::"Work Center":
            begin
              WorkCenter.Get("No.");
              WorkCenter.TestField(Blocked,false);
              WorkCenterTransferFields;
            end;
          Type::"Machine Center":
            begin
              MachineCenter.Get("No.");
              MachineCenter.TestField(Blocked,false);
              MachineCtrTransferFields;
            end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Standard Task Code"(Field 35).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Standard Task Code" = '' THEN
          IF "Standard Task Code" <> xRec."Standard Task Code" THEN BEGIN
            DeleteRelations;
            EXIT;
          END;

        StandardTask.GET("Standard Task Code");
        Description := StandardTask.Description;

        DeleteRelations;

        StdTaskTool.SETRANGE("Standard Task Code","Standard Task Code");
        IF StdTaskTool.FIND('-') THEN
          REPEAT
            RtngTool."Routing No." := "Routing No.";
            RtngTool."Version Code" := "Version Code";
            RtngTool."Operation No." := "Operation No.";
            RtngTool."Line No." := StdTaskTool."Line No.";
            RtngTool."No." := StdTaskTool."No.";
            RtngTool.Description := StdTaskTool.Description;
            RtngTool.INSERT;
          UNTIL StdTaskTool.NEXT = 0;

        StdTaskPersonnel.SETRANGE("Standard Task Code","Standard Task Code");
        IF StdTaskPersonnel.FIND('-') THEN
          REPEAT
            RtngPersonnel."Routing No." := "Routing No.";
            RtngPersonnel."Version Code" := "Version Code";
            RtngPersonnel."Operation No." := "Operation No.";
            RtngPersonnel."Line No." := StdTaskPersonnel."Line No.";
            RtngPersonnel."No." := StdTaskPersonnel."No.";
            RtngPersonnel.Description := StdTaskPersonnel.Description;
            RtngPersonnel.INSERT;
          UNTIL StdTaskPersonnel.NEXT = 0;

        StdTaskQltyMeasure.SETRANGE("Standard Task Code","Standard Task Code");
        IF StdTaskQltyMeasure.FIND('-') THEN
          REPEAT
            RtngQltyMeasure."Routing No." := "Routing No.";
            RtngQltyMeasure."Version Code" := "Version Code";
            RtngQltyMeasure."Operation No." := "Operation No.";
        #42..44
            RtngQltyMeasure."Min. Value" := StdTaskQltyMeasure."Min. Value";
            RtngQltyMeasure."Max. Value" := StdTaskQltyMeasure."Max. Value";
            RtngQltyMeasure."Mean Tolerance" := StdTaskQltyMeasure."Mean Tolerance";
            RtngQltyMeasure.INSERT;
          UNTIL StdTaskQltyMeasure.NEXT = 0;

        StdTaskComment.SETRANGE("Standard Task Code","Standard Task Code");
        IF StdTaskComment.FIND('-') THEN
          REPEAT
            RtngComment."Routing No." := "Routing No.";
            RtngComment."Version Code" := "Version Code";
            RtngComment."Operation No." := "Operation No.";
            RtngComment."Line No." := StdTaskComment."Line No.";
            RtngComment.Comment := StdTaskComment.Text;
            RtngComment.INSERT;
          UNTIL StdTaskComment.NEXT = 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Standard Task Code" = '' then
          if "Standard Task Code" <> xRec."Standard Task Code" then begin
            DeleteRelations;
            exit;
          end;

        StandardTask.Get("Standard Task Code");
        #8..11
        StdTaskTool.SetRange("Standard Task Code","Standard Task Code");
        if StdTaskTool.Find('-') then
          repeat
        #15..20
            RtngTool.Insert;
          until StdTaskTool.Next = 0;

        StdTaskPersonnel.SetRange("Standard Task Code","Standard Task Code");
        if StdTaskPersonnel.Find('-') then
          repeat
        #27..32
            RtngPersonnel.Insert;
          until StdTaskPersonnel.Next = 0;

        StdTaskQltyMeasure.SetRange("Standard Task Code","Standard Task Code");
        if StdTaskQltyMeasure.Find('-') then
          repeat
        #39..47
            RtngQltyMeasure.Insert;
          until StdTaskQltyMeasure.Next = 0;

        StdTaskComment.SetRange("Standard Task Code","Standard Task Code");
        if StdTaskComment.Find('-') then
          repeat
        #54..58
            RtngComment.Insert;
          until StdTaskComment.Next = 0;
        */
        //end;
        field(60001; "Operation Description"; Text[50])
        {
            Description = 'B2B';
        }
        field(60002; "QAS/MPR"; Option)
        {
            Description = 'B2B';
            OptionMembers = " ",QAS,MPR;
        }
        field(60003; "Man Cost"; Decimal)
        {
        }
        field(60004; Day; Option)
        {
            Description = 'Added by sujani on 23-10-19 for Activities start day tracking';
            OptionMembers = " ","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25";
        }
        field(60005; Start_Day; DateFormula)
        {
            Description = 'Added by sujani on 24-10-19 for Activities start day tracking';
        }
        field(60006; "Main Group"; Option)
        {
            Description = 'Added By Vishnu Priya on 01-08-2020 for the benchmarks collection';
            OptionCaption = '" ,PSD,Machine,ASD,QAS,TST,SHF,TST-INT,Wiring"';
            OptionMembers = " ",PSD,Machine,ASD,QAS,TST,SHF,"TST-INT",Wiring;
        }
        field(60007; "Sub Group"; Option)
        {
            Description = 'Added By Vishnu Priya on 01-08-2020 for the benchmarks collection';
            OptionCaption = '"  ,Baking,Machine,Manual Soldering-Lead Formation,Manual Soldering,Manual Soldering-Cleaning,Thermal Cycling,Manual Soldering-AT,IPQA,Module Test,Conformal Coating,Shop floor-Basic,Integration-Before RDSO,Integration-After RDSO,Burn in Test,Analog tunning,Wiring,Shop floor-Final,FPQA,Integration-Dispatch,Data Entry"';
            OptionMembers = "  ",Baking,Machine,"Manual Soldering-Lead Formation","Manual Soldering","Manual Soldering-Cleaning","Thermal Cycling","Manual Soldering-AT",IPQA,"Module Test","Conformal Coating","Shop floor-Basic","Integration-Before RDSO","Integration-After RDSO","Burn in Test","Analog tunning",Wiring,"Shop floor-Final",FPQA,"Integration-Dispatch","Data Entry";
        }
        field(60008; "Operation Number"; Integer)
        {
            Description = 'Added By Vishnu Priya on 01-08-2020 for the benchmarks collection';
        }
        field(33000250; "Sub Assembly"; Code[20])
        {
            TableRelation = "Sub Assembly";

            trigger OnValidate();
            begin
                if "Sub Assembly" = '' then begin
                    "Sub Assembly Unit of Meas.Code" := '';
                    "Spec Id" := '';
                    "QC Enabled" := false;
                    "Qty. Produced" := 0;
                end else begin
                    Subassembly.Get("Sub Assembly");
                    "Sub Assembly Unit of Meas.Code" := Subassembly."Unit Of Measure Code";
                    "Spec Id" := Subassembly."Spec Id";
                    "QC Enabled" := Subassembly."QC Enabled";
                    "Sub Assembly Description" := Subassembly.Description;
                end;
            end;
        }
        field(33000251; "Qty. Produced"; Decimal)
        {

            trigger OnValidate();
            begin
                TestField("Sub Assembly");
            end;
        }
        field(33000252; "Sub Assembly Unit of Meas.Code"; Code[10])
        {
            TableRelation = "Sub Assembly Unit of Measure".Code WHERE("Sub Assembly No." = FIELD("Sub Assembly"));

            trigger OnValidate();
            begin
                TestField("Sub Assembly");
            end;
        }
        field(33000253; "Spec Id"; Code[20])
        {
            TableRelation = "Specification Header";

            trigger OnValidate();
            begin
                TestField("Sub Assembly");
                if "Spec Id" = '' then
                    "QC Enabled" := false;
            end;
        }
        field(33000254; "QC Enabled"; Boolean)
        {

            trigger OnValidate();
            begin
                TestField("Sub Assembly");
                TestField("Spec Id");
            end;
        }
        field(33000255; "Sub Assembly Description"; Text[30])
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Routing No.,Version Code,Operation No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Routing No.,Version Code,Sequence No. (Forward)"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Routing No.,Version Code,Sequence No. (Backward)"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Work Center No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Routing Link Code"(Key)". Please convert manually.

        key(Key1; "Routing No.", "Version Code", "Operation No.")
        {
            SumIndexFields = "Man Cost";
        }
        key(Key2; "Routing No.", "Version Code", "Sequence No. (Forward)")
        {
        }
        key(Key3; "Routing No.", "Version Code", "Sequence No. (Backward)")
        {
        }
        key(Key4; "Work Center No.")
        {
        }
        key(Key5; Type, "No.")
        {
        }
        key(Key6; "Routing Link Code")
        {
        }
    }

    //Unsupported feature: InsertAfter on "(FieldGroup: DropDown)". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Standard Task Code"(Field 35).OnValidate.StandardTask(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Standard Task Code" : 99000778;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Standard Task Code" : "Standard Task";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestStatus(PROCEDURE 6).RoutingHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestStatus : 99000763;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestStatus : "Routing Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestStatus(PROCEDURE 6).RoutingVersion(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestStatus : 99000786;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestStatus : "Routing Version";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CertifiedRoutingVersionExists(PROCEDURE 4).RtngHeader(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CertifiedRoutingVersionExists : 99000763;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CertifiedRoutingVersionExists : "Routing Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CertifiedRoutingVersionExists(PROCEDURE 4).VersionMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CertifiedRoutingVersionExists : 99000756;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CertifiedRoutingVersionExists : VersionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CertifiedRoutingVersionExists(PROCEDURE 4).CheckRoutingLines(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CertifiedRoutingVersionExists : 99000752;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CertifiedRoutingVersionExists : "Check Routing Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCertifiedRouting(PROCEDURE 10).RoutingHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCertifiedRouting : 99000763;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCertifiedRouting : "Routing Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckCertifiedRouting(PROCEDURE 10).RoutingVersion(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckCertifiedRouting : 99000786;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckCertifiedRouting : "Routing Version";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WorkCenter(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WorkCenter : 99000754;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WorkCenter : "Work Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MachineCenter(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MachineCenter : 99000758;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MachineCenter : "Machine Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RtngTool(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RtngTool : 99000802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RtngTool : "Routing Tool";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RtngPersonnel(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RtngPersonnel : 99000803;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RtngPersonnel : "Routing Personnel";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RtngQltyMeasure(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RtngQltyMeasure : 99000805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RtngQltyMeasure : "Routing Quality Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RtngComment(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RtngComment : 99000775;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RtngComment : "Routing Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StdTaskTool(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StdTaskTool : 99000781;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StdTaskTool : "Standard Task Tool";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StdTaskPersonnel(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StdTaskPersonnel : 99000782;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StdTaskPersonnel : "Standard Task Personnel";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StdTaskQltyMeasure(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StdTaskQltyMeasure : 99000784;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StdTaskQltyMeasure : "Standard Task Quality Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StdTaskComment(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StdTaskComment : 99000783;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StdTaskComment : "Standard Task Description";
    //Variable type has not been exported.

    var
        "--QC--": Integer;
        Subassembly: Record "Sub Assembly";
}

