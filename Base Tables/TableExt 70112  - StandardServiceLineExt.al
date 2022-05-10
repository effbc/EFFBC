tableextension 70112 StandardServiceLineExt extends "Standard Service Line"
{
    // version NAVW19.00.00.50221

    fields
    {

        //Unsupported feature: Change Editable on ""Standard Service Code"(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Line No."(Field 2)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 3)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 4)". Please convert manually.


        //Unsupported feature: Change BlankZero on "Quantity(Field 6)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Amount Excl. VAT"(Field 7)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 9)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: CodeModification on "Type(Field 3).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        OldType := Type;
        INIT;
        Type := OldType;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        OldType := Type;
        Init;
        Type := OldType;
        */
        //end;


        //Unsupported feature: CodeModification on ""No."(Field 4).OnValidate". Please convert manually.

        //trigger "(Field 4)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> xRec."No." THEN BEGIN
          Quantity := 0;
          "Amount Excl. VAT" := 0;
          "Unit of Measure Code" := '';
          Description := '';
          IF "No." = '' THEN
            EXIT;
          StdServCode.GET("Standard Service Code");
          CASE Type OF
            Type::" ":
              BEGIN
                StdTxt.GET("No.");
                Description := StdTxt.Description;
              END;
            Type::Item:
              BEGIN
                Item.GET("No.");
                Item.TESTFIELD(Blocked,FALSE);
                IF Item.Type = Item.Type::Inventory THEN
                  Item.TESTFIELD("Inventory Posting Group");
                Item.TESTFIELD("Gen. Prod. Posting Group");
                Description := Item.Description;
                "Unit of Measure Code" := Item."Sales Unit of Measure";
                "Variant Code" := '';
              END;
            Type::Resource:
              BEGIN
                Res.GET("No.");
                Res.CheckResourcePrivacyBlocked(FALSE);
                Res.TESTFIELD(Blocked,FALSE);
                Res.TESTFIELD("Gen. Prod. Posting Group");
                Description := Res.Name;
                "Unit of Measure Code" := Res."Base Unit of Measure";
              END;
            Type::Cost:
              BEGIN
                ServCost.GET("No.");
                GLAcc.GET(ServCost."Account No.");
                GLAcc.TESTFIELD("Gen. Prod. Posting Group");
                Description := ServCost.Description;
                Quantity := ServCost."Default Quantity";
                "Unit of Measure Code" := ServCost."Unit of Measure Code";
              END;
            Type::"G/L Account":
              BEGIN
                GLAcc.GET("No.");
                GLAcc.CheckGLAcc;
                GLAcc.TESTFIELD("Direct Posting",TRUE);
                Description := GLAcc.Name;
              END;
          END;
        END;

        CreateDim(DimMgt.TypeToTableID5(Type),"No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> xRec."No." then begin
        #2..5
          if "No." = '' then
            exit;
          StdServCode.Get("Standard Service Code");
          case Type of
            Type::" ":
              begin
                StdTxt.Get("No.");
                Description := StdTxt.Description;
              end;
            Type::Item:
              begin
                Item.Get("No.");
                Item.TestField(Blocked,false);
                if Item.Type = Item.Type::Inventory then
                  Item.TestField("Inventory Posting Group");
                Item.TestField("Gen. Prod. Posting Group");
        #22..24
              end;
            Type::Resource:
              begin
                Res.Get("No.");
                Res.CheckResourcePrivacyBlocked(false);
                Res.TestField(Blocked,false);
                Res.TestField("Gen. Prod. Posting Group");
                Description := Res.Name;
                "Unit of Measure Code" := Res."Base Unit of Measure";
              end;
            Type::Cost:
              begin
                ServCost.Get("No.");
                GLAcc.Get(ServCost."Account No.");
                GLAcc.TestField("Gen. Prod. Posting Group");
        #40..42
              end;
            Type::"G/L Account":
              begin
                GLAcc.Get("No.");
                GLAcc.CheckGLAcc;
                GLAcc.TestField("Direct Posting",true);
                Description := GLAcc.Name;
              end;
          end;
        end;

        CreateDim(DimMgt.TypeToTableID5(Type),"No.");
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 6).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type);
        TESTFIELD("No.");
        IF Quantity < 0 THEN
          FIELDERROR(Quantity,Text002);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type);
        TestField("No.");
        if Quantity < 0 then
          FieldError(Quantity,Text002);
        */
        //end;


        //Unsupported feature: CodeModification on ""Amount Excl. VAT"(Field 7).OnValidate". Please convert manually.

        //trigger  VAT"(Field 7)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type <> Type::"G/L Account" THEN
          FIELDERROR(Type,STRSUBSTNO(Text001,Type));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type <> Type::"G/L Account" then
          FieldError(Type,StrSubstNo(Text001,Type));
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 8).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Type);
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 11).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Variant Code" = '' THEN BEGIN
          IF Type = Type::Item THEN BEGIN
            Item.GET("No.");
            Description := Item.Description;
          END;
          EXIT;
        END;

        TESTFIELD(Type,Type::Item);
        ItemVariant.GET("No.","Variant Code");
        Description := ItemVariant.Description;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" = '' then begin
          if Type = Type::Item then begin
            Item.Get("No.");
            Description := Item.Description;
          end;
          exit;
        end;

        TestField(Type,Type::Item);
        ItemVariant.Get("No.","Variant Code");
        Description := ItemVariant."Part No";
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
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Standard Service Code,Line No."(Key)". Please convert manually.

        key(Key1; "Standard Service Code", "Line No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    LOCKTABLE;
    StdServCode.GET("Standard Service Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    LockTable;
    StdServCode.Get("Standard Service Code");
    */
    //end;


    //Unsupported feature: CodeModification on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ERROR(Text000,TABLECAPTION);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Error(Text000,TableCaption);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""No."(Field 4).OnValidate.StdTxt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 7;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : "Standard Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""No."(Field 4).OnValidate.GLAcc(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 15;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : "G/L Account";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""No."(Field 4).OnValidate.Item(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""No."(Field 4).OnValidate.Res(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""No."(Field 4).OnValidate.ServCost(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 5905;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : "Service Cost";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 11).OnValidate.Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 11).OnValidate.ItemVariant(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateDim(PROCEDURE 26).SourceCodeSetup(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateDim : 242;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateDim : "Source Code Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StdServCode(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StdServCode : 5996;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StdServCode : "Standard Service Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}

