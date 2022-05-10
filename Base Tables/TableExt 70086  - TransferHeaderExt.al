tableextension 70089 TransferHeaderExt extends "Transfer Header"
{
    // version NAVW19.00.00.51103,NAVIN9.00.00.51103,Rev01

    fields
    {

        //Unsupported feature: Change TableRelation on ""Transfer-from Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Transfer-from Post Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Transfer-from Post Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Transfer-from Post Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Transfer-from City"(Field 8)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Transfer-from City"(Field 8)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Transfer-from City"(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Trsf.-from Country/Region Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Transfer-to Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Transfer-to Post Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Transfer-to Post Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Transfer-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Transfer-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Transfer-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Trsf.-to Country/Region Code"(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on "Status(Field 23)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 24)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 24)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 25)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 26)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""In-Transit Code"(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Shipment No."(Field 29)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Receipt No."(Field 30)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Agent Code"(Field 34)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 35)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Time"(Field 36)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 48)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Completely Shipped"(Field 5752)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Shipped"(Field 5752)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Completely Received"(Field 5753)". Please convert manually.


        //Unsupported feature: Change Editable on ""Completely Received"(Field 5753)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Has Shipped Lines"(Field 8000)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 1).OnValidate". Please convert manually.

        //trigger "(Field 1)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> xRec."No." THEN BEGIN
          GetInventorySetup;
          NoSeriesMgt.TestManual(GetNoSeriesCode);
          "No. Series" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> xRec."No." then begin
        #2..4
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Transfer-from Code"(Field 2).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        IsHandled := FALSE;
        OnBeforeValidateTransferFromCode(Rec,xRec,IsHandled);
        IF IsHandled THEN
          EXIT;

        IF ("Transfer-from Code" = "Transfer-to Code") AND ("Transfer-from Code" <> '') THEN
          ERROR(
            Text001,
            FIELDCAPTION("Transfer-from Code"),FIELDCAPTION("Transfer-to Code"),
            TABLECAPTION,"No.");

        IF "Direct Transfer" THEN
          VerifyNoOutboundWhseHandlingOnLocation("Transfer-from Code");

        IF xRec."Transfer-from Code" <> "Transfer-from Code" THEN BEGIN
          IF HideValidationDialog OR
             (xRec."Transfer-from Code" = '')
          THEN
            Confirmed := TRUE
          ELSE
            Confirmed := CONFIRM(Text002,FALSE,FIELDCAPTION("Transfer-from Code"));
          IF Confirmed THEN BEGIN
            IF Location.GET("Transfer-from Code") THEN BEGIN
              "Transfer-from Name" := Location.Name;
              "Transfer-from Name 2" := Location."Name 2";
              "Transfer-from Address" := Location.Address;
              "Transfer-from Address 2" := Location."Address 2";
              "Transfer-from Post Code" := Location."Post Code";
              "Transfer-from City" := Location.City;
              "Transfer-from County" := Location.County;
              "Trsf.-from Country/Region Code" := Location."Country/Region Code";
              "Transfer-from Contact" := Location.Contact;
              IF NOT "Direct Transfer" THEN BEGIN
                "Outbound Whse. Handling Time" := Location."Outbound Whse. Handling Time";
                TransferRoute.GetTransferRoute(
                  "Transfer-from Code","Transfer-to Code","In-Transit Code",
                  "Shipping Agent Code","Shipping Agent Service Code");
                TransferRoute.GetShippingTime(
                  "Transfer-from Code","Transfer-to Code",
                  "Shipping Agent Code","Shipping Agent Service Code",
                  "Shipping Time");
                TransferRoute.CalcReceiptDate(
                  "Shipment Date",
                  "Receipt Date",
                  "Shipping Time",
                  "Outbound Whse. Handling Time",
                  "Inbound Whse. Handling Time",
                  "Transfer-from Code",
                  "Transfer-to Code",
                  "Shipping Agent Code",
                  "Shipping Agent Service Code");
              END;
              TransLine.LOCKTABLE;
              TransLine.SETRANGE("Document No.","No.");
            END;
            UpdateTransLines(Rec,FIELDNO("Transfer-from Code"));
          END ELSE
            "Transfer-from Code" := xRec."Transfer-from Code";
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;

        IsHandled := false;
        OnBeforeValidateTransferFromCode(Rec,xRec,IsHandled);
        if IsHandled then
          exit;

        if ("Transfer-from Code" = "Transfer-to Code") and ("Transfer-from Code" <> '') then
          Error(
            Text001,
            FieldCaption("Transfer-from Code"),FieldCaption("Transfer-to Code"),
            TableCaption,"No.");

        if "Direct Transfer" then
          VerifyNoOutboundWhseHandlingOnLocation("Transfer-from Code");

        if xRec."Transfer-from Code" <> "Transfer-from Code" then begin
          if HideValidationDialog or
             (xRec."Transfer-from Code" = '')
          then
            Confirmed := true
          else
            Confirmed := Confirm(Text002,false,FieldCaption("Transfer-from Code"));
          if Confirmed then begin
            if Location.Get("Transfer-from Code") then begin
        #26..34
              if not "Direct Transfer" then begin
        #36..53
              end;
              TransLine.LockTable;
              TransLine.SetRange("Document No.","No.");
            end;
            UpdateTransLines(Rec,FieldNo("Transfer-from Code"));
          end else
            "Transfer-from Code" := xRec."Transfer-from Code";
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Transfer-from Post Code"(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Transfer-from City","Transfer-from Post Code",
          "Transfer-from County","Trsf.-from Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Transfer-from City","Transfer-from Post Code",
          "Transfer-from County","Trsf.-from Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Transfer-from City"(Field 8).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Transfer-from City","Transfer-from Post Code",
          "Transfer-from County","Trsf.-from Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Transfer-from City","Transfer-from Post Code",
          "Transfer-from County","Trsf.-from Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Transfer-to Code"(Field 11).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        IsHandled := FALSE;
        OnBeforeValidateTransferToCode(Rec,xRec,IsHandled);
        IF IsHandled THEN
          EXIT;

        IF ("Transfer-from Code" = "Transfer-to Code") AND ("Transfer-to Code" <> '') THEN
          ERROR(
            Text001,
            FIELDCAPTION("Transfer-from Code"),FIELDCAPTION("Transfer-to Code"),
            TABLECAPTION,"No.");

        IF "Direct Transfer" THEN
          VerifyNoInboundWhseHandlingOnLocation("Transfer-to Code");

        IF xRec."Transfer-to Code" <> "Transfer-to Code" THEN BEGIN
          IF HideValidationDialog OR (xRec."Transfer-to Code" = '') THEN
            Confirmed := TRUE
          ELSE
            Confirmed := CONFIRM(Text002,FALSE,FIELDCAPTION("Transfer-to Code"));
          IF Confirmed THEN BEGIN
            IF Location.GET("Transfer-to Code") THEN BEGIN
              "Transfer-to Name" := Location.Name;
              "Transfer-to Name 2" := Location."Name 2";
              "Transfer-to Address" := Location.Address;
              "Transfer-to Address 2" := Location."Address 2";
              "Transfer-to Post Code" := Location."Post Code";
              "Transfer-to City" := Location.City;
              "Transfer-to County" := Location.County;
              "Trsf.-to Country/Region Code" := Location."Country/Region Code";
              "Transfer-to Contact" := Location.Contact;
              IF NOT "Direct Transfer" THEN BEGIN
                "Inbound Whse. Handling Time" := Location."Inbound Whse. Handling Time";
                TransferRoute.GetTransferRoute(
                  "Transfer-from Code","Transfer-to Code","In-Transit Code",
                  "Shipping Agent Code","Shipping Agent Service Code");
                TransferRoute.GetShippingTime(
                  "Transfer-from Code","Transfer-to Code",
                  "Shipping Agent Code","Shipping Agent Service Code",
                  "Shipping Time");
                TransferRoute.CalcReceiptDate(
                  "Shipment Date",
                  "Receipt Date",
                  "Shipping Time",
                  "Outbound Whse. Handling Time",
                  "Inbound Whse. Handling Time",
                  "Transfer-from Code",
                  "Transfer-to Code",
                  "Shipping Agent Code",
                  "Shipping Agent Service Code");
              END;
              TransLine.LOCKTABLE;
              TransLine.SETRANGE("Document No.","No.");
            END;
            UpdateTransLines(Rec,FIELDNO("Transfer-to Code"));
          END ELSE
            "Transfer-to Code" := xRec."Transfer-to Code";
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;

        IsHandled := false;
        OnBeforeValidateTransferToCode(Rec,xRec,IsHandled);
        if IsHandled then
          exit;

        if ("Transfer-from Code" = "Transfer-to Code") and ("Transfer-to Code" <> '') then
          Error(
            Text001,
            FieldCaption("Transfer-from Code"),FieldCaption("Transfer-to Code"),
            TableCaption,"No.");

        if "Direct Transfer" then
          VerifyNoInboundWhseHandlingOnLocation("Transfer-to Code");

        if xRec."Transfer-to Code" <> "Transfer-to Code" then begin
          if HideValidationDialog or (xRec."Transfer-to Code" = '') then
            Confirmed := true
          else
            Confirmed := Confirm(Text002,false,FieldCaption("Transfer-to Code"));
          if Confirmed then begin
            if Location.Get("Transfer-to Code") then begin
        #24..32
              if not "Direct Transfer" then begin
        #34..51
              end;
              TransLine.LockTable;
              TransLine.SetRange("Document No.","No.");
            end;
            UpdateTransLines(Rec,FieldNo("Transfer-to Code"));
          end else
            "Transfer-to Code" := xRec."Transfer-to Code";
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Transfer-to Post Code"(Field 16).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Transfer-to City","Transfer-to Post Code","Transfer-to County",
          "Trsf.-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(
          "Transfer-to City","Transfer-to Post Code","Transfer-to County",
          "Trsf.-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Transfer-to City"(Field 17).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Transfer-to City","Transfer-to Post Code","Transfer-to County",
          "Trsf.-to Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(
          "Transfer-to City","Transfer-to Post Code","Transfer-to County",
          "Trsf.-to Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipment Date"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TransferRoute.CalcReceiptDate(
          "Shipment Date",
        #4..8
          "Transfer-to Code",
          "Shipping Agent Code",
          "Shipping Agent Service Code");
        UpdateTransLines(Rec,FIELDNO("Shipment Date"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..11
        UpdateTransLines(Rec,FieldNo("Shipment Date"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Receipt Date"(Field 22).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TransferRoute.CalcShipmentDate(
          "Shipment Date",
        #4..8
          "Transfer-to Code",
          "Shipping Agent Code",
          "Shipping Agent Service Code");
        UpdateTransLines(Rec,FIELDNO("Receipt Date"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..11
        UpdateTransLines(Rec,FieldNo("Receipt Date"));
        */
        //end;


        //Unsupported feature: CodeModification on "Status(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UpdateTransLines(Rec,FIELDNO(Status));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UpdateTransLines(Rec,FieldNo(Status));
        */
        //end;


        //Unsupported feature: CodeModification on ""In-Transit Code"(Field 27).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        UpdateTransLines(Rec,FIELDNO("In-Transit Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        UpdateTransLines(Rec,FieldNo("In-Transit Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""External Document No."(Field 33).OnValidate". Please convert manually.

        //trigger "(Field 33)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (xRec."External Document No." <> "External Document No.") AND (Status = Status::Released) THEN
          WhseTransferRelease.UpdateExternalDocNoForReleasedOrder(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (xRec."External Document No." <> "External Document No.") and (Status = Status::Released) then
          WhseTransferRelease.UpdateExternalDocNoForReleasedOrder(Rec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Agent Code"(Field 34).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Shipping Agent Code" <> xRec."Shipping Agent Code" THEN
          VALIDATE("Shipping Agent Service Code",'');
        UpdateTransLines(Rec,FIELDNO("Shipping Agent Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatusOpen;
        if "Shipping Agent Code" <> xRec."Shipping Agent Code" then
          Validate("Shipping Agent Service Code",'');
        UpdateTransLines(Rec,FieldNo("Shipping Agent Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Agent Service Code"(Field 35).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TransferRoute.GetShippingTime(
          "Transfer-from Code","Transfer-to Code",
        #4..13
          "Shipping Agent Code",
          "Shipping Agent Service Code");

        UpdateTransLines(Rec,FIELDNO("Shipping Agent Service Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..16
        UpdateTransLines(Rec,FieldNo("Shipping Agent Service Code"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Time"(Field 36).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TransferRoute.CalcReceiptDate(
          "Shipment Date",
        #4..9
          "Shipping Agent Code",
          "Shipping Agent Service Code");

        UpdateTransLines(Rec,FIELDNO("Shipping Time"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..12
        UpdateTransLines(Rec,FieldNo("Shipping Time"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Direct Transfer"(Field 70).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Direct Transfer" THEN BEGIN
          VerifyNoOutboundWhseHandlingOnLocation("Transfer-from Code");
          VerifyNoInboundWhseHandlingOnLocation("Transfer-to Code");
          VALIDATE("In-Transit Code",'');
        END;

        MODIFY(TRUE);
        UpdateTransLines(Rec,FIELDNO("Direct Transfer"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Direct Transfer" then begin
          VerifyNoOutboundWhseHandlingOnLocation("Transfer-from Code");
          VerifyNoInboundWhseHandlingOnLocation("Transfer-to Code");
          Validate("In-Transit Code",'');
        end;

        Modify(true);
        UpdateTransLines(Rec,FieldNo("Direct Transfer"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Shipping Advice"(Field 5750).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Shipping Advice" <> xRec."Shipping Advice" THEN BEGIN
          TestStatusOpen;
          WhseSourceHeader.TransHeaderVerifyChange(Rec,xRec);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Shipping Advice" <> xRec."Shipping Advice" then begin
          TestStatusOpen;
          WhseSourceHeader.TransHeaderVerifyChange(Rec,xRec);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Outbound Whse. Handling Time"(Field 5793).OnValidate". Please convert manually.

        //trigger  Handling Time"(Field 5793)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TransferRoute.CalcReceiptDate(
          "Shipment Date",
        #4..9
          "Shipping Agent Code",
          "Shipping Agent Service Code");

        UpdateTransLines(Rec,FIELDNO("Outbound Whse. Handling Time"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..12
        UpdateTransLines(Rec,FieldNo("Outbound Whse. Handling Time"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Inbound Whse. Handling Time"(Field 5794).OnValidate". Please convert manually.

        //trigger  Handling Time"(Field 5794)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TransferRoute.CalcReceiptDate(
          "Shipment Date",
        #4..9
          "Shipping Agent Code",
          "Shipping Agent Service Code");

        UpdateTransLines(Rec,FIELDNO("Inbound Whse. Handling Time"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..12
        UpdateTransLines(Rec,FieldNo("Inbound Whse. Handling Time"));
        */
        //end;
        field(13707; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(13723; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;
            TableRelation = "Form Codes";
        }
        field(13724; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
            TableRelation = "Tax Forms Details"."Form No." WHERE("Form Code" = FIELD("Form Code"));
        }
        field(13750; Structure; Code[10])
        {
            CaptionML = ENU = 'Structure',
                        ENN = 'Structure';
            DataClassification = ToBeClassified;
            TableRelation = "Structure Header".Code;

            trigger OnValidate();
            var
                Text13700: TextConst ENU = 'Structure code cannot be changed.', ENN = 'Structure code cannot be changed.';
                StrDetails: Record "Structure Details";
                StrOrderDetails: Record "Structure Order Details";
                StrOrderLines: Record "Structure Order Line Details";
                TransLines: Record "Transfer Line";
            begin
                /*IF GoodsShipped THEN
                  ERROR(Text13700);
                
                GSTManagement.IsGSTApplicable(Structure);
                
                StrOrderDetails.SETCURRENTKEY("Document Type","Document No.",Type);
                StrOrderDetails.SETRANGE("Document No.","No.");
                StrOrderDetails.SETRANGE(Type,StrOrderDetails.Type::Transfer);
                IF StrOrderDetails.FINDFIRST THEN
                  StrOrderDetails.DELETEALL;
                
                StrOrderLines.SETCURRENTKEY("Document Type","Document No.",Type);
                StrOrderLines.SETRANGE("Document No.","No.");
                StrOrderLines.SETRANGE(Type,StrOrderLines.Type::Transfer);
                IF StrOrderLines.FINDFIRST THEN
                  StrOrderLines.DELETEALL;
                
                TransLines.ResetStructureAmounts(Rec);
                
                StrDetails.RESET;
                StrDetails.SETRANGE(Code,Structure);
                IF StrDetails.FIND('-') THEN
                  REPEAT
                    StrOrderDetails.Type := StrOrderDetails.Type::Transfer;
                    StrOrderDetails."Document No." := "No.";
                    StrOrderDetails."Structure Code" := Structure;
                    StrOrderDetails."Calculation Order" := StrDetails."Calculation Order";
                    StrOrderDetails."Tax/Charge Type" := StrDetails.Type;
                    StrOrderDetails."Tax/Charge Group" := StrDetails."Tax/Charge Group";
                    StrOrderDetails."Tax/Charge Code" := StrDetails."Tax/Charge Code";
                    StrOrderDetails."Calculation Type" := StrDetails."Calculation Type";
                    StrOrderDetails."Calculation Value" := StrDetails."Calculation Value";
                    StrOrderDetails."Quantity Per" := StrDetails."Quantity Per";
                    StrOrderDetails."Loading on Inventory" := StrDetails."Loading on Inventory";
                    StrOrderDetails."% Loading on Inventory" := StrDetails."% Loading on Inventory";
                    StrOrderDetails."Payable to Third Party" := StrDetails."Payable to Third Party";
                    StrOrderDetails."Account No." := StrDetails."Account No.";
                    StrOrderDetails."Base Formula" := StrDetails."Base Formula";
                    StrOrderDetails."Include Base" := StrDetails."Include Base";
                    StrOrderDetails."Include Line Discount" := StrDetails."Include Line Discount";
                    StrOrderDetails."Include Invoice Discount" := StrDetails."Include Invoice Discount";
                    StrOrderDetails."Charge Basis" := StrDetails."Charge Basis";
                    StrOrderDetails."Header/Line" := StrDetails."Header/Line";
                    IF StrDetails.Type = StrDetails.Type::Excise THEN
                      StrOrderDetails.CVD := StrDetails.CVD;
                    StrOrderDetails.INSERT
                  UNTIL StrDetails.NEXT = 0;
                  */

            end;
        }
        field(16503; "Captive Consumption"; Boolean)
        {
            CaptionML = ENU = 'Captive Consumption',
                        ENN = 'Captive Consumption';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16504; "Vendor Invoice No."; Code[20])
        {
            CaptionML = ENU = 'Vendor Invoice No.',
                        ENN = 'Vendor Invoice No.';
            DataClassification = ToBeClassified;
        }
        field(16505; "Time of Removal"; Time)
        {
            CaptionML = ENU = 'Time of Removal',
                        ENN = 'Time of Removal';
            DataClassification = ToBeClassified;
        }
        field(16506; "LR/RR No."; Code[20])
        {
            CaptionML = ENU = 'LR/RR No.',
                        ENN = 'LR/RR No.';
            DataClassification = ToBeClassified;
        }
        field(16507; "LR/RR Date"; Date)
        {
            CaptionML = ENU = 'LR/RR Date',
                        ENN = 'LR/RR Date';
            DataClassification = ToBeClassified;
        }
        field(16508; "Vehicle No."; Code[20])
        {
            CaptionML = ENU = 'Vehicle No.',
                        ENN = 'Vehicle No.';
            DataClassification = ToBeClassified;
        }
        field(16509; "Mode of Transport"; Text[15])
        {
            CaptionML = ENU = 'Mode of Transport',
                        ENN = 'Mode of Transport';
            DataClassification = ToBeClassified;
            TableRelation = "Transport Method";
        }
        field(16510; "Bill of Entry No."; Text[20])
        {
            CaptionML = ENU = 'Bill of Entry No.',
                        ENN = 'Bill of Entry No.';
            DataClassification = ToBeClassified;
        }
        field(16511; "Bill of Entry Date"; Date)
        {
            CaptionML = ENU = 'Bill of Entry Date',
                        ENN = 'Bill of Entry Date';
            DataClassification = ToBeClassified;
        }
        field(16512; "Vendor No."; Code[20])
        {
            CaptionML = ENU = 'Vendor No.',
                        ENN = 'Vendor No.';
            DataClassification = ToBeClassified;
            TableRelation = Vendor WHERE("GST Vendor Type" = FILTER(Import));
        }
        field(16513; "Distance (Km)"; Decimal)
        {
            CaptionML = ENU = 'Distance (Km)',
                        ENN = 'Distance (Km)';
            DataClassification = ToBeClassified;
        }
        field(16514; "Vehicle Type"; Option)
        {
            CaptionML = ENU = 'Vehicle Type',
                        ENN = 'Vehicle Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Regular,ODC',
                              ENN = ' ,Regular,ODC';
            OptionMembers = " ",Regular,ODC;
        }
        field(16515; "Load Unreal Prof Amt on Invt."; Boolean)
        {
            CaptionML = ENU = 'Load Unreal Prof Amt on Invt.',
                        ENN = 'Load Unreal Prof Amt on Invt.';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            var
                Location: Record Location;
            begin
                if Location.Get("Transfer-from Code") then
                    Location.TestField("Bonded warehouse", false);
            end;
        }
        field(60001; "Prod. Order No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Production Order"."No." WHERE(Status = CONST(Released));
        }
        field(60002; "Prod. Order Line No."; Integer)
        {
            Description = 'B2B';
            TableRelation = "Prod. Order Line"."Line No." WHERE("Prod. Order No." = FIELD("Prod. Order No."),
                                                                 Status = CONST(Released));

            trigger OnValidate();
            begin
                ProdOrderLine.SetRange("Prod. Order No.", "Prod. Order No.");
                ProdOrderLine.SetRange("Line No.", "Prod. Order Line No.");
                if ProdOrderLine.Find('-') then begin
                    "Due Date" := ProdOrderLine."Due Date";
                    "Prod. BOM No." := ProdOrderLine."Production BOM No.";
                end;
            end;
        }
        field(60003; "Service Item No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Service Item"."No.";
        }
        field(60004; "Customer No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = Customer."No.";
        }
        field(60005; "Prod. BOM No."; Code[20])
        {
            Description = 'B2B';

            trigger OnLookup();
            var
                ProductionOrderLine: Record "Prod. Order Line";
                ProductionBOMHeader: Record "Production BOM Header";
            begin
                ProductionOrderLine.SetRange("Prod. Order No.", "Prod. Order No.");
                ProductionOrderLine.SetRange("Line No.", "Prod. Order Line No.");
                if ProductionOrderLine.Find('-') then begin
                    ProductionBOMHeader.SetRange("No.", ProductionOrderLine."Production BOM No.");
                    if ProductionBOMHeader.Find('-') then begin
                        if PAGE.RunModal(0, ProductionBOMHeader) = ACTION::LookupOK then begin
                            "Prod. BOM No." := ProductionBOMHeader."No.";
                        end;
                    end;
                end;
            end;
        }
        field(60006; "Resource Name"; Text[50])
        {
            Description = 'B2B';
            Editable = false;

            trigger OnValidate();
            begin
                /*
                IF PAGE.RUNMODAL(5201,Employee) = ACTION::LookupOK THEN
                  "Resource Name" := Employee."First Name";
                */

            end;
        }
        field(60007; "User ID"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(60008; "Required Date"; Date)
        {
            Description = 'B2B';
        }
        field(60009; "Operation No."; Code[20])
        {
            Description = 'B2B';

            trigger OnLookup();
            var
                ProductionOrderLine: Record "Prod. Order Line";
            begin
                ProductionOrderLine.SetRange("Prod. Order No.", "Prod. Order No.");
                ProductionOrderLine.SetRange("Line No.", "Prod. Order Line No.");
                if ProductionOrderLine.Find('-') then
                    ProdOrderRoutingLine.SetRange(Status, ProductionOrderLine.Status);
                ProdOrderRoutingLine.SetRange("Prod. Order No.", ProductionOrderLine."Prod. Order No.");
                ProdOrderRoutingLine.SetRange("Routing Reference No.", ProductionOrderLine."Line No.");
                if ProdOrderRoutingLine.Find('-') then
                    if PAGE.RunModal(0, ProdOrderRoutingLine) = ACTION::LookupOK then begin
                        "Operation No." := ProdOrderRoutingLine."Operation No.";
                        "Due Date" := ProdOrderRoutingLine."Starting Date";
                    end;
            end;
        }
        field(60010; "Due Date"; Date)
        {
            Description = 'B2B';
        }
        field(60011; "Released Date"; Date)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60012; "Released By"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(60013; "Sales Order No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Sales Header"."No." WHERE("Document Type" = FILTER(Order));
        }
        field(60014; "Service Order No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Service Header"."No.";
        }
        field(60015; "Released Time"; Time)
        {
            Description = 'B2B';
        }
        field(60016; "Req Date Time"; DateTime)
        {

            trigger OnValidate();
            begin
                TransHeader."Req Date Time" := CurrentDateTime;
            end;
        }
        field(60017; "CST Status"; Option)
        {
            OptionMembers = Completed,Inprogress,Pending,NotRequired,"Vendor Serviceing","Work Order";
        }
        field(60018; "Created Date Time"; DateTime)
        {
            Editable = true;
        }
        field(60019; "Way Bill No."; Code[30])
        {
        }
        field(60090; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
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
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD(Status,Status::Open);

    WhseRequest.SETRANGE("Source Type",DATABASE::"Transfer Line");
    WhseRequest.SETRANGE("Source No.","No.");
    IF NOT WhseRequest.ISEMPTY THEN
      WhseRequest.DELETEALL(TRUE);

    ReservMgt.DeleteDocumentReservation(DATABASE::"Transfer Line",0,"No.",HideValidationDialog);

    TransLine.SETRANGE("Document No.","No.");
    TransLine.DELETEALL(TRUE);

    InvtCommentLine.SETRANGE("Document Type",InvtCommentLine."Document Type"::"Transfer Order");
    InvtCommentLine.SETRANGE("No.","No.");
    InvtCommentLine.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestField(Status,Status::Open);

    WhseRequest.SetRange("Source Type",DATABASE::"Transfer Line");
    WhseRequest.SetRange("Source No.","No.");
    if not WhseRequest.IsEmpty then
      WhseRequest.DeleteAll(true);
    #7..9
    TransLine.SetRange("Document No.","No.");
    TransLine.DeleteAll(true);

    InvtCommentLine.SetRange("Document Type",InvtCommentLine."Document Type"::"Transfer Order");
    InvtCommentLine.SetRange("No.","No.");
    InvtCommentLine.DeleteAll;
    */
    //end;


    //Unsupported feature: PropertyModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetInventorySetup;
    IF "No." = '' THEN BEGIN
      TestNoSeries;
      NoSeriesMgt.InitSeries(GetNoSeriesCode,xRec."No. Series","Posting Date","No.","No. Series");
    END;
    InitRecord;
    VALIDATE("Shipment Date",WORKDATE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    GetInventorySetup;
    if "No." = '' then begin
      TestNoSeries;
      NoSeriesMgt.InitSeries(GetNoSeriesCode,xRec."No. Series","Posting Date","No.","No. Series");
    end;
    InitRecord;
    Validate("Shipment Date",WorkDate);
    "User ID" := UserId;
    "Created Date Time":=CurrentDateTime;
    {IF User.GET("User ID") THEN
      "Resource Name" := User."User Name";// Changed User."Name" to User."User Name" B2B
    "Transfer-from Code":='PROD';
    "Transfer-to Code":='EFFE TEL';
    "In-Transit Code":='MIT-OUT';
    }
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text000,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text000,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Transfer-from Code"(Field 2).OnValidate.Location(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Transfer-from Code" : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Transfer-from Code" : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Transfer-to Code"(Field 11).OnValidate.Location(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Transfer-to Code" : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Transfer-to Code" : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""External Document No."(Field 33).OnValidate.WhseTransferRelease(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"External Document No." : 5773;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"External Document No." : "Whse.-Transfer Release";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.TransLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.TransLine : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.TransLine : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.InvtCommentLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.InvtCommentLine : 5748;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.InvtCommentLine : "Inventory Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ReservMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ReservMgt : 99000845;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ReservMgt : "Reservation Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateTransLines(PROCEDURE 15).TransferLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateTransLines : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateTransLines : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteOneTransferOrder(PROCEDURE 4).ItemChargeAssgntPurch(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteOneTransferOrder : 5805;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteOneTransferOrder : "Item Charge Assignment (Purch)";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteOneTransferOrder(PROCEDURE 4).WhseRequest(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteOneTransferOrder : 5765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteOneTransferOrder : "Warehouse Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteOneTransferOrder(PROCEDURE 4).InvtCommentLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteOneTransferOrder : 5748;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteOneTransferOrder : "Inventory Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInvtPutAwayPick(PROCEDURE 29).WhseRequest(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInvtPutAwayPick : 5765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInvtPutAwayPick : "Warehouse Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckInvtPostingSetup(PROCEDURE 8).InventoryPostingSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckInvtPostingSetup : 5813;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckInvtPostingSetup : "Inventory Posting Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasShippedItems(PROCEDURE 23).TransferLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasShippedItems : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasShippedItems : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HasTransferLines(PROCEDURE 24).TransferLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HasTransferLines : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HasTransferLines : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetReceiptLines(PROCEDURE 22).PurchRcptHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetReceiptLines : 120;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetReceiptLines : "Purch. Rcpt. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetReceiptLines(PROCEDURE 22).TempPurchRcptHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetReceiptLines : 120;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetReceiptLines : "Purch. Rcpt. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetReceiptLines(PROCEDURE 22).PostedPurchaseReceipts(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetReceiptLines : 145;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetReceiptLines : "Posted Purchase Receipts";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateTransferLinesFromSelectedPurchReceipts(PROCEDURE 21).PurchRcptLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateTransferLinesFromSelectedPurchReceipts : 121;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateTransferLinesFromSelectedPurchReceipts : "Purch. Rcpt. Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateTransferLinesFromSelectedPurchReceipts(PROCEDURE 21).TempPurchRcptLine(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateTransferLinesFromSelectedPurchReceipts : 121;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateTransferLinesFromSelectedPurchReceipts : "Purch. Rcpt. Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateTransferLinesFromSelectedPurchReceipts(PROCEDURE 21).SelectionFilterManagement(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateTransferLinesFromSelectedPurchReceipts : 46;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateTransferLinesFromSelectedPurchReceipts : SelectionFilterManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateTransferLinesFromSelectedPurchReceipts(PROCEDURE 21).PostedPurchaseReceiptLines(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateTransferLinesFromSelectedPurchReceipts : 528;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateTransferLinesFromSelectedPurchReceipts : "Posted Purchase Receipt Lines";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateTransferLinesFromSelectedReceiptLines(PROCEDURE 26).TransferLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateTransferLinesFromSelectedReceiptLines : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateTransferLinesFromSelectedReceiptLines : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddTransferLineFromReceiptLine(PROCEDURE 25).TransferLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddTransferLineFromReceiptLine : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddTransferLineFromReceiptLine : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddTransferLineFromReceiptLine(PROCEDURE 25).ItemLedgerEntry(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddTransferLineFromReceiptLine : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddTransferLineFromReceiptLine : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddTransferLineFromReceiptLine(PROCEDURE 25).TempItemLedgerEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddTransferLineFromReceiptLine : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddTransferLineFromReceiptLine : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddTransferLineFromReceiptLine(PROCEDURE 25).ItemTrackingDocMgt(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddTransferLineFromReceiptLine : 6503;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddTransferLineFromReceiptLine : "Item Tracking Doc. Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AddTransferLineFromReceiptLine(PROCEDURE 25).ItemTrackingMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AddTransferLineFromReceiptLine : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AddTransferLineFromReceiptLine : "Item Tracking Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VerifyNoOutboundWhseHandlingOnLocation(PROCEDURE 13).Location(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VerifyNoOutboundWhseHandlingOnLocation : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VerifyNoOutboundWhseHandlingOnLocation : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VerifyNoInboundWhseHandlingOnLocation(PROCEDURE 18).Location(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VerifyNoInboundWhseHandlingOnLocation : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VerifyNoInboundWhseHandlingOnLocation : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferRoute(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferRoute : 5742;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferRoute : "Transfer Route";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransHeader(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransHeader : 5740;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransHeader : "Transfer Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransLine(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransLine : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransLine : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InvtSetup(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InvtSetup : 313;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InvtSetup : "Inventory Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseRequest(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseRequest : 5765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseRequest : "Warehouse Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseSourceHeader(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseSourceHeader : 5781;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseSourceHeader : "Whse. Validate Source Header";
    //Variable type has not been exported.

    var
        "--b2B--": Integer;
        User: Record User;
        ProdOrderRoutingLine: Record "Prod. Order Routing Line";
        ProdOrderLine: Record "Prod. Order Line";
        Employee: Record Employee;
}

