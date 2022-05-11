table 80061 "Reservation Entry-KNR"
{
    // version NAVW13.70.00.08,Rev01

    Caption = 'Reservation Entry';
    DrillDownPageID = "Reservation Entries";
    LookupPageID = "Reservation Entries";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(3; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(4; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate();
            begin
                Quantity := Round("Quantity (Base)" / "Qty. per Unit of Measure", 0.00001);
                "Qty. to Handle (Base)" := "Quantity (Base)";
                "Qty. to Invoice (Base)" := "Quantity (Base)";
            end;
        }
        field(5; "Reservation Status"; Option)
        {
            Caption = 'Reservation Status';
            OptionCaption = 'Reservation,Tracking,Surplus,Prospect';
            OptionMembers = Reservation,Tracking,Surplus,Prospect;
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(9; "Transferred from Entry No."; Integer)
        {
            Caption = 'Transferred from Entry No.';
            TableRelation = "Reservation Entry";
        }
        field(10; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(11; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(12; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(13; "Source Batch Name"; Code[10])
        {
            Caption = 'Source Batch Name';
        }
        field(14; "Source Prod. Order Line"; Integer)
        {
            Caption = 'Source Prod. Order Line';
        }
        field(15; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(16; "Appl.-to Item Entry"; Integer)
        {
            Caption = 'Appl.-to Item Entry';
            Editable = false;
            TableRelation = "Item Ledger Entry";
        }
        field(22; "Expected Receipt Date"; Date)
        {
            Caption = 'Expected Receipt Date';
        }
        field(23; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(24; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(25; "Created By"; Code[50])
        {
            Caption = 'Created By';
            Description = 'Rev01';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;

            trigger OnLookup();
            var
                LoginMgt: Codeunit "User Management";
            begin
                //  LoginMgt.LookupUserID("Created By");
            end;
        }
        field(27; "Changed By"; Code[50])
        {
            Caption = 'Changed By';
            Description = 'Rev01';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;

            trigger OnLookup();
            var
                LoginMgt: Codeunit "User Management";
            begin
                // LoginMgt.LookupUserID("Changed By");
            end;
        }
        field(28; Positive; Boolean)
        {
            Caption = 'Positive';
            Editable = false;
        }
        field(29; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;

            trigger OnValidate();
            begin
                Quantity := Round("Quantity (Base)" / "Qty. per Unit of Measure", 0.00001);
            end;
        }
        field(30; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(31; "Action Message Adjustment"; Decimal)
        {
            CalcFormula = Sum("Action Message Entry".Quantity WHERE("Reservation Entry" = FIELD("Entry No."),
                                                                     Calculation = CONST(Sum)));
            Caption = 'Action Message Adjustment';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; Binding; Option)
        {
            Caption = 'Binding';
            Editable = false;
            OptionCaption = '" ,Order-to-Order"';
            OptionMembers = " ","Order-to-Order";
        }
        field(33; "Suppressed Action Msg."; Boolean)
        {
            Caption = 'Suppressed Action Msg.';
        }
        field(34; "Planning Flexibility"; Option)
        {
            Caption = 'Planning Flexibility';
            OptionCaption = 'Unlimited,None';
            OptionMembers = Unlimited,"None";
        }
        field(40; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
            Editable = false;
        }
        field(41; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            Editable = false;
        }
        field(50; "Qty. to Handle (Base)"; Decimal)
        {
            Caption = 'Qty. to Handle (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(51; "Qty. to Invoice (Base)"; Decimal)
        {
            Caption = 'Qty. to Invoice (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(53; "Quantity Invoiced (Base)"; Decimal)
        {
            Caption = 'Quantity Invoiced (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(55; "Reserved Pick & Ship Qty."; Decimal)
        {
            Caption = 'Reserved Pick & Ship Qty.';
            DecimalPlaces = 0 : 5;
        }
        field(80; "New Serial No."; Code[20])
        {
            Caption = 'New Serial No.';
            Editable = false;
        }
        field(81; "New Lot No."; Code[20])
        {
            Caption = 'New Lot No.';
            Editable = false;
        }
        field(5400; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(5401; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            //   TableRelation = "Item Variant".Make WHERE ("Item No."=FIELD("Item No."));
        }
        field(5817; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(80061; Assigned; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "Entry No.", Positive)
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    var
        ActionMessageEntry: Record "Action Message Entry";
    begin
        ActionMessageEntry.SetCurrentKey(ActionMessageEntry."Reservation Entry");
        ActionMessageEntry.SetRange("Reservation Entry", "Entry No.");
        ActionMessageEntry.DeleteAll;
    end;

    var
        Text001: Label 'Line';

    //[LineStart(5697)]
    procedure TextCaption(): Text[30];
    var
        ItemLedgEntry: Record "Item Ledger Entry";
        SalesLine: Record "Sales Line";
        ReqLine: Record "Requisition Line";
        PurchLine: Record "Purchase Line";
        ItemJnlLine: Record "Item Journal Line";
        ProdOrderLine: Record "Prod. Order Line";
        ProdOrderComp: Record "Prod. Order Component";
        TransLine: Record "Transfer Line";
        ServInvLine: Record "Service Line";
    begin
        case "Source Type" of
            DATABASE::"Item Ledger Entry":
                exit(ItemLedgEntry.TableCaption);
            DATABASE::"Sales Line":
                exit(SalesLine.TableCaption);
            DATABASE::"Requisition Line":
                exit(ReqLine.TableCaption);
            DATABASE::"Purchase Line":
                exit(PurchLine.TableCaption);
            DATABASE::"Item Journal Line":
                exit(ItemJnlLine.TableCaption);
            DATABASE::"Prod. Order Line":
                exit(ProdOrderLine.TableCaption);
            DATABASE::"Prod. Order Component":
                exit(ProdOrderComp.TableCaption);
            DATABASE::"Transfer Line":
                exit(TransLine.TableCaption);
            DATABASE::"Service Line":
                exit(ServInvLine.TableCaption);
            else
                exit(Text001);
        end;
    end;

    //[LineStart(5721)]
    procedure SummEntryNo(): Integer;
    var
        ItemLedgEntry: Record "Item Ledger Entry";
        SalesLine: Record "Sales Line";
        ReqLine: Record "Requisition Line";
        PurchLine: Record "Purchase Line";
        ItemJnlLine: Record "Item Journal Line";
        ProdOrderLine: Record "Prod. Order Line";
        ProdOrderComp: Record "Prod. Order Component";
        TransLine: Record "Transfer Line";
        ServInvLine: Record "Service Line";
    begin
        case "Source Type" of
            DATABASE::"Item Ledger Entry":
                exit(1);
            DATABASE::"Purchase Line":
                exit(11 + "Source Subtype");
            DATABASE::"Requisition Line":
                exit(21);
            DATABASE::"Sales Line":
                exit(31 + "Source Subtype");
            DATABASE::"Item Journal Line":
                exit(41 + "Source Subtype");
            DATABASE::"Prod. Order Line":
                exit(61 + "Source Subtype");
            DATABASE::"Prod. Order Component":
                exit(71 + "Source Subtype");
            DATABASE::"Transfer Line":
                exit(101 + "Source Subtype");
            DATABASE::"Service Line":
                exit(110);
            else
                exit(0);
        end;
    end;

    //[LineStart(5745)]
    procedure SetPointer(RowID: Text[100]);
    var
        ItemTrackingMgt: Codeunit "Item Tracking Management";
        StrArray: array[6] of Text[100];
    begin
        ItemTrackingMgt.DecomposeRowID(RowID, StrArray);
        Evaluate("Source Type", StrArray[1]);
        Evaluate("Source Subtype", StrArray[2]);
        "Source ID" := StrArray[3];
        "Source Batch Name" := StrArray[4];
        Evaluate("Source Prod. Order Line", StrArray[5]);
        Evaluate("Source Ref. No.", StrArray[6]);
    end;

    //[LineStart(5754)]
    procedure Lock();
    var
        Rec2: Record "Reservation Entry";
    begin
        if RecordLevelLocking then begin
            Rec2.SetCurrentKey("Item No.");
            if "Item No." <> '' then
                Rec2.SetRange("Item No.", "Item No.");
            Rec2.LockTable;
            if Rec2.Find('+') then;
        end else
            LockTable;
    end;
}

