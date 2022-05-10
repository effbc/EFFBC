tableextension 70039 ResJournalLineExt extends "Res. Journal Line"
{
    // version NAVW19.00.00.50221

    fields
    {

        //Unsupported feature: Change Editable on ""Resource Group No."(Field 7)". Please convert manually.


        //Unsupported feature: Change Data type on "Description(Field 8)". Please convert manually.


        //Unsupported feature: Change Description on "Description(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 18)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on ""Source Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Journal Batch Name"(Field 23)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Recurring Method"(Field 25)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Source Type"(Field 33)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Source No."(Field 34)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Order Type"(Field 90)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order Type"(Field 90)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order No."(Field 91)". Please convert manually.


        //Unsupported feature: Change Editable on ""Order Line No."(Field 92)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Time Sheet Line No."(Field 951)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Time Sheet Date"(Field 952)". Please convert manually.


        //Unsupported feature: Change Editable on ""System-Created Entry"(Field 959)". Please convert manually.


        //Unsupported feature: CodeModification on ""Posting Date"(Field 5).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Posting Date");
        VALIDATE("Document Date","Posting Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("Posting Date");
        Validate("Document Date","Posting Date");
        */
        //end;


        //Unsupported feature: CodeModification on ""Resource No."(Field 6).OnValidate". Please convert manually.

        //trigger "(Field 6)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Resource No." = '' THEN BEGIN
          CreateDim(
            DATABASE::Resource,"Resource No.",
            DATABASE::"Resource Group","Resource Group No.",
            DATABASE::Job,"Job No.");
          EXIT;
        END;

        Res.GET("Resource No.");
        Res.CheckResourcePrivacyBlocked(FALSE);
        Res.TESTFIELD(Blocked,FALSE);
        Description := Res.Name;
        "Direct Unit Cost" := Res."Direct Unit Cost";
        "Unit Cost" := Res."Unit Cost";
        "Unit Price" := Res."Unit Price";
        "Resource Group No." := Res."Resource Group No.";
        "Work Type Code" := '';
        "Gen. Prod. Posting Group" := Res."Gen. Prod. Posting Group";
        VALIDATE("Unit of Measure Code",Res."Base Unit of Measure");

        IF NOT "System-Created Entry" THEN
          IF "Time Sheet No." = '' THEN
            Res.TESTFIELD("Use Time Sheet",FALSE);

        CreateDim(
          DATABASE::Resource,"Resource No.",
          DATABASE::"Resource Group","Resource Group No.",
          DATABASE::Job,"Job No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Resource No." = '' then begin
        #2..5
          exit;
        end;

        Res.Get("Resource No.");
        Res.CheckResourcePrivacyBlocked(false);
        Res.TestField(Blocked,false);
        #12..18
        Validate("Unit of Measure Code",Res."Base Unit of Measure");

        if not "System-Created Entry" then
          if "Time Sheet No." = '' then
            Res.TestField("Use Time Sheet",false);
        #24..28
        */
        //end;


        //Unsupported feature: CodeModification on ""Work Type Code"(Field 9).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Resource No." <> '' THEN BEGIN
          IF WorkType.GET("Work Type Code") THEN
            "Unit of Measure Code" := WorkType."Unit of Measure Code"
          ELSE BEGIN
            Res.GET("Resource No.");
            "Unit of Measure Code" := Res."Base Unit of Measure";
          END;

          IF "Unit of Measure Code" = '' THEN BEGIN
            Res.GET("Resource No.");
            "Unit of Measure Code" := Res."Base Unit of Measure"
          END;
          ResourceUnitOfMeasure.GET("Resource No.","Unit of Measure Code");
          "Qty. per Unit of Measure" := ResourceUnitOfMeasure."Qty. per Unit of Measure";

          FindResUnitCost;
          FindResPrice;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Resource No." <> '' then begin
          if WorkType.Get("Work Type Code") then
            "Unit of Measure Code" := WorkType."Unit of Measure Code"
          else begin
            Res.Get("Resource No.");
            "Unit of Measure Code" := Res."Base Unit of Measure";
          end;

          if "Unit of Measure Code" = '' then begin
            Res.Get("Resource No.");
            "Unit of Measure Code" := Res."Base Unit of Measure"
          end;
          ResourceUnitOfMeasure.Get("Resource No.","Unit of Measure Code");
        #14..17
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 11).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF CurrFieldNo <> FIELDNO("Work Type Code") THEN
          TESTFIELD("Work Type Code",'');

        IF "Unit of Measure Code" = '' THEN BEGIN
          Res.GET("Resource No.");
          "Unit of Measure Code" := Res."Base Unit of Measure"
        END;
        ResourceUnitOfMeasure.GET("Resource No.","Unit of Measure Code");
        "Qty. per Unit of Measure" := ResourceUnitOfMeasure."Qty. per Unit of Measure";

        FindResUnitCost;
        FindResPrice;

        VALIDATE(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if CurrFieldNo <> FieldNo("Work Type Code") then
          TestField("Work Type Code",'');

        if "Unit of Measure Code" = '' then begin
          Res.Get("Resource No.");
          "Unit of Measure Code" := Res."Base Unit of Measure"
        end;
        ResourceUnitOfMeasure.Get("Resource No.","Unit of Measure Code");
        #9..13
        Validate(Quantity);
        */
        //end;


        //Unsupported feature: CodeModification on "Quantity(Field 12).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Unit Cost");
        VALIDATE("Unit Price");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Unit Cost");
        Validate("Unit Price");
        */
        //end;


        //Unsupported feature: CodeModification on ""Total Cost"(Field 15).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Quantity);
        GetGLSetup;
        "Unit Cost" := ROUND("Total Cost" / Quantity,GLSetup."Unit-Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Quantity);
        GetGLSetup;
        "Unit Cost" := Round("Total Cost" / Quantity,GLSetup."Unit-Amount Rounding Precision");
        */
        //end;


        //Unsupported feature: CodeModification on ""Total Price"(Field 17).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Quantity);
        GetGLSetup;
        "Unit Price" := ROUND("Total Price" / Quantity,GLSetup."Unit-Amount Rounding Precision");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField(Quantity);
        GetGLSetup;
        "Unit Price" := Round("Total Price" / Quantity,GLSetup."Unit-Amount Rounding Precision");
        */
        //end;
        field(60000; Zones; Code[10])
        {
            Caption = 'Zones';
            //TableRelation = Zones;
        }
        field(60001; Division; Code[10])
        {
            Caption = 'Divsion';
            //TableRelation = Table50012.Field1 WHERE(Field2 = FIELD(Zones));
        }
        field(60002; Station; Code[10])
        {
            Caption = 'Station';
            // TableRelation = Table50013.Field1 WHERE(Field2 = FIELD(Division));
        }
        field(60003; "Product type"; Code[10])
        {
            Caption = 'Product type';
            TableRelation = "Service Item Group".Code;
        }
        field(60004; "Sale order no"; Code[30])
        {
            Caption = 'Sale order no';
            TableRelation = "Sales Header"."No.";
        }
        field(60005; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = " ",Inprogress,Complete;
        }
        field(60006; "Work Description"; Text[250])
        {
        }
        field(60007; "Planned Hr's"; Decimal)
        {
        }
        field(60008; "Serial no"; Code[10])
        {
        }
        field(60009; State; Code[10])
        {
            TableRelation = State.Code;
        }
        field(60010; District; Code[10])
        {
            //TableRelation = Table50014.Field1 WHERE(Field2 = FIELD(State));
        }
        field(60011; City; Code[10])
        {
            TableRelation = City."City Code" WHERE("District Code" = FIELD(District));
        }
        field(60012; Place; Code[10])
        {
            TableRelation = Place."Place Code";
        }
        field(60013; "Training/Demo"; Option)
        {
            OptionMembers = " ",Railways,"EFF Employees",Others;
        }
        field(60014; Location; Code[10])
        {
            Caption = 'Department';
            TableRelation = Location.Code;
        }
        field(60015; Designation; Code[10])
        {
            TableRelation = "Resource Group"."No.";
        }
        field(60016; "Action taken"; Text[250])
        {
        }
        field(60017; Remarks; Text[250])
        {
        }
        field(60018; Reason; Text[250])
        {
        }
        field(60019; "Service item"; Code[20])
        {
            TableRelation = "Service Item"."No." WHERE(Station = FIELD(Station));

            trigger OnValidate();
            begin
                TestField(Station);
                TestField("Service item");
                //if serviceitem."No."<>xRec."Service item" then
                //serviceitem.GET(xRec."Service item");
                //MESSAGE(Rec."Service item");
                //serviceitem.SETRANGE(serviceitem."No.",xRec."Service item");
                serviceitem.Get(Rec."Service item");
                "Serial no" := serviceitem."Serial No.";
                //xRec.MODIFY;
                //MESSAGE(xRec."Serial No");
            end;
        }
        field(60020; "AMC Order NO"; Code[30])
        {
            TableRelation = "Service Contract Header"."Contract No.";
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Journal Template Name,Journal Batch Name,Line No."(Key)". Please convert manually.

        key(Journal1; "Journal Template Name", "Journal Batch Name", "Line No.")
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
    ResJnlTemplate.GET("Journal Template Name");
    ResJnlBatch.GET("Journal Template Name","Journal Batch Name");

    ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
    ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    LockTable;
    ResJnlTemplate.Get("Journal Template Name");
    ResJnlBatch.Get("Journal Template Name","Journal Batch Name");
    #4..6
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Work Type Code"(Field 9).OnValidate.ResourceUnitOfMeasure(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Work Type Code" : 205;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Work Type Code" : "Resource Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Unit of Measure Code"(Field 11).OnValidate.ResourceUnitOfMeasure(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Unit of Measure Code" : 205;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Unit of Measure Code" : "Resource Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "IsOpenedFromBatch(PROCEDURE 42).ResJournalBatch(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //IsOpenedFromBatch : 236;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsOpenedFromBatch : "Res. Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResJnlTemplate(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResJnlTemplate : 206;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResJnlTemplate : "Res. Journal Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResJnlBatch(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResJnlBatch : 236;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResJnlBatch : "Res. Journal Batch";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResJnlLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResJnlLine : 207;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResJnlLine : "Res. Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Res(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Res : 156;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Res : Resource;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResCost(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResCost : 202;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResCost : "Resource Cost";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResPrice(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResPrice : 201;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResPrice : "Resource Price";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WorkType(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WorkType : 200;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WorkType : "Work Type";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GLSetup(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GLSetup : 98;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLSetup : "General Ledger Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "NoSeriesMgt(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //NoSeriesMgt : 396;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //NoSeriesMgt : NoSeriesManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1010)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.

    var
        serviceitem: Record "Service Item";
        machinecenter: Record "Machine Center";
}

