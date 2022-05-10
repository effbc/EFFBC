tableextension 70078 ProductionOrderExt extends "Production Order"
{
    // version NAVW19.00.00.50868,SH1.0

    fields
    {

        //Unsupported feature: Change OptionString on "Status(Field 1)". Please convert manually.

        modify("No.")
        {

            //Unsupported feature: Change TableRelation on ""No."(Field 2)". Please convert manually.


            //Unsupported feature: Change ValidateTableRelation on ""No."(Field 2)". Please convert manually.

            CaptionML = ENU = 'Production Order No.', ENN = 'Production Order No.';
        }

        //Unsupported feature: Change Editable on ""Creation Date"(Field 6)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 7)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Type"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Source No."(Field 10)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on ""Finished Date"(Field 25)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 31)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 32)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change Editable on ""Replan Ref. No."(Field 34)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Replan Ref. Status"(Field 35)". Please convert manually.


        //Unsupported feature: Change Editable on ""Replan Ref. Status"(Field 35)". Please convert manually.


        //Unsupported feature: Change Editable on ""Low-Level Code"(Field 38)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Capacity Type Filter"(Field 48)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Capacity No. Filter"(Field 49)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Expected Operation Cost Amt."(Field 51)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Operation Cost Amt."(Field 51)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Expected Component Cost Amt."(Field 52)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Component Cost Amt."(Field 52)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Actual Time Used"(Field 55)". Please convert manually.


        //Unsupported feature: Change Editable on ""Actual Time Used"(Field 55)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Allocated Capacity Need"(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on ""Allocated Capacity Need"(Field 56)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Expected Capacity Need"(Field 57)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Capacity Need"(Field 57)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 80)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Expected Material Ovhd. Cost"(Field 92)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Material Ovhd. Cost"(Field 92)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Expected Capacity Ovhd. Cost"(Field 94)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Capacity Ovhd. Cost"(Field 94)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Completely Picked"(Field 7300)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 2).OnValidate". Please convert manually.

        //trigger "(Field 2)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> xRec."No." THEN BEGIN
          MfgSetup.GET;
          NoSeriesMgt.TestManual(GetNoSeriesCode);
          "No. Series" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> xRec."No." then begin
          MfgSetup.Get;
          NoSeriesMgt.TestManual(GetNoSeriesCode);
          "No. Series" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Source Type"(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Source Type" <> xRec."Source Type" THEN
          CheckProdOrderStatus(FIELDCAPTION("Source Type"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Source Type" <> xRec."Source Type" then
          CheckProdOrderStatus(FieldCaption("Source Type"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Source No."(Field 10).OnValidate". Please convert manually.

        //trigger "(Field 10)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Source No." <> xRec."Source No." THEN
          CheckProdOrderStatus(FIELDCAPTION("Source No."));

        IF "Source No." = '' THEN
          EXIT;

        CASE "Source Type" OF
          "Source Type"::Item:
            BEGIN
              Item.GET("Source No.");
              Item.TESTFIELD(Blocked,FALSE);
              InitFromSourceNo(
                Item.Description,Item."Description 2",Item."Routing No.",
                Item."Inventory Posting Group",Item."Gen. Prod. Posting Group",'',Item."Unit Cost");
              CreateDim(DATABASE::Item,"Source No.");
              OnBeforeAssignItemNo(Rec,xRec,Item,CurrFieldNo);
            END;
          "Source Type"::Family:
            BEGIN
              Family.GET("Source No.");
              InitFromSourceNo(Family.Description,Family."Description 2",Family."Routing No.",'','','',0);
              OnBeforeAssignFamily(Rec,xRec,Family,CurrFieldNo);
            END;
          "Source Type"::"Sales Header":
            BEGIN
              IF Status = Status::Simulated THEN
                SalesHeader.GET(SalesHeader."Document Type"::Quote,"Source No.")
              ELSE
                SalesHeader.GET(SalesHeader."Document Type"::Order,"Source No.");
              InitFromSourceNo(SalesHeader."Ship-to Name",SalesHeader."Ship-to Name 2",'','','','',0);
              "Location Code" := SalesHeader."Location Code";
              "Due Date" := SalesHeader."Shipment Date";
              "Ending Date" := SalesHeader."Shipment Date";
              "Dimension Set ID" := SalesHeader."Dimension Set ID";
              "Shortcut Dimension 1 Code" := SalesHeader."Shortcut Dimension 1 Code";
              "Shortcut Dimension 2 Code" := SalesHeader."Shortcut Dimension 2 Code";
              OnBeforeAssignSalesHeader(Rec,xRec,SalesHeader,CurrFieldNo);
            END;
        END;
        VALIDATE(Description);
        InitRecord;
        UpdateDatetime;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Source No." <> xRec."Source No." then
          CheckProdOrderStatus(FieldCaption("Source No."));

        if "Source No." = '' then
          exit;

        case "Source Type" of
          "Source Type"::Item:
            begin
              Item.Get("Source No.");
              Item.TestField(Blocked,false);
              Description := Item.Description;
              "Description 2" := Item."Description 2";
              "Routing No." := Item."Routing No.";
              "Inventory Posting Group" := Item."Inventory Posting Group";
              "Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group";
              "Unit Cost" := Item."Unit Cost";

              CreateDim(DATABASE::Item,"Source No.");
              OnBeforeAssignItemNo(Rec,xRec,Item,CurrFieldNo);
            end;
          "Source Type"::Family:
            begin
              Family.Get("Source No.");
              InitFromSourceNo(Family.Description,Family."Description 2",Family."Routing No.",'','','',0);
              OnBeforeAssignFamily(Rec,xRec,Family,CurrFieldNo);
            end;
          "Source Type"::"Sales Header":
            begin
              if Status = Status::Simulated then
                SalesHeader.Get(SalesHeader."Document Type"::Quote,"Source No.")
              else
                SalesHeader.Get(SalesHeader."Document Type"::Order,"Source No.");
        #30..37
            end;
        end;
        Validate(Description);
        InitRecord;
        UpdateDatetime;


        if ("Source No." <> '') and (Quantity <> 0) then begin
          if Items.Get("Source No.") then begin
            Itm_card_No_of_Units := Items."No.of Units";
            Itm_Card_ttl_units := Quantity * Items."No.of Units";
            "Benchmarks(in Min)" := Items."Benchmarks(in Min)";
            "Total Time" := Quantity * Items."Benchmarks(in Min)";
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Starting Time"(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateStartingEndingTime(0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ProdOrderLine.SetCurrentKey(Status,"Prod. Order No.","Planning Level Code");
        ProdOrderLine.Ascending(false);
        ProdOrderLine.SetRange(Status,Status);
        ProdOrderLine.SetRange("Prod. Order No.","No.");
        ProdOrderLine.SetFilter("Item No.",'<>%1','');
        ProdOrderLine.SetFilter("Planning Level Code",'>%1',0);
        if ProdOrderLine.Find('-') then begin
          "Starting Date-Time" := CreateDateTime("Starting Date","Starting Time");
          Modify;
          MultiLevelMessage;
          exit;
        end;
        "Due Date" := 0D;
        ProdOrderLine.SetRange("Planning Level Code");
        if ProdOrderLine.Find('-') then
          repeat
            ProdOrderLine."Starting Time" := "Starting Time";
            ProdOrderLine."Starting Date" := "Starting Date";
            ProdOrderLine.Modify;
            CalcProdOrder.SetParameter(true);
            CalcProdOrder.Recalculate(ProdOrderLine,0,true);
            if ProdOrderLine."Planning Level Code" > 0 then
              ProdOrderLine."Due Date" := ProdOrderLine."Ending Date"
            else
              ProdOrderLine."Due Date" :=
                LeadTimeMgt.PlannedDueDate(
                  ProdOrderLine."Item No.",
                  ProdOrderLine."Location Code",
                  ProdOrderLine."Variant Code",
                  ProdOrderLine."Ending Date",
                  '',
                  2);

            if "Due Date" = 0D then
              "Due Date" := ProdOrderLine."Due Date";
            "Starting Date-Time" := CreateDateTime("Starting Date","Starting Time");
            ProdOrderLine.Modify(true);
            ProdOrderLine.CheckEndingDate(CurrFieldNo <> 0);
          until ProdOrderLine.Next = 0
        else begin
          "Ending Date" := "Starting Date";
          "Ending Time" := "Starting Time";
        end;
        AdjustStartEndingDate;
        Modify;

        ProdOrderLine.SetCurrentKey(Status,"Prod. Order No.","Planning Level Code");
        ProdOrderLine.Ascending(false);
        ProdOrderLine.SetRange(Status,Status);
        ProdOrderLine.SetRange("Prod. Order No.","No.");
        ProdOrderLine.SetFilter("Item No.",'<>%1','');
        ProdOrderLine.SetFilter("Planning Level Code",'>%1',0);
        if ProdOrderLine.Find('-') then begin
          "Starting Date-Time" := CreateDateTime("Starting Date","Starting Time");
          Modify;
          MultiLevelMessage;
          exit;
        end;
        "Due Date" := 0D;
        ProdOrderLine.SetRange("Planning Level Code");
        if ProdOrderLine.Find('-') then
          repeat
            ProdOrderLine."Starting Time" := "Starting Time";
            ProdOrderLine."Starting Date" := "Starting Date";
            ProdOrderLine.Modify;
            CalcProdOrder.SetParameter(true);
            CalcProdOrder.Recalculate(ProdOrderLine,0,true);
            if ProdOrderLine."Planning Level Code" > 0 then
              ProdOrderLine."Due Date" := ProdOrderLine."Ending Date"
            else
              ProdOrderLine."Due Date" :=
                LeadTimeMgt.PlannedDueDate(
                  ProdOrderLine."Item No.",
                  ProdOrderLine."Location Code",
                  ProdOrderLine."Variant Code",
                  ProdOrderLine."Ending Date",
                  '',
                  2);

            if "Due Date" = 0D then
              "Due Date" := ProdOrderLine."Due Date";
            "Starting Date-Time" := CreateDateTime("Starting Date","Starting Time");
            ProdOrderLine.Modify(true);
            ProdOrderLine.CheckEndingDate(CurrFieldNo <> 0);
          until ProdOrderLine.Next = 0
        else begin
          "Ending Date" := "Starting Date";
          "Ending Time" := "Starting Time";
        end;
        AdjustStartEndingDate;
        Modify;
        {<<<<<<<}
        */
        //end;


        //Unsupported feature: CodeModification on ""Starting Date"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Starting Time");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Starting Time");
        */
        //end;


        //Unsupported feature: CodeModification on ""Ending Time"(Field 22).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateStartingEndingTime(1);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ProdOrderLine.SetCurrentKey(Status,"Prod. Order No.","Planning Level Code");
        ProdOrderLine.Ascending(true);
        ProdOrderLine.SetRange(Status,Status);
        ProdOrderLine.SetRange("Prod. Order No.","No.");
        ProdOrderLine.SetFilter("Item No.",'<>%1','');
        ProdOrderLine.SetFilter("Planning Level Code",'>%1',0);
        if ProdOrderLine.Find('-') then begin
          "Ending Date-Time" := CreateDateTime("Ending Date","Ending Time");
          Modify;
          MultiLevelMessage;
          exit;
        end;
        "Due Date" := 0D;
        ProdOrderLine.SetRange("Planning Level Code");
        if ProdOrderLine.Find('-') then
          repeat
            ProdOrderLine."Ending Time" := "Ending Time";
            ProdOrderLine."Ending Date" := "Ending Date";
            ProdOrderLine.Modify;
            CalcProdOrder.SetParameter(true);
            CalcProdOrder.Recalculate(ProdOrderLine,1,true);
            if ProdOrderLine."Planning Level Code" > 0 then
              ProdOrderLine."Due Date" := ProdOrderLine."Ending Date"
            else
              ProdOrderLine."Due Date" :=
                LeadTimeMgt.PlannedDueDate(
                  ProdOrderLine."Item No.",
                  ProdOrderLine."Location Code",
                  ProdOrderLine."Variant Code",
                  ProdOrderLine."Ending Date",
                  '',
                  2);
            if "Due Date" = 0D then
              "Due Date" := ProdOrderLine."Due Date";
            "Ending Date-Time" := CreateDateTime("Ending Date","Ending Time");
            ProdOrderLine.Modify(true);
            ProdOrderLine.CheckEndingDate(CurrFieldNo <> 0);
          until ProdOrderLine.Next = 0
        else begin
          "Starting Date" := "Ending Date";
          "Starting Time" := "Ending Time";
        end;
        AdjustStartEndingDate;
        Modify;
        ProdOrderLine.SetCurrentKey(Status,"Prod. Order No.","Planning Level Code");
        ProdOrderLine.Ascending(true);
        ProdOrderLine.SetRange(Status,Status);
        ProdOrderLine.SetRange("Prod. Order No.","No.");
        ProdOrderLine.SetFilter("Item No.",'<>%1','');
        ProdOrderLine.SetFilter("Planning Level Code",'>%1',0);
        if ProdOrderLine.Find('-') then begin
          "Ending Date-Time" := CreateDateTime("Ending Date","Ending Time");
          Modify;
          MultiLevelMessage;
          exit;
        end;
        "Due Date" := 0D;
        ProdOrderLine.SetRange("Planning Level Code");
        if ProdOrderLine.Find('-') then
          repeat
            ProdOrderLine."Ending Time" := "Ending Time";
            ProdOrderLine."Ending Date" := "Ending Date";
            ProdOrderLine.Modify;
            CalcProdOrder.SetParameter(true);
            CalcProdOrder.Recalculate(ProdOrderLine,1,true);
            if ProdOrderLine."Planning Level Code" > 0 then
              ProdOrderLine."Due Date" := ProdOrderLine."Ending Date"
            else
              ProdOrderLine."Due Date" :=
                LeadTimeMgt.PlannedDueDate(
                  ProdOrderLine."Item No.",
                  ProdOrderLine."Location Code",
                  ProdOrderLine."Variant Code",
                  ProdOrderLine."Ending Date",
                  '',
                  2);
            if "Due Date" = 0D then
              "Due Date" := ProdOrderLine."Due Date";
            "Ending Date-Time" := CreateDateTime("Ending Date","Ending Time");
            ProdOrderLine.Modify(true);
            ProdOrderLine.CheckEndingDate(CurrFieldNo <> 0);
          until ProdOrderLine.Next = 0
        else begin
          "Starting Date" := "Ending Date";
          "Starting Time" := "Ending Time";
        end;
        AdjustStartEndingDate;
        Modify;
        {<<<<<<<}
        */
        //end;


        //Unsupported feature: CodeModification on ""Ending Date"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Ending Time");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Ending Time");
        */
        //end;


        //Unsupported feature: CodeModification on ""Due Date"(Field 24).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Due Date" = 0D THEN
          EXIT;
        IF (CurrFieldNo = FIELDNO("Due Date")) OR
           (CurrFieldNo = FIELDNO("Location Code")) OR
           UpdateEndDate
        THEN BEGIN
          ProdOrderLine.SETCURRENTKEY(Status,"Prod. Order No.","Planning Level Code");
          ProdOrderLine.ASCENDING(TRUE);
          ProdOrderLine.SETRANGE(Status,Status);
          ProdOrderLine.SETRANGE("Prod. Order No.","No.");
          ProdOrderLine.SETFILTER("Item No.",'<>%1','');
          ProdOrderLine.SETFILTER("Planning Level Code",'>%1',0);
          IF NOT ProdOrderLine.ISEMPTY THEN BEGIN
            ProdOrderLine.SETRANGE("Planning Level Code",0);
            IF "Source Type" = "Source Type"::Family THEN BEGIN
              UpdateEndingDate(ProdOrderLine);
            END ELSE BEGIN
              IF ProdOrderLine.FIND('-') THEN
                "Ending Date" :=
                  LeadTimeMgt.PlannedEndingDate(ProdOrderLine."Item No.","Location Code",'',"Due Date",'',2)
              ELSE
                "Ending Date" := "Due Date";
              "Ending Date-Time" := CREATEDATETIME("Ending Date","Ending Time");
              MultiLevelMessage;
              EXIT;
            END;
          END ELSE BEGIN
            ProdOrderLine.SETRANGE("Planning Level Code");
            IF NOT ProdOrderLine.ISEMPTY THEN
              UpdateEndingDate(ProdOrderLine)
            ELSE BEGIN
              IF "Source Type" = "Source Type"::Item THEN
                "Ending Date" :=
                  LeadTimeMgt.PlannedEndingDate(
                    "Source No.",
                    "Location Code",
                    '',
                    "Due Date",
                    '',
                    2)
              ELSE
                "Ending Date" := "Due Date";
              "Starting Date" := "Ending Date";
              "Starting Date-Time" := CREATEDATETIME("Starting Date","Starting Time");
              "Ending Date-Time" := CREATEDATETIME("Ending Date","Ending Time");
            END;
            AdjustStartEndingDate;
            MODIFY(TRUE);
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Due Date" = 0D then
          exit;
        //B2B SH1.0
        Schedule.Reset;
        Schedule.SetRange("Document Type",Schedule."Document Type"::Order);
        Schedule.SetRange("Document No.","Sales Order No.");
        Schedule.SetRange("Document Line No.","Sales Order Line No.");
        Schedule.SetRange("Line No.","Schedule Line No.");
        if Schedule.Find('-') then begin
          Schedule."RPO Completion Date":="Due Date";
          Schedule.Modify;
        end;

        //B2B SH1.0


        if (CurrFieldNo = FieldNo("Due Date")) or
           (CurrFieldNo = FieldNo("Location Code")) or
           UpdateEndDate
        then begin
          ProdOrderLine.SetCurrentKey(Status,"Prod. Order No.","Planning Level Code");
          ProdOrderLine.Ascending(true);
          ProdOrderLine.SetRange(Status,Status);
          ProdOrderLine.SetRange("Prod. Order No.","No.");
          ProdOrderLine.SetFilter("Item No.",'<>%1','');
          ProdOrderLine.SetFilter("Planning Level Code",'>%1',0);
          if not ProdOrderLine.IsEmpty then begin
            ProdOrderLine.SetRange("Planning Level Code",0);
            if "Source Type" = "Source Type"::Family then begin
              UpdateEndingDate(ProdOrderLine);
            end else begin
              if ProdOrderLine.Find('-') then
                "Ending Date" :=
                  LeadTimeMgt.PlannedEndingDate(ProdOrderLine."Item No.","Location Code",'',"Due Date",'',2)
              else
                "Ending Date" := "Due Date";
              "Ending Date-Time" := CreateDateTime("Ending Date","Ending Time");
              MultiLevelMessage;
              exit;
            end;
          end else begin
            ProdOrderLine.SetRange("Planning Level Code");
            if not ProdOrderLine.IsEmpty then
              UpdateEndingDate(ProdOrderLine)
            else begin
              if "Source Type" = "Source Type"::Item then
        #33..40
              else
                "Ending Date" := "Due Date";
              "Starting Date" := "Ending Date";
              "Starting Date-Time" := CreateDateTime("Starting Date","Starting Time");
              "Ending Date-Time" := CreateDateTime("Ending Date","Ending Time");
            end;
            AdjustStartEndingDate;
            Modify(true);
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Location Code"(Field 32).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetDefaultBin;

        VALIDATE("Due Date"); // Scheduling consider Calendar assigned to Location
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetDefaultBin;

        Validate("Due Date"); // Scheduling consider Calendar assigned to Location
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 33).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bin Code" <> '' THEN
          WhseIntegrationMgt.CheckBinTypeCode(DATABASE::"Production Order",
            FIELDCAPTION("Bin Code"),
            "Location Code",
            "Bin Code",0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bin Code" <> '' then
          WhseIntegrationMgt.CheckBinTypeCode(DATABASE::"Production Order",
            FieldCaption("Bin Code"),
            "Location Code",
            "Bin Code",0);
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 40).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Source Type" = "Source Type"::Item THEN
          "Cost Amount" := ROUND(Quantity * "Unit Cost")
        ELSE
          "Cost Amount" := 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {
        #1..4

        ProdOrderQty := 0;
        ProdOrder.RESET;
        ProdOrder.SETRANGE("Sales Order No.","Sales Order No.");
        ProdOrder.SETRANGE("Sales Order Line No.","Sales Order Line No.");
        ProdOrder.SETRANGE("Schedule Line No.","Schedule Line No.");
        ProdOrder.SETFILTER(ProdOrder."No.",'<>%1',"No.");
        IF ProdOrder.FIND('-') THEN
          REPEAT
            ProdOrderQty := ProdOrderQty + ProdOrder.Quantity;
          UNTIL ProdOrder.NEXT = 0;

        ProdOrderQty:=ProdOrderQty+Quantity;

        SalesLine.SETRANGE("Document No.","Sales Order No.");
        SalesLine.SETRANGE("Line No.","Sales Order Line No.");
        IF SalesLine.FIND('-') THEN BEGIN
          IF "Schedule Line No."=0 THEN
          BEGIN
            IF  ProdOrderQty > SalesLine.Quantity THEN
              ERROR(Text011);
          END
          ELSE
          BEGIN
            Schedule.RESET;
            Schedule.SETFILTER(Schedule."Document Type",'%1',SalesLine."Document Type");
            Schedule.SETFILTER(Schedule."Document No.","Sales Order No.");
            Schedule.SETFILTER(Schedule."Document Line No.",'%1',"Sales Order Line No.");
            Schedule.SETFILTER(Schedule."Line No.",'%1',"Schedule Line No.");
            IF Schedule.FIND('-') THEN BEGIN
              IF  ProdOrderQty > Schedule.Quantity THEN
                ERROR(Text011);

            END;
          END;
        END;
        }


        if ("Source No." <> '') and (Quantity <> 0) then begin
          if Items.Get("Source No.") then begin
            Itm_card_No_of_Units := Items."No.of Units";
            Itm_Card_ttl_units := Quantity * Items."No.of Units";
            "Benchmarks(in Min)" := Items."Benchmarks(in Min)";
            "Total Time" := (Quantity * Items."Benchmarks(in Min)")/60;
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Starting Date-Time"(Field 98).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Starting Date" := DT2DATE("Starting Date-Time");
        "Starting Time" := DT2TIME("Starting Date-Time");
        VALIDATE("Starting Time");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Starting Date" := DT2Date("Starting Date-Time");
        "Starting Time" := DT2Time("Starting Date-Time");
        Validate("Starting Time");
        */
        //end;


        //Unsupported feature: CodeModification on ""Ending Date-Time"(Field 99).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Ending Date" := DT2DATE("Ending Date-Time");
        "Ending Time" := DT2TIME("Ending Date-Time");
        VALIDATE("Ending Time");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Ending Date" := DT2Date("Ending Date-Time");
        "Ending Time" := DT2Time("Ending Date-Time");
        Validate("Ending Time");
        */
        //end;
        field(60001; "Sales Order No."; Code[20])
        {
            TableRelation = "Sales Header"."No." WHERE("Document Type" = FILTER(Order | "Blanket Order"));

            trigger OnValidate();
            begin
                /*ProdOrderLine.RESET;
                ProdOrderLine.SETFILTER(ProdOrderLine."Prod. Order No.","No.");
                IF ProdOrderLine.FINDSET THEN
                BEGIN
                  ProdOrderLine.DELETEALL;
                END;
                "Sales Order Line No.":=0;
                "Schedule Line No.":=0;
                "Source No.":='';
                 */

            end;
        }
        field(60002; "Sales Order Line No."; Integer)
        {
            TableRelation = "Sales Line"."Line No." WHERE("Document No." = FIELD("Sales Order No."));

            trigger OnValidate();
            begin
                /*ProdOrderLine.RESET;
                ProdOrderLine.SETFILTER(ProdOrderLine."Prod. Order No.","No.");
                IF ProdOrderLine.FINDSET THEN
                BEGIN
                  ProdOrderLine.DELETEALL;
                END;
                "Schedule Line No.":=0;
                "Source No.":='';
                 */


                /*SalesLine.SETRANGE("Document No.","Sales Order No.");
                SalesLine.SETRANGE("Line No.","Sales Order Line No.");
                IF SalesLine.FIND('-') THEN BEGIN
                  "Source Type" := "Source Type" :: Item;
                  VALIDATE("Source No.",SalesLine."No.");
                END;*/
                SalesLine.SetRange("Document No.", "Sales Order No.");
                SalesLine.SetRange("Line No.", "Sales Order Line No.");
                if SalesLine.Find('-') then begin
                    Quantity := SalesLine.Quantity;// ADDED BY SUJANI ON 13-02-2018
                    if "Schedule Line No." = 0 then begin
                        "Source Type" := "Source Type"::Item;
                        Validate("Source No.", SalesLine."No.");
                    end
                    else begin
                        Schedule.Reset;
                        Schedule.SetFilter(Schedule."Document Type", '%1', SalesLine."Document Type");
                        Schedule.SetFilter(Schedule."Document No.", "Sales Order No.");
                        Schedule.SetFilter(Schedule."Document Line No.", '%1', "Sales Order Line No.");
                        Schedule.SetFilter(Schedule."Line No.", '%1', "Schedule Line No.");
                        if Schedule.Find('-') then begin
                            "Source Type" := "Source Type"::Item;
                            Validate("Source No.", Schedule."No.");
                        end;
                    end;
                end;

            end;
        }
        field(60005; "Item Sub Group Code"; Code[20])
        {
            Description = 'B2B';

            trigger OnValidate();
            var
                ItemSubSubGroup: Record "Item Sub Sub Group";
            begin
            end;
        }
        field(60006; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
            Description = 'B2B-Modified Added code in Onvalidate Trigger';

            trigger OnValidate();
            var
                ItemSubGroup: Record "Item Sub Group";
            begin
            end;
        }
        field(60007; "Planned Dispatch Date"; Date)
        {

            trigger OnValidate();
            begin
                if UserId in ['EFFTRONICS\ANILKUMAR', 'EFFTRONICS\VSNGEETHA', 'EFFTRONICS\ANVESH', 'EFFTRONICS\GRAVI', 'EFFTRONICS\PKOTESWARARAO', 'EFFTRONICS\GRAVI', 'EFFTRONICS\VANIDEVI'] then begin
                    if Format("Prod Start date") = '' then
                        Error('Please fill production start date');

                    if "Prod Start date" >= "Planned Dispatch Date" then
                        Error('Dispatch date must be less the or equal the start date');
                end;
            end;
        }
        field(60008; Week; Integer)
        {
        }
        field(60009; Customer; Text[50])
        {
            CalcFormula = Lookup("Sales Header"."Sell-to Customer Name" WHERE("No." = FIELD("Sales Order No.")));
            FieldClass = FlowField;
        }
        field(60010; "Shortage Verified"; Boolean)
        {
        }
        field(60011; "Shortage Items"; Integer)
        {
            CalcFormula = Count("Production Order Shortage Item" WHERE("Production Order" = FIELD("No.")));
            FieldClass = FlowField;
        }
        field(60091; "OLD Dim Set ID"; Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
        field(60092; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60100; "Schedule Line No."; Integer)
        {
            TableRelation = Schedule2."Line No." WHERE("Document No." = FIELD("Sales Order No."),
                                                        "Document Line No." = FIELD("Sales Order Line No."),
                                                        "Document Type" = FILTER(Order | "Blanket Order"));

            trigger OnValidate();
            begin
                /*
                ProdOrderLine.RESET;
                ProdOrderLine.SETFILTER(ProdOrderLine."Prod. Order No.","No.");
                IF ProdOrderLine.FINDSET THEN
                BEGIN
                  ProdOrderLine.DELETEALL;
                END;
                "Source No.":='';
                 */


                SalesLine.SetRange("Document No.", "Sales Order No.");
                SalesLine.SetRange("Line No.", "Sales Order Line No.");
                if SalesLine.Find('-') then begin
                    Quantity := SalesLine.Quantity;// ADDED BY SUJANI ON 13-02-2018
                    if "Schedule Line No." = 0 then begin
                        "Source Type" := "Source Type"::Item;
                        Validate("Source No.", SalesLine."No.");
                    end
                    else begin
                        SalesDocType := Format(SalesLine."Document Type");
                        Schedule.Reset;
                        Schedule.SetFilter(Schedule."Document Type", SalesDocType);
                        Schedule.SetFilter(Schedule."Document No.", "Sales Order No.");
                        Schedule.SetFilter(Schedule."Document Line No.", '%1', "Sales Order Line No.");
                        Schedule.SetFilter(Schedule."Line No.", '%1', "Schedule Line No.");
                        if Schedule.FindFirst then begin
                            // Added by Pranavi on 20-Feb-2016 for not allowing to select default schedule line no.
                            if Schedule."Line No." = Schedule."Document Line No." then begin
                                SLt.Reset;
                                SLt.SetRange(SLt."Document No.", Schedule."Document No.");
                                SLt.SetRange(SLt."Line No.", Schedule."Document Line No.");
                                if SLt.FindFirst then begin
                                    if Schedule."No." = SLt."No." then
                                        Error('You cannot select this schedule line no.!\As it is default Line!');
                                end;
                            end;
                            // End by Pranavi
                            "Source Type" := "Source Type"::Item;
                            Validate("Source No.", Schedule."No.");
                        end;
                    end;
                end;

            end;
        }
        field(60101; "Service Order No."; Code[20])
        {
            Description = 'B2B EFF';
            TableRelation = "Service Header"."No." WHERE("Document Type" = CONST(Order));
        }
        field(60102; "Change Status"; Boolean)
        {
        }
        field(60103; RefreshProdTime; DateTime)
        {
        }
        field(60104; Refreshdate; Date)
        {
        }
        field(60105; StatusTemp; Boolean)
        {
        }
        field(60106; "Production Order Status"; Option)
        {
            OptionMembers = "Yet to Start","Under Production",Soldering,Integration,"Ready for Inspection","Call Letter Registered","Inspection Completed","Final Testing","Ready for Dispatch","Convertion- Need to close";
        }
        field(60107; "Work.MesurInUnits(ASM)"; Integer)
        {
        }
        field(60108; "Work.MesurInUnits(TST)"; Integer)
        {
        }
        field(60109; "Work.MesurInUnits(SHF)"; Integer)
        {
        }
        field(60110; "Total Unts"; Integer)
        {
        }
        field(60111; Remarks; Text[100])
        {
            Description = 'added by sujani 29-11-18 to update the sale order  deviation remarks';
        }
        field(60112; Itm_card_No_of_Units; Decimal)
        {
        }
        field(60113; Itm_Card_ttl_units; Decimal)
        {
        }
        field(60114; "Sell-to Customer Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Suvarchala devi for tracking customer name in RPOs';
        }
        field(60115; "Benchmarks(in Min)"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Suvarchala devi for Item Benchmarks';
        }
        field(60116; "Total Time"; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'Added by Suvarchala devi for Item Benchmarks';
        }
        field(90080; "User Id"; Code[50])
        {
            Editable = false;
        }
        field(90081; "Prod Start date"; Date)
        {

            trigger OnValidate();
            begin
                if UpperCase(UserId) <> '06PD012' then begin

                    if "Planned Dispatch Date" <> 0D then
                        if "Prod Start date" >= "Planned Dispatch Date" then
                            Error('Dispatch date is lessthe or equal the start date');
                    "Shortage Verified" := false;

                    //TESTFIELD("Product Group Code");
                    TestField("Sales Order No.");
                    //IF ("Prod Start date">0D) AND ("Prod Start date">=Product_Wise_Issues.PLAN_DATE) THEN
                    begin

                        if "Product Group Code" = 'FPRODUCT' then begin
                            Material_Issues_Header.Reset;
                            Material_Issues_Header.SetCurrentKey("Prod. Order No.", "Prod. Order Line No.");
                            Material_Issues_Header.SetRange("Prod. Order No.", "No.");
                            if Material_Issues_Header.FindFirst then
                                Error('Converted Production Order (Final Product) will not allow to plan');
                            Posted_Material_Issues_Header.SetCurrentKey("Prod. Order No.", "Prod. Order Line No.");
                            Posted_Material_Issues_Header.SetRange("Prod. Order No.", "No.");
                            if Posted_Material_Issues_Header.FindFirst then
                                Error('Converted Production Order (Final Product) will not allow to plan');
                        end;
                        /* IF (Planned_Units("Prod Start date")>10) AND (Planned_Units("Prod Start date")<12) THEN
                           MESSAGE('YOU ARE EXCEEDING THE 10 UNITS PLAN ON '+FORMAT("Prod Start date"))
                         ELSE IF (Planned_Units("Prod Start date")>14) THEN
                           ERROR('YOU ARE EXCEEDING THE 14 UNITS PLAN ON '+FORMAT("Prod Start date"));*///day wise production coutrol removed by anil

                        "Suppose to Plan" := false;
                        "Virtual Production Start Date" := "Prod Start date";
                    end;

                    /*  IF (Planned_Units("Prod Start date")>14) AND (Planned_Units("Prod Start date")<12) THEN
                        MESSAGE('YOU ARE EXCEEDING THE 14 UNITS PLAN ON '+FORMAT("Prod Start date"))
                      ELSE IF (Planned_Units("Prod Start date")>16) THEN
                        ERROR('YOU ARE EXCEEDING THE 16 UNITS PLAN ON '+FORMAT("Prod Start date"));*/
                end;

                //added for material requisition date updation
                "Prod. Order Component".Reset;
                ITEM.Reset;
                if UserId in ['EFFTRONICS\ANILKUMAR', 'EFFTRONICS\VSNGEETHA', 'EFFTRONICS\ANVESH', 'EFFTRONICS\GRAVI', 'EFFTRONICS\PKOTESWARARAO', 'EFFTRONICS\RENUKACH', 'EFFTRONICS\SUVARCHALADEVI', 'EFFTRONICS\GRAVI', 'EFFTRONICS\VANIDEVI', 'EFFTRONICS\DURGAMAHESWARI'] then begin
                    if ITEM.Get("Source No.") then
                        ITEM.TestField(ITEM."No.of Units");
                    if "Prod Start date" >= 0D then begin

                        /*
                         IF (Planned_Units("Prod Start date")>10) AND (Planned_Units("Prod Start date")<12) THEN
                           MESSAGE('YOU ARE EXCEEDING THE 10 UNITS PLAN ON '+FORMAT("Prod Start date"))
                         ELSE IF (Planned_Units("Prod Start date")>16) THEN
                           ERROR('YOU ARE EXCEEDING THE 16 UNITS PLAN ON '+FORMAT("Prod Start date"));
                        */
                        //   MESSAGE('HI');
                        /*IF "Prod Start date" <> CalMngmt.CalcDateBOC('+0D',"Prod Start date",3,'PROD','',3,'PROD','',FALSE) THEN  //pranavi for not allowng to select non working day on 26-10-2015
                          ERROR('You Can not select start date as '+FORMAT("Prod Start date")+' is non working day!');*/// COMMENTED FOR fINANCIAL YEAR PRODUCTION PURPOSE ON 10-02-2018
                        "Prod. Order Component".SetRange("Prod. Order Component"."Prod. Order No.", "No.");
                        if "Prod. Order Component".FindSet then begin
                            repeat
                                //    MESSAGE('HI1');
                                "Prod. Order Component"."Production Plan Date" := "Prod Start date";
                                if "Prod. Order Component"."Material Required Day" = 0 then
                                    "Prod. Order Component"."Material Requisition Date" := 0D
                                else
                                    if "Prod. Order Component"."Material Required Day" = 1 then
                                        "Prod. Order Component"."Material Requisition Date" := "Prod. Order Component"."Production Plan Date"
                                    else begin
                                        //"Prod. Order Component"."Material Requisition Date" := CALCDATE(FORMAT("Prod. Order Component"."Material Required Day" - 1) +'D',"Prod. Order Component"."Production Plan Date");
                                        "Prod. Order Component"."Material Requisition Date" := CalMngmt.CalcDateBOC('+' + Format("Prod. Order Component"."Material Required Day" - 1) + 'D', "Prod. Order Component"."Production Plan Date", 3, 'PROD', '', 3, 'PROD', '', false);  //pranavi
                                    end;
                                "Prod. Order Component".Modify;
                            until "Prod. Order Component".Next = 0;
                        end else
                            Error('PLEASE REFRESH THE PRODUCTION ORDER PROPERLY');
                    end
                    //coded by anil
                    else begin
                        //     MESSAGE('HI');
                        "Prod. Order Component".SetRange("Prod. Order Component"."Prod. Order No.", "No.");
                        if "Prod. Order Component".FindSet then
                            repeat
                                "Prod. Order Component"."Production Plan Date" := "Prod Start date";
                                "Prod. Order Component"."Material Requisition Date" := 0D;
                                "Prod. Order Component".Modify;
                            until "Prod. Order Component".Next = 0;
                    end;

                end
                else
                    Error('You Dont have rights to perform this operation');

            end;
        }
        field(90082; "Plan Shifting Date"; Date)
        {
        }
        field(90083; "Change To Specified Plan Date"; Boolean)
        {
        }
        field(90085; "No. Of Shortage Items"; Integer)
        {
            CalcFormula = Count("Item Lot Numbers" WHERE("Production Order No." = FIELD("No.")));
            FieldClass = FlowField;
        }
        field(90086; "Virtual Production Start Date"; Date)
        {
        }
        field(90087; "Suppose to Plan"; Boolean)
        {

            trigger OnValidate();
            begin
                /*
                  GL.GET;
                  IF GL."Production_ Shortage_Status"= GL."Production_ Shortage_Status"::Applied THEN
                     ERROR('YOU ALLREADY ASKED PERMISSION TO MANAGEMENT. CHANGES ALLOWED ONLY AFTER APPROVAL');
                
                  IF GL."Production_ Shortage_Status"= GL."Production_ Shortage_Status"::Accepted THEN
                     ERROR('PERMISSION WAS AUTHORIZED BY MANAGEMENT. AFTER AUTO POSTINGS ONLY MODIFICATIONS WILL BE ALLOWED');
                */

            end;
        }
        field(90088; "Authorization Status"; Boolean)
        {
        }
        field(90089; "RDSO No"; Integer)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Status,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""No.,Status"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search Description"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Low-Level Code,Replan Ref. No.,Replan Ref. Status"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source Type,Source No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Source No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Starting Date"(Key)". Please convert manually.

        key(Key1; Status, "No.")
        {
        }
        key(Key2; "No.", Status)
        {
        }
        key(Key3; "Search Description")
        {
        }
        key(Key4; "Low-Level Code", "Replan Ref. No.", "Replan Ref. Status")
        {
        }
        key(Key5; "Source Type", "Source No.")
        {
            Enabled = false;
        }
        key(Key6; "Source No.")
        {
        }
        key(Key7; "Starting Date")
        {
        }
        key(Key8; "Prod Start date")
        {
        }
        key(Key9; "Sales Order No.", "Item Sub Group Code")
        {
        }
        key(Key10; "No.")
        {
            Enabled = false;
        }
        key(Key11; "Sales Order No.", "Source No.", "Prod Start date")
        {
        }
        key(Key12; Week, "Sales Order No.", "Source No.")
        {
        }
        key(Key13; Status, "Prod Start date", "No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Status = Status::Released THEN BEGIN
      ItemLedgEntry.SETRANGE("Order Type",ItemLedgEntry."Order Type"::Production);
      ItemLedgEntry.SETRANGE("Order No.","No.");
      IF NOT ItemLedgEntry.ISEMPTY THEN
        ERROR(
          Text000,
          Status,TABLECAPTION,"No.",ItemLedgEntry.TABLECAPTION);

      CapLedgEntry.SETRANGE("Order Type",CapLedgEntry."Order Type"::Production);
      CapLedgEntry.SETRANGE("Order No.","No.");
      IF NOT CapLedgEntry.ISEMPTY THEN
        ERROR(
          Text000,
          Status,TABLECAPTION,"No.",CapLedgEntry.TABLECAPTION);
    END;

    IF Status IN [Status::Released,Status::Finished] THEN BEGIN
      PurchLine.SETRANGE("Document Type",PurchLine."Document Type"::Order);
      PurchLine.SETRANGE(Type,PurchLine.Type::Item);
      PurchLine.SETRANGE("Prod. Order No.","No.");
      IF NOT PurchLine.ISEMPTY THEN
        ERROR(
          Text000,
          Status,TABLECAPTION,"No.",PurchLine.TABLECAPTION);
    END;

    IF Status = Status::Finished THEN
      DeleteFnshdProdOrderRelations
    ELSE
      DeleteRelations;

    RefreshRecord := FALSE;
    OnAfterOnDelete(Rec,RefreshRecord);
    IF RefreshRecord THEN
      GET(Status,"No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Message(UserId);
    if not(UserId in ['EFFTRONICS\VSNGEETHA','EFFTRONICS\GRAVI','EFFTRONICS\PKOTESWARARAO','EFFTRONICS\VANIDEVI','EFFTRONICS\DURGAMAHESWARI','EFFTRONICS\SUJANI','EFFTRONICS\SUVARCHALADEVI'] ) then // added by sujani on 20-Oct-18 for restricting RPO Deletion
      Error('You Do not have rights to Delete RPO')
     else
      begin
    if Status = Status::Released then begin
      ItemLedgEntry.SetRange("Order Type",ItemLedgEntry."Order Type"::Production);
      ItemLedgEntry.SetRange("Order No.","No.");
      //ItemLedgEntry.SETCURRENTKEY("Order No.");// Rev01
      ItemLedgEntry.SetRange(ItemLedgEntry."ITL Doc No.","No.");
      if ItemLedgEntry.Find('-') then
        Error(
          Text000,
          Status,TableCaption,"No.",ItemLedgEntry.TableCaption);

      Material_Issues_Header.Reset;
      Material_Issues_Header.SetCurrentKey("Prod. Order No.","Prod. Order Line No.");
      Material_Issues_Header.SetRange("Prod. Order No.","No.");
      if Material_Issues_Header.FindFirst then
        Error(
          Text000,
          Status,TableCaption,"No.",Material_Issues_Header.TableCaption);



      CapLedgEntry.SetCurrentKey("Order Type","Order No.");
      CapLedgEntry.SetRange("Order Type",CapLedgEntry."Order Type"::Production);
      CapLedgEntry.SetRange("Order No.","No.");
      if not CapLedgEntry.IsEmpty then
        Error(
          Text000,
          Status,TableCaption,"No.",CapLedgEntry.TableCaption);

       // Added by Pranavi on 12-mar-2016
       Material_Issues_Header.Reset;
       Material_Issues_Header.SetCurrentKey("Prod. Order No.","Prod. Order Line No.");
       Material_Issues_Header.SetRange("Prod. Order No.","No.");
       if not Material_Issues_Header.FindFirst then
       begin
        Posted_Material_Issues_Header.Reset;
        Posted_Material_Issues_Header.SetCurrentKey("Prod. Order No.","Prod. Order Line No.");
        Posted_Material_Issues_Header.SetRange("Prod. Order No.","No.");
        if not Posted_Material_Issues_Header.FindFirst then
        begin
          ReservGRec.Reset;
          ReservGRec.SetRange(ReservGRec."Source ID","No.");
          if ReservGRec.FindSet then
          begin
            ReservGRec.DeleteAll;
          end;
        end;
       end;
       // End by Pranavi

    end;

    if Status in [Status::Released,Status::Finished] then begin
      PurchLine.SetRange("Document Type",PurchLine."Document Type"::Order);
      PurchLine.SetRange(Type,PurchLine.Type::Item);
      PurchLine.SetRange("Prod. Order No.","No.");
      if not PurchLine.IsEmpty then
        Error(
          Text000,
          Status,TableCaption,"No.",PurchLine.TableCaption);
    end;

    if Status = Status::Finished then
      DeleteFnshdProdOrderRelations
    else
      DeleteRelations;

      end
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
      TestNoSeries;
      NoSeriesMgt.InitSeries(GetNoSeriesCode,xRec."No. Series","Due Date","No.","No. Series");
    END;

    IF Status = Status::Released THEN BEGIN
      IF ProdOrder.GET(Status::Finished,"No.") THEN
        ERROR(Text007,Status,TABLECAPTION,ProdOrder."No.",ProdOrder.Status);
      InvtAdjmtEntryOrder.SETRANGE("Order Type",InvtAdjmtEntryOrder."Order Type"::Production);
      InvtAdjmtEntryOrder.SETRANGE("Order No.","No.");
      IF NOT InvtAdjmtEntryOrder.ISEMPTY THEN
        ERROR(Text007,Status,TABLECAPTION,ProdOrder."No.",InvtAdjmtEntryOrder.TABLECAPTION);
    END;

    InitRecord;

    "Starting Time" := MfgSetup."Normal Starting Time";
    "Ending Time" := MfgSetup."Normal Ending Time";
    "Creation Date" := TODAY;
    UpdateDatetime;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    MfgSetup.Get;
    if "No." = '' then begin
      TestNoSeries;
      NoSeriesMgt.InitSeries(GetNoSeriesCode,xRec."No. Series","Due Date","No.","No. Series");
    end;

    if Status = Status::Released then begin
      if ProdOrder.Get(Status::Finished,"No.") then
        Error(Text007,Status,TableCaption,ProdOrder."No.",ProdOrder.Status);
      InvtAdjmtEntryOrder.SetRange("Order Type",InvtAdjmtEntryOrder."Order Type"::Production);
      InvtAdjmtEntryOrder.SetRange("Order No.","No.");
      if not InvtAdjmtEntryOrder.IsEmpty then
        Error(Text007,Status,TableCaption,ProdOrder."No.",InvtAdjmtEntryOrder.TableCaption);
    end;
    #15..19
    "Creation Date" := Today;
    "Last Date Modified" := Today;
    UpdateDatetime;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := TODAY;
    IF Status = Status::Finished THEN
      ERROR(Text006);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if UpperCase(UserId)<>'06PD012' then
    begin
    "Last Date Modified" := Today;
    {  IF Status = Status::Finished THEN
        ERROR(Text006);   } //pranavi on 21-11-2015
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text001,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //ERROR(Text001,TABLECAPTION);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Source No."(Field 10).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Source No." : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Source No." : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Source No."(Field 10).OnValidate.Family(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Source No." : 99000773;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Source No." : Family;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Source No."(Field 10).OnValidate.SalesHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Source No." : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Source No." : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Code"(Field 33).OnValidate.WhseIntegrationMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemLedgEntry : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemLedgEntry : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.CapLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.CapLedgEntry : 5832;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.CapLedgEntry : "Capacity Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PurchLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PurchLine : 39;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PurchLine : "Purchase Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnInsert.InvtAdjmtEntryOrder(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnInsert.InvtAdjmtEntryOrder : 5896;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnInsert.InvtAdjmtEntryOrder : "Inventory Adjmt. Entry (Order)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckProdOrderStatus(PROCEDURE 3).ItemLedgEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckProdOrderStatus : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckProdOrderStatus : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckProdOrderStatus(PROCEDURE 3).CapLedgEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckProdOrderStatus : 5832;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckProdOrderStatus : "Capacity Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteRelations(PROCEDURE 2).ProdOrderComment(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteRelations : 5414;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteRelations : "Prod. Order Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteRelations(PROCEDURE 2).WhseRequest(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteRelations : 7325;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteRelations : "Whse. Pick Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteRelations(PROCEDURE 2).ReservMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteRelations : 99000845;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteRelations : "Reservation Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteFnshdProdOrderRelations(PROCEDURE 12).FnshdProdOrderRtngLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteFnshdProdOrderRelations : 5409;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteFnshdProdOrderRelations : "Prod. Order Routing Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteFnshdProdOrderRelations(PROCEDURE 12).FnshdProdOrderLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteFnshdProdOrderRelations : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteFnshdProdOrderRelations : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteFnshdProdOrderRelations(PROCEDURE 12).FnshdProdOrderComp(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteFnshdProdOrderRelations : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteFnshdProdOrderRelations : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteFnshdProdOrderRelations(PROCEDURE 12).FnshdProdOrderRtngTool(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteFnshdProdOrderRelations : 5411;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteFnshdProdOrderRelations : "Prod. Order Routing Tool";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteFnshdProdOrderRelations(PROCEDURE 12).FnshdProdOrderRtngPers(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteFnshdProdOrderRelations : 5412;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteFnshdProdOrderRelations : "Prod. Order Routing Personnel";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteFnshdProdOrderRelations(PROCEDURE 12).FnshdProdOrderRtngQltyMeas(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteFnshdProdOrderRelations : 5413;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteFnshdProdOrderRelations : "Prod. Order Rtng Qlty Meas.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteFnshdProdOrderRelations(PROCEDURE 12).FnshdProdOrderComment(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteFnshdProdOrderRelations : 5414;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteFnshdProdOrderRelations : "Prod. Order Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteFnshdProdOrderRelations(PROCEDURE 12).FnshdProdOrderRtngCmt(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteFnshdProdOrderRelations : 5415;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteFnshdProdOrderRelations : "Prod. Order Rtng Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteFnshdProdOrderRelations(PROCEDURE 12).FnshdProdOrderBOMComment(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteFnshdProdOrderRelations : 5416;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteFnshdProdOrderRelations : "Prod. Order Comp. Cmt Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AdjustStartEndingDate(PROCEDURE 1).EarliestLatestProdOrderLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AdjustStartEndingDate : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AdjustStartEndingDate : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Navigate(PROCEDURE 9).NavigateForm(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Navigate : 344;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Navigate : Navigate;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreatePick(PROCEDURE 7300).ProdOrderCompLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePick : 5407;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePick : "Prod. Order Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreatePick(PROCEDURE 7300).WhseWkshLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePick : 7326;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePick : "Whse. Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreatePick(PROCEDURE 7300).CreatePickFromWhseSource(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePick : 7305;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePick : "Whse.-Source - Create Document";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreatePick(PROCEDURE 7300).ItemTrackingMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreatePick : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreatePick : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInvtPutAwayPick(PROCEDURE 29).WhseRequest(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInvtPutAwayPick : 5765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInvtPutAwayPick : "Warehouse Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultBin(PROCEDURE 50).WMSManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultBin : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultBin : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MfgSetup(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MfgSetup : 99000765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MfgSetup : "Manufacturing Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrder(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdOrder : 5405;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdOrder : "Production Order";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderLine(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdOrderLine : 5406;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdOrderLine : "Prod. Order Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcProdOrder(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcProdOrder : 99000773;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcProdOrder : "Calculate Prod. Order";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LeadTimeMgt(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LeadTimeMgt : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LeadTimeMgt : "Lead-Time Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemTrackingMgt(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTrackingMgt : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTrackingMgt : "Item Tracking Management";
    //Variable type has not been exported.

    var
        SalesLine: Record "Sales Line";
        ProdOrderQty: Decimal;
        Text091: Label 'Number of Production Orders against Sales Order Exceeded';
        "--SH1.0--": Integer;
        Schedule: Record Schedule2;
        "Prod. Order Component": Record "Prod. Order Component";

    var
        Product_Wise_Issues: Page Areas;
        Material_Issues_Header: Record "Material Issues Header";
        Posted_Material_Issues_Header: Record "Posted Material Issues Header";
        SALES_HEADER: Record "Sales Header";
        ITEM_LEAD_TIME: Integer;
        ITEM: Record Item;
        ITEM_LEAD_TEMP: Text[30];

    var
        GL: Record "General Ledger Setup";
        CalMngmt: Codeunit "Calendar Management";
        SalesDocType: Text;
        SLt: Record "Sales Line";
        ReservGRec: Record "Reservation Entry";
        Items: Record Item;
}

