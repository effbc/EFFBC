tableextension 70212 ServiceItemComponentExt extends "Service Item Component"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change OptionString on "Type(Field 5)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 6)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 8)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Service Order No."(Field 15)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Service Order No."(Field 15)". Please convert manually.


        //Unsupported feature: CodeModification on "Type(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type <> xRec.Type THEN
          VALIDATE("No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type <> xRec.Type then
          Validate("No.",'');
        */
        //end;


        //Unsupported feature: CodeModification on ""No."(Field 6).OnLookup". Please convert manually.

        //trigger "(Field 6)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Item THEN BEGIN
          Item."No." := xRec."No.";
          IF PAGE.RUNMODAL(0,Item) = ACTION::LookupOK THEN
            VALIDATE("No.",Item."No.");
        END ELSE BEGIN
          ServItem.GET("Parent Service Item No.");
          ServItem2.RESET;
          ServItem2.SETCURRENTKEY("Customer No.","Ship-to Code");
          ServItem2.SETRANGE("Customer No.",ServItem."Customer No.");
          ServItem2.SETRANGE("Ship-to Code",ServItem."Ship-to Code");
          ServItem2."No." := "No.";
          IF PAGE.RUNMODAL(0,ServItem2) = ACTION::LookupOK THEN
            VALIDATE("No.",ServItem2."No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Item then begin
          Item."No." := xRec."No.";
          if PAGE.RunModal(0,Item) = ACTION::LookupOK then
            Validate("No.",Item."No.");
        end else begin
          ServItem.Get("Parent Service Item No.");
          ServItem2.Reset;
          ServItem2.SetCurrentKey("Customer No.","Ship-to Code");
          ServItem2.SetRange("Customer No.",ServItem."Customer No.");
          ServItem2.SetRange("Ship-to Code",ServItem."Ship-to Code");
          ServItem2."No." := "No.";
          if PAGE.RunModal(0,ServItem2) = ACTION::LookupOK then
            Validate("No.",ServItem2."No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""No."(Field 6).OnValidate". Please convert manually.

        //trigger "(Field 6)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "No." <> '' THEN BEGIN
          IF Type = Type::"Service Item" THEN BEGIN
            IF "No." = "Parent Service Item No." THEN
              ERROR(
                Text000,
                Type,"No.",TABLECAPTION,ServItem.TABLECAPTION,"Parent Service Item No.");
            ServItem.GET("No.");
            "Serial No." := ServItem."Serial No.";
            "Variant Code" := ServItem."Variant Code";
            Description := ServItem.Description;
            "Description 2" := ServItem."Description 2";
          END ELSE BEGIN
            Item.GET("No.");
            "Serial No." := '';
            Description := Item.Description;
            "Description 2" := Item."Description 2";
          END;
          "Date Installed" := WORKDATE;
        END ELSE BEGIN
          "No." := '';
          "Date Installed" := 0D;
          "Serial No." := '';
          Description := '';
          "Description 2" := '';
        END;

        VALIDATE("Serial No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "No." <> '' then begin
          if Type = Type::"Service Item" then begin
            if "No." = "Parent Service Item No." then
              Error(
                Text000,
                Type,"No.",TableCaption,ServItem.TableCaption,"Parent Service Item No.");
            ServItem.Get("No.");
        #8..11
          end else begin
            Item.Get("No.");
        #14..16
          end;
          "Date Installed" := WorkDate;
        end else begin
        #20..24
        end;

        Validate("Serial No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 8).OnLookup". Please convert manually.

        //trigger OnLookup();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CASE Type OF
          Type::Item:
            BEGIN
              ItemVariant.RESET;
              ItemVariant.SETRANGE("Item No.","No.");
              IF PAGE.RUNMODAL(PAGE::"Item Variants",ItemVariant) = ACTION::LookupOK THEN
                "Variant Code" := ItemVariant.Code;
            END;
          Type::"Service Item":
            BEGIN
              IF "No." <> '' THEN BEGIN
                ServItem.GET("No.");
                ItemVariant.RESET;
                ItemVariant.SETRANGE("Item No.",ServItem."Item No.");
              END ELSE
                ItemVariant.SETRANGE("Item No.",'');
              IF PAGE.RUNMODAL(PAGE::"Item Variants",ItemVariant) = ACTION::LookupOK THEN
                VALIDATE("Variant Code",ItemVariant.Code);
            END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        case Type of
          Type::Item:
            begin
              ItemVariant.Reset;
              ItemVariant.SetRange("Item No.","No.");
              if PAGE.RunModal(PAGE::"Item Variants",ItemVariant) = ACTION::LookupOK then
                "Variant Code" := ItemVariant.Make;
            end;
          Type::"Service Item":
            begin
              if "No." <> '' then begin
                ServItem.Get("No.");
                ItemVariant.Reset;
                ItemVariant.SetRange("Item No.",ServItem."Item No.");
              end else
                ItemVariant.SetRange("Item No.",'');
              if PAGE.RunModal(PAGE::"Item Variants",ItemVariant) = ACTION::LookupOK then
                Validate("Variant Code",ItemVariant.Make);
            end;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 8).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::"Service Item" THEN
          IF "No." <> '' THEN BEGIN
            ServItem.GET("No.");
            TESTFIELD("Variant Code",ServItem."Variant Code");
          END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::"Service Item" then
          if "No." <> '' then begin
            ServItem.Get("No.");
            TestField("Variant Code",ServItem."Variant Code");
          end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Serial No."(Field 11).OnValidate". Please convert manually.

        //trigger "(Field 11)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Type = Type::"Service Item") AND
           ("No." <> '')
        THEN BEGIN
          ServItem.GET("No.");
          IF "Serial No." <> ServItem."Serial No." THEN
            ERROR(Text001,FIELDCAPTION("Serial No."),Type,"No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if (Type = Type::"Service Item") and
           ("No." <> '')
        then begin
          ServItem.Get("No.");
          if "Serial No." <> ServItem."Serial No." then
            Error(Text001,FieldCaption("Serial No."),Type,"No.");
        end;
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Active,Parent Service Item No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Active,Parent Service Item No.,From Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No.,Active"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Active,Parent Service Item No.,Type,No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Parent Service Item No.,Line No."(Key)". Please convert manually.

        key(Key1; Active, "Parent Service Item No.", "Line No.")
        {
        }
        key(Key2; Active, "Parent Service Item No.", "From Line No.")
        {
        }
        key(Key3; Type, "No.", Active)
        {
        }
        key(Key4; Active, "Parent Service Item No.", Type, "No.")
        {
        }
        key(Key5; "Parent Service Item No.", "Line No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Active THEN BEGIN
      ServItemComponent.RESET;
      ServItemComponent.SETCURRENTKEY(Active,"Parent Service Item No.","From Line No.");
      ServItemComponent.SETRANGE(Active,FALSE);
      ServItemComponent.SETRANGE("Parent Service Item No.","Parent Service Item No.");
      ServItemComponent.SETRANGE("From Line No.","Line No.");
      IF ServItemComponent.FINDFIRST THEN
        IF NOT ConfirmManagement.ConfirmProcess(STRSUBSTNO(Text002,"No."),TRUE) THEN
          ERROR('');
      ServItemComponent.DELETEALL;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Active then begin
      ServItemComponent.Reset;
      ServItemComponent.SetCurrentKey(Active,"Parent Service Item No.","From Line No.");
      ServItemComponent.SetRange(Active,false);
      ServItemComponent.SetRange("Parent Service Item No.","Parent Service Item No.");
      ServItemComponent.SetRange("From Line No.","Line No.");
      if ServItemComponent.FindFirst then
        if not ConfirmManagement.ConfirmProcess(StrSubstNo(Text002,"No."),true) then
          Error('');
      ServItemComponent.DeleteAll;
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Active AND (Type <> xRec.Type) THEN BEGIN
      ServItemComponent.RESET;
      ServItemComponent.SETCURRENTKEY(Active,"Parent Service Item No.","Line No.");
      ServItemComponent.SETRANGE(Active,FALSE);
      ServItemComponent.SETRANGE("Parent Service Item No.","Parent Service Item No.");
      IF ServItemComponent.FINDLAST THEN
        NextNo := ServItemComponent."Line No." + 1
      ELSE
        NextNo := 1;
      ServItemComponent := xRec;
      ServItemComponent.Active := FALSE;
      ServItemComponent."Line No." := NextNo;
      ServItemComponent."From Line No." := "Line No.";
      ServItemComponent."Last Date Modified" := TODAY;
      ServItemComponent.INSERT;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if Active and (Type <> xRec.Type) then begin
      ServItemComponent.Reset;
      ServItemComponent.SetCurrentKey(Active,"Parent Service Item No.","Line No.");
      ServItemComponent.SetRange(Active,false);
      ServItemComponent.SetRange("Parent Service Item No.","Parent Service Item No.");
      if ServItemComponent.FindLast then
        NextNo := ServItemComponent."Line No." + 1
      else
        NextNo := 1;
      ServItemComponent := xRec;
      ServItemComponent.Active := false;
      ServItemComponent."Line No." := NextNo;
      ServItemComponent."From Line No." := "Line No.";
      ServItemComponent."Last Date Modified" := Today;
      ServItemComponent.Insert;
    end;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.ConfirmManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ConfirmManagement : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ConfirmManagement : "Confirm Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssistEditSerialNo(PROCEDURE 1).ItemLedgEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssistEditSerialNo : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssistEditSerialNo : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SplitLineNo(PROCEDURE 2).ServiceItemComponent(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SplitLineNo : 5941;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SplitLineNo : "Service Item Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServItemComponent(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServItemComponent : 5941;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServItemComponent : "Service Item Component";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServItem(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServItem : 5940;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServItem : "Service Item";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServItem2(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServItem2 : 5940;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServItem2 : "Service Item";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemVariant(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemVariant : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemVariant : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ServOrderMgt(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ServOrderMgt : 5900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ServOrderMgt : ServOrderManagement;
    //Variable type has not been exported.
}

