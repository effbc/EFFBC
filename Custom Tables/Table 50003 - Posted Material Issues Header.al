table 50003 "Posted Material Issues Header"
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
    // 1.0       DIM   Sivaramakrishna.A      24-May-13             -> Added New Field 480 ("Dimension Set ID") it Will Store the Material issue Dimension set ID
    // 2.0       UPGREV                                                Code Reviewed and OnDelete Trigger Code changed.

    /* DrillDownPageID = 60195;
      LookupPageID = 60195;*/

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Transfer-from Code"; Code[10])
        {
            Caption = 'Transfer-from Code';

            trigger OnValidate();
            var
                Location: Record Location;
                Confirmed: Boolean;
            begin
                if Location.Get("Transfer-from Code") then
                    Stores := Location.Stores;
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
        }
        field(8; "Transfer-from City"; Text[30])
        {
            Caption = 'Transfer-from City';
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
        }
        field(17; "Transfer-to City"; Text[30])
        {
            Caption = 'Transfer-to City';
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
        }
        field(22; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = 'Open,Released';
            OptionMembers = Open,Released;
        }
        field(23; "Shortcut Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(24; "Shortcut Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
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
        field(36; "Prod. Order No."; Code[100])
        {
            TableRelation = "Production Order"."No.";
        }
        field(37; "Prod. Order Line No."; Integer)
        {
            TableRelation = "Prod. Order Line"."Line No." WHERE("Prod. Order No." = FIELD("Prod. Order No."));
        }
        field(38; "Prod. BOM No."; Code[30])
        {
            TableRelation = "Production BOM Header"."No." WHERE(Status = FILTER(Certified));

            trigger OnLookup();
            var
                ProductionOrderLine: Record "Prod. Order Line";
                ProductionBOMHeader: Record "Production BOM Header";
            begin
            end;
        }
        field(40; "Sales Order No."; Code[20])
        {
        }
        field(41; "Resource Name"; Text[50])
        {
            Editable = false;
        }
        field(42; "User ID"; Code[50])
        {
            Description = 'Rev01';
            Editable = true;
            TableRelation = User."User Name";
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
            Editable = false;
            TableRelation = User."User Name";
        }
        field(46; "Material Issue No."; Code[20])
        {
        }
        field(47; "Service Order No."; Code[20])
        {
            TableRelation = "Service Header"."No.";

            trigger OnValidate();
            begin
                Service_Item_Line.SetRange(Service_Item_Line."Document No.", "Service Order No.");
                if Service_Item_Line.Find('-') then begin
                    "Service Item" := Service_Item_Line.Description;
                    "Service Item Serial No." := Service_Item_Line."Serial No.";
                end;
            end;
        }
        field(49; "Released Time"; Time)
        {
        }
        field(101; "Posted By"; Code[50])
        {
            Description = 'Rev01';
            TableRelation = User."User Name";
        }
        field(102; "Reason Code"; Code[10])
        {
            TableRelation = "Reason Code";
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Description = 'DIM1.0';
            Editable = false;
        }
        field(60007; "Issued DateTime"; DateTime)
        {
            Editable = true;
        }
        field(60008; "AMC Order No"; Code[30])
        {
        }
        field(60009; "Proj Description"; Text[50])
        {
        }
        field(60010; "Service Item"; Text[50])
        {
        }
        field(60011; "Service Item Serial No."; Code[20])
        {
        }
        field(60012; Stores; Option)
        {
            OptionMembers = STR,"CS STR","RD STR";
        }
        field(60013; "Service Item Description"; Text[100])
        {
        }
        field(60014; Remarks; Text[200])
        {
        }
        field(60030; "Auto Post"; Boolean)
        {
            Description = 'Added by vijaya for Material Auto Posting Process';
        }
        field(60031; "Person Code"; Code[20])
        {
        }
        field(60032; "Mode of Transport"; Option)
        {
            OptionMembers = Courier,Train,Bus,"By Hand",VRL,ANL;
        }
        field(60033; Multiple; Integer)
        {
        }
        field(60034; "Transaction ID"; Code[20])
        {
        }
        field(60035; "Modified UserID"; Boolean)
        {
        }
        field(60036; "Material Picked"; Boolean)
        {
            Description = 'pranavi';

            trigger OnValidate();
            begin
                //added by pranavi on 09-05-2015
                if Confirm('Do you want to pick all material!', true) then begin
                    PMIL.Reset;
                    PMIL.SetFilter(PMIL."Document No.", "No.");
                    if PMIL.FindSet then
                        repeat
                            if "Material Picked" = false then
                                PMIL."Material Picked" := false
                            else
                                PMIL."Material Picked" := true;
                            PMIL.Modify;
                        until PMIL.Next = 0;

                end;
                //end by pranavi
            end;
        }
        field(60037; "Customer No"; Code[20])
        {
            Description = 'For CS LED Cards Process';
            TableRelation = Customer."No.";
        }
        field(60038; "Material Picked Date"; DateTime)
        {
            Description = 'Added by sujani For Picked date tracking';
            Editable = false;
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
            // TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE ("Dimension Set ID"=FIELD("OLD Dim Set ID"));

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
        key(Key2; "Material Issue No.", "Posting Date", "Resource Name", "Reason Code", "Prod. Order No.", "Transfer-to Code", "Transfer-from Code")
        {
        }
        key(Key3; "Prod. Order No.", "Prod. Order Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        /*
          Body:='****  Auto Mail Generated From ERP  ****';
         Mail_From:='erp@efftronics.com';
        Mail_To:='anilkumar@efftronics.net,santhoshk@efftronics.net,swarupa@efftronics.net,sreenu@efftronics.net,erp@efftronics.com';
        // Mail_To:='santhoshk@efftronics.net';
         //USER.SETRANGE(USER."User Security ID",USERID);// Changed User."User Id" to User."User Security ID" B2B //UPGREV2.0
         USER.SETRANGE(USER."User Name",USERID);//UPGREV2.0
         IF USER.FIND('-') THEN
         Subject:=USER."User Name"+'  is trying to Delete Posted Material Issues Header Records';// Changed User."Name" to User."User Name" B2B
         Mail.NewCDOMessage(Mail_From,Mail_To,Subject,Body,'');
          ERROR('U Dont Have Permissions to Delete');
        */

    end;

    var
        Service_Item_Line: Record "Service Item Line";
        USER: Record User;
        Body: Text[250];
        Mail_From: Text[250];
        Mail_To: Text[250];
        Mail: Codeunit Mail;
        Subject: Text[250];
        PMIL: Record "Posted Material Issues Line";

    // [LineStart(792)]
    procedure Navigate();
    var
        NavigatePage: Page Navigate;
    begin
        NavigatePage.SetDoc("Posting Date", "No.");
        NavigatePage.Run;
    end;
}

