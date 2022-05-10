table 50001 "Material Issues Header"
{
    // version MI1.0,DIM1.0,Rev01

    // PROJECT : Efftronics
    // *****************************************************************************************************************************
    // SIGN
    // *****************************************************************************************************************************
    // B2B     : B2B Software Technologies
    // *****************************************************************************************************************************
    // VER      SIGN   USERID                 DATE                       DESCRIPTION
    // *****************************************************************************************************************************
    // 1.0       DIM   Sivaramakrishna.A      24-May-13             -> Added New Field 480 ("Dimension Set ID") it Will assign the Dimension Set ID
    //                                                                 specific Combination of "Shorcut Dimension Code 1","Shorcut Dimension Code 2"
    //                                                                 These combinations are stored in the new Dimension Set Entry
    //                                                              -> Added New ShowDocDim() it simply shows the data from the database against the
    //                                                                 Dimension Set ID
    //                                                              -> Added new function MatIssueLinesExist() Function Returns Boolean if Material issue
    //                                                                 Lines are exist it returns the True other wise false.
    //                                                              -> Added New UpdateAllLineDim() For Update the all the Material Issue Lines against the
    //                                                                 Material Issue Header.
    //                                                              -> Code has been Commented in the ValidateShortcutDimCode() and Added new code for the Each combination
    //                                                                 of Dimensions to get a Dimension Set ID.
    //                                                              -> Code has been Commented in Delete()Trigger because of Function does not exist in NAV 2013

    //DrillDownPageID = 60192;
    //LookupPageID = 60192;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';

            trigger OnValidate();
            begin
                /*
                IF "No." <> xRec."No." THEN BEGIN
                  InvtSetup.GET;
                  NoSeriesMgt.TestManual(InvtSetup."Posted Material Issue Nos.");
                  "No. Series" := '';
                END;
                */

            end;
        }
        field(2; "Transfer-from Code"; Code[10])
        {
            Caption = 'Transfer-from Code';

            trigger OnValidate();
            var
                Location: Record Location;
                Confirmed: Boolean;
            begin
                if (not (UserId in ['EFFTRONICS\ANANDA', 'EFFTRONICS\RRAHUL', 'EFFTRONICS\VSNGEETHA', 'EFFTRONICS\SUVARCHALADEVI'])) and ("Transfer-from Code" in ['CS STR', 'R&D STR', 'MAGSTR', 'STR GEN']) then
                    Error('PLEASE SELECT STR');

                TestStatusOpen;

                if ("Transfer-from Code" = "Transfer-to Code") and
                   ("Transfer-from Code" <> '')
                then
                    Error(
                      Text001,
                      FieldCaption("Transfer-from Code"), FieldCaption("Transfer-to Code"),
                      TableCaption, "No.");

                if (xRec."Transfer-from Code" <> "Transfer-from Code") then begin
                    if HideValidationDialog or
                      (xRec."Transfer-from Code" = '')
                    then
                        Confirmed := true
                    else
                        Confirmed := Confirm(Text002, false, FieldCaption("Transfer-from Code"));
                    if Confirmed then begin
                        if Location.Get("Transfer-from Code") then begin
                            "Transfer-from Name" := Location.Name;
                            "Transfer-from Name 2" := Location."Name 2";
                            "Transfer-from Address" := Location.Address;
                            "Transfer-from Address 2" := Location."Address 2";
                            "Transfer-from Post Code" := Location."Post Code";
                            "Transfer-from City" := Location.City;
                            "Transfer-from County" := Location.County;
                            "Transfer-from Country Code" := Location."Country/Region Code";
                            "Transfer-from Contact" := Location.Contact;
                        end;
                        UpdateTransLines(FieldNo("Transfer-from Code"));
                    end else begin
                        "Transfer-from Code" := xRec."Transfer-from Code";
                        exit;
                    end;
                end;
                //Added by rakesh for stationary items on 26-03-14
                //begin
                /*
                IF "Prod. Order No." = 'EFF14STA01' THEN
                BEGIN
                  IF "Transfer-from Code" <> 'STR' THEN
                    ERROR('Transfer-from Code should be STR');
                END;
                */
                //end
                //Added by rakesh for stationary items on 26-03-14

            end;
        }
        field(3; "Transfer-from Name"; Text[50])
        {
            Caption = 'Transfer-from Name';
        }
        field(4; "Transfer-from Name 2"; Text[50])
        {
            Caption = 'Transfer-from Name 2';
        }
        field(5; "Transfer-from Address"; Text[50])
        {
            Caption = 'Transfer-from Address';
        }
        field(6; "Transfer-from Address 2"; Text[50])
        {
            Caption = 'Transfer-from Address 2';
        }
        field(7; "Transfer-from Post Code"; Code[20])
        {
            Caption = 'Transfer-from Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup();
            begin
                //>>B2B1.0 Since Function doesn't exist in Nav 2013
                //PostCode.LookUpPostCode("Transfer-from City","Transfer-from Post Code",TRUE);
                //<<B2B1.0
            end;

            trigger OnValidate();
            begin
                PostCode.ValidatePostCode("Transfer-from City", "Transfer-from Post Code", "Transfer-to County", "Transfer-to Country Code", true);//B2B
            end;
        }
        field(8; "Transfer-from City"; Text[30])
        {
            Caption = 'Transfer-from City';

            trigger OnLookup();
            begin
                //>>B2B1.0 Since Function doesn't exist in Nav 2013
                //PostCode.LookUpCity("Transfer-from City","Transfer-from Post Code",TRUE);
                //<<B2B1.0
            end;

            trigger OnValidate();
            begin
                PostCode.ValidateCity("Transfer-from City", "Transfer-from Post Code", "Transfer-to County", "Transfer-to Country Code", true);//B2B
            end;
        }
        field(9; "Transfer-from County"; Text[30])
        {
            Caption = 'Transfer-from County';
        }
        field(10; "Transfer-from Country Code"; Code[10])
        {
            Caption = 'Transfer-from Country Code';
            TableRelation = "Country/Region";
        }
        field(11; "Transfer-to Code"; Code[10])
        {
            Caption = 'Transfer-to Code';

            trigger OnValidate();
            var
                Location: Record Location;
                Confirmed: Boolean;
            begin
                if (not (UserId in ['EFFTRONICS\ANANDA', 'EFFTRONICS\VSNGEETHA', 'EFFTRONICS\SUVARCHALADEVI'])) and ("Transfer-to Code" in ['CS STR', 'R&D STR']) then
                    Error('PLEASE SELECT STR');

                TestStatusOpen;
                if ("Transfer-from Code" = "Transfer-to Code") and
                   ("Transfer-to Code" <> '')
                then
                    Error(
                      Text001,
                      FieldCaption("Transfer-from Code"), FieldCaption("Transfer-to Code"),
                      TableCaption, "No.");
                if (xRec."Transfer-to Code" <> "Transfer-to Code") then begin
                    if HideValidationDialog or
                      (xRec."Transfer-to Code" = '')
                    then
                        Confirmed := true
                    else
                        Confirmed := Confirm(Text002, false, FieldCaption("Transfer-to Code"));
                    if Confirmed then begin
                        if Location.Get("Transfer-to Code") then begin
                            "Transfer-to Name" := Location.Name;
                            "Transfer-to Name 2" := Location."Name 2";
                            "Transfer-to Address" := Location.Address;
                            "Transfer-to Address 2" := Location."Address 2";
                            "Transfer-to Post Code" := Location."Post Code";
                            "Transfer-to City" := Location.City;
                            "Transfer-to County" := Location.County;
                            "Transfer-to Country Code" := Location."Country/Region Code";
                            "Transfer-to Contact" := Location.Contact;
                            Modify;
                        end;
                        UpdateTransLines(FieldNo("Transfer-to Code"));
                    end else begin
                        "Transfer-to Code" := xRec."Transfer-to Code";
                        exit;
                    end;
                end;
            end;
        }
        field(12; "Transfer-to Name"; Text[50])
        {
            Caption = 'Transfer-to Name';
        }
        field(13; "Transfer-to Name 2"; Text[50])
        {
            Caption = 'Transfer-to Name 2';
        }
        field(14; "Transfer-to Address"; Text[50])
        {
            Caption = 'Transfer-to Address';
        }
        field(15; "Transfer-to Address 2"; Text[50])
        {
            Caption = 'Transfer-to Address 2';
        }
        field(16; "Transfer-to Post Code"; Code[20])
        {
            Caption = 'Transfer-to Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup();
            begin
                //B2B1.0>> Since Function doesn't exist in Nav 2013
                //PostCode.LookUpPostCode("Transfer-to City","Transfer-to Post Code",TRUE);
                //B2B1.0<<
            end;

            trigger OnValidate();
            begin
                PostCode.ValidatePostCode("Transfer-to City", "Transfer-to Post Code", "Transfer-to County", "Transfer-to Country Code", true);//B2B
            end;
        }
        field(17; "Transfer-to City"; Text[30])
        {
            Caption = 'Transfer-to City';

            trigger OnLookup();
            begin
                //B2B1.0>> Since Function doesn't exist in Nav 2013
                //PostCode.LookUpCity("Transfer-to City","Transfer-to Post Code",TRUE);
                //B2B1.0<<
            end;

            trigger OnValidate();
            begin
                PostCode.ValidateCity("Transfer-to City", "Transfer-to Post Code", "Transfer-to County", "Transfer-to Country Code", true);//B2B
            end;
        }
        field(18; "Transfer-to County"; Text[30])
        {
            Caption = 'Transfer-to County';
        }
        field(19; "Transfer-to Country Code"; Code[10])
        {
            Caption = 'Transfer-to Country Code';
            TableRelation = "Country/Region";
        }
        field(20; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(21; "Receipt Date"; Date)
        {
            Caption = 'Receipt Date';

            trigger OnValidate();
            begin
                TestStatusOpen;
                UpdateTransLines(FieldNo("Receipt Date"));
            end;
        }
        field(22; Status; Option)
        {
            Caption = 'Status';
            Editable = true;
            OptionCaption = 'Open,Released,Sent for Authorization,Rejected';
            OptionMembers = Open,Released,"Sent for Authorization",Rejected;

            trigger OnValidate();
            begin
                UpdateTransLines(FieldNo(Status));
            end;
        }
        field(23; "Shortcut Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));

            trigger OnValidate();
            begin
                ValidateShortcutDimCode(1, "Shortcut Dimension 1 Code");
            end;
        }
        field(24; "Shortcut Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2),
                                                          Blocked = FILTER(false));

            trigger OnValidate();
            begin
                //ValidateShortcutDimCode(2,xRec."Shortcut Dimension 2 Code");
                ValidateShortcutDimCode(2, "Shortcut Dimension 2 Code");
            end;
        }
        field(25; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(26; "Last Receipt No."; Code[20])
        {
            Caption = 'Last Receipt No.';
            Editable = false;
            TableRelation = "Transfer Receipt Header";
        }
        field(27; "Transfer-from Contact"; Text[30])
        {
            Caption = 'Transfer-from Contact';
        }
        field(28; "Transfer-to Contact"; Text[30])
        {
            Caption = 'Transfer-to Contact';
        }
        field(29; "External Document No."; Code[20])
        {
            Caption = 'External Document No.';
        }
        field(30; "Completely Received"; Boolean)
        {
            CalcFormula = Min("Transfer Line"."Completely Received" WHERE("Document No." = FIELD("No."),
                                                                           "Receipt Date" = FIELD("Date Filter"),
                                                                           "Transfer-to Code" = FIELD("Location Filter")));
            Caption = 'Completely Received';
            Editable = false;
            FieldClass = FlowField;
        }
        field(31; "Location Filter"; Code[10])
        {
            Caption = 'Location Filter';
            FieldClass = FlowFilter;
            TableRelation = Location;
        }
        field(32; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(36; "Prod. Order No."; Code[20])
        {
            TableRelation = "Production Order"."No." WHERE(Blocked = CONST(false),
                                                            Status = FILTER(Released));

            trigger OnValidate();
            begin
                TestField(Status, Status::Open);
                if ("Prod. Order No." <> '') and ("Prod. Order Line No." <> 0) then begin
                    ProdOrderLine.SetRange("Prod. Order No.", "Prod. Order No.");
                    ProdOrderLine.SetRange("Line No.", "Prod. Order Line No.");
                    if ProdOrderLine.FindFirst then begin
                        "Due Date" := ProdOrderLine."Due Date";
                        "Proj Description" := ProdOrderLine.Description;
                        "Prod. BOM No." := ProdOrderLine."Item No.";
                    end;
                end;

                //Added by rakesh for stationary items on 26-03-14
                //begin
                /*
                IF "Prod. Order No." = 'EFF14STA01' THEN
                BEGIN
                  IF "Transfer-from Code" <> 'STR' THEN
                    ERROR('Transfer-from Code: should be STR');
                END;
                */
                //end
                //Added by rakesh for stationary items on 26-03-14

            end;
        }
        field(37; "Prod. Order Line No."; Integer)
        {
            TableRelation = "Prod. Order Line"."Line No." WHERE("Prod. Order No." = FIELD("Prod. Order No."));

            trigger OnValidate();
            begin
                TestField(Status, Status::Open);
                ProdOrderLine.SetRange("Prod. Order No.", "Prod. Order No.");
                ProdOrderLine.SetRange("Line No.", "Prod. Order Line No.");
                if ProdOrderLine.FindFirst then begin
                    "Due Date" := ProdOrderLine."Due Date";
                    "Proj Description" := ProdOrderLine.Description;
                    "Prod. BOM No." := ProdOrderLine."Item No.";
                end;
            end;
        }
        field(38; "Prod. BOM No."; Code[20])
        {
            TableRelation = "Production BOM Header"."No." WHERE(Status = FILTER(Certified));

            trigger OnLookup();
            var
                ProductionOrderLine: Record "Prod. Order Line";
                ProductionBOMHeader: Record "Production BOM Header";
            begin
            end;
        }
        field(39; "Operation No."; Code[20])
        {

            trigger OnLookup();
            var
                ProductionOrderLine: Record "Prod. Order Line";
            begin
                /*
                ProductionOrderLine.SETRANGE("Prod. Order No.","Prod. Order No.");
                ProductionOrderLine.SETRANGE("Line No.","Prod. Order Line No.");
                IF ProductionOrderLine.findfirst THEN
                  ProdOrderRoutingLine.SETRANGE(Status,ProductionOrderLine.Status);
                  ProdOrderRoutingLine.SETRANGE("Prod. Order No.",ProductionOrderLine."Prod. Order No.");
                  ProdOrderRoutingLine.SETRANGE("Routing Reference No.",ProductionOrderLine."Line No.");
                  IF ProdOrderRoutingLine.findfirst THEN
                    IF PAGE.RUNMODAL(0,ProdOrderRoutingLine) = ACTION::LookupOK THEN BEGIN
                      "Operation No." := ProdOrderRoutingLine."Operation No.";
                      //"Due Date" := ProdOrderRoutingLine."Starting Date";
                    END;
                */

            end;
        }
        field(40; "Sales Order No."; Code[20])
        {
            TableRelation = IF ("Transfer-from Code" = CONST('CS STR'),
                                "Reason Code" = CONST('INSTALLA')) "Sales Header"."No." WHERE("Document Type" = CONST(Order),
                                                                                             Status = CONST(Released))
            ELSE
            IF ("Transfer-from Code" = CONST('CS STR'),
                                                                                                      "Reason Code" = CONST('AMC')) "Sales Header"."No." WHERE("Document Type" = CONST(Amc),
                                                                                                                                                              Status = CONST(Released))
            ELSE
            IF ("Transfer-from Code" = FILTER(<> 'CS STR'),
                                                                                                                                                                       "Reason Code" = CONST('AMC')) "Sales Header"."No." WHERE("Document Type" = CONST(Order),
                                                                                                                                                                                                                               Status = CONST(Released))
            ELSE
            "Sales Header"."No." WHERE(Status = CONST(Released));
        }
        field(41; "Resource Name"; Text[50])
        {
            Editable = false;
        }
        field(42; "User ID"; Code[50])
        {
            Description = 'Rev01';

            trigger OnLookup();
            begin
                UserGrec.Reset;
                if PAGE.RunModal(9800, UserGrec) = ACTION::LookupOK then begin
                    "User ID" := UserGrec."User Name";

                    Validate("User ID");
                end;
            end;

            trigger OnValidate();
            begin
                //Rev01 Start
                //Code Commented
                /*
                User.SETRANGE(User."User Security ID","User ID");//B2B
                IF User.FINDFIRST THEN
                  "Resource Name":=User."User Name";//B2B
                */
                UserGrec.Reset;
                UserGrec.SetRange("User Name", "User ID");
                if UserGrec.FindFirst then
                    "Resource Name" := UserGrec."Full Name";
                //Rev01 End

                USER_SETUP.SetRange(USER_SETUP."User ID", "User ID");
                if USER_SETUP.FindFirst then begin
                    if (USER_SETUP."Transfer- From Code" = 'STR') or (UpperCase(USER_SETUP."User ID") in ['20MT002', '99P2005']) then begin
                        "Transfer-from Code" := USER_SETUP."Transfer- From Code";
                        "Transfer-to Code" := USER_SETUP."Transfer- To Code";
                        //VALIDATE("Prod. Order No.",USER_SETUP."Production Order");
                        //VALIDATE("Prod. Order Line No.",10000);
                    end;
                end;

            end;
        }
        field(43; "Required Date"; Date)
        {
        }
        field(44; "Released Date"; Date)
        {
            Editable = true;
        }
        field(45; "Released By"; Code[50])
        {
            Description = 'Rev01';
            Editable = true;
            TableRelation = User."User Name";
        }
        field(46; "Service Order No."; Code[20])
        {
            TableRelation = "Service Header"."No.";

            trigger OnValidate();
            begin
                /*
                  Service_Item_Line.SETRANGE(Service_Item_Line."Document No.","Service Order No.");
                 IF Service_Item_Line.findfirst THEN
                 BEGIN
                   "Service Item":=Service_Item_Line.Description;
                   "Service Item Serial No.":=Service_Item_Line."Serial No.";
                   MODIFY;
                 END;        */

            end;
        }
        field(47; "Reason Code"; Code[20])
        {
            TableRelation = "Reason Code".Code;
        }
        field(48; "Due Date"; Date)
        {
        }
        field(49; "Released Time"; Time)
        {
            Editable = false;
        }
        field(50; "Production BOM No."; Code[20])
        {
            TableRelation = "Production BOM Header" WHERE(Status = CONST(Certified));
        }
        field(51; "Devide By Qty."; Decimal)
        {
        }
        field(60; "PCB Item"; Code[20])
        {
            Editable = false;
            TableRelation = Item;
        }
        field(61; Reason; Code[20])
        {
        }
        field(62; "Sales Schedule Line No"; Integer)
        {
            Editable = true;
            TableRelation = Schedule2."Line No." WHERE("Document No." = FIELD("Sales Order No."),
                                                        "Document Line No." = FIELD("Sales Order Line No."),
                                                        "Document Type" = CONST(Order));
        }
        field(63; "Service Item Line No."; Integer)
        {
            TableRelation = "Service Item Line"."Line No." WHERE("Document No." = FIELD("Service Order No."));
        }
        field(64; "Sales Order Line No."; Integer)
        {
            TableRelation = "Sales Line"."Line No." WHERE("Document No." = FIELD("Sales Order No."));
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Description = 'DIM1.0';
            Editable = true;

            trigger OnLookup();
            begin
                ShowDocDim
            end;
        }
        field(60000; "BOM Type"; Option)
        {
            Description = 'B2B';
            OptionCaption = '" ,Mechanical,Wiring,SMD,DIP,Testing,Packing"';
            OptionMembers = " ",Mechanical,Wiring,SMD,DIP,Testing,Packing;

            trigger OnValidate();
            var
                MaterialIssueLine: Record "Material Issues Line";
            begin
                if xRec."BOM Type" <> "BOM Type" then begin
                    MaterialIssueLine.Reset;
                    MaterialIssueLine.SetRange("Document No.", "No.");
                    if MaterialIssueLine.FindFirst then
                        Error(Text005);
                end;
            end;
        }
        field(60006; "Type of Solder"; Option)
        {
            Description = 'B2B';
            OptionMembers = " ",SMD,DIP;
        }
        field(60007; "Creation DateTime"; DateTime)
        {
            Editable = true;
        }
        field(60008; "AMC Order No"; Code[30])
        {
            TableRelation = "Service Contract Header"."Contract No.";
        }
        field(60009; "Proj Description"; Text[50])
        {
        }
        field(60010; Tem_Status; Boolean)
        {
        }
        field(60011; "Service Item"; Text[50])
        {
        }
        field(60012; "Service Item Serial No."; Code[20])
        {
        }
        field(60013; "Service Item Description"; Text[100])
        {
        }
        field(60014; Remarks; Text[200])
        {
        }
        field(60021; "Authorised By"; Option)
        {
            OptionMembers = Prasanthi," P. Murali Mohan Rao","V.S.L.Shilpa",Padmasree,Ramasamy," Bala Krishna"," Bhavani Shankar","Krishna Rao";
        }
        field(60022; Purpose; Option)
        {
            OptionMembers = AMC,Waranty,Replacement,"R&D Testing",Demo,Installation;
        }
        field(60027; "Authorized Date"; Date)
        {
        }
        field(60028; Rejected; Boolean)
        {
        }
        field(60029; "Request for Authorization"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;

            trigger OnLookup();
            begin
                UserGrec.Reset;
                UserGrec.SetRange(levels, true);
                if PAGE.RunModal(9800, UserGrec) = ACTION::LookupOK then
                    "Request for Authorization" := UserGrec."User Name";
            end;
        }
        field(60030; "Auto Post"; Boolean)
        {
        }
        field(60031; "Person Code"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE("Dimension Code" = CONST('EMPLOYEE CODES'));
        }
        field(60032; "Mode of Transport"; Option)
        {
            OptionMembers = " ",Courier,Train,Bus,"By Hand",VRL,Lorry,ANL;
        }
        field(60033; Multiple; Integer)
        {
            InitValue = 1;
        }
        field(60034; Priority; Option)
        {
            OptionMembers = " ",High,Medium,Low;
        }
        field(60035; "Vendor No."; Code[20])
        {
            Description = 'for Purchase DC purpose';
            TableRelation = Vendor."No.";
        }
        field(60036; "Released DateTime"; DateTime)
        {
        }
        field(60037; "Transaction ID"; Code[20])
        {
            Description = 'For CS Transaction ID';
        }
        field(60038; "Customer No"; Code[20])
        {
            Description = 'For CS LED Cards Process';
            TableRelation = Customer."No.";
        }
        field(60039; Alert_Mail_Sent_date; Date)
        {
        }
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
        key(Key1; "No.")
        {
        }
        key(Key2; "Prod. Order No.", "Prod. Order Line No.")
        {
        }
        key(Key3; "Required Date", "Released Time")
        {
        }
        key(Key4; "Released Date")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        TestField(Status, Status::Open);

        if not (UpperCase(UserId) in ['EFFTRONICS\ANILKUMAR', 'EFFTRONICS\DMADHAVI', 'EFFTRONICS\PADMASRI', 'ERPSERVER\ADMINISTRATOR', 'EFFTRONICS\MARY', 'EFFTRONICS\BHAVANIP',
                                      'EFFTRONICS\SUJANI', 'EFFTRONICS\RAMADEVI', 'EFFTRONICS\GRAVI', 'EFFTRONICS\PKOTESWARARAO', 'EFFTRONICS\ANANDA', 'EFFTRONICS\RENUKACH', 'EFFTRONICS\VISHNUPRIYA', 'EFFTRONICS\SUVARCHALADEVI']) then
        /*BEGIN
          IF NOT ("User ID" = USERID) THEN
            ERROR('U Dont Have Permissions to Delete');
        END;*/
        // added by sujani on 05-feb-2018 to delete only empty material requests
        begin
            UserGrec.Reset;
            UserGrec.SetRange("User Name", UserId);
            if UserGrec.FindSet then begin
                if UserGrec.Dept = 'STR' then begin
                    MaterialIssueLine.Reset;
                    MaterialIssueLine.SetRange("Document No.", "No.");
                    if MaterialIssueLine.FindFirst then
                        Error('You Do Not Have Right to delete Material Requests');
                end else
                    Error('You Do Not Have Right to delete Material Requests');
            end else
                Error('You Do Not Have Right to delete Material Requests');
        end;


        MaterialIssueLine.SetRange("Document No.", "No.");
        MaterialIssueLine.DeleteAll(true);

        TrackingSpecifications.Reset;
        TrackingSpecifications.SetRange("Order No.", "No.");
        if TrackingSpecifications.FindSet then
            repeat
                TrackingSpecifications.Delete;
            until TrackingSpecifications.Next = 0;


        InvtCommentLine.SetRange("Document Type", InvtCommentLine."Document Type"::"Material Issues");
        InvtCommentLine.SetRange("No.", "No.");
        InvtCommentLine.DeleteAll;


        //DIM1.0  Since this Function doesn't exist in Nav 2013.
        //DimMgt.DeleteDocDim(DATABASE::"Material Issues Header",DocDim."Document Type"::" ","No.",0);
        //DIM1.0<<

    end;

    trigger OnInsert();
    begin
        //B2B UD  >>
        if "No." = '' then
            "No." := GetNextNo;
        //B2B UD  <<

        InvtSetup.Get;
        if "No." = '' then begin
            InvtSetup.TestField(InvtSetup."Material Issue Nos.");
            NoSeriesMgt.InitSeries(InvtSetup."Material Issue Nos.", xRec."No. Series", "Posting Date", "No.", "No. Series");
        end;
        InitRecord;
        Validate("Receipt Date", WorkDate);

        PostedMISHeader.Reset;
        PostedMISHeader.SetRange("Material Issue No.", "No.");
        if PostedMISHeader.FindFirst then
            Error(Text004, "No.");
        Validate("User ID", UserId);
        "Creation DateTime" := CreateDateTime(WorkDate, Time)//CURRENTDATETIME;
    end;

    trigger OnModify();
    begin
        /*MaterialIssueLine.SETFILTER(MaterialIssueLine."Document No.",xRec."No.");
        IF MaterialIssueLine.findfirst THEN
        ERROR('You donot modify the Record');*/
        //TESTFIELD(Status,Status::Open);

    end;

    trigger OnRename();
    begin
        PostedMISHeader.Reset;
        PostedMISHeader.SetRange("Material Issue No.", "No.");
        if PostedMISHeader.FindFirst then
            Error(Text004, "No.");
    end;

    var
        PostCode: Record "Post Code";
        InvtSetup: Record "Inventory Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        Text000: Label 'You cannot rename a %1.';
        Text001: Label '%1 and %2 cannot be the same in %3 %4.';
        Text002: Label 'Do you want to change %1?';
        Text003: Label 'The Material Issues %1 has been deleted.';
        HideValidationDialog: Boolean;
        MaterialIssueHeader: Record "Material Issues Header";
        DimMgt: Codeunit DimensionManagement;
        ProdOrderLine: Record "Prod. Order Line";
        MaterialIssueLine: Record "Material Issues Line";
        InvtCommentLine: Record "Inventory Comment Line";
        PostedMISHeader: Record "Posted Material Issues Header";
        Text004: Label 'Posted Material Issue already existed against this Material Issue number %1';
        Text005: Label 'you can not change Type when lines already existed.';
        Item: Record Item;
        productionbomversion: Record "Production BOM Version";
        Service_Item_Line: Record "Service Item Line";
        Stat: Record Station;
        USER_SETUP: Record "User Setup";
        UserGrec: Record User;
        "-DIM1.0-": Integer;
        MaterIssLine: Record "Material Issues Line";
        "--DIM1.0--": ;
        Text051: TextConst ENU = 'You may have changed a dimension.\\Do you want to update the lines?', ENN = 'You may have changed a dimension.\\Do you want to update the lines?';
        TrackingSpecifications: Record "Mat.Issue Track. Specification";

    [LineStart(81)]
    procedure InitRecord();
    var
        "Material Issues Line": Record "Material Issues Line";
    begin
        /*
        IF ("Posting Date" = 0D) THEN
          VALIDATE("Posting Date",WORKDATE);
        */

    end;

    [LineStart(87)]
    local procedure TestStatusOpen();
    begin
        TestField(Status, Status::Open);
    end;

    [LineStart(90)]
    procedure SetHideValidationDialog(NewHideValidationDialog: Boolean);
    begin
        HideValidationDialog := NewHideValidationDialog;
    end;

    [LineStart(93)]
    local procedure UpdateTransLines(FieldRef: Integer);
    var
        MaterialIssueLine: Record "Material Issues Line";
    begin
        MaterialIssueLine.LockTable;
        MaterialIssueLine.SetRange("Document No.", "No.");
        if MaterialIssueLine.FindFirst then begin
            repeat
                case FieldRef of
                    FieldNo("Transfer-from Code"):
                        begin
                            MaterialIssueLine.Validate("Transfer-from Code", "Transfer-from Code");
                            MaterialIssueLine.Validate("Receipt Date", "Receipt Date");
                        end;
                    FieldNo("Transfer-to Code"):
                        begin
                            MaterialIssueLine.Validate("Transfer-to Code", "Transfer-to Code");
                            MaterialIssueLine.Validate("Receipt Date", "Receipt Date");
                        end;
                    FieldNo(Status):
                        MaterialIssueLine.Validate(Status, Status);
                end;
                MaterialIssueLine.Modify(true);
            until MaterialIssueLine.Next = 0;
        end;
    end;

    [LineStart(115)]
    procedure AssistEdit(OldMaterialIssueHeader: Record "Material Issues Header"): Boolean;
    begin
        with MaterialIssueHeader do begin
            MaterialIssueHeader := Rec;
            InvtSetup.Get;
            InvtSetup.TestField(InvtSetup."Posted Material Issue Nos.");
            if NoSeriesMgt.SelectSeries(InvtSetup."Posted Material Issue Nos.", OldMaterialIssueHeader."No. Series", "No. Series") then begin
                NoSeriesMgt.SetSeries("No.");
                Rec := MaterialIssueHeader;
                exit(true);
            end;
        end;
    end;

    [LineStart(127)]
    procedure ValidateShortcutDimCode(FieldNumber: Integer; var ShortcutDimCode: Code[20]);
    var
        OldDimSetID: Integer;
    begin

        //DIM1.0>> Since function doesn't exist in Nav 2013
        //Code Comment
        /*
        DimMgt.ValidateDimValueCode(FieldNumber,ShortcutDimCode);
        IF "No." <> '' THEN BEGIN
          DimMgt.SaveDocDim(
            DATABASE::"Material Issues Header",DocDim."Document Type"::" ","No.",0,FieldNumber,ShortcutDimCode);
          MODIFY;
        END ELSE
          DimMgt.SaveTempDim(FieldNumber,ShortcutDimCode);
        */


        OldDimSetID := "Dimension Set ID";
        DimMgt.ValidateShortcutDimValues(FieldNumber, ShortcutDimCode, "Dimension Set ID");
        if "No." <> '' then
            Modify;

        if OldDimSetID <> "Dimension Set ID" then begin
            if MatIssueLinesExist then
                UpdateAllLineDim("Dimension Set ID", OldDimSetID);
            Modify;
        end
        //DIM1.0 End

    end;

    [LineStart(154)]
    procedure CopyRequisition();
    var
        IndentHeader: Record "Indent Header";
        IndentLine: Record "Indent Line";
        MaterialIssueLines: Record "Material Issues Line";
    begin
        TestField("Transfer-from Code");
        TestField("Transfer-to Code");

        if PAGE.RunModal(0, IndentHeader) = ACTION::LookupOK then begin
            IndentLine.SetRange("Document No.", IndentHeader."No.");
            if IndentLine.FindFirst then begin
                repeat
                    MaterialIssueLines.Init;
                    MaterialIssueLines."Document No." := "No.";
                    MaterialIssueLines."Line No." := IndentLine."Line No.";
                    MaterialIssueLines."Item No." := IndentLine."No.";
                    MaterialIssueLines.Description := IndentLine.Description;
                    MaterialIssueLines.Quantity := IndentLine.Quantity;
                    MaterialIssueLines."Unit of Measure" := IndentLine."Unit of Measure";
                    MaterialIssueLines."Transfer-from Code" := "Transfer-from Code";
                    MaterialIssueLines."Transfer-to Code" := "Transfer-to Code";
                    MaterialIssueLines.Insert;
                until IndentLine.Next = 0;
            end;
        end;
    end;

    [LineStart(176)]
    procedure CopyProductionOrder();
    var
        ProdOrderLines: Record "Prod. Order Line";
        MaterialIssueLine: Record "Material Issues Line";
        LineNo: Integer;
        ProdOrderComp: Record "Prod. Order Component";
        Item: Record Item;
        BOMHeader: Record "Production BOM Header";
        BOMLine: Record "Production BOM Line";
        ProdOrderLineRec: Record "Prod. Order Line";
    begin
        TestField("No.");
        TestField("Prod. Order No.");
        TestField("Prod. Order Line No.");
        TestField(Status, Status::Open);
        MaterialIssueLine.SetRange("Document No.", "No.");
        if MaterialIssueLine.FindLast then
            LineNo := MaterialIssueLine."Line No."
        else
            LineNo := 0;

        ProdOrderComp.Reset;
        ProdOrderComp.SetRange(Status, ProdOrderComp.Status::Released);
        ProdOrderComp.SetRange("Prod. Order No.", "Prod. Order No.");
        ProdOrderComp.SetRange("Prod. Order Line No.", "Prod. Order Line No.");
        //211207
        if Format("BOM Type") <> ' ' then
            ProdOrderComp.SetRange("BOM Type", "BOM Type");
        // MESSAGE(FORMAT(ProdOrderComp.COUNT));
        if "Type of Solder" <> 0 then
            ProdOrderComp.SetRange("Type of Solder", "Type of Solder");//added
                                                                       // MESSAGE(FORMAT(ProdOrderComp.COUNT));


        //MESSAGE(FORMAT(ProdOrderComp.COUNT));
        if ProdOrderComp.FindFirst then begin
            repeat
                // MESSAGE(FORMAT(ProdOrderComp."Item No."));
                if Item.Get(ProdOrderComp."Item No.") then;
                MaterialIssueLine.Init;
                LineNo := LineNo + 10000;
                MaterialIssueLine."Document No." := "No.";
                MaterialIssueLine."Item No." := ProdOrderComp."Item No.";
                MaterialIssueLine.Validate(MaterialIssueLine."Item No.");
                MaterialIssueLine."Line No." := LineNo;
                MaterialIssueLine."Unit of Measure" := ProdOrderComp."Unit of Measure Code";
                ProdOrderComp.CalcFields(ProdOrderComp."Qty. in Material Issues", ProdOrderComp."Qty. in Posted Material Issues");
                MaterialIssueLine.Copy := true;
                //MaterialIssueLine.Quantity := ProdOrderComp."Remaining Quantity" - (
                //ProdOrderComp."Qty. in Material Issues" + ProdOrderComp."Qty. in Posted Material Issues");
                //  MaterialIssueLine.Quantity := ProdOrderComp."Expected Quantity" - (
                //  ProdOrderComp."Qty. in Material Issues" + ProdOrderComp."Qty. in Posted Material Issues");
                MaterialIssueLine.Quantity := ProdOrderComp.Quantity;
                MaterialIssueLine.Validate(Quantity);
                MaterialIssueLine."Prod. Order No." := ProdOrderComp."Prod. Order No.";
                MaterialIssueLine."Prod. Order Line No." := ProdOrderComp."Prod. Order Line No.";
                MaterialIssueLine."Prod. Order Comp. Line No." := ProdOrderComp."Line No.";
                ProdOrderLineRec.SetRange("Prod. Order No.", MaterialIssueLine."Prod. Order No.");
                ProdOrderLineRec.SetRange(ProdOrderLineRec."Line No.", MaterialIssueLine."Prod. Order Line No.");
                if ProdOrderLineRec.FindFirst then begin
                    BOMLine.SetRange("Production BOM No.", ProdOrderLineRec."Production BOM No.");
                    BOMLine.SetRange("No.", MaterialIssueLine."Item No.");
                    if BOMLine.FindFirst then begin
                        if (BOMLine."Allow Excess Qty.") then
                            MaterialIssueLine."Allow Excess Qty." := true;
                    end;
                end;
                //  IF MaterialIssueLine.Quantity > 0 THEN
                //    MaterialIssueLine.INSERT;

                if ProdOrderComp."Expected Quantity" - (
                  ProdOrderComp."Qty. in Material Issues" + ProdOrderComp."Qty. in Posted Material Issues") > 0 then
                    MaterialIssueLine.Insert;
            until ProdOrderComp.Next = 0;

        end;
    end;

    [LineStart(243)]
    procedure CopySalesOrder();
    var
        SalesHeader: Record "Sales Header";
        SalesLine: Record "Sales Line";
        MaterialIssueLine: Record "Material Issues Line";
        LineNo: Integer;
    begin
        MaterialIssueLine.SetRange("Document No.", "No.");
        if MaterialIssueLine.FindLast then
            LineNo := MaterialIssueLine."Line No."
        else
            LineNo := 0;

        SalesHeader.SetRange("No.", "Sales Order No.");
        if SalesHeader.FindFirst then
            SalesLine.SetRange("Document Type", SalesHeader."Document Type");
        SalesLine.SetRange("Document No.", SalesHeader."No.");
        SalesLine.SetRange(Type, SalesLine.Type::Item);
        if SalesLine.FindFirst then
            repeat
                MaterialIssueLine.Init;
                LineNo := LineNo + 10000;
                MaterialIssueLine."Document No." := "No.";
                MaterialIssueLine."Item No." := SalesLine."No.";
                MaterialIssueLine.Validate(MaterialIssueLine."Item No.");
                MaterialIssueLine."Line No." := LineNo;
                MaterialIssueLine."Unit of Measure" := SalesLine."Unit of Measure";
                MaterialIssueLine.Quantity := SalesLine.Quantity;
                MaterialIssueLine.Validate(Quantity);
                MaterialIssueLine.Insert;
            until SalesLine.Next = 0;
    end;

    [LineStart(269)]
    procedure DeleteOrder(var MaterialIssuesHeader2: Record "Material Issues Header"; var MaterialIssuesLine2: Record "Material Issues Line"): Boolean;
    var
        InvtCommentLine: Record "Inventory Comment Line";
        No: Code[20];
        DoNotDelete: Boolean;
        TrackingSpecification: Record "Mat.Issue Track. Specification";
    begin
        No := MaterialIssuesHeader2."No.";
        if MaterialIssuesLine2.FindFirst then begin
            repeat
                if (MaterialIssuesLine2.Quantity <> MaterialIssuesLine2."Quantity Received") or
                   (MaterialIssuesLine2."Quantity (Base)" <> MaterialIssuesLine2."Qty. Received (Base)")
                then
                    DoNotDelete := true;
            until MaterialIssuesLine2.Next = 0;
        end;

        if not DoNotDelete then begin
            InvtCommentLine.SetRange("Document Type", InvtCommentLine."Document Type"::"Material Issues");
            InvtCommentLine.SetRange("No.", No);
            InvtCommentLine.DeleteAll;

            if MaterialIssuesLine2.FindFirst then begin
                repeat
                    //B2b1.0>> Since Function doesn't exist in Nav 2013
                    //DimMgt.DeleteDocDim(DATABASE::"Material Issues Line",DocDim."Document Type"::" ",No,MaterialIssuesLine2."Line No.");
                    //B2b1.0<<
                    TrackingSpecification.SetRange("Order No.", MaterialIssuesLine2."Document No.");
                    TrackingSpecification.SetRange("Order Line No.", MaterialIssuesLine2."Line No.");
                    if TrackingSpecification.FindFirst then
                        repeat
                            TrackingSpecification.Delete;
                        until TrackingSpecification.Next = 0;
                    MaterialIssuesLine2.Delete;
                until MaterialIssuesLine2.Next = 0;
            end;
            //B2b1.0>> Since Function doesn't exist in Nav 2013
            //DimMgt.DeleteDocDim(DATABASE::"Material Issues Header",DocDim."Document Type"::" ",No,0);
            //B2b1.0<<
            MaterialIssuesHeader2.Delete;
            //MESSAGE(Text003,No);
            exit(true);
        end;
        exit(false);
    end;

    [LineStart(308)]
    procedure CopyProductionBOM();
    var
        ProductionBOMHeader: Record "Production BOM Header";
        ProductionBOMLine: Record "Production BOM Line";
        MaterialIssueLine: Record "Material Issues Line";
        LineNo: Integer;
    begin
        /* //ck commented to add dip & SMD 220408
        MaterialIssueLine.SETRANGE("Document No.","No.");
        IF MaterialIssueLine.findlast THEN
          LineNo := MaterialIssueLine."Line No."
        ELSE
          LineNo := 0;
        
        ProductionBOMHeader.SETRANGE("No.","Production BOM No.");
        IF ProductionBOMHeader.findfirst THEN
            ProductionBOMLine.SETRANGE("Production BOM No.",ProductionBOMHeader."No.");
            ProductionBOMLine.SETRANGE(Type,ProductionBOMLine.Type :: Item);
            IF ProductionBOMLine.findfirst THEN
              REPEAT
                MaterialIssueLine.INIT;
                LineNo := LineNo + 10000;
                MaterialIssueLine."Document No." := "No.";
                MaterialIssueLine.VALIDATE("Item No.",ProductionBOMLine."No.");
                MaterialIssueLine."Line No." := LineNo;
                MaterialIssueLine.VALIDATE(Quantity,ProductionBOMLine."Quantity per");
                MaterialIssueLine.INSERT;
              UNTIL ProductionBOMLine.NEXT = 0;
        */     //ck commented to add dip & SMD 220408

        MaterialIssueLine.SetRange("Document No.", "No.");
        if MaterialIssueLine.FindLast then
            LineNo := MaterialIssueLine."Line No."
        else
            LineNo := 0;

        ProductionBOMHeader.SetRange("No.", "Production BOM No.");
        if ProductionBOMHeader.FindFirst then
            ProductionBOMLine.SetRange("Production BOM No.", ProductionBOMHeader."No.");
        productionbomversion.SetRange(productionbomversion."Production BOM No.", ProductionBOMHeader."No.");
        // ProductionBOMLine.SETRANGE(ProductionBOMLine."Version Code",productionbomversion."Version Code");
        if productionbomversion.Count > 0 then
            if productionbomversion.FindFirst then
                repeat
                    if productionbomversion.Status = productionbomversion.Status::Certified then begin
                        productionbomversion.SetRange(productionbomversion.Status, productionbomversion.Status::Certified);
                        ProductionBOMLine.SetRange(ProductionBOMLine."Version Code", productionbomversion."Version Code");
                    end
                    else
                        ProductionBOMLine.SetRange(ProductionBOMLine."Version Code", '');
                until productionbomversion.Next = 0;
        if Format("Type of Solder") <> ' ' then
            if Format("Type of Solder") = 'SMD' then
                ProductionBOMLine.SetRange(ProductionBOMLine."Type of Solder", "Type of Solder")
            else
                if Format("Type of Solder") = 'DIP' then
                    ProductionBOMLine.SetFilter(ProductionBOMLine."Type of Solder", '<>%1', "Type of Solder"::SMD);
        ProductionBOMLine.SetRange(Type, ProductionBOMLine.Type::Item);
        if ProductionBOMLine.FindSet then
            repeat


                if (("BOM Type" = "BOM Type"::Mechanical) or ("BOM Type" = "BOM Type"::Wiring)) then begin
                    MaterialIssueLine.Init;
                    LineNo := LineNo + 10000;
                    MaterialIssueLine."Document No." := "No.";
                    MaterialIssueLine.Validate("Item No.", ProductionBOMLine."No.");
                    MaterialIssueLine."Line No." := LineNo;
                    MaterialIssueLine.Validate(Quantity, (ProductionBOMLine."Quantity per" * Multiple));
                    MaterialIssueLine."BOM Quantity" := ProductionBOMLine."Quantity per";
                    MaterialIssueLine.Insert;



                    //UNTIL ProductionBOMLine.NEXT = 0
                end else
                    if ("BOM Type" = "BOM Type"::SMD) then begin
                        //REPEAT
                        Item.SetRange("No.", ProductionBOMLine."No.");
                        if Item.FindFirst then begin
                            Item.SetRange("Type of Solder", Item."Type of Solder"::SMD);
                            if Item.FindFirst then begin
                                MaterialIssueLine.Init;
                                LineNo := LineNo + 10000;
                                MaterialIssueLine."Document No." := "No.";
                                MaterialIssueLine.Validate("Item No.", ProductionBOMLine."No.");
                                MaterialIssueLine."Line No." := LineNo;
                                MaterialIssueLine.Validate(Quantity, (ProductionBOMLine."Quantity per" * Multiple));
                                MaterialIssueLine."BOM Quantity" := ProductionBOMLine."Quantity per";

                                MaterialIssueLine.Insert;



                            end;
                            //  UNTIL ProductionBOMLine.NEXT = 0
                        end;
                    end else
                        if ("BOM Type" = "BOM Type"::DIP) then begin
                            Item.SetRange("No.", ProductionBOMLine."No.");
                            if Item.FindFirst then begin
                                //   Item.SETRANGE("Type of Solder",Item."Type of Solder"::DIP);
                                if Item.FindFirst then
                                     // REPEAT
                                     begin
                                    MaterialIssueLine.Init;
                                    LineNo := LineNo + 10000;
                                    MaterialIssueLine."Document No." := "No.";
                                    MaterialIssueLine.Validate("Item No.", ProductionBOMLine."No.");
                                    MaterialIssueLine."Line No." := LineNo;
                                    MaterialIssueLine.Validate(Quantity, (ProductionBOMLine."Quantity per" * Multiple));
                                    MaterialIssueLine."BOM Quantity" := ProductionBOMLine."Quantity per";
                                    MaterialIssueLine.Insert;


                                end;
                            end;
                        end
                        else
               /*IF (("BOM Type" <>"BOM Type"::Mechanical) AND ("BOM Type" <>"BOM Type"::Wiring) AND
                   ("BOM Type" <>"BOM Type"::SMD) AND ("BOM Type" <>"BOM Type"::DIP)) THEN */       //<<ANIL
               begin
                            MaterialIssueLine.Init;
                            LineNo := LineNo + 10000;
                            MaterialIssueLine."Document No." := "No.";
                            MaterialIssueLine.Validate("Item No.", ProductionBOMLine."No.");
                            MaterialIssueLine."Line No." := LineNo;
                            MaterialIssueLine.Validate(Quantity, (ProductionBOMLine."Quantity per" * Multiple));
                            MaterialIssueLine."BOM Quantity" := ProductionBOMLine."Quantity per";
                            MaterialIssueLine.Insert;
                            //UNTIL ProductionBOMLine.NEXT = 0
                        end;


            until ProductionBOMLine.Next = 0;

    end;

    [LineStart(439)]
    procedure "*-*-"();
    begin
    end;

    [LineStart(442)]
    procedure GetNextNo() NumberValue: Code[20];
    var
        DateValue: Text[30];
        MonthValue: Text[30];
        YearValue: Text[30];
        MaterialIssuesHeaderLocal: Record "Material Issues Header";
        PostedMatIssHeaderLocal: Record "Posted Material Issues Header";
        LastNumber: Code[20];
    begin
        if Date2DMY(WorkDate, 1) < 10 then
            DateValue := '0' + Format(Date2DMY(WorkDate, 1))
        else
            DateValue := Format(Date2DMY(WorkDate, 1));

        if Date2DMY(WorkDate, 2) < 10 then
            MonthValue := '0' + Format(Date2DMY(WorkDate, 2))
        else
            MonthValue := Format(Date2DMY(WorkDate, 2));

        if Date2DMY(WorkDate, 2) <= 12 then
            YearValue := CopyStr(Format(Date2DMY(WorkDate, 3)), 3, 2);
        //IF TODAY=010910D THEN
        //  NumberValue := 'V'+YearValue+MonthValue+DateValue
        //ELSE
        NumberValue := 'R' + YearValue + MonthValue + DateValue;

        LastNumber := NumberValue + '0000';
        MaterialIssuesHeaderLocal.Reset;
        MaterialIssuesHeaderLocal.SetFilter("No.", NumberValue + '*');
        if MaterialIssuesHeaderLocal.FindLast then
            LastNumber := MaterialIssuesHeaderLocal."No.";

        PostedMatIssHeaderLocal.Reset;
        PostedMatIssHeaderLocal.SetCurrentKey("Material Issue No.");
        PostedMatIssHeaderLocal.SetFilter("Material Issue No.", NumberValue + '*');
        if PostedMatIssHeaderLocal.FindLast then
            if LastNumber < PostedMatIssHeaderLocal."Material Issue No." then
                LastNumber := PostedMatIssHeaderLocal."Material Issue No.";
        //LastNumber:='R1012010106';
        NumberValue := IncStr(LastNumber);
    end;

    [LineStart(473)]
    procedure CopyFromSalesSchedule();
    var
        MaterialIssueLine: Record "Material Issues Line";
        LineNo: Integer;
        SalesSchedule: Record Schedule2;
    begin
        MaterialIssueLine.SetRange("Document No.", "No.");
        if MaterialIssueLine.FindLast then
            LineNo := MaterialIssueLine."Line No."
        else
            LineNo := 0;
        SalesSchedule.Reset;
        SalesSchedule.SetRange("Document Type", SalesSchedule."Document Type"::Order);
        SalesSchedule.SetRange("Document No.", "Sales Order No.");
        SalesSchedule.SetRange("Document Line No.", "Sales Order Line No.");
        SalesSchedule.SetRange(SalesSchedule.Type, SalesSchedule.Type::Item);
        if SalesSchedule.FindFirst then
            repeat
                MaterialIssueLine.Init;
                LineNo := LineNo + 10000;
                MaterialIssueLine."Document No." := "No.";
                MaterialIssueLine.Validate("Item No.", SalesSchedule."No.");
                MaterialIssueLine."Line No." := LineNo;
                MaterialIssueLine.Validate(Quantity, SalesSchedule.Quantity);
                MaterialIssueLine.Insert;
            until SalesSchedule.Next = 0;
    end;

    [LineStart(495)]
    procedure UpdateItemsInventory();
    var
        MaterialIssuesLine: Record "Material Issues Line";
    begin
        /*
        MaterialIssuesLine.SETRANGE(MaterialIssuesLine."Document No.","No.") ;
        IF MaterialIssuesLine.FINDSET THEN
        REPEAT
         MaterialIssuesLine.Inventory:=MaterialIssuesLine.Item_Stock(MaterialIssuesLine."Item No.",MaterialIssuesLine."Transfer-from Code");
        //  MaterialIssuesLine.MODIFY;
        UNTIL MaterialIssuesLine.NEXT=0;
        */

    end;

    [LineStart(505)]
    procedure "---DIM1.0---"();
    begin
    end;

    [LineStart(508)]
    procedure ShowDocDim();
    var
        OldDimSetID: Integer;
    begin
        //DIM 1.0 Start
        OldDimSetID := "Dimension Set ID";
        "Dimension Set ID" :=
          DimMgt.EditDimensionSet2(
            "Dimension Set ID", StrSubstNo('%1', "No."),
            "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code");

        if OldDimSetID <> "Dimension Set ID" then begin
            Modify;
            if MatIssueLinesExist then
                UpdateAllLineDim("Dimension Set ID", OldDimSetID);
        end;
        //DIM 1.0  End
    end;

    [LineStart(523)]
    procedure MatIssueLinesExist(): Boolean;
    begin
        //DIM 1.0 Start
        MaterIssLine.Reset;
        MaterIssLine.SetRange("Document No.", "No.");
        exit(MaterIssLine.FindFirst);

        //DIM 1.0 End
    end;

    [LineStart(531)]
    local procedure UpdateAllLineDim(NewParentDimSetID: Integer; OldParentDimSetID: Integer);
    var
        NewDimSetID: Integer;
    begin
        // Update all lines with changed dimensions.
        //DIM 1.0 Start
        if NewParentDimSetID = OldParentDimSetID then
            exit;
        if not Confirm(Text051) then
            exit;

        MaterIssLine.Reset;
        MaterIssLine.SetRange("Document No.", "No.");
        if MaterIssLine.Find('-') then
            repeat
                NewDimSetID := DimMgt.GetDeltaDimSetID(MaterIssLine."Dimension Set ID", NewParentDimSetID, OldParentDimSetID);
                if MaterIssLine."Dimension Set ID" <> NewDimSetID then begin
                    MaterIssLine."Dimension Set ID" := NewDimSetID;
                    DimMgt.UpdateGlobalDimFromDimSetID(
                      MaterIssLine."Dimension Set ID", MaterIssLine."Shortcut Dimension 1 Code", MaterIssLine."Shortcut Dimension 2 Code");
                    MaterIssLine.Modify;
                end;
            until MaterIssLine.Next = 0;
        //DIM 1.0 End
    end;
}

