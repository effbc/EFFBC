table 16437 "Service Transfer Header"
{
    // version NAVIN9.00.00.51333

    CaptionML = ENU='Service Transfer Header',
                ENN='Service Transfer Header';
    LookupPageID = 16387;

    fields
    {
        field(1;"No.";Code[20])
        {
            CaptionML = ENU='No.',
                        ENN='No.';

            trigger OnValidate();
            begin
                if "No." <> xRec."No." then begin
                  GetInventorySetup;
                  NoSeriesManagement.TestManual(GetNoSeriesCode);
                  "No. Series" := '';
                end;
            end;
        }
        field(2;"Transfer-from Code";Code[10])
        {
            CaptionML = ENU='Transfer-from Code',
                        ENN='Transfer-from Code';
            TableRelation = Location WHERE ("Use As In-Transit"=CONST(false));

            trigger OnValidate();
            var
                Location : Record Location;
                Location1 : Record Location;
                GeneralLedgerSetup : Record "General Ledger Setup";
            begin
                /*TestStatusOpen;
                IF ("Transfer-from Code" = "Transfer-to Code") AND
                   ("Transfer-from Code" <> '')
                THEN
                  ERROR(
                    SameLocErr,
                    FIELDCAPTION("Transfer-from Code"),FIELDCAPTION("Transfer-to Code"),
                    TABLECAPTION,"No.");
                IF Location.GET("Transfer-from Code") AND Location1.GET("Transfer-to Code") THEN BEGIN
                  IF (Location1."GST Registration No." <> '') AND (Location."GST Registration No." <> '') THEN
                    IF Location."GST Registration No." = Location1."GST Registration No." THEN
                      ERROR(SameLocRegErr,FIELDCAPTION("Transfer-from Code"),FIELDCAPTION("Transfer-to Code"),
                        TABLECAPTION,"No.");
                  IF (Location1."Location ARN No." <> '') AND (Location."Location ARN No." <> '') THEN
                    IF Location."Location ARN No." = Location1."Location ARN No." THEN
                      ERROR(SameLocARNoErr,FIELDCAPTION("Transfer-from Code"),FIELDCAPTION("Transfer-to Code"),
                        TABLECAPTION,"No.")
                END;
                Location.TESTFIELD("GST Input Service Distributor",FALSE);
                IF xRec."Transfer-from Code" <> "Transfer-from Code" THEN BEGIN
                  IF xRec."Transfer-from Code" = '' THEN
                    Confirmed := TRUE
                  ELSE
                    Confirmed := CONFIRM(LocChangeQst,FALSE,FIELDCAPTION("Transfer-from Code"));
                  IF Confirmed THEN BEGIN
                    "Transfer-from Name" := Location.Name;
                    "Transfer-from Name 2" := Location."Name 2";
                    "Transfer-from Address" := Location.Address;
                    "Transfer-from Address 2" := Location."Address 2";
                    "Transfer-from Post Code" := Location."Post Code";
                    "Transfer-from City" := Location.City;
                    "Transfer-from State" := Location."State Code";
                    ClearGSTAmount;
                  END ELSE
                    "Transfer-from Code" := xRec."Transfer-from Code";
                END;
                GeneralLedgerSetup.GET;
                "GST Inv. Rounding Precision" := GeneralLedgerSetup."GST Inv. Rounding Precision";
                "GST Inv. Rounding Type" := GeneralLedgerSetup."GST Inv. Rounding Type";
                */

            end;
        }
        field(3;"Transfer-from Name";Text[50])
        {
            CaptionML = ENU='Transfer-from Name',
                        ENN='Transfer-from Name';
        }
        field(4;"Transfer-from Name 2";Text[50])
        {
            CaptionML = ENU='Transfer-from Name 2',
                        ENN='Transfer-from Name 2';
        }
        field(5;"Transfer-from Address";Text[50])
        {
            CaptionML = ENU='Transfer-from Address',
                        ENN='Transfer-from Address';
        }
        field(6;"Transfer-from Address 2";Text[50])
        {
            CaptionML = ENU='Transfer-from Address 2',
                        ENN='Transfer-from Address 2';
        }
        field(7;"Transfer-from Post Code";Code[20])
        {
            CaptionML = ENU='Transfer-from Post Code',
                        ENN='Transfer-from Post Code';

            trigger OnValidate();
            begin
                PostCode.ValidatePostCode(
                  "Transfer-from City","Transfer-from Post Code",
                  County,Region,(CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(8;"Transfer-from City";Text[30])
        {
            CaptionML = ENU='Transfer-from City',
                        ENN='Transfer-from City';

            trigger OnValidate();
            begin
                PostCode.ValidateCity(
                  "Transfer-from City","Transfer-from Post Code",
                  County,Region,(CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(9;"Transfer-from State";Code[10])
        {
            CaptionML = ENU='Transfer-from State',
                        ENN='Transfer-from State';
            Editable = false;
            TableRelation = State;
        }
        field(10;"Transfer-to Code";Code[10])
        {
            CaptionML = ENU='Transfer-to Code',
                        ENN='Transfer-to Code';
            TableRelation = Location WHERE ("Use As In-Transit"=CONST(false));

            trigger OnValidate();
            var
                Location : Record Location;
                Location1 : Record Location;
            begin
                /*TestStatusOpen;
                IF ("Transfer-from Code" = "Transfer-to Code") AND
                   ("Transfer-to Code" <> '')
                THEN
                  ERROR(
                    SameLocErr,
                    FIELDCAPTION("Transfer-from Code"),FIELDCAPTION("Transfer-to Code"),
                    TABLECAPTION,"No.");
                Location.GET("Transfer-to Code");
                Location.TESTFIELD("GST Input Service Distributor",FALSE);
                IF (Location."GST Registration No." = '') AND (Location."Location ARN No." = '') THEN
                  ERROR(LocationCodeErr);
                IF Location1.GET("Transfer-from Code") THEN BEGIN
                  IF (Location1."GST Registration No." <> '') AND (Location."GST Registration No." <> '') THEN
                    IF Location."GST Registration No." = Location1."GST Registration No." THEN
                      ERROR(SameLocRegErr,FIELDCAPTION("Transfer-from Code"),FIELDCAPTION("Transfer-to Code"),
                        TABLECAPTION,"No.");
                  IF (Location1."Location ARN No." <> '') AND (Location."Location ARN No." <> '') THEN
                    IF Location."Location ARN No." = Location1."Location ARN No." THEN
                      ERROR(SameLocARNoErr,FIELDCAPTION("Transfer-from Code"),FIELDCAPTION("Transfer-to Code"),
                        TABLECAPTION,"No.");
                END;
                IF xRec."Transfer-to Code" <> "Transfer-to Code" THEN BEGIN
                  IF xRec."Transfer-to Code" = '' THEN
                    Confirmed := TRUE
                  ELSE
                    Confirmed := CONFIRM(LocChangeQst,FALSE,FIELDCAPTION("Transfer-to Code"));
                  IF Confirmed THEN BEGIN
                    "Transfer-to Name" := Location.Name;
                    "Transfer-to Name 2" := Location."Name 2";
                    "Transfer-to Address" := Location.Address;
                    "Transfer-to Address 2" := Location."Address 2";
                    "Transfer-to Post Code" := Location."Post Code";
                    "Transfer-to City" := Location.City;
                    "Transfer-to State" := Location."State Code";
                    ClearGSTAmount;
                  END ELSE
                    "Transfer-to Code" := xRec."Transfer-to Code";
                END;*/

            end;
        }
        field(11;"Transfer-to Name";Text[50])
        {
            CaptionML = ENU='Transfer-to Name',
                        ENN='Transfer-to Name';
        }
        field(12;"Transfer-to Name 2";Text[50])
        {
            CaptionML = ENU='Transfer-to Name 2',
                        ENN='Transfer-to Name 2';
        }
        field(13;"Transfer-to Address";Text[50])
        {
            CaptionML = ENU='Transfer-to Address',
                        ENN='Transfer-to Address';
        }
        field(14;"Transfer-to Address 2";Text[50])
        {
            CaptionML = ENU='Transfer-to Address 2',
                        ENN='Transfer-to Address 2';
        }
        field(15;"Transfer-to Post Code";Code[20])
        {
            CaptionML = ENU='Transfer-to Post Code',
                        ENN='Transfer-to Post Code';

            trigger OnValidate();
            begin
                PostCode.ValidatePostCode(
                  "Transfer-to City","Transfer-to Post Code",County,
                  Region,(CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(16;"Transfer-to City";Text[30])
        {
            CaptionML = ENU='Transfer-to City',
                        ENN='Transfer-to City';

            trigger OnValidate();
            begin
                PostCode.ValidateCity(
                  "Transfer-to City","Transfer-to Post Code",County,
                  Region,(CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(17;"Transfer-to State";Code[10])
        {
            CaptionML = ENU='Transfer-to State',
                        ENN='Transfer-to State';
            Editable = false;
            TableRelation = State;
        }
        field(19;"Shipment Date";Date)
        {
            CaptionML = ENU='Shipment Date',
                        ENN='Shipment Date';

            trigger OnValidate();
            begin
                TestStatusOpen;
                Validate("Receipt Date","Shipment Date");
                ClearGSTAmount;
            end;
        }
        field(20;"Receipt Date";Date)
        {
            CaptionML = ENU='Receipt Date',
                        ENN='Receipt Date';

            trigger OnValidate();
            begin
                CheckReceiptDate;
            end;
        }
        field(21;Status;Option)
        {
            CaptionML = ENU='Status',
                        ENN='Status';
            Editable = false;
            OptionCaptionML = ENU='Open,Shipped',
                              ENN='Open,Shipped';
            OptionMembers = Open,Shipped;
        }
        field(22;"Shortcut Dimension 1 Code";Code[20])
        {
            CaptionClass = '1,2,1';
            CaptionML = ENU='Shortcut Dimension 1 Code',
                        ENN='Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(1));

            trigger OnValidate();
            begin
                ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
            end;
        }
        field(23;"Shortcut Dimension 2 Code";Code[20])
        {
            CaptionClass = '1,2,2';
            CaptionML = ENU='Shortcut Dimension 2 Code',
                        ENN='Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(2));

            trigger OnValidate();
            begin
                ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
            end;
        }
        field(24;"Ship Control Account";Code[20])
        {
            CaptionML = ENU='Ship Control Account',
                        ENN='Ship Control Account';
            TableRelation = "G/L Account" WHERE ("Direct Posting"=CONST(true));

            trigger OnValidate();
            var
                GLAccount : Record "G/L Account";
            begin
                TestStatusOpen;
                GLAccount.Get("Ship Control Account");
                GLAccount.TestField(Blocked,false);
                UpdateServiceTransLines(FieldNo("Ship Control Account"));
            end;
        }
        field(25;"Receive Control Account";Code[20])
        {
            CaptionML = ENU='Receive Control Account',
                        ENN='Receive Control Account';
            TableRelation = "G/L Account" WHERE ("Direct Posting"=CONST(true));

            trigger OnValidate();
            var
                GLAccount : Record "G/L Account";
            begin
                GLAccount.Get("Receive Control Account");
                GLAccount.TestField(Blocked,false);
                UpdateServiceTransLines(FieldNo("Receive Control Account"));
            end;
        }
        field(27;"External Doc No.";Code[20])
        {
            CaptionML = ENU='External Doc No.',
                        ENN='External Doc No.';
        }
        field(28;"No. Series";Code[10])
        {
            CaptionML = ENU='No. Series',
                        ENN='No. Series';
            TableRelation = "No. Series";
        }
        field(29;"GST Inv. Rounding Precision";Decimal)
        {
            CaptionML = ENU='GST Inv. Rounding Precision',
                        ENN='GST Inv. Rounding Precision';
            MinValue = 0;

            trigger OnValidate();
            begin
                TestField(Status,Status::Open);
            end;
        }
        field(30;"GST Inv. Rounding Type";Option)
        {
            CaptionML = ENU='GST Inv. Rounding Type',
                        ENN='GST Inv. Rounding Type';
            OptionCaptionML = ENU='Nearest,Up,Down',
                              ENN='Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;

            trigger OnValidate();
            begin
                TestField(Status,Status::Open);
            end;
        }
        field(480;"Dimension Set ID";Integer)
        {
            CaptionML = ENU='Dimension Set ID',
                        ENN='Dimension Set ID';
            TableRelation = "Dimension Set Entry";

            trigger OnLookup();
            begin
                ShowDocDim;
            end;
        }
        field(9000;"Assigned User ID";Code[50])
        {
            CaptionML = ENU='Assigned User ID',
                        ENN='Assigned User ID';
            DataClassification = EndUserIdentifiableInformation;
            TableRelation = "User Setup";
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
        key(Key1;"No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        TestStatusOpen;
        ServiceTransferLine.SetRange("Document No.","No.");
        ServiceTransferLine.DeleteAll(true);
    end;

    trigger OnInsert();
    begin
        /*GetInventorySetup;
        IF "No." = '' THEN BEGIN
          InventorySetup.TESTFIELD("Service Transfer Order Nos.");
          NoSeriesManagement.InitSeries(GetNoSeriesCode,xRec."No. Series","Shipment Date","No.","No. Series");
        END;
        InitRecord;*/

    end;

    trigger OnRename();
    begin
        Error(RenameErr,TableCaption);
    end;

    var
        RenameErr : TextConst Comment='%1 = Table Name',ENU='You cannot rename a %1.',ENN='You cannot rename a %1.';
        SameLocErr : TextConst Comment='%1 = From Location, %2 = To Location, %3 = Table Name, %4 = Document No',ENU='%1 and %2 cannot be the same in %3 %4.',ENN='%1 and %2 cannot be the same in %3 %4.';
        InventorySetup : Record "Inventory Setup";
        PostCode : Record "Post Code";
        ServiceTransferLine : Record "Service Transfer Line";
        ServiceTransferHeader : Record "Service Transfer Header";
        NoSeriesManagement : Codeunit NoSeriesManagement;
        DimensionManagement : Codeunit DimensionManagement;
        Confirmed : Boolean;
        HasInventorySetup : Boolean;
        LocChangeQst : TextConst Comment='%1 = Location Code.',ENU='Do you want to change %1?',ENN='Do you want to change %1?';
        County : Text[30];
        Region : Code[10];
        DimChangeQst : TextConst ENU='You may have changed a dimension.\\Do you want to update the lines?',ENN='You may have changed a dimension.\\Do you want to update the lines?';
        SameLocRegErr : TextConst Comment='%1 = From Location, %2 = To Location, %3 = Table Name, %4 = Document No',ENU='Registration No.s in %1 and %2 cannot be the same in %3 %4.',ENN='Registration No.s in %1 and %2 cannot be the same in %3 %4.';
        ReceiptDateErr : TextConst Comment='%1 = Receipt Date, %2 = Shipment Date',ENU='%1 can not be less than %2.',ENN='%1 can not be less than %2.';
        LocationCodeErr : TextConst ENU='Please specify the Location Code or Location GST Registration No for the selected document.',ENN='Please specify the Location Code or Location GST Registration No for the selected document.';
        SameLocARNoErr : TextConst Comment='%1 = From Location, %2 = To Location, %3 = Table Name, %4 = Document No',ENU='Location ARNNo in %1 and %2 cannot be the same in %3 %4.',ENN='Location ARNNo in %1 and %2 cannot be the same in %3 %4.';

    [LineStart(62905)]
    procedure InitRecord();
    begin
        Validate("Shipment Date",WorkDate);
    end;

    [LineStart(62908)]
    local procedure GetInventorySetup();
    begin
        if not HasInventorySetup then begin
          InventorySetup.Get;
          HasInventorySetup := true;
        end;
    end;

    [LineStart(62914)]
    local procedure GetNoSeriesCode() : Code[10];
    begin
        //EXIT(InventorySetup."Service Transfer Order Nos.");
    end;

    [LineStart(62917)]
    local procedure TestStatusOpen();
    begin
        TestField(Status,Status::Open);
        ServiceTransferLine.SetRange("Document No.","No.");
        ServiceTransferLine.SetRange(Shipped,true);
        if ServiceTransferLine.FindFirst then
          ServiceTransferLine.TestField(Shipped,false);
    end;

    [LineStart(62924)]
    local procedure ValidateShortcutDimCode(FieldNumber : Integer;var ShortcutDimCode : Code[20]);
    var
        OldDimSetID : Integer;
    begin
        OldDimSetID := "Dimension Set ID";
        DimensionManagement.ValidateShortcutDimValues(FieldNumber,ShortcutDimCode,"Dimension Set ID");

        if OldDimSetID <> "Dimension Set ID" then begin
          Modify;
          if ServiceTransferLinesExist then
            UpdateAllLineDim("Dimension Set ID",OldDimSetID);
        end;
    end;

    [LineStart(62934)]
    local procedure ServiceTransferLinesExist() : Boolean;
    begin
        ServiceTransferLine.Reset;
        ServiceTransferLine.SetRange("Document No.","No.");
        exit(ServiceTransferLine.FindFirst);
    end;

    [LineStart(62939)]
    local procedure UpdateAllLineDim(NewParentDimSetID : Integer;OldParentDimSetID : Integer);
    var
        NewDimSetID : Integer;
        ShippedLineDimChangeConfirmed : Boolean;
    begin
        // Update all lines with changed dimensions.

        if NewParentDimSetID = OldParentDimSetID then
          exit;
        if not Confirm(DimChangeQst) then
          exit;

        ServiceTransferLine.Reset;
        ServiceTransferLine.SetRange("Document No.","No.");
        ServiceTransferLine.LockTable;
        if ServiceTransferLine.FindSet then
          repeat
            NewDimSetID :=
              DimensionManagement.GetDeltaDimSetID(ServiceTransferLine."Dimension Set ID",NewParentDimSetID,OldParentDimSetID);
            if ServiceTransferLine."Dimension Set ID" <> NewDimSetID then begin
              ServiceTransferLine."Dimension Set ID" := NewDimSetID;

              VerifyShippedLineDimChange(ShippedLineDimChangeConfirmed);

              DimensionManagement.UpdateGlobalDimFromDimSetID(
                ServiceTransferLine."Dimension Set ID",ServiceTransferLine."Shortcut Dimension 1 Code",
                ServiceTransferLine."Shortcut Dimension 2 Code");
              ServiceTransferLine.Modify;
            end;
          until ServiceTransferLine.Next = 0;
    end;

    [LineStart(62966)]
    local procedure VerifyShippedLineDimChange(var ShippedLineDimChangeConfirmed : Boolean);
    begin
        if ServiceTransferLine.IsShippedDimChanged then
          if not ShippedLineDimChangeConfirmed then
            ShippedLineDimChangeConfirmed := ServiceTransferLine.ConfirmShippedDimChange;
    end;

    [LineStart(62971)]
    procedure ShowDocDim();
    var
        OldDimSetID : Integer;
    begin
        OldDimSetID := "Dimension Set ID";
        "Dimension Set ID" :=
          DimensionManagement.EditDimensionSet2("Dimension Set ID",StrSubstNo('%1 %2',TableCaption,"No."),
            "Shortcut Dimension 1 Code","Shortcut Dimension 2 Code");
        if OldDimSetID <> "Dimension Set ID" then begin
          Modify;
          if ServiceTransferLinesExist then
            UpdateAllLineDim("Dimension Set ID",OldDimSetID);
        end;
    end;

    [LineStart(62982)]
    local procedure UpdateServiceTransLines(FieldRef : Integer);
    var
        ServiceTransferLine : Record "Service Transfer Line";
    begin
        ServiceTransferLine.SetRange("Document No.","No.");
        ServiceTransferLine.SetFilter("Transfer From G/L Account No.",'<>%1','');
        if ServiceTransferLine.FindSet then begin
          ServiceTransferLine.LockTable;
          repeat
            case FieldRef of
              FieldNo("Ship Control Account"):
                ServiceTransferLine.Validate("Ship Control A/C No.","Ship Control Account");
              FieldNo("Receive Control Account"):
                ServiceTransferLine.Validate("Receive Control A/C No.","Receive Control Account");
            end;
            ServiceTransferLine.Modify(true);
          until ServiceTransferLine.Next = 0;
        end;
    end;

    [LineStart(62998)]
    procedure AssistEdit(OldServiceTransferHeader : Record "Service Transfer Header") : Boolean;
    begin
        /*WITH ServiceTransferHeader DO BEGIN
          ServiceTransferHeader := Rec;
          GetInventorySetup;
          InventorySetup.TESTFIELD("Service Transfer Order Nos.");
          IF NoSeriesManagement.SelectSeries(GetNoSeriesCode,OldServiceTransferHeader."No. Series","No. Series") THEN BEGIN
            NoSeriesManagement.SetSeries("No.");
            Rec := ServiceTransferHeader;
            EXIT(TRUE);
          END;
        END;
        */

    end;

    [LineStart(63011)]
    local procedure ClearGSTAmount();
    var
        ServiceTransferLine : Record "Service Transfer Line";
    begin
        ServiceTransferLine.SetRange("Document No.","No.");
        ServiceTransferLine.ModifyAll("Total GST Amount",0);
    end;

    [LineStart(63015)]
    local procedure CheckReceiptDate();
    begin
        if ("Shipment Date" <> 0D) and ("Receipt Date" <> 0D) then
          if "Shipment Date" > "Receipt Date" then
            Error(ReceiptDateErr,FieldCaption("Receipt Date"),FieldCaption("Shipment Date"));
    end;

    [LineStart(63020)]
    procedure GSTInvoiceRoundingDirection() : Text[1];
    begin
        case "GST Inv. Rounding Type" of
          "GST Inv. Rounding Type"::Nearest:
            exit('=');
          "GST Inv. Rounding Type"::Up:
            exit('>');
          "GST Inv. Rounding Type"::Down:
            exit('<');
        end;
    end;
}

