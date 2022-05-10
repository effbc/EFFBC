tableextension 70150 WorkCenterExt extends "Work Center"
{
    // version NAVW19.00.00.50785

    fields
    {

        //Unsupported feature: Change TableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Post Code"(Field 9)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 9)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 17)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 26)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 27)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Calendar Rounding Precision"(Field 35)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Simulation Type"(Field 36)". Please convert manually.


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


        //Unsupported feature: CodeModification on ""Work Center Group Code"(Field 14).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Work Center Group Code" = xRec."Work Center Group Code" THEN
          EXIT;

        CalendarEntry.SETCURRENTKEY("Work Center No.");
        CalendarEntry.SETRANGE("Work Center No.","No.");
        IF NOT CalendarEntry.FIND('-') THEN
          EXIT;

        IF CurrFieldNo <> 0 THEN
          IF NOT CONFIRM(Text001,FALSE,FIELDCAPTION("Work Center Group Code"))
          THEN BEGIN
            "Work Center Group Code" := xRec."Work Center Group Code";
            EXIT;
          END;

        Window.OPEN(
          Text002 +
          Text003 +
          Text004 +
          Text006);

        // Capacity Calendar
        EntryCounter := 0;
        NoOfRecords := CalendarEntry.COUNT;
        IF CalendarEntry.FIND('-') THEN
          REPEAT
            EntryCounter := EntryCounter + 1;
            Window.UPDATE(1,EntryCounter);
            Window.UPDATE(2,ROUND(EntryCounter / NoOfRecords * 10000,1));
            CalendarEntry."Work Center Group Code" := "Work Center Group Code";
            CalendarEntry.MODIFY;
          UNTIL CalendarEntry.NEXT = 0;

        // Capacity Absence
        EntryCounter := 0;
        CalAbsentEntry.SETCURRENTKEY("Work Center No.");
        CalAbsentEntry.SETRANGE("Work Center No.","No.");
        NoOfRecords := CalAbsentEntry.COUNT;
        IF CalAbsentEntry.FIND('-') THEN
          REPEAT
            EntryCounter := EntryCounter + 1;
            Window.UPDATE(3,EntryCounter);
            Window.UPDATE(4,ROUND(EntryCounter / NoOfRecords * 10000,1));
            CalAbsentEntry."Work Center Group Code" := "Work Center Group Code";
            CalAbsentEntry.MODIFY;
          UNTIL CalAbsentEntry.NEXT = 0;

        EntryCounter := 0;

        ProdOrderCapNeedEntry.SETCURRENTKEY("Work Center No.");
        ProdOrderCapNeedEntry.SETRANGE("Work Center No.","No.");
        NoOfRecords := ProdOrderCapNeedEntry.COUNT;
        IF ProdOrderCapNeedEntry.FIND('-') THEN
          REPEAT
            EntryCounter := EntryCounter + 1;
            Window.UPDATE(7,EntryCounter);
            Window.UPDATE(8,ROUND(EntryCounter / NoOfRecords * 10000,1));
            ProdOrderCapNeedEntry."Work Center Group Code" := "Work Center Group Code";
            ProdOrderCapNeedEntry.MODIFY;
          UNTIL ProdOrderCapNeedEntry.NEXT = 0;

        OnValidateWorkCenterGroupCodeBeforeModify(Rec,xRec);
        MODIFY;

        RtngLine.SETCURRENTKEY("Work Center No.");
        RtngLine.SETRANGE("Work Center No.","No.");
        RtngLine.MODIFYALL("Work Center Group Code","Work Center Group Code");

        PlanningRtngLine.SETCURRENTKEY("Work Center No.");
        PlanningRtngLine.SETRANGE("Work Center No.","No.");
        PlanningRtngLine.MODIFYALL("Work Center Group Code","Work Center Group Code");

        ProdOrderRtngLine.SETCURRENTKEY("Work Center No.");
        ProdOrderRtngLine.SETRANGE("Work Center No.","No.");
        ProdOrderRtngLine.MODIFYALL("Work Center Group Code","Work Center Group Code");

        Window.CLOSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Work Center Group Code" = xRec."Work Center Group Code" then
          exit;

        CalendarEntry.SetCurrentKey("Work Center No.");
        CalendarEntry.SetRange("Work Center No.","No.");
        if not CalendarEntry.Find('-') then
          exit;

        if CurrFieldNo <> 0 then
          if not Confirm(Text001,false,FieldCaption("Work Center Group Code"))
          then begin
            "Work Center Group Code" := xRec."Work Center Group Code";
            exit;
          end;

        Window.Open(
        #17..23
        NoOfRecords := CalendarEntry.Count;
        if CalendarEntry.Find('-') then
          repeat
            EntryCounter := EntryCounter + 1;
            Window.Update(1,EntryCounter);
            Window.Update(2,Round(EntryCounter / NoOfRecords * 10000,1));
            CalendarEntry."Work Center Group Code" := "Work Center Group Code";
            CalendarEntry.Modify;
          until CalendarEntry.Next = 0;
        #33..35
        CalAbsentEntry.SetCurrentKey("Work Center No.");
        CalAbsentEntry.SetRange("Work Center No.","No.");
        NoOfRecords := CalAbsentEntry.Count;
        if CalAbsentEntry.Find('-') then
          repeat
            EntryCounter := EntryCounter + 1;
            Window.Update(3,EntryCounter);
            Window.Update(4,Round(EntryCounter / NoOfRecords * 10000,1));
            CalAbsentEntry."Work Center Group Code" := "Work Center Group Code";
            CalAbsentEntry.Modify;
          until CalAbsentEntry.Next = 0;
        #47..49
        ProdOrderCapNeedEntry.SetCurrentKey("Work Center No.");
        ProdOrderCapNeedEntry.SetRange("Work Center No.","No.");
        NoOfRecords := ProdOrderCapNeedEntry.Count;
        if ProdOrderCapNeedEntry.Find('-') then
          repeat
            EntryCounter := EntryCounter + 1;
            Window.Update(7,EntryCounter);
            Window.Update(8,Round(EntryCounter / NoOfRecords * 10000,1));
            ProdOrderCapNeedEntry."Work Center Group Code" := "Work Center Group Code";
            ProdOrderCapNeedEntry.Modify;
          until ProdOrderCapNeedEntry.Next = 0;

        OnValidateWorkCenterGroupCodeBeforeModify(Rec,xRec);
        Modify;

        RtngLine.SetCurrentKey("Work Center No.");
        RtngLine.SetRange("Work Center No.","No.");
        RtngLine.ModifyAll("Work Center Group Code","Work Center Group Code");

        PlanningRtngLine.SetCurrentKey("Work Center No.");
        PlanningRtngLine.SetRange("Work Center No.","No.");
        PlanningRtngLine.ModifyAll("Work Center Group Code","Work Center Group Code");

        ProdOrderRtngLine.SetCurrentKey("Work Center No.");
        ProdOrderRtngLine.SetRange("Work Center No.","No.");
        ProdOrderRtngLine.ModifyAll("Work Center Group Code","Work Center Group Code");

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


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 30).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Unit of Measure Code" = xRec."Unit of Measure Code" THEN
          EXIT;

        CALCFIELDS("Prod. Order Need (Qty.)");
        IF "Prod. Order Need (Qty.)" <> 0 THEN
          ERROR(Text007,FIELDCAPTION("Unit of Measure Code"));

        IF xRec."Unit of Measure Code" <> '' THEN
          IF CurrFieldNo <> 0 THEN
            IF NOT CONFIRM(Text001,FALSE,FIELDCAPTION("Unit of Measure Code"))
            THEN BEGIN
              "Unit of Measure Code" := xRec."Unit of Measure Code";
              EXIT;
            END;

        Window.OPEN(
          Text008 +
          Text009);

        MODIFY;

        // Capacity Calendar
        EntryCounter := 0;
        CalendarEntry.SETCURRENTKEY("Work Center No.");
        CalendarEntry.SETRANGE("Work Center No.","No.");
        NoOfRecords := CalendarEntry.COUNT;
        IF CalendarEntry.FIND('-') THEN
          REPEAT
            EntryCounter := EntryCounter + 1;
            Window.UPDATE(1,EntryCounter);
            Window.UPDATE(2,ROUND(EntryCounter / NoOfRecords * 10000,1));
            CalendarEntry.VALIDATE("Ending Time");
            CalendarEntry.MODIFY;
          UNTIL CalendarEntry.NEXT = 0;

        Window.CLOSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Unit of Measure Code" = xRec."Unit of Measure Code" then
          exit;

        CalcFields("Prod. Order Need (Qty.)");
        if "Prod. Order Need (Qty.)" <> 0 then
          Error(Text007,FieldCaption("Unit of Measure Code"));

        if xRec."Unit of Measure Code" <> '' then
          if CurrFieldNo <> 0 then
            if not Confirm(Text001,false,FieldCaption("Unit of Measure Code"))
            then begin
              "Unit of Measure Code" := xRec."Unit of Measure Code";
              exit;
            end;

        Window.Open(
        #17..19
        Modify;
        #21..23
        CalendarEntry.SetCurrentKey("Work Center No.");
        CalendarEntry.SetRange("Work Center No.","No.");
        NoOfRecords := CalendarEntry.Count;
        if CalendarEntry.Find('-') then
          repeat
            EntryCounter := EntryCounter + 1;
            Window.Update(1,EntryCounter);
            Window.Update(2,Round(EntryCounter / NoOfRecords * 10000,1));
            CalendarEntry.Validate("Ending Time");
            CalendarEntry.Modify;
          until CalendarEntry.Next = 0;

        Window.Close;
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
          IF "Location Code" <> '' THEN BEGIN
            Location.GET("Location Code");
            WhseIntegrationMgt.CheckLocationCode(Location,DATABASE::"Work Center","No.");
          END;

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
          MachineCenter.SETCURRENTKEY("Work Center No.");
          MachineCenter.SETRANGE("Work Center No.","No.");
          IF MachineCenter.FINDSET(TRUE) THEN
            REPEAT
              MachineCenter."Location Code" := "Location Code";
              IF MachineCenter."Open Shop Floor Bin Code" <> '' THEN BEGIN
                IF ConfirmAutoRemovalOfBinCode(AutoUpdate) THEN
                  MachineCenter.VALIDATE("Open Shop Floor Bin Code",'')
                ELSE
                  MachineCenter.TESTFIELD("Open Shop Floor Bin Code",'');
              END;
              IF MachineCenter."To-Production Bin Code" <> '' THEN BEGIN
                IF ConfirmAutoRemovalOfBinCode(AutoUpdate) THEN
                  MachineCenter.VALIDATE("To-Production Bin Code",'')
                ELSE
                  MachineCenter.TESTFIELD("To-Production Bin Code",'');
              END;
              IF MachineCenter."From-Production Bin Code" <> '' THEN BEGIN
                IF ConfirmAutoRemovalOfBinCode(AutoUpdate) THEN
                  MachineCenter.VALIDATE("From-Production Bin Code",'')
                ELSE
                  MachineCenter.TESTFIELD("From-Production Bin Code",'');
              END;
              MachineCenter.MODIFY(TRUE);
            UNTIL MachineCenter.NEXT = 0;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Location Code" <> xRec."Location Code" then begin
          if "Location Code" <> '' then begin
            Location.Get("Location Code");
            WhseIntegrationMgt.CheckLocationCode(Location,DATABASE::"Work Center","No.");
          end;

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
          MachineCenter.SetCurrentKey("Work Center No.");
          MachineCenter.SetRange("Work Center No.","No.");
          if MachineCenter.FindSet(true) then
            repeat
              MachineCenter."Location Code" := "Location Code";
              if MachineCenter."Open Shop Floor Bin Code" <> '' then begin
                if ConfirmAutoRemovalOfBinCode(AutoUpdate) then
                  MachineCenter.Validate("Open Shop Floor Bin Code",'')
                else
                  MachineCenter.TestField("Open Shop Floor Bin Code",'');
              end;
              if MachineCenter."To-Production Bin Code" <> '' then begin
                if ConfirmAutoRemovalOfBinCode(AutoUpdate) then
                  MachineCenter.Validate("To-Production Bin Code",'')
                else
                  MachineCenter.TestField("To-Production Bin Code",'');
              end;
              if MachineCenter."From-Production Bin Code" <> '' then begin
                if ConfirmAutoRemovalOfBinCode(AutoUpdate) then
                  MachineCenter.Validate("From-Production Bin Code",'')
                else
                  MachineCenter.TestField("From-Production Bin Code",'');
              end;
              MachineCenter.Modify(true);
            until MachineCenter.Next = 0;
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
          DATABASE::"Work Center","No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode("Location Code",
          "Open Shop Floor Bin Code",
          FieldCaption("Open Shop Floor Bin Code"),
          DATABASE::"Work Center","No.");
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
          DATABASE::"Work Center","No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode("Location Code",
          "To-Production Bin Code",
          FieldCaption("To-Production Bin Code"),
          DATABASE::"Work Center","No.");
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
          DATABASE::"Work Center","No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode("Location Code",
          "From-Production Bin Code",
          FieldCaption("From-Production Bin Code"),
          DATABASE::"Work Center","No.");
        */
        //end;
        field(90080; "User Id"; Code[20])
        {
            Editable = false;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search Name"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Work Center Group Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Subcontractor No."(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Search Name")
        {
        }
        key(Key3; "Work Center Group Code")
        {
        }
        key(Key4; "Subcontractor No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CapLedgEntry.SETRANGE("Work Center No.","No.");
    IF NOT CapLedgEntry.ISEMPTY THEN
      ERROR(Text010,TABLECAPTION,"No.",CapLedgEntry.TABLECAPTION);

    CheckRoutingWithWorkCenterExists;

    StdCostWksh.RESET;
    StdCostWksh.SETRANGE(Type,StdCostWksh.Type::"Work Center");
    StdCostWksh.SETRANGE("No.","No.");
    IF NOT StdCostWksh.ISEMPTY THEN
      ERROR(Text010,TABLECAPTION,"No.",StdCostWksh.TABLECAPTION);

    CalendarEntry.SETCURRENTKEY("Capacity Type","No.");
    CalendarEntry.SETRANGE("Capacity Type",CalendarEntry."Capacity Type"::"Work Center");
    CalendarEntry.SETRANGE("No.","No.");
    CalendarEntry.DELETEALL;

    CalAbsentEntry.SETCURRENTKEY("Capacity Type","No.");
    CalAbsentEntry.SETRANGE("Capacity Type",CalendarEntry."Capacity Type"::"Work Center");
    CalAbsentEntry.SETRANGE("No.","No.");
    CalAbsentEntry.DELETEALL;

    MfgCommentLine.SETRANGE("Table Name",MfgCommentLine."Table Name"::"Work Center");
    MfgCommentLine.SETRANGE("No.","No.");
    MfgCommentLine.DELETEALL;

    ProdOrderRtngLine.SETRANGE("Work Center No.","No.");
    IF NOT ProdOrderRtngLine.ISEMPTY THEN
      ERROR(Text000);

    DimMgt.DeleteDefaultDim(DATABASE::"Work Center","No.");

    VALIDATE("Location Code",''); // to clean up the default bins
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    CapLedgEntry.SetRange("Work Center No.","No.");
    if not CapLedgEntry.IsEmpty then
      Error(Text010,TableCaption,"No.",CapLedgEntry.TableCaption);
    #4..6
    StdCostWksh.Reset;
    StdCostWksh.SetRange(Type,StdCostWksh.Type::"Work Center");
    StdCostWksh.SetRange("No.","No.");
    if not StdCostWksh.IsEmpty then
      Error(Text010,TableCaption,"No.",StdCostWksh.TableCaption);

    CalendarEntry.SetCurrentKey("Capacity Type","No.");
    CalendarEntry.SetRange("Capacity Type",CalendarEntry."Capacity Type"::"Work Center");
    CalendarEntry.SetRange("No.","No.");
    CalendarEntry.DeleteAll;

    CalAbsentEntry.SetCurrentKey("Capacity Type","No.");
    CalAbsentEntry.SetRange("Capacity Type",CalendarEntry."Capacity Type"::"Work Center");
    CalAbsentEntry.SetRange("No.","No.");
    CalAbsentEntry.DeleteAll;

    MfgCommentLine.SetRange("Table Name",MfgCommentLine."Table Name"::"Work Center");
    MfgCommentLine.SetRange("No.","No.");
    MfgCommentLine.DeleteAll;

    ProdOrderRtngLine.SetRange("Work Center No.","No.");
    if not ProdOrderRtngLine.IsEmpty then
      Error(Text000);
    #30..32
    Validate("Location Code",''); // to clean up the default bins
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
      MfgSetup.TESTFIELD("Work Center Nos.");
      NoSeriesMgt.InitSeries(MfgSetup."Work Center Nos.",xRec."No. Series",0D,"No.","No. Series");
    END;
    DimMgt.UpdateDefaultDim(
      DATABASE::"Work Center","No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    MfgSetup.Get;
    if "No." = '' then begin
      MfgSetup.TestField("Work Center Nos.");
      NoSeriesMgt.InitSeries(MfgSetup."Work Center Nos.",xRec."No. Series",0D,"No.","No. Series");
    end;
    #6..8
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
    DimMgt.RenameDefaultDim(DATABASE::"Work Center",xRec."No.","No.");
    "Last Date Modified" := TODAY;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    DimMgt.RenameDefaultDim(DATABASE::"Work Center",xRec."No.","No.");
    "Last Date Modified" := Today;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Work Center Group Code"(Field 14).OnValidate.ProdOrderRtngLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Work Center Group Code" : 5409;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Work Center Group Code" : "Prod. Order Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Work Center Group Code"(Field 14).OnValidate.ProdOrderCapNeedEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Work Center Group Code" : 5410;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Work Center Group Code" : "Prod. Order Capacity Need";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Work Center Group Code"(Field 14).OnValidate.PlanningRtngLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Work Center Group Code" : 99000830;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Work Center Group Code" : "Planning Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Location Code"(Field 7300).OnValidate.Location(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Location Code" : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Location Code" : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Location Code"(Field 7300).OnValidate.MachineCenter(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Location Code" : 99000758;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Location Code" : "Machine Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Location Code"(Field 7300).OnValidate.WhseIntegrationMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Location Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Location Code" : "Whse. Integration Management";
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


    //Unsupported feature: PropertyModification on "ConfirmAutoRemovalOfBinCode(PROCEDURE 1).MachineCenter(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmAutoRemovalOfBinCode : 99000758;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmAutoRemovalOfBinCode : "Machine Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckRoutingWithWorkCenterExists(PROCEDURE 5).RoutingLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckRoutingWithWorkCenterExists : 99000764;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckRoutingWithWorkCenterExists : "Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1024)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MfgSetup(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MfgSetup : 99000765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MfgSetup : "Manufacturing Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WorkCenter(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WorkCenter : 99000754;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WorkCenter : "Work Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalendarEntry(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalendarEntry : 99000757;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalendarEntry : "Calendar Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalAbsentEntry(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalAbsentEntry : 99000760;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalAbsentEntry : "Calendar Absence Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MfgCommentLine(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MfgCommentLine : 99000770;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MfgCommentLine : "Manufacturing Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RtngLine(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RtngLine : 99000764;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RtngLine : "Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1022)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}

