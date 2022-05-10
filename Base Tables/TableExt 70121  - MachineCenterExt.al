tableextension 70121 MachineCenterExt extends "Machine Center"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change TableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Post Code"(Field 9)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 9)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 26)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 27)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Capacity (Total)"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Capacity (Total)"(Field 41)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Capacity (Effective)"(Field 42)". Please convert manually.


        //Unsupported feature: Change Editable on ""Capacity (Effective)"(Field 42)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Prod. Order Need (Qty.)"(Field 44)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prod. Order Need (Qty.)"(Field 44)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Prod. Order Need Amount"(Field 45)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prod. Order Need Amount"(Field 45)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Prod. Order Status Filter"(Field 47)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 80)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 84)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 7300)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location Code"(Field 7300)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Open Shop Floor Bin Code"(Field 7301)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""To-Production Bin Code"(Field 7302)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""From-Production Bin Code"(Field 7303)". Please convert manually.


        //Unsupported feature: CodeModification on "City(Field 8).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Post Code"(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Work Center No."(Field 14).OnValidate". Please convert manually.

        //trigger "(Field 14)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Work Center No." = xRec."Work Center No." THEN
          EXIT;

        IF "Work Center No." <> '' THEN BEGIN
          WorkCenter.GET("Work Center No.");
          WorkCenter.TESTFIELD("Unit of Measure Code");
          "Queue Time Unit of Meas. Code" := WorkCenter."Queue Time Unit of Meas. Code";
          "Setup Time Unit of Meas. Code" := WorkCenter."Unit of Measure Code";
          "Wait Time Unit of Meas. Code" := WorkCenter."Unit of Measure Code";
          "Move Time Unit of Meas. Code" := WorkCenter."Unit of Measure Code";
        END;
        VALIDATE("Location Code",WorkCenter."Location Code");

        CalendarEntry.SETCURRENTKEY("Capacity Type","No.");
        CalendarEntry.SETRANGE("Capacity Type",CalendarEntry."Capacity Type"::"Machine Center");
        CalendarEntry.SETRANGE("No.","No.");
        IF NOT CalendarEntry.FIND('-') THEN
          EXIT;

        IF CurrFieldNo <> 0 THEN
          IF NOT CONFIRM(Text001,FALSE,FIELDCAPTION("Work Center No."))
          THEN BEGIN
            "Work Center No." := xRec."Work Center No.";
            EXIT;
          END;

        Window.OPEN(
          Text002 +
          Text003 +
          Text004 +
          Text006);

        i := 0;
        NoOfRecords := CalendarEntry.COUNT;
        IF CalendarEntry.FIND('-') THEN
          REPEAT
            i := i + 1;
            Window.UPDATE(1,i);
            Window.UPDATE(2,ROUND(i / NoOfRecords * 10000,1));
            CalendarEntry.VALIDATE("Work Center No.","Work Center No.");
            CalendarEntry.MODIFY;
          UNTIL CalendarEntry.NEXT = 0;

        i := 0;
        CalAbsentEntry.SETCURRENTKEY("Capacity Type","No.");
        CalAbsentEntry.SETRANGE("Capacity Type",CalendarEntry."Capacity Type"::"Machine Center");
        CalAbsentEntry.SETRANGE("No.","No.");
        NoOfRecords := CalAbsentEntry.COUNT;
        IF CalAbsentEntry.FIND('-') THEN
          REPEAT
            i := i + 1;
            Window.UPDATE(3,i);
            Window.UPDATE(4,ROUND(i / NoOfRecords * 10000,1));
            CalAbsentEntry.VALIDATE("Work Center No.","Work Center No.");
            CalAbsentEntry.MODIFY;
          UNTIL CalAbsentEntry.NEXT = 0;

        i := 0;
        ProdOrderCapNeed.SETCURRENTKEY(Type,"No.");
        ProdOrderCapNeed.SETRANGE(Type,ProdOrderCapNeed.Type::"Machine Center");
        ProdOrderCapNeed.SETRANGE("No.","No.");
        NoOfRecords := ProdOrderCapNeed.COUNT;
        IF ProdOrderCapNeed.FIND('-') THEN
          REPEAT
            i := i + 1;
            Window.UPDATE(7,i);
            Window.UPDATE(8,ROUND(i / NoOfRecords * 10000,1));
            ProdOrderCapNeed.VALIDATE("Work Center No.","Work Center No.");
            ProdOrderCapNeed.MODIFY;
          UNTIL ProdOrderCapNeed.NEXT = 0;

        OnValidateWorkCenterNoBeforeModify(Rec,xRec,CurrFieldNo);
        MODIFY;

        RtngLine.SETCURRENTKEY(Type,"No.");
        RtngLine.SETRANGE(Type,RtngLine.Type::"Machine Center");
        RtngLine.SETRANGE("No.","No.");
        IF RtngLine.FIND('-') THEN
          REPEAT
            RtngLine.VALIDATE("Work Center No.","Work Center No.");
            RtngLine.MODIFY;
          UNTIL RtngLine.NEXT = 0;

        PlanningRtngLine.SETCURRENTKEY(Type,"No.");
        PlanningRtngLine.SETRANGE(Type,PlanningRtngLine.Type::"Machine Center");
        PlanningRtngLine.SETRANGE("No.","No.");
        IF PlanningRtngLine.FIND('-') THEN
          REPEAT
            PlanningRtngLine.VALIDATE("Work Center No.","Work Center No.");
            PlanningRtngLine.MODIFY;
          UNTIL PlanningRtngLine.NEXT = 0;

        ProdOrderRtngLine.SETCURRENTKEY(Type,"No.");
        ProdOrderRtngLine.SETRANGE(Type,PlanningRtngLine.Type::"Machine Center");
        ProdOrderRtngLine.SETRANGE("No.","No.");
        IF ProdOrderRtngLine.FIND('-') THEN
          REPEAT
            ProdOrderRtngLine.VALIDATE("Work Center No.","Work Center No.");
            ProdOrderRtngLine.MODIFY;
          UNTIL ProdOrderRtngLine.NEXT = 0;

        Window.CLOSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Work Center No." = xRec."Work Center No." then
          exit;

        if "Work Center No." <> '' then begin
          WorkCenter.Get("Work Center No.");
          WorkCenter.TestField("Unit of Measure Code");
        #7..10
        end;
        Validate("Location Code",WorkCenter."Location Code");

        CalendarEntry.SetCurrentKey("Capacity Type","No.");
        CalendarEntry.SetRange("Capacity Type",CalendarEntry."Capacity Type"::"Machine Center");
        CalendarEntry.SetRange("No.","No.");
        if not CalendarEntry.Find('-') then
          exit;

        if CurrFieldNo <> 0 then
          if not Confirm(Text001,false,FieldCaption("Work Center No."))
          then begin
            "Work Center No." := xRec."Work Center No.";
            exit;
          end;

        Window.Open(
        #28..33
        NoOfRecords := CalendarEntry.Count;
        if CalendarEntry.Find('-') then
          repeat
            i := i + 1;
            Window.Update(1,i);
            Window.Update(2,Round(i / NoOfRecords * 10000,1));
            CalendarEntry.Validate("Work Center No.","Work Center No.");
            CalendarEntry.Modify;
          until CalendarEntry.Next = 0;

        i := 0;
        CalAbsentEntry.SetCurrentKey("Capacity Type","No.");
        CalAbsentEntry.SetRange("Capacity Type",CalendarEntry."Capacity Type"::"Machine Center");
        CalAbsentEntry.SetRange("No.","No.");
        NoOfRecords := CalAbsentEntry.Count;
        if CalAbsentEntry.Find('-') then
          repeat
            i := i + 1;
            Window.Update(3,i);
            Window.Update(4,Round(i / NoOfRecords * 10000,1));
            CalAbsentEntry.Validate("Work Center No.","Work Center No.");
            CalAbsentEntry.Modify;
          until CalAbsentEntry.Next = 0;

        i := 0;
        ProdOrderCapNeed.SetCurrentKey(Type,"No.");
        ProdOrderCapNeed.SetRange(Type,ProdOrderCapNeed.Type::"Machine Center");
        ProdOrderCapNeed.SetRange("No.","No.");
        NoOfRecords := ProdOrderCapNeed.Count;
        if ProdOrderCapNeed.Find('-') then
          repeat
            i := i + 1;
            Window.Update(7,i);
            Window.Update(8,Round(i / NoOfRecords * 10000,1));
            ProdOrderCapNeed.Validate("Work Center No.","Work Center No.");
            ProdOrderCapNeed.Modify;
          until ProdOrderCapNeed.Next = 0;

        OnValidateWorkCenterNoBeforeModify(Rec,xRec,CurrFieldNo);
        Modify;

        RtngLine.SetCurrentKey(Type,"No.");
        RtngLine.SetRange(Type,RtngLine.Type::"Machine Center");
        RtngLine.SetRange("No.","No.");
        if RtngLine.Find('-') then
          repeat
            RtngLine.Validate("Work Center No.","Work Center No.");
            RtngLine.Modify;
          until RtngLine.Next = 0;

        PlanningRtngLine.SetCurrentKey(Type,"No.");
        PlanningRtngLine.SetRange(Type,PlanningRtngLine.Type::"Machine Center");
        PlanningRtngLine.SetRange("No.","No.");
        if PlanningRtngLine.Find('-') then
          repeat
            PlanningRtngLine.Validate("Work Center No.","Work Center No.");
            PlanningRtngLine.Modify;
          until PlanningRtngLine.Next = 0;

        ProdOrderRtngLine.SetCurrentKey(Type,"No.");
        ProdOrderRtngLine.SetRange(Type,PlanningRtngLine.Type::"Machine Center");
        ProdOrderRtngLine.SetRange("No.","No.");
        if ProdOrderRtngLine.Find('-') then
          repeat
            ProdOrderRtngLine.Validate("Work Center No.","Work Center No.");
            ProdOrderRtngLine.Modify;
          until ProdOrderRtngLine.Next = 0;

        Window.Close;
        */
        //end;


        //Unsupported feature: CodeModification on ""Direct Unit Cost"(Field 19).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Indirect Cost %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Indirect Cost %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Indirect Cost %"(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetGLSetup;
        "Unit Cost" :=
          ROUND(
            "Direct Unit Cost" * (1 + "Indirect Cost %" / 100) + "Overhead Rate",
            GLSetup."Unit-Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetGLSetup;
        "Unit Cost" :=
          Round(
            "Direct Unit Cost" * (1 + "Indirect Cost %" / 100) + "Overhead Rate",
            GLSetup."Unit-Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit Cost"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetGLSetup;
        "Direct Unit Cost" :=
          ROUND(("Unit Cost" - "Overhead Rate") / (1 + "Indirect Cost %" / 100),
            GLSetup."Unit-Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetGLSetup;
        "Direct Unit Cost" :=
          Round(("Unit Cost" - "Overhead Rate") / (1 + "Indirect Cost %" / 100),
            GLSetup."Unit-Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Overhead Rate"(Field 81).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Indirect Cost %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Indirect Cost %");
        */
        //end;


        //Unsupported feature: CodeModification on ""Location Code"(Field 7300).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Location Code" <> xRec."Location Code" THEN BEGIN
          IF ("Work Center No." = '') AND ("Location Code" <> '') THEN
            ERROR(Text008,FIELDCAPTION("Location Code"),TABLECAPTION,WorkCenter.TABLECAPTION);

          IF "Open Shop Floor Bin Code" <> '' THEN BEGIN
            IF ConfirmAutoRemovalOfBinCode(AutoUpdate) THEN
              VALIDATE("Open Shop Floor Bin Code",'')
            ELSE
              TESTFIELD("Open Shop Floor Bin Code",'');
          END;
          IF "To-Production Bin Code" <> '' THEN BEGIN
            IF ConfirmAutoRemovalOfBinCode(AutoUpdate) THEN
              VALIDATE("To-Production Bin Code",'')
            ELSE
              TESTFIELD("To-Production Bin Code",'');
          END;
          IF "From-Production Bin Code" <> '' THEN BEGIN
            IF ConfirmAutoRemovalOfBinCode(AutoUpdate) THEN
              VALIDATE("From-Production Bin Code",'')
            ELSE
              TESTFIELD("From-Production Bin Code",'');
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Location Code" <> xRec."Location Code" then begin
          if ("Work Center No." = '') and ("Location Code" <> '') then
            Error(Text008,FieldCaption("Location Code"),TableCaption,WorkCenter.TableCaption);

          if "Open Shop Floor Bin Code" <> '' then begin
            if ConfirmAutoRemovalOfBinCode(AutoUpdate) then
              Validate("Open Shop Floor Bin Code",'')
            else
              TestField("Open Shop Floor Bin Code",'');
          end;
          if "To-Production Bin Code" <> '' then begin
            if ConfirmAutoRemovalOfBinCode(AutoUpdate) then
              Validate("To-Production Bin Code",'')
            else
              TestField("To-Production Bin Code",'');
          end;
          if "From-Production Bin Code" <> '' then begin
            if ConfirmAutoRemovalOfBinCode(AutoUpdate) then
              Validate("From-Production Bin Code",'')
            else
              TestField("From-Production Bin Code",'');
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Open Shop Floor Bin Code"(Field 7301).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode("Location Code",
          "Open Shop Floor Bin Code",
          FIELDCAPTION("Open Shop Floor Bin Code"),
          DATABASE::"Machine Center","No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode("Location Code",
          "Open Shop Floor Bin Code",
          FieldCaption("Open Shop Floor Bin Code"),
          DATABASE::"Machine Center","No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""To-Production Bin Code"(Field 7302).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode("Location Code",
          "To-Production Bin Code",
          FIELDCAPTION("To-Production Bin Code"),
          DATABASE::"Machine Center","No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode("Location Code",
          "To-Production Bin Code",
          FieldCaption("To-Production Bin Code"),
          DATABASE::"Machine Center","No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""From-Production Bin Code"(Field 7303).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode("Location Code",
          "From-Production Bin Code",
          FIELDCAPTION("From-Production Bin Code"),
          DATABASE::"Machine Center","No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode("Location Code",
          "From-Production Bin Code",
          FieldCaption("From-Production Bin Code"),
          DATABASE::"Machine Center","No.");
        */
        //end;
        field(60090; "User Id"; Code[20])
        {
            Description = 'b2b';
            Editable = false;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search Name"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Work Center No."(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Search Name")
        {
        }
        key(Key3; "Work Center No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CapLedgEntry.SETRANGE(Type,CapLedgEntry.Type::"Machine Center");
    CapLedgEntry.SETRANGE("No.","No.");
    IF NOT CapLedgEntry.ISEMPTY THEN
      ERROR(Text007,TABLECAPTION,"No.",CapLedgEntry.TABLECAPTION);

    CheckRoutingWithMachineCenterExists;

    StdCostWksh.RESET;
    StdCostWksh.SETRANGE(Type,StdCostWksh.Type::"Machine Center");
    StdCostWksh.SETRANGE("No.","No.");
    IF NOT StdCostWksh.ISEMPTY THEN
      ERROR(Text007,TABLECAPTION,"No.",StdCostWksh.TABLECAPTION);

    CalendarEntry.SETRANGE("Capacity Type",CalendarEntry."Capacity Type"::"Machine Center");
    CalendarEntry.SETRANGE("No.","No.");
    CalendarEntry.DELETEALL;

    CalAbsentEntry.SETRANGE("Capacity Type",CalendarEntry."Capacity Type"::"Machine Center");
    CalAbsentEntry.SETRANGE("No.","No.");
    CalAbsentEntry.DELETEALL;

    MfgCommentLine.SETRANGE("Table Name",MfgCommentLine."Table Name"::"Machine Center");
    MfgCommentLine.SETRANGE("No.","No.");
    MfgCommentLine.DELETEALL;

    ProdOrderRtngLine.SETRANGE(Type,ProdOrderRtngLine.Type::"Machine Center");
    ProdOrderRtngLine.SETRANGE("No.","No.");
    IF NOT ProdOrderRtngLine.ISEMPTY THEN
      ERROR(Text000);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    CapLedgEntry.SetRange(Type,CapLedgEntry.Type::"Machine Center");
    CapLedgEntry.SetRange("No.","No.");
    if not CapLedgEntry.IsEmpty then
      Error(Text007,TableCaption,"No.",CapLedgEntry.TableCaption);
    #5..7
    StdCostWksh.Reset;
    StdCostWksh.SetRange(Type,StdCostWksh.Type::"Machine Center");
    StdCostWksh.SetRange("No.","No.");
    if not StdCostWksh.IsEmpty then
      Error(Text007,TableCaption,"No.",StdCostWksh.TableCaption);

    CalendarEntry.SetRange("Capacity Type",CalendarEntry."Capacity Type"::"Machine Center");
    CalendarEntry.SetRange("No.","No.");
    CalendarEntry.DeleteAll;

    CalAbsentEntry.SetRange("Capacity Type",CalendarEntry."Capacity Type"::"Machine Center");
    CalAbsentEntry.SetRange("No.","No.");
    CalAbsentEntry.DeleteAll;

    MfgCommentLine.SetRange("Table Name",MfgCommentLine."Table Name"::"Machine Center");
    MfgCommentLine.SetRange("No.","No.");
    MfgCommentLine.DeleteAll;

    ProdOrderRtngLine.SetRange(Type,ProdOrderRtngLine.Type::"Machine Center");
    ProdOrderRtngLine.SetRange("No.","No.");
    if not ProdOrderRtngLine.IsEmpty then
      Error(Text000);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    MfgSetup.GET;
    IF "No." = '' THEN BEGIN
      MfgSetup.TESTFIELD("Machine Center Nos.");
      NoSeriesMgt.InitSeries(MfgSetup."Machine Center Nos.",xRec."No. Series",0D,"No.","No. Series");
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    MfgSetup.Get;
    if "No." = '' then begin
      MfgSetup.TestField("Machine Center Nos.");
      NoSeriesMgt.InitSeries(MfgSetup."Machine Center Nos.",xRec."No. Series",0D,"No.","No. Series");
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := TODAY;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date Modified" := Today;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := TODAY;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date Modified" := Today;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Work Center No."(Field 14).OnValidate.WorkCenter(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Work Center No." : 99000754;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Work Center No." : "Work Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Work Center No."(Field 14).OnValidate.ProdOrderRtngLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Work Center No." : 5409;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Work Center No." : "Prod. Order Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Work Center No."(Field 14).OnValidate.ProdOrderCapNeed(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Work Center No." : 5410;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Work Center No." : "Prod. Order Capacity Need";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Work Center No."(Field 14).OnValidate.PlanningRtngLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Work Center No." : 99000830;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Work Center No." : "Planning Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Location Code"(Field 7300).OnValidate.WorkCenter(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Location Code" : 99000754;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Location Code" : "Work Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Open Shop Floor Bin Code"(Field 7301).OnValidate.WhseIntegrationMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Open Shop Floor Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Open Shop Floor Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""To-Production Bin Code"(Field 7302).OnValidate.WhseIntegrationMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"To-Production Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"To-Production Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""From-Production Bin Code"(Field 7303).OnValidate.WhseIntegrationMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"From-Production Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"From-Production Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ProdOrderRtngLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ProdOrderRtngLine : 5409;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ProdOrderRtngLine : "Prod. Order Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.StdCostWksh(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.StdCostWksh : 5841;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.StdCostWksh : "Standard Cost Worksheet";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.CapLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.CapLedgEntry : 5832;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.CapLedgEntry : "Capacity Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckRoutingWithMachineCenterExists(PROCEDURE 5).RoutingLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckRoutingWithMachineCenterExists : 99000764;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckRoutingWithMachineCenterExists : "Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MfgSetup(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MfgSetup : 99000765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MfgSetup : "Manufacturing Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyChange on "MachineCenter(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MachineCenter : 99000758;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MachineCenter : "Machine Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalendarEntry(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalendarEntry : 99000757;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalendarEntry : "Calendar Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalAbsentEntry(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalAbsentEntry : 99000760;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalAbsentEntry : "Calendar Absence Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MfgCommentLine(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MfgCommentLine : 99000770;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MfgCommentLine : "Manufacturing Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RtngLine(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RtngLine : 99000764;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RtngLine : "Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.
}

