tableextension 70001 SalespersonPurchaserExt extends "Salesperson/Purchaser"
{
    // version NAVW19.00.00.50221,B2B1.0

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 1 Code"(Field 5050)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Global Dimension 2 Code"(Field 5051)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Next Task Date"(Field 5054)". Please convert manually.


        //Unsupported feature: Change Editable on ""Next Task Date"(Field 5054)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Opportunities"(Field 5055)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Opportunities"(Field 5055)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Estimated Value (LCY)"(Field 5056)". Please convert manually.


        //Unsupported feature: Change Editable on ""Estimated Value (LCY)"(Field 5056)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Calcd. Current Value (LCY)"(Field 5057)". Please convert manually.


        //Unsupported feature: Change Editable on ""Calcd. Current Value (LCY)"(Field 5057)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Interactions"(Field 5059)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Interactions"(Field 5059)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Cost (LCY)"(Field 5060)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost (LCY)"(Field 5060)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Duration (Min.)"(Field 5061)". Please convert manually.


        //Unsupported feature: Change Editable on ""Duration (Min.)"(Field 5061)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Action Taken Filter"(Field 5063)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Sales Cycle Stage Filter"(Field 5065)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Avg. Estimated Value (LCY)"(Field 5068)". Please convert manually.


        //Unsupported feature: Change Editable on ""Avg. Estimated Value (LCY)"(Field 5068)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Avg.Calcd. Current Value (LCY)"(Field 5069)". Please convert manually.


        //Unsupported feature: Change Editable on ""Avg.Calcd. Current Value (LCY)"(Field 5069)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Task Status Filter"(Field 5076)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Opportunity Entry Exists"(Field 5082)". Please convert manually.


        //Unsupported feature: Change Editable on ""Opportunity Entry Exists"(Field 5082)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Task Entry Exists"(Field 5083)". Please convert manually.


        //Unsupported feature: Change Editable on ""Task Entry Exists"(Field 5083)". Please convert manually.


        //Unsupported feature: CodeModification on "Code(Field 1).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Code);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Code);
        */
        //end;


        //Unsupported feature: CodeModification on ""E-Mail"(Field 5052).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Search E-Mail" = UPPERCASE(xRec."E-Mail")) OR ("Search E-Mail" = '') THEN
          "Search E-Mail" := "E-Mail";
        MailManagement.ValidateEmailAddressField("E-Mail");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Search E-Mail" = UpperCase(xRec."E-Mail")) or ("Search E-Mail" = '') then
          "Search E-Mail" := "E-Mail";
        MailManagement.ValidateEmailAddressField("E-Mail");
        */
        //end;
        field(60000; "Salesperson/Purchaser"; Option)
        {
            Description = 'B2B';
            OptionMembers = Sale,Purchase,CS;
        }
        field(60001; PastEmp; Boolean)
        {
        }
        field(60002; "Sales Person Signature"; BLOB)
        {
            DataClassification = ToBeClassified;
            SubType = Bitmap;
        }
    }
    keys
    {

        //Unsupported feature: PropertyChange on "Code(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Search E-Mail"(Key)". Please convert manually.

        key(SearchEmail; "Search E-Mail")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TodoTask.RESET;
    TodoTask.SETCURRENTKEY("Salesperson Code",Closed);
    TodoTask.SETRANGE("Salesperson Code",Code);
    TodoTask.SETRANGE(Closed,FALSE);
    IF NOT TodoTask.ISEMPTY THEN
      ERROR(CannotDeleteBecauseActiveTasksErr,Code);

    Opportunity.SETRANGE("Salesperson Code",Code);
    Opportunity.SETRANGE(Closed,FALSE);
    IF NOT Opportunity.ISEMPTY THEN
      ERROR(CannotDeleteBecauseActiveOpportunitiesErr,Code);

    TeamSalesperson.RESET;
    TeamSalesperson.SETRANGE("Salesperson Code",Code);
    TeamSalesperson.DELETEALL;
    DimMgt.DeleteDefaultDim(DATABASE::"Salesperson/Purchaser",Code);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TodoTask.Reset;
    TodoTask.SetCurrentKey("Salesperson Code",Closed);
    TodoTask.SetRange("Salesperson Code",Code);
    TodoTask.SetRange(Closed,false);
    if not TodoTask.IsEmpty then
      Error(CannotDeleteBecauseActiveTasksErr,Code);

    Opportunity.SetRange("Salesperson Code",Code);
    Opportunity.SetRange(Closed,false);
    if not Opportunity.IsEmpty then
      Error(CannotDeleteBecauseActiveOpportunitiesErr,Code);

    TeamSalesperson.Reset;
    TeamSalesperson.SetRange("Salesperson Code",Code);
    TeamSalesperson.DeleteAll;
    DimMgt.DeleteDefaultDim(DATABASE::"Salesperson/Purchaser",Code);
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    VALIDATE(Code);
    DimMgt.UpdateDefaultDim(
      DATABASE::"Salesperson/Purchaser",Code,
      "Global Dimension 1 Code","Global Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Validate(Code);
    #2..4
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    VALIDATE(Code);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Validate(Code);
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""E-Mail"(Field 5052).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""E-Mail 2"(Field 5086).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail 2" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail 2" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.TeamSalesperson(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.TeamSalesperson : 5084;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.TeamSalesperson : "Team Salesperson";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.TodoTask(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.TodoTask : 5080;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.TodoTask : "To-do";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.Opportunity(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Opportunity : 5092;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Opportunity : Opportunity;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInteraction(PROCEDURE 10).TempSegmentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInteraction : 5077;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInteraction : "Segment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}

