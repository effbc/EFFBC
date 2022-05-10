tableextension 70081 ProdOrderRoutingLineExt extends "Prod. Order Routing Line"
{
    // version NAVW19.00.00.50528,QC1.0,QCB2B1.2,QC1.2,B2B

    fields
    {

        //Unsupported feature: Change Editable on ""Routing Reference No."(Field 3)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Operation No."(Field 4)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""No."(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on ""Work Center No."(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Work Center Group Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change Editable on ""Routing Link Code"(Field 34)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sequence No. (Forward)"(Field 50)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sequence No. (Backward)"(Field 51)". Please convert manually.


        //Unsupported feature: Change Editable on ""Fixed Scrap Qty. (Accum.)"(Field 52)". Please convert manually.


        //Unsupported feature: Change Editable on ""Scrap Factor % (Accumulated)"(Field 53)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sequence No. (Actual)"(Field 55)". Please convert manually.


        //Unsupported feature: Change OptionString on "Status(Field 74)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Prod. Order No."(Field 75)". Please convert manually.


        //Unsupported feature: Change Editable on ""Prod. Order No."(Field 75)". Please convert manually.


        //Unsupported feature: Change Editable on ""Critical Path"(Field 78)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Routing Status"(Field 79)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Operation Cost Amt."(Field 90)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Capacity Need"(Field 91)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expected Capacity Ovhd. Cost"(Field 96)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Location Code"(Field 101)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location Code"(Field 101)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Open Shop Floor Bin Code"(Field 7301)". Please convert manually.


        //Unsupported feature: Change Editable on ""Open Shop Floor Bin Code"(Field 7301)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""To-Production Bin Code"(Field 7302)". Please convert manually.


        //Unsupported feature: Change Editable on ""To-Production Bin Code"(Field 7302)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""From-Production Bin Code"(Field 7303)". Please convert manually.


        //Unsupported feature: Change Editable on ""From-Production Bin Code"(Field 7303)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 8).OnValidate". Please convert manually.

        //trigger "(Field 8)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("No." <> xRec."No.") AND (xRec."No." <> '') THEN
          IF SubcontractPurchOrderExist THEN
            ERROR(
        #4..22
              MachineCtrTransferFields;
            END;
        END;
        ModifyCapNeedEntries;

        GetLine;
        IF (ProdOrderLine."Routing Type" = ProdOrderLine."Routing Type"::Serial) OR (xRec."No." <> '') THEN
          CalcStartingEndingDates(Direction::Forward);

        OnAfterValidateNo(Rec,xRec,ProdOrderLine);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..25
        //ModifyCapNeedEntries; // commented by santhosh for testing
        #27..29

        OnAfterValidateNo(Rec,xRec,ProdOrderLine);
        //  CalcStartingEndingDates(Direction::Forward);   // commented by santhosh for testing
        */
        //end;
        field(60001; "Operation Description"; Text[50])
        {
            Description = 'B2B';
        }
        field(60002; "Item No."; Code[20])
        {
            Description = 'B2B';
        }
        field(60003; Move; Boolean)
        {
            Description = 'B2B';
        }
        field(60004; "Total Time"; Decimal)
        {
            Description = 'B2B';
        }
        field(60005; "Item Description"; Text[50])
        {
            Description = 'B2B,length changed from 30-50(sundar)';
        }
        field(60100; "Allocated Qty.1"; Code[20])
        {
        }
        field(60101; "Person.2"; Code[20])
        {
            TableRelation = IF (Type = CONST(Work Center)) "Work Center" ELSE IF (Type=CONST(Machine Center)) "Machine Center";
        }
        field(60102; "Allocated Qty.2"; Code[20])
        {
        }
        field(60103; "Person.3"; Code[20])
        {
            TableRelation = IF (Type = CONST(Work Center)) "Work Center" ELSE IF (Type=CONST(Machine Center)) "Machine Center";
        }
        field(60104; "Allocated Qty.3"; Code[20])
        {
        }
        field(60105; "Person.4"; Code[20])
        {
            TableRelation = IF (Type = CONST(Work Center)) "Work Center" ELSE IF (Type=CONST(Machine Center)) "Machine Center";
        }
        field(60106; "Allocated Qty.4"; Code[20])
        {
        }
        field(60107; "Person.5"; Code[20])
        {
            TableRelation = IF (Type = CONST(Work Center)) "Work Center" ELSE IF (Type=CONST(Machine Center)) "Machine Center";
        }
        field(60108; "Allocated Qty.5"; Code[20])
        {
        }
        field(60109; PlannedStartDate; Date)
        {
            Description = 'Added by sujani for Routing day wise activities calculation';
            Editable = false;
        }
        field(33000250; "Sub Assembly"; Code[20])
        {
            TableRelation = "Sub Assembly";

            trigger OnValidate();
            begin
                IF "Sub Assembly" = '' THEN BEGIN
                    "Spec Id" := '';
                    "QC Enabled" := FALSE;
                END ELSE BEGIN
                    SubAssembly.GET("Sub Assembly");
                    "Spec Id" := SubAssembly."Spec Id";
                    //B2B
                    //Hot Fix 1.0
                    IF "Spec Id" <> '' THEN
                        "Spec Version Code" := GetSpecVersion;
                    //Hot Fix 1.0
                    //B2B
                    "QC Enabled" := SubAssembly."QC Enabled";
                    "Sub Assembly Description" := SubAssembly.Description;
                END;
            end;
        }
        field(33000251; Quantity; Decimal)
        {
        }
        field(33000252; "Spec Id"; Code[20])
        {
            TableRelation = "Specification Header";
        }
        field(33000253; "QC Enabled"; Boolean)
        {
        }
        field(33000254; "Sub Assembly Unit Of Meas.Code"; Code[20])
        {
            TableRelation = "Sub Assembly Unit of Measure".Code;
        }
        field(33000255; "Qty.To Produce"; Decimal)
        {

            trigger OnValidate();
            begin
                IF "Qty.To Produce" < 0 THEN
                    ERROR('Qty.To be  Produced should not be Negative');
                IF "Qty.To Produce" + "Quantity Produced" > Quantity THEN
                    MESSAGE('Quantity To Produce and Quantity Produced is more than Quantity');
            end;
        }
        field(33000256; "Quantity Produced"; Decimal)
        {

            trigger OnValidate();
            begin
                "Qty.To Produce" := Quantity - "Quantity Produced";
            end;
        }
        field(33000257; "Sub Assembly Description"; Text[30])
        {
        }
        field(33000258; "Spec Version Code"; Code[20])
        {
        }
        field(33000259; "Quantity Sent To Quality"; Decimal)
        {
            Description = 'B2B 1.1';
        }
        field(33000260; "Quantity Accepted"; Decimal)
        {
            CalcFormula = Sum("Quality Ledger Entry".Quantity WHERE(Source Type=FILTER(WIP), Order No.=FIELD(Prod. Order No.), Order Line No.=FIELD(Routing Reference No.), Entry Type=FILTER(Accepted), Operation No.=FIELD(Operation No.)));
            Description = 'B2B 1.1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33000261;"Quantity Rejected";Decimal)
        {
            Description = 'B2B 1.1';
        }
        field(33000262;"Quantity Rework";Decimal)
        {
            Description = 'B2B 1.1';
        }
        field(33000263;"Newly Added Opearation";Boolean)
        {
            Description = 'B2B 1.1,QCB2B1.2';
        }
        field(33000264;"Prev. Qty";Decimal)
        {
            Description = 'B2B 1.1,QCB2B1.2';
        }
        field(33000265;"QAS/MPR";Option)
        {
            Description = 'B2B 1.1,QCB2B1.2';
            OptionCaption = '" ,QAS,MPR"';
            OptionMembers = " ",QAS,MPR;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Routing Reference No.,Routing No.,Operation No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Prod. Order No.,Routing Reference No.,Status,Routing No.,Operation No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Routing Reference No.,Routing No.,Sequence No. (Forward)"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Routing Reference No.,Routing No.,Sequence No. (Backward)"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Prod. Order No.,Routing Reference No.,Routing No.,Sequence No. (Actual)"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Work Center No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No.,Starting Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Status,Work Center No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Prod. Order No.,Status,Flushing Method"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Starting Date,Starting Time,Routing Status"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Ending Date,Ending Time,Routing Status"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No.,Status"(Key)". Please convert manually.

        key(Key1;Status,"Prod. Order No.","Routing Reference No.","Routing No.","Operation No.")
        {
        }
        key(Key2;"Prod. Order No.","Routing Reference No.",Status,"Routing No.","Operation No.")
        {
        }
        key(Key3;Status,"Prod. Order No.","Routing Reference No.","Routing No.","Sequence No. (Forward)")
        {
        }
        key(Key4;Status,"Prod. Order No.","Routing Reference No.","Routing No.","Sequence No. (Backward)")
        {
        }
        key(Key5;Status,"Prod. Order No.","Routing Reference No.","Routing No.","Sequence No. (Actual)")
        {
            SumIndexFields = "Expected Operation Cost Amt.";
        }
        key(Key6;"Work Center No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Expected Operation Cost Amt.";
        }
        key(Key7;Type,"No.","Starting Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Expected Operation Cost Amt.";
        }
        key(Key8;Status,"Work Center No.")
        {
            SumIndexFields = "Expected Operation Cost Amt.";
        }
        key(Key9;"Prod. Order No.",Status,"Flushing Method")
        {
        }
        key(Key10;"Starting Date","Starting Time","Routing Status")
        {
        }
        key(Key11;"Ending Date","Ending Time","Routing Status")
        {
        }
        key(Key12;Type,"No.",Status)
        {
            SumIndexFields = "Expected Operation Cost Amt.";
        }
        key(Key13;Status,"Prod. Order No.","Routing Reference No.","Starting Date")
        {
        }
        key(Key14;Status,"Starting Date","Routing Reference No.","Operation No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        IF Status = Status::Finished THEN
          ERROR(Text006,Status,TABLECAPTION);

        UpdateComponentsBin(1); // from trigger = modify
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        {
        IF Status = Status::Finished THEN
          ERROR(Text006,Status,TABLECAPTION);
        }
        UpdateComponentsBin(1); // from trigger = modify
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
        {ERROR(Text001,TABLECAPTION);}
        */
    //end;

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


    //Unsupported feature: PropertyModification on ""Standard Task Code"(Field 35).OnValidate.StdTaskTool(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Standard Task Code" : 99000781;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Standard Task Code" : "Standard Task Tool";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Standard Task Code"(Field 35).OnValidate.StdTaskPersonnel(Variable 1002)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Standard Task Code" : 99000782;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Standard Task Code" : "Standard Task Personnel";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Standard Task Code"(Field 35).OnValidate.StdTaskQltyMeasure(Variable 1003)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Standard Task Code" : 99000784;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Standard Task Code" : "Standard Task Quality Measure";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Standard Task Code"(Field 35).OnValidate.StdTaskComment(Variable 1004)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Standard Task Code" : 99000783;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Standard Task Code" : "Standard Task Description";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Routing Status"(Field 79).OnValidate.ProdOrderCapacityNeed(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Routing Status" : 5410;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Routing Status" : "Prod. Order Capacity Need";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.CapLedgEntry(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //OnDelete.CapLedgEntry : 5832;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //OnDelete.CapLedgEntry : "Capacity Ledger Entry";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Caption(PROCEDURE 12).ProdOrder(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //Caption : 5405;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Caption : "Production Order";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcStartingEndingDates(PROCEDURE 17).ReservationCheckDateConfl(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CalcStartingEndingDates : 99000815;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalcStartingEndingDates : "Reservation-Check Date Confl.";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalculateRoutingBack(PROCEDURE 10).ProdOrderLine(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CalculateRoutingBack : 5406;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalculateRoutingBack : "Prod. Order Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalculateRoutingBack(PROCEDURE 10).ProdOrderRtngLine(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CalculateRoutingBack : 5409;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalculateRoutingBack : "Prod. Order Routing Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalculateRoutingForward(PROCEDURE 9).ProdOrderLine(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CalculateRoutingForward : 5406;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalculateRoutingForward : "Prod. Order Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalculateRoutingForward(PROCEDURE 9).ProdOrderRtngLine(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CalculateRoutingForward : 5409;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalculateRoutingForward : "Prod. Order Routing Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AdjustComponents(PROCEDURE 14).ProdOrderComp(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //AdjustComponents : 5407;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //AdjustComponents : "Prod. Order Component";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckPreviousAndNext(PROCEDURE 18).ProdOrderRtngLine(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CheckPreviousAndNext : 5409;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckPreviousAndNext : "Prod. Order Routing Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckPreviousAndNext(PROCEDURE 18).TempDeletedProdOrderRtngLine(Variable 1002)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CheckPreviousAndNext : 5409;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckPreviousAndNext : "Prod. Order Routing Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckPreviousAndNext(PROCEDURE 18).TempRemainingProdOrderRtngLine(Variable 1003)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CheckPreviousAndNext : 5409;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckPreviousAndNext : "Prod. Order Routing Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckPreviousAndNext(PROCEDURE 18).ProdOrderRoutingForm(Variable 1006)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CheckPreviousAndNext : 99000817;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckPreviousAndNext : "Prod. Order Routing";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetPreviousAndNext(PROCEDURE 34).ProdOrderRtngLine(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //SetPreviousAndNext : 5409;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SetPreviousAndNext : "Prod. Order Routing Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetNextOperations(PROCEDURE 4).RtngLine2(Variable 1003)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //SetNextOperations : 5409;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SetNextOperations : "Prod. Order Routing Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateComponentsBin(PROCEDURE 16).TempProdOrderRtngLine(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //UpdateComponentsBin : 5409;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UpdateComponentsBin : "Prod. Order Routing Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PopulateNewRoutingLineSet(PROCEDURE 20).ProdOrderRtngLine2(Variable 1002)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //PopulateNewRoutingLineSet : 5409;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //PopulateNewRoutingLineSet : "Prod. Order Routing Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShiftTimeForwardOnParentProdOrderLines(PROCEDURE 29).ParentProdOrderLine(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ShiftTimeForwardOnParentProdOrderLines : 5406;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ShiftTimeForwardOnParentProdOrderLines : "Prod. Order Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShiftTimeForwardOnParentProdOrderLines(PROCEDURE 29).ProdOrderComponent(Variable 1003)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ShiftTimeForwardOnParentProdOrderLines : 5407;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ShiftTimeForwardOnParentProdOrderLines : "Prod. Order Component";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShiftTimeForwardOnParentProdOrderLines(PROCEDURE 29).ReservationCheckDateConfl(Variable 1002)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ShiftTimeForwardOnParentProdOrderLines : 99000815;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ShiftTimeForwardOnParentProdOrderLines : "Reservation-Check Date Confl.";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoTerminationProcessesExist(PROCEDURE 32).ProdOrderRoutingLine(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //NoTerminationProcessesExist : 5409;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //NoTerminationProcessesExist : "Prod. Order Routing Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WorkCenter(Variable 1006)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //WorkCenter : 99000754;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //WorkCenter : "Work Center";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MachineCenter(Variable 1007)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //MachineCenter : 99000758;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //MachineCenter : "Machine Center";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderLine(Variable 1008)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ProdOrderLine : 5406;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ProdOrderLine : "Prod. Order Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderRtngLine(Variable 1009)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ProdOrderRtngLine : 5409;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ProdOrderRtngLine : "Prod. Order Routing Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderRoutTool(Variable 1010)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ProdOrderRoutTool : 5411;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ProdOrderRoutTool : "Prod. Order Routing Tool";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderRtngPersonnel(Variable 1011)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ProdOrderRtngPersonnel : 5412;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ProdOrderRtngPersonnel : "Prod. Order Routing Personnel";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderRtngQltyMeas(Variable 1012)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ProdOrderRtngQltyMeas : 5413;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ProdOrderRtngQltyMeas : "Prod. Order Rtng Qlty Meas.";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderRtngComment(Variable 1013)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ProdOrderRtngComment : 5415;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ProdOrderRtngComment : "Prod. Order Rtng Comment Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1005)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //GLSetup : 98;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GLSetup : "General Ledger Setup";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderCapNeed(Variable 1014)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ProdOrderCapNeed : 5410;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ProdOrderCapNeed : "Prod. Order Capacity Need";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PurchLine(Variable 1021)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //PurchLine : 39;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //PurchLine : "Purchase Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TempErrorMessage(Variable 1026)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //TempErrorMessage : 700;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //TempErrorMessage : "Error Message";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcProdOrder(Variable 1015)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CalcProdOrder : 99000773;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalcProdOrder : "Calculate Prod. Order";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdOrderRouteMgt(Variable 1016)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ProdOrderRouteMgt : 99000772;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ProdOrderRouteMgt : "Prod. Order Route Management";
        //Variable type has not been exported.

    var
        "--QC1--" : Integer;
        SubAssembly : Record "Sub Assembly";
        "------" : Integer;
        "Prod.OrderLine" : Record "Prod. Order Line";
}

