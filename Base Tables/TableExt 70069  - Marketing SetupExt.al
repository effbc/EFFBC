tableextension 70069 MarketingSetupExt extends "Marketing Setup"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change AccessByPermission on ""Campaign Nos."(Field 3)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Opportunity Nos."(Field 6)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Inherit Salesperson Code"(Field 22)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Inherit Territory Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Inherit Country/Region Code"(Field 24)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Inherit Language Code"(Field 25)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Inherit Address Details"(Field 26)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Inherit Communication Details"(Field 27)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Default Salesperson Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Default Country/Region Code"(Field 30)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Attachment Storage Type"(Field 35)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Autosearch for Duplicates"(Field 37)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Search Hit %"(Field 38)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Maintain Dupl. Search Strings"(Field 39)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Maintain Dupl. Search Strings"(Field 39)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Mergefield Language ID"(Field 50)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Default Correspondence Type"(Field 53)". Please convert manually.


        //Unsupported feature: Change Editable on ""Queue Folder Path"(Field 56)". Please convert manually.


        //Unsupported feature: Change Editable on ""Storage Folder Path"(Field 59)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sync with Microsoft Graph"(Field 74)". Please convert manually.


        //Unsupported feature: CodeModification on ""Autosearch for Duplicates"(Field 37).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Autosearch for Duplicates" THEN
          VALIDATE("Maintain Dupl. Search Strings",TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Autosearch for Duplicates" then
          Validate("Maintain Dupl. Search Strings",true);
        */
        //end;


        //Unsupported feature: CodeModification on ""Maintain Dupl. Search Strings"(Field 39).OnValidate". Please convert manually.

        //trigger  Search Strings"(Field 39)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Autosearch for Duplicates" := "Maintain Dupl. Search Strings";
        IF "Maintain Dupl. Search Strings" AND NOT xRec."Maintain Dupl. Search Strings" THEN
          IF ConfirmManagement.ConfirmProcessUI(DuplicateSearchQst,TRUE) THEN
            REPORT.RUN(REPORT::"Generate Dupl. Search String");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        "Autosearch for Duplicates" := "Maintain Dupl. Search Strings";
        if "Maintain Dupl. Search Strings" and not xRec."Maintain Dupl. Search Strings" then
          if ConfirmManagement.ConfirmProcessUI(DuplicateSearchQst,true) then
            REPORT.Run(REPORT::"Generate Dupl. Search String");
        */
        //end;


        //Unsupported feature: CodeModification on ""Sync with Microsoft Graph"(Field 74).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF WebhookManagement.IsSyncAllowed AND "Sync with Microsoft Graph" THEN BEGIN
          CODEUNIT.RUN(CODEUNIT::"Graph Data Setup");
          "WebHook Run Notification As" := GetWebhookSubscriptionUser;
          IF UserIsNotValidForWebhookSubscription("WebHook Run Notification As") THEN
            IF CurrentUserHasPermissionsForWebhookSubscription THEN
              TrySetWebhookSubscriptionUser(USERSECURITYID);
        END ELSE
          "Sync with Microsoft Graph" := FALSE;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if WebhookManagement.IsSyncAllowed and "Sync with Microsoft Graph" then begin
          CODEUNIT.Run(CODEUNIT::"Graph Data Setup");
          "WebHook Run Notification As" := GetWebhookSubscriptionUser;
          if UserIsNotValidForWebhookSubscription("WebHook Run Notification As") then
            if CurrentUserHasPermissionsForWebhookSubscription then
              TrySetWebhookSubscriptionUser(UserSecurityId);
        end else
          "Sync with Microsoft Graph" := false;
        */
        //end;
        field(60001; "Product ID"; Code[20])
        {
            Description = 'B2B';
            TableRelation = "No. Series";
        }
        field(60002; "Product Competetors"; Code[20])
        {
            Description = 'B2B';
            TableRelation = "No. Series";
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Primary Key"(Key)". Please convert manually.

        key(Key1; "Primary Key")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Maintain Dupl. Search Strings"(Field 39).OnValidate.ConfirmManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Maintain Dupl. Search Strings" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Maintain Dupl. Search Strings" : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Sync with Microsoft Graph"(Field 74).OnValidate.WebhookManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Sync with Microsoft Graph" : 5377;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Sync with Microsoft Graph" : "Webhook Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetExchangeAccountPassword(PROCEDURE 4).ServicePassword(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetExchangeAccountPassword : 1261;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetExchangeAccountPassword : "Service Password";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateExchangeAccountCredentials(PROCEDURE 5).ServicePassword(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateExchangeAccountCredentials : 1261;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateExchangeAccountCredentials : "Service Password";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TrySetWebhookSubscriptionUser(PROCEDURE 24).WebhookManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TrySetWebhookSubscriptionUser : 5377;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TrySetWebhookSubscriptionUser : "Webhook Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetWebhookSubscriptionUser(PROCEDURE 23).MarketingSetup(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetWebhookSubscriptionUser : 5079;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetWebhookSubscriptionUser : "Marketing Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UserIsNotValidForWebhookSubscription(PROCEDURE 36).WebhookManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UserIsNotValidForWebhookSubscription : 5377;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UserIsNotValidForWebhookSubscription : "Webhook Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CurrentUserHasPermissionsForWebhookSubscription(PROCEDURE 6).Contact(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CurrentUserHasPermissionsForWebhookSubscription : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrentUserHasPermissionsForWebhookSubscription : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CurrentUserHasPermissionsForWebhookSubscription(PROCEDURE 6).Customer(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CurrentUserHasPermissionsForWebhookSubscription : 18;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrentUserHasPermissionsForWebhookSubscription : Customer;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TrySetWebhookSubscriptionUserAsCurrentUser(PROCEDURE 32).MarketingSetup(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TrySetWebhookSubscriptionUserAsCurrentUser : 5079;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TrySetWebhookSubscriptionUserAsCurrentUser : "Marketing Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomerTemplate(PROCEDURE 1).MarketingSetup(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomerTemplate : 5079;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomerTemplate : "Marketing Setup";
    //Variable type has not been exported.
}

