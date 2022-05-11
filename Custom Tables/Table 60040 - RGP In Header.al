table 60040 "RGP In Header"
{
    // version B2B1.0,Cal1.0,Rev01

    //  DrillDownPageID = 60079;
    //   LookupPageID = 60079;

    fields
    {
        field(1; "RGP In No."; Code[20])
        {
        }
        field(2; "RGP In Date"; Date)
        {
        }
        field(3; "RGP In Posting Date"; Date)
        {
        }
        field(4; "RGP Out No."; Code[20])
        {
        }
        field(5; "RGP Out Date"; Date)
        {
        }
        field(6; "RGP Out Posting Date"; Date)
        {
        }
        field(7; Consignee; Option)
        {
            OptionCaption = 'Customer,Vendor,Others';
            OptionMembers = Customer,Vendor,Party;

            trigger OnValidate();
            var
                Confirmed: Boolean;
                Text050: Label 'Do you want to change %1,by changing all RGP Out Lines will be deleted';
            begin
                TestStatusOpen;
            end;
        }
        field(8; "Consignee No."; Code[20])
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
                    RGPInLine.Reset;
                    RGPInLine.SetRange("Document No.", "RGP In No.");
                    RGPInLine.DeleteAll;
                end;
            end;
        }
        field(9; "Consignee Name"; Text[30])
        {
        }
        field(10; Address; Text[30])
        {
        }
        field(11; "Consignee City"; Text[30])
        {
        }
        field(12; "Consignee Contact"; Text[30])
        {
        }
        field(13; Status; Option)
        {
            OptionCaption = 'Not Posted,Posted';
            OptionMembers = "Not Posted",Posted;
        }
        field(14; "No. Series"; Code[10])
        {
        }
        field(15; "Phone No."; Text[30])
        {
        }
        field(16; "Telex No."; Text[20])
        {
        }
        field(17; Zone; Text[50])
        {
        }
        field(18; Division; Text[50])
        {
        }
        field(19; Station; Text[50])
        {
        }
        field(20; "Received From"; Text[50])
        {
        }
        field(21; "Equipment No"; Code[20])
        {
        }
        field(22; "Calibration Status"; Option)
        {
            OptionMembers = "Working in Good Condition"," Reffered To Service"," Usage Subjective",Scrap;
        }
        field(23; Results; Text[30])
        {
        }
        field(24; Recommendations; Text[30])
        {
        }
        field(25; Open; Boolean)
        {
            Description = 'B2B For Reverse RGP Functionality';
        }
        field(26; "Release Status"; Option)
        {
            Editable = false;
            OptionCaption = 'Open,Release';
            OptionMembers = Open,Release;
        }
        field(27; "Created By"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(28; "Released By"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(29; "RGP I/O"; Boolean)
        {
            Description = 'B2B';
        }
        field(30; "Posted RGP"; Boolean)
        {
            Description = 'For Get RGP IN from RGP Out form';
        }
    }

    keys
    {
        key(Key1; "RGP In No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        TestStatusOpen;
        RGPInLine.SetRange("Document No.", "RGP In No.");
        RGPInLine.DeleteAll;
    end;

    trigger OnInsert();
    begin
        InvSetup.Get;
        if "RGP In No." = '' then begin
            InvSetup.TestField("RGP In No.");
            NoSeriesMgt.InitSeries(InvSetup."RGP In No.", xRec."No. Series", 0D, "RGP In No.", "No. Series");
        end;
        "RGP In Date" := Today;

        "Created By" := UserId;
    end;

    trigger OnRename();
    begin
        Error(Text003, TableCaption);
    end;

    var
        InvSetup: Record "Inventory Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        RGPInLine: Record "RGP In Line";
        RGPInHeader: Record "RGP In Header";
        Text003: Label 'You cannot rename a %1.';
        Text001: Label 'Do You Want to Release?';
        Text002: Label 'Do You Want to Reopen?';
        RGPInHeaderRelease: Record "RGP In Header";

    // [LineStart(2412)]
    procedure AssistEdit(OldRGPInHeader: Record "RGP In Header"): Boolean;
    begin
        /*with RGPInHeader do begin
          RGPInHeader := Rec;
          InvSetup.Get;
          InvSetup.TestField(InvSetup."RGP In No.");
          if NoSeriesMgt.SelectSeries(InvSetup."RGP In No.",OldRGPInHeader."No. Series","No. Series") then begin
            InvSetup.Get;
            InvSetup.TestField(InvSetup."RGP In No.");
            NoSeriesMgt.SetSeries("RGP In No.");
            Rec := RGPInHeader;
            exit(true);
          end;
        end;*/
    end;

    // [LineStart(2426)]
    procedure "--B2BKPK----"();
    begin
    end;

    // [LineStart(2429)]
    procedure PostNewRGP();
    var
        RGPLedEntries: Record "RGP Ledger Entries";
        NextEntryNo: Integer;
        Text050: Label 'Quantity cannot be 0 in Line No. %1';
        RGPInLinecal: Record "RGP In Line";
    begin
        RGPLedEntries.Reset;
        RGPInLine.SetRange("Document No.", "RGP In No.");
        if RGPInLine.Find('-') then begin
            RGPLedEntries.LockTable;
            if RGPLedEntries.Find('+') then
                NextEntryNo := RGPLedEntries."Entry No."
            else
                NextEntryNo := 0;
            repeat
                if (RGPInLine.Type = RGPInLine.Type::Item) or (RGPInLine.Type = RGPInLine.Type::"Fixed Asset") then begin
                    //OR (RGPInLine.Type = RGPInLine.Type :: Calibration) THEN BEGIN
                    RGPInLine.TestField(Quantity);
                    RGPInLine.TestField(RGPInLine.UOM);
                end;
                RGPLedEntries.Init;
                NextEntryNo := NextEntryNo + 1;
                RGPLedEntries."Entry No." := NextEntryNo;
                RGPLedEntries."Entry Date" := Today;
                RGPLedEntries."Document No." := "RGP In No.";
                RGPLedEntries."Document Line No." := RGPInLine."Line No.";
                RGPLedEntries."Document Date" := "RGP In Date";
                RGPLedEntries."Document Type" := RGPLedEntries."Document Type"::"In";
                RGPLedEntries.Consignee := Consignee;
                RGPLedEntries."Consignee No." := "Consignee No.";
                RGPLedEntries.Quantity := RGPInLine.Quantity;
                RGPLedEntries."Remaining Quantity" := RGPInLine.Quantity;
                RGPLedEntries.Open := true;
                RGPLedEntries.Type := RGPInLine.Type;
                RGPLedEntries."No." := RGPInLine."No.";
                RGPLedEntries.Insert;

                RGPInLine."Entry No." := NextEntryNo;
                RGPInLine.Modify;

            /*Calibration.SETRANGE("Equipment No",RGPINLine."No.");
            IF Calibration.FIND('-') THEN BEGIN
              Calibration."RGP Status" := FALSE;
              Calibration.MODIFY;
            END;*/

            until RGPInLine.Next = 0;
        end;
        "RGP In Posting Date" := Today;
        Status := Status::Posted;
        Open := true;
        //kpk//
        //Check := TRUE;
        //KPK//

        Modify;


        //Bhavani
        RGPInLinecal.SetRange("Document No.", "RGP Out No.");
        if RGPInLinecal.Find('-') then
            repeat
                RGPInLinecal.Status := Status;
                RGPInLinecal.Modify;
            until RGPInLinecal.Next = 0;

    end;

    // [LineStart(2490)]
    local procedure TestStatusOpen();
    begin
        RGPInHeaderRelease.TestField("Release Status", "Release Status"::Open);
    end;
}

