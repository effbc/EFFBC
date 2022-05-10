tableextension 70066 ContactExt extends Contact
{
    // version NAVW19.00.00.50221,B2B1.0,B2BQTO

    fields
    {

        //Unsupported feature: Change TableRelation on "City(Field 7)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "City(Field 7)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salesperson Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 35)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 38)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 38)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Modified"(Field 54)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 91)". Please convert manually.


        //Unsupported feature: Change Data type on ""E-Mail"(Field 102)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Company Name"(Field 5052)". Please convert manually.


        //Unsupported feature: Change Editable on ""Lookup Contact No."(Field 5053)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Next Task Date"(Field 5066)". Please convert manually.


        //Unsupported feature: Change Editable on ""Next Task Date"(Field 5066)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Last Date Attempted"(Field 5067)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Date Attempted"(Field 5067)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Date of Last Interaction"(Field 5068)". Please convert manually.


        //Unsupported feature: Change Editable on ""Date of Last Interaction"(Field 5068)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Job Responsibilities"(Field 5069)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Job Responsibilities"(Field 5069)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Industry Groups"(Field 5070)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Industry Groups"(Field 5070)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Business Relations"(Field 5071)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Business Relations"(Field 5071)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Mailing Groups"(Field 5072)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Mailing Groups"(Field 5072)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Interactions"(Field 5074)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Interactions"(Field 5074)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Cost (LCY)"(Field 5076)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost (LCY)"(Field 5076)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Duration (Min.)"(Field 5077)". Please convert manually.


        //Unsupported feature: Change Editable on ""Duration (Min.)"(Field 5077)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Opportunities"(Field 5078)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Opportunities"(Field 5078)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Estimated Value (LCY)"(Field 5079)". Please convert manually.


        //Unsupported feature: Change Editable on ""Estimated Value (LCY)"(Field 5079)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Calcd. Current Value (LCY)"(Field 5080)". Please convert manually.


        //Unsupported feature: Change Editable on ""Calcd. Current Value (LCY)"(Field 5080)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Opportunity Entry Exists"(Field 5082)". Please convert manually.


        //Unsupported feature: Change Editable on ""Opportunity Entry Exists"(Field 5082)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Task Entry Exists"(Field 5083)". Please convert manually.


        //Unsupported feature: Change Editable on ""Task Entry Exists"(Field 5083)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salesperson Filter"(Field 5084)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Action Taken Filter"(Field 5087)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sales Cycle Stage Filter"(Field 5089)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Task Status Filter"(Field 5095)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Correspondence Type"(Field 5100)". Please convert manually.


        //Unsupported feature: Change Data type on ""Search E-Mail"(Field 5102)". Please convert manually.


        //Unsupported feature: Change Data type on ""E-Mail 2"(Field 5105)". Please convert manually.


        //Unsupported feature: Change Editable on ""Xrm Id"(Field 8050)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 1).OnValidate". Please convert manually.

        //trigger "(Field 1)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> xRec."No." THEN BEGIN
          RMSetup.GET;
          NoSeriesMgt.TestManual(RMSetup."Contact Nos.");
          "No. Series" := '';
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> xRec."No." then begin
          RMSetup.Get;
          NoSeriesMgt.TestManual(RMSetup."Contact Nos.");
          "No. Series" := '';
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "City(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);

        OnAfterValidateCity(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);

        OnAfterValidateCity(Rec,xRec);
        */
        //end;


        //Unsupported feature: CodeModification on ""Country/Region Code"(Field 35).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.CheckClearPostCodeCityCounty(City,"Post Code",County,"Country/Region Code",xRec."Country/Region Code");

        IF "Country/Region Code" <> xRec."Country/Region Code" THEN
          VATRegistrationValidation;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.CheckClearPostCodeCityCounty(City,"Post Code",County,"Country/Region Code",xRec."Country/Region Code");

        if "Country/Region Code" <> xRec."Country/Region Code" then
          VATRegistrationValidation;
        */
        //end;


        //Unsupported feature: CodeModification on ""VAT Registration No."(Field 86).OnValidate". Please convert manually.

        //trigger "(Field 86)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "VAT Registration No." := UPPERCASE("VAT Registration No.");
        IF "VAT Registration No." <> xRec."VAT Registration No." THEN
          VATRegistrationValidation;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "VAT Registration No." := UpperCase("VAT Registration No.");
        if "VAT Registration No." <> xRec."VAT Registration No." then
          VATRegistrationValidation;
        */
        //end;


        //Unsupported feature: CodeModification on ""Post Code"(Field 91).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);

        OnAfterValidatePostCode(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);

        OnAfterValidatePostCode(Rec,xRec);
        */
        //end;


        //Unsupported feature: CodeModification on ""E-Mail"(Field 102).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "E-Mail" = '' THEN
          EXIT;
        MailManagement.CheckValidEmailAddresses("E-Mail");
        IF ("Search E-Mail" = UPPERCASE(xRec."E-Mail")) OR ("Search E-Mail" = '') THEN
          "Search E-Mail" := "E-Mail";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "E-Mail" = '' then
          exit;
        MailManagement.CheckValidEmailAddresses("E-Mail");
        if ("Search E-Mail" = UpperCase(xRec."E-Mail")) or ("Search E-Mail" = '') then
          "Search E-Mail" := "E-Mail";
        */
        //end;


        //Unsupported feature: CodeModification on ""Privacy Blocked"(Field 150).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT "Privacy Blocked" THEN
          IF Minor THEN
            IF NOT "Parental Consent Received" THEN
              ERROR(ParentalConsentReceivedErr,"No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not "Privacy Blocked" then
          if Minor then
            if not "Parental Consent Received" then
              Error(ParentalConsentReceivedErr,"No.");
        */
        //end;


        //Unsupported feature: CodeModification on "Minor(Field 151).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Minor THEN
          VALIDATE("Privacy Blocked",TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Minor then
          Validate("Privacy Blocked",true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Parental Consent Received"(Field 152).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Privacy Blocked",TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Privacy Blocked",true);
        */
        //end;


        //Unsupported feature: CodeModification on "Type(Field 5050).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (CurrFieldNo <> 0) AND ("No." <> '') THEN BEGIN
          TypeChange;
          MODIFY;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (CurrFieldNo <> 0) and ("No." <> '') then begin
          TypeChange;
          Modify;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Company No."(Field 5051).OnValidate". Please convert manually.

        //trigger "(Field 5051)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Cont.GET("Company No.") THEN
          InheritCompanyToPersonData(Cont)
        ELSE
          CLEAR("Company Name");

        IF "Company No." = xRec."Company No." THEN
          EXIT;

        TESTFIELD(Type,Type::Person);

        SegLine.SETRANGE("Contact No.","No.");
        IF NOT SegLine.ISEMPTY THEN
          ERROR(Text012,FIELDCAPTION("Company No."));

        IF Cont.GET("No.") THEN BEGIN
          IF xRec."Company No." <> '' THEN BEGIN
            Opp.SETCURRENTKEY("Contact Company No.","Contact No.");
            Opp.SETRANGE("Contact Company No.",xRec."Company No.");
            Opp.SETRANGE("Contact No.","No.");
            IF NOT Opp.ISEMPTY THEN
              Opp.MODIFYALL("Contact No.",xRec."Company No.");
            OppEntry.SETCURRENTKEY("Contact Company No.","Contact No.");
            OppEntry.SETRANGE("Contact Company No.",xRec."Company No.");
            OppEntry.SETRANGE("Contact No.","No.");
            IF NOT OppEntry.ISEMPTY THEN
              OppEntry.MODIFYALL("Contact No.",xRec."Company No.");
            Task.SETCURRENTKEY("Contact Company No.","Contact No.");
            Task.SETRANGE("Contact Company No.",xRec."Company No.");
            Task.SETRANGE("Contact No.","No.");
            IF NOT Task.ISEMPTY THEN
              Task.MODIFYALL("Contact No.",xRec."Company No.");
            InteractLogEntry.SETCURRENTKEY("Contact Company No.","Contact No.");
            InteractLogEntry.SETRANGE("Contact Company No.",xRec."Company No.");
            InteractLogEntry.SETRANGE("Contact No.","No.");
            IF NOT InteractLogEntry.ISEMPTY THEN
              InteractLogEntry.MODIFYALL("Contact No.",xRec."Company No.");
            ContBusRel.RESET;
            ContBusRel.SETCURRENTKEY("Link to Table","No.");
            ContBusRel.SETRANGE("Link to Table",ContBusRel."Link to Table"::Customer);
            ContBusRel.SETRANGE("Contact No.",xRec."Company No.");
            SalesHeader.SETCURRENTKEY("Sell-to Customer No.","External Document No.");
            SalesHeader.SETRANGE("Sell-to Contact No.","No.");
            IF ContBusRel.FINDFIRST THEN
              SalesHeader.SETRANGE("Sell-to Customer No.",ContBusRel."No.")
            ELSE
              SalesHeader.SETRANGE("Sell-to Customer No.",'');
            IF SalesHeader.FIND('-') THEN
              REPEAT
                SalesHeader."Sell-to Contact No." := xRec."Company No.";
                IF SalesHeader."Sell-to Contact No." = SalesHeader."Bill-to Contact No." THEN
                  SalesHeader."Bill-to Contact No." := xRec."Company No.";
                SalesHeader.MODIFY;
              UNTIL SalesHeader.NEXT = 0;
            SalesHeader.RESET;
            SalesHeader.SETCURRENTKEY("Bill-to Contact No.");
            SalesHeader.SETRANGE("Bill-to Contact No.","No.");
            IF NOT SalesHeader.ISEMPTY THEN
              SalesHeader.MODIFYALL("Bill-to Contact No.",xRec."Company No.");
          END ELSE BEGIN
            Opp.SETCURRENTKEY("Contact Company No.","Contact No.");
            Opp.SETRANGE("Contact Company No.",'');
            Opp.SETRANGE("Contact No.","No.");
            IF NOT Opp.ISEMPTY THEN
              Opp.MODIFYALL("Contact Company No.","Company No.");
            OppEntry.SETCURRENTKEY("Contact Company No.","Contact No.");
            OppEntry.SETRANGE("Contact Company No.",'');
            OppEntry.SETRANGE("Contact No.","No.");
            IF NOT OppEntry.ISEMPTY THEN
              OppEntry.MODIFYALL("Contact Company No.","Company No.");
            Task.SETCURRENTKEY("Contact Company No.","Contact No.");
            Task.SETRANGE("Contact Company No.",'');
            Task.SETRANGE("Contact No.","No.");
            IF NOT Task.ISEMPTY THEN
              Task.MODIFYALL("Contact Company No.","Company No.");
            InteractLogEntry.SETCURRENTKEY("Contact Company No.","Contact No.");
            InteractLogEntry.SETRANGE("Contact Company No.",'');
            InteractLogEntry.SETRANGE("Contact No.","No.");
            IF NOT InteractLogEntry.ISEMPTY THEN
              InteractLogEntry.MODIFYALL("Contact Company No.","Company No.");
          END;

          IF CurrFieldNo <> 0 THEN
            MODIFY;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Cont.Get("Company No.") then
          InheritCompanyToPersonData(Cont)
        else
          Clear("Company Name");

        if "Company No." = xRec."Company No." then
          exit;

        TestField(Type,Type::Person);

        SegLine.SetRange("Contact No.","No.");
        if not SegLine.IsEmpty then
          Error(Text012,FieldCaption("Company No."));

        if Cont.Get("No.") then begin
          if xRec."Company No." <> '' then begin
            Opp.SetCurrentKey("Contact Company No.","Contact No.");
            Opp.SetRange("Contact Company No.",xRec."Company No.");
            Opp.SetRange("Contact No.","No.");
            if not Opp.IsEmpty then
              Opp.ModifyAll("Contact No.",xRec."Company No.");
            OppEntry.SetCurrentKey("Contact Company No.","Contact No.");
            OppEntry.SetRange("Contact Company No.",xRec."Company No.");
            OppEntry.SetRange("Contact No.","No.");
            if not OppEntry.IsEmpty then
              OppEntry.ModifyAll("Contact No.",xRec."Company No.");
            Task.SetCurrentKey("Contact Company No.","Contact No.");
            Task.SetRange("Contact Company No.",xRec."Company No.");
            Task.SetRange("Contact No.","No.");
            if not Task.IsEmpty then
              Task.ModifyAll("Contact No.",xRec."Company No.");
            InteractLogEntry.SetCurrentKey("Contact Company No.","Contact No.");
            InteractLogEntry.SetRange("Contact Company No.",xRec."Company No.");
            InteractLogEntry.SetRange("Contact No.","No.");
            if not InteractLogEntry.IsEmpty then
              InteractLogEntry.ModifyAll("Contact No.",xRec."Company No.");
            ContBusRel.Reset;
            ContBusRel.SetCurrentKey("Link to Table","No.");
            ContBusRel.SetRange("Link to Table",ContBusRel."Link to Table"::Customer);
            ContBusRel.SetRange("Contact No.",xRec."Company No.");
            SalesHeader.SetCurrentKey("Sell-to Customer No.","External Document No.");
            SalesHeader.SetRange("Sell-to Contact No.","No.");
            if ContBusRel.FindFirst then
              SalesHeader.SetRange("Sell-to Customer No.",ContBusRel."No.")
            else
              SalesHeader.SetRange("Sell-to Customer No.",'');
            if SalesHeader.Find('-') then
              repeat
                SalesHeader."Sell-to Contact No." := xRec."Company No.";
                if SalesHeader."Sell-to Contact No." = SalesHeader."Bill-to Contact No." then
                  SalesHeader."Bill-to Contact No." := xRec."Company No.";
                SalesHeader.Modify;
              until SalesHeader.Next = 0;
            SalesHeader.Reset;
            SalesHeader.SetCurrentKey("Bill-to Contact No.");
            SalesHeader.SetRange("Bill-to Contact No.","No.");
            if not SalesHeader.IsEmpty then
              SalesHeader.ModifyAll("Bill-to Contact No.",xRec."Company No.");
          end else begin
            Opp.SetCurrentKey("Contact Company No.","Contact No.");
            Opp.SetRange("Contact Company No.",'');
            Opp.SetRange("Contact No.","No.");
            if not Opp.IsEmpty then
              Opp.ModifyAll("Contact Company No.","Company No.");
            OppEntry.SetCurrentKey("Contact Company No.","Contact No.");
            OppEntry.SetRange("Contact Company No.",'');
            OppEntry.SetRange("Contact No.","No.");
            if not OppEntry.IsEmpty then
              OppEntry.ModifyAll("Contact Company No.","Company No.");
            Task.SetCurrentKey("Contact Company No.","Contact No.");
            Task.SetRange("Contact Company No.",'');
            Task.SetRange("Contact No.","No.");
            if not Task.IsEmpty then
              Task.ModifyAll("Contact Company No.","Company No.");
            InteractLogEntry.SetCurrentKey("Contact Company No.","Contact No.");
            InteractLogEntry.SetRange("Contact Company No.",'');
            InteractLogEntry.SetRange("Contact No.","No.");
            if not InteractLogEntry.IsEmpty then
              InteractLogEntry.ModifyAll("Contact Company No.","Company No.");
          end;

          if CurrFieldNo <> 0 then
            Modify;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Company Name"(Field 5052).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Company No.",GetCompNo("Company Name"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Company No.",GetCompNo("Company Name"));
        */
        //end;


        //Unsupported feature: CodeModification on ""Lookup Contact No."(Field 5053).OnValidate". Please convert manually.

        //trigger "(Field 5053)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Company THEN
          "Lookup Contact No." := ''
        ELSE
          "Lookup Contact No." := "No.";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Company then
          "Lookup Contact No." := ''
        else
          "Lookup Contact No." := "No.";
        */
        //end;
        field(60001; "Contact Status"; Code[50])
        {
            Description = 'B2B';

            trigger OnValidate();
            var
                Status: Record Status;
            begin
                if xRec."Contact Status" <> "Contact Status" then begin
                    Status.SetRange(Code, xRec."Contact Status");
                    if Status.Find('-') then begin
                        Status."Status Modified Date" := WorkDate;
                        Status.Modify;
                    end;
                end;
            end;
        }
        field(60002; "Initiated By"; Option)
        {
            Description = 'B2B';
            OptionMembers = Us,Them;
        }
        field(60003; Territory; Code[10])
        {
            Description = 'B2B';
            TableRelation = Territory;
        }
        field(60004; "Enquiry Type"; Option)
        {
            Description = 'B2B';
            OptionMembers = " ",Customized,Standard;
        }
        field(60005; "Govt./Private"; Option)
        {
            Description = 'B2B';
            OptionMembers = " ","Govt.",Private;
        }
        field(60006; "Domestic/Foreign"; Option)
        {
            Description = 'B2B';
            OptionMembers = " ",Domestic,Foreign;
        }
        field(60007; "Product Type"; Option)
        {
            Description = 'B2B';
            OptionMembers = " ","Data Logger","Display Board";
        }
        field(60008; "Product Category Code"; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Item Category";

            trigger OnValidate();
            begin
                if "Product Category Code" = '' then
                    "Product Code" := '';
            end;
        }
        field(60009; "Product Code"; Code[20])
        {
            Description = 'B2B';
            TableRelation = Item WHERE("Item Category Code" = FIELD("Product Category Code"));

            trigger OnValidate();
            var
                Item: Record Item;
            begin
            end;
        }
        field(60020; "Make A Quote"; Boolean)
        {
            Description = 'B2BQTO';
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search Name"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Company Name,Company No.,Type,Name"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Company No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Territory Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Salesperson Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""VAT Registration No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search E-Mail"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Post Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Phone No."(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Search Name")
        {
        }
        key(Key3; "Company Name", "Company No.", Type, Name)
        {
        }
        key(Key4; "Company No.")
        {
        }
        key(Key5; "Territory Code")
        {
        }
        key(Key6; "Salesperson Code")
        {
        }
        key(Key7; "VAT Registration No.")
        {
        }
        key(Key8; "Search E-Mail")
        {
        }
        key(Key9; "Post Code")
        {
        }
        key(Key10; "Phone No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Task.SETCURRENTKEY("Contact Company No.","Contact No.",Closed,Date);
    Task.SETRANGE("Contact Company No.","Company No.");
    Task.SETRANGE("Contact No.","No.");
    Task.SETRANGE(Closed,FALSE);
    IF Task.FIND('-') THEN
      ERROR(CannotDeleteWithOpenTasksErr,"No.");

    SegLine.SETRANGE("Contact No.","No.");
    IF NOT SegLine.ISEMPTY THEN
      ERROR(Text001,TABLECAPTION,"No.");

    Opp.SETCURRENTKEY("Contact Company No.","Contact No.");
    Opp.SETRANGE("Contact Company No.","Company No.");
    Opp.SETRANGE("Contact No.","No.");
    Opp.SETRANGE(Status,Opp.Status::"Not Started",Opp.Status::"In Progress");
    IF Opp.FIND('-') THEN
      ERROR(Text002,TABLECAPTION,"No.");

    ContBusRel.SETRANGE("Contact No.","No.");
    ContBusRel.DELETEALL;
    CASE Type OF
      Type::Company:
        BEGIN
          ContIndustGrp.SETRANGE("Contact No.","No.");
          ContIndustGrp.DELETEALL;
          ContactWebSource.SETRANGE("Contact No.","No.");
          ContactWebSource.DELETEALL;
          DuplMgt.RemoveContIndex(Rec,FALSE);
          InteractLogEntry.SETCURRENTKEY("Contact Company No.");
          InteractLogEntry.SETRANGE("Contact Company No.","No.");
          IF InteractLogEntry.FIND('-') THEN
            REPEAT
              CampaignTargetGrMgt.DeleteContfromTargetGr(InteractLogEntry);
              CLEAR(InteractLogEntry."Contact Company No.");
              CLEAR(InteractLogEntry."Contact No.");
              InteractLogEntry.MODIFY;
            UNTIL InteractLogEntry.NEXT = 0;

          Cont.RESET;
          Cont.SETCURRENTKEY("Company No.");
          Cont.SETRANGE("Company No.","No.");
          Cont.SETRANGE(Type,Type::Person);
          IF Cont.FIND('-') THEN
            REPEAT
              Cont.DELETE(TRUE);
            UNTIL Cont.NEXT = 0;

          Opp.RESET;
          Opp.SETCURRENTKEY("Contact Company No.","Contact No.");
          Opp.SETRANGE("Contact Company No.","Company No.");
          Opp.SETRANGE("Contact No.","No.");
          IF Opp.FIND('-') THEN
            REPEAT
              CLEAR(Opp."Contact No.");
              CLEAR(Opp."Contact Company No.");
              Opp.MODIFY;
            UNTIL Opp.NEXT = 0;

          Task.RESET;
          Task.SETCURRENTKEY("Contact Company No.");
          Task.SETRANGE("Contact Company No.","Company No.");
          IF Task.FIND('-') THEN
            REPEAT
              CLEAR(Task."Contact No.");
              CLEAR(Task."Contact Company No.");
              Task.MODIFY;
            UNTIL Task.NEXT = 0;
        END;
      Type::Person:
        BEGIN
          ContJobResp.SETRANGE("Contact No.","No.");
          IF NOT ContJobResp.ISEMPTY THEN
            ContJobResp.DELETEALL;

          InteractLogEntry.SETCURRENTKEY("Contact Company No.","Contact No.");
          InteractLogEntry.SETRANGE("Contact Company No.","Company No.");
          InteractLogEntry.SETRANGE("Contact No.","No.");
          IF NOT InteractLogEntry.ISEMPTY THEN
            InteractLogEntry.MODIFYALL("Contact No.","Company No.");

          Opp.RESET;
          Opp.SETCURRENTKEY("Contact Company No.","Contact No.");
          Opp.SETRANGE("Contact Company No.","Company No.");
          Opp.SETRANGE("Contact No.","No.");
          IF NOT Opp.ISEMPTY THEN
            Opp.MODIFYALL("Contact No.","Company No.");

          Task.RESET;
          Task.SETCURRENTKEY("Contact Company No.","Contact No.");
          Task.SETRANGE("Contact Company No.","Company No.");
          Task.SETRANGE("Contact No.","No.");
          IF NOT Task.ISEMPTY THEN
            Task.MODIFYALL("Contact No.","Company No.");
        END;
    END;

    ContMailingGrp.SETRANGE("Contact No.","No.");
    IF NOT ContMailingGrp.ISEMPTY THEN
      ContMailingGrp.DELETEALL;

    ContProfileAnswer.SETRANGE("Contact No.","No.");
    IF NOT ContProfileAnswer.ISEMPTY THEN
      ContProfileAnswer.DELETEALL;

    RMCommentLine.SETRANGE("Table Name",RMCommentLine."Table Name"::Contact);
    RMCommentLine.SETRANGE("No.","No.");
    RMCommentLine.SETRANGE("Sub No.",0);
    IF NOT RMCommentLine.ISEMPTY THEN
      RMCommentLine.DELETEALL;

    ContAltAddr.SETRANGE("Contact No.","No.");
    IF NOT ContAltAddr.ISEMPTY THEN
      ContAltAddr.DELETEALL;

    ContAltAddrDateRange.SETRANGE("Contact No.","No.");
    IF NOT ContAltAddrDateRange.ISEMPTY THEN
      ContAltAddrDateRange.DELETEALL;

    VATRegistrationLogMgt.DeleteContactLog(Rec);

    IntrastatSetup.CheckDeleteIntrastatContact(IntrastatSetup."Intrastat Contact Type"::Contact,"No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Task.SetCurrentKey("Contact Company No.","Contact No.",Closed,Date);
    Task.SetRange("Contact Company No.","Company No.");
    Task.SetRange("Contact No.","No.");
    Task.SetRange(Closed,false);
    if Task.Find('-') then
      Error(CannotDeleteWithOpenTasksErr,"No.");

    SegLine.SetRange("Contact No.","No.");
    if not SegLine.IsEmpty then
      Error(Text001,TableCaption,"No.");

    Opp.SetCurrentKey("Contact Company No.","Contact No.");
    Opp.SetRange("Contact Company No.","Company No.");
    Opp.SetRange("Contact No.","No.");
    Opp.SetRange(Status,Opp.Status::"Not Started",Opp.Status::"In Progress");
    if Opp.Find('-') then
      Error(Text002,TableCaption,"No.");

    ContBusRel.SetRange("Contact No.","No.");
    ContBusRel.DeleteAll;
    case Type of
      Type::Company:
        begin
          ContIndustGrp.SetRange("Contact No.","No.");
          ContIndustGrp.DeleteAll;
          ContactWebSource.SetRange("Contact No.","No.");
          ContactWebSource.DeleteAll;
          DuplMgt.RemoveContIndex(Rec,false);
          InteractLogEntry.SetCurrentKey("Contact Company No.");
          InteractLogEntry.SetRange("Contact Company No.","No.");
          if InteractLogEntry.Find('-') then
            repeat
              CampaignTargetGrMgt.DeleteContfromTargetGr(InteractLogEntry);
              Clear(InteractLogEntry."Contact Company No.");
              Clear(InteractLogEntry."Contact No.");
              InteractLogEntry.Modify;
            until InteractLogEntry.Next = 0;

          Cont.Reset;
          Cont.SetCurrentKey("Company No.");
          Cont.SetRange("Company No.","No.");
          Cont.SetRange(Type,Type::Person);
          if Cont.Find('-') then
            repeat
              Cont.Delete(true);
            until Cont.Next = 0;

          Opp.Reset;
          Opp.SetCurrentKey("Contact Company No.","Contact No.");
          Opp.SetRange("Contact Company No.","Company No.");
          Opp.SetRange("Contact No.","No.");
          if Opp.Find('-') then
            repeat
              Clear(Opp."Contact No.");
              Clear(Opp."Contact Company No.");
              Opp.Modify;
            until Opp.Next = 0;

          Task.Reset;
          Task.SetCurrentKey("Contact Company No.");
          Task.SetRange("Contact Company No.","Company No.");
          if Task.Find('-') then
            repeat
              Clear(Task."Contact No.");
              Clear(Task."Contact Company No.");
              Task.Modify;
            until Task.Next = 0;
        end;
      Type::Person:
        begin
          ContJobResp.SetRange("Contact No.","No.");
          if not ContJobResp.IsEmpty then
            ContJobResp.DeleteAll;

          InteractLogEntry.SetCurrentKey("Contact Company No.","Contact No.");
          InteractLogEntry.SetRange("Contact Company No.","Company No.");
          InteractLogEntry.SetRange("Contact No.","No.");
          if not InteractLogEntry.IsEmpty then
            InteractLogEntry.ModifyAll("Contact No.","Company No.");

          Opp.Reset;
          Opp.SetCurrentKey("Contact Company No.","Contact No.");
          Opp.SetRange("Contact Company No.","Company No.");
          Opp.SetRange("Contact No.","No.");
          if not Opp.IsEmpty then
            Opp.ModifyAll("Contact No.","Company No.");

          Task.Reset;
          Task.SetCurrentKey("Contact Company No.","Contact No.");
          Task.SetRange("Contact Company No.","Company No.");
          Task.SetRange("Contact No.","No.");
          if not Task.IsEmpty then
            Task.ModifyAll("Contact No.","Company No.");
        end;
    end;

    ContMailingGrp.SetRange("Contact No.","No.");
    if not ContMailingGrp.IsEmpty then
      ContMailingGrp.DeleteAll;

    ContProfileAnswer.SetRange("Contact No.","No.");
    if not ContProfileAnswer.IsEmpty then
      ContProfileAnswer.DeleteAll;

    RMCommentLine.SetRange("Table Name",RMCommentLine."Table Name"::Contact);
    RMCommentLine.SetRange("No.","No.");
    RMCommentLine.SetRange("Sub No.",0);
    if not RMCommentLine.IsEmpty then
      RMCommentLine.DeleteAll;

    ContAltAddr.SetRange("Contact No.","No.");
    if not ContAltAddr.IsEmpty then
      ContAltAddr.DeleteAll;

    ContAltAddrDateRange.SetRange("Contact No.","No.");
    if not ContAltAddrDateRange.IsEmpty then
      ContAltAddrDateRange.DeleteAll;
    #118..120
    IntrastatSetup.CheckDeleteIntrastatContact(IntrastatSetup."Intrastat Contact Type"::"1","No.");
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    RMSetup.GET;

    IF "No." = '' THEN BEGIN
      RMSetup.TESTFIELD("Contact Nos.");
      NoSeriesMgt.InitSeries(RMSetup."Contact Nos.",xRec."No. Series",0D,"No.","No. Series");
    END;

    IF NOT SkipDefaults THEN BEGIN
      IF "Salesperson Code" = '' THEN BEGIN
        "Salesperson Code" := RMSetup."Default Salesperson Code";
        SetDefaultSalesperson;
      END;
      IF "Territory Code" = '' THEN
        "Territory Code" := RMSetup."Default Territory Code";
      IF "Country/Region Code" = '' THEN
        "Country/Region Code" := RMSetup."Default Country/Region Code";
      IF "Language Code" = '' THEN
        "Language Code" := RMSetup."Default Language Code";
      IF "Correspondence Type" = "Correspondence Type"::" " THEN
        "Correspondence Type" := RMSetup."Default Correspondence Type";
      IF "Salutation Code" = '' THEN
        IF Type = Type::Company THEN
          "Salutation Code" := RMSetup."Def. Company Salutation Code"
        ELSE
          "Salutation Code" := RMSetup."Default Person Salutation Code";
      OnAfterSetDefaults(Rec,RMSetup);
    END;

    TypeChange;
    SetLastDateTimeModified;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    RMSetup.Get;

    if "No." = '' then begin
      RMSetup.TestField("Contact Nos.");
      NoSeriesMgt.InitSeries(RMSetup."Contact Nos.",xRec."No. Series",0D,"No.","No. Series");
    end;

    if not SkipDefaults then begin
      if "Salesperson Code" = '' then begin
        "Salesperson Code" := RMSetup."Default Salesperson Code";
        SetDefaultSalesperson;
      end;
      if "Territory Code" = '' then
        "Territory Code" := RMSetup."Default Territory Code";
      if "Country/Region Code" = '' then
        "Country/Region Code" := RMSetup."Default Country/Region Code";
      if "Language Code" = '' then
        "Language Code" := RMSetup."Default Language Code";
      if "Correspondence Type" = "Correspondence Type"::" " then
        "Correspondence Type" := RMSetup."Default Correspondence Type";
      if "Salutation Code" = '' then
        if Type = Type::Company then
          "Salutation Code" := RMSetup."Def. Company Salutation Code"
        else
          "Salutation Code" := RMSetup."Default Person Salutation Code";
      OnAfterSetDefaults(Rec,RMSetup);
    end;
    #28..30
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    // If the modify is called from code, Rec and xRec are the same,
    // so find the xRec
    IF FORMAT(xRec) = FORMAT(Rec) THEN
      xRec.FIND;
    OnModify(xRec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    // If the modify is called from code, Rec and xRec are the same,
    // so find the xRec
    if Format(xRec) = Format(Rec) then
      xRec.Find;
    OnModify(xRec);
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    VALIDATE("Lookup Contact No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Validate("Lookup Contact No.");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""E-Mail"(Field 102).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Company No."(Field 5051).OnValidate.Opp(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Company No." : 5092;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Company No." : Opportunity;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Company No."(Field 5051).OnValidate.OppEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Company No." : 5093;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Company No." : "Opportunity Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Company No."(Field 5051).OnValidate.Task(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Company No." : 5080;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Company No." : "To-do";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Company No."(Field 5051).OnValidate.InteractLogEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Company No." : 5065;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Company No." : "Interaction Log Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Company No."(Field 5051).OnValidate.SegLine(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Company No." : 5077;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Company No." : "Segment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Company No."(Field 5051).OnValidate.SalesHeader(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Company No." : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Company No." : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Company No."(Field 5051).OnValidate.Cont(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Company No." : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Company No." : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Company No."(Field 5051).OnValidate.ContBusRel(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Company No." : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Company No." : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""E-Mail 2"(Field 5105).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail 2" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail 2" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.Task(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Task : 5080;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Task : "To-do";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.SegLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.SegLine : 5077;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.SegLine : "Segment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ContIndustGrp(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ContIndustGrp : 5058;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ContIndustGrp : "Contact Industry Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ContactWebSource(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ContactWebSource : 5060;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ContactWebSource : "Contact Web Source";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ContJobResp(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ContJobResp : 5067;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ContJobResp : "Contact Job Responsibility";
    //Variable type has not been exported.


    //Unsupported feature: CodeModification on "OnDelete.ContMailingGrp(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ContMailingGrp : 5056;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ContMailingGrp : "Contact Mailing Group";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ContProfileAnswer(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ContProfileAnswer : 5089;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ContProfileAnswer : "Contact Profile Answer";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.RMCommentLine(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.RMCommentLine : 5061;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.RMCommentLine : "Rlshp. Mgt. Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ContAltAddr(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ContAltAddr : 5051;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ContAltAddr : "Contact Alt. Address";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ContAltAddrDateRange(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ContAltAddrDateRange : 5052;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ContAltAddrDateRange : "Contact Alt. Addr. Date Range";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.InteractLogEntry(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.InteractLogEntry : 5065;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.InteractLogEntry : "Interaction Log Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.Opp(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Opp : 5092;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Opp : Opportunity;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.Cont(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Cont : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Cont : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ContBusRel(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ContBusRel : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ContBusRel : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.IntrastatSetup(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.IntrastatSetup : 247;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.IntrastatSetup : Table247;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.CampaignTargetGrMgt(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.CampaignTargetGrMgt : 7030;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.CampaignTargetGrMgt : "Campaign Target Group Mgt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.VATRegistrationLogMgt(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.VATRegistrationLogMgt : 249;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.VATRegistrationLogMgt : "VAT Registration Log Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnModify(PROCEDURE 4).OldCont(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnModify : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnModify : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnModify(PROCEDURE 4).Cont(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnModify : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnModify : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TypeChange(PROCEDURE 1).InteractLogEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TypeChange : 5065;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TypeChange : "Interaction Log Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TypeChange(PROCEDURE 1).Opp(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TypeChange : 5092;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TypeChange : Opportunity;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TypeChange(PROCEDURE 1).Task(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TypeChange : 5080;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TypeChange : "To-do";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TypeChange(PROCEDURE 1).Cont(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TypeChange : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TypeChange : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TypeChange(PROCEDURE 1).CampaignTargetGrMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TypeChange : 7030;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TypeChange : "Campaign Target Group Mgt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssistEdit(PROCEDURE 2).Cont(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssistEdit : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssistEdit : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateCustomer(PROCEDURE 3).Cust(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateCustomer : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateCustomer : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateCustomer(PROCEDURE 3).CustTemplate(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateCustomer : 5105;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateCustomer : "Customer Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateCustomer(PROCEDURE 3).DefaultDim(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateCustomer : 352;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateCustomer : "Default Dimension";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateCustomer(PROCEDURE 3).DefaultDim2(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateCustomer : 352;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateCustomer : "Default Dimension";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateCustomer(PROCEDURE 3).ContBusRel(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateCustomer : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateCustomer : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateCustomer(PROCEDURE 3).OfficeMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateCustomer : 1630;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateCustomer : "Office Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateVendor(PROCEDURE 7).ContBusRel(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateVendor : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateVendor : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateVendor(PROCEDURE 7).Vend(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateVendor : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateVendor : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateVendor(PROCEDURE 7).ContComp(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateVendor : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateVendor : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateVendor(PROCEDURE 7).OfficeMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateVendor : 1630;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateVendor : "Office Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateBankAccount(PROCEDURE 8).BankAcc(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateBankAccount : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateBankAccount : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateBankAccount(PROCEDURE 8).ContComp(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateBankAccount : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateBankAccount : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateBankAccount(PROCEDURE 8).ContBusRel(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateBankAccount : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateBankAccount : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateCustomerLink(PROCEDURE 5).Cust(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateCustomerLink : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateCustomerLink : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateCustomerLink(PROCEDURE 5).ContBusRel(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateCustomerLink : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateCustomerLink : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateVendorLink(PROCEDURE 6).ContBusRel(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateVendorLink : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateVendorLink : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateBankAccountLink(PROCEDURE 9).ContBusRel(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateBankAccountLink : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateBankAccountLink : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateLink(PROCEDURE 11).TempContBusRel(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateLink : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateLink : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInteraction(PROCEDURE 10).TempSegmentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInteraction : 5077;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInteraction : "Segment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultPhoneNo(PROCEDURE 31).ClientTypeManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultPhoneNo : 4030;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultPhoneNo : "Client Type Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowCustVendBank(PROCEDURE 12).ContBusRel(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowCustVendBank : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowCustVendBank : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowCustVendBank(PROCEDURE 12).Cust(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowCustVendBank : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowCustVendBank : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowCustVendBank(PROCEDURE 12).Vend(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowCustVendBank : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowCustVendBank : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowCustVendBank(PROCEDURE 12).BankAcc(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowCustVendBank : 270;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowCustVendBank : "Bank Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ActiveAltAddress(PROCEDURE 17).ContAltAddrDateRange(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ActiveAltAddress : 5052;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ActiveAltAddress : "Contact Alt. Addr. Date Range";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindCustomerTemplate(PROCEDURE 23).CustTemplate(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindCustomerTemplate : 5105;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindCustomerTemplate : "Customer Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FindCustomerTemplate(PROCEDURE 23).ContCompany(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FindCustomerTemplate : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FindCustomerTemplate : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ChooseCustomerTemplate(PROCEDURE 27).CustTemplate(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ChooseCustomerTemplate : 5105;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ChooseCustomerTemplate : "Customer Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ChooseCustomerTemplate(PROCEDURE 27).ContBusRel(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ChooseCustomerTemplate : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ChooseCustomerTemplate : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateQuotes(PROCEDURE 29).SalesHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateQuotes : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateQuotes : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateQuotes(PROCEDURE 29).SalesHeader2(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateQuotes : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateQuotes : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateQuotes(PROCEDURE 29).Cont(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateQuotes : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateQuotes : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateQuotes(PROCEDURE 29).SalesLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateQuotes : 37;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateQuotes : "Sales Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateQuotes(PROCEDURE 29).TempErrorMessage(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateQuotes : 700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateQuotes : "Error Message";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateQuotes(PROCEDURE 29).ConfirmManagement(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateQuotes : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateQuotes : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetSalutation(PROCEDURE 18).SalutationFormula(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetSalutation : 5069;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetSalutation : "Salutation Formula";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StaleAddress(PROCEDURE 33).OldCompanyContact(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StaleAddress : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StaleAddress : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StaleAddress(PROCEDURE 33).DummyContact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StaleAddress : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StaleAddress : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateFieldForNewCompany(PROCEDURE 34).OldCompanyContact(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateFieldForNewCompany : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateFieldForNewCompany : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateFieldForNewCompany(PROCEDURE 34).NewCompanyContact(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateFieldForNewCompany : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateFieldForNewCompany : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetHideValidationDialog(PROCEDURE 123).IdentityManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetHideValidationDialog : 9801;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetHideValidationDialog : "Identity Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisplayMap(PROCEDURE 36).MapPoint(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayMap : 800;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayMap : "Online Map Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisplayMap(PROCEDURE 36).MapMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayMap : 802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayMap : "Online Map Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProcessNameChange(PROCEDURE 37).ContBusRel(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProcessNameChange : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProcessNameChange : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProcessNameChange(PROCEDURE 37).Cust(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProcessNameChange : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProcessNameChange : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProcessNameChange(PROCEDURE 37).Vend(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProcessNameChange : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProcessNameChange : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCompNo(PROCEDURE 19).Contact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCompNo : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCompNo : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectContact(PROCEDURE 51).ContactList(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectContact : 5052;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectContact : "Contact List";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupCompany(PROCEDURE 25).Contact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupCompany : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupCompany : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupCompany(PROCEDURE 25).CompanyDetails(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupCompany : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupCompany : "Company Details";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupCustomerTemplate(PROCEDURE 53).CustomerTemplate(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupCustomerTemplate : 5105;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupCustomerTemplate : "Customer Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupCustomerTemplate(PROCEDURE 53).CustomerTemplateList(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupCustomerTemplate : 5156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupCustomerTemplate : "Customer Template List";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckForExistingRelationships(PROCEDURE 20).Contact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckForExistingRelationships : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckForExistingRelationships : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckForExistingRelationships(PROCEDURE 20).ContBusRel(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckForExistingRelationships : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckForExistingRelationships : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetTimeZoneOffset(PROCEDURE 77).TypeHelper(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetTimeZoneOffset : 10;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetTimeZoneOffset : "Type Helper";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetTimeZoneOffset(PROCEDURE 77)."DotNet_DateTimeOffset"(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetTimeZoneOffset : 3006;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetTimeZoneOffset : DotNet_DateTimeOffset;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetLastDateTimeFilter(PROCEDURE 30)."DotNet_DateTimeOffset"(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetLastDateTimeFilter : 3006;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetLastDateTimeFilter : DotNet_DateTimeOffset;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TouchContact(PROCEDURE 32).Cont(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TouchContact : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TouchContact : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CountNoOfBusinessRelations(PROCEDURE 35).ContactBusinessRelation(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CountNoOfBusinessRelations : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CountNoOfBusinessRelations : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateSalesQuoteFromContact(PROCEDURE 38).SalesHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateSalesQuoteFromContact : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateSalesQuoteFromContact : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ContactToCustBusinessRelationExist(PROCEDURE 44).ContBusRel(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ContactToCustBusinessRelationExist : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ContactToCustBusinessRelationExist : "Contact Business Relation";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetDefaultSalesperson(PROCEDURE 39).UserSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetDefaultSalesperson : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetDefaultSalesperson : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VATRegistrationValidation(PROCEDURE 41).VATRegistrationNoFormat(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VATRegistrationValidation : 381;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VATRegistrationValidation : "VAT Registration No. Format";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VATRegistrationValidation(PROCEDURE 41).VATRegistrationLog(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VATRegistrationValidation : 249;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VATRegistrationValidation : "VAT Registration Log";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VATRegistrationValidation(PROCEDURE 41).VATRegNoSrvConfig(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VATRegistrationValidation : 248;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VATRegistrationValidation : "VAT Reg. No. Srv Config";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "VATRegistrationValidation(PROCEDURE 41).VATRegistrationLogMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //VATRegistrationValidation : 249;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //VATRegistrationValidation : "VAT Registration Log Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetContNo(PROCEDURE 45).Contact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetContNo : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetContNo : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "MarkContactsWithSimilarName(PROCEDURE 46).TypeHelper(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //MarkContactsWithSimilarName : 10;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MarkContactsWithSimilarName : "Type Helper";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RMSetup(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RMSetup : 5079;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RMSetup : "Marketing Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Salesperson(Variable 1927)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Salesperson : 13;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Salesperson : "Salesperson/Purchaser";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1028)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DuplMgt(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DuplMgt : 5060;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DuplMgt : DuplicateManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateCustVendBank(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateCustVendBank : 5055;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateCustVendBank : "CustVendBank-Update";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CampaignMgt(Variable 1050)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CampaignMgt : 7030;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CampaignMgt : "Campaign Target Group Mgt";
    //Variable type has not been exported.
}

