tableextension 70142 BinCreationWorksheetLineExt extends "Bin Creation Worksheet Line"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change ValidateTableRelation on ""Worksheet Template Name"(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on "Name(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 4)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Location Code"(Field 5)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Location Code"(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Zone Code"(Field 6)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bin Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bin Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Bin Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Item No."(Field 8)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Block Movement"(Field 12)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Maximum Cubage"(Field 22)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Maximum Weight"(Field 23)". Please convert manually.


        //Unsupported feature: Change InitValue on "Fixed(Field 37)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 67)". Please convert manually.


        //Unsupported feature: Change Editable on ""User ID"(Field 67)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5402)". Please convert manually.


        //Unsupported feature: Change Editable on ""Qty. per Unit of Measure"(Field 5404)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Unit of Measure Code"(Field 5407)". Please convert manually.


        //Unsupported feature: CodeModification on "Type(Field 4).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type <> xRec.Type THEN BEGIN
          BinCreateWkshLine := Rec;
          "Item No." := '';
          "Bin Code" := '';
          "Zone Code" := '';
          "Variant Code" := '';
          INIT;
          Type := BinCreateWkshLine.Type;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type <> xRec.Type then begin
        #2..6
          Init;
          Type := BinCreateWkshLine.Type;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Zone Code"(Field 6).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetLocation("Location Code");
        Location.TESTFIELD("Directed Put-away and Pick");
        GetZone("Location Code","Zone Code");
        "Bin Type Code" := Zone."Bin Type Code";
        VALIDATE("Warehouse Class Code",Zone."Warehouse Class Code");
        "Special Equipment Code" := Zone."Special Equipment Code";
        "Bin Ranking" := Zone."Zone Ranking";
        "Cross-Dock Bin" := Zone."Cross-Dock Bin Zone";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GetLocation("Location Code");
        Location.TestField("Directed Put-away and Pick");
        GetZone("Location Code","Zone Code");
        "Bin Type Code" := Zone."Bin Type Code";
        Validate("Warehouse Class Code",Zone."Warehouse Class Code");
        #6..8
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Code"(Field 7).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Bin Code" <> '') AND (Type = Type::"Bin Content") THEN BEGIN
          Bin.GET("Location Code","Bin Code");
          Dedicated := Bin.Dedicated;
          "Bin Type Code" := Bin."Bin Type Code";
          VALIDATE("Warehouse Class Code",Bin."Warehouse Class Code");
          "Special Equipment Code" := Bin."Special Equipment Code";
          "Block Movement" := Bin."Block Movement";
          "Bin Ranking" := Bin."Bin Ranking";
          "Cross-Dock Bin" := Bin."Cross-Dock Bin";
          "Zone Code" := Bin."Zone Code";
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Bin Code" <> '') and (Type = Type::"Bin Content") then begin
          Bin.Get("Location Code","Bin Code");
          Dedicated := Bin.Dedicated;
          "Bin Type Code" := Bin."Bin Type Code";
          Validate("Warehouse Class Code",Bin."Warehouse Class Code");
        #6..10
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Item No."(Field 8).OnValidate". Please convert manually.

        //trigger "(Field 8)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Item No." <> '' THEN BEGIN
          GetItem("Item No.");
          Description := Item.Description;
          GetItemUnitOfMeasure;
          VALIDATE("Unit of Measure Code",ItemUnitOfMeasure.Code);
          CheckWhseClass("Item No.");
        END ELSE BEGIN
          Description := '';
          "Variant Code" := '';
          VALIDATE("Unit of Measure Code",'');
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Item No." <> '' then begin
        #2..4
          Validate("Unit of Measure Code",ItemUnitOfMeasure.Code);
          CheckWhseClass("Item No.");
        end else begin
          Description := '';
          "Variant Code" := '';
          Validate("Unit of Measure Code",'');
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Warehouse Class Code"(Field 11).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Item No." <> '') AND (Type = Type::"Bin Content") THEN
          CheckWhseClass("Item No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Item No." <> '') and (Type = Type::"Bin Content") then
          CheckWhseClass("Item No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Min. Qty."(Field 15).OnValidate". Please convert manually.

        //trigger  Qty();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Min. Qty." > "Max. Qty." THEN
          ERROR(
            Text009,
            FIELDCAPTION("Max. Qty."),"Max. Qty.",
            FIELDCAPTION("Min. Qty."),"Min. Qty.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Min. Qty." > "Max. Qty." then
          Error(
            Text009,
            FieldCaption("Max. Qty."),"Max. Qty.",
            FieldCaption("Min. Qty."),"Min. Qty.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Max. Qty."(Field 16).OnValidate". Please convert manually.

        //trigger  Qty();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Max. Qty." <> xRec."Max. Qty." THEN
          CheckMaxQtyBinContent(TRUE);

        IF "Min. Qty." > "Max. Qty." THEN
          ERROR(
            Text009,
            FIELDCAPTION("Max. Qty."),"Max. Qty.",
            FIELDCAPTION("Min. Qty."),"Min. Qty.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Max. Qty." <> xRec."Max. Qty." then
          CheckMaxQtyBinContent(true);

        if "Min. Qty." > "Max. Qty." then
          Error(
            Text009,
            FieldCaption("Max. Qty."),"Max. Qty.",
            FieldCaption("Min. Qty."),"Min. Qty.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Maximum Cubage"(Field 22).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckMaxQtyBinContent(FALSE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckMaxQtyBinContent(false);
        */
        //end;


        //Unsupported feature: CodeModification on ""Maximum Weight"(Field 23).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckMaxQtyBinContent(TRUE);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CheckMaxQtyBinContent(true);
        */
        //end;


        //Unsupported feature: CodeModification on "Default(Field 38).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Default THEN
          IF WMSMgt.CheckDefaultBin("Item No.","Variant Code","Location Code","Bin Code") THEN
            ERROR(Text010,"Location Code","Item No.","Variant Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Default then
          if WMSMgt.CheckDefaultBin("Item No.","Variant Code","Location Code","Bin Code") then
            Error(Text010,"Location Code","Item No.","Variant Code");
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 5402).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Variant Code" <> '' THEN BEGIN
          ItemVariant.GET("Item No.","Variant Code");
          Description := ItemVariant.Description;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" <> '' then begin
          ItemVariant.Get("Item No.","Variant Code");
          Description := ItemVariant."Part No";
        end;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Worksheet Template Name,Name,Location Code,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Location Code,Zone Code,Bin Code,Item No.,Variant Code"(Key)". Please convert manually.

        key(Key1; "Worksheet Template Name", Name, "Location Code", "Line No.")
        {
        }
        key(Key2; "Location Code", "Zone Code", "Bin Code", "Item No.", "Variant Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetLocation("Location Code");
    IF Location."Bin Mandatory" THEN
      TESTFIELD("Bin Code");
    "User ID" := USERID;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    GetLocation("Location Code");
    if Location."Bin Mandatory" then
      TestField("Bin Code");
    "User ID" := UserId;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetLocation("Location Code");
    IF Location."Bin Mandatory" THEN
      TESTFIELD("Bin Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    GetLocation("Location Code");
    if Location."Bin Mandatory" then
      TestField("Bin Code");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "Type(Field 4).OnValidate.BinCreateWkshLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Type : 7338;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Type : "Bin Creation Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Item No."(Field 8).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Item No." : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Item No." : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""User ID"(Field 67).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 5402).OnValidate.ItemVariant(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TemplateSelection(PROCEDURE 18).BinCreateWkshTemplate(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TemplateSelection : 7336;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TemplateSelection : "Bin Creation Wksh. Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TemplateSelectionFromBatch(PROCEDURE 9).BinCreateWkshLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TemplateSelectionFromBatch : 7338;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TemplateSelectionFromBatch : "Bin Creation Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenWkshBatch(PROCEDURE 3).CopyOfBinCreateWkshName(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenWkshBatch : 7337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenWkshBatch : "Bin Creation Wksh. Name";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenWkshBatch(PROCEDURE 3).BinCreateWkshTemplate(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenWkshBatch : 7336;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenWkshBatch : "Bin Creation Wksh. Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenWkshBatch(PROCEDURE 3).BinCreateWkshLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenWkshBatch : 7338;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenWkshBatch : "Bin Creation Worksheet Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckTemplateName(PROCEDURE 16).BinCreateWkshName(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckTemplateName : 7337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckTemplateName : "Bin Creation Wksh. Name";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckName(PROCEDURE 14).BinCreateWkshName(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckName : 7337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckName : "Bin Creation Wksh. Name";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckName(PROCEDURE 14).WhseEmployee(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckName : 7301;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckName : "Warehouse Employee";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LookupBinCreationName(PROCEDURE 19).BinCreateWkshName(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LookupBinCreationName : 7337;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LookupBinCreationName : "Bin Creation Wksh. Name";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckMaxQtyBinContent(PROCEDURE 4).BinContent(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckMaxQtyBinContent : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckMaxQtyBinContent : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetItemDescr(PROCEDURE 20).Item(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetItemDescr : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetItemDescr : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetItemDescr(PROCEDURE 20).ItemVariant(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetItemDescr : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetItemDescr : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetUnitOfMeasureDescr(PROCEDURE 24).UOM(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetUnitOfMeasureDescr : 204;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetUnitOfMeasureDescr : "Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "BinCreateWkshTemplate(Variable 1019)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //BinCreateWkshTemplate : 7336;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BinCreateWkshTemplate : "Bin Creation Wksh. Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Zone(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Zone : 7300;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Zone : Zone;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Bin(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Bin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Bin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemUnitOfMeasure(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemUnitOfMeasure : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemUnitOfMeasure : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSMgt(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSMgt : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSMgt : "WMS Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.
}

