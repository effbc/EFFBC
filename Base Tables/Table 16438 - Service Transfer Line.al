table 16438 "Service Transfer Line"
{
    // version NAVIN9.00.00.49326

    CaptionML = ENU='Service Transfer Line',
                ENN='Service Transfer Line';
    DrillDownPageID = 16386;
    LookupPageID = 16386;

    fields
    {
        field(1;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ENN='Document No.';
        }
        field(2;"Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ENN='Line No.';
        }
        field(3;"Transfer From G/L Account No.";Code[20])
        {
            CaptionML = ENU='Transfer From G/L Account No.',
                        ENN='Transfer From G/L Account No.';
            TableRelation = "G/L Account" WHERE ("Direct Posting"=CONST(true));

            trigger OnValidate();
            begin
                /*TESTFIELD(Shipped,FALSE);
                TestStatusOpen;
                GetServiceTransferHeader;
                GetGLAccountGSTInfo;
                GeneralLedgerSetup.GET;
                "GST Rounding Type" := GeneralLedgerSetup."GST Rounding Type";
                "GST Rounding Precision" := GeneralLedgerSetup."GST Rounding Precision";
                ClearGSTFields;
                "Dimension Set ID" := ServiceTransferHeader."Dimension Set ID";
                DimensionManagement.UpdateGlobalDimFromDimSetID("Dimension Set ID","Shortcut Dimension 1 Code","Shortcut Dimension 2 Code");
                */

            end;
        }
        field(4;"Transfer To G/L Account No.";Code[20])
        {
            CaptionML = ENU='Transfer To G/L Account No.',
                        ENN='Transfer To G/L Account No.';
            TableRelation = "G/L Account" WHERE ("Direct Posting"=CONST(true));

            trigger OnValidate();
            var
                GLAccount : Record "G/L Account";
            begin
                GLAccount.Get("Transfer To G/L Account No.");
                GLAccount.TestField(Blocked,false);
                TestField("Receive Control A/C No.");
                "To G/L Account Description" := GLAccount.Name;
            end;
        }
        field(5;"Transfer Price";Decimal)
        {
            CaptionML = ENU='Transfer Price',
                        ENN='Transfer Price';

            trigger OnValidate();
            begin
                TestField(Shipped,false);
                TestStatusOpen;
                if "Transfer Price" < 0 then
                  Error(TransPriceErr);
                "GST %" := 0;
                if "Transfer Price" <> xRec."Transfer Price" then begin
                  "GST Base Amount" := 0;
                  "Total GST Amount" := 0
                end;
                //
                //GSTManagement.DeleteGSTBuffer(DocTransactionType::"Service Transfer",0,"Document No.","Line No.");
            end;
        }
        field(6;"Ship Control A/C No.";Code[20])
        {
            CaptionML = ENU='Ship Control A/C No.',
                        ENN='Ship Control A/C No.';
            Editable = false;
            TableRelation = "G/L Account" WHERE ("Direct Posting"=CONST(true));
        }
        field(7;"Receive Control A/C No.";Code[20])
        {
            CaptionML = ENU='Receive Control A/C No.',
                        ENN='Receive Control A/C No.';
            Editable = false;
            TableRelation = "G/L Account" WHERE ("Direct Posting"=CONST(true));
        }
        field(8;Shipped;Boolean)
        {
            CaptionML = ENU='Shipped',
                        ENN='Shipped';
            Editable = false;
        }
        field(9;"Shortcut Dimension 1 Code";Code[20])
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
        field(10;"Shortcut Dimension 2 Code";Code[20])
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
        field(11;"GST Group Code";Code[20])
        {
            CaptionML = ENU='GST Group Code',
                        ENN='GST Group Code';
            TableRelation = "GST Group".Code WHERE ("GST Group Type"=FILTER(Service));

            trigger OnValidate();
            begin
                TestField(Shipped,false);
                Clear("SAC Code");
                if GSTGroup.Get("GST Group Code") and GSTGroup."Reverse Charge" then
                  Error(GSTGroupReverseChargeErr,"GST Group Code");
                if "Total GST Amount" <> 0 then
                  ClearGSTFields;
            end;
        }
        field(12;"SAC Code";Code[8])
        {
            CaptionML = ENU='SAC Code',
                        ENN='SAC Code';
            TableRelation = "HSN/SAC".Code WHERE ("GST Group Code"=FIELD("GST Group Code"));

            trigger OnValidate();
            begin
                TestField(Shipped,false);
                if "Total GST Amount" <> 0 then
                  ClearGSTFields
            end;
        }
        field(13;"GST Base Amount";Decimal)
        {
            CaptionML = ENU='GST Base Amount',
                        ENN='GST Base Amount';
            Editable = false;
        }
        field(14;"GST %";Decimal)
        {
            CaptionML = ENU='GST %',
                        ENN='GST %';
        }
        field(15;"Total GST Amount";Decimal)
        {
            CaptionML = ENU='Total GST Amount',
                        ENN='Total GST Amount';
            Editable = false;
        }
        field(16;"GST Rounding Type";Option)
        {
            CaptionML = ENU='GST Rounding Type',
                        ENN='GST Rounding Type';
            Editable = false;
            OptionCaptionML = ENU='Nearest,Up,Down',
                              ENN='Nearest,Up,Down';
            OptionMembers = Nearest,Up,Down;
        }
        field(17;"GST Rounding Precision";Decimal)
        {
            CaptionML = ENU='GST Rounding Precision',
                        ENN='GST Rounding Precision';
            Editable = false;
        }
        field(18;"From G/L Account Description";Text[50])
        {
            CaptionML = ENU='From G/L Account Description',
                        ENN='From G/L Account Description';
        }
        field(19;"To G/L Account Description";Text[50])
        {
            CaptionML = ENU='To G/L Account Description',
                        ENN='To G/L Account Description';
        }
        field(20;Exempted;Boolean)
        {
            CaptionML = ENU='Exempted',
                        ENN='Exempted';

            trigger OnValidate();
            begin
                TestField(Shipped,false);
            end;
        }
        field(480;"Dimension Set ID";Integer)
        {
            CaptionML = ENU='Dimension Set ID',
                        ENN='Dimension Set ID';
            TableRelation = "Dimension Set Entry";

            trigger OnLookup();
            begin
                ShowDimensions;
            end;
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
        key(Key1;"Document No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        TestStatusOpen;
        TestField(Shipped,false);
        //GSTManagement.DeleteGSTBuffer(DocTransactionType::"Service Transfer",0,"Document No.","Line No.");
    end;

    trigger OnInsert();
    begin
        TestStatusOpen;
        TestShipped;
        ServiceTransferLine2.Reset;
        ServiceTransferLine2.SetFilter("Document No.",ServiceTransferHeader."No.");
        if ServiceTransferLine2.FindLast then
          "Line No." := ServiceTransferLine2."Line No." + 10000;
    end;

    trigger OnRename();
    begin
        Error(RenameErr,TableCaption);
    end;

    var
        ServiceTransferHeader : Record "Service Transfer Header";
        DimChangeQst : TextConst Comment='%1 = Document No',ENU='You have changed one or more dimensions on the %1, which is already shipped.\\Do you want to keep the changed dimension?',ENN='You have changed one or more dimensions on the %1, which is already shipped.\\Do you want to keep the changed dimension?';
        CancellErr : TextConst ENU='Cancelled.',ENN='Cancelled.';
        ServiceTransferLine : Record "Service Transfer Line";
        ServiceTransferLine2 : Record "Service Transfer Line";
        RenameErr : TextConst Comment='%1 = Table Name',ENU='You cannot rename a %1.',ENN='You cannot rename a %1.';
        GeneralLedgerSetup : Record "General Ledger Setup";
        GSTGroup : Record "GST Group";
        DimensionManagement : Codeunit DimensionManagement;
        GSTApplicable : Boolean;
        DocTransactionType : Option Purchase,Sales,Transfer,Service,"Service Transfer";
        TransPriceErr : TextConst ENU='Transfer Price can not be Negative.',ENN='Transfer Price can not be Negative.';
        GSTGroupReverseChargeErr : TextConst Comment='%1 = GST Group Code',ENU='GST Group Code %1 with Reverse Charge cannot be selected for Service Transfers.',ENN='GST Group Code %1 with Reverse Charge cannot be selected for Service Transfers.';

    [LineStart(63046)]
    local procedure TestStatusOpen();
    begin
        TestField("Document No.");
        ServiceTransferHeader.Get("Document No.");
        ServiceTransferHeader.TestField(Status,ServiceTransferHeader.Status::Open);
    end;

    [LineStart(63051)]
    procedure IsShippedDimChanged() : Boolean;
    begin
        exit(("Dimension Set ID" <> xRec."Dimension Set ID") and
          (Shipped <> false));
    end;

    [LineStart(63055)]
    procedure ConfirmShippedDimChange() : Boolean;
    begin
        if not Confirm(DimChangeQst,false,TableCaption) then
          Error(CancellErr);

        exit(true);
    end;

    [LineStart(63061)]
    local procedure TestShipped();
    begin
        ServiceTransferLine.SetRange("Document No.","Document No.");
        ServiceTransferLine.SetRange(Shipped,true);
        if ServiceTransferLine.FindFirst then
          ServiceTransferLine.TestField(Shipped,false);
    end;

    [LineStart(63067)]
    local procedure GetServiceTransferHeader();
    begin
        TestField("Document No.");
        ServiceTransferHeader.Get("Document No.");

        ServiceTransferHeader.TestField("Shipment Date");
        ServiceTransferHeader.TestField("Receipt Date");
        ServiceTransferHeader.TestField("Transfer-from Code");
        ServiceTransferHeader.TestField("Transfer-to Code");
        ServiceTransferHeader.TestField("Ship Control Account");
        "Ship Control A/C No." := ServiceTransferHeader."Ship Control Account";
        "Receive Control A/C No." := ServiceTransferHeader."Receive Control Account";
    end;

    [LineStart(63079)]
    local procedure GetGLAccountGSTInfo();
    var
        GLAccount : Record "G/L Account";
    begin
        /*TESTFIELD("Transfer From G/L Account No.");
        GLAccount.GET("Transfer From G/L Account No.");
        GLAccount.TESTFIELD(Blocked,FALSE);
        "GST Group Code" := GLAccount."GST Group Code";
        IF GSTGroup.GET("GST Group Code") AND GSTGroup."Reverse Charge" THEN
          ERROR(GSTGroupReverseChargeErr,"GST Group Code");
        "SAC Code" := GLAccount."HSN/SAC Code";
        Exempted := GLAccount.Exempted;
        "From G/L Account Description" := GLAccount.Name;
        */

    end;

    [LineStart(63091)]
    procedure ValidateShortcutDimCode(FieldNumber : Integer;var ShortcutDimCode : Code[20]);
    begin
        DimensionManagement.ValidateShortcutDimValues(FieldNumber,ShortcutDimCode,"Dimension Set ID");
        VerifyItemLineDim;
    end;

    [LineStart(63095)]
    local procedure VerifyItemLineDim();
    begin
        if IsShippedDimChanged then
          ConfirmShippedDimChange;
    end;

    [LineStart(63099)]
    procedure ShowDimensions();
    begin
        "Dimension Set ID" :=
          DimensionManagement.EditDimensionSet("Dimension Set ID",StrSubstNo('%1 %2 %3',TableCaption,"Document No.","Line No."));
        VerifyItemLineDim;
        DimensionManagement.UpdateGlobalDimFromDimSetID("Dimension Set ID","Shortcut Dimension 1 Code","Shortcut Dimension 2 Code");
    end;

    [LineStart(63105)]
    procedure CalculateGST(ServiceTransferHeader : Record "Service Transfer Header");
    var
        ServiceTransferLine : Record "Service Transfer Line";
    begin
        /*GSTApplicable := GSTManagement.GSTApplicableOnServiceTransfer(ServiceTransferHeader);
        IF GSTApplicable THEN BEGIN
          ServiceTransferLine.SETRANGE("Document No.",ServiceTransferHeader."No.");
          IF ServiceTransferLine.FINDSET THEN
            REPEAT
              ServiceTransferLine.UpdateGSTAmounts(ServiceTransferLine."Transfer Price");
              ServiceTransferLine.MODIFY;
            UNTIL ServiceTransferLine.NEXT = 0;
        END;*/

    end;

    [LineStart(63116)]
    procedure UpdateGSTAmounts(GSTBaseAmount : Decimal);
    var
        GSTPerStateCode : Code[10];
        TotalGST : Decimal;
        GSTJurisdiction : Option Intrastate,Interstate;
        SourceType : Option Vendor,Customer;
    begin
        /*GetServiceTransferHeader;
        TestShipped;
        TestStatusOpen;
        GSTManagement.DeleteGSTBuffer(DocTransactionType::"Service Transfer",0,"Document No.","Line No.");
        VALIDATE("GST Base Amount",0);
        IF ("Transfer Price" = 0) OR ("SAC Code" = '') OR ("GST Group Code" = '') THEN
          EXIT;
        ServiceTransferHeader.TESTFIELD("Transfer-from State");
        ServiceTransferHeader.TESTFIELD("Transfer-to State");
        GSTPerStateCode :=
          GSTManagement.GetGSTConfiguration(
            SourceType::Customer,ServiceTransferHeader."Transfer-from State",
            ServiceTransferHeader."Transfer-to State",GSTJurisdiction);
        IF GSTPerStateCode = '' THEN
          EXIT;
        TotalGST :=
          GSTManagement.CalculateGSTAmounts(
            "Document No.","Line No.",GSTJurisdiction,GSTPerStateCode,"GST Group Code",
            ServiceTransferHeader."Shipment Date",GSTBaseAmount,DocTransactionType::"Service Transfer",0,'',1,
            0,FALSE,0,'','');
        IF Exempted THEN
          "Total GST Amount" := 0
        ELSE
          "Total GST Amount" := TotalGST;
        IF GSTBaseAmount <> 0 THEN
          "GST %" := "Total GST Amount" / GSTBaseAmount * 100;
        "GST Base Amount" := GSTBaseAmount;
        GSTManagement.DeleteGSTCalculationBuffer(DocTransactionType::"Service Transfer",0,"Document No.","Line No.");
        */

    end;

    [LineStart(63147)]
    local procedure ClearGSTFields();
    begin
        Validate("Total GST Amount",0);
        //GSTManagement.DeleteGSTBuffer(DocTransactionType::"Service Transfer",0,"Document No.","Line No.");
    end;
}

