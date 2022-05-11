table 60038 "RGP Out Header"
{
    // version B2B1.0,Cal1.0,Rev01

    //  LookupPageID = 60059;

    fields
    {
        field(1; "RGP Out No."; Code[20])
        {
        }
        field(2; "RGP Date"; Date)
        {
        }
        field(3; "RGP Posting Date"; Date)
        {
        }
        field(4; Consignee; Option)
        {
            OptionCaption = 'Customer,Vendor,Others';
            OptionMembers = Customer,Vendor,Party;

            trigger OnValidate();
            var
                Confirmed: Boolean;
                Text050: Label 'Do you want to change %1,by changing all RGP Out Lines will be deleted';
            begin
                TestStatusOpen;
                if (xRec.Consignee <> Consignee) then begin
                    "Consignee No." := '';
                    "Consignee Name" := '';
                    Address := '';
                    "Consignee City" := '';
                    "Consignee Contact" := '';
                    "Phone No." := '';
                    "Telex No." := '';
                end;
            end;
        }
        field(5; "Consignee No."; Code[20])
        {
            TableRelation = IF (Consignee = CONST(Customer)) Customer."No."
            ELSE
            IF (Consignee = CONST(Vendor)) Vendor."No."
            ELSE
            IF (Consignee = CONST(Party)) Employee."No.";

            trigger OnValidate();
            var
                Customer: Record Customer;
                Vendor: Record Vendor;
                RGPParty: Record "RGP Party";
                Employee: Record Employee;
            begin
                TestStatusOpen;
                if Consignee = Consignee::Customer then begin
                    if Customer.Get("Consignee No.") then begin
                        ;
                        "Consignee Name" := Customer.Name;
                        Address := Customer.Address;
                        "Consignee City" := Customer.City;
                        "Consignee Contact" := Customer.Contact;
                        "Phone No." := Customer."Phone No.";
                        "Telex No." := Customer."Telex No.";
                    end;
                end;
                if Consignee = Consignee::Vendor then begin
                    if Vendor.Get("Consignee No.") then begin
                        ;
                        "Consignee Name" := Vendor.Name;
                        Address := Vendor.Address;
                        "Consignee City" := Vendor.City;
                        "Consignee Contact" := Vendor.Contact;
                        "Phone No." := Vendor."Phone No.";
                        "Telex No." := Vendor."Telex No.";
                    end;
                end;
                if Consignee = Consignee::Party then begin
                    if Employee.Get("Consignee No.") then begin
                        ;
                        "Consignee Name" := Employee."First Name";
                    end;
                end;
                if "Consignee No." <> xRec."Consignee No." then begin
                    RGPOutLine.Reset;
                    RGPOutLine.SetRange("Document No.", "RGP Out No.");
                    RGPOutLine.DeleteAll;
                end;
            end;
        }
        field(6; "Consignee Name"; Text[30])
        {
        }
        field(7; Address; Text[30])
        {
        }
        field(8; "Consignee City"; Text[30])
        {
        }
        field(9; "Consignee Contact"; Text[30])
        {
        }
        field(10; Status; Option)
        {
            OptionCaption = 'Not Posted,Posted';
            OptionMembers = "Not Posted",Posted;
        }
        field(11; "No. Series"; Code[10])
        {
        }
        field(12; "Phone No."; Text[30])
        {
        }
        field(13; "Telex No."; Text[20])
        {
        }
        field(14; Open; Boolean)
        {
        }
        field(15; "Purchase Order No."; Code[20])
        {
            TableRelation = "Purchase Header"."No." WHERE("Document Type" = CONST(Order));

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(16; "External Document No."; Code[20])
        {
        }
        field(17; "FD Remarks"; Text[80])
        {
        }
        field(18; Zone; Text[50])
        {
        }
        field(19; Division; Text[50])
        {
        }
        field(20; Station; Text[50])
        {
        }
        field(21; "Sending To"; Text[50])
        {
        }
        field(22; "Equipment No"; Code[20])
        {
        }
        field(23; Check; Boolean)
        {
        }
        field(24; "Created By"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(25; "Release Status"; Option)
        {
            Description = 'B2B';
            Editable = false;
            OptionCaption = 'Open,Release';
            OptionMembers = Open,Release;
        }
        field(26; "Released By"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(27; "RGP I/O"; Boolean)
        {
            Description = 'B2B';
        }
        field(28; "Posted RGP"; Boolean)
        {
            Description = 'For Get RGP Out from RGP IN form';
        }
    }

    keys
    {
        key(Key1; "RGP Out No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    var
        RGPOutLine: Record "RGP Out Line";
    begin
        TestStatusOpen;

        RGPOutLine.SetRange("Document No.", "RGP Out No.");
        RGPOutLine.DeleteAll;
    end;

    trigger OnInsert();
    begin
        InvSetup.Get;
        if "RGP Out No." = '' then begin
            InvSetup.TestField("RGP Out No.");
            NoSeriesMgt.InitSeries(InvSetup."RGP Out No.", xRec."No. Series", 0D, "RGP Out No.", "No. Series");
        end;
        "RGP Date" := Today;
        "Created By" := UserId;
    end;

    trigger OnRename();
    begin
        Error(Text003, TableCaption);
    end;

    var
        InvSetup: Record "Inventory Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        RGPOutLine: Record "RGP Out Line";
        Text003: Label 'You cannot rename a %1.';
        Calibration: Record Calibration;
        RGPOutLinecal: Record "RGP Out Line";
        Text001: Label 'Do You Want to Release?';
        Text002: Label 'Do You Want to Reopen?';
        RGPOutHeaderRelease: Record "RGP Out Header";

    //[LineStart(2225)]
    procedure PostRGP();
    var
        RGPLedEntries: Record "RGP Ledger Entries";
        NextEntryNo: Integer;
        Text050: Label 'Quantity cannot be 0 in Line No. %1';
    begin
        /*
        RGPLedEntries.RESET;
        RGPOutLine.SETRANGE("Document No.","RGP Out No.");
        IF RGPOutLine.FIND('-') THEN BEGIN
          RGPLedEntries.LOCKTABLE;
          IF RGPLedEntries.FIND('+') THEN
            NextEntryNo := RGPLedEntries."Entry No."
          ELSE
            NextEntryNo := 0;
          REPEAT
            IF (RGPOutLine.Type = RGPOutLine.Type :: Item) OR (RGPOutLine.Type = RGPOutLine.Type :: "Fixed Asset") THEN BEGIN
              RGPOutLine.TESTFIELD(Quantity);
              RGPOutLine.TESTFIELD(RGPOutLine.UOM);
            END;
            RGPLedEntries.INIT;
            NextEntryNo := NextEntryNo + 1;
            RGPLedEntries."Entry No." := NextEntryNo;
            RGPLedEntries."Entry Date":=TODAY;
            RGPLedEntries."Document No.":="RGP Out No.";
            RGPLedEntries."Document Line No.":=RGPOutLine."Line No.";
            RGPLedEntries."Document Date":="RGP Date";
            RGPLedEntries."Document Type":=RGPLedEntries."Document Type"::Out;
            RGPLedEntries.Consignee:=Consignee;
            RGPLedEntries."Consignee No.":="Consignee No.";
            RGPLedEntries.Quantity:=RGPOutLine.Quantity;
            RGPLedEntries."Remaining Quantity":=RGPOutLine.Quantity;
            RGPLedEntries.Open:=TRUE;
            RGPLedEntries.Type:=RGPOutLine.Type;
            RGPLedEntries."No.":=RGPOutLine."No.";
            RGPLedEntries.INSERT;
        
            RGPOutLine."Entry No.":= NextEntryNo;
            RGPOutLine.MODIFY;
        
        //B2B EFF  25-08-06
        
        Calibration.SETRANGE("Equipment No",RGPOutLine."No.");
        IF Calibration.FIND('-') THEN BEGIN
          Calibration."RGP Status" := FALSE;
          Calibration.MODIFY;
        END;
        
          UNTIL RGPOutLine.NEXT=0;
        END;
        "RGP Posting Date":=TODAY;
        Status:=Status::Posted;
        Open:=TRUE;
        Check := TRUE;
        MODIFY;
        */

        RGPLedEntries.Reset;
        RGPOutLine.SetRange("Document No.", "RGP Out No.");
        if RGPOutLine.Find('-') then begin
            RGPLedEntries.LockTable;
            if RGPLedEntries.Find('+') then
                NextEntryNo := RGPLedEntries."Entry No."
            else
                NextEntryNo := 0;
            repeat
                if (RGPOutLine.Type = RGPOutLine.Type::Item) or (RGPOutLine.Type = RGPOutLine.Type::"Fixed Asset")
                  or (RGPOutLine.Type = RGPOutLine.Type::Calibration) then begin
                    RGPOutLine.TestField(Quantity);
                    RGPOutLine.TestField(RGPOutLine.UOM);
                end;
                RGPLedEntries.Init;
                NextEntryNo := NextEntryNo + 1;
                RGPLedEntries."Entry No." := NextEntryNo;
                RGPLedEntries."Entry Date" := Today;
                RGPLedEntries."Document No." := "RGP Out No.";
                RGPLedEntries."Document Line No." := RGPOutLine."Line No.";
                RGPLedEntries."Document Date" := "RGP Date";
                RGPLedEntries."Document Type" := RGPLedEntries."Document Type"::Out;
                RGPLedEntries.Consignee := Consignee;
                RGPLedEntries."Consignee No." := "Consignee No.";
                RGPLedEntries.Quantity := RGPOutLine.Quantity;
                RGPLedEntries."Remaining Quantity" := RGPOutLine.Quantity;
                RGPLedEntries.Open := true;
                RGPLedEntries.Type := RGPOutLine.Type;
                RGPLedEntries."No." := RGPOutLine."No.";
                RGPLedEntries.Insert;

                RGPOutLine."Entry No." := NextEntryNo;
                RGPOutLine.Modify;

                Calibration.SetRange("Equipment No", RGPOutLine."No.");
                if Calibration.Find('-') then begin
                    Calibration."RGP Status" := false;
                    Calibration.Modify;
                end;

            until RGPOutLine.Next = 0;
        end;
        "RGP Posting Date" := Today;
        Status := Status::Posted;
        Open := true;
        //kpk//
        Check := true;
        //KPK//

        Modify;


        //Bhavani
        RGPOutLinecal.SetRange("Document No.", "RGP Out No.");
        if RGPOutLinecal.Find('-') then
            repeat
                RGPOutLinecal.Status := Status;
                RGPOutLinecal.Modify;
            until RGPOutLinecal.Next = 0;

    end;

    //[LineStart(2337)]
    procedure AssistEdit(OldRGPOutHeader: Record "RGP Out Header"): Boolean;
    var
        RGPOutHeader: Record "RGP Out Header";
    begin
        /*with RGPOutHeader do begin
            RGPOutHeader := Rec;
            InvSetup.Get;
            InvSetup.TestField(InvSetup."RGP Out No.");
            if NoSeriesMgt.SelectSeries(InvSetup."RGP Out No.", OldRGPOutHeader."No. Series", "No. Series") then begin
                InvSetup.Get;
                InvSetup.TestField(InvSetup."RGP Out No.");
                NoSeriesMgt.SetSeries("RGP Out No.");
                Rec := RGPOutHeader;
                exit(true);
            end;
        end;*/
    end;

    //[LineStart(2351)]
    procedure CopyIndent();
    var
        IndentHeader: Record "Indent Header";
        FromIndentLine: Record "Indent Line";
        RGPOutLine: Record "RGP Out Line";
        RGPOutLineNo: Integer;
    begin
        RGPOutLineNo := 0;
        IndentHeader.SetRange("Released Status", IndentHeader."Released Status"::Released);

        if PAGE.RunModal(0, IndentHeader) = ACTION::LookupOK then begin
            RGPOutLine.SetRange("Document No.", "RGP Out No.");
            RGPOutLine.DeleteAll;

            FromIndentLine.SetRange("Document No.", IndentHeader."No.");
            FromIndentLine.SetRange(Type, FromIndentLine.Type::Item);

            if FromIndentLine.Find('-') then
                repeat
                    RGPOutLineNo := RGPOutLineNo + 10000;
                    RGPOutLine."Document No." := "RGP Out No.";
                    RGPOutLine."Line No." := RGPOutLineNo;
                    RGPOutLine.Type := RGPOutLine.Type::Item;
                    RGPOutLine."No." := FromIndentLine."No.";
                    RGPOutLine.Description := FromIndentLine.Description;
                    RGPOutLine.Quantity := FromIndentLine.Quantity;
                    RGPOutLine.UOM := FromIndentLine."Unit of Measure";
                    RGPOutLine."Production Order" := FromIndentLine."Production Order";
                    RGPOutLine."Production Order Line No." := FromIndentLine."Production Order Line No.";
                    RGPOutLine."Drawing No." := FromIndentLine."Drawing No.";
                    RGPOutLine."Operation No." := FromIndentLine."Operation No.";
                    RGPOutLine."Routing No." := FromIndentLine."Routing No.";
                    RGPOutLine.Insert;
                until FromIndentLine.Next = 0;
        end;
    end;

    //[LineStart(2381)]
    local procedure TestStatusOpen();
    begin
        RGPOutHeaderRelease.TestField("Release Status", "Release Status"::Open);
    end;
}

