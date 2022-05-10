tableextension 70143 BOMComponentExt extends "BOM Component"
{
    // version NAVW17.10

    fields
    {

        //Unsupported feature: Change NotBlank on ""Parent Item No."(Field 1)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 3)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 4)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Assembly BOM"(Field 5)". Please convert manually.


        //Unsupported feature: Change Editable on ""Assembly BOM"(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""BOM Description"(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on ""BOM Description"(Field 14)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: CodeModification on ""No."(Field 4).OnValidate". Please convert manually.

        //trigger "(Field 4)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type);
        "Variant Code" := '';
        IF "No." = '' THEN
          EXIT;

        CASE Type OF
          Type::Item:
            CopyFromItem;
          Type::Resource:
            CopyFromResource;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type);
        "Variant Code" := '';
        if "No." = '' then
          exit;

        case Type of
        #7..10
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Resource Usage Type"(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Resource Usage Type" = xRec."Resource Usage Type" THEN
          EXIT;

        TESTFIELD(Type,Type::Resource);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Resource Usage Type" = xRec."Resource Usage Type" then
          exit;

        TestField(Type,Type::Resource);
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 5402).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Variant Code" = '' THEN
          EXIT;
        TESTFIELD(Type,Type::Item);
        TESTFIELD("No.");
        ItemVariant.GET("No.","Variant Code");
        Description := ItemVariant.Description;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" = '' then
          exit;
        TestField(Type,Type::Item);
        TestField("No.");
        ItemVariant.Get("No.","Variant Code");
        Description := ItemVariant."Part No";
        */
        //end;


        //Unsupported feature: CodeModification on ""Installed in Line No."(Field 5900).OnLookup". Please convert manually.

        //trigger "(Field 5900)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        BOMComp.RESET;
        BOMComp.SETRANGE("Parent Item No.","Parent Item No.");
        BOMComp.SETRANGE(Type,BOMComp.Type::Item);
        BOMComp.SETFILTER("Line No.",'<>%1',"Line No.");
        CLEAR(AssemblyBOM);
        AssemblyBOM.SETTABLEVIEW(BOMComp);
        AssemblyBOM.EDITABLE(FALSE);
        AssemblyBOM.LOOKUPMODE(TRUE);
        IF AssemblyBOM.RUNMODAL = ACTION::LookupOK THEN BEGIN
          AssemblyBOM.GETRECORD(BOMComp);
          VALIDATE("Installed in Line No.",BOMComp."Line No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        BOMComp.Reset;
        BOMComp.SetRange("Parent Item No.","Parent Item No.");
        BOMComp.SetRange(Type,BOMComp.Type::Item);
        BOMComp.SetFilter("Line No.",'<>%1',"Line No.");
        Clear(AssemblyBOM);
        AssemblyBOM.SetTableView(BOMComp);
        AssemblyBOM.Editable(false);
        AssemblyBOM.LookupMode(true);
        if AssemblyBOM.RunModal = ACTION::LookupOK then begin
          AssemblyBOM.GetRecord(BOMComp);
          Validate("Installed in Line No.",BOMComp."Line No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Installed in Line No."(Field 5900).OnValidate". Please convert manually.

        //trigger "(Field 5900)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Installed in Line No." <> 0 THEN BEGIN
          IF "Installed in Line No." = "Line No." THEN
            ERROR(Text000,FIELDCAPTION("Installed in Line No."));
          BOMComp.RESET;
          BOMComp.SETRANGE("Parent Item No.","Parent Item No.");
          BOMComp.SETRANGE(Type,BOMComp.Type::Item);
          BOMComp.SETRANGE("Line No.","Installed in Line No.");
          BOMComp.FINDFIRST;
          BOMComp.TESTFIELD("Quantity per",1);
          "Installed in Item No." := BOMComp."No.";
        END ELSE
          "Installed in Item No." := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Installed in Line No." <> 0 then begin
          if "Installed in Line No." = "Line No." then
            Error(Text000,FieldCaption("Installed in Line No."));
          BOMComp.Reset;
          BOMComp.SetRange("Parent Item No.","Parent Item No.");
          BOMComp.SetRange(Type,BOMComp.Type::Item);
          BOMComp.SetRange("Line No.","Installed in Line No.");
          BOMComp.FindFirst;
          BOMComp.TestField("Quantity per",1);
          "Installed in Item No." := BOMComp."No.";
        end else
          "Installed in Item No." := '';
        */
        //end;


        //Unsupported feature: CodeModification on ""Installed in Item No."(Field 5901).OnLookup". Please convert manually.

        //trigger "(Field 5901)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        BOMComp.RESET;
        BOMComp.SETRANGE("Parent Item No.","Parent Item No.");
        BOMComp.SETRANGE(Type,BOMComp.Type::Item);
        BOMComp."No." := "Installed in Item No.";
        BOMComp.SETFILTER("Line No.",'<>%1',"Line No.");
        CLEAR(AssemblyBOM);
        AssemblyBOM.SETTABLEVIEW(BOMComp);
        AssemblyBOM.EDITABLE(FALSE);
        AssemblyBOM.LOOKUPMODE(TRUE);
        IF AssemblyBOM.RUNMODAL = ACTION::LookupOK THEN BEGIN
          AssemblyBOM.GETRECORD(BOMComp);
          VALIDATE("Installed in Line No.",BOMComp."Line No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        BOMComp.Reset;
        BOMComp.SetRange("Parent Item No.","Parent Item No.");
        BOMComp.SetRange(Type,BOMComp.Type::Item);
        BOMComp."No." := "Installed in Item No.";
        BOMComp.SetFilter("Line No.",'<>%1',"Line No.");
        Clear(AssemblyBOM);
        AssemblyBOM.SetTableView(BOMComp);
        AssemblyBOM.Editable(false);
        AssemblyBOM.LookupMode(true);
        if AssemblyBOM.RunModal = ACTION::LookupOK then begin
          AssemblyBOM.GetRecord(BOMComp);
          Validate("Installed in Line No.",BOMComp."Line No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Installed in Item No."(Field 5901).OnValidate". Please convert manually.

        //trigger "(Field 5901)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Installed in Item No." <> '' THEN BEGIN
          BOMComp.RESET;
          BOMComp.SETRANGE("Parent Item No.","Parent Item No.");
          BOMComp.SETRANGE(Type,BOMComp.Type::Item);
          BOMComp.SETRANGE("No.","Installed in Item No.");
          BOMComp.FINDFIRST;
        END;

        VALIDATE("Installed in Line No.",BOMComp."Line No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Installed in Item No." <> '' then begin
          BOMComp.Reset;
          BOMComp.SetRange("Parent Item No.","Parent Item No.");
          BOMComp.SetRange(Type,BOMComp.Type::Item);
          BOMComp.SetRange("No.","Installed in Item No.");
          BOMComp.FindFirst;
        end;

        Validate("Installed in Line No.",BOMComp."Line No.");
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Parent Item No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No."(Key)". Please convert manually.

        key(Key1; "Parent Item No.", "Line No.")
        {
        }
        key(Key2; Type, "No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Item.GET("Parent Item No.");
    IF Type = Type::Item THEN
      ValidateAgainstRecursion("No.")
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Item.Get("Parent Item No.");
    if Type = Type::Item then
      ValidateAgainstRecursion("No.")
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Item.GET("Parent Item No.");
    IF Type = Type::Item THEN
      ValidateAgainstRecursion("No.")
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Item.Get("Parent Item No.");
    if Type = Type::Item then
      ValidateAgainstRecursion("No.")
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Item.GET("Parent Item No.");
    IF Type = Type::Item THEN
      ValidateAgainstRecursion("No.")
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Item.Get("Parent Item No.");
    if Type = Type::Item then
      ValidateAgainstRecursion("No.")
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ValidateAgainstRecursion(PROCEDURE 3).BOMComp(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ValidateAgainstRecursion : 90;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ValidateAgainstRecursion : "BOM Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ParentItem(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ParentItem : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ParentItem : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Res(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Res : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Res : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemVariant(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemVariant : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemVariant : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "BOMComp(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //BOMComp : 90;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BOMComp : "BOM Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalcLowLevelCode(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalcLowLevelCode : 99000793;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalcLowLevelCode : "Calculate Low-Level Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssemblyBOM(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssemblyBOM : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssemblyBOM : "Assembly BOM";
    //Variable type has not been exported.
}

