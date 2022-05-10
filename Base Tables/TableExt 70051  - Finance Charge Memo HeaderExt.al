tableextension 70051 FinanceChargeMemoHeaderExt extends "Finance Charge Memo Header"
{
    // version NAVW19.00.00.51918,NAVIN9.00.00.51918

    fields
    {

        //Unsupported feature: Change TableRelation on ""Post Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 15)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer Posting Group"(Field 17)". Please convert manually.


        //Unsupported feature: Change Editable on ""Gen. Bus. Posting Group"(Field 18)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Amount"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Interest Amount"(Field 32)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Additional Fee"(Field 33)". Please convert manually.


        //Unsupported feature: Change Editable on ""Additional Fee"(Field 33)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Amount"(Field 34)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 37)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 1).OnValidate". Please convert manually.

        //trigger "(Field 1)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> xRec."No." THEN BEGIN
          NoSeriesMgt.TestManual(GetNoSeriesCode);
          "No. Series" := '';
        END;
        "Posting Description" := STRSUBSTNO(Text000,"No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> xRec."No." then begin
          NoSeriesMgt.TestManual(GetNoSeriesCode);
          "No. Series" := '';
        end;
        "Posting Description" := StrSubstNo(Text000,"No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Customer No."(Field 2).OnValidate". Please convert manually.

        //trigger "(Field 2)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo = FIELDNO("Customer No.") THEN
          IF Undo THEN BEGIN
            "Customer No." := xRec."Customer No.";
            EXIT;
          END;
        IF "Customer No." = '' THEN
          EXIT;
        Cust.GET("Customer No.");
        Name := Cust.Name;
        "Name 2" := Cust."Name 2";
        Address := Cust.Address;
        #12..19
        "Shortcut Dimension 1 Code" := Cust."Global Dimension 1 Code";
        "Shortcut Dimension 2 Code" := Cust."Global Dimension 2 Code";
        "VAT Registration No." := Cust."VAT Registration No.";
        Cust.TESTFIELD("Customer Posting Group");
        "Customer Posting Group" := Cust."Customer Posting Group";
        "Gen. Bus. Posting Group" := Cust."Gen. Bus. Posting Group";
        "VAT Bus. Posting Group" := Cust."VAT Bus. Posting Group";
        "Tax Area Code" := Cust."Tax Area Code";
        "Tax Liable" := Cust."Tax Liable";
        VALIDATE("Fin. Charge Terms Code",Cust."Fin. Charge Terms Code");

        CreateDim(DATABASE::Customer,"Customer No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo = FieldNo("Customer No.") then
          if Undo then begin
            "Customer No." := xRec."Customer No.";
            exit;
          end;
        if "Customer No." = '' then
          exit;
        Cust.Get("Customer No.");
        #9..22
        Cust.TestField("Customer Posting Group");
        #24..28
        Validate("Fin. Charge Terms Code",Cust."Fin. Charge Terms Code");

        CreateDim(DATABASE::Customer,"Customer No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Post Code"(Field 7).OnValidate". Please convert manually.

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


        //Unsupported feature: CodeModification on ""Currency Code"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo = FIELDNO("Currency Code") THEN
          IF Undo THEN BEGIN
            "Currency Code" := xRec."Currency Code";
            EXIT;
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo = FieldNo("Currency Code") then
          if Undo then begin
            "Currency Code" := xRec."Currency Code";
            exit;
          end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Gen. Bus. Posting Group"(Field 18).OnValidate". Please convert manually.

        //trigger  Bus();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" THEN
          IF GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") THEN
            VALIDATE("VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" then
          if GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") then
            Validate("VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;


        //Unsupported feature: CodeModification on ""Document Date"(Field 22).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo = FIELDNO("Document Date") THEN
          IF Undo THEN BEGIN
            "Document Date" := xRec."Document Date";
            EXIT;
          END;
        VALIDATE("Fin. Charge Terms Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo = FieldNo("Document Date") then
          if Undo then begin
            "Document Date" := xRec."Document Date";
            exit;
          end;
        Validate("Fin. Charge Terms Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Fin. Charge Terms Code"(Field 25).OnValidate". Please convert manually.

        //trigger  Charge Terms Code"(Field 25)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo = FIELDNO("Fin. Charge Terms Code") THEN
          IF Undo THEN BEGIN
            "Fin. Charge Terms Code" := xRec."Fin. Charge Terms Code";
            EXIT;
          END;
        IF "Fin. Charge Terms Code" <> '' THEN BEGIN
          FinChrgTerms.GET("Fin. Charge Terms Code");
          "Post Interest" := FinChrgTerms."Post Interest";
          "Post Additional Fee" := FinChrgTerms."Post Additional Fee";
          IF "Document Date" <> 0D THEN
            "Due Date" := CALCDATE(FinChrgTerms."Due Date Calculation","Document Date");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo = FieldNo("Fin. Charge Terms Code") then
          if Undo then begin
            "Fin. Charge Terms Code" := xRec."Fin. Charge Terms Code";
            exit;
          end;
        if "Fin. Charge Terms Code" <> '' then begin
          FinChrgTerms.Get("Fin. Charge Terms Code");
          "Post Interest" := FinChrgTerms."Post Interest";
          "Post Additional Fee" := FinChrgTerms."Post Additional Fee";
          if "Document Date" <> 0D then
            "Due Date" := CalcDate(FinChrgTerms."Due Date Calculation","Document Date");
        end;
        */
        //end;

        //Unsupported feature: PropertyDeletion on ""Remaining Amount"(Field 31)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""Interest Amount"(Field 32)". Please convert manually.


        //Unsupported feature: PropertyDeletion on ""VAT Amount"(Field 34)". Please convert manually.



        //Unsupported feature: CodeModification on ""Issuing No. Series"(Field 38).OnLookup". Please convert manually.

        //trigger  Series"(Field 38)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WITH FinChrgMemoHeader DO BEGIN
          FinChrgMemoHeader := Rec;
          TestNoSeries;
          IF NoSeriesMgt.LookupSeries(GetIssuingNoSeriesCode,"Issuing No. Series") THEN
            VALIDATE("Issuing No. Series");
          Rec := FinChrgMemoHeader;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        with FinChrgMemoHeader do begin
          FinChrgMemoHeader := Rec;
          TestNoSeries;
          if NoSeriesMgt.LookupSeries(GetIssuingNoSeriesCode,"Issuing No. Series") then
            Validate("Issuing No. Series");
          Rec := FinChrgMemoHeader;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Issuing No. Series"(Field 38).OnValidate". Please convert manually.

        //trigger  Series"(Field 38)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Issuing No. Series" <> '' THEN BEGIN
          TestNoSeries;
          NoSeriesMgt.TestSeries(GetIssuingNoSeriesCode,"Issuing No. Series");
        END;
        TESTFIELD("Issuing No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Issuing No. Series" <> '' then begin
          TestNoSeries;
          NoSeriesMgt.TestSeries(GetIssuingNoSeriesCode,"Issuing No. Series");
        end;
        TestField("Issuing No.",'');
        */
        //end;
        field(16601; "Invoice Type"; Option)
        {
            CaptionML = ENU = 'Invoice Type',
                        ENN = 'Invoice Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable',
                              ENN = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable';
            OptionMembers = " ","Bill of Supply",Export,Supplementary,"Debit Note","Non-GST",Taxable;

            trigger OnValidate();
            var
                FinanceChargeMemoLine: Record "Finance Charge Memo Line";
            begin
                /*IF "GST Customer Type" <> "GST Customer Type"::Exempted THEN
                  IF GSTManagement.CheckAllLinesExemptedFinChargeMemo(Rec) THEN
                    GSTManagement.CheckInvoiceTypeFinChargeMemo(Rec)
                  ELSE BEGIN
                    FinanceChargeMemoLine.RESET;
                    FinanceChargeMemoLine.SETRANGE("Finance Charge Memo No.","No.");
                    IF FinanceChargeMemoLine.FINDFIRST THEN
                      TESTFIELD("Invoice Type","Invoice Type"::"Bill of Supply");
                  END ELSE
                  GSTManagement.CheckInvoiceTypeFinChargeMemo(Rec);
                GetIssuedInvoiceNoSeries;
                */

            end;
        }
        field(16602; "GST Bill-to State Code"; Code[10])
        {
            CaptionML = ENU = 'GST Bill-to State Code',
                        ENN = 'GST Bill-to State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16603; "GST Ship-to State Code"; Code[10])
        {
            CaptionML = ENU = 'GST Ship-to State Code',
                        ENN = 'GST Ship-to State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16604; "Location State Code"; Code[10])
        {
            CaptionML = ENU = 'Location State Code',
                        ENN = 'Location State Code';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = State;
        }
        field(16605; "Location GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Location GST Reg. No.',
                        ENN = 'Location GST Reg. No.';
            DataClassification = ToBeClassified;
            TableRelation = "GST Registration Nos.";

            trigger OnValidate();
            var
                GSTRegistrationNos: Record "GST Registration Nos.";
            begin
                /*IF GSTRegistrationNos.GET("Location GST Reg. No.") THEN
                  "Location State Code" := GSTRegistrationNos."State Code"
                ELSE
                  "Location State Code" := '';
                  */

            end;
        }
        field(16606; "Customer GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Customer GST Reg. No.',
                        ENN = 'Customer GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16607; "GST Customer Type"; Option)
        {
            CaptionML = ENU = 'GST Customer Type',
                        ENN = 'GST Customer Type';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit',
                              ENN = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";

            trigger OnValidate();
            begin
                //GSTManagement.UpdateInvoiceTypeFinChargeMemo(Rec);
            end;
        }
        field(16608; "Nature of Supply"; Option)
        {
            CaptionML = ENU = 'Nature of Supply',
                        ENN = 'Nature of Supply';
            DataClassification = ToBeClassified;
            Editable = false;
            OptionCaptionML = ENU = 'B2B,B2C',
                              ENN = 'B2B,B2C';
            OptionMembers = B2B,B2C;
        }
        field(16609; "Ship-to Code"; Code[10])
        {
            CaptionML = ENU = 'Ship-to Code',
                        ENN = 'Ship-to Code';
            DataClassification = ToBeClassified;
            TableRelation = "Ship-to Address".Code WHERE("Customer No." = FIELD("Customer No."));

            trigger OnValidate();
            var
                ShipToAddress: Record "Ship-to Address";
                FinChrgMemoLine2: Record "Finance Charge Memo Line";
            begin
                /*"GST Ship-to State Code" := '';
                "Ship-to GST Reg. No." := '';
                IF "Ship-to Code" <> '' THEN BEGIN
                  IF xRec."Ship-to Code" <> '' THEN BEGIN
                    Cust.GET("Customer No.");
                    IF Cust."Location Code" <> '' THEN
                      VALIDATE("Location code",Cust."Location Code");
                  END;
                  ShipToAddress.GET("Customer No.","Ship-to Code");
                  IF ShipToAddress."Location Code" <> '' THEN
                    VALIDATE("Location code",ShipToAddress."Location Code");
                  IF "GST Customer Type" <> "GST Customer Type"::" " THEN
                    IF "GST Customer Type" IN ["GST Customer Type"::Exempted,"GST Customer Type"::"Deemed Export",
                                               "GST Customer Type"::"SEZ Development","GST Customer Type"::"SEZ Unit",
                                               "GST Customer Type"::Registered]
                    THEN BEGIN
                      ShipToAddress.TESTFIELD(State);
                      IF ShipToAddress."GST Registration No." = '' THEN
                        IF ShipToAddress."ARN No." = '' THEN
                          ERROR(ShiptoGSTARNErr);
                      "GST Ship-to State Code" := ShipToAddress.State;
                      "Ship-to GST Reg. No." := ShipToAddress."GST Registration No.";
                    END;
                END ELSE BEGIN
                  FinChrgMemoLine2.SETRANGE("Finance Charge Memo No.","No.");
                  FinChrgMemoLine2.SETRANGE("GST Place of Supply",FinChrgMemoLine2."GST Place of Supply"::"Ship-to Address");
                  IF FinChrgMemoLine2.FINDFIRST THEN
                    TESTFIELD("Ship-to Code");
                END;*/

            end;
        }
        field(16610; "Location code"; Code[10])
        {
            CaptionML = ENU = 'Location code',
                        ENN = 'Location code';
            DataClassification = ToBeClassified;
            TableRelation = Location;

            trigger OnValidate();
            var
                Location: Record Location;
            begin
                /*IF "Location code" = '' THEN BEGIN
                  "Location GST Reg. No." := '';
                  "Location State Code" := '';
                  "Ship-to Code" := '';
                END ELSE BEGIN
                  Location.GET("Location code");
                  "Location GST Reg. No." := Location."GST Registration No.";
                  "Location State Code" := Location."State Code";
                END;
                IF "Location code" <> '' THEN
                  GetIssuedInvoiceNoSeries;
                  */

            end;
        }
        field(16611; "GST Without Payment of Duty"; Boolean)
        {
            CaptionML = ENU = 'GST Without Payment of Duty',
                        ENN = 'GST Without Payment of Duty';
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                /*IF NOT ("GST Customer Type" IN ["GST Customer Type"::Export,"GST Customer Type"::"Deemed Export",
                                                "GST Customer Type"::"SEZ Development","GST Customer Type"::"SEZ Unit"])
                THEN
                  ERROR(GSTPaymentDutyErr);
                  */

            end;
        }
        field(16612; "Ship-to GST Reg. No."; Code[15])
        {
            CaptionML = ENU = 'Ship-to GST Reg. No.',
                        ENN = 'Ship-to GST Reg. No.';
            DataClassification = ToBeClassified;
            Editable = false;
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


        //Unsupported feature: Deletion on ""Customer No.,Currency Code"(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Customer No.", "Currency Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    FinChrgMemoIssue.DeleteHeader(Rec,IssuedFinChrgMemoHdr);

    FinChrgMemoLine.SETRANGE("Finance Charge Memo No.","No.");
    FinChrgMemoLine.DELETEALL;

    FinChrgMemoCommentLine.SETRANGE(Type,FinChrgMemoCommentLine.Type::"Finance Charge Memo");
    FinChrgMemoCommentLine.SETRANGE("No.","No.");
    FinChrgMemoCommentLine.DELETEALL;

    IF IssuedFinChrgMemoHdr."No." <> '' THEN BEGIN
      COMMIT;
      IF ConfirmManagement.ConfirmProcessUI(
           STRSUBSTNO(Text001,IssuedFinChrgMemoHdr."No."),TRUE)
      THEN BEGIN
        IssuedFinChrgMemoHdr.SETRECFILTER;
        IssuedFinChrgMemoHdr.PrintRecords(TRUE,FALSE,FALSE)
      END;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    FinChrgMemoIssue.DeleteHeader(Rec,IssuedFinChrgMemoHdr);

    FinChrgMemoLine.SetRange("Finance Charge Memo No.","No.");
    FinChrgMemoLine.DeleteAll;

    FinChrgMemoCommentLine.SetRange(Type,FinChrgMemoCommentLine.Type::"Finance Charge Memo");
    FinChrgMemoCommentLine.SetRange("No.","No.");
    FinChrgMemoCommentLine.DeleteAll;

    if IssuedFinChrgMemoHdr."No." <> '' then begin
      Commit;
      if ConfirmManagement.ConfirmProcessUI(
           StrSubstNo(Text001,IssuedFinChrgMemoHdr."No."),true)
      then begin
        IssuedFinChrgMemoHdr.SetRecFilter;
        IssuedFinChrgMemoHdr.PrintRecords(true,false,false)
      end;
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SalesSetup.GET;
    IF "No." = '' THEN BEGIN
      TestNoSeries;
      NoSeriesMgt.InitSeries(GetNoSeriesCode,xRec."No. Series","Posting Date","No.","No. Series");
    END;
    "Posting Description" := STRSUBSTNO(Text000,"No.");
    IF ("No. Series" <> '') AND
       (SalesSetup."Fin. Chrg. Memo Nos." = SalesSetup."Issued Fin. Chrg. M. Nos.")
    THEN
      "Issuing No. Series" := "No. Series"
    ELSE
      NoSeriesMgt.SetDefaultSeries("Issuing No. Series",SalesSetup."Issued Fin. Chrg. M. Nos.");

    IF "Posting Date" = 0D THEN
      "Posting Date" := WORKDATE;
    "Document Date" := WORKDATE;
    "Due Date" := WORKDATE;

    IF GETFILTER("Customer No.") <> '' THEN
      IF GETRANGEMIN("Customer No.") = GETRANGEMAX("Customer No.") THEN
        VALIDATE("Customer No.",GETRANGEMIN("Customer No."));
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    SalesSetup.Get;
    if "No." = '' then begin
      TestNoSeries;
      NoSeriesMgt.InitSeries(GetNoSeriesCode,xRec."No. Series","Posting Date","No.","No. Series");
    end;
    "Posting Description" := StrSubstNo(Text000,"No.");
    if ("No. Series" <> '') and
       (SalesSetup."Fin. Chrg. Memo Nos." = SalesSetup."Issued Fin. Chrg. M. Nos.")
    then
      "Issuing No. Series" := "No. Series"
    else
      NoSeriesMgt.SetDefaultSeries("Issuing No. Series",SalesSetup."Issued Fin. Chrg. M. Nos.");

    if "Posting Date" = 0D then
      "Posting Date" := WorkDate;
    "Document Date" := WorkDate;
    "Due Date" := WorkDate;

    if GetFilter("Customer No.") <> '' then
      if GetRangeMin("Customer No.") = GetRangeMax("Customer No.") then
        Validate("Customer No.",GetRangeMin("Customer No."));
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.ConfirmManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ConfirmManagement : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ConfirmManagement : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertLines(PROCEDURE 3).LanguageManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertLines : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertLines : LanguageManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).FinChrgMemoHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Finance Charge Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).ReportSelection(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 16).SourceCodeSetup(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Currency(Variable 1029)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Currency : 4;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Currency : Currency;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesSetup(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesSetup : 311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesSetup : "Sales & Receivables Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustPostingGr(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustPostingGr : 92;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustPostingGr : "Customer Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinChrgTerms(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinChrgTerms : 5;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinChrgTerms : "Finance Charge Terms";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CurrForFinChrgTerms(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CurrForFinChrgTerms : 328;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrForFinChrgTerms : "Currency for Fin. Charge Terms";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinChrgText(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinChrgText : 301;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinChrgText : "Finance Charge Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinChrgMemoHeader(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinChrgMemoHeader : 302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinChrgMemoHeader : "Finance Charge Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinChrgMemoLine(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinChrgMemoLine : 303;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinChrgMemoLine : "Finance Charge Memo Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinChrgMemoCommentLine(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinChrgMemoCommentLine : 306;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinChrgMemoCommentLine : "Fin. Charge Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Cust(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Cust : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Cust : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IssuedFinChrgMemoHdr(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IssuedFinChrgMemoHdr : 304;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IssuedFinChrgMemoHdr : "Issued Fin. Charge Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenBusPostingGrp(Variable 1018)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenBusPostingGrp : 250;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenBusPostingGrp : "Gen. Business Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CurrExchRate(Variable 1019)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CurrExchRate : 330;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrExchRate : "Currency Exchange Rate";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AutoFormatManagement(Variable 1028)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AutoFormatManagement : 45;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AutoFormatManagement : AutoFormatManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferExtendedText(Variable 1021)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferExtendedText : 378;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferExtendedText : "Transfer Extended Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinChrgMemoIssue(Variable 1022)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinChrgMemoIssue : 395;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinChrgMemoIssue : "FinChrgMemo-Issue";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}

