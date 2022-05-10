tableextension 70082 FixedAssetExt extends "Fixed Asset"
{
    // version NAVW19.00.00.51947,NAVIN9.00.00.51947,TFS225680,B2B1.0

    fields
    {

        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 9)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""FA Location Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Main Asset/Component"(Field 12)". Please convert manually.


        //Unsupported feature: Change Editable on ""Main Asset/Component"(Field 12)". Please convert manually.


        //Unsupported feature: Change Editable on ""Component of Main Asset"(Field 13)". Please convert manually.


        //Unsupported feature: Change Data type on ""Responsible Employee"(Field 16)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Responsible Employee"(Field 16)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Responsible Employee"(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 18)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Insured(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on "Insured(Field 19)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 28)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Acquired(Field 30)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 1).OnValidate". Please convert manually.

        //trigger "(Field 1)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> xRec."No." THEN BEGIN
          FASetup.GET;
          NoSeriesMgt.TestManual(FASetup."Fixed Asset Nos.");
          "No. Series" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> xRec."No." then begin
          FASetup.Get;
          NoSeriesMgt.TestManual(FASetup."Fixed Asset Nos.");
          "No. Series" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Description(Field 2).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Search Description" = UPPERCASE(xRec.Description)) OR ("Search Description" = '') THEN
          "Search Description" := Description;
        IF Description <> xRec.Description THEN BEGIN
          FADeprBook.SETCURRENTKEY("FA No.");
          FADeprBook.SETRANGE("FA No.","No.");
          FADeprBook.MODIFYALL(Description,Description);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Search Description" = UpperCase(xRec.Description)) or ("Search Description" = '') then
          "Search Description" := Description;
        if Description <> xRec.Description then begin
          FADeprBook.SetCurrentKey("FA No.");
          FADeprBook.SetRange("FA No.","No.");
          FADeprBook.ModifyAll(Description,Description);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""FA Class Code"(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "FA Subclass Code" = '' THEN
          EXIT;

        FASubclass.GET("FA Subclass Code");
        IF NOT (FASubclass."FA Class Code" IN ['',"FA Class Code"]) THEN
          "FA Subclass Code" := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeModification on ""FA Subclass Code"(Field 6).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "FA Subclass Code" = '' THEN BEGIN
          VALIDATE("FA Posting Group",'');
          EXIT;
        END;

        FASubclass.GET("FA Subclass Code");
        IF "FA Class Code" <> '' THEN BEGIN
          IF NOT (FASubclass."FA Class Code" IN ['',"FA Class Code"]) THEN
            ERROR(UnexpctedSubclassErr);
        END ELSE
          VALIDATE("FA Class Code",FASubclass."FA Class Code");

        IF "FA Posting Group" = '' THEN
          VALIDATE("FA Posting Group",FASubclass."Default FA Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeInsertion on ""FA Location Code"(Field 10)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
    var
        FixedAssetTransfer: Record "Fixed Asset Transfer";
        NextEntryNo: Integer;
        Text051: Label 'Enter the transfer reason';
    //begin
    /*
    FixedAssetTransfer.Reset;
    FixedAssetTransfer.LockTable;
    if FixedAssetTransfer.Find('+') then
      NextEntryNo := FixedAssetTransfer."Entry No."
    else
      NextEntryNo := 0;

    if "FA Location Code"<>xRec."FA Location Code" then begin
      FixedAssetTransfer.Init;
      FixedAssetTransfer."Entry No." := NextEntryNo + 1;
      FixedAssetTransfer."Fixed Asset No." := "No.";
      FixedAssetTransfer."FA Location" := xRec."FA Location Code";
      FixedAssetTransfer."FA New Location" := "FA Location Code";
      FixedAssetTransfer.Date := WorkDate;
      FixedAssetTransfer."User id" := UserId;
      FixedAssetTransfer."Location Trns. Reason" := '';
      FixedAssetTransfer.Insert;
      Commit;
      FixedAssetTransfer.SetRange(FixedAssetTransfer."Fixed Asset No.","No.");
      FixedAssetTransfer.SetRange(FixedAssetTransfer."Entry No.",FixedAssetTransfer."Entry No.");
      if FixedAssetTransfer.Find('-') then
        if PAGE.RunModal(60006,FixedAssetTransfer) = ACTION::LookupOK then;
    end;
    */
    //end;


    //Unsupported feature: CodeInsertion on ""Responsible Employee"(Field 16)". Please convert manually.

    //trigger OnValidate();
    //Parameters and return type have not been exported.
    var
        FixedAssetTransfer: Record "Fixed Asset Transfer";
        NextEntryNo: Integer;
        Text060: Label 'Please Enter the Transfer Reason';
        //begin
        /*
        FixedAssetTransfer.Reset;
        FixedAssetTransfer.LockTable;
        if FixedAssetTransfer.Find('+') then
          NextEntryNo := FixedAssetTransfer."Entry No."
        else
          NextEntryNo := 0;

        if "Responsible Employee" <> xRec."Responsible Employee" then begin
          FixedAssetTransfer.Init;
          FixedAssetTransfer."Entry No." := NextEntryNo + 1;
          FixedAssetTransfer."Fixed Asset No." := "No.";
          FixedAssetTransfer."Responsible Employee" := xRec."Responsible Employee";
          FixedAssetTransfer."New Responsible Employee" := "Responsible Employee";
          FixedAssetTransfer.Date := WorkDate;
          FixedAssetTransfer."User id" := UserId;
          //FixedAssetTransfer."Employee Trns. Reason" := '';
          FixedAssetTransfer.Insert;
          Commit;
          FixedAssetTransfer.SetRange(FixedAssetTransfer."Fixed Asset No.","No.");
          FixedAssetTransfer.SetRange(FixedAssetTransfer."Entry No.",FixedAssetTransfer."Entry No.");
          if FixedAssetTransfer.Find('-') then
            if PAGE.RunModal(60007,FixedAssetTransfer) = ACTION::LookupOK then;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""FA Posting Group"(Field 29).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "FA Posting Group" <> xRec."FA Posting Group" THEN BEGIN
          FALedgerEntry.SETRANGE("FA No.","No.");
          IF NOT FALedgerEntry.ISEMPTY THEN
            ERROR(FoundFALedgerEntriesErr);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "FA Posting Group" <> xRec."FA Posting Group" then begin
          FALedgerEntry.SetRange("FA No.","No.");
          if not FALedgerEntry.IsEmpty then
            Error(FoundFALedgerEntriesErr);
        end;
        */
        //end;
        field(13701;"Excise Prod. Posting Group";
        Code[10])
        {
            CaptionML = ENU='Excise Prod. Posting Group',
                        ENN='Excise Prod. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Prod. Posting Group".Code;
        }
        field(13702;"Excise Accounting Type";Option)
        {
            CaptionML = ENU='Excise Accounting Type',
                        ENN='Excise Accounting Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU='With CENTVAT,Without CENTVAT',
                              ENN='With CENTVAT,Without CENTVAT';
            OptionMembers = "With CENTVAT","Without CENTVAT";

            trigger OnValidate();
            begin
                //TestNoEntriesExists(FIELDCAPTION("Excise Accounting Type"));
            end;
        }
        field(13703;"Gen. Prod. Posting Group";Code[10])
        {
            CaptionML = ENU='Gen. Prod. Posting Group',
                        ENN='Gen. Prod. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Product Posting Group".Code;
        }
        field(13708;"Tax Group Code";Code[10])
        {
            CaptionML = ENU='Tax Group Code',
                        ENN='Tax Group Code';
            DataClassification = ToBeClassified;
            TableRelation = "Tax Group".Code;
        }
        field(16351;"VAT Product Posting Group";Code[10])
        {
            CaptionML = ENU='VAT Product Posting Group',
                        ENN='VAT Product Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "VAT Product Posting Group";
        }
        field(16500;"FA Block Code";Code[10])
        {
            CaptionML = ENU='FA Block Code',
                        ENN='FA Block Code';
            DataClassification = ToBeClassified;
            TableRelation = "FA Block".Code WHERE ("FA Class Code"=FIELD("FA Class Code"));

            trigger OnValidate();
            var
                FaDeprBook2 : Record "FA Depreciation Book";
            begin
                /*IF (xRec."FA Block Code" <> '' ) AND (Rec."FA Block Code" = '') THEN BEGIN
                  FaDeprBook2.RESET;
                  FaDeprBook2.SETRANGE("FA No.","No.");
                  FaDeprBook2.SETRANGE("FA Book Type",FaDeprBook2."FA Book Type"::"Income Tax");
                  FaDeprBook2.SETRANGE("FA Block Code",xRec."FA Block Code");
                  IF FaDeprBook2.FINDFIRST THEN
                    ERROR(Text16500);
                END;
                IF (xRec."FA Block Code" = '') AND ("FA Block Code" <> '') THEN BEGIN
                  FADeprBook.SETCURRENTKEY("FA No.");
                  FADeprBook.SETRANGE("FA No.","No.");
                  FADeprBook.MODIFYALL("FA Block Code","FA Block Code");
                END;
                */

            end;
        }
        field(16501;"Add. Depr. Applicable";Boolean)
        {
            CaptionML = ENU='Add. Depr. Applicable',
                        ENN='Add. Depr. Applicable';
            DataClassification = ToBeClassified;
        }
        field(16602;"GST Group Code";Code[20])
        {
            CaptionML = ENU='GST Group Code',
                        ENN='GST Group Code';
            DataClassification = ToBeClassified;
            TableRelation = "GST Group";

            trigger OnValidate();
            begin
                //"HSN/SAC Code" := '';
            end;
        }
        field(16604;"HSN/SAC Code";Code[8])
        {
            CaptionML = ENU='HSN/SAC Code',
                        ENN='HSN/SAC Code';
            DataClassification = ToBeClassified;
            TableRelation = "HSN/SAC".Code WHERE ("GST Group Code"=FIELD("GST Group Code"));
        }
        field(16607;"GST Credit";Option)
        {
            CaptionML = ENU='GST Credit',
                        ENN='GST Credit';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU='Availment,Non-Availment',
                              ENN='Availment,Non-Availment';
            OptionMembers = Availment,"Non-Availment";
        }
        field(16608;Exempted;Boolean)
        {
            CaptionML = ENU='Exempted',
                        ENN='Exempted';
            DataClassification = ToBeClassified;
        }
        field(16609;"GST Calc. Option on Transfer";Option)
        {
            CaptionML = ENU='GST Calc. Option on Transfer',
                        ENN='GST Calc. Option on Transfer';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU=' ,Book Value,Other Value',
                              ENN=' ,Book Value,Other Value';
            OptionMembers = " ","Book Value","Other Value";
        }
        field(60001;"Location Trns. Reason";Text[100])
        {
            Description = 'B2B';
        }
        field(60002;"Employee Trns. Reason";Text[100])
        {
            Description = 'B2B';
        }
        field(60003;"AMC No.";Code[20])
        {
            Description = 'B2B';
        }
        field(60004;"AMC Date";Date)
        {
            Description = 'B2B';
        }
        field(60005;"Service Tax Group Code";Code[20])
        {
            TableRelation = "Service Tax Groups".Code;
        }
        field(60006;Verified;Boolean)
        {

            trigger OnValidate();
            begin
                if Verified then
                "Verified Date":=Today;
            end;
        }
        field(60007;"Verified Date";Date)
        {
        }
        field(60008;"QR Code";Code[50])
        {
        }
        field(60009;"Item Sub Sub Group Code";Code[30])
        {
            TableRelation = "Item Sub Sub Group".Code WHERE ("Item Sub Group Code"=FIELD("Item Sub Group Code"));
        }
        field(60010;"Item Sub Group Code";Code[20])
        {
            TableRelation = "Item Sub Group".Code WHERE ("Product Group Code"=CONST('B OUT'));
        }
        field(60011;"Responsible Emp Name";Text[50])
        {
            CalcFormula = Lookup("Dimension Value".Name WHERE ("Dimension Code"=CONST('EMPLOYEE CODES'),
                                                               Code=FIELD("Responsible Employee")));
            FieldClass = FlowField;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search Description"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA Class Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA Subclass Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Component of Main Asset,Main Asset/Component"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA Location Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Global Dimension 1 Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Global Dimension 2 Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""FA Posting Group"(Key)". Please convert manually.

        key(Key1;"No.")
        {
        }
        key(Key2;"Search Description")
        {
        }
        key(Key3;"FA Class Code")
        {
        }
        key(Key4;"FA Subclass Code")
        {
        }
        key(Key5;"Component of Main Asset","Main Asset/Component")
        {
        }
        key(Key6;"FA Location Code")
        {
        }
        key(Key7;"Global Dimension 1 Code")
        {
        }
        key(Key8;"Global Dimension 2 Code")
        {
        }
        key(Key9;"FA Posting Group")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        LOCKTABLE;
        MainAssetComp.LOCKTABLE;
        InsCoverageLedgEntry.LOCKTABLE;
        IF "Main Asset/Component" = "Main Asset/Component"::"Main Asset" THEN
          ERROR(Text000);
        FAMoveEntries.MoveFAInsuranceEntries("No.");
        FADeprBook.SETRANGE("FA No.","No.");
        FADeprBook.DELETEALL(TRUE);
        IF NOT FADeprBook.ISEMPTY THEN
          ERROR(Text001,TABLECAPTION,"No.");

        MainAssetComp.SETCURRENTKEY("FA No.");
        MainAssetComp.SETRANGE("FA No.","No.");
        MainAssetComp.DELETEALL;
        IF "Main Asset/Component" = "Main Asset/Component"::Component THEN BEGIN
          MainAssetComp.RESET;
          MainAssetComp.SETRANGE("Main Asset No.","Component of Main Asset");
          MainAssetComp.SETRANGE("FA No.",'');
          MainAssetComp.DELETEALL;
          MainAssetComp.SETRANGE("FA No.");
          IF NOT MainAssetComp.FINDFIRST THEN BEGIN
            FA.GET("Component of Main Asset");
            FA."Main Asset/Component" := FA."Main Asset/Component"::" ";
            FA."Component of Main Asset" := '';
            FA.MODIFY;
          END;
        END;

        MaintenanceRegistration.SETRANGE("FA No.","No.");
        MaintenanceRegistration.DELETEALL;

        CommentLine.SETRANGE("Table Name",CommentLine."Table Name"::"Fixed Asset");
        CommentLine.SETRANGE("No.","No.");
        CommentLine.DELETEALL;

        DimMgt.DeleteDefaultDim(DATABASE::"Fixed Asset","No.");
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        LockTable;
        MainAssetComp.LockTable;
        InsCoverageLedgEntry.LockTable;
        if "Main Asset/Component" = "Main Asset/Component"::"Main Asset" then
          Error(Text000);
        FAMoveEntries.MoveFAInsuranceEntries("No.");
        FADeprBook.SetRange("FA No.","No.");
        FADeprBook.DeleteAll(true);
        if not FADeprBook.IsEmpty then
          Error(Text001,TableCaption,"No.");

        MainAssetComp.SetCurrentKey("FA No.");
        MainAssetComp.SetRange("FA No.","No.");
        MainAssetComp.DeleteAll;
        if "Main Asset/Component" = "Main Asset/Component"::Component then begin
          MainAssetComp.Reset;
          MainAssetComp.SetRange("Main Asset No.","Component of Main Asset");
          MainAssetComp.SetRange("FA No.",'');
          MainAssetComp.DeleteAll;
          MainAssetComp.SetRange("FA No.");
          if not MainAssetComp.FindFirst then begin
            FA.Get("Component of Main Asset");
            FA."Main Asset/Component" := FA."Main Asset/Component"::" ";
            FA."Component of Main Asset" := '';
            FA.Modify;
          end;
        end;

        MaintenanceRegistration.SetRange("FA No.","No.");
        MaintenanceRegistration.DeleteAll;

        CommentLine.SetRange("Table Name",CommentLine."Table Name"::"Fixed Asset");
        CommentLine.SetRange("No.","No.");
        CommentLine.DeleteAll;

        DimMgt.DeleteDefaultDim(DATABASE::"Fixed Asset","No.");
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
        SalesLine.RenameNo(SalesLine.Type::"Fixed Asset",xRec."No.","No.");
        PurchaseLine.RenameNo(PurchaseLine.Type::"Fixed Asset",xRec."No.","No.");
        DimMgt.RenameDefaultDim(DATABASE::"Fixed Asset",xRec."No.","No.");

        "Last Date Modified" := TODAY;
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        #1..4
        "Last Date Modified" := Today;
        */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "Description(Field 2).OnValidate.FADeprBook(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //Description : 5612;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //Description : "FA Depreciation Book";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""FA Class Code"(Field 5).OnValidate.FASubclass(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"FA Class Code" : 5608;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"FA Class Code" : "FA Subclass";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""FA Subclass Code"(Field 6).OnValidate.FASubclass(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"FA Subclass Code" : 5608;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"FA Subclass Code" : "FA Subclass";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""FA Posting Group"(Field 29).OnValidate.FALedgerEntry(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //"FA Posting Group" : 5601;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //"FA Posting Group" : "FA Ledger Entry";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.FADeprBook(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //OnDelete.FADeprBook : 5612;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //OnDelete.FADeprBook : "FA Depreciation Book";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnRename.SalesLine(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //OnRename.SalesLine : 37;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //OnRename.SalesLine : "Sales Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnRename.PurchaseLine(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //OnRename.PurchaseLine : 39;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //OnRename.PurchaseLine : "Purchase Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowAcquireWizardNotification(PROCEDURE 3).NotificationLifecycleMgt(Variable 1002)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ShowAcquireWizardNotification : 1511;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ShowAcquireWizardNotification : "Notification Lifecycle Mgt.";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowAcquireWizardNotification(PROCEDURE 3).FixedAssetAcquisitionWizard(Variable 1001)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //ShowAcquireWizardNotification : 5550;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ShowAcquireWizardNotification : "Fixed Asset Acquisition Wizard";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RecallNotificationForCurrentUser(PROCEDURE 9).NotificationLifecycleMgt(Variable 1000)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //RecallNotificationForCurrentUser : 1511;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //RecallNotificationForCurrentUser : "Notification Lifecycle Mgt.";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CommentLine(Variable 1002)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //CommentLine : 97;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //CommentLine : "Comment Line";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FA(Variable 1003)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //FA : 5600;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //FA : "Fixed Asset";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FASetup(Variable 1004)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //FASetup : 5603;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //FASetup : "FA Setup";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MaintenanceRegistration(Variable 1005)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //MaintenanceRegistration : 5616;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //MaintenanceRegistration : "Maintenance Registration";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MainAssetComp(Variable 1007)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //MainAssetComp : 5640;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //MainAssetComp : "Main Asset Component";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsCoverageLedgEntry(Variable 1008)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //InsCoverageLedgEntry : 5629;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //InsCoverageLedgEntry : "Ins. Coverage Ledger Entry";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FAMoveEntries(Variable 1009)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //FAMoveEntries : 5623;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //FAMoveEntries : "FA MoveEntries";
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1010)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //NoSeriesMgt : 396;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //NoSeriesMgt : NoSeriesManagement;
        //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1011)". Please convert manually.

    //var
        //>>>> ORIGINAL VALUE:
        //DimMgt : 408;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //DimMgt : DimensionManagement;
        //Variable type has not been exported.

    var
        FADeprBook1 : Record "FA Depreciation Book";
}

