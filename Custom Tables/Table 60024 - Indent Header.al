table 60024 "Indent Header"
{
    // version B2B1.0,POAU,Rev01

    // LookupPageID = 60044;

    fields
    {
        field(1; "No."; Code[20])
        {
        }
        field(2; Description; Text[50])
        {
        }
        field(5; "Document Date"; Date)
        {
        }
        field(6; Make; Code[50])
        {
            //This property is currently not supported
            //TestTableRelation = false;
            //  ValidateTableRelation = false;
        }
        field(7; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(8; "Delivery Location"; Code[20])
        {
            TableRelation = IF ("Delivery Place" = CONST(Store)) Location WHERE(Code = FILTER(<> 'CS STR' & <> 'R&D STR'))
            ELSE
            IF ("Delivery Place" = CONST(Customer)) Customer;
        }
        field(9; Equipment; Code[50])
        {
        }
        field(10; "Drawing No."; Code[50])
        {
        }
        field(11; "Last Date Modified"; Date)
        {
        }
        field(13; "No. Series"; Code[10])
        {
            Editable = false;
            TableRelation = "No. Series";
        }
        field(14; "Creation Date"; Date)
        {
        }
        field(15; "Contact Person"; Text[50])
        {
        }
        field(16; Comment; Boolean)
        {
        }
        field(17; "Enquiry No Series"; Code[10])
        {
            TableRelation = "No. Series";
        }
        field(18; "Enquiry No."; Code[20])
        {
            Editable = false;
        }
        field(19; "Delivery Place"; Option)
        {
            OptionMembers = Store,Customer;
        }
        field(20; "Equipment No."; Code[20])
        {
        }
        field(21; "Indent Status"; Option)
        {
            OptionCaption = 'Indent,Enquiry,Offer,Order,Cancel,Closed';
            OptionMembers = Indent,Enquiry,Offer,"Order",Cancel,Closed;
        }
        field(22; Status; Boolean)
        {
            Editable = true;
            Enabled = true;
        }
        field(23; "User Id"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(24; "Released Status"; Option)
        {
            Editable = true;
            OptionMembers = Open,Released,Cancel,Closed;
        }
        field(25; "Last Modified Date"; Date)
        {
            Editable = false;
        }
        field(26; "Released By"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(27; "Indent Type"; Option)
        {
            Editable = false;
            OptionMembers = Manual,"System Created(New)","System Created (Old)";
        }
        field(28; "Requisition Template Name"; Code[20])
        {
            Editable = false;
        }
        field(29; "Requisition Batch"; Code[20])
        {
            Editable = false;
        }
        field(30; "Fresh Indent"; Boolean)
        {
            Editable = false;
            InitValue = true;
        }
        field(31; "Indent Reference"; Text[50])
        {
        }
        field(32; Department1; Code[20])
        {
        }
        field(34; "Cancelled By"; Code[50])
        {
            Description = 'Rev01';
            TableRelation = User."User Name";
        }
        field(35; "Cancelled Date"; Date)
        {
        }
        field(36; "Closed By"; Code[50])
        {
            Description = 'Rev01';
            TableRelation = User."User Name";
        }
        field(37; "Closed Date"; Date)
        {
        }
        field(38; Department; Code[20])
        {
            TableRelation = Location.Code;
        }
        field(39; "Modify Indent"; Boolean)
        {
        }
        field(40; "Released Date"; Date)
        {
        }
        field(41; "ICN No."; Code[10])
        {
            TableRelation = "ICN Numbers";

            trigger OnValidate();
            begin
                TestStatusOpen;
                IndentLine.SetRange("Document No.", "No.");
                if IndentLine.Find('-') then
                    repeat
                        IndentLine."ICN No." := "ICN No.";
                        IndentLine.Modify;
                    until IndentLine.Next = 0;
            end;
        }
        field(42; "Production BOM No."; Code[20])
        {
            TableRelation = "Production BOM Header"."No." WHERE(Status = FILTER(Certified));
        }
        field(43; "Production Bom Version No."; Code[20])
        {
            TableRelation = "Production BOM Version"."Version Code" WHERE("Production BOM No." = FIELD("Production BOM No."));
        }
        field(44; "Production Order No."; Code[20])
        {
            TableRelation = "Production Order"."No." WHERE(Status = FILTER(Released));
        }
        field(45; Quantity; Decimal)
        {
        }
        field(46; "Project Code"; Code[15])
        {
            TableRelation = "Reason Code".Code;
        }
        field(47; "Person Code"; Code[50])
        {
            Description = 'Rev01';
            TableRelation = Employee."No.";
        }
        field(50; "Release Date Time"; DateTime)
        {
        }
        field(51; "Sale Order No."; Code[30])
        {
            /* TableRelation = IF ("Type of Indent"=CONST("Sale Order")) "Sales Header"."No." WHERE ("Document Type"=FILTER(Order|"Blanket Order"))
                              ELSE IF ("Type of Indent"=CONST("AMC Order")) "Sales Header"."No." WHERE ("Document Type"=CONST(Amc));

              trigger OnValidate();
              begin
                  "Sales Header".SetRange("Sales Header"."No.","Sale Order No.");
                  if "Sales Header".Find('-') then
                    "Sales Order Description":="Sales Header"."Bill-to Name";
              end;*/
        }
        field(52; "System date"; Date)
        {
        }
        field(60100; "Project Description"; Text[50])
        {
        }
        field(60101; "Production Order Description"; Text[50])
        {
        }
        field(60102; "Production Start date"; Date)
        {
        }
        field(60103; "Sales Order Description"; Text[50])
        {
        }
        field(60104; "Tender No."; Code[30])
        {
            TableRelation = "Tender Header";

            trigger OnValidate();
            begin
                "Tender Header".SetRange("Tender Header"."Tender No.", "Tender No.");
                if "Tender Header".Find('-') then
                    "Tener Description" := "Tender Header"."Tender Description";
            end;
        }
        field(60105; "Tener Description"; Text[100])
        {
        }
        field(60107; "Material Request No."; Code[20])
        {
        }
        field(60108; "Type of Indent"; Option)
        {
            OptionMembers = "Sale Order",MinmumStock,"AMC Order","R&D",ADMIN;
        }
        field(60109; "IR Number"; Code[20])
        {
        }
    }

    keys
    {
        key(Key1; "No.")
        {
        }
        key(Key2; Department)
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin

        if not (UserId in ['EFFTRONICS\VISHNUPRIYA', 'EFFTRONICS\ANILKUMAR', 'EFFTRONICS\ANVESH', 'EFFTRONICS\SPURTHI', 'EFFTRONICS\VIJAYA', 'EFFTRONICS\SUJANI', 'EFFTRONICS\RRAHUL']) then begin
            UserGRec.Reset;
            UserGRec.SetRange("User Name", UserId);
            if UserGRec.FindFirst then begin
                /* if UserGRec.Dept = 'STR' then
                 begin
                   IndentLine.Reset;
                   IndentLine.SetRange("Document No.","No.");
                   if IndentLine.FindFirst then
                     Error('You Do Not Have Right to delete Indent!');
                 end else*/
                Error('You Do Not Have Right to delete Indent!');
            end else
                Error('You Do Not Have Right to delete Indent!');
        end;


        IndentLine.Reset;
        IndentLine.SetRange("Document No.", "No.");
        IndentLine.DeleteAll;
    end;

    trigger OnInsert();
    begin
        PurchaseSetup.Get;
        if "No." = '' then begin
            PurchaseSetup.TestField("Purchase Indent Nos.");
            NoSeriesMgt.InitSeries(PurchaseSetup."Purchase Indent Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
        "Creation Date" := Today;
        "User Id" := UserId;
        "ICN No." := ICN();
    end;

    trigger OnModify();
    begin
        "Last Date Modified" := Today;
        //TESTFIELD("Released Status","Released Status"::Open);
    end;

    var
        PurchaseSetup: Record "Purchases & Payables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        PIndent: Record "Indent Header";
        Cust: Record Customer;
        loc: Record Location;
        IndentLine: Record "Indent Line";
        Purchaser: Record "Salesperson/Purchaser";
        UserSetup: Record "User Setup";
        Item: Record Item;
        Text000: Label 'The %1 cannot be copied to itself.';
        Text0001: Label 'Do you want to close the Material Indent?';
        Text002: Label 'Do you want to release the Indent?';
        Text003: Label 'Do you want to cancel the Indent?';
        Text004: Label 'Indent can not be cancel as it is in process';
        Text005: Label 'Do you want to close the Indent?';
        Text006: Label 'Do you want to reopen the Indent?';
        "Sales Header": Record "Sales Header";
        "Tender Header": Record "Tender Header";
        UserGRec: Record User;

    // [LineStart(1769)]
    procedure AssistEdit(OldIndent: Record "Indent Header"): Boolean;
    begin
        /*with PIndent do begin
          PIndent := Rec;
          PurchaseSetup.Get;
          PurchaseSetup.TestField("Purchase Indent Nos.");
          if NoSeriesMgt.SelectSeries(PurchaseSetup."Purchase Indent Nos.",OldIndent."No.","No.") then begin
            NoSeriesMgt.SetSeries("No.");
            Rec := PIndent;
            exit(true);
          end;
        end;*/
    end;

    // [LineStart(1781)]
    procedure ReleaseIndent();
    var
        IndentHeader: Record "Indent Header";
        IndentLine: Record "Indent Line";
    begin
        if not Confirm(Text002, false) then
            exit;
        //TESTFIELD("Production Order No.");
        TestField("Released Status", "Released Status"::Open);
        TestField("Contact Person");
        TestField("Indent Reference");
        LockTable;
        IndentLine.Reset;
        IndentLine.SetRange("Document No.", "No.");
        if IndentLine.Find('-') then
            repeat
                if /*(IndentLine.Type = IndentLine.Type :: Description) AND*/ (IndentLine.Type = IndentLine.Type::Item) then begin
                    IndentLine.TestField(IndentLine."No.");
                    IndentLine.TestField(IndentLine.Quantity);
                    IndentLine.TestField(IndentLine."ICN No."); //added By santhosh Kumar.korada
                end;
                if IndentLine.Type = IndentLine.Type::Miscellaneous then
                    IndentLine.TestField("G/L Account");
                Item.Reset;                                     //Added by Pranavi on 27-07-2015 to restrict the item with PO blocked
                Item.SetFilter(Item."No.", IndentLine."No.");
                if Item.FindFirst then begin
                    if Item."PO Blocked" = true then
                        Error('Indent Cannot be released beacause of Item: ' + Item."No." + ' is blocked for PO!');
                end;                                        //End by Pranavi
            until IndentLine.Next = 0;
        if IndentLine.Find('-') then;
        begin
            IndentLine.ModifyAll("Release Status", IndentLine."Release Status"::Released);
            //MESSAGE('INDENT RELEASED');
            IndentLine.ModifyAll(IndentLine."Due Date", Today);
        end;
        "Released Status" := "Released Status"::Released;
        "Last Modified Date" := WorkDate;
        "System date" := Today;
        "Released By" := UserId;
        "Modify Indent" := true;
        //B2B
        "Release Date Time" := CurrentDateTime;
        //B2B

    end;

    // [LineStart(1824)]
    procedure CancelIndent();
    var
        PurchLine: Record "Purchase Line";
    begin
        if not Confirm(Text003, false) then
            exit;

        IndentLine.SetRange("Document No.", "No.");
        IndentLine.SetFilter("Indent Status", '%1|%2', IndentLine."Indent Status"::Offer, IndentLine."Indent Status"::Order);
        if IndentLine.Find('-') then
            Error(Text004);
        LockTable;
        IndentLine.SetRange("Indent Status");
        IndentLine.ModifyAll("Indent Status", IndentLine."Indent Status"::Closed);
        IndentLine.ModifyAll("Release Status", IndentLine."Release Status"::Cancel);
        "Released Status" := "Released Status"::Cancel;
        "Indent Status" := "Indent Status"::Cancel;
        "Cancelled By" := UserId;
        "Cancelled Date" := WorkDate;
        "Modify Indent" := true;
    end;

    // [LineStart(1842)]
    procedure CloseIndent();
    var
        PurchLine: Record "Purchase Line";
    begin
        if not Confirm(Text005, false) then
            exit;
        LockTable;
        IndentLine.SetRange("Document No.", "No.");
        // IndentLine.ModifyAll("Indent Status",IndentLine."Indent Status" :: "6");
        IndentLine.ModifyAll("Release Status", IndentLine."Release Status"::Closed);

        "Closed By" := UserId;
        "Released Status" := "Released Status"::Closed;
        "Indent Status" := "Indent Status"::Closed;
        "Closed Date" := WorkDate;
        "Modify Indent" := true;
    end;

    // [LineStart(1856)]
    procedure CopyIndent();
    var
        FromIndentLine: Record "Indent Line";
        ToIndentLine: Record "Indent Line";
        IndentHeader: Record "Indent Header";
    begin
        TestField("No.");
        TestField("Released Status", "Released Status"::Open);
        if PAGE.RunModal(0, IndentHeader) = ACTION::LookupOK then begin
            if "No." = IndentHeader."No." then
                Error(Text000, TableCaption);

            ToIndentLine.SetRange("Document No.", "No.");
            ToIndentLine.DeleteAll;

            FromIndentLine.SetRange("Document No.", IndentHeader."No.");
            if FromIndentLine.Find('-') then
                repeat
                    ToIndentLine := FromIndentLine;
                    ToIndentLine."ICN No." := "ICN No.";//po1.0
                    ToIndentLine."Document No." := "No.";
                    ToIndentLine."Indent Status" := ToIndentLine."Indent Status"::Indent;
                    ToIndentLine."Due Date" := WorkDate;
                    ToIndentLine."Production Order Description" := "Production Order Description";
                    ToIndentLine.Insert;
                until FromIndentLine.Next = 0;
        end;
    end;

    // [LineStart(1879)]
    procedure CopyProdComponents();
    var
        ToIndentLine: Record "Indent Line";
        ProdOrderLines: Record "Prod. Order Line";
        IndentLineNo: Integer;
        ProdOrderLineComp: Record "Prod. Order Component";
    begin
        //29-sep-06

        TestField("Production Order No.");
        TestField(Quantity);
        TestField("ICN No.");
        ProdOrderLineComp.Reset;
        ProdOrderLineComp.SetRange(Status, ProdOrderLineComp.Status::Released);
        ProdOrderLineComp.SetRange("Prod. Order No.", "Production Order No.");
        //ProdOrderLineComp.SETFILTER("Remaining Quantity",'<>0');
        if ProdOrderLineComp.Find('-') then
            repeat
                ToIndentLine.Init;
                IndentLineNo := IndentLineNo + 10000;
                ToIndentLine."Document No." := "No.";
                ToIndentLine."ICN No." := "ICN No.";//po1.0
                ToIndentLine."Line No." := IndentLineNo;
                ToIndentLine.Type := ToIndentLine.Type::Item;
                ToIndentLine.Validate("No.", ProdOrderLineComp."Item No.");
                ToIndentLine."Unit of Measure" := ProdOrderLineComp."Unit of Measure Code";
                if Quantity <> 0 then
                    ToIndentLine.Validate(Quantity, (ProdOrderLineComp.Quantity * Quantity));
                ToIndentLine."Indent Status" := ToIndentLine."Indent Status"::Indent;
                ToIndentLine."Due Date" := ProdOrderLineComp."Due Date";
                ToIndentLine."Variant Code" := ProdOrderLineComp."Variant Code";
                ToIndentLine.Contact := 'PPC';
                ToIndentLine."Indent Reference" := "Indent Reference";
                ToIndentLine."Production Order" := "Production Order No.";
                ToIndentLine."Production Order Line No." := ProdOrderLineComp."Prod. Order Line No.";
                ToIndentLine."Drawing No." := ProdOrderLines."Item No.";
                ToIndentLine."Routing No." := ProdOrderLines."Routing No.";
                ToIndentLine.Insert;
            until ProdOrderLineComp.Next = 0;




        /*
        TESTFIELD("No.");
        TESTFIELD("Released Status","Released Status" :: Open);
        ProdOrderLines.SETRANGE(Status,ProdOrderLines.Status :: Released);
        
        IF PAGE.RUNMODAL(0,ProdOrderLines) = ACTION::LookupOK THEN BEGIN
          ToIndentLine.SETRANGE("Document No.","No.");
          IF ToIndentLine.FIND('+') THEN
            IndentLineNo := ToIndentLine."Line No."
          ELSE
            IndentLineNo := 0;
          ProdOrderLineComp.RESET;
          ProdOrderLineComp.SETRANGE(Status,ProdOrderLineComp.Status :: Released);
          ProdOrderLineComp.SETRANGE("Prod. Order No.",ProdOrderLines."Prod. Order No.");
          ProdOrderLineComp.SETRANGE("Prod. Order Line No.",ProdOrderLines."Line No.");
          ProdOrderLineComp.SETFILTER("Remaining Quantity",'<>0');
        
          IF ProdOrderLineComp.FIND('-') THEN
            REPEAT
              IF Item.GET(ProdOrderLineComp."Item No.") THEN;
              IF (Item."Replenishment System" = Item."Replenishment System" :: Purchase) AND
              (Item."Manufacturing Policy" = Item."Manufacturing Policy" :: "Make-to-Order") THEN BEGIN
                ToIndentLine.INIT;
                IndentLineNo := IndentLineNo + 10000;
                ToIndentLine."Document No." := "No.";
                ToIndentLine."Line No." := IndentLineNo;
                ToIndentLine.Type := ToIndentLine.Type :: Item;
                ToIndentLine.VALIDATE("No.",ProdOrderLineComp."Item No.");
                ToIndentLine."Unit of Measure" := ProdOrderLineComp."Unit of Measure Code";
                ToIndentLine.VALIDATE(Quantity,ProdOrderLineComp."Remaining Quantity");
                ToIndentLine."Indent Status" := ToIndentLine."Indent Status" :: Indent;
                ToIndentLine."Due Date" := ProdOrderLineComp."Due Date";
                ToIndentLine."Variant Code" := ProdOrderLineComp."Variant Code";
                ToIndentLine.Contact := 'PPC';
                ToIndentLine."Indent Reference" := "Indent Reference";
                ToIndentLine."Production Order" := ProdOrderLines."Prod. Order No.";
                ToIndentLine."Production Order Line No." := ProdOrderLines."Line No.";
                ToIndentLine."Drawing No." := ProdOrderLines."Item No.";
                ToIndentLine."Routing No." := ProdOrderLines."Routing No.";
                ToIndentLine.INSERT;
              END;
            UNTIL ProdOrderLineComp.NEXT = 0;
        END;
        */

    end;

    // [LineStart(1961)]
    procedure CopySaleOrderLines();
    var
        ToIndentLine: Record "Indent Line";
        ProdOrderLines: Record "Prod. Order Line";
        IndentLineNo: Integer;
        ProdOrderLineComp: Record "Prod. Order Component";
        Item: Record Item;
        SaleHeader: Record "Sales Header";
        SalesLine: Record "Sales Line";
    begin
        TestField("No.");
        TestField("Released Status", "Released Status"::Open);
        SaleHeader.SetRange("Document Type", SaleHeader."Document Type"::Order);

        if PAGE.RunModal(0, SaleHeader) = ACTION::LookupOK then begin
            ToIndentLine.SetRange("Document No.", "No.");
            if ToIndentLine.Find('+') then
                IndentLineNo := ToIndentLine."Line No."
            else
                IndentLineNo := 0;
            SalesLine.Reset;
            SalesLine.SetRange("Document Type", SalesLine."Document Type"::Order);
            SalesLine.SetRange("Document No.", SaleHeader."No.");
            SalesLine.SetRange(Type, SalesLine.Type::Item);
            if SalesLine.Find('-') then
                repeat
                    ToIndentLine.Init;
                    IndentLineNo := IndentLineNo + 10000;
                    ToIndentLine."Document No." := "No.";
                    ToIndentLine."ICN No." := "ICN No.";//po1.0
                    ToIndentLine."Line No." := IndentLineNo;
                    ToIndentLine."Indent Status" := ToIndentLine."Indent Status"::Indent;
                    ToIndentLine.Contact := 'PPC';
                    ToIndentLine."Indent Reference" := "Indent Reference";
                    ToIndentLine."Sale Order No." := SalesLine."Document No.";
                    ToIndentLine.Description := SalesLine.Description;
                    if (SalesLine.Type = SalesLine.Type::Item) and (SalesLine."Qty. to Ship" > 0) then begin
                        ToIndentLine.Type := ToIndentLine.Type::Item;
                        ToIndentLine.Validate("No.", SalesLine."No.");
                        ToIndentLine."Unit of Measure" := SalesLine."Unit of Measure Code";
                        ToIndentLine.Validate(Quantity, SalesLine."Qty. to Ship");
                        ToIndentLine."Due Date" := SalesLine."Shipment Date" - 1;
                        ToIndentLine."Variant Code" := SalesLine."Variant Code";
                        if (Item.Get(SalesLine."No.")) and (Item."Replenishment System" = Item."Replenishment System"::Purchase) and
                          (Item."Manufacturing Policy" = Item."Manufacturing Policy"::"Make-to-Order") then
                            ToIndentLine.Insert;
                    end;
                until SalesLine.Next = 0;
        end;
    end;

    // [LineStart(2002)]
    procedure ReopenIndent();
    var
        IndentHeader: Record "Indent Header";
        IndentLine: Record "Indent Line";
    begin
        if not Confirm(Text006, false) then
            exit;

        TestField("Released Status", "Released Status"::Released);
        IndentLine.Reset;
        IndentLine.SetRange("Document No.", "No.");
        if IndentLine.Find('-') then
            repeat
                if IndentLine.Type <> IndentLine.Type::Description then begin
                    //   IF  IndentLine.Type <> IndentLine.Type :: " " THEN
                    //     IndentLine.TESTFIELD(IndentLine."No.");
                    // IndentLine.TESTFIELD(IndentLine.Quantity);
                end;
            /* IF IndentLine.Type = IndentLine.Type :: Miscellaneous THEN
               IndentLine.TESTFIELD("G/L Account");  */
            until IndentLine.Next = 0;
        if IndentLine.Find('-') then;
        IndentLine.ModifyAll("Release Status", IndentLine."Release Status"::Open);
        Modify(true);

        "Released Status" := "Released Status"::Open;
        "Last Modified Date" := Today;
        "Released By" := UserId;
        "Modify Indent" := true;

    end;

    // [LineStart(2029)]
    procedure ConsolidateIndents();
    var
        IndentHeader: Record "Indent Header";
        IndentConsolidation: Record "Indent Consolidation";
        IndentLine: Record "Indent Line";
    begin
        /*
        IndentHeader.SETRANGE("ICN No.","ICN No.");
        IF IndentHeader.FIND('-') THEN
        REPEAT
          IndentLine.SETRANGE("Document No.",IndentHeader."No.");
          IF IndentLine.FIND('-') THEN
              REPEAT
                IndentConsolidation."ICN No." := "ICN No.";
                IndentConsolidation."Indent No." := IndentLine."Document No.";
                IndentConsolidation."Item No." := IndentLine."No.";
                IndentConsolidation.Describtion := IndentLine.Description;
                IndentConsolidation.Quantity := IndentLine.Quantity;
              UNTIL IndentLine.NEXT = 0;
        UNTIL IndentHeader.NEXT = 0;
        */

    end;

    // [LineStart(2046)]
    procedure CopyBomComponents();
    var
        DesignWorksheetLine: Record "Design Worksheet Line";
        ProductionBOMLine: Record "Production BOM Line";
        DesignWorksheetLine1: Record "Design Worksheet Line";
    begin
        if "Production Bom Version No." = '' then begin
            TestField("Production BOM No.");
            ProductionBOMLine.Reset;
            ProductionBOMLine.SetRange("Production BOM No.", "Production BOM No.");
            ProductionBOMLine.SetFilter("Version Code", '=%1', '');
            if ProductionBOMLine.Find('-') then
                repeat
                    CheckType(ProductionBOMLine);
                until ProductionBOMLine.Next = 0;
        end else begin
            TestField("Production BOM No.");
            TestField("Production Bom Version No.");
            ProductionBOMLine.Reset;
            ProductionBOMLine.SetRange("Production BOM No.", "Production BOM No.");
            ProductionBOMLine.SetRange("Version Code", "Production Bom Version No.");
            if ProductionBOMLine.Find('-') then
                repeat
                    CheckType(ProductionBOMLine);
                until ProductionBOMLine.Next = 0;
        end;
    end;

    // [LineStart(2068)]
    procedure CheckType(var ProductionBOMLine: Record "Production BOM Line");
    var
        ProductionBOMLine1: Record "Production BOM Line";
    begin
        case ProductionBOMLine.Type of
            ProductionBOMLine.Type::"Production BOM":
                begin
                    ProductionBOMLine1.Reset;
                    ProductionBOMLine1.SetRange("Production BOM No.", ProductionBOMLine."No.");
                    ProductionBOMLine1.SetFilter("Version Code", '=%1', '');
                    if ProductionBOMLine1.Find('-') then
                        repeat
                            CheckType(ProductionBOMLine1);
                        until ProductionBOMLine1.Next = 0;
                end;
            ProductionBOMLine.Type::Item:
                begin
                    InsertItems(ProductionBOMLine);
                end;
        end;
    end;

    // [LineStart(2086)]
    procedure InsertItems(var ProductionBOMLine: Record "Production BOM Line");
    var
        IndentLine: Record "Indent Line";
        IndentLine1: Record "Indent Line";
    begin
        IndentLine.Init;
        IndentLine1.SetRange("Document No.", "No.");
        if IndentLine1.Find('+') then
            IndentLine."Line No." := IndentLine1."Line No." + 10000
        else
            IndentLine."Line No." := 10000;
        IndentLine."Document No." := "No.";
        IndentLine."ICN No." := "ICN No.";//po1.0
        IndentLine.Type := IndentLine.Type::Item;
        IndentLine."No." := ProductionBOMLine."No.";
        IndentLine.Description := ProductionBOMLine.Description;
        IndentLine."Unit of Measure" := ProductionBOMLine."Unit of Measure Code";
        IndentLine.Quantity := ProductionBOMLine."Quantity per";
        //b2b EFF
        if Item.Get(IndentLine."No.") then begin
            Item.CalcFields("Inventory at Stores");
            IndentLine."Store Qty" := Item."Inventory at Stores";
        end;
        //b2b EFF
        IndentLine.Insert
    end;

    // [LineStart(2108)]
    procedure TestStatusOpen();
    begin
        TestField("Released Status", "Released Status"::Open);
    end;

    // [LineStart(2111)]
    procedure ReleaseIndent1("IndentNo.": Code[20]);
    var
        IndentHeader: Record "Indent Header";
        IndentLine: Record "Indent Line";
    begin
        //IF NOT CONFIRM(Text002,FALSE) THEN
        //  EXIT;
        //TESTFIELD("Production Order No.");
        TestField("Released Status", "Released Status"::Open);
        TestField("Contact Person");
        TestField("Indent Reference");
        LockTable;
        IndentLine.Reset;
        IndentLine.SetRange("Document No.", "IndentNo.");
        if IndentLine.Find('-') then
            repeat
                if /*(IndentLine.Type = IndentLine.Type :: Description) OR*/ (IndentLine.Type = IndentLine.Type::Item) then begin
                    IndentLine.TestField(IndentLine."No.");
                    IndentLine.TestField(IndentLine.Quantity);
                    IndentLine.TestField(IndentLine."ICN No."); //added By santhosh Kumar.korada
                end;
                Item.Reset;                                     //Added by Pranavi on 27-07-2015 to restrict the item with PO blocked
                Item.SetFilter(Item."No.", IndentLine."No.");
                if Item.FindFirst then begin
                    if Item."PO Blocked" = true then
                        Error('Indent Cannot be released beacause of Item: ' + Item."No." + ' is blocked for PO!');
                end;                                        //End by Pranavi
                if IndentLine.Type = IndentLine.Type::Miscellaneous then
                    IndentLine.TestField("G/L Account");
            until IndentLine.Next = 0;
        if IndentLine.Find('-') then;
        begin
            IndentLine.ModifyAll("Release Status", IndentLine."Release Status"::Released);
            IndentLine.ModifyAll(IndentLine."Due Date", Today);
            if IndentHeader.Get(IndentLine."Document No.") then // Added by Pranavi on 09-08-17
                IndentLine.ModifyAll("Production Start date", IndentHeader."Production Start date");
        end;
        "Released Status" := "Released Status"::Released;
        "Last Modified Date" := WorkDate;
        "System date" := Today;
        "Released By" := UserId;
        "Modify Indent" := true;
        Modify;   //Added by Pranavi on 28-Dec-2015 for clearing auto indent not releasing issue
        //B2B
        //"Release Date Time":=;
        //B2B

    end;

    // [LineStart(2156)]
    procedure ICN() ICNNO: Text[10];
    begin
        if StrLen(Format(Date2DMY(Today, 1))) = 2 then
            ICNNO := Format(Date2DMY(Today, 1))
        else
            ICNNO += '0' + Format(Date2DMY(Today, 1));

        if StrLen(Format(Date2DMY(Today, 2))) = 2 then
            ICNNO += Format(Date2DMY(Today, 2))
        else
            ICNNO += '0' + Format(Date2DMY(Today, 2));

        if StrLen(CopyStr(Format(Date2DMY(Today, 3)), 3, 2)) = 2 then
            ICNNO += CopyStr(Format(Date2DMY(Today, 3)), 3, 2)
        else
            ICNNO += '0' + CopyStr(Format(Date2DMY(Today, 3)), 3, 2);
    end;
}

