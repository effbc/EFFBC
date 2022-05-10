tableextension 70095 ServiceItemLineExt extends "Service Item Line"
{
    // version NAVW19.00.00.48992

    fields
    {

        //Unsupported feature: Change TableRelation on ""Document No."(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Document No."(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Service Item No."(Field 3)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Item No."(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Contract No."(Field 26)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Location of Service Item"(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location of Service Item"(Field 27)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Loaner No."(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Fault Code"(Field 35)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Fault Comment"(Field 37)". Please convert manually.


        //Unsupported feature: Change Editable on ""Fault Comment"(Field 37)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Resolution Comment"(Field 38)". Please convert manually.


        //Unsupported feature: Change Editable on ""Resolution Comment"(Field 38)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 40)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Service Item Loaner Comment"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Service Item Loaner Comment"(Field 41)". Please convert manually.


        //Unsupported feature: Change Editable on ""Document Type"(Field 43)". Please convert manually.


        //Unsupported feature: Change Editable on ""Serv. Price Adjmt. Gr. Code"(Field 44)". Please convert manually.


        //Unsupported feature: Change Editable on ""Adjustment Type"(Field 45)". Please convert manually.


        //Unsupported feature: Change Editable on ""Base Amount to Adjust"(Field 46)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Active/Finished Allocs"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Active/Finished Allocs"(Field 60)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Allocations"(Field 61)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Allocations"(Field 61)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Previous Services"(Field 62)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Previous Services"(Field 62)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Contract Line No."(Field 63)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 64)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ship-to Code"(Field 64)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Customer No."(Field 65)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer No."(Field 65)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Allocation Status Filter"(Field 96)". Please convert manually.


        //Unsupported feature: Change Editable on ""Responsibility Center"(Field 97)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Service Order Filter"(Field 98)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 100)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 101)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Release Status"(Field 130)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: CodeModification on ""Service Item No."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Loaner No." <> '' THEN
          ERROR(Text055,FIELDCAPTION("Service Item No."),
            FIELDCAPTION("Loaner No."),"Loaner No.");

        IF "Service Item No." <> xRec."Service Item No." THEN BEGIN
          IF CheckServLineExist THEN
            ERROR(
              Text011,
              FIELDCAPTION("Service Item No."),TABLECAPTION,ServLine.TABLECAPTION);
        END ELSE BEGIN
          CreateDim(
            DATABASE::"Service Item","Service Item No.",
            DATABASE::"Service Item Group","Service Item Group Code",
            DATABASE::"Responsibility Center","Responsibility Center");

          IF ServItem.GET("Service Item No.") THEN BEGIN
            SetServItemInfo(ServItem);
            IF "Contract No." = '' THEN
              VALIDATE("Service Price Group Code",ServItem."Service Price Group Code");
            "Service Item Group Code" := ServItem."Service Item Group Code";
          END;

          EXIT;
        END;

        IF "Service Item No." = '' THEN BEGIN
          IF xRec."Service Item No." <> "Service Item No." THEN BEGIN
            VALIDATE("Warranty Starting Date (Parts)",0D);
            VALIDATE("Warranty Starting Date (Labor)",0D);
            VALIDATE("Contract No.",'');
            VALIDATE("Serial No.",'');
          END;
          EXIT;
        END;

        ServContractExist := FALSE;
        ServHeader.GET("Document Type","Document No.");
        IF ServItem.GET("Service Item No.") THEN BEGIN
          IF ServHeader."Customer No." <> ServItem."Customer No." THEN
            ERROR(
              Text012,
              ServItem.TABLECAPTION,"Service Item No.",ServHeader.FIELDCAPTION("Customer No."),ServHeader."Customer No.");

          IF ServHeader."Contract No." <> '' THEN BEGIN
            ServHeader.TESTFIELD("Order Date");
            ServContractLine.RESET;
            ServContractLine.SETRANGE("Contract Type",ServContractLine."Contract Type"::Contract);
            ServContractLine.SETRANGE("Contract No.",ServHeader."Contract No.");
            ServContractLine.SETRANGE("Service Item No.","Service Item No.");
            IF NOT ServContractLine.FINDFIRST THEN
              ERROR(Text050,ServHeader."Contract No.","Service Item No.");
            ServContractLine.ValidateServicePeriod(ServHeader."Order Date");
            ServContractExist := TRUE;
          END;

          IF ServHeader."Contract No." = '' THEN BEGIN
            ServContractLine.RESET;
            ServContractLine.FILTERGROUP(2);
            ServContractLine.SETCURRENTKEY("Service Item No.","Contract Status");
            ServContractLine.SETRANGE("Service Item No.",ServItem."No.");
            ServContractLine.SETRANGE("Contract Status",ServContractLine."Contract Status"::Signed);
            ServContractLine.SETRANGE("Contract Type",ServContractLine."Contract Type"::Contract);
            ServContractLine.SETRANGE("Customer No.",ServHeader."Customer No.");
            ServContractLine.SETFILTER("Starting Date",'<=%1',ServHeader."Order Date");
            ServContractLine.SETFILTER("Contract Expiration Date",'>=%1 | =%2',ServHeader."Order Date",0D);
            ServContractLine.FILTERGROUP(0);

            IF ServContractLine.FIND('-') THEN
              IF ServContractLine.NEXT > 0 THEN BEGIN
                IF ConfirmManagement.ConfirmProcessUI(
                     STRSUBSTNO(Text047,"Service Item No."),TRUE)
                THEN BEGIN
                  ServContractList.SETTABLEVIEW(ServContractLine);
                  ServContractList.LOOKUPMODE(TRUE);
                  IF ServContractList.RUNMODAL = ACTION::LookupOK THEN BEGIN
                    ServContractList.GETRECORD(ServContractLine);
                    ServContractExist := TRUE;
                  END;
                END;
              END ELSE BEGIN
                ServContractLine.FINDFIRST;
                ServContractExist := TRUE;
              END;
          END;

          IF (ServItem."Ship-to Code" <> ServHeader."Ship-to Code") AND NOT HideDialogBox THEN
            IF NOT ConfirmManagement.ConfirmProcess(
                 STRSUBSTNO(
                   Text040,ServItem.TABLECAPTION,
                   FIELDCAPTION("Ship-to Code"),Cust.TABLECAPTION),TRUE)
            THEN BEGIN
              "Service Item No." := xRec."Service Item No.";
              EXIT;
            END;
          "Ship-to Code" := ServItem."Ship-to Code";
          SetServItemInfo(ServItem);

          IF ServContractExist THEN
            VALIDATE("Contract No.",ServContractLine."Contract No.")
          ELSE
            VALIDATE("Contract No.",'');

          IF "Contract No." = '' THEN
            VALIDATE("Service Price Group Code",ServItem."Service Price Group Code");
          VALIDATE("Service Item Group Code",ServItem."Service Item Group Code");
        END;

        IF ServItemLine.GET("Document Type","Document No.","Line No.") THEN BEGIN
          UseServItemLineAsxRec := TRUE;
          MODIFY(TRUE);
        END;
        UpdateResponseTimeHours;
        CreateDim(
          DATABASE::"Service Item","Service Item No.",
          DATABASE::"Service Item Group","Service Item Group Code",
          DATABASE::"Responsibility Center","Responsibility Center");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Loaner No." <> '' then
          Error(Text055,FieldCaption("Service Item No."),
            FieldCaption("Loaner No."),"Loaner No.");

        if "Service Item No." <> xRec."Service Item No." then begin
          if CheckServLineExist then
            Error(
              Text011,
              FieldCaption("Service Item No."),TableCaption,ServLine.TableCaption);
        end else begin
        #11..15
          if ServItem.Get("Service Item No.") then begin
            SetServItemInfo(ServItem);
            if "Contract No." = '' then
              Validate("Service Price Group Code",ServItem."Service Price Group Code");
            "Service Item Group Code" := ServItem."Service Item Group Code";
          end;

          exit;
        end;

        if "Service Item No." = '' then begin
          if xRec."Service Item No." <> "Service Item No." then begin
            Validate("Warranty Starting Date (Parts)",0D);
            Validate("Warranty Starting Date (Labor)",0D);
            Validate("Contract No.",'');
            Validate("Serial No.",'');
          end;
          exit;
        end;

        ServContractExist := false;
        ServHeader.Get("Document Type","Document No.");
        if ServItem.Get("Service Item No.") then begin
          {IF ServHeader."Customer No." <> ServItem."Customer No." THEN
            ERROR(
              Text012,
              ServItem.TABLECAPTION,"Service Item No.",ServHeader.FIELDCAPTION("Customer No."),ServHeader."Customer No.");}
           Station:=ServItem.Station;
          Zone:=ServItem.Zone;
          Division:=ServItem.Division;
          Station:=ServItem.Station;
          if ServHeader."Contract No." <> '' then begin
            ServHeader.TestField("Order Date");
            ServContractLine.Reset;
            ServContractLine.SetRange("Contract Type",ServContractLine."Contract Type"::Contract);
            ServContractLine.SetRange("Contract No.",ServHeader."Contract No.");
            ServContractLine.SetRange("Service Item No.","Service Item No.");
            if not ServContractLine.FindFirst then
              Error(Text050,ServHeader."Contract No.","Service Item No.");
            ServContractLine.ValidateServicePeriod(ServHeader."Order Date");
            ServContractExist := true;
          end;
          Item.SetFilter(Item."No.","Item No.");
          if Item.Find('-') then
          begin
            "Unit cost":=Item."Avg Unit Cost";
             Description := Item.Description;
          end;
          //b2b-eff

          "Countrol Section":=ServItem."Countrol Section";
          "N/W Stand Alone":=ServItem."N/W Stand Alone";
          IDNO:=ServItem.IDNO;
          "S/W Version":=ServItem."S/W Version";
          "F/W Version":=ServItem."F/W Version";
          "H/W Process Type":=ServItem."H/W Process Type";
          "Operating Voltage":=ServItem."Operating Voltage";
          "Supply Giving From":=ServItem."Supply Giving From";
          "Earth Status":=ServItem."Earth Status";
          "Communication Media":=ServItem."Communication Media";
          "Warr/AMC/None":=ServItem."Warr/AMC/None";
          "AMC Order No":=ServItem."AMC Order NO";
          //b2b-eff


          Priority := ServItem.Priority;
          "Vendor No." := ServItem."Vendor No.";
          "Vendor Item No." := ServItem."Vendor Item No.";
          CheckWarranty(ServHeader."Order Date");

          if ServHeader."Contract No." = '' then begin
            ServContractLine.Reset;
            ServContractLine.FilterGroup(2);
            ServContractLine.SetCurrentKey("Service Item No.","Contract Status");
            ServContractLine.SetRange("Service Item No.",ServItem."No.");
            ServContractLine.SetRange("Contract Status",ServContractLine."Contract Status"::Signed);
            ServContractLine.SetRange("Contract Type",ServContractLine."Contract Type"::Contract);
            ServContractLine.SetRange("Customer No.",ServHeader."Customer No.");
            ServContractLine.SetFilter("Starting Date",'<=%1',ServHeader."Order Date");
            ServContractLine.SetFilter("Contract Expiration Date",'>=%1 | =%2',ServHeader."Order Date",0D);
            ServContractLine.FilterGroup(0);

            if ServContractLine.Find('-') then
              if ServContractLine.Next > 0 then begin
                if ConfirmManagement.ConfirmProcessUI(
                     StrSubstNo(Text047,"Service Item No."),true)
                then begin
                  ServContractList.SetTableView(ServContractLine);
                  ServContractList.LookupMode(true);
                  if ServContractList.RunModal = ACTION::LookupOK then begin
                    ServContractList.GetRecord(ServContractLine);
                    ServContractExist := true;
                  end;
                end;
              end else begin
                ServContractLine.FindFirst;
                ServContractExist := true;
              end;
          end;

          if (ServItem."Ship-to Code" <> ServHeader."Ship-to Code") and not HideDialogBox then
            if not ConfirmManagement.ConfirmProcess(
                 StrSubstNo(
                   Text040,ServItem.TableCaption,
                   FieldCaption("Ship-to Code"),Cust.TableCaption),true)
            then begin
              "Service Item No." := xRec."Service Item No.";
              exit;
            end;
        #95..97
          if ServContractExist then
            Validate("Contract No.",ServContractLine."Contract No.")
          else
            Validate("Contract No.",'');

          if "Contract No." = '' then
            Validate("Service Price Group Code",ServItem."Service Price Group Code");
          Validate("Service Item Group Code",ServItem."Service Item Group Code");
        end;

        if ServItemLine.Get("Document Type","Document No.","Line No.") then begin
          UseServItemLineAsxRec := true;
          Modify(true);
        end;
        #112..116
        */
        //end;


        //Unsupported feature: CodeModification on ""Service Item Group Code"(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Service Item Group Code" <> xRec."Service Item Group Code" THEN BEGIN
          IF "Service Item No." <> '' THEN BEGIN
            ServItem.GET("Service Item No.");
            TESTFIELD("Service Item Group Code",ServItem."Service Item Group Code");
          END;
          IF ServItemGr.GET("Service Item Group Code") THEN BEGIN
            IF ("Item No." = '') AND (Description = '') THEN
              Description := ServItemGr.Description;
            IF ServItem."Service Price Group Code" = '' THEN
              IF "Contract No." = '' THEN
                VALIDATE("Service Price Group Code",ServItemGr."Default Serv. Price Group Code");
          END;
        END;
        UpdateResponseTimeHours;

        CreateDim(
          DATABASE::"Service Item Group","Service Item Group Code",
          DATABASE::"Service Item","Service Item No.",
          DATABASE::"Responsibility Center","Responsibility Center");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Service Item Group Code" <> xRec."Service Item Group Code" then begin
          if "Service Item No." <> '' then begin
            ServItem.Get("Service Item No.");
            TestField("Service Item Group Code",ServItem."Service Item Group Code");
          end;
          if ServItemGr.Get("Service Item Group Code") then begin
            if ("Item No." = '') and (Description = '') then
              Description := ServItemGr.Description;
            if ServItem."Service Price Group Code" = '' then
              if "Contract No." = '' then
                Validate("Service Price Group Code",ServItemGr."Default Serv. Price Group Code");
          end;
        end;
        #14..19
        */
        //end;


        //Unsupported feature: CodeModification on ""Item No."(Field 5).OnValidate". Please convert manually.

        //trigger "(Field 5)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Service Item No." <> '' THEN
          ERROR(Text016,
            FIELDCAPTION("Item No."),FIELDCAPTION("Service Item No."));
        IF "Item No." <> '' THEN BEGIN
          Item.GET("Item No.");
          VALIDATE("Service Item Group Code",Item."Service Item Group");
          GetServHeader;
          IF (ServHeader."Language Code" = '') OR NOT GetItemTranslation THEN BEGIN
            Description := Item.Description;
            "Description 2" := Item."Description 2";
          END;
          OnAfterAssignItemValues(Rec,xRec,Item,ServHeader,CurrFieldNo);
        END ELSE BEGIN
          Description := '';
          "Description 2" := '';
        END;
        UpdateResponseTimeHours;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Service Item No." <> '' then
          Error(Text016,
            FieldCaption("Item No."),FieldCaption("Service Item No."));
        if "Item No." <> '' then begin
          Item.Get("Item No.");
          Validate("Service Item Group Code",Item."Service Item Group");
          GetServHeader;
          if (ServHeader."Language Code" = '') or not GetItemTranslation then begin
            Description := Item.Description;
            "Description 2" := Item."Description 2";
          end;
          OnAfterAssignItemValues(Rec,xRec,Item,ServHeader,CurrFieldNo);
        end else begin
          Description := '';
          "Description 2" := '';
        end;
        UpdateResponseTimeHours;
        */
        //end;


        //Unsupported feature: CodeModification on ""Serial No."(Field 6).OnValidate". Please convert manually.

        //trigger "(Field 6)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IsHandled := FALSE;
        OnBeforeValidateSerialNo(Rec,xRec,CurrFieldNo,IsHandled);
        IF IsHandled THEN
          EXIT;

        IF "Serial No." <> xRec."Serial No." THEN
          IF "Service Item No." <> '' THEN
            ERROR(
              Text016,
              FIELDCAPTION("Serial No."),FIELDCAPTION("Service Item No."));
        UpdateResponseTimeHours;

        IF "Serial No." = '' THEN
          EXIT;

        GetServHeader;
        ServItem.RESET;
        ServItem.SETCURRENTKEY("Customer No.","Ship-to Code","Item No.","Serial No.");
        ServItem.SETRANGE("Customer No.",ServHeader."Customer No.");
        ServItem.SETRANGE("Ship-to Code",ServHeader."Ship-to Code");
        ServItem.SETRANGE("Item No.","Item No.");
        ServItem.SETRANGE("Serial No.","Serial No.");
        NoOfRec := ServItem.COUNT;
        CASE TRUE OF
          NoOfRec = 1:
            BEGIN
              ServItem.FINDFIRST;
              VALIDATE("Service Item No.",ServItem."No.");
            END;
          NoOfRec > 1:
            IF PAGE.RUNMODAL(0,ServItem) = ACTION::LookupOK THEN
              VALIDATE("Service Item No.",ServItem."No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        IsHandled := false;
        OnBeforeValidateSerialNo(Rec,xRec,CurrFieldNo,IsHandled);
        if IsHandled then
          exit;

        if "Serial No." <> xRec."Serial No." then
          if "Service Item No." <> '' then
            Error(
              Text016,
              FieldCaption("Serial No."),FieldCaption("Service Item No."));
        UpdateResponseTimeHours;

        if "Serial No." = '' then
          exit;

        GetServHeader;
        ServItem.Reset;
        ServItem.SetCurrentKey("Customer No.","Ship-to Code","Item No.","Serial No.");
        ServItem.SetRange("Customer No.",ServHeader."Customer No.");
        ServItem.SetRange("Ship-to Code",ServHeader."Ship-to Code");
        ServItem.SetRange("Item No.","Item No.");
        ServItem.SetRange("Serial No.","Serial No.");
        NoOfRec := ServItem.Count;
        case true of
          NoOfRec = 1:
            begin
              ServItem.FindFirst;
              Validate("Service Item No.",ServItem."No.");
            end;
          NoOfRec > 1:
            if PAGE.RunModal(0,ServItem) = ACTION::LookupOK then
              Validate("Service Item No.",ServItem."No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Description(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateResponseTimeHours;
        VALIDATE("Document No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateResponseTimeHours;
        Validate("Document No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Repair Status Code"(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateResponseTimeHours;
        IF "Repair Status Code" <> '' THEN BEGIN
          RepairStatus.GET("Repair Status Code");
          IF RepairStatus2.GET(xRec."Repair Status Code") THEN
            IF (NOT RepairStatus.Finished AND RepairStatus2.Finished) OR
               (NOT RepairStatus."Quote Finished" AND RepairStatus2."Quote Finished")
            THEN BEGIN
              "Finishing Date" := 0D;
              "Finishing Time" := 0T;
            END;

          IF ("Document Type" = "Document Type"::Order) AND
             RepairStatus."Quote Finished"
          THEN
            ERROR(Text035,RepairStatus.TABLECAPTION,RepairStatus.Code);

          IF ("Document Type" = "Document Type"::Quote) AND
             RepairStatus.Finished
          THEN
            ERROR(Text036,RepairStatus.TABLECAPTION,RepairStatus.Code);
          IF RepairStatus.Initial THEN BEGIN
            "Starting Date" := 0D;
            "Starting Time" := 0T;
            "Finishing Date" := 0D;
            "Finishing Time" := 0T;
            UpdateStartFinishDateTime("Document Type","Document No.","Line No.","Starting Date","Starting Time",
              "Finishing Date","Finishing Time",FALSE);
            ServOrderAlloc.SetFilters(Rec);
            ServOrderAlloc.MODIFYALL("Service Started",FALSE,FALSE);
          END;

          IF RepairStatus."In Process" THEN BEGIN
            GetServHeader;
            IF ServHeader."Order Date" > WORKDATE THEN BEGIN
              "Starting Date" := ServHeader."Order Date";
              VALIDATE("Starting Time",ServHeader."Order Time");
            END ELSE BEGIN
              "Starting Date" := WORKDATE;
              IF (ServHeader."Order Date" = "Starting Date") AND (ServHeader."Order Time" > TIME) THEN
                VALIDATE("Starting Time",ServHeader."Order Time")
              ELSE
                VALIDATE("Starting Time",TIME);
            END;
            ServOrderAlloc.SetFilters(Rec);
            ServOrderAlloc.MODIFYALL("Service Started",TRUE,FALSE);
          END;

          IF RepairStatus.Finished THEN BEGIN
            ServMgtSetup.GET;
            IF ServMgtSetup."Fault Reason Code Mandatory" THEN
              TESTFIELD("Fault Reason Code");
            GetServHeader;
            CalculateDates;
            ServOrderAlloc.SetFilters(Rec);
            ServOrderAlloc.MODIFYALL(Status,ServOrderAlloc.Status::Finished,FALSE);
          END;

          IF RepairStatus."Quote Finished" THEN BEGIN
            GetServHeader;
            CalculateDates;
          END;

          IF RepairStatus."Partly Serviced" OR RepairStatus.Referred THEN BEGIN
            ServOrderAlloc.SetFilters(Rec);
            IF ServOrderAlloc.FIND('-') THEN
              REPEAT
                IF RepairStatus.Referred AND RepairStatus2.Initial THEN
                  ServOrderAlloc."Service Started" := FALSE;
                ServOrderAlloc.Status := ServOrderAlloc.Status::"Reallocation Needed";
                ServOrderAlloc."Reason Code" := '';
                ServOrderAlloc.MODIFY;
              UNTIL ServOrderAlloc.NEXT = 0;
          END;

          RepairStatusPriority := RepairStatus.Priority;
          UseLineNo := "Line No.";
          ServItemLine.RESET;
          ServItemLine.SETRANGE("Document Type","Document Type");
          ServItemLine.SETRANGE("Document No.","Document No.");
          ServItemLine.SETFILTER("Line No.",'<>%1',"Line No.");
          ServItemLine.SETFILTER("Repair Status Code",'<>%1','');
          IF ServItemLine.FIND('-') THEN
            REPEAT
              RepairStatus2.GET(ServItemLine."Repair Status Code");
              IF RepairStatus2.Priority < RepairStatusPriority THEN BEGIN
                RepairStatusPriority := RepairStatus2.Priority;
                UseLineNo := ServItemLine."Line No.";
              END;
            UNTIL ServItemLine.NEXT = 0;
          IF "Line No." <> UseLineNo THEN BEGIN
            ServItemLine.GET("Document Type","Document No.",UseLineNo);
            RepairStatus.GET(ServItemLine."Repair Status Code");
          END ELSE
            RepairStatus.GET("Repair Status Code");
          ServHeader2.GET("Document Type","Document No.");
          ServHeader3 := ServHeader2;
          IF ServHeader2.Status <> RepairStatus."Service Order Status" THEN BEGIN
            ServHeader2.SetValidatingFromLines(TRUE);
            IF ServHeader2."Finishing Date" = 0D THEN
              ServHeader2.VALIDATE("Finishing Date","Finishing Date");
            ServHeader2.VALIDATE(Status,RepairStatus."Service Order Status");
            IF NOT (ServHeader2.Status = ServHeader2.Status::Finished) THEN BEGIN
              ServHeader2."Finishing Date" := 0D;
              ServHeader2."Finishing Time" := 0T;
              ServHeader2."Service Time (Hours)" := 0;
            END;
            ServHeader2.UpdateServiceOrderChangeLog(ServHeader3);
            ServHeader2.MODIFY;
            IF ServHeader2.Status = ServHeader2.Status::Finished THEN
              UpdateStartFinishDateTime("Document Type","Document No.","Line No.","Starting Date","Starting Time",
                "Finishing Date","Finishing Time",FALSE);
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateResponseTimeHours;
        if "Repair Status Code" <> '' then begin
          RepairStatus.Get("Repair Status Code");
          if RepairStatus2.Get(xRec."Repair Status Code") then
            if (not RepairStatus.Finished and RepairStatus2.Finished) or
               (not RepairStatus."Quote Finished" and RepairStatus2."Quote Finished")
            then begin
              "Finishing Date" := 0D;
              "Finishing Time" := 0T;
            end;

          if ("Document Type" = "Document Type"::Order) and
             RepairStatus."Quote Finished"
          then
            Error(Text035,RepairStatus.TableCaption,RepairStatus.Code);

          if ("Document Type" = "Document Type"::Quote) and
             RepairStatus.Finished
          then
            Error(Text036,RepairStatus.TableCaption,RepairStatus.Code);
          if RepairStatus.Initial then begin
        #22..26
              "Finishing Date","Finishing Time",false);
            //ServOrderAlloc.SetFilters(Rec);
            ServOrderAlloc.ModifyAll("Service Started",false,false);
          end;

          if RepairStatus."In Process" then begin
            GetServHeader;
            if ServHeader."Order Date" > WorkDate then begin
              "Starting Date" := ServHeader."Order Date";
              Validate("Starting Time",ServHeader."Order Time");
            end else begin
              "Starting Date" := WorkDate;
              if (ServHeader."Order Date" = "Starting Date") and (ServHeader."Order Time" > Time) then
                Validate("Starting Time",ServHeader."Order Time")
              else
                Validate("Starting Time",Time);
            end;
            //ServOrderAlloc.SetFilters(Rec);
            ServOrderAlloc.ModifyAll("Service Started",true,false);
          end;

          if RepairStatus.Finished then begin
            ServMgtSetup.Get;
            if ServMgtSetup."Fault Reason Code Mandatory" then
              TestField("Fault Reason Code");
            GetServHeader;
            CalculateDates;
            //ServOrderAlloc.SetFilters(Rec);
            ServOrderAlloc.ModifyAll(Status,ServOrderAlloc.Status::Finished,false);
          end;

          if RepairStatus."Quote Finished" then begin
            GetServHeader;
            CalculateDates;
          end;

          if RepairStatus."Partly Serviced" or RepairStatus.Referred then begin
           // ServOrderAlloc.SetFilters(Rec);
            if ServOrderAlloc.Find('-') then
              repeat
                if RepairStatus.Referred and RepairStatus2.Initial then
                  ServOrderAlloc."Service Started" := false;
                ServOrderAlloc.Status := ServOrderAlloc.Status::"Reallocation Needed";
                ServOrderAlloc."Reason Code" := '';
                ServOrderAlloc.Modify;
              until ServOrderAlloc.Next = 0;
          end;
        #74..76
          ServItemLine.Reset;
          ServItemLine.SetRange("Document Type","Document Type");
          ServItemLine.SetRange("Document No.","Document No.");
          ServItemLine.SetFilter("Line No.",'<>%1',"Line No.");
          ServItemLine.SetFilter("Repair Status Code",'<>%1','');
          if ServItemLine.Find('-') then
            repeat
              RepairStatus2.Get(ServItemLine."Repair Status Code");
              if RepairStatus2.Priority < RepairStatusPriority then begin
                RepairStatusPriority := RepairStatus2.Priority;
                UseLineNo := ServItemLine."Line No.";
              end;
            until ServItemLine.Next = 0;
          if "Line No." <> UseLineNo then begin
            ServItemLine.Get("Document Type","Document No.",UseLineNo);
            RepairStatus.Get(ServItemLine."Repair Status Code");
          end else
            RepairStatus.Get("Repair Status Code");
          ServHeader2.Get("Document Type","Document No.");
          ServHeader3 := ServHeader2;
          if ServHeader2.Status <> RepairStatus."Service Order Status" then begin
            ServHeader2.SetValidatingFromLines(true);
            if ServHeader2."Finishing Date" = 0D then
              ServHeader2.Validate("Finishing Date","Finishing Date");
            ServHeader2.Validate(Status,RepairStatus."Service Order Status");
            if not (ServHeader2.Status = ServHeader2.Status::Finished) then begin
        #103..105
            end;
            ServHeader2.UpdateServiceOrderChangeLog(ServHeader3);
            ServHeader2.Modify;
            if ServHeader2.Status = ServHeader2.Status::Finished then
              UpdateStartFinishDateTime("Document Type","Document No.","Line No.","Starting Date","Starting Time",
                "Finishing Date","Finishing Time",false);
          end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Response Time (Hours)"(Field 11).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Response Time (Hours)" <> xRec."Response Time (Hours)") OR ("Response Time (Hours)" = 0) THEN BEGIN
          SkipResponseTimeHrsUpdate := TRUE;
          GetServHeader;
          CalculateResponseDateTime(ServHeader."Order Date",ServHeader."Order Time");
        END ELSE
          UpdateResponseTimeHours;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Response Time (Hours)" <> xRec."Response Time (Hours)") or ("Response Time (Hours)" = 0) then begin
          SkipResponseTimeHrsUpdate := true;
          GetServHeader;
          CalculateResponseDateTime(ServHeader."Order Date",ServHeader."Order Time");
        end else
          UpdateResponseTimeHours;
        */
        //end;


        //Unsupported feature: CodeModification on ""Response Date"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SkipResponseTimeHrsUpdate := TRUE;
        IF "Response Date" <> xRec."Response Date" THEN BEGIN
          GetServHeader;
          IF "Response Date" <> 0D THEN BEGIN
            IF "Response Date" < ServHeader."Order Date" THEN
              ERROR(
                Text022,
                FIELDCAPTION("Response Date"),ServHeader.TABLECAPTION,
                ServHeader.FIELDCAPTION("Order Date"));
            IF "Response Date" = ServHeader."Order Date" THEN
              IF TIME < ServHeader."Order Time" THEN
                "Response Time" := ServHeader."Order Time"
              ELSE
                "Response Time" := TIME;
          END ELSE
            "Response Time" := 0T;

          "Response Time (Hours)" := 0;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SkipResponseTimeHrsUpdate := true;
        if "Response Date" <> xRec."Response Date" then begin
          GetServHeader;
          if "Response Date" <> 0D then begin
            if "Response Date" < ServHeader."Order Date" then
              Error(
                Text022,
                FieldCaption("Response Date"),ServHeader.TableCaption,
                ServHeader.FieldCaption("Order Date"));
            if "Response Date" = ServHeader."Order Date" then
              if Time < ServHeader."Order Time" then
                "Response Time" := ServHeader."Order Time"
              else
                "Response Time" := Time;
          end else
        #16..18
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Response Time"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SkipResponseTimeHrsUpdate := TRUE;
        IF "Response Time" <> xRec."Response Time" THEN BEGIN
          GetServHeader;
          IF ("Response Date" = ServHeader."Order Date") AND
             ("Response Time" < ServHeader."Order Time")
          THEN
            ERROR(
              Text022,
              FIELDCAPTION("Response Time"),ServHeader.TABLECAPTION,
              ServHeader.FIELDCAPTION("Order Time"));

          "Response Time (Hours)" := 0;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SkipResponseTimeHrsUpdate := true;
        if "Response Time" <> xRec."Response Time" then begin
          GetServHeader;
          if ("Response Date" = ServHeader."Order Date") and
             ("Response Time" < ServHeader."Order Time")
          then
            Error(
              Text022,
              FieldCaption("Response Time"),ServHeader.TableCaption,
              ServHeader.FieldCaption("Order Time"));

          "Response Time (Hours)" := 0;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Starting Date"(Field 14).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SkipResponseTimeHrsUpdate := TRUE;
        GetServHeader;
        IF "Starting Date" <> 0D THEN BEGIN
          IF "Starting Date" < ServHeader."Order Date" THEN
            ERROR(
              Text022,
              FIELDCAPTION("Starting Date"),ServHeader.TABLECAPTION,
              ServHeader.FIELDCAPTION("Order Date"));

          IF ("Starting Date" > ServHeader."Finishing Date") AND
             (ServHeader."Finishing Date" <> 0D)
          THEN
            ERROR(
              Text018,
              FIELDCAPTION("Starting Date"),
              ServHeader.TABLECAPTION,
              ServHeader.FIELDCAPTION("Finishing Date"));

          IF "Starting Date" <> xRec."Starting Date" THEN BEGIN
            "Finishing Date" := 0D;
            "Finishing Time" := 0T;
          END;

          IF ("Starting Date" = ServHeader."Order Date") AND
             (TIME < ServHeader."Order Time")
          THEN
            VALIDATE("Starting Time",ServHeader."Order Time")
          ELSE
            VALIDATE("Starting Time",TIME);
        END ELSE BEGIN
          "Starting Time" := 0T;
          VALIDATE("Finishing Date",0D);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SkipResponseTimeHrsUpdate := true;
        GetServHeader;
        if "Starting Date" <> 0D then begin
          if "Starting Date" < ServHeader."Order Date" then
            Error(
              Text022,
              FieldCaption("Starting Date"),ServHeader.TableCaption,
              ServHeader.FieldCaption("Order Date"));

          if ("Starting Date" > ServHeader."Finishing Date") and
             (ServHeader."Finishing Date" <> 0D)
          then
            Error(
              Text018,
              FieldCaption("Starting Date"),
              ServHeader.TableCaption,
              ServHeader.FieldCaption("Finishing Date"));

          if "Starting Date" <> xRec."Starting Date" then begin
            "Finishing Date" := 0D;
            "Finishing Time" := 0T;
          end;

          if ("Starting Date" = ServHeader."Order Date") and
             (Time < ServHeader."Order Time")
          then
            Validate("Starting Time",ServHeader."Order Time")
          else
            Validate("Starting Time",Time);
        end else begin
          "Starting Time" := 0T;
          Validate("Finishing Date",0D);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Starting Time"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SkipResponseTimeHrsUpdate := TRUE;
        TESTFIELD("Starting Date");
        IF "Starting Time" <> 0T THEN BEGIN
          GetServHeader;
          IF ("Starting Date" = ServHeader."Order Date") AND
             ("Starting Time" < ServHeader."Order Time")
          THEN
            ERROR(
              Text022,
              FIELDCAPTION("Starting Time"),ServHeader.TABLECAPTION,
              ServHeader.FIELDCAPTION("Order Time"));

          IF ("Starting Time" > "Finishing Time") AND
             ("Finishing Time" <> 0T) AND
             ("Starting Date" = "Finishing Date")
          THEN
            ERROR(Text020,
              FIELDCAPTION("Starting Time"),FIELDCAPTION("Finishing Time"));

          UpdateStartFinishDateTime("Document Type","Document No.","Line No.","Starting Date",
            "Starting Time","Finishing Date","Finishing Time",FALSE);
        END ELSE BEGIN
          "Finishing Date" := 0D;
          "Finishing Time" := 0T;
          UpdateStartFinishDateTime("Document Type","Document No.","Line No.","Starting Date","Starting Time",
            "Finishing Date","Finishing Time",FALSE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SkipResponseTimeHrsUpdate := true;
        TestField("Starting Date");
        if "Starting Time" <> 0T then begin
          GetServHeader;
          if ("Starting Date" = ServHeader."Order Date") and
             ("Starting Time" < ServHeader."Order Time")
          then
            Error(
              Text022,
              FieldCaption("Starting Time"),ServHeader.TableCaption,
              ServHeader.FieldCaption("Order Time"));

          if ("Starting Time" > "Finishing Time") and
             ("Finishing Time" <> 0T) and
             ("Starting Date" = "Finishing Date")
          then
            Error(Text020,
              FieldCaption("Starting Time"),FieldCaption("Finishing Time"));

          UpdateStartFinishDateTime("Document Type","Document No.","Line No.","Starting Date",
            "Starting Time","Finishing Date","Finishing Time",false);
        end else begin
        #23..25
            "Finishing Date","Finishing Time",false);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Finishing Date"(Field 16).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SkipResponseTimeHrsUpdate := TRUE;
        GetServHeader;
        IF "Finishing Date" <> 0D THEN BEGIN
          IF "Finishing Date" < ServHeader."Order Date" THEN
            ERROR(
              Text022,
              FIELDCAPTION("Finishing Date"),ServHeader.TABLECAPTION,
              ServHeader.FIELDCAPTION("Order Date"));

          IF "Finishing Date" < "Starting Date" THEN
            ERROR(
              Text019,
              FIELDCAPTION("Finishing Date"),FIELDCAPTION("Starting Date"));
          IF ("Starting Date" = "Finishing Date") AND ("Starting Time" > TIME) THEN
            VALIDATE("Finishing Time","Starting Time")
          ELSE
            VALIDATE("Finishing Time",TIME);
          UpdateStartFinishDateTime("Document Type","Document No.","Line No.","Starting Date","Starting Time",
            "Finishing Date","Finishing Time",FALSE);
        END ELSE BEGIN
          "Finishing Time" := 0T;
          UpdateStartFinishDateTime("Document Type","Document No.","Line No.","Starting Date","Starting Time",
            "Finishing Date","Finishing Time",FALSE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SkipResponseTimeHrsUpdate := true;
        GetServHeader;
        if "Finishing Date" <> 0D then begin
          if "Finishing Date" < ServHeader."Order Date" then
            Error(
              Text022,
              FieldCaption("Finishing Date"),ServHeader.TableCaption,
              ServHeader.FieldCaption("Order Date"));

          if "Finishing Date" < "Starting Date" then
            Error(
              Text019,
              FieldCaption("Finishing Date"),FieldCaption("Starting Date"));
          if ("Starting Date" = "Finishing Date") and ("Starting Time" > Time) then
            Validate("Finishing Time","Starting Time")
          else
            Validate("Finishing Time",Time);
          UpdateStartFinishDateTime("Document Type","Document No.","Line No.","Starting Date","Starting Time",
            "Finishing Date","Finishing Time",false);
        end else begin
          "Finishing Time" := 0T;
          UpdateStartFinishDateTime("Document Type","Document No.","Line No.","Starting Date","Starting Time",
            "Finishing Date","Finishing Time",false);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Finishing Time"(Field 17).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        SkipResponseTimeHrsUpdate := TRUE;
        TESTFIELD("Finishing Date");
        GetServHeader;
        IF "Finishing Time" <> 0T THEN BEGIN
          IF ("Finishing Date" = "Starting Date") AND
             ("Finishing Time" < "Starting Time")
          THEN
            ERROR(
              Text022,
              FIELDCAPTION("Finishing Time"),
              FIELDCAPTION("Starting Time"));
          UpdateStartFinishDateTime("Document Type","Document No.","Line No.","Starting Date","Starting Time",
            "Finishing Date","Finishing Time",FALSE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SkipResponseTimeHrsUpdate := true;
        TestField("Finishing Date");
        GetServHeader;
        if "Finishing Time" <> 0T then begin
          if ("Finishing Date" = "Starting Date") and
             ("Finishing Time" < "Starting Time")
          then
            Error(
              Text022,
              FieldCaption("Finishing Time"),
              FieldCaption("Starting Time"));
          UpdateStartFinishDateTime("Document Type","Document No.","Line No.","Starting Date","Starting Time",
            "Finishing Date","Finishing Time",false);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Warranty Starting Date (Parts)"(Field 19).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Service Item No." <> '' THEN BEGIN
          ServItem.GET("Service Item No.");
          IF "Warranty Starting Date (Parts)" <> ServItem."Warranty Starting Date (Parts)" THEN
            ERROR(Text023,ServItem.TABLECAPTION);
        END;

        IF "Warranty Starting Date (Parts)" <> 0D THEN BEGIN
          ServMgtSetup.GET;
          "Warranty Ending Date (Parts)" := CALCDATE(ServMgtSetup."Default Warranty Duration","Warranty Starting Date (Parts)");
          "Warranty % (Parts)" := ServMgtSetup."Warranty Disc. % (Parts)";
        END ELSE BEGIN
          "Warranty Ending Date (Parts)" := 0D;
          "Warranty % (Parts)" := 0;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Service Item No." <> '' then begin
          ServItem.Get("Service Item No.");
          if "Warranty Starting Date (Parts)" <> ServItem."Warranty Starting Date (Parts)" then
            Error(Text023,ServItem.TableCaption);
        end;

        if "Warranty Starting Date (Parts)" <> 0D then begin
          ServMgtSetup.Get;
          "Warranty Ending Date (Parts)" := CalcDate(ServMgtSetup."Default Warranty Duration","Warranty Starting Date (Parts)");
          "Warranty % (Parts)" := ServMgtSetup."Warranty Disc. % (Parts)";
        end else begin
          "Warranty Ending Date (Parts)" := 0D;
          "Warranty % (Parts)" := 0;
        end;
        */
        //end;


        //Unsupported feature: PropertyModification on ""Warranty Ending Date (Parts)"(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Service Item No." <> '' THEN BEGIN
          ServItem.GET("Service Item No.");
          IF "Warranty Ending Date (Parts)" <> ServItem."Warranty Ending Date (Parts)" THEN
            ERROR(Text023,ServItem.TABLECAPTION);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Service Item No." <> '' then begin
          ServItem.Get("Service Item No.");
          if "Warranty Ending Date (Parts)" <> ServItem."Warranty Ending Date (Parts)" then
            Error(Text023,ServItem.TableCaption);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Warranty(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IsHandled := FALSE;
        OnBeforeValidateWarranty(Rec,xRec,CurrFieldNo,IsHandled);
        IF IsHandled THEN
          EXIT;

        IF "Service Item No." = '' THEN BEGIN
          GetServHeader;
          IF Warranty THEN BEGIN
            IF ConfirmManagement.ConfirmProcess(Text024,TRUE) THEN BEGIN
              VALIDATE("Warranty Starting Date (Parts)",ServHeader."Order Date");
              VALIDATE("Warranty Starting Date (Labor)",ServHeader."Order Date");
              Warranty := TRUE;
            END ELSE
              Warranty := FALSE;
          END ELSE BEGIN
            IF ConfirmManagement.ConfirmProcess(Text025,TRUE) THEN BEGIN
              VALIDATE("Warranty Starting Date (Parts)",0D);
              VALIDATE("Warranty Starting Date (Labor)",0D);
              Warranty := FALSE;
            END ELSE
              Warranty := TRUE;
          END;
          IF ServItemLine.GET("Document Type","Document No.","Line No.") THEN
            MODIFY;
          CheckWarranty(ServHeader."Order Date");
        END ELSE
          ERROR(Text023,ServItem.TABLECAPTION);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        IsHandled := false;
        OnBeforeValidateWarranty(Rec,xRec,CurrFieldNo,IsHandled);
        if IsHandled then
          exit;

        if "Service Item No." = '' then begin
          GetServHeader;
          if Warranty then begin
            if ConfirmManagement.ConfirmProcess(Text024,true) then begin
              Validate("Warranty Starting Date (Parts)",ServHeader."Order Date");
              Validate("Warranty Starting Date (Labor)",ServHeader."Order Date");
              Warranty := true;
            end else
              Warranty := false;
          end else begin
            if ConfirmManagement.ConfirmProcess(Text025,true) then begin
              Validate("Warranty Starting Date (Parts)",0D);
              Validate("Warranty Starting Date (Labor)",0D);
              Warranty := false;
            end else
              Warranty := true;
          end;
          if ServItemLine.Get("Document Type","Document No.","Line No.") then
            Modify;
          CheckWarranty(ServHeader."Order Date");
        end else
          Error(Text023,ServItem.TableCaption);
        */
        //end;


        //Unsupported feature: CodeModification on ""Warranty % (Parts)"(Field 22).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IsHandled := FALSE;
        OnBeforeValidateWarrantyParts(Rec,xRec,CurrFieldNo,IsHandled);
        IF IsHandled THEN
          EXIT;

        IF "Service Item No." <> '' THEN
          ERROR(Text023,ServItem.TABLECAPTION);

        IF ("Service Item No." = '') AND ("Warranty % (Parts)" <> xRec."Warranty % (Parts)") THEN BEGIN
          ServLine.RESET;
          ServLine.SETCURRENTKEY("Document Type","Document No.","Service Item Line No.",Type);
          ServLine.SETRANGE("Document Type","Document Type");
          ServLine.SETRANGE("Document No.","Document No.");
          ServLine.SETRANGE("Service Item Line No.","Line No.");
          ServLine.SETRANGE(Type,ServLine.Type::Item);
          IF ServLine.FIND('-') THEN
            REPEAT
              ServLine.VALIDATE("Warranty Disc. %","Warranty % (Parts)");
              ServLine.MODIFY;
            UNTIL ServLine.NEXT = 0;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        IsHandled := false;
        OnBeforeValidateWarrantyParts(Rec,xRec,CurrFieldNo,IsHandled);
        if IsHandled then
          exit;

        if "Service Item No." <> '' then
          Error(Text023,ServItem.TableCaption);

        if ("Service Item No." = '') and ("Warranty % (Parts)" <> xRec."Warranty % (Parts)") then begin
          ServLine.Reset;
          ServLine.SetCurrentKey("Document Type","Document No.","Service Item Line No.",Type);
          ServLine.SetRange("Document Type","Document Type");
          ServLine.SetRange("Document No.","Document No.");
          ServLine.SetRange("Service Item Line No.","Line No.");
          ServLine.SetRange(Type,ServLine.Type::Item);
          if ServLine.Find('-') then
            repeat
              ServLine.Validate("Warranty Disc. %","Warranty % (Parts)");
              ServLine.Modify;
            until ServLine.Next = 0;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Warranty % (Labor)"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IsHandled := FALSE;
        OnBeforeValidateWarrantyLabor(Rec,xRec,CurrFieldNo,IsHandled);
        IF IsHandled THEN
          EXIT;

        IF "Service Item No." <> '' THEN
          ERROR(Text023,ServItem.TABLECAPTION);

        IF ("Service Item No." = '') AND ("Warranty % (Labor)" <> xRec."Warranty % (Labor)") THEN BEGIN
          ServLine.RESET;
          ServLine.SETCURRENTKEY("Document Type","Document No.","Service Item Line No.",Type);
          ServLine.SETRANGE("Document Type","Document Type");
          ServLine.SETRANGE("Document No.","Document No.");
          ServLine.SETRANGE("Service Item Line No.","Line No.");
          ServLine.SETRANGE(Type,ServLine.Type::Resource);
          IF ServLine.FIND('-') THEN
            REPEAT
              ServLine.VALIDATE("Warranty Disc. %","Warranty % (Labor)");
              ServLine.MODIFY;
            UNTIL ServLine.NEXT = 0;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        IsHandled := false;
        OnBeforeValidateWarrantyLabor(Rec,xRec,CurrFieldNo,IsHandled);
        if IsHandled then
          exit;

        if "Service Item No." <> '' then
          Error(Text023,ServItem.TableCaption);

        if ("Service Item No." = '') and ("Warranty % (Labor)" <> xRec."Warranty % (Labor)") then begin
          ServLine.Reset;
          ServLine.SetCurrentKey("Document Type","Document No.","Service Item Line No.",Type);
          ServLine.SetRange("Document Type","Document Type");
          ServLine.SetRange("Document No.","Document No.");
          ServLine.SetRange("Service Item Line No.","Line No.");
          ServLine.SetRange(Type,ServLine.Type::Resource);
          if ServLine.Find('-') then
            repeat
              ServLine.Validate("Warranty Disc. %","Warranty % (Labor)");
              ServLine.Modify;
            until ServLine.Next = 0;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Warranty Starting Date (Labor)"(Field 24).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Service Item No." <> '' THEN BEGIN
          ServItem.GET("Service Item No.");
          IF "Warranty Starting Date (Labor)" <> ServItem."Warranty Starting Date (Labor)" THEN
            ERROR(Text023,ServItem.TABLECAPTION);
        END;

        IF "Warranty Starting Date (Labor)" <> 0D THEN BEGIN
          ServMgtSetup.GET;
          "Warranty Ending Date (Labor)" := CALCDATE(ServMgtSetup."Default Warranty Duration","Warranty Starting Date (Labor)");
          "Warranty % (Parts)" := ServMgtSetup."Warranty Disc. % (Parts)";
          "Warranty % (Labor)" := ServMgtSetup."Warranty Disc. % (Labor)";
        END ELSE BEGIN
          "Warranty Ending Date (Labor)" := 0D;
          "Warranty % (Labor)" := 0;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Service Item No." <> '' then begin
          ServItem.Get("Service Item No.");
          if "Warranty Starting Date (Labor)" <> ServItem."Warranty Starting Date (Labor)" then
            Error(Text023,ServItem.TableCaption);
        end;

        if "Warranty Starting Date (Labor)" <> 0D then begin
          ServMgtSetup.Get;
          "Warranty Ending Date (Labor)" := CalcDate(ServMgtSetup."Default Warranty Duration","Warranty Starting Date (Labor)");
          "Warranty % (Parts)" := ServMgtSetup."Warranty Disc. % (Parts)";
          "Warranty % (Labor)" := ServMgtSetup."Warranty Disc. % (Labor)";
        end else begin
          "Warranty Ending Date (Labor)" := 0D;
          "Warranty % (Labor)" := 0;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Warranty Ending Date (Labor)"(Field 25).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Service Item No." <> '' THEN BEGIN
          ServItem.GET("Service Item No.");
          IF "Warranty Ending Date (Labor)" <> ServItem."Warranty Ending Date (Labor)" THEN
            ERROR(Text023,ServItem.TABLECAPTION);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Service Item No." <> '' then begin
          ServItem.Get("Service Item No.");
          if "Warranty Ending Date (Labor)" <> ServItem."Warranty Ending Date (Labor)" then
            Error(Text023,ServItem.TableCaption);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Contract No."(Field 26).OnLookup". Please convert manually.

        //trigger "(Field 26)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ServHeader.GET("Document Type","Document No.");
        IF "Contract No." <> '' THEN BEGIN
          ServContractLine.SETRANGE("Contract Type",ServContractLine."Contract Type"::Contract);
          ServContractLine.SETRANGE("Contract No.","Contract No.");
          IF ServContractLine.FINDFIRST THEN
            ServContractList.SETRECORD(ServContractLine);
          ServContractLine.RESET;
        END;
        ServContractLine.FILTERGROUP(2);
        ServContractLine.SETRANGE("Contract Type",ServContractLine."Contract Type"::Contract);
        ServContractLine.SETRANGE("Customer No.",ServHeader."Customer No.");
        ServContractLine.SETRANGE("Service Item No.","Service Item No.");
        ServContractLine.SETRANGE("Contract Status",ServContractLine."Contract Status"::Signed);
        ServContractLine.SETFILTER("Starting Date",'<=%1',ServHeader."Order Date");
        ServContractLine.SETFILTER("Contract Expiration Date",'>=%1 | =%2',ServHeader."Order Date",0D);
        ServContractLine.FILTERGROUP(0);
        ServContractList.SETTABLEVIEW(ServContractLine);
        ServContractList.LOOKUPMODE(TRUE);
        IF ServContractList.RUNMODAL = ACTION::LookupOK THEN BEGIN
          ServContractList.GETRECORD(ServContractLine);
          VALIDATE("Contract No.",ServContractLine."Contract No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ServHeader.Get("Document Type","Document No.");
        if "Contract No." <> '' then begin
          ServContractLine.SetRange("Contract Type",ServContractLine."Contract Type"::Contract);
          ServContractLine.SetRange("Contract No.","Contract No.");
          if ServContractLine.FindFirst then
            ServContractList.SetRecord(ServContractLine);
          ServContractLine.Reset;
        end;
        ServContractLine.FilterGroup(2);
        ServContractLine.SetRange("Contract Type",ServContractLine."Contract Type"::Contract);
        ServContractLine.SetRange("Customer No.",ServHeader."Customer No.");
        ServContractLine.SetRange("Service Item No.","Service Item No.");
        ServContractLine.SetRange("Contract Status",ServContractLine."Contract Status"::Signed);
        ServContractLine.SetFilter("Starting Date",'<=%1',ServHeader."Order Date");
        ServContractLine.SetFilter("Contract Expiration Date",'>=%1 | =%2',ServHeader."Order Date",0D);
        ServContractLine.FilterGroup(0);
        ServContractList.SetTableView(ServContractLine);
        ServContractList.LookupMode(true);
        if ServContractList.RunModal = ACTION::LookupOK then begin
          ServContractList.GetRecord(ServContractLine);
          Validate("Contract No.",ServContractLine."Contract No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Contract No."(Field 26).OnValidate". Please convert manually.

        //trigger "(Field 26)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ServHeader.GET("Document Type","Document No.");
        IF (ServHeader."Contract No." <> '') AND
           ("Contract No." <> ServHeader."Contract No.")
        THEN
          ERROR(Text048,FIELDCAPTION("Contract No."));

        IF ("Service Price Group Code" <> '') AND ("Contract No." <> '') THEN
          ERROR(Text033);

        ServLine.RESET;
        ServLine.SETRANGE("Document Type","Document Type");
        ServLine.SETRANGE("Document No.","Document No.");
        IF "Line No." <> 0 THEN BEGIN
          ServLine.SETRANGE("Service Item Line No.","Line No.");
          ServLine.SETFILTER("Quantity Invoiced",'>0');
          IF ServLine.FIND('-') THEN
            ERROR(Text053);
        END;

        IF "Contract No." <> '' THEN BEGIN
          ServContractLine.RESET;
          ServContractLine.SETRANGE("Contract Type",ServContractLine."Contract Type"::Contract);
          ServContractLine.SETRANGE("Contract No.","Contract No.");
          ServContractLine.SETRANGE("Service Item No.","Service Item No.");
          IF NOT ServContractLine.FINDFIRST THEN
            ERROR(Text049,"Contract No.","Service Item No.");
          IF ServContractLine."Customer No." <> ServHeader."Customer No." THEN
            ERROR(Text051,"Contract No.");
          IF ServContractLine."Contract Status" <> ServContractLine."Contract Status"::Signed THEN
            ERROR(Text052,"Contract No.");
          ServHeader.TESTFIELD("Order Date");
          ServContractLine.ValidateServicePeriod(ServHeader."Order Date");
          "Contract Line No." := ServContractLine."Line No.";
        END ELSE
          "Contract Line No." := 0;
        ServLine.SETRANGE("Quantity Invoiced",0);

        IF ServLine.FIND('-') AND ("Line No." <> 0) THEN
          IF ConfirmManagement.ConfirmProcess(Text054,TRUE) THEN BEGIN
            MODIFY(TRUE);
            RecreateServLines(ServLine);
          END ELSE
            "Contract No." := xRec."Contract No.";
        UpdateResponseTimeHours;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ServHeader.Get("Document Type","Document No.");
        if (ServHeader."Contract No." <> '') and
           ("Contract No." <> ServHeader."Contract No.")
        then
          Error(Text048,FieldCaption("Contract No."));

        if ("Service Price Group Code" <> '') and ("Contract No." <> '') then
          Error(Text033);

        ServLine.Reset;
        ServLine.SetRange("Document Type","Document Type");
        ServLine.SetRange("Document No.","Document No.");
        if "Line No." <> 0 then begin
          ServLine.SetRange("Service Item Line No.","Line No.");
          ServLine.SetFilter("Quantity Invoiced",'>0');
          if ServLine.Find('-') then
            Error(Text053);
        end;

        if "Contract No." <> '' then begin
          ServContractLine.Reset;
          ServContractLine.SetRange("Contract Type",ServContractLine."Contract Type"::Contract);
          ServContractLine.SetRange("Contract No.","Contract No.");
          ServContractLine.SetRange("Service Item No.","Service Item No.");
          if not ServContractLine.FindFirst then
            Error(Text049,"Contract No.","Service Item No.");
          if ServContractLine."Customer No." <> ServHeader."Customer No." then
            Error(Text051,"Contract No.");
          if ServContractLine."Contract Status" <> ServContractLine."Contract Status"::Signed then
            Error(Text052,"Contract No.");
          ServHeader.TestField("Order Date");
          ServContractLine.ValidateServicePeriod(ServHeader."Order Date");
          "Contract Line No." := ServContractLine."Line No.";
        end else
          "Contract Line No." := 0;
        ServLine.SetRange("Quantity Invoiced",0);

        if ServLine.Find('-') and ("Line No." <> 0) then
          if ConfirmManagement.ConfirmProcess(Text054,true) then begin
            Modify(true);
            RecreateServLines(ServLine);
          end else
            "Contract No." := xRec."Contract No.";
        UpdateResponseTimeHours;
        */
        //end;


        //Unsupported feature: CodeModification on ""Loaner No."(Field 28).OnValidate". Please convert manually.

        //trigger "(Field 28)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Loaner No." = '') AND (xRec."Loaner No." <> '') THEN BEGIN
          Loaner.GET(xRec."Loaner No.");
          LoanerEntry.SETRANGE("Document Type","Document Type" + 1);
          LoanerEntry.SETRANGE("Document No.","Document No.");
          LoanerEntry.SETRANGE("Loaner No.",xRec."Loaner No.");
          LoanerEntry.SETRANGE(Lent,TRUE);
          IF NOT LoanerEntry.ISEMPTY THEN
            ERROR(
              Text026,
              FIELDCAPTION("Loaner No."))
        END;

        IF "Loaner No." <> xRec."Loaner No." THEN BEGIN
          LoanerEntry.RESET;
          LoanerEntry.SETRANGE("Document Type","Document Type" + 1);
          LoanerEntry.SETRANGE("Document No.","Document No.");
          LoanerEntry.SETRANGE("Loaner No.",xRec."Loaner No.");
          LoanerEntry.SETRANGE(Lent,TRUE);
          IF NOT LoanerEntry.ISEMPTY THEN BEGIN
            GetServHeader;
            ERROR(
              Text028,
              FIELDCAPTION("Loaner No."),FORMAT(ServHeader."Document Type"),
              ServHeader.FIELDCAPTION("No."),ServHeader."No.");
          END;
          CheckIfLoanerOnServOrder;
          IF "Line No." <> 0 THEN
            LendLoanerWithConfirmation;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Loaner No." = '') and (xRec."Loaner No." <> '') then begin
          Loaner.Get(xRec."Loaner No.");
          LoanerEntry.SetRange("Document Type","Document Type" + 1);
          LoanerEntry.SetRange("Document No.","Document No.");
          LoanerEntry.SetRange("Loaner No.",xRec."Loaner No.");
          LoanerEntry.SetRange(Lent,true);
          if not LoanerEntry.IsEmpty then
            Error(
              Text026,
              FieldCaption("Loaner No."))
        end;

        if "Loaner No." <> xRec."Loaner No." then begin
          LoanerEntry.Reset;
          LoanerEntry.SetRange("Document Type","Document Type" + 1);
          LoanerEntry.SetRange("Document No.","Document No.");
          LoanerEntry.SetRange("Loaner No.",xRec."Loaner No.");
          LoanerEntry.SetRange(Lent,true);
          if not LoanerEntry.IsEmpty then begin
            GetServHeader;
            Error(
              Text028,
              FieldCaption("Loaner No."),Format(ServHeader."Document Type"),
              ServHeader.FieldCaption("No."),ServHeader."No.");
          end;
          CheckIfLoanerOnServOrder;
          if "Line No." <> 0 then
            LendLoanerWithConfirmation;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Fault Reason Code"(Field 31).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ServLine.RESET;
        ServLine.SETCURRENTKEY("Document Type","Document No.","Service Item Line No.");
        ServLine.SETRANGE("Document Type","Document Type");
        ServLine.SETRANGE("Document No.","Document No.");
        ServLine.SETRANGE("Service Item Line No.","Line No.");
        IF FaultReasonCode.GET("Fault Reason Code") THEN BEGIN
          RecR.GETTABLE(ServLine);
          TypeR := RecR.FIELDINDEX(ServLine.FIELDNO(Type));
          TypeStr := TypeR.OPTIONCAPTION;
          IF FaultReasonCode."Exclude Warranty Discount" THEN BEGIN
            ServLine.SETFILTER(Type,'%1|%2',ServLine.Type::Cost,ServLine.Type::"G/L Account");
            IF ServLine.FIND('-') THEN
              IF NOT ConfirmManagement.ConfirmProcess(
                   STRSUBSTNO(
                     Text056,
                     TABLECAPTION,
                     FIELDCAPTION("Document No."),"Document No.",
                     FIELDCAPTION("Line No."),"Line No.",
                     ServLine.FIELDCAPTION(Type),
                     SELECTSTR(ServLine.Type::"G/L Account" + 1,TypeStr),
                     SELECTSTR(ServLine.Type::Cost + 1,TypeStr),
                     FaultReasonCode.FIELDCAPTION("Exclude Warranty Discount"),
                     FaultReasonCode.TABLECAPTION,FaultReasonCode.Code),
                   TRUE)
              THEN
                ERROR('');
            ServLine.SETRANGE(Type,ServLine.Type::Item,ServLine.Type::Resource);
          END ELSE
            ServLine.SETRANGE(Type,ServLine.Type::Item,ServLine.Type::"G/L Account");
        END;
        IF ServLine.FIND('-') THEN
          REPEAT
            ServLine.VALIDATE("Fault Reason Code","Fault Reason Code");
            ServLine.MODIFY;
          UNTIL ServLine.NEXT = 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ServLine.Reset;
        ServLine.SetCurrentKey("Document Type","Document No.","Service Item Line No.");
        ServLine.SetRange("Document Type","Document Type");
        ServLine.SetRange("Document No.","Document No.");
        ServLine.SetRange("Service Item Line No.","Line No.");
        if FaultReasonCode.Get("Fault Reason Code") then begin
          RecR.GetTable(ServLine);
          TypeR := RecR.FieldIndex(ServLine.FieldNo(Type));
          TypeStr := TypeR.OptionCaption;
          if FaultReasonCode."Exclude Warranty Discount" then begin
            ServLine.SetFilter(Type,'%1|%2',ServLine.Type::Cost,ServLine.Type::"G/L Account");
            if ServLine.Find('-') then
              if not ConfirmManagement.ConfirmProcess(
                   StrSubstNo(
                     Text056,
                     TableCaption,
                     FieldCaption("Document No."),"Document No.",
                     FieldCaption("Line No."),"Line No.",
                     ServLine.FieldCaption(Type),
                     SelectStr(ServLine.Type::"G/L Account" + 1,TypeStr),
                     SelectStr(ServLine.Type::Cost + 1,TypeStr),
                     FaultReasonCode.FieldCaption("Exclude Warranty Discount"),
                     FaultReasonCode.TableCaption,FaultReasonCode.Code),
                   true)
              then
                Error('');
            ServLine.SetRange(Type,ServLine.Type::Item,ServLine.Type::Resource);
          end else
            ServLine.SetRange(Type,ServLine.Type::Item,ServLine.Type::"G/L Account");
        end;
        if ServLine.Find('-') then
          repeat
            ServLine.Validate("Fault Reason Code","Fault Reason Code");
            ServLine.Modify;
          until ServLine.Next = 0;
        */
        //end;


        //Unsupported feature: Change TableRelation on ""Service Price Group Code"(Field 32).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetServHeader;
        IF ("Service Price Group Code" <> '') AND
           (("Contract No." <> '') OR (ServHeader."Contract No." <> ''))
        THEN
          ERROR(Text033);

        ServLine.RESET;
        ServLine.SETCURRENTKEY("Document Type","Document No.","Service Item Line No.",Type);
        ServLine.SETRANGE("Document Type","Document Type");
        ServLine.SETRANGE("Document No.","Document No.");
        ServLine.SETRANGE("Service Item Line No.","Line No.");

        IF "Service Price Group Code" <> xRec."Service Price Group Code" THEN BEGIN
          ServLine.SETFILTER("Quantity Invoiced",'>0');
          IF ServLine.FIND('-') THEN
            ERROR(Text037,FIELDCAPTION("Service Price Group Code"));
        END;

        IF CurrFieldNo = FIELDNO("Service Price Group Code") THEN
          IF CheckServLineExist THEN BEGIN
            ServLine.SETRANGE("Price Adjmt. Status",ServLine."Price Adjmt. Status"::Adjusted);
            IF ServLine.FIND('-') THEN BEGIN
              IF NOT ConfirmManagement.ConfirmProcess(
                   STRSUBSTNO(Text038,ServLine.TABLECAPTION),TRUE)
              THEN
                ERROR(Text039);
              ServPriceMgmt.ResetAdjustedLines(ServLine);
            END;
            ServLine.SETRANGE("Price Adjmt. Status");
          END;

        IF "Service Price Group Code" <> '' THEN BEGIN
          ServPriceMgmt.GetServPriceGrSetup(ServPriceGrSetup,ServHeader,Rec);
          "Serv. Price Adjmt. Gr. Code" := ServPriceGrSetup."Serv. Price Adjmt. Gr. Code";
          "Adjustment Type" := ServPriceGrSetup."Adjustment Type";
          "Base Amount to Adjust" := ServPriceGrSetup.Amount;
        END ELSE BEGIN
          "Serv. Price Adjmt. Gr. Code" := '';
          CLEAR("Adjustment Type");
          "Base Amount to Adjust" := 0;
        END;

        IF ServLine.FIND('-') THEN
          REPEAT
            ServLine."Service Price Group Code" := "Service Price Group Code";
            ServLine."Serv. Price Adjmt. Gr. Code" := "Serv. Price Adjmt. Gr. Code";
            ServLine.MODIFY;
          UNTIL ServLine.NEXT = 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetServHeader;
        if ("Service Price Group Code" <> '') and
           (("Contract No." <> '') or (ServHeader."Contract No." <> ''))
        then
          Error(Text033);

        ServLine.Reset;
        ServLine.SetCurrentKey("Document Type","Document No.","Service Item Line No.",Type);
        ServLine.SetRange("Document Type","Document Type");
        ServLine.SetRange("Document No.","Document No.");
        ServLine.SetRange("Service Item Line No.","Line No.");

        if "Service Price Group Code" <> xRec."Service Price Group Code" then begin
          ServLine.SetFilter("Quantity Invoiced",'>0');
          if ServLine.Find('-') then
            Error(Text037,FieldCaption("Service Price Group Code"));
        end;

        if CurrFieldNo = FieldNo("Service Price Group Code") then
          if CheckServLineExist then begin
            ServLine.SetRange("Price Adjmt. Status",ServLine."Price Adjmt. Status"::Adjusted);
            if ServLine.Find('-') then begin
              if not ConfirmManagement.ConfirmProcess(
                   StrSubstNo(Text038,ServLine.TableCaption),true)
              then
                Error(Text039);
              ServPriceMgmt.ResetAdjustedLines(ServLine);
            end;
            ServLine.SetRange("Price Adjmt. Status");
          end;

        if "Service Price Group Code" <> '' then begin
        #33..36
        end else begin
          "Serv. Price Adjmt. Gr. Code" := '';
          Clear("Adjustment Type");
          "Base Amount to Adjust" := 0;
        end;

        if ServLine.Find('-') then
          repeat
            ServLine."Service Price Group Code" := "Service Price Group Code";
            ServLine."Serv. Price Adjmt. Gr. Code" := "Serv. Price Adjmt. Gr. Code";
            ServLine.Modify;
          until ServLine.Next = 0;
        */
        //end;


        //Unsupported feature: CodeModification on ""Fault Area Code"(Field 33).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (CurrFieldNo = FIELDNO("Fault Area Code")) AND
           ("Fault Area Code" <> xRec."Fault Area Code")
        THEN BEGIN
          IF CheckServLineExist AND ("Service Price Group Code" <> '') THEN BEGIN
        #5..17
          END;
          VALIDATE("Service Price Group Code");
          "Fault Code" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {IF (CurrFieldNo = FIELDNO("Fault Area Code")) AND
        #2..20
        END;}
        //b2b EFF
        if "Fault Area Code"<>'' then
        begin
        FaultArea.Get("Fault Area Code");
        "Fault Area Description" := FaultArea.Description;
        end;
        //b2b EFF
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Symptom Code"(Field 34).OnValidate". Please convert manually.

        //trigger (Variable: SymptomCode)();
        //Parameters and return type have not been exported.
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeModification on ""Symptom Code"(Field 34).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Symptom Code" <> xRec."Symptom Code" THEN
          "Fault Code" := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Symptom Code" <> xRec."Symptom Code" then
          "Fault Code" := '';
        //b2b EFF
        SymptomCode.Get("Symptom Code");
        "Symptom Description" := SymptomCode.Description;
        //b2b EFF
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Fault Code"(Field 35)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
    var
            FaultCode: Record "Fault Code";
    //begin
    /*
    FaultCode.SetFilter(FaultCode.Code,"Fault Code");
    //MESSAGE("Fault Code");
    if FaultCode.Find('-') then
    repeat
    "Fault Code Description":=FaultCode.Description;
    until FaultCode.Next=0;
    //b2b EFF
    */
    //end;


    //Unsupported feature: CodeInsertion on ""Resolution Code"(Field 36)". Please convert manually.

    //trigger OnValidate();
    //Parameters and return type have not been exported.
    var
        ResolutionCode: Record "Resolution Code";
        //begin
        /*
        //b2b EFF
        ResolutionCode.Get("Resolution Code");
        "Resolution Description" := ResolutionCode.Description;
        //b2b EFF
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 40).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Service Item No." <> '' THEN
          ERROR(
            Text016,
            FIELDCAPTION("Variant Code"),FIELDCAPTION("Service Item No."))
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Service Item No." <> '' then
          Error(
            Text016,
            FieldCaption("Variant Code"),FieldCaption("Service Item No."))
        */
        //end;
        field(60003;"Resolution Description";
        Text[50])
        {
        }
        field(60004;"Fault Code Description";Text[50])
        {
        }
        field(60005;"Fault Area Description";Text[50])
        {
        }
        field(60006;"Symptom Description";Text[50])
        {
        }
        field(60010;"From Location";Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Dimension Code"=FILTER('LOCATIONS'));

            trigger OnValidate();
            begin
                   if Account=true then
                    "From Location":=xRec."From Location";
            end;
        }
        field(60011;"To Location";Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Dimension Code"=FILTER('LOCATIONS'),
                                                          Code=FILTER(<>'HAR'));

            trigger OnValidate();
            begin
                  if Account=true then
                    "To Location":=xRec."To Location";
                 /*
                 ServHeader.RESET;
                  ServHeader.SETFILTER(ServHeader."No.","Document No.");
                  ServHeader.SETRANGE(ServHeader."Customer Cards",TRUE);
                  IF ServHeader.FINDFIRST THEN
                  BEGIN
                    PMIH.RESET;
                    PMIH.SETFILTER(PMIH."Material Issue No.",ServHeader."Material Issue no.");
                    IF PMIH.FINDFIRST THEN
                    BEGIN
                      IF NOT(("To Location"=PMIH."Shortcut Dimension 2 Code") OR ("To Location"='DAMAGE')) THEN
                        ERROR('customer cards cannot be moved to other locations');
                    END;
                  END;
                 */

            end;
        }
        field(60012;Account;Boolean)
        {

            trigger OnValidate();
            begin
                /*
                  IF NOT (USERID IN ['EFFTRONICS\RAKESHT','EFFTRONICS\PRANAVI','EFFTRONICS\ANILKUMAR']) THEN
                    ERROR('Contact ERP Team');
                  ServItemLine."Sent date time":=CURRENTDATETIME;
                
                  IF "To Location"='' THEN
                    ERROR('PLEASE ENTER TO LOCATION');
                */
                if (Account=false) and (not(UserId in ['EFFTRONICS\PRANAVI','EFFTRONICS\VISHNUPRIYA','EFFTRONICS\B2BOTS'])) then              //added by pranavi on 17-04-2015
                  Error('You cannot uncheck!');
                if "Repair Status Code" = '' then
                  Error('Please enter Repair Status!');
                if "From Location" = '' then
                  Error('Please enter From Location!');
                if "To Location" = '' then
                  Error('Please enter To Location!');
                  "ITEMLEDGER ENTRY".SetCurrentKey("Location Code","Global Dimension 2 Code","Item No.");
                  "ITEMLEDGER ENTRY".SetFilter("ITEMLEDGER ENTRY"."Item No.",Rec."Item No.");
                  "ITEMLEDGER ENTRY".SetFilter("ITEMLEDGER ENTRY"."Location Code",'CS');
                  "ITEMLEDGER ENTRY".SetFilter("ITEMLEDGER ENTRY"."Global Dimension 2 Code",Rec."From Location");
                  "ITEMLEDGER ENTRY".SetFilter("ITEMLEDGER ENTRY"."Serial No.",Rec."Serial No.");
                  if "ITEMLEDGER ENTRY".FindSet then
                  begin
                  repeat
                    if Account=true then
                    begin
                /*     ServHeader.RESET;
                      ServHeader.SETFILTER(ServHeader."No.","Document No.");
                      ServHeader.SETRANGE(ServHeader."Customer Cards",TRUE);
                      IF ServHeader.FINDFIRST THEN
                      BEGIN
                        PMIH.RESET;
                        PMIH.SETFILTER(PMIH."Material Issue No.",ServHeader."Material Issue no.");
                        IF PMIH.FINDFIRST THEN
                        BEGIN
                          {IF NOT(("To Location"=PMIH."Shortcut Dimension 2 Code") OR ("To Location"='DAMAGE')) THEN
                            ERROR('customer cards cannot be moved to other locations')
                          ELSE}
                          BEGIN
                            IF  "To Location"='DAMAGE' THEN
                              Connection.Material_Transfer("Item No.","Serial No.",'CS','DAMAGE','')
                            ELSE
                              Connection.Material_Transfer("Item No.","Serial No.",'CS','SITE',"To Location");
                
                          //  CSTransEntry(0);
                          END;
                        END;
                      END
                      ELSE BEGIN
                */
                        "ITEMLEDGER ENTRY"."Global Dimension 2 Code":=Rec."To Location";
                        "ITEMLEDGER ENTRY"."Posting Date":=Today;              //added by pranavi on 19-04-2015
                        "ITEMLEDGER ENTRY".Modify;
                        //  CSTransEntry(1);
                        ServItem.SetRange(ServItem."No.","Service Item No.");
                        if ServItem.Find('-') then
                        begin
                          "Dimension Value".SetRange("Dimension Value"."Dimension Code",'Locations');
                          "Dimension Value".SetRange("Dimension Value".Code,Rec."To Location");
                          if "Dimension Value".Find('-') then
                          begin
                            ServItem."Present Location":="Dimension Value".Name;
                            if "To Location"='H-OFF' then
                              ServItem."WORKING STATUS":=ServItem."WORKING STATUS"::WORKING;
                            ServItem.Modify;
                          end;
                        end;
                      end;
                    //END;
                  until"ITEMLEDGER ENTRY".Next = 0;
                  "Sent date time":=CurrentDateTime;
                  end else
                  begin
                    if Account=true then
                    begin
                      // added by vishnu for alerting purpose on 08-07-2019
                      ServItemLine.Account:=false ;
                      Error('Service Item not in From Location' );
                
                    end
                    else
                    begin
                      ServItemLine.Account:=true;
                      Error('Service Item not in From Location' );
                    end;
                  end;

            end;
        }
        field(60030;"Countrol Section";Code[10])
        {
        }
        field(60031;"N/W Stand Alone";Option)
        {
            OptionMembers = " ","Stand Alone","Network  ";
        }
        field(60032;IDNO;Code[10])
        {
        }
        field(60033;"F/W Version";Code[10])
        {
        }
        field(60034;"S/W Version";Text[30])
        {
        }
        field(60035;"H/W Process Type";Text[30])
        {
        }
        field(60036;"Operating Voltage";Option)
        {
            OptionMembers = " ","24 VDC","12 VDC";
        }
        field(60037;"Supply Giving From";Text[30])
        {
        }
        field(60038;"Earth Status";Option)
        {
            OptionMembers = " ",Connected,"Not connected";
        }
        field(60039;"Communication Media";Option)
        {
            OptionMembers = " ",OFC,MICROWAVE,QUAD;
        }
        field(60040;"Warr/AMC/None";Option)
        {
            OptionMembers = " ",WARRANTY,AMC,"NONE";
        }
        field(60041;Zone;Code[10])
        {
            Editable = false;
        }
        field(60042;Division;Code[10])
        {
            Editable = false;
        }
        field(60043;Station;Code[20])
        {
            Editable = true;
            TableRelation = Station;

            trigger OnLookup();
            begin
                SH.Reset;
                if SH.Get("Document Type"::Order,"Document No.") then
                begin
                  stat.Reset;
                  buf2 := SH."Shortcut Dimension 2 Code";
                  Divi.SetRange("Division Code",buf2);
                   Divi.FindFirst;
                  buf := Divi."Cumilative Division1";
                  stat.SetFilter(stat."Cumilative Division1",buf);
                 // stat.SETFILTER("SMS Mapped Status",FORMAT(TRUE));
                  //stat.SETFILTER(stat."Division code",SH."Shortcut Dimension 2 Code");
                  if PAGE.RunModal(60206,stat) = ACTION:: LookupOK then
                   Station := stat."Station Code";
                  Validate(Station);
                end;
            end;

            trigger OnValidate();
            begin
                SH.Reset;
                if SH.Get("Document Type"::Order,"Document No.") then
                begin
                  stat.Reset;
                   Divi.SetRange("Division Code",SH."Shortcut Dimension 2 Code");
                    Divi.FindFirst;
                  //stat.SETFILTER(stat."Division code",SH."Shortcut Dimension 2 Code");
                  buf := Divi."Cumilative Division1";
                  stat.SetFilter(stat."Cumilative Division1",buf);
                  stat.SetRange(stat."Station Code",Station);
                  if stat.FindFirst then
                    "Station Name":=stat."Station Name";
                end;
            end;
        }
        field(60044;"Order Date";Date)
        {
            CalcFormula = Lookup("Service Header"."Order Date" WHERE ("No."=FIELD("Document No.")));
            FieldClass = FlowField;
        }
        field(60045;"Sent date time";DateTime)
        {
            Editable = false;
        }
        field(60046;"Unit cost";Decimal)
        {
            Editable = false;
        }
        field(60047;"AMC Order No";Code[30])
        {
        }
        field(60048;Tested;Boolean)
        {
        }
        field(60049;"Accounted Date";Date)
        {
        }
        field(60050;"Sub Module Code";Code[20])
        {
            TableRelation = "Troubleshooting Header"."No.";

            trigger OnValidate();
            begin
                if "Sub Module Code"='' then
                  "Sub Module Descrption" :=''
                else
                begin
                  TSH.Get("Sub Module Code");
                  "Sub Module Descrption" :=TSH.Description;
                end;
            end;
        }
        field(60051;"Sub Module Descrption";Text[50])
        {
        }
        field(60052;"Problem from Site";Text[100])
        {
        }
        field(60053;"QC internal Remarks";Text[100])
        {
        }
        field(60054;"Site Feedback";Text[100])
        {
        }
        field(60055;"Site Problem Matched";Boolean)
        {
        }
        field(60056;"Service Level";Option)
        {
            OptionMembers = Basic,"Trouble shooting",Testing,Rework,Prod;
        }
        field(60057;"Station Name";Text[30])
        {
            Description = 'added by vijaya';
        }
        field(60058;"CS Product";Code[50])
        {
            CalcFormula = Min("Product Model".Product WHERE (Active=CONST(true),
                                                             "Item Number"=FIELD("Item No.")));
            Description = 'added by Vishnu for analysis purpose';
            FieldClass = FlowField;
        }
        field(60059;"CS model";Code[50])
        {
            CalcFormula = Min("Product Model".Model WHERE (Active=CONST(true),
                                                           "Item Number"=FIELD("Item No.")));
            Description = 'added by Vishnu for analysis purpose';
            FieldClass = FlowField;
        }
        field(60060;"CS Module";Code[50])
        {
            CalcFormula = Min("Product Model".Module WHERE (Active=CONST(true),
                                                            "Item Number"=FIELD("Item No.")));
            Description = 'added by Vishnu for analysis purpose';
            FieldClass = FlowField;
        }
        field(60090;"Dimension Corrected";Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091;"OLD Dim Set ID";Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE ("Dimension Set ID"=FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Document Type,Document No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document No.,Line No.,Document Type"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Service Item No.,Contract No.,Contract Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Response Date,Response Time"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Response Date,Response Time,Priority"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Loaner No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Starting Date,Starting Time"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Document Type,Document No.,Finishing Date,Finishing Time"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Fault Reason Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Contract No."(Key)". Please convert manually.

        key(Key1;"Document Type","Document No.","Line No.")
        {
        }
        key(Key2;"Document No.","Line No.","Document Type")
        {
        }
        key(Key3;"Document Type","Document No.","Service Item No.","Contract No.","Contract Line No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key4;"Service Item No.")
        {
        }
        key(Key5;"Document Type","Document No.","Response Date","Response Time")
        {
        }
        key(Key6;"Response Date","Response Time",Priority)
        {
        }
        key(Key7;"Loaner No.")
        {
        }
        key(Key8;"Document Type","Document No.","Starting Date","Starting Time")
        {
            MaintainSQLIndex = false;
        }
        key(Key9;"Document Type","Document No.","Finishing Date","Finishing Time")
        {
            MaintainSQLIndex = false;
        }
        key(Key10;"Fault Reason Code")
        {
        }
        key(Key11;"Contract No.")
        {
        }
        key(Key12;"Customer No.")
        {
        }
        key(Key13;Station)
        {
        }
        key(Key14;"Service Item Group Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        IF "Loaner No." <> '' THEN BEGIN
          Loaner.GET("Loaner No.");
          LoanerEntry.SETRANGE("Document Type","Document Type" + 1);
          LoanerEntry.SETRANGE("Document No.","Document No.");
          LoanerEntry.SETRANGE("Loaner No.","Loaner No.");
          LoanerEntry.SETRANGE(Lent,TRUE);
          IF NOT LoanerEntry.ISEMPTY THEN
            ERROR(
              Text006,
              TABLECAPTION,"Document No.","Line No.",FIELDCAPTION("Loaner No."),"Loaner No.");
          LoanerEntry.SETRANGE(Lent,TRUE);
          LoanerEntry.DELETEALL;
        END;

        ServLine.RESET;
        ServLine.SETCURRENTKEY("Document Type","Document No.","Service Item Line No.");
        ServLine.SETRANGE("Document Type","Document Type");
        ServLine.SETRANGE("Document No.","Document No.");
        ServLine.SETRANGE("Service Item Line No.","Line No.");
        IF ServLine.FIND('-') THEN
          ERROR(
            Text008,
            TABLECAPTION,"Document No.","Line No.",ServLine.TABLECAPTION);

        ServOrderAlloc.RESET;
        ServOrderAlloc.SETCURRENTKEY("Document Type","Document No.","Service Item Line No.");
        ServOrderAlloc.SETRANGE("Document Type","Document Type");
        ServOrderAlloc.SETRANGE("Document No.","Document No.");
        ServOrderAlloc.SETRANGE("Service Item Line No.","Line No.");
        ServOrderAlloc.SETFILTER(Status,'%1|%2',ServOrderAlloc.Status::Active,ServOrderAlloc.Status::Finished);
        IF ServOrderAlloc.FIND('-') THEN
          ERROR(
            Text008,
            TABLECAPTION,"Document No.","Line No.",ServOrderAlloc.TABLECAPTION);
        ServOrderAlloc.SETRANGE(Status);
        ServOrderAlloc.DELETEALL;

        ServCommentLine.RESET;
        ServCommentLine.SETRANGE("Table Name",ServCommentLine."Table Name"::"Service Header");
        ServCommentLine.SETRANGE("Table Subtype","Document Type");
        ServCommentLine.SETRANGE("No.","Document No.");
        ServCommentLine.SETRANGE("Table Line No.","Line No.");
        ServCommentLine.DELETEALL;

        CLEAR(ServLogMgt);
        ServLogMgt.ServItemOffServOrder(Rec);

        ServOrderMgt.UpdateResponseDateTime(Rec,TRUE);
        UpdateStartFinishDateTime("Document Type","Document No.","Line No.",CALCDATE('<CY+1D-1Y>',WORKDATE),0T,0D,0T,TRUE);
        ServOrderMgt.UpdatePriority(Rec,TRUE);
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        if not((UpperCase(UserId)in ['SUPER','EFFTRONICS\RAMADEVI','EFFTRONICS\NAGALAKSHMI','EFFTRONICS\PRANAVI','EFFTRONICS\BHAVANIP'])) then
        Error(' U Have No Rights to delete the Records ');

        if "Loaner No." <> '' then begin
          Loaner.Get("Loaner No.");
          LoanerEntry.SetRange("Document Type","Document Type" + 1);
          LoanerEntry.SetRange("Document No.","Document No.");
          LoanerEntry.SetRange("Loaner No.","Loaner No.");
          LoanerEntry.SetRange(Lent,true);
          if not LoanerEntry.IsEmpty then
            Error(
              Text006,
              TableCaption,"Document No.","Line No.",FieldCaption("Loaner No."),"Loaner No.");
          LoanerEntry.SetRange(Lent,true);
          LoanerEntry.DeleteAll;
        end;

        ServLine.Reset;
        ServLine.SetCurrentKey("Document Type","Document No.","Service Item Line No.");
        ServLine.SetRange("Document Type","Document Type");
        ServLine.SetRange("Document No.","Document No.");
        ServLine.SetRange("Service Item Line No.","Line No.");
        if ServLine.Find('-') then
          Error(
            Text008,
            TableCaption,"Document No.","Line No.",ServLine.TableCaption);

        ServOrderAlloc.Reset;
        ServOrderAlloc.SetCurrentKey("Document Type","Document No.","Service Item Line No.");
        ServOrderAlloc.SetRange("Document Type","Document Type");
        ServOrderAlloc.SetRange("Document No.","Document No.");
        ServOrderAlloc.SetRange("Service Item Line No.","Line No.");
        ServOrderAlloc.SetFilter(Status,'%1|%2',ServOrderAlloc.Status::Active,ServOrderAlloc.Status::Finished);
        if ServOrderAlloc.Find('-') then
          Error(
            Text008,
            TableCaption,"Document No.","Line No.",ServOrderAlloc.TableCaption);
        ServOrderAlloc.SetRange(Status);
        ServOrderAlloc.DeleteAll;

        ServCommentLine.Reset;
        ServCommentLine.SetRange("Table Name",ServCommentLine."Table Name"::"Service Header");
        ServCommentLine.SetRange("Table Subtype","Document Type");
        ServCommentLine.SetRange("No.","Document No.");
        ServCommentLine.SetRange("Table Line No.","Line No.");
        ServCommentLine.DeleteAll;

        Clear(ServLogMgt);
        ServLogMgt.ServItemOffServOrder(Rec);

        ServOrderMgt.UpdateResponseDateTime(Rec,true);
        UpdateStartFinishDateTime("Document Type","Document No.","Line No.",CalcDate('<CY+1D-1Y>',WorkDate),0T,0D,0T,true);
        ServOrderMgt.UpdatePriority(Rec,true);
        */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        ServMgtSetup.GET;
        ServItemLine.RESET;
        ServItemLine.SETRANGE("Document Type","Document Type");
        ServItemLine.SETRANGE("Document No.","Document No.");
        FirstServItemLine := NOT ServItemLine.FIND('-');
        IF ServMgtSetup."One Service Item Line/Order" THEN
          IF NOT FirstServItemLine THEN
            ERROR(Text000,ServMgtSetup.TABLECAPTION,ServItemLine.TABLECAPTION,ServHeader.TABLECAPTION);

        GetServHeader;
        IF ServHeader."Customer No." = '' THEN BEGIN
          IF (ServHeader.Name <> '') AND (ServHeader.Address <> '') AND (ServHeader.City <> '') THEN
            ERROR(
              Text001,
              TABLECAPTION,ServHeader.FIELDCAPTION("Customer No."),ServHeader.TABLECAPTION,ServHeader."No.");
          ERROR(
            Text002,
            TABLECAPTION,ServHeader.FIELDCAPTION("Customer No."),ServHeader.TABLECAPTION,ServHeader."No.");
        END;

        "Responsibility Center" := ServHeader."Responsibility Center";
        "Customer No." := ServHeader."Customer No.";
        IF ServHeader."Contract No." <> '' THEN
          IF "Service Item No." = '' THEN
            "Contract No." := ServHeader."Contract No."
          ELSE BEGIN
            ServContractLine.RESET;
            ServContractLine.SETRANGE("Contract Type",ServContractLine."Contract Type"::Contract);
            ServContractLine.SETRANGE("Contract No.",ServHeader."Contract No.");
            ServContractLine.SETRANGE("Service Item No.","Service Item No.");
            ServContractLine.SETRANGE("Contract Status",ServContractLine."Contract Status"::Signed);
            ServContractLine.SETFILTER("Starting Date",'<=%1',ServHeader."Order Date");
            ServContractLine.SETFILTER("Contract Expiration Date",'>%1 | =%2',ServHeader."Order Date",0D);
            IF ServContractLine.FINDFIRST THEN
              "Contract No." := ServHeader."Contract No.";
          END;
        IF ("Contract No." <> '') AND ("Service Price Group Code" <> '') THEN
          VALIDATE("Service Price Group Code",'');

        ServOrderAllocMgt.CreateAllocationEntry(
          "Document Type","Document No.","Line No.","Service Item No.","Serial No.");

        CLEAR(ServLogMgt);
        ServLogMgt.ServItemToServOrder(Rec);

        IF (ServHeader."Quote No." = '') AND ("Response Time (Hours)" = 0) THEN
          UpdateResponseTimeHours;
        ServOrderMgt.UpdateResponseDateTime(Rec,FALSE);
        ServOrderMgt.UpdatePriority(Rec,FALSE);

        IF "Line No." = 0 THEN
          LendLoanerWithConfirmation;

        IF "Service Item No." = '' THEN
          "Ship-to Code" := ServHeader."Ship-to Code";
        IF FirstServItemLine AND
           ("Document Type" = "Document Type"::Order)
        THEN BEGIN
          CLEAR(SegManagement);
          IF ServHeader."Bill-to Contact No." <> '' THEN
            SegManagement.LogDocument(
              9,"Document No.",0,0,DATABASE::Contact,ServHeader."Bill-to Contact No.",
              ServHeader."Salesperson Code",'',ServHeader.Description,'')
          ELSE
            SegManagement.LogDocument(
              9,"Document No.",0,0,DATABASE::Customer,ServHeader."Bill-to Customer No.",
              ServHeader."Salesperson Code",'',ServHeader.Description,'');
        END;
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        ServMgtSetup.Get;
        ServItemLine.Reset;
        ServItemLine.SetRange("Document Type","Document Type");
        ServItemLine.SetRange("Document No.","Document No.");
        FirstServItemLine := not ServItemLine.Find('-');
        if ServMgtSetup."One Service Item Line/Order" then
          if not FirstServItemLine then
            Error(Text000,ServMgtSetup.TableCaption,ServItemLine.TableCaption,ServHeader.TableCaption);

        GetServHeader;
        if ServHeader."Customer No." = '' then begin
          if (ServHeader.Name <> '') and (ServHeader.Address <> '') and (ServHeader.City <> '') then
            Error(
              Text001,
              TableCaption,ServHeader.FieldCaption("Customer No."),ServHeader.TableCaption,ServHeader."No.");
          Error(
            Text002,
            TableCaption,ServHeader.FieldCaption("Customer No."),ServHeader.TableCaption,ServHeader."No.");
        end;
        #20..22
        if ServHeader."Contract No." <> '' then
          if "Service Item No." = '' then
            "Contract No." := ServHeader."Contract No."
          else begin
            ServContractLine.Reset;
            ServContractLine.SetRange("Contract Type",ServContractLine."Contract Type"::Contract);
            ServContractLine.SetRange("Contract No.",ServHeader."Contract No.");
            ServContractLine.SetRange("Service Item No.","Service Item No.");
            ServContractLine.SetRange("Contract Status",ServContractLine."Contract Status"::Signed);
            ServContractLine.SetFilter("Starting Date",'<=%1',ServHeader."Order Date");
            ServContractLine.SetFilter("Contract Expiration Date",'>%1 | =%2',ServHeader."Order Date",0D);
            if ServContractLine.FindFirst then
              "Contract No." := ServHeader."Contract No.";
          end;
        if ("Contract No." <> '') and ("Service Price Group Code" <> '') then
          Validate("Service Price Group Code",'');
        #39..42
        Clear(ServLogMgt);
        ServLogMgt.ServItemToServOrder(Rec);

        if (ServHeader."Quote No." = '') and ("Response Time (Hours)" = 0) then
          UpdateResponseTimeHours;
        ServOrderMgt.UpdateResponseDateTime(Rec,false);
        ServOrderMgt.UpdatePriority(Rec,false);

        if "Line No." = 0 then
          LendLoanerWithConfirmation;

        if "Service Item No." = '' then
          "Ship-to Code" := ServHeader."Ship-to Code";
        if FirstServItemLine and
           ("Document Type" = "Document Type"::Order)
        then begin
          Clear(SegManagement);
          if ServHeader."Bill-to Contact No." <> '' then
        #61..63
          else
        #65..67
        end;
        */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        IF UseServItemLineAsxRec THEN BEGIN
          xRec := ServItemLine;
          UseServItemLineAsxRec := FALSE;
        END;

        OnBeforeOnModify(Rec,xRec);

        IF ("Service Item No." <> xRec."Service Item No.") OR ("Serial No." <> xRec."Serial No.") THEN BEGIN
          ServLine.RESET;
          ServLine.SETCURRENTKEY("Document Type","Document No.","Service Item Line No.");
          ServLine.SETRANGE("Document Type","Document Type");
          ServLine.SETRANGE("Document No.","Document No.");
          ServLine.SETRANGE("Service Item Line No.","Line No.");
          IF ServLine.FIND('-') THEN
            REPEAT
              ServLine."Service Item No." := "Service Item No.";
              ServLine."Service Item Serial No." := "Serial No.";
              ServLine.MODIFY(TRUE);
            UNTIL ServLine.NEXT = 0;

          ServOrderAlloc.RESET;
          ServOrderAlloc.SETCURRENTKEY("Document Type","Document No.","Service Item Line No.");
          ServOrderAlloc.SETRANGE("Document Type","Document Type");
          ServOrderAlloc.SETRANGE("Document No.","Document No.");
          ServOrderAlloc.SETRANGE("Service Item Line No.","Line No.");
          IF ServOrderAlloc.FIND('-') THEN
            REPEAT
              ServOrderAlloc."Service Item No." := "Service Item No.";
              ServOrderAlloc."Service Item Serial No." := "Serial No.";
              ServOrderAlloc.MODIFY(TRUE);
            UNTIL ServOrderAlloc.NEXT = 0;
        END;

        IF (("Fault Area Code" <> xRec."Fault Area Code") OR
            ("Symptom Code" <> xRec."Symptom Code") OR
            ("Fault Code" <> xRec."Fault Code") OR
            ("Resolution Code" <> xRec."Resolution Code")) AND
           CheckServLineExist
        THEN
          MESSAGE(
            Text003,
            TABLECAPTION);
        IF "Service Item No." <> xRec."Service Item No." THEN BEGIN
          CLEAR(ServLogMgt);
          ServLogMgt.ServItemOffServOrder(xRec);
          ServLogMgt.ServItemToServOrder(Rec);
        END;

        ServOrderMgt.UpdateResponseDateTime(Rec,FALSE);
        ServOrderMgt.UpdatePriority(Rec,FALSE);
        UpdateServiceOrderChangeLog(xRec);
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        if UseServItemLineAsxRec then begin
          xRec := ServItemLine;
          UseServItemLineAsxRec := false;
        end;
        #5..7
        if ("Service Item No." <> xRec."Service Item No.") or ("Serial No." <> xRec."Serial No.") then begin
          ServLine.Reset;
          ServLine.SetCurrentKey("Document Type","Document No.","Service Item Line No.");
          ServLine.SetRange("Document Type","Document Type");
          ServLine.SetRange("Document No.","Document No.");
          ServLine.SetRange("Service Item Line No.","Line No.");
          if ServLine.Find('-') then
            repeat
              ServLine."Service Item No." := "Service Item No.";
              ServLine."Service Item Serial No." := "Serial No.";
              ServLine.Modify(true);
            until ServLine.Next = 0;

          ServOrderAlloc.Reset;
          ServOrderAlloc.SetCurrentKey("Document Type","Document No.","Service Item Line No.");
          ServOrderAlloc.SetRange("Document Type","Document Type");
          ServOrderAlloc.SetRange("Document No.","Document No.");
          ServOrderAlloc.SetRange("Service Item Line No.","Line No.");
          if ServOrderAlloc.Find('-') then
            repeat
              ServOrderAlloc."Service Item No." := "Service Item No.";
              ServOrderAlloc."Service Item Serial No." := "Serial No.";
              ServOrderAlloc.Modify(true);
            until ServOrderAlloc.Next = 0;
        end;

        if (("Fault Area Code" <> xRec."Fault Area Code") or
            ("Symptom Code" <> xRec."Symptom Code") or
            ("Fault Code" <> xRec."Fault Code") or
            ("Resolution Code" <> xRec."Resolution Code")) and
           CheckServLineExist
        then
          Message(
            Text003,
            TableCaption);
        if "Service Item No." <> xRec."Service Item No." then begin
          Clear(ServLogMgt);
          ServLogMgt.ServItemOffServOrder(xRec);
          ServLogMgt.ServItemToServOrder(Rec);
        end;

        ServOrderMgt.UpdateResponseDateTime(Rec,false);
        ServOrderMgt.UpdatePriority(Rec,false);
        UpdateServiceOrderChangeLog(xRec);

        Message('Service Item No. "%1", item: "%2" with Serial No. "%3"  having Repair Status Code : "%5" moved to "%4" Location ', "Service Item No.",Description,"Serial No.","To Location","Repair Status Code" );
        */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        ERROR(Text010,TABLECAPTION);
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        Error(Text010,TableCaption);
        */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Service Item No."(Field 3).OnValidate.Cust(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Service Item No." : 18;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Service Item No." : Customer;
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Service Item No."(Field 3).OnValidate.ConfirmManagement(Variable 1002)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Service Item No." : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Service Item No." : "Confirm Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Service Item No."(Field 3).OnValidate.ServContractList(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Service Item No." : 6075;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Service Item No." : "Serv. Contr. List (Serv. Item)";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Warranty(Field 21).OnValidate.ConfirmManagement(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //Warranty : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Warranty : "Confirm Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Contract No."(Field 26).OnLookup.ServHeader(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Contract No." : 5900;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Contract No." : "Service Header";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Contract No."(Field 26).OnLookup.ServContractLine(Variable 1003)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Contract No." : 5964;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Contract No." : "Service Contract Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Contract No."(Field 26).OnLookup.ServContractList(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Contract No." : 6075;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Contract No." : "Serv. Contr. List (Serv. Item)";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Contract No."(Field 26).OnValidate.ConfirmManagement(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Contract No." : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Contract No." : "Confirm Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Loaner No."(Field 28).OnValidate.LoanerEntry(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Loaner No." : 5914;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Loaner No." : "Loaner Entry";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Fault Reason Code"(Field 31).OnValidate.FaultReasonCode(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Fault Reason Code" : 5917;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Fault Reason Code" : "Fault Reason Code";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Fault Reason Code"(Field 31).OnValidate.ConfirmManagement(Variable 1004)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Fault Reason Code" : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Fault Reason Code" : "Confirm Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Service Price Group Code"(Field 32).OnValidate.ServPriceGrSetup(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Service Price Group Code" : 6081;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Service Price Group Code" : "Serv. Price Group Setup";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Service Price Group Code"(Field 32).OnValidate.ServPriceMgmt(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Service Price Group Code" : 6080;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Service Price Group Code" : "Service Price Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Service Price Group Code"(Field 32).OnValidate.ConfirmManagement(Variable 1002)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Service Price Group Code" : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Service Price Group Code" : "Confirm Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Fault Area Code"(Field 33).OnValidate.ServPriceMgmt(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Fault Area Code" : 6080;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Fault Area Code" : "Service Price Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Fault Area Code"(Field 33).OnValidate.ConfirmManagement(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"Fault Area Code" : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"Fault Area Code" : "Confirm Management";
        //Variable type has not been exported.

    var
        FaultArea : Record "Fault Area";

    var
        SymptomCode : Record "Symptom Code";


    //Unsupported feature: PropertyModification on "OnDelete.LoanerEntry(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //OnDelete.LoanerEntry : 5914;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //OnDelete.LoanerEntry : "Loaner Entry";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckIfLoanerOnServOrder(PROCEDURE 5).ServItemLine(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CheckIfLoanerOnServOrder : 5901;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CheckIfLoanerOnServOrder : "Service Item Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalculateResponseDateTime(PROCEDURE 1).CalChange(Variable 1007)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CalculateResponseDateTime : 7602;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalculateResponseDateTime : "Customized Calendar Change";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalculateResponseDateTime(PROCEDURE 1).CalendarMgmt(Variable 1008)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CalculateResponseDateTime : 7600;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CalculateResponseDateTime : "Calendar Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateStartFinishDateTime(PROCEDURE 12).ServOrderMgt(Variable 1009)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //UpdateStartFinishDateTime : 5900;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UpdateStartFinishDateTime : ServOrderManagement;
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssistEditSerialNo(PROCEDURE 10).ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //AssistEditSerialNo : 32;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //AssistEditSerialNo : "Item Ledger Entry";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetItemTranslation(PROCEDURE 42).ItemTranslation(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //GetItemTranslation : 30;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //GetItemTranslation : "Item Translation";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecreateServLines(PROCEDURE 14).TempServLine(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //RecreateServLines : 5902;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //RecreateServLines : "Service Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 26).SourceCodeSetup(Variable 1006)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CreateDim : 242;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CreateDim : "Source Code Setup";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateAllLineDim(PROCEDURE 41).ConfirmManagement(Variable 1003)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //UpdateAllLineDim : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //UpdateAllLineDim : "Confirm Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LendLoanerWithConfirmation(PROCEDURE 19).ConfirmManagement(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //LendLoanerWithConfirmation : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //LendLoanerWithConfirmation : "Confirm Management";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServMgtSetup(Variable 1035)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServMgtSetup : 5911;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServMgtSetup : "Service Mgt. Setup";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServOrderAlloc(Variable 1031)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServOrderAlloc : 5950;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServOrderAlloc : "Service Order Allocation";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServItem(Variable 1032)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServItem : 5940;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServItem : "Service Item";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServContract(Variable 1033)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServContract : 5965;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServContract : "Service Contract Header";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServLine(Variable 1034)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServLine : 5902;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServLine : "Service Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServItemLine(Variable 1036)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServItemLine : 5901;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServItemLine : "Service Item Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServHour(Variable 1037)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServHour : 5910;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServHour : "Service Hour";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServHour2(Variable 1038)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServHour2 : 5910;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServHour2 : "Service Hour";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServHeader(Variable 1039)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServHeader : 5900;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServHeader : "Service Header";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServHeader2(Variable 1066)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServHeader2 : 5900;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServHeader2 : "Service Header";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServHeader3(Variable 1068)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServHeader3 : 5900;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServHeader3 : "Service Header";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServCommentLine(Variable 1040)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServCommentLine : 5906;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServCommentLine : "Service Comment Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServItemGr(Variable 1041)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServItemGr : 5904;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServItemGr : "Service Item Group";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RepairStatus(Variable 1042)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //RepairStatus : 5927;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //RepairStatus : "Repair Status";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RepairStatus2(Variable 1063)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //RepairStatus2 : 5927;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //RepairStatus2 : "Repair Status";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Loaner(Variable 1044)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //Loaner : 5913;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Loaner : Loaner;
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServContractLine(Variable 1043)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServContractLine : 5964;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServContractLine : "Service Contract Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1047)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //Item : 27;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Item : Item;
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServLogMgt(Variable 1049)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServLogMgt : 5906;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServLogMgt : ServLogManagement;
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServOrderAllocMgt(Variable 1050)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServOrderAllocMgt : 5930;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServOrderAllocMgt : ServAllocationManagement;
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServOrderMgt(Variable 1051)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServOrderMgt : 5900;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServOrderMgt : ServOrderManagement;
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SegManagement(Variable 1052)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //SegManagement : 5051;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //SegManagement : SegManagement;
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServLoanerMgt(Variable 1053)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ServLoanerMgt : 5901;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ServLoanerMgt : ServLoanerManagement;
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1087)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //DimMgt : 408;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //DimMgt : DimensionManagement;
        //Variable type has not been exported.

    var
        "ITEMLEDGER ENTRY" : Record "Item Ledger Entry";
        "Dimension Value" : Record "Dimension Value";
        TSH : Record "Troubleshooting Header";
        FaultArea : Record "Fault Area";
        PMIH : Record "Posted Material Issues Header";
        CTHGRec : Record "CS Transaction Header";
        CTLGRec : Record "CS Transaction Line";
        CTLedgGRec : Record "CS Stock Ledger";
        TransNoGVar : Text;
        StatusGVar : Option Working,"Non Working";
        totCardsGVar : Decimal;
        entryNoGVar : Integer;
        ItemGRec : Record Item;
        PMIL : Record "Posted Material Issues Line";
        reasonGvar : Code[20];
        StatGVar : Code[20];
        PMIHG : Record "Posted Material Issues Header";
        Station : Record Station;
        SH : Record "Service Header";
        stat : Record Station;
        Divi : Record Division;
        buf : Text;
        buf2 : Text;
        ServHeader1 : Record "Service Header";
        SMTP_MAIL : Codeunit "SMTP Mail";
        Mail_From : Text;
        Mail_To : Text;
        Subject : Text;
        Body : Text;
}

