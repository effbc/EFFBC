tableextension 70217 StandardPurchaseLineExt extends "Standard Purchase Line"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change Editable on ""Standard Purchase Code"(Field 1)". Please convert manually.


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
        Quantity := 0;
        "Amount Excl. VAT" := 0;
        "Unit of Measure Code" := '';
        Description := '';
        IF "No." = '' THEN
          EXIT;
        StdPurchCode.GET("Standard Purchase Code");
        CASE Type OF
          Type::" ":
            BEGIN
              StdTxt.GET("No.");
              Description := StdTxt.Description;
            END;
          Type::"G/L Account":
            BEGIN
              GLAcc.GET("No.");
              GLAcc.CheckGLAcc;
              GLAcc.TESTFIELD("Direct Posting",TRUE);
              Description := GLAcc.Name;
              OnAfterValidateGLAccountNo(Rec,GLAcc);
            END;
          Type::Item:
            BEGIN
              Item.GET("No.");
              Item.TESTFIELD(Blocked,FALSE);
              Item.TESTFIELD("Gen. Prod. Posting Group");
              IF Item.Type = Item.Type::Inventory THEN
                Item.TESTFIELD("Inventory Posting Group");
              "Unit of Measure Code" := Item."Purch. Unit of Measure";
              Description := Item.Description;
              "Variant Code" := '';
            END;
          3:
            ERROR(Text001);
          Type::"Fixed Asset":
            BEGIN
              FA.GET("No.");
              FA.TESTFIELD(Inactive,FALSE);
              FA.TESTFIELD(Blocked,FALSE);
              Description := FA.Description;
            END;
          Type::"Charge (Item)":
            BEGIN
              ItemCharge.GET("No.");
              Description := ItemCharge.Description;
            END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..4
        if "No." = '' then
          exit;
        StdPurchCode.Get("Standard Purchase Code");
        case Type of
          Type::" ":
            begin
              StdTxt.Get("No.");
              Description := StdTxt.Description;
            end;
          Type::"G/L Account":
            begin
              GLAcc.Get("No.");
              GLAcc.CheckGLAcc;
              GLAcc.TestField("Direct Posting",true);
              Description := GLAcc.Name;
              OnAfterValidateGLAccountNo(Rec,GLAcc);
            end;
          Type::Item:
            begin
              Item.Get("No.");
              Item.TestField(Blocked,false);
              Item.TestField("Gen. Prod. Posting Group");
              if Item.Type = Item.Type::Inventory then
                Item.TestField("Inventory Posting Group");
        #29..31
            end;
          3:
            Error(Text001);
          Type::"Fixed Asset":
            begin
              FA.Get("No.");
              FA.TestField(Inactive,false);
              FA.TestField(Blocked,false);
              Description := FA.Description;
            end;
          Type::"Charge (Item)":
            begin
              ItemCharge.Get("No.");
              Description := ItemCharge.Description;
            end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 6).OnValidate". Please convert manually.

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


        //Unsupported feature: CodeModification on ""Amount Excl. VAT"(Field 7).OnValidate". Please convert manually.

        //trigger  VAT"(Field 7)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Type <> Type::"G/L Account") AND (Type <> Type::"Charge (Item)") THEN
          ERROR(Text002,FIELDCAPTION(Type),Type);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (Type <> Type::"G/L Account") and (Type <> Type::"Charge (Item)") then
          Error(Text002,FieldCaption(Type),Type);
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
    }
    keys
    {

        //Unsupported feature: Deletion on ""Standard Purchase Code,Line No."(Key)". Please convert manually.

        key(Key1; "Standard Purchase Code", "Line No.")
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
    StdPurchCode.GET("Standard Purchase Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    LockTable;
    StdPurchCode.Get("Standard Purchase Code");
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


    //Unsupported feature: PropertyModification on ""No."(Field 4).OnValidate.ItemCharge(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 5800;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : "Item Charge";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""No."(Field 4).OnValidate.FA(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 5600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : "Fixed Asset";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""No."(Field 4).OnValidate.StdTxt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 7;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : "Standard Text";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""No."(Field 4).OnValidate.StdPurchCode(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 173;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : "Standard Purchase Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 11).OnValidate.Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Variant Code"(Field 11).OnValidate.ItemVariant(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Variant Code" : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Variant Code" : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCurrency(PROCEDURE 2).StdPurchCode(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCurrency : 173;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCurrency : "Standard Purchase Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StdPurchCode(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StdPurchCode : 173;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StdPurchCode : "Standard Purchase Code";
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

