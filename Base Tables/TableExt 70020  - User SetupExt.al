tableextension 70020 UserSetupExt extends "User Setup"
{
    // version NAVW19.00.00.50458,UserId

    fields
    {

        //Unsupported feature: Change ValidateTableRelation on ""User ID"(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""User ID"(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salespers./Purch. Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Sales Amount Approval Limit"(Field 12)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Purchase Amount Approval Limit"(Field 13)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Request Amount Approval Limit"(Field 19)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""License Type"(Field 31)". Please convert manually.


        //Unsupported feature: Change OptionString on ""License Type"(Field 31)". Please convert manually.


        //Unsupported feature: CodeModification on ""Salespers./Purch. Code"(Field 10).OnValidate". Please convert manually.

        //trigger /Purch();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Salespers./Purch. Code" <> '' THEN BEGIN
          ValidateSalesPersonPurchOnUserSetup(Rec);
          UserSetup.SETCURRENTKEY("Salespers./Purch. Code");
          UserSetup.SETRANGE("Salespers./Purch. Code","Salespers./Purch. Code");
          IF UserSetup.FINDFIRST THEN
            ERROR(Text001,"Salespers./Purch. Code",UserSetup."User ID");
          UpdateSalesPerson;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Salespers./Purch. Code" <> '' then begin
          ValidateSalesPersonPurchOnUserSetup(Rec);
          UserSetup.SetCurrentKey("Salespers./Purch. Code");
          UserSetup.SetRange("Salespers./Purch. Code","Salespers./Purch. Code");
          if UserSetup.FindFirst then
            Error(Text001,"Salespers./Purch. Code",UserSetup."User ID");
          UpdateSalesPerson;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Approver ID"(Field 11).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UserSetup.SETFILTER("User ID",'<>%1',"User ID");
        IF PAGE.RUNMODAL(PAGE::"Approval User Setup",UserSetup) = ACTION::LookupOK THEN
          VALIDATE("Approver ID",UserSetup."User ID");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UserSetup.SetFilter("User ID",'<>%1',"User ID");
        if PAGE.RunModal(PAGE::"Approval User Setup",UserSetup) = ACTION::LookupOK then
          Validate("Approver ID",UserSetup."User ID");
        */
        //end;


        //Unsupported feature: CodeModification on ""Approver ID"(Field 11).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Approver ID" = "User ID" THEN
          FIELDERROR("Approver ID");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Approver ID" = "User ID" then
          FieldError("Approver ID");
        */
        //end;


        //Unsupported feature: CodeModification on ""Sales Amount Approval Limit"(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Unlimited Sales Approval" AND ("Sales Amount Approval Limit" <> 0) THEN
          ERROR(Text003,FIELDCAPTION("Sales Amount Approval Limit"),FIELDCAPTION("Unlimited Sales Approval"));
        IF "Sales Amount Approval Limit" < 0 THEN
          ERROR(Text005);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Unlimited Sales Approval" and ("Sales Amount Approval Limit" <> 0) then
          Error(Text003,FieldCaption("Sales Amount Approval Limit"),FieldCaption("Unlimited Sales Approval"));
        if "Sales Amount Approval Limit" < 0 then
          Error(Text005);
        */
        //end;


        //Unsupported feature: CodeModification on ""Purchase Amount Approval Limit"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Unlimited Purchase Approval" AND ("Purchase Amount Approval Limit" <> 0) THEN
          ERROR(Text003,FIELDCAPTION("Purchase Amount Approval Limit"),FIELDCAPTION("Unlimited Purchase Approval"));
        IF "Purchase Amount Approval Limit" < 0 THEN
          ERROR(Text005);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Unlimited Purchase Approval" and ("Purchase Amount Approval Limit" <> 0) then
          Error(Text003,FieldCaption("Purchase Amount Approval Limit"),FieldCaption("Unlimited Purchase Approval"));
        if "Purchase Amount Approval Limit" < 0 then
          Error(Text005);
        */
        //end;


        //Unsupported feature: CodeModification on ""Unlimited Sales Approval"(Field 14).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Unlimited Sales Approval" THEN
          "Sales Amount Approval Limit" := 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Unlimited Sales Approval" then
          "Sales Amount Approval Limit" := 0;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unlimited Purchase Approval"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Unlimited Purchase Approval" THEN
          "Purchase Amount Approval Limit" := 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Unlimited Purchase Approval" then
          "Purchase Amount Approval Limit" := 0;
        */
        //end;


        //Unsupported feature: CodeModification on "Substitute(Field 16).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        UserSetup.SETFILTER("User ID",'<>%1',"User ID");
        IF PAGE.RUNMODAL(PAGE::"Approval User Setup",UserSetup) = ACTION::LookupOK THEN
          VALIDATE(Substitute,UserSetup."User ID");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        UserSetup.SetFilter("User ID",'<>%1',"User ID");
        if PAGE.RunModal(PAGE::"Approval User Setup",UserSetup) = ACTION::LookupOK then
          Validate(Substitute,UserSetup."User ID");
        */
        //end;


        //Unsupported feature: CodeModification on "Substitute(Field 16).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Substitute = "User ID" THEN
          FIELDERROR(Substitute);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Substitute = "User ID" then
          FieldError(Substitute);
        */
        //end;


        //Unsupported feature: CodeModification on ""Request Amount Approval Limit"(Field 19).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Unlimited Request Approval" AND ("Request Amount Approval Limit" <> 0) THEN
          ERROR(Text003,FIELDCAPTION("Request Amount Approval Limit"),FIELDCAPTION("Unlimited Request Approval"));
        IF "Request Amount Approval Limit" < 0 THEN
          ERROR(Text005);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Unlimited Request Approval" and ("Request Amount Approval Limit" <> 0) then
          Error(Text003,FieldCaption("Request Amount Approval Limit"),FieldCaption("Unlimited Request Approval"));
        if "Request Amount Approval Limit" < 0 then
          Error(Text005);
        */
        //end;


        //Unsupported feature: CodeModification on ""Unlimited Request Approval"(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Unlimited Request Approval" THEN
          "Request Amount Approval Limit" := 0;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Unlimited Request Approval" then
          "Request Amount Approval Limit" := 0;
        */
        //end;


        //Unsupported feature: CodeModification on ""Approval Administrator"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Approval Administrator" THEN BEGIN
          UserSetup.SETRANGE("Approval Administrator",TRUE);
          IF NOT UserSetup.ISEMPTY THEN
            FIELDERROR("Approval Administrator");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Approval Administrator" then begin
          UserSetup.SetRange("Approval Administrator",true);
          if not UserSetup.IsEmpty then
            FieldError("Approval Administrator");
        end;
        */
        //end;
        field(60001; "Transfer- From Code"; Code[10])
        {
        }
        field(60002; "Transfer- To Code"; Code[10])
        {
        }
        field(60003; "Production Order"; Code[20])
        {
            TableRelation = "Production Order"."No." WHERE(Status = CONST(Released));
        }
        field(60050; "Current UserId"; Code[20])
        {
            Description = 'UserId';
        }
        field(60051; Executed; Boolean)
        {
            Description = 'UserId';
        }
        field(60052; "Edit Posted Ledger Entries"; Boolean)
        {
            Description = 'sundar';
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""User ID"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Salespers./Purch. Code"(Key)". Please convert manually.

        key(UserID1; "User ID")
        {
        }
        key(SalesPers2; "Salespers./Purch. Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    NotificationSetup.SETRANGE("User ID","User ID");
    NotificationSetup.DELETEALL(TRUE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    NotificationSetup.SetRange("User ID","User ID");
    NotificationSetup.DeleteAll(true);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "E-Mail" <> '' THEN
      EXIT;
    IF "User ID" <> '' THEN
      EXIT;
    User.SETRANGE("User Name","User ID");
    IF User.FINDFIRST THEN
      "E-Mail" := COPYSTR(User."Contact Email",1,MAXSTRLEN("E-Mail"));
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "E-Mail" <> '' then
      exit;
    if "User ID" <> '' then
      exit;
    User.SetRange("User Name","User ID");
    if User.FindFirst then
      "E-Mail" := CopyStr(User."Contact Email",1,MaxStrLen("E-Mail"));
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 1).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""User ID"(Field 1).OnValidate.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Salespers./Purch. Code"(Field 10).OnValidate.UserSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Salespers./Purch. Code" : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Salespers./Purch. Code" : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Approver ID"(Field 11).OnLookup.UserSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Approver ID" : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Approver ID" : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Substitute(Field 16).OnLookup.UserSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Substitute : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Substitute : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""E-Mail"(Field 17).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Approval Administrator"(Field 21).OnValidate.UserSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Approval Administrator" : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Approval Administrator" : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.NotificationSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.NotificationSetup : 1512;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.NotificationSetup : "Notification Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnInsert.User(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnInsert.User : 2000000120;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnInsert.User : User;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateApprovalUserSetup(PROCEDURE 3).UserSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateApprovalUserSetup : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateApprovalUserSetup : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateApprovalUserSetup(PROCEDURE 3).ApprovalUserSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateApprovalUserSetup : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateApprovalUserSetup : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultSalesAmountApprovalLimit(PROCEDURE 1).UserSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultSalesAmountApprovalLimit : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultSalesAmountApprovalLimit : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDefaultPurchaseAmountApprovalLimit(PROCEDURE 2).UserSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDefaultPurchaseAmountApprovalLimit : 91;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDefaultPurchaseAmountApprovalLimit : "User Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "HideExternalUsers(PROCEDURE 5).PermissionManager(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //HideExternalUsers : 9002;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //HideExternalUsers : "Permission Manager";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UpdateSalesPerson(PROCEDURE 4).SalespersonPurchaser(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UpdateSalesPerson : 13;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UpdateSalesPerson : "Salesperson/Purchaser";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SalesPersonPurchaser(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SalesPersonPurchaser : 13;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SalesPersonPurchaser : "Salesperson/Purchaser";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserSetupManagement(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserSetupManagement : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserSetupManagement : "User Setup Management";
    //Variable type has not been exported.
}

