tableextension 70170 ItemSubstitutionExt extends "Item Substitution"
{
    // version NAVW19.00.00.48822

    fields
    {

        //Unsupported feature: Change TableRelation on ""No."(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""No."(Field 1)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Substitute No."(Field 3)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Substitute No."(Field 3)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Substitute Variant Code"(Field 4)". Please convert manually.


        //Unsupported feature: Change Editable on "Description(Field 5)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Condition(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on "Condition(Field 8)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 100)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Substitute Type"(Field 101)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Sub. Item No."(Field 102)". Please convert manually.


        //Unsupported feature: Change Editable on ""Sub. Item No."(Field 102)". Please convert manually.


        //Unsupported feature: Change Editable on ""Relations Level"(Field 103)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 1).OnValidate". Please convert manually.

        //trigger "(Field 1)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> xRec."No." THEN BEGIN
          "Variant Code" := '';
          IF Interchangeable THEN
            DeleteInterchangeableItem(
              Type,
              xRec."No.",
              "Variant Code",
              "Substitute Type",
              "Substitute No.",
              "Substitute Variant Code");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> xRec."No." then begin
          "Variant Code" := '';
          if Interchangeable then
        #4..10
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 2).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Variant Code" <> xRec."Variant Code" THEN
          RecreateSubstEntry(xRec."Variant Code","Substitute Variant Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" <> xRec."Variant Code" then
          RecreateSubstEntry(xRec."Variant Code","Substitute Variant Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Substitute No."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Type = "Substitute Type") AND
           ("No." = "Substitute No.") AND
           ("Variant Code" = "Substitute Variant Code")
        THEN
          ERROR(Text000);

        IF "Substitute No." <> xRec."Substitute No." THEN
          IF Interchangeable THEN
            DeleteInterchangeableItem(
              Type,
              "No.",
        #12..14
              "Substitute Variant Code");

        SetItemVariantDescription("Substitute Type","Substitute No.","Substitute Variant Code",Description);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (Type = "Substitute Type") and
           ("No." = "Substitute No.") and
           ("Variant Code" = "Substitute Variant Code")
        then
          Error(Text000);

        if "Substitute No." <> xRec."Substitute No." then
          if Interchangeable then
        #9..17
        */
        //end;


        //Unsupported feature: CodeModification on ""Substitute Variant Code"(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Type = "Substitute Type") AND
           ("No." = "Substitute No.") AND
           ("Variant Code" = "Substitute Variant Code")
        THEN
          ERROR(Text000);

        IF "Substitute Variant Code" <> xRec."Substitute Variant Code" THEN
          RecreateSubstEntry("Variant Code",xRec."Substitute Variant Code");

        Description := GetItemVariantDescription;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (Type = "Substitute Type") and
           ("No." = "Substitute No.") and
           ("Variant Code" = "Substitute Variant Code")
        then
          Error(Text000);

        if "Substitute Variant Code" <> xRec."Substitute Variant Code" then
        #8..10
        */
        //end;


        //Unsupported feature: CodeModification on "Interchangeable(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("No.");
        TESTFIELD("Substitute No.");
        IF NOT Interchangeable THEN
          DeleteInterchangeableItem(Type,"No.","Variant Code","Substitute Type","Substitute No.","Substitute Variant Code")
        ELSE
          CreateInterchangeableItem;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("No.");
        TestField("Substitute No.");
        if not Interchangeable then
          DeleteInterchangeableItem(Type,"No.","Variant Code","Substitute Type","Substitute No.","Substitute Variant Code")
        else
          CreateInterchangeableItem;
        */
        //end;


        //Unsupported feature: CodeModification on "Type(Field 100).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type <> xRec.Type THEN BEGIN
          IF Interchangeable THEN
            DeleteInterchangeableItem(
              xRec.Type,
              "No.",
              "Variant Code",
              "Substitute Type",
              "Substitute No.",
              "Substitute Variant Code");
          IF xRec."No." <> '' THEN
            VALIDATE("No.",'');
          VALIDATE("Substitute No.",'');
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type <> xRec.Type then begin
          if Interchangeable then
        #3..9
          if xRec."No." <> '' then
            Validate("No.",'');
          Validate("Substitute No.",'');
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Substitute Type"(Field 101).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Type = "Substitute Type") AND
           ("No." = "Substitute No.") AND
           ("Variant Code" = "Substitute Variant Code")
        THEN
          ERROR(Text000);

        IF "Substitute Type" <> xRec."Substitute Type" THEN BEGIN
          IF Interchangeable THEN
            DeleteInterchangeableItem(
              Type,
              "No.",
        #12..15
          Description := '';
          "Variant Code" := '';
          "Substitute No." := '';
          Interchangeable := FALSE;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (Type = "Substitute Type") and
           ("No." = "Substitute No.") and
           ("Variant Code" = "Substitute Variant Code")
        then
          Error(Text000);

        if "Substitute Type" <> xRec."Substitute Type" then begin
          if Interchangeable then
        #9..18
          Interchangeable := false;
        end;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Type,No.,Variant Code,Substitute Type,Substitute No.,Substitute Variant Code"(Key)". Please convert manually.

        key(Key1; Type, "No.", "Variant Code", "Substitute Type", "Substitute No.", "Substitute Variant Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Interchangeable THEN
      IF CONFIRM(Text001 + Text002) THEN
        DeleteInterchangeableItem(Type,"No.","Variant Code","Substitute Type","Substitute No.","Substitute Variant Code")
      ELSE
        IF ItemSubstitution.GET(
             "Substitute Type",
             "Substitute No.",
             "Substitute Variant Code",
             Type,
             "No.",
             "Variant Code")
        THEN BEGIN
          ItemSubstitution.Interchangeable := FALSE;
          ItemSubstitution.MODIFY;
        END;

    IF Condition THEN BEGIN
      SubCondition.SETRANGE(Type,Type);
      SubCondition.SETRANGE("No.","No.");
      SubCondition.SETRANGE("Variant Code","Variant Code");
      SubCondition.SETRANGE("Substitute Type","Substitute Type");
      SubCondition.SETRANGE("Substitute No.","Substitute No.");
      SubCondition.SETRANGE("Substitute Variant Code","Substitute Variant Code");
      SubCondition.DELETEALL;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Interchangeable then
      if Confirm(Text001 + Text002) then
        DeleteInterchangeableItem(Type,"No.","Variant Code","Substitute Type","Substitute No.","Substitute Variant Code")
      else
        if ItemSubstitution.Get(
    #6..11
        then begin
          ItemSubstitution.Interchangeable := false;
          ItemSubstitution.Modify;
        end;

    if Condition then begin
      SubCondition.SetRange(Type,Type);
      SubCondition.SetRange("No.","No.");
      SubCondition.SetRange("Variant Code","Variant Code");
      SubCondition.SetRange("Substitute Type","Substitute Type");
      SubCondition.SetRange("Substitute No.","Substitute No.");
      SubCondition.SetRange("Substitute Variant Code","Substitute Variant Code");
      SubCondition.DeleteAll;
    end;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.ItemSubstitution(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ItemSubstitution : 5715;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ItemSubstitution : "Item Substitution";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInterchangeableItem(PROCEDURE 1).ItemSubstitution(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInterchangeableItem : 5715;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInterchangeableItem : "Item Substitution";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DeleteInterchangeableItem(PROCEDURE 2).ItemSubstitution(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DeleteInterchangeableItem : 5715;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DeleteInterchangeableItem : "Item Substitution";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetItemVariantDescription(PROCEDURE 4).Item(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetItemVariantDescription : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetItemVariantDescription : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetDescription(PROCEDURE 8).Item(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetDescription : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetDescription : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetDescription(PROCEDURE 8).NonstockItem(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetDescription : 5718;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetDescription : "Nonstock Item";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetItemVariantDescription(PROCEDURE 11).Item(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetItemVariantDescription : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetItemVariantDescription : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetItemVariantDescription(PROCEDURE 11).NonstockItem(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetItemVariantDescription : 5718;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetItemVariantDescription : "Nonstock Item";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetItemVariantDescription(PROCEDURE 11).ItemVariant(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetItemVariantDescription : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetItemVariantDescription : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SubCondition(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SubCondition : 5716;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SubCondition : "Substitution Condition";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemVariant(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemVariant : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemVariant : "Item Variant";
    //Variable type has not been exported.
}

