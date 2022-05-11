table 60039 "RGP Out Line"
{
    // version B2B1.0,Cal1.0


    fields
    {
        field(1; "Document No."; Code[20])
        {
        }
        field(2; "Line No."; Integer)
        {
        }
        field(5; Type; Option)
        {
            OptionCaption = '" ,Item,Fixed Asset,Calibration"';
            OptionMembers = " ",Item,"Fixed Asset",,Calibration;

            trigger OnValidate();
            begin
                TestStatusOpen;
                if xRec.Type <> Type then begin
                    "No." := '';
                    Description := '';
                    Quantity := 0;
                    UOM := '';
                    "Expected Return Date" := 0D;

                    "Vendor Shipment No." := '';
                    "Inspection Receipt No." := '';
                end;
            end;
        }
        field(6; "No."; Code[20])
        {
            TableRelation = IF (Type = CONST(Item)) Item."No."
            ELSE
            IF (Type = CONST("Fixed Asset")) "Fixed Asset"."No.";

            trigger OnValidate();
            var
                Item: Record Item;
                FixedAsset: Record "Fixed Asset";
            begin
                TestStatusOpen;
                if Type = Type::Item then begin
                    if Item.Get("No.") then begin
                        ;
                        Description := Item.Description;
                        UOM := Item."Base Unit of Measure";
                    end;
                end;
                if Type = Type::"Fixed Asset" then begin
                    if FixedAsset.Get("No.") then begin
                        ;
                        Description := FixedAsset.Description;
                    end;
                end;
            end;
        }
        field(7; Description; Text[50])
        {
        }
        field(8; Quantity; Decimal)
        {
            MinValue = 0;

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(9; UOM; Code[10])
        {
            TableRelation = "Unit of Measure";

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(10; "Expected Return Date"; Date)
        {
        }
        field(11; "Entry No."; Integer)
        {
        }
        field(13; "Op No."; Code[20])
        {
        }
        field(14; Remarks; Text[80])
        {
        }
        field(20; "Production Order Line No."; Integer)
        {
            Editable = false;

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(21; "Production Order"; Code[20])
        {
            Editable = false;
            TableRelation = "Production Order"."No." WHERE(Status = CONST(Released));

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(22; "Drawing No."; Code[20])
        {
            Editable = false;
            TableRelation = Item;
        }
        field(23; "Operation No."; Code[20])
        {
            Editable = false;
            TableRelation = "Prod. Order Routing Line"."Operation No." WHERE("Prod. Order No." = FIELD("Production Order"),
                                                                              "Routing Reference No." = FIELD("Production Order Line No."),
                                                                              "Routing No." = FIELD("Routing No."));
        }
        field(24; "Routing No."; Code[20])
        {
            Editable = false;
            TableRelation = "Routing Line"."Routing No.";

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(25; "Sub Contracting Work"; Boolean)
        {
        }
        field(26; "Vendor Shipment No."; Code[20])
        {
        }
        field(27; "Inspection Receipt No."; Code[20])
        {
            /*   TableRelation = IF (Type=CONST(Item)) "Inspection Receipt Header"."No." WHERE (Status=CONST(true),
                                                                                              "Item No."=FIELD("No."),
                                                                                              "Order No."=FIELD("Inspection Receipt No."));*/

            trigger OnValidate();
            begin
                TestStatusOpen;
                /* if InspectRcpt.Get("Inspection Receipt No.") then
                   "Inspection Receipt PO." := InspectRcpt."Order No.";*/
            end;
        }
        field(28; "Inspection Receipt PO."; Code[20])
        {
            Editable = true;
            TableRelation = "Purchase Header"."No." WHERE("Document Type" = CONST(Order));
            ValidateTableRelation = false;

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(29; "RET/NRET"; Option)
        {
            OptionMembers = Returnable,"Non-Returnable";

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(30; "Material Group"; Code[20])
        {
            //TableRelation = "Product Group";

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(31; "S.L.No."; Text[250])
        {
        }
        field(32; Purpose; Text[100])
        {
        }
        field(33; "DC No."; Code[20])
        {
        }
        field(34; "Mode of Transport"; Text[30])
        {

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(35; "Sent-to-Person"; Code[20])
        {
        }
        field(36; "Exp.Incurred"; Decimal)
        {
        }
        field(37; "Inform-to-Person"; Code[20])
        {
        }
        field(38; "Inform-to-Date"; Date)
        {
        }
        field(39; Status; Option)
        {
            Description = 'Calibration';
            OptionCaption = 'Not Posted,Posted';
            OptionMembers = "Not Posted",Posted;
        }
        field(40; "RGP In Document No."; Code[20])
        {
            Description = 'B2B(For Reverse Functionality)';
        }
        field(41; "RGP In Line No."; Integer)
        {
            Description = 'B2B(For Reverse Functionality)';
        }
        field(42; "Quantity to Recieve"; Decimal)
        {
            Description = 'B2B(For Reverse Functionality)';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    var
        RGPHeader: Record "RGP Out Header";
    begin
    end;

    trigger OnModify();
    begin
        TestStatusOpen;
    end;

    var
        RGPOutHeader: Record "RGP Out Header";
        // InspectRcpt : Record "Inspection Receipt Header";
        RGPOutHeaderRelease: Record "RGP Out Header";

    // [LineStart(2389)]
    local procedure TestStatusOpen();
    begin
        RGPOutHeaderRelease.SetRange("RGP Out No.", "Document No.");
        if RGPOutHeaderRelease.Find('-') then
            RGPOutHeaderRelease.TestField("Release Status", RGPOutHeaderRelease."Release Status"::Open);
    end;
}

