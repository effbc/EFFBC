tableextension 70049 ReminderHeaderExt extends "Reminder Header"
{
    // version NAVW19.00.00.50221

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


        //Unsupported feature: Change TableRelation on ""Reminder Level"(Field 28)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 30)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 30)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Remaining Amount"(Field 31)". Please convert manually.


        //Unsupported feature: Change Editable on ""Remaining Amount"(Field 31)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Interest Amount"(Field 32)". Please convert manually.


        //Unsupported feature: Change Editable on ""Interest Amount"(Field 32)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Additional Fee"(Field 33)". Please convert manually.


        //Unsupported feature: Change Editable on ""Additional Fee"(Field 33)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""VAT Amount"(Field 34)". Please convert manually.


        //Unsupported feature: Change Editable on ""VAT Amount"(Field 34)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. Series"(Field 37)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Add. Fee per Line"(Field 45)". Please convert manually.


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
            CreateDim(DATABASE::Customer,"Customer No.");
            EXIT;
          END;
        IF "Customer No." = '' THEN BEGIN
          CreateDim(DATABASE::Customer,"Customer No.");
          EXIT;
        END;
        Cust.GET("Customer No.");
        IF Cust."Privacy Blocked" THEN
          Cust.CustPrivacyBlockedErrorMessage(Cust,FALSE);
        IF Cust.Blocked = Cust.Blocked::All THEN
          Cust.CustBlockedErrorMessage(Cust,FALSE);
        Name := Cust.Name;
        "Name 2" := Cust."Name 2";
        Address := Cust.Address;
        "Address 2" := Cust."Address 2";
        "Post Code" := Cust."Post Code";
        City := Cust.City;
        County := Cust.County;
        Contact := Cust.Contact;
        "Country/Region Code" := Cust."Country/Region Code";
        "Language Code" := Cust."Language Code";
        "Currency Code" := Cust."Currency Code";
        "Shortcut Dimension 1 Code" := Cust."Global Dimension 1 Code";
        "Shortcut Dimension 2 Code" := Cust."Global Dimension 2 Code";
        "VAT Registration No." := Cust."VAT Registration No.";
        Cust.TESTFIELD("Customer Posting Group");
        "Customer Posting Group" := Cust."Customer Posting Group";
        "Gen. Bus. Posting Group" := Cust."Gen. Bus. Posting Group";
        "VAT Bus. Posting Group" := Cust."VAT Bus. Posting Group";
        "Tax Area Code" := Cust."Tax Area Code";
        "Tax Liable" := Cust."Tax Liable";
        "Reminder Terms Code" := Cust."Reminder Terms Code";
        "Fin. Charge Terms Code" := Cust."Fin. Charge Terms Code";
        VALIDATE("Reminder Terms Code");

        CreateDim(DATABASE::Customer,"Customer No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo = FieldNo("Customer No.") then
          if Undo then begin
            "Customer No." := xRec."Customer No.";
            CreateDim(DATABASE::Customer,"Customer No.");
            exit;
          end;
        if "Customer No." = '' then begin
          CreateDim(DATABASE::Customer,"Customer No.");
          exit;
        end;
        Cust.Get("Customer No.");
        if Cust."Privacy Blocked" then
          Cust.CustPrivacyBlockedErrorMessage(Cust,false);
        if Cust.Blocked = Cust.Blocked::All then
          Cust.CustBlockedErrorMessage(Cust,false);
        #16..29
        Cust.TestField("Customer Posting Group");
        #31..37
        Validate("Reminder Terms Code");

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
        VALIDATE("Reminder Level");
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
        Validate("Reminder Level");
        */
        //end;


        //Unsupported feature: CodeModification on ""Reminder Terms Code"(Field 24).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo = FIELDNO("Reminder Terms Code") THEN
          IF Undo THEN BEGIN
            "Reminder Terms Code" := xRec."Reminder Terms Code";
            EXIT;
          END;
        IF "Reminder Terms Code" <> '' THEN BEGIN
          ReminderTerms.GET("Reminder Terms Code");
          "Post Interest" := ReminderTerms."Post Interest";
          "Post Additional Fee" := ReminderTerms."Post Additional Fee";
          "Post Add. Fee per Line" := ReminderTerms."Post Add. Fee per Line";
          VALIDATE("Reminder Level");
          VALIDATE("Post Interest");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo = FieldNo("Reminder Terms Code") then
          if Undo then begin
            "Reminder Terms Code" := xRec."Reminder Terms Code";
            exit;
          end;
        if "Reminder Terms Code" <> '' then begin
          ReminderTerms.Get("Reminder Terms Code");
        #8..10
          Validate("Reminder Level");
          Validate("Post Interest");
        end;
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
        */
        //end;


        //Unsupported feature: CodeModification on ""Reminder Level"(Field 28).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Reminder Level" <> 0) AND ("Reminder Terms Code" <> '') THEN BEGIN
          ReminderTerms.GET("Reminder Terms Code");
          ReminderLevel.SETRANGE("Reminder Terms Code","Reminder Terms Code");
          ReminderLevel.SETRANGE("No.",1,"Reminder Level");
          IF ReminderLevel.FINDLAST AND ("Document Date" <> 0D) THEN
            "Due Date" := CALCDATE(ReminderLevel."Due Date Calculation","Document Date");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Reminder Level" <> 0) and ("Reminder Terms Code" <> '') then begin
          ReminderTerms.Get("Reminder Terms Code");
          ReminderLevel.SetRange("Reminder Terms Code","Reminder Terms Code");
          ReminderLevel.SetRange("No.",1,"Reminder Level");
          if ReminderLevel.FindLast and ("Document Date" <> 0D) then
            "Due Date" := CalcDate(ReminderLevel."Due Date Calculation","Document Date");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Issuing No. Series"(Field 38).OnLookup". Please convert manually.

        //trigger  Series"(Field 38)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WITH ReminderHeader DO BEGIN
          ReminderHeader := Rec;
          TestNoSeries;
          IF NoSeriesMgt.LookupSeries(GetIssuingNoSeriesCode,"Issuing No. Series") THEN
            VALIDATE("Issuing No. Series");
          Rec := ReminderHeader;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        with ReminderHeader do begin
          ReminderHeader := Rec;
          TestNoSeries;
          if NoSeriesMgt.LookupSeries(GetIssuingNoSeriesCode,"Issuing No. Series") then
            Validate("Issuing No. Series");
          Rec := ReminderHeader;
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
        field(60090; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091; "OLD Dim Set ID"; Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            //TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

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

        key(NO1; "No.")
        {
        }
        key(Customer2; "Customer No.", "Currency Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ReminderIssue.DeleteHeader(Rec,IssuedReminderHeader);

    ReminderLine.SETRANGE("Reminder No.","No.");
    ReminderLine.DELETEALL;

    ReminderCommentLine.SETRANGE(Type,ReminderCommentLine.Type::Reminder);
    ReminderCommentLine.SETRANGE("No.","No.");
    ReminderCommentLine.DELETEALL;

    IF IssuedReminderHeader."No." <> '' THEN BEGIN
      COMMIT;
      IF CONFIRM(
           Text001,TRUE,
           IssuedReminderHeader."No.")
      THEN BEGIN
        IssuedReminderHeader.SETRECFILTER;
        IssuedReminderHeader.PrintRecords(TRUE,FALSE,FALSE)
      END;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ReminderIssue.DeleteHeader(Rec,IssuedReminderHeader);

    ReminderLine.SetRange("Reminder No.","No.");
    ReminderLine.DeleteAll;

    ReminderCommentLine.SetRange(Type,ReminderCommentLine.Type::Reminder);
    ReminderCommentLine.SetRange("No.","No.");
    ReminderCommentLine.DeleteAll;

    if IssuedReminderHeader."No." <> '' then begin
      Commit;
      if Confirm(
           Text001,true,
           IssuedReminderHeader."No.")
      then begin
        IssuedReminderHeader.SetRecFilter;
        IssuedReminderHeader.PrintRecords(true,false,false)
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
    SetReminderNo;
    "Posting Description" := STRSUBSTNO(Text000,"No.");
    IF ("No. Series" <> '') AND
       (SalesSetup."Reminder Nos." = SalesSetup."Issued Reminder Nos.")
    THEN
      "Issuing No. Series" := "No. Series"
    ELSE
      NoSeriesMgt.SetDefaultSeries("Issuing No. Series",SalesSetup."Issued Reminder Nos.");

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
    SetReminderNo;
    "Posting Description" := StrSubstNo(Text000,"No.");
    if ("No. Series" <> '') and
       (SalesSetup."Reminder Nos." = SalesSetup."Issued Reminder Nos.")
    then
      "Issuing No. Series" := "No. Series"
    else
      NoSeriesMgt.SetDefaultSeries("Issuing No. Series",SalesSetup."Issued Reminder Nos.");

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



    //Unsupported feature: PropertyModification on "InsertLines(PROCEDURE 3).ReminderLine2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertLines : 296;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertLines : "Reminder Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertLines(PROCEDURE 3).CurrencyForReminderLevel(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertLines : 329;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertLines : "Currency for Reminder Level";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertLines(PROCEDURE 3).LanguageManagement(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertLines : 43;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertLines : LanguageManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertEndTexts(PROCEDURE 12).ReminderLine2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertEndTexts : 296;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertEndTexts : "Reminder Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertTextLines(PROCEDURE 4).CompanyInfo(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertTextLines : 79;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertTextLines : "Company Information";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 1).ReminderHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 295;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Reminder Header";
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


    //Unsupported feature: PropertyModification on "CalculateLineFeeVATAmount(PROCEDURE 1000).ReminderLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalculateLineFeeVATAmount : 296;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalculateLineFeeVATAmount : "Reminder Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetNextLineNo(PROCEDURE 1010).ReminderLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetNextLineNo : 296;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetNextLineNo : "Reminder Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Currency(Variable 1011)". Please convert manually.

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


    //Unsupported feature: PropertyModification on "ReminderTerms(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReminderTerms : 292;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReminderTerms : "Reminder Terms";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReminderLevel(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReminderLevel : 293;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReminderLevel : "Reminder Level";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReminderText(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReminderText : 294;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReminderText : "Reminder Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FinChrgTerms(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FinChrgTerms : 5;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FinChrgTerms : "Finance Charge Terms";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReminderHeader(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReminderHeader : 295;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReminderHeader : "Reminder Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReminderLine(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReminderLine : 296;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReminderLine : "Reminder Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReminderCommentLine(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReminderCommentLine : 299;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReminderCommentLine : "Reminder Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Cust(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Cust : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Cust : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1018)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IssuedReminderHeader(Variable 1019)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IssuedReminderHeader : 297;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IssuedReminderHeader : "Issued Reminder Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GenBusPostingGrp(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GenBusPostingGrp : 250;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GenBusPostingGrp : "Gen. Business Posting Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AutoFormatManagement(Variable 1031)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AutoFormatManagement : 45;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AutoFormatManagement : AutoFormatManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1022)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TransferExtendedText(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TransferExtendedText : 378;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TransferExtendedText : "Transfer Extended Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReminderIssue(Variable 1024)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReminderIssue : 393;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReminderIssue : "Reminder-Issue";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1025)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}

