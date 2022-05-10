tableextension 70002 LocationExt extends Location
{
    // version NAVW19.00.00.50785,NAVIN9.00.00.50785,B2B1.0,E-INV,EWB1.0

    fields
    {

        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Default Bin Code"(Field 130)". Please convert manually.


        //Unsupported feature: Change TableRelation on "City(Field 5703)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "City(Field 5703)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 5703)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Post Code"(Field 5714)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 5714)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 5714)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 5720)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Use As In-Transit"(Field 5724)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Require Put-away"(Field 5726)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Require Pick"(Field 5727)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Cross-Dock Due Date Calc."(Field 5728)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Use Cross-Docking"(Field 5729)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Require Receive"(Field 5730)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Require Shipment"(Field 5731)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Bin Mandatory"(Field 5732)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Directed Put-away and Pick"(Field 5733)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Default Bin Selection"(Field 5734)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Default Bin Selection"(Field 5734)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Outbound Whse. Handling Time"(Field 5790)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Inbound Whse. Handling Time"(Field 5791)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Use Put-away Worksheet"(Field 7306)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Pick According to FEFO"(Field 7307)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Allow Breakbulk"(Field 7308)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Bin Capacity Policy"(Field 7309)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Bin Capacity Policy"(Field 7309)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Open Shop Floor Bin Code"(Field 7313)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""To-Production Bin Code"(Field 7314)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""From-Production Bin Code"(Field 7315)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Adjustment Bin Code"(Field 7317)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Always Create Put-away Line"(Field 7319)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Always Create Pick Line"(Field 7320)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Special Equipment"(Field 7321)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Special Equipment"(Field 7321)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Receipt Bin Code"(Field 7323)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipment Bin Code"(Field 7325)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Cross-Dock Bin Code"(Field 7326)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""To-Assembly Bin Code"(Field 7330)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""From-Assembly Bin Code"(Field 7331)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Asm.-to-Order Shpt. Bin Code"(Field 7332)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Use ADCS"(Field 7700)". Please convert manually.


        //Unsupported feature: CodeModification on "City(Field 5703).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Post Code"(Field 5714).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) AND GUIALLOWED);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;


        //Unsupported feature: CodeModification on ""Use As In-Transit"(Field 5724).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Use As In-Transit" THEN BEGIN
          TESTFIELD("Require Put-away",FALSE);
          TESTFIELD("Require Pick",FALSE);
          TESTFIELD("Use Cross-Docking",FALSE);
          TESTFIELD("Require Receive",FALSE);
          TESTFIELD("Require Shipment",FALSE);
          TESTFIELD("Bin Mandatory",FALSE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Use As In-Transit" then begin
          TestField("Require Put-away",false);
          TestField("Require Pick",false);
          TestField("Use Cross-Docking",false);
          TestField("Require Receive",false);
          TestField("Require Shipment",false);
          TestField("Bin Mandatory",false);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Require Put-away"(Field 5726).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseRcptHeader.SETRANGE("Location Code",Code);
        IF NOT WhseRcptHeader.ISEMPTY THEN
          ERROR(Text008,FIELDCAPTION("Require Put-away"),xRec."Require Put-away",WhseRcptHeader.TABLECAPTION);

        IF NOT "Require Put-away" THEN BEGIN
          TESTFIELD("Directed Put-away and Pick",FALSE);
          WhseActivHeader.SETRANGE(Type,WhseActivHeader.Type::"Put-away");
          WhseActivHeader.SETRANGE("Location Code",Code);
          IF NOT WhseActivHeader.ISEMPTY THEN
            ERROR(Text008,FIELDCAPTION("Require Put-away"),TRUE,WhseActivHeader.TABLECAPTION);
          "Use Cross-Docking" := FALSE;
          "Cross-Dock Bin Code" := '';
        END ELSE
          CreateInboundWhseRequest;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseRcptHeader.SetRange("Location Code",Code);
        if not WhseRcptHeader.IsEmpty then
          Error(Text008,FieldCaption("Require Put-away"),xRec."Require Put-away",WhseRcptHeader.TableCaption);

        if not "Require Put-away" then begin
          TestField("Directed Put-away and Pick",false);
          WhseActivHeader.SetRange(Type,WhseActivHeader.Type::"Put-away");
          WhseActivHeader.SetRange("Location Code",Code);
          if not WhseActivHeader.IsEmpty then
            Error(Text008,FieldCaption("Require Put-away"),true,WhseActivHeader.TableCaption);
          "Use Cross-Docking" := false;
          "Cross-Dock Bin Code" := '';
        end else
          CreateInboundWhseRequest;
        */
        //end;


        //Unsupported feature: CodeModification on ""Require Pick"(Field 5727).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseShptHeader.SETRANGE("Location Code",Code);
        IF NOT WhseShptHeader.ISEMPTY THEN
          ERROR(Text008,FIELDCAPTION("Require Pick"),xRec."Require Pick",WhseShptHeader.TABLECAPTION);

        IF NOT "Require Pick" THEN BEGIN
          TESTFIELD("Directed Put-away and Pick",FALSE);
          WhseActivHeader.SETRANGE(Type,WhseActivHeader.Type::Pick);
          WhseActivHeader.SETRANGE("Location Code",Code);
          IF NOT WhseActivHeader.ISEMPTY THEN
            ERROR(Text008,FIELDCAPTION("Require Pick"),TRUE,WhseActivHeader.TABLECAPTION);
          "Use Cross-Docking" := FALSE;
          "Cross-Dock Bin Code" := '';
          "Pick According to FEFO" := FALSE;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseShptHeader.SetRange("Location Code",Code);
        if not WhseShptHeader.IsEmpty then
          Error(Text008,FieldCaption("Require Pick"),xRec."Require Pick",WhseShptHeader.TableCaption);

        if not "Require Pick" then begin
          TestField("Directed Put-away and Pick",false);
          WhseActivHeader.SetRange(Type,WhseActivHeader.Type::Pick);
          WhseActivHeader.SetRange("Location Code",Code);
          if not WhseActivHeader.IsEmpty then
            Error(Text008,FieldCaption("Require Pick"),true,WhseActivHeader.TableCaption);
          "Use Cross-Docking" := false;
          "Cross-Dock Bin Code" := '';
          "Pick According to FEFO" := false;
        end;
        */
        //end;


        //Unsupported feature: Change OptionString on ""Use Cross-Docking"(Field 5729).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Use Cross-Docking" THEN BEGIN
          TESTFIELD("Require Receive");
          TESTFIELD("Require Shipment");
          TESTFIELD("Require Put-away");
          TESTFIELD("Require Pick");
        END ELSE
          "Cross-Dock Bin Code" := '';
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Use Cross-Docking" then begin
          TestField("Require Receive");
          TestField("Require Shipment");
          TestField("Require Put-away");
          TestField("Require Pick");
        end else
          "Cross-Dock Bin Code" := '';
        */
        //end;


        //Unsupported feature: CodeModification on ""Require Receive"(Field 5730).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT "Require Receive" THEN BEGIN
          TESTFIELD("Directed Put-away and Pick",FALSE);
          WhseRcptHeader.SETRANGE("Location Code",Code);
          IF NOT WhseRcptHeader.ISEMPTY THEN
            ERROR(Text008,FIELDCAPTION("Require Receive"),TRUE,WhseRcptHeader.TABLECAPTION);
          "Receipt Bin Code" := '';
          "Use Cross-Docking" := FALSE;
          "Cross-Dock Bin Code" := '';
        END ELSE BEGIN
          WhseActivHeader.SETRANGE(Type,WhseActivHeader.Type::"Put-away");
          WhseActivHeader.SETRANGE("Location Code",Code);
          IF NOT WhseActivHeader.ISEMPTY THEN
            ERROR(Text008,FIELDCAPTION("Require Receive"),FALSE,WhseActivHeader.TABLECAPTION);

          CreateInboundWhseRequest;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not "Require Receive" then begin
          TestField("Directed Put-away and Pick",false);
          WhseRcptHeader.SetRange("Location Code",Code);
          if not WhseRcptHeader.IsEmpty then
            Error(Text008,FieldCaption("Require Receive"),true,WhseRcptHeader.TableCaption);
          "Receipt Bin Code" := '';
          "Use Cross-Docking" := false;
          "Cross-Dock Bin Code" := '';
        end else begin
          WhseActivHeader.SetRange(Type,WhseActivHeader.Type::"Put-away");
          WhseActivHeader.SetRange("Location Code",Code);
          if not WhseActivHeader.IsEmpty then
            Error(Text008,FieldCaption("Require Receive"),false,WhseActivHeader.TableCaption);

          CreateInboundWhseRequest;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Require Shipment"(Field 5731).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT "Require Shipment" THEN BEGIN
          TESTFIELD("Directed Put-away and Pick",FALSE);
          WhseShptHeader.SETRANGE("Location Code",Code);
          IF NOT WhseShptHeader.ISEMPTY THEN
            ERROR(Text008,FIELDCAPTION("Require Shipment"),TRUE,WhseShptHeader.TABLECAPTION);
          "Shipment Bin Code" := '';
          "Use Cross-Docking" := FALSE;
          "Cross-Dock Bin Code" := '';
        END ELSE BEGIN
          WhseActivHeader.SETRANGE(Type,WhseActivHeader.Type::Pick);
          WhseActivHeader.SETRANGE("Location Code",Code);
          IF NOT WhseActivHeader.ISEMPTY THEN
            ERROR(Text008,FIELDCAPTION("Require Shipment"),FALSE,WhseActivHeader.TABLECAPTION);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not "Require Shipment" then begin
          TestField("Directed Put-away and Pick",false);
          WhseShptHeader.SetRange("Location Code",Code);
          if not WhseShptHeader.IsEmpty then
            Error(Text008,FieldCaption("Require Shipment"),true,WhseShptHeader.TableCaption);
          "Shipment Bin Code" := '';
          "Use Cross-Docking" := false;
          "Cross-Dock Bin Code" := '';
        end else begin
          WhseActivHeader.SetRange(Type,WhseActivHeader.Type::Pick);
          WhseActivHeader.SetRange("Location Code",Code);
          if not WhseActivHeader.IsEmpty then
            Error(Text008,FieldCaption("Require Shipment"),false,WhseActivHeader.TableCaption);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Bin Mandatory"(Field 5732).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bin Mandatory" AND NOT xRec."Bin Mandatory" THEN BEGIN
          Window.OPEN(Text010);
          ItemLedgEntry.SETRANGE(Open,TRUE);
          ItemLedgEntry.SETRANGE("Location Code",Code);
          IF NOT ItemLedgEntry.ISEMPTY THEN
            ERROR(Text009,FIELDCAPTION("Bin Mandatory"));

          "Default Bin Selection" := "Default Bin Selection"::"Fixed Bin";
        END;

        WhseActivHeader.SETRANGE("Location Code",Code);
        IF NOT WhseActivHeader.ISEMPTY THEN
          ERROR(Text008,FIELDCAPTION("Bin Mandatory"),xRec."Bin Mandatory",WhseActivHeader.TABLECAPTION);

        WhseRcptHeader.SETCURRENTKEY("Location Code");
        WhseRcptHeader.SETRANGE("Location Code",Code);
        IF NOT WhseRcptHeader.ISEMPTY THEN
          ERROR(Text008,FIELDCAPTION("Bin Mandatory"),xRec."Bin Mandatory",WhseRcptHeader.TABLECAPTION);

        WhseShptHeader.SETCURRENTKEY("Location Code");
        WhseShptHeader.SETRANGE("Location Code",Code);
        IF NOT WhseShptHeader.ISEMPTY THEN
          ERROR(Text008,FIELDCAPTION("Bin Mandatory"),xRec."Bin Mandatory",WhseShptHeader.TABLECAPTION);

        IF NOT "Bin Mandatory" AND xRec."Bin Mandatory" THEN BEGIN
          WhseEntry.SETRANGE("Location Code",Code);
          WhseEntry.CALCSUMS("Qty. (Base)");
          IF WhseEntry."Qty. (Base)" <> 0 THEN
            ERROR(Text002,FIELDCAPTION("Bin Mandatory"));
        END;

        IF NOT "Bin Mandatory" THEN BEGIN
          "Open Shop Floor Bin Code" := '';
          "To-Production Bin Code" := '';
          "From-Production Bin Code" := '';
          "Adjustment Bin Code" := '';
          "Receipt Bin Code" := '';
          "Shipment Bin Code" := '';
          "Cross-Dock Bin Code" := '';
          "To-Assembly Bin Code" := '';
          "From-Assembly Bin Code" := '';
          WhseIntegrationMgt.CheckLocationOnManufBins(Rec);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bin Mandatory" and not xRec."Bin Mandatory" then begin
          Window.Open(Text010);
          ItemLedgEntry.SetRange(Open,true);
          ItemLedgEntry.SetRange("Location Code",Code);
          if not ItemLedgEntry.IsEmpty then
            Error(Text009,FieldCaption("Bin Mandatory"));

          "Default Bin Selection" := "Default Bin Selection"::"Fixed Bin";
        end;

        WhseActivHeader.SetRange("Location Code",Code);
        if not WhseActivHeader.IsEmpty then
          Error(Text008,FieldCaption("Bin Mandatory"),xRec."Bin Mandatory",WhseActivHeader.TableCaption);

        WhseRcptHeader.SetCurrentKey("Location Code");
        WhseRcptHeader.SetRange("Location Code",Code);
        if not WhseRcptHeader.IsEmpty then
          Error(Text008,FieldCaption("Bin Mandatory"),xRec."Bin Mandatory",WhseRcptHeader.TableCaption);

        WhseShptHeader.SetCurrentKey("Location Code");
        WhseShptHeader.SetRange("Location Code",Code);
        if not WhseShptHeader.IsEmpty then
          Error(Text008,FieldCaption("Bin Mandatory"),xRec."Bin Mandatory",WhseShptHeader.TableCaption);

        if not "Bin Mandatory" and xRec."Bin Mandatory" then begin
          WhseEntry.SetRange("Location Code",Code);
          WhseEntry.CalcSums("Qty. (Base)");
          if WhseEntry."Qty. (Base)" <> 0 then
            Error(Text002,FieldCaption("Bin Mandatory"));
        end;

        if not "Bin Mandatory" then begin
        #33..42
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Directed Put-away and Pick"(Field 5733).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseActivHeader.SETRANGE("Location Code",Code);
        IF NOT WhseActivHeader.ISEMPTY THEN
          ERROR(Text014,FIELDCAPTION("Directed Put-away and Pick"),WhseActivHeader.TABLECAPTION);

        WhseRcptHeader.SETCURRENTKEY("Location Code");
        WhseRcptHeader.SETRANGE("Location Code",Code);
        IF NOT WhseRcptHeader.ISEMPTY THEN
          ERROR(Text014,FIELDCAPTION("Directed Put-away and Pick"),WhseRcptHeader.TABLECAPTION);

        WhseShptHeader.SETCURRENTKEY("Location Code");
        WhseShptHeader.SETRANGE("Location Code",Code);
        IF NOT WhseShptHeader.ISEMPTY THEN
          ERROR(Text014,FIELDCAPTION("Directed Put-away and Pick"),WhseShptHeader.TABLECAPTION);

        IF "Directed Put-away and Pick" THEN BEGIN
          TESTFIELD("Use As In-Transit",FALSE);
          TESTFIELD("Bin Mandatory");
          VALIDATE("Require Receive",TRUE);
          VALIDATE("Require Shipment",TRUE);
          VALIDATE("Require Put-away",TRUE);
          VALIDATE("Require Pick",TRUE);
          VALIDATE("Use Cross-Docking",TRUE);
          "Default Bin Selection" := "Default Bin Selection"::" ";
        END ELSE
          VALIDATE("Adjustment Bin Code",'');

        IF (NOT "Directed Put-away and Pick") AND xRec."Directed Put-away and Pick" THEN BEGIN
          "Default Bin Selection" := "Default Bin Selection"::"Fixed Bin";
          "Use Put-away Worksheet" := FALSE;
          VALIDATE("Use Cross-Docking",FALSE);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseActivHeader.SetRange("Location Code",Code);
        if not WhseActivHeader.IsEmpty then
          Error(Text014,FieldCaption("Directed Put-away and Pick"),WhseActivHeader.TableCaption);

        WhseRcptHeader.SetCurrentKey("Location Code");
        WhseRcptHeader.SetRange("Location Code",Code);
        if not WhseRcptHeader.IsEmpty then
          Error(Text014,FieldCaption("Directed Put-away and Pick"),WhseRcptHeader.TableCaption);

        WhseShptHeader.SetCurrentKey("Location Code");
        WhseShptHeader.SetRange("Location Code",Code);
        if not WhseShptHeader.IsEmpty then
          Error(Text014,FieldCaption("Directed Put-away and Pick"),WhseShptHeader.TableCaption);

        if "Directed Put-away and Pick" then begin
          TestField("Use As In-Transit",false);
          TestField("Bin Mandatory");
          Validate("Require Receive",true);
          Validate("Require Shipment",true);
          Validate("Require Put-away",true);
          Validate("Require Pick",true);
          Validate("Use Cross-Docking",true);
          "Default Bin Selection" := "Default Bin Selection"::" ";
        end else
          Validate("Adjustment Bin Code",'');

        if (not "Directed Put-away and Pick") and xRec."Directed Put-away and Pick" then begin
          "Default Bin Selection" := "Default Bin Selection"::"Fixed Bin";
          "Use Put-away Worksheet" := false;
          Validate("Use Cross-Docking",false);
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Default Bin Selection"(Field 5734).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Default Bin Selection" <> xRec."Default Bin Selection") AND ("Default Bin Selection" = "Default Bin Selection"::" ") THEN
          TESTFIELD("Directed Put-away and Pick");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("Default Bin Selection" <> xRec."Default Bin Selection") and ("Default Bin Selection" = "Default Bin Selection"::" ") then
          TestField("Directed Put-away and Pick");
        */
        //end;


        //Unsupported feature: CodeModification on ""Open Shop Floor Bin Code"(Field 7313).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode(Code,
          "Open Shop Floor Bin Code",
          FIELDCAPTION("Open Shop Floor Bin Code"),
          DATABASE::Location,Code);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode(Code,
          "Open Shop Floor Bin Code",
          FieldCaption("Open Shop Floor Bin Code"),
          DATABASE::Location,Code);
        */
        //end;


        //Unsupported feature: CodeModification on ""To-Production Bin Code"(Field 7314).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode(Code,
          "To-Production Bin Code",
          FIELDCAPTION("To-Production Bin Code"),
          DATABASE::Location,Code);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode(Code,
          "To-Production Bin Code",
          FieldCaption("To-Production Bin Code"),
          DATABASE::Location,Code);
        */
        //end;


        //Unsupported feature: CodeModification on ""From-Production Bin Code"(Field 7315).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode(Code,
          "From-Production Bin Code",
          FIELDCAPTION("From-Production Bin Code"),
          DATABASE::Location,Code);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode(Code,
          "From-Production Bin Code",
          FieldCaption("From-Production Bin Code"),
          DATABASE::Location,Code);
        */
        //end;


        //Unsupported feature: CodeModification on ""Adjustment Bin Code"(Field 7317).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Adjustment Bin Code" <> xRec."Adjustment Bin Code" THEN BEGIN
          IF "Adjustment Bin Code" = '' THEN
            CheckEmptyBin(
              xRec."Adjustment Bin Code",FIELDCAPTION("Adjustment Bin Code"))
          ELSE
            CheckEmptyBin(
              "Adjustment Bin Code",FIELDCAPTION("Adjustment Bin Code"));

          CheckWhseAdjmtJnl;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Adjustment Bin Code" <> xRec."Adjustment Bin Code" then begin
          if "Adjustment Bin Code" = '' then
            CheckEmptyBin(
              xRec."Adjustment Bin Code",FieldCaption("Adjustment Bin Code"))
          else
            CheckEmptyBin(
              "Adjustment Bin Code",FieldCaption("Adjustment Bin Code"));

          CheckWhseAdjmtJnl;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""To-Assembly Bin Code"(Field 7330).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode(Code,
          "To-Assembly Bin Code",
          FIELDCAPTION("To-Assembly Bin Code"),
          DATABASE::Location,Code);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode(Code,
          "To-Assembly Bin Code",
          FieldCaption("To-Assembly Bin Code"),
          DATABASE::Location,Code);
        */
        //end;


        //Unsupported feature: CodeModification on ""From-Assembly Bin Code"(Field 7331).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode(Code,
          "From-Assembly Bin Code",
          FIELDCAPTION("From-Assembly Bin Code"),
          DATABASE::Location,Code);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode(Code,
          "From-Assembly Bin Code",
          FieldCaption("From-Assembly Bin Code"),
          DATABASE::Location,Code);
        */
        //end;


        //Unsupported feature: CodeModification on ""Asm.-to-Order Shpt. Bin Code"(Field 7332).OnValidate". Please convert manually.

        //trigger -to-Order Shpt();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode(Code,
          "Asm.-to-Order Shpt. Bin Code",
          FIELDCAPTION("Asm.-to-Order Shpt. Bin Code"),
          DATABASE::Location,Code);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        WhseIntegrationMgt.CheckBinCode(Code,
          "Asm.-to-Order Shpt. Bin Code",
          FieldCaption("Asm.-to-Order Shpt. Bin Code"),
          DATABASE::Location,Code);
        */
        //end;
        field(13701; "Purch. Invoice Nos."; Code[10])
        {
            CaptionML = ENU = 'Purch. Invoice Nos.',
                        ENN = 'Purch. Invoice Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(13702; "Purch. Receipt Nos."; Code[10])
        {
            CaptionML = ENU = 'Purch. Receipt Nos.',
                        ENN = 'Purch. Receipt Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(13703; "Sales Invoice Nos."; Code[10])
        {
            CaptionML = ENU = 'Sales Invoice Nos.',
                        ENN = 'Sales Invoice Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(13704; "Sales Shipment Nos."; Code[10])
        {
            CaptionML = ENU = 'Sales Shipment Nos.',
                        ENN = 'Sales Shipment Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(13707; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            // TableRelation = "Excise Bus. Posting Group";
        }
        field(13708; "E.C.C. No."; Code[20])
        {
            CaptionML = ENU = 'E.C.C. No.',
                        ENN = 'E.C.C. No.';
            DataClassification = ToBeClassified;
            //TableRelation = "E.C.C. Nos.";
        }
        field(13714; "State Code"; Code[10])
        {
            CaptionML = ENU = 'State Code',
                        ENN = 'State Code';
            DataClassification = ToBeClassified;
            TableRelation = State;

            trigger OnValidate();
            begin
                TestField("GST Registration No.", '');
            end;
        }
        field(16360; "Subcontracting Location"; Boolean)
        {
            CaptionML = ENU = 'Subcontracting Location',
                        ENN = 'Subcontracting Location';
            DataClassification = ToBeClassified;
        }
        field(16361; "Subcontractor No."; Code[20])
        {
            CaptionML = ENU = 'Subcontractor No.',
                        ENN = 'Subcontractor No.';
            DataClassification = ToBeClassified;
            TableRelation = Vendor;
        }
        field(16362; "T.A.N. No."; Code[10])
        {
            CaptionML = ENU = 'T.A.N. No.',
                        ENN = 'T.A.N. No.';
            DataClassification = ToBeClassified;
            //TableRelation = "T.A.N. Nos.";
        }
        field(16363; "T.I.N. No."; Code[30])
        {
            CaptionML = ENU = 'T.I.N. No.',
                        ENN = 'T.I.N. No.';
            DataClassification = ToBeClassified;
            // TableRelation = "T.I.N. Nos.".Code;
        }
        field(16364; "Service Tax Registration No."; Code[20])
        {
            CaptionML = ENU = 'Service Tax Registration No.',
                        ENN = 'Service Tax Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = "Service Tax Registration Nos.".Code;
        }
        field(16500; "T.C.A.N. No."; Code[10])
        {
            CaptionML = ENU = 'T.C.A.N. No.',
                        ENN = 'T.C.A.N. No.';
            DataClassification = ToBeClassified;
            //TableRelation = "T.C.A.N. No.";
        }
        field(16501; Composition; Boolean)
        {
            CaptionML = ENU = 'Composition',
                        ENN = 'Composition';
            DataClassification = ToBeClassified;
        }
        field(16502; "Export or Deemed Export"; Boolean)
        {
            CaptionML = ENU = 'Export or Deemed Export',
                        ENN = 'Export or Deemed Export';
            DataClassification = ToBeClassified;
        }
        field(16503; "Composition Type"; Option)
        {
            CaptionML = ENU = 'Composition Type',
                        ENN = 'Composition Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Retailer,Works Contract,Bakery,Restaurant / Club,Second Hand Motor Vehicle',
                              ENN = ' ,Retailer,Works Contract,Bakery,Restaurant / Club,Second Hand Motor Vehicle';
            OptionMembers = " ",Retailer,"Works Contract",Bakery,"Restaurant / Club","Second Hand Motor Vehicle";
        }
        field(16504; "Trading Location"; Boolean)
        {
            CaptionML = ENU = 'Trading Location',
                        ENN = 'Trading Location';
            DataClassification = ToBeClassified;
        }
        field(16505; "Testing Location"; Boolean)
        {
            CaptionML = ENU = 'Testing Location',
                        ENN = 'Testing Location';
            DataClassification = ToBeClassified;
        }
        field(16506; "Input Service Distributor"; Boolean)
        {
            CaptionML = ENU = 'Input Service Distributor',
                        ENN = 'Input Service Distributor';
            DataClassification = ToBeClassified;
        }
        field(16507; "Sales Shipment Nos. (Captive)"; Code[10])
        {
            CaptionML = ENU = 'Sales Shipment Nos. (Captive)',
                        ENN = 'Sales Shipment Nos. (Captive)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16508; "Purch. Credit Memo Nos."; Code[10])
        {
            CaptionML = ENU = 'Purch. Credit Memo Nos.',
                        ENN = 'Purch. Credit Memo Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16509; "Sales Return Receipt Nos."; Code[10])
        {
            CaptionML = ENU = 'Sales Return Receipt Nos.',
                        ENN = 'Sales Return Receipt Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16510; "Sales Credit Memo Nos."; Code[10])
        {
            CaptionML = ENU = 'Sales Credit Memo Nos.',
                        ENN = 'Sales Credit Memo Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16511; "Purch. Ret. Shipment Nos."; Code[10])
        {
            CaptionML = ENU = 'Purch. Ret. Shipment Nos.',
                        ENN = 'Purch. Ret. Shipment Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16512; "Transfer Shipment Nos."; Code[10])
        {
            CaptionML = ENU = 'Transfer Shipment Nos.',
                        ENN = 'Transfer Shipment Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16513; "Transfer Receipt Nos."; Code[10])
        {
            CaptionML = ENU = 'Transfer Receipt Nos.',
                        ENN = 'Transfer Receipt Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16514; "Purh. Invoice Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Purh. Invoice Nos. (Trading)',
                        ENN = 'Purh. Invoice Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16515; "Sales Invoice Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Sales Invoice Nos. (Trading)',
                        ENN = 'Sales Invoice Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16516; "Sales Ret Rcpt Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Sales Ret Rcpt Nos. (Trading)',
                        ENN = 'Sales Ret Rcpt Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16517; "Purch. Ret Shpt Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Purch. Ret Shpt Nos. (Trading)',
                        ENN = 'Purch. Ret Shpt Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16518; "Purch. Rcpt. Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Purch. Rcpt. Nos. (Trading)',
                        ENN = 'Purch. Rcpt. Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16519; "Sales Shpt. Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Sales Shpt. Nos. (Trading)',
                        ENN = 'Sales Shpt. Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16520; "Purch Cr. Memo Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Purch Cr. Memo Nos. (Trading)',
                        ENN = 'Purch Cr. Memo Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16521; "Sale Cr. Memo Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Sale Cr. Memo Nos. (Trading)',
                        ENN = 'Sale Cr. Memo Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16522; "L.S.T. No."; Code[20])
        {
            CaptionML = ENU = 'L.S.T. No.',
                        ENN = 'L.S.T. No.';
            DataClassification = ToBeClassified;
        }
        field(16523; "C.S.T No."; Code[20])
        {
            CaptionML = ENU = 'C.S.T No.',
                        ENN = 'C.S.T No.';
            DataClassification = ToBeClassified;
        }
        field(16524; "C.E. Range"; Code[20])
        {
            CaptionML = ENU = 'C.E. Range',
                        ENN = 'C.E. Range';
            DataClassification = ToBeClassified;
        }
        field(16525; "C.E. Commissionerate"; Code[20])
        {
            CaptionML = ENU = 'C.E. Commissionerate',
                        ENN = 'C.E. Commissionerate';
            DataClassification = ToBeClassified;
        }
        field(16526; "C.E. Division"; Code[20])
        {
            CaptionML = ENU = 'C.E. Division',
                        ENN = 'C.E. Division';
            DataClassification = ToBeClassified;
        }
        field(16527; "Posted Serv. Shipment Nos."; Code[10])
        {
            CaptionML = ENU = 'Posted Serv. Shipment Nos.',
                        ENN = 'Posted Serv. Shipment Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16528; "Posted Serv. Invoice Nos."; Code[10])
        {
            CaptionML = ENU = 'Posted Serv. Invoice Nos.',
                        ENN = 'Posted Serv. Invoice Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16529; "Posted Serv. Cr. Memo Nos."; Code[10])
        {
            CaptionML = ENU = 'Posted Serv. Cr. Memo Nos.',
                        ENN = 'Posted Serv. Cr. Memo Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16530; "Serv. Shipment Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Shipment Nos. (Trading)',
                        ENN = 'Serv. Shipment Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16531; "Serv. Invoice Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Invoice Nos. (Trading)',
                        ENN = 'Serv. Invoice Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16532; "Serv. Cr. Memo Nos. (Trading)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Cr. Memo Nos. (Trading)',
                        ENN = 'Serv. Cr. Memo Nos. (Trading)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16600; "GST Registration No."; Code[15])
        {
            CaptionML = ENU = 'GST Registration No.',
                        ENN = 'GST Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = "GST Registration Nos." WHERE("State Code" = FIELD("State Code"));

            trigger OnValidate();
            var
                GSTRegistrationNos: Record "GST Registration Nos.";
            begin

            end;
        }
        field(16608; "Sales Inv. Nos. (Exempt)"; Code[10])
        {
            CaptionML = ENU = 'Sales Inv. Nos. (Exempt)',
                        ENN = 'Sales Inv. Nos. (Exempt)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16609; "Sales Cr. Memo Nos. (Exempt)"; Code[10])
        {
            CaptionML = ENU = 'Sales Cr. Memo Nos. (Exempt)',
                        ENN = 'Sales Cr. Memo Nos. (Exempt)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16610; "Sales Inv. No. (Export)"; Code[10])
        {
            CaptionML = ENU = 'Sales Inv. No. (Export)',
                        ENN = 'Sales Inv. No. (Export)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16611; "Sales Cr. Memo No. (Export)"; Code[10])
        {
            CaptionML = ENU = 'Sales Cr. Memo No. (Export)',
                        ENN = 'Sales Cr. Memo No. (Export)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16612; "Sales Inv. No. (Supp)"; Code[10])
        {
            CaptionML = ENU = 'Sales Inv. No. (Supp)',
                        ENN = 'Sales Inv. No. (Supp)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16613; "Sales Cr. Memo No. (Supp)"; Code[10])
        {
            CaptionML = ENU = 'Sales Cr. Memo No. (Supp)',
                        ENN = 'Sales Cr. Memo No. (Supp)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16614; "Sales Inv. No. (Debit Note)"; Code[10])
        {
            CaptionML = ENU = 'Sales Inv. No. (Debit Note)',
                        ENN = 'Sales Inv. No. (Debit Note)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16615; "Serv. Inv. Nos. (Exempt)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Inv. Nos. (Exempt)',
                        ENN = 'Serv. Inv. Nos. (Exempt)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16616; "Serv. Cr. Memo Nos. (Exempt)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Cr. Memo Nos. (Exempt)',
                        ENN = 'Serv. Cr. Memo Nos. (Exempt)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16617; "Serv. Inv. Nos. (Export)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Inv. Nos. (Export)',
                        ENN = 'Serv. Inv. Nos. (Export)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16618; "Serv. Cr. Memo Nos. (Export)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Cr. Memo Nos. (Export)',
                        ENN = 'Serv. Cr. Memo Nos. (Export)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16619; "Serv. Inv. Nos. (Supp)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Inv. Nos. (Supp)',
                        ENN = 'Serv. Inv. Nos. (Supp)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16620; "Serv. Cr. Memo Nos. (Supp)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Cr. Memo Nos. (Supp)',
                        ENN = 'Serv. Cr. Memo Nos. (Supp)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16621; "Serv. Inv. Nos. (Debit Note)"; Code[10])
        {
            CaptionML = ENU = 'Serv. Inv. Nos. (Debit Note)',
                        ENN = 'Serv. Inv. Nos. (Debit Note)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16622; "Sales Inv. Nos. (Non-GST)"; Code[10])
        {
            CaptionML = ENU = 'Sales Inv. Nos. (Non-GST)',
                        ENN = 'Sales Inv. Nos. (Non-GST)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16623; "Sales Cr. Memo Nos. (Non-GST)"; Code[10])
        {
            CaptionML = ENU = 'Sales Cr. Memo Nos. (Non-GST)',
                        ENN = 'Sales Cr. Memo Nos. (Non-GST)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16624; "Posted Serv. Trans. Shpt. Nos."; Code[10])
        {
            CaptionML = ENU = 'Posted Serv. Trans. Shpt. Nos.',
                        ENN = 'Posted Serv. Trans. Shpt. Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16625; "Posted Serv. Trans. Rcpt. Nos."; Code[10])
        {
            CaptionML = ENU = 'Posted Serv. Trans. Rcpt. Nos.',
                        ENN = 'Posted Serv. Trans. Rcpt. Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16626; "GST Liability Invoice"; Code[10])
        {
            CaptionML = ENU = 'GST Liability Invoice',
                        ENN = 'GST Liability Invoice';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16627; "GST Input Service Distributor"; Boolean)
        {
            CaptionML = ENU = 'GST Input Service Distributor',
                        ENN = 'GST Input Service Distributor';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(16628; "Purch. Inv. Nos. (Unreg)"; Code[10])
        {
            CaptionML = ENU = 'Purch. Inv. Nos. (Unreg)',
                        ENN = 'Purch. Inv. Nos. (Unreg)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16629; "Purch. Cr. Memo Nos. (Unreg)"; Code[10])
        {
            CaptionML = ENU = 'Purch. Cr. Memo Nos. (Unreg)',
                        ENN = 'Purch. Cr. Memo Nos. (Unreg)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16630; "Purch. Inv. Nos. (Unreg Supp)"; Code[10])
        {
            CaptionML = ENU = 'Purch. Inv. Nos. (Unreg Supp)',
                        ENN = 'Purch. Inv. Nos. (Unreg Supp)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16631; "Pur. Inv. Nos.(Unreg Deb.Note)"; Code[10])
        {
            CaptionML = ENU = 'Pur. Inv. Nos.(Unreg Deb.Note)',
                        ENN = 'Pur. Inv. Nos.(Unreg Deb.Note)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16632; "GST Transfer Shipment No."; Code[10])
        {
            CaptionML = ENU = 'GST Transfer Shipment No.',
                        ENN = 'GST Transfer Shipment No.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16633; "Posted Dist. Invoice Nos."; Code[10])
        {
            CaptionML = ENU = 'Posted Dist. Invoice Nos.',
                        ENN = 'Posted Dist. Invoice Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16634; "Posted Dist. Cr. Memo Nos."; Code[10])
        {
            CaptionML = ENU = 'Posted Dist. Cr. Memo Nos.',
                        ENN = 'Posted Dist. Cr. Memo Nos.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16635; "Receipt Nos. for Bonded Loc."; Code[10])
        {
            CaptionML = ENU = 'Receipt Nos. for Bonded Loc.',
                        ENN = 'Receipt Nos. for Bonded Loc.';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16636; "Bonded warehouse"; Boolean)
        {
            CaptionML = ENU = 'Bonded warehouse',
                        ENN = 'Bonded warehouse';
            DataClassification = ToBeClassified;
        }
        field(16637; "Purch. Inv. Nos. (Reg)"; Code[10])
        {
            CaptionML = ENU = 'Purch. Inv. Nos. (Reg)',
                        ENN = 'Purch. Inv. Nos. (Reg)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16638; "Purch. Inv. Nos. (Reg Supp)"; Code[10])
        {
            CaptionML = ENU = 'Purch. Inv. Nos. (Reg Supp)',
                        ENN = 'Purch. Inv. Nos. (Reg Supp)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16639; "Pur. Inv. Nos.(Reg Deb.Note)"; Code[10])
        {
            CaptionML = ENU = 'Pur. Inv. Nos.(Reg Deb.Note)',
                        ENN = 'Pur. Inv. Nos.(Reg Deb.Note)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16640; "Purch. Cr. Memo Nos. (Reg)"; Code[10])
        {
            CaptionML = ENU = 'Purch. Cr. Memo Nos. (Reg)',
                        ENN = 'Purch. Cr. Memo Nos. (Reg)';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(16641; "Location ARN No."; Code[15])
        {
            CaptionML = ENU = 'Location ARN No.',
                        ENN = 'Location ARN No.';
            DataClassification = ToBeClassified;
        }
        field(50500; "User Name"; Text[250])
        {
            Caption = 'User Name';
            Description = 'E-INV';
        }
        field(50501; Password; Text[250])
        {
            Caption = 'Password';
            Description = 'E-INV';
        }
        field(60001; "QC Enabled Location"; Boolean)
        {
            Description = 'B2B';
        }
        field(60002; Stores; Option)
        {
            OptionMembers = STR,"CS STR","RD STR","PRD STR",SCRAP;
        }
        field(60010; "E-Way Bill User Name"; Text[250])
        {
            Caption = 'User Name';
            DataClassification = ToBeClassified;
        }
        field(60011; "E-Way Bill Password"; Text[250])
        {
            Caption = 'Password';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {

        //Unsupported feature: PropertyChange on "Code(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Use As In-Transit,Bin Mandatory"(Key)". Please convert manually.

        key(UseAs; "Use As In-Transit", "Bin Mandatory")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    StockkeepingUnit.SETRANGE("Location Code",Code);
    IF NOT StockkeepingUnit.ISEMPTY THEN
      ERROR(CannotDeleteLocSKUExistErr,Code);

    WMSCheckWarehouse;

    TransferRoute.SETRANGE("Transfer-from Code",Code);
    TransferRoute.DELETEALL;
    TransferRoute.RESET;
    TransferRoute.SETRANGE("Transfer-to Code",Code);
    TransferRoute.DELETEALL;

    WhseEmployee.SETRANGE("Location Code",Code);
    WhseEmployee.DELETEALL(TRUE);

    WorkCenter.SETRANGE("Location Code",Code);
    IF WorkCenter.FINDSET(TRUE) THEN
      REPEAT
        WorkCenter.VALIDATE("Location Code",'');
        WorkCenter.MODIFY(TRUE);
      UNTIL WorkCenter.NEXT = 0;

    CalendarManagement.DeleteCustomizedBaseCalendarData(CustomizedCalendarChange."Source Type"::Location,Code);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    StockkeepingUnit.SetRange("Location Code",Code);
    if not StockkeepingUnit.IsEmpty then
      Error(CannotDeleteLocSKUExistErr,Code);
    #4..6
    TransferRoute.SetRange("Transfer-from Code",Code);
    TransferRoute.DeleteAll;
    TransferRoute.Reset;
    TransferRoute.SetRange("Transfer-to Code",Code);
    TransferRoute.DeleteAll;

    WhseEmployee.SetRange("Location Code",Code);
    WhseEmployee.DeleteAll(true);

    WorkCenter.SetRange("Location Code",Code);
    if WorkCenter.FindSet(true) then
      repeat
        WorkCenter.Validate("Location Code",'');
        WorkCenter.Modify(true);
      until WorkCenter.Next = 0;

    CalendarManagement.DeleteCustomizedBaseCalendarData(CustomizedCalendarChange."Source Type"::Location,Code);
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""E-Mail"(Field 5718).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Require Put-away"(Field 5726).OnValidate.WhseActivHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Require Put-away" : 5766;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Require Put-away" : "Warehouse Activity Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Require Put-away"(Field 5726).OnValidate.WhseRcptHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Require Put-away" : 7316;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Require Put-away" : "Warehouse Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Require Pick"(Field 5727).OnValidate.WhseActivHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Require Pick" : 5766;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Require Pick" : "Warehouse Activity Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Require Pick"(Field 5727).OnValidate.WhseShptHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Require Pick" : 7320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Require Pick" : "Warehouse Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Require Receive"(Field 5730).OnValidate.WhseRcptHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Require Receive" : 7316;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Require Receive" : "Warehouse Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Require Receive"(Field 5730).OnValidate.WhseActivHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Require Receive" : 5766;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Require Receive" : "Warehouse Activity Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Require Shipment"(Field 5731).OnValidate.WhseShptHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Require Shipment" : 7320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Require Shipment" : "Warehouse Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Require Shipment"(Field 5731).OnValidate.WhseActivHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Require Shipment" : 5766;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Require Shipment" : "Warehouse Activity Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Mandatory"(Field 5732).OnValidate.ItemLedgEntry(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Mandatory" : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Mandatory" : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Mandatory"(Field 5732).OnValidate.WhseEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Mandatory" : 7312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Mandatory" : "Warehouse Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Mandatory"(Field 5732).OnValidate.WhseActivHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Mandatory" : 5766;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Mandatory" : "Warehouse Activity Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Mandatory"(Field 5732).OnValidate.WhseShptHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Mandatory" : 7320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Mandatory" : "Warehouse Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Mandatory"(Field 5732).OnValidate.WhseRcptHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Mandatory" : 7316;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Mandatory" : "Warehouse Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Bin Mandatory"(Field 5732).OnValidate.WhseIntegrationMgt(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Bin Mandatory" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Bin Mandatory" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Directed Put-away and Pick"(Field 5733).OnValidate.WhseActivHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Directed Put-away and Pick" : 5766;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Directed Put-away and Pick" : "Warehouse Activity Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Directed Put-away and Pick"(Field 5733).OnValidate.WhseShptHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Directed Put-away and Pick" : 7320;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Directed Put-away and Pick" : "Warehouse Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Directed Put-away and Pick"(Field 5733).OnValidate.WhseRcptHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Directed Put-away and Pick" : 7316;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Directed Put-away and Pick" : "Warehouse Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Open Shop Floor Bin Code"(Field 7313).OnValidate.WhseIntegrationMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Open Shop Floor Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Open Shop Floor Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""To-Production Bin Code"(Field 7314).OnValidate.WhseIntegrationMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"To-Production Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"To-Production Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""From-Production Bin Code"(Field 7315).OnValidate.WhseIntegrationMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"From-Production Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"From-Production Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""To-Assembly Bin Code"(Field 7330).OnValidate.WhseIntegrationMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"To-Assembly Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"To-Assembly Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""From-Assembly Bin Code"(Field 7331).OnValidate.WhseIntegrationMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"From-Assembly Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"From-Assembly Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Asm.-to-Order Shpt. Bin Code"(Field 7332).OnValidate.WhseIntegrationMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Asm.-to-Order Shpt. Bin Code" : 7317;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Asm.-to-Order Shpt. Bin Code" : "Whse. Integration Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.TransferRoute(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.TransferRoute : 5742;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.TransferRoute : "Transfer Route";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.WhseEmployee(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.WhseEmployee : 7301;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.WhseEmployee : "Warehouse Employee";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.WorkCenter(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.WorkCenter : 99000754;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.WorkCenter : "Work Center";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.StockkeepingUnit(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.StockkeepingUnit : 5700;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.StockkeepingUnit : "Stockkeeping Unit";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSCheckWarehouse(PROCEDURE 7300).Zone(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSCheckWarehouse : 7300;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSCheckWarehouse : Zone;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSCheckWarehouse(PROCEDURE 7300).Bin(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSCheckWarehouse : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSCheckWarehouse : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSCheckWarehouse(PROCEDURE 7300).BinContent(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSCheckWarehouse : 7302;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSCheckWarehouse : "Bin Content";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSCheckWarehouse(PROCEDURE 7300).WhseActivLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSCheckWarehouse : 5767;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSCheckWarehouse : "Warehouse Activity Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSCheckWarehouse(PROCEDURE 7300).WarehouseEntry(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSCheckWarehouse : 7312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSCheckWarehouse : "Warehouse Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSCheckWarehouse(PROCEDURE 7300).WarehouseEntry2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSCheckWarehouse : 7312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSCheckWarehouse : "Warehouse Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSCheckWarehouse(PROCEDURE 7300).WhseJnlLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSCheckWarehouse : 7311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSCheckWarehouse : "Warehouse Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WMSCheckWarehouse(PROCEDURE 7300).ItemLedgerEntry(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WMSCheckWarehouse : 32;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WMSCheckWarehouse : "Item Ledger Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckEmptyBin(PROCEDURE 7302).WarehouseEntry(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckEmptyBin : 7312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckEmptyBin : "Warehouse Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckEmptyBin(PROCEDURE 7302).WhseEntry2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckEmptyBin : 7312;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckEmptyBin : "Warehouse Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWhseAdjmtJnl(PROCEDURE 7303).WhseJnlTemplate(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWhseAdjmtJnl : 7309;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWhseAdjmtJnl : "Warehouse Journal Template";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CheckWhseAdjmtJnl(PROCEDURE 7303).WhseJnlLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CheckWhseAdjmtJnl : 7311;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CheckWhseAdjmtJnl : "Warehouse Journal Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisplayMap(PROCEDURE 7).MapPoint(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayMap : 800;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayMap : "Online Map Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DisplayMap(PROCEDURE 7).MapMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DisplayMap : 802;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DisplayMap : "Online Map Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInboundWhseRequest(PROCEDURE 13).TransferHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInboundWhseRequest : 5740;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInboundWhseRequest : "Transfer Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInboundWhseRequest(PROCEDURE 13).TransferLine(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInboundWhseRequest : 5741;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInboundWhseRequest : "Transfer Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInboundWhseRequest(PROCEDURE 13).WarehouseRequest(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInboundWhseRequest : 5765;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInboundWhseRequest : "Warehouse Request";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInboundWhseRequest(PROCEDURE 13).WhseTransferRelease(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInboundWhseRequest : 5773;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInboundWhseRequest : "Whse.-Transfer Release";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetLocationsIncludingUnspecifiedLocation(PROCEDURE 14).Location(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetLocationsIncludingUnspecifiedLocation : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetLocationsIncludingUnspecifiedLocation : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Bin(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Bin : 7354;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Bin : Bin;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PostCode(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PostCode : 225;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostCode : "Post Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WhseSetup(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WhseSetup : 5769;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WhseSetup : "Warehouse Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InvtSetup(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InvtSetup : 313;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InvtSetup : "Inventory Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Location(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Location : 14;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Location : Location;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CustomizedCalendarChange(Variable 1023)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CustomizedCalendarChange : 7602;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CustomizedCalendarChange : "Customized Calendar Change";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CalendarManagement(Variable 1022)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CalendarManagement : 7600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalendarManagement : "Calendar Management";
    //Variable type has not been exported.
}

