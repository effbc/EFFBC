table 60041 "RGP In Line"
{
    // version B2B1.0,Cal1.0


    fields
    {
        field(1;"Document No.";Code[20])
        {
        }
        field(2;"Line No.";Integer)
        {
        }
        field(3;"RGP Out Document No.";Code[20])
        {
        }
        field(4;"RGP Out Line No.";Integer)
        {
        }
        field(5;Type;Option)
        {
            OptionCaption = '" ,Item,Fixed Asset"';
            OptionMembers = " ",Item,"Fixed Asset";

            trigger OnValidate();
            begin
                TestStatusOpen;

                if xRec.Type<>Type then begin
                  "MRIR No." := '';
                end;
            end;
        }
        field(6;"No.";Code[20])
        {
            TableRelation = IF (Type=CONST(Item)) Item."No."
                            ELSE IF (Type=CONST("Fixed Asset")) "Fixed Asset"."No.";

            trigger OnValidate();
            var
                Item : Record Item;
                FixedAsset : Record "Fixed Asset";
            begin
                TestStatusOpen;
                if Type=Type::Item then begin
                  if Item.Get("No.") then begin;
                    Description:=Item.Description;
                    UOM:=Item."Base Unit of Measure";
                  end;
                end;
                if Type=Type::"Fixed Asset" then begin
                  if FixedAsset.Get("No.") then begin;
                    Description:=FixedAsset.Description;
                  end;
                end;
            end;
        }
        field(7;Description;Text[50])
        {
        }
        field(8;Quantity;Decimal)
        {
            MinValue = 0;

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(9;UOM;Code[10])
        {
            TableRelation = "Unit of Measure";

            trigger OnValidate();
            begin
                TestStatusOpen;;
            end;
        }
        field(10;"Expected Return Date";Date)
        {
        }
        field(11;"Quantity to Recieve";Decimal)
        {
        }
        field(12;"Entry No.";Integer)
        {
        }
        field(13;"Op No.";Code[20])
        {
        }
        field(14;Remarks;Text[80])
        {
        }
        field(20;"Production Order Line No.";Integer)
        {
            Editable = false;

            trigger OnValidate();
            begin
                TestStatusOpen;;
            end;
        }
        field(21;"Production Order";Code[20])
        {
            Editable = false;
            TableRelation = "Production Order"."No." WHERE (Status=CONST(Released));

            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(22;"Drawing No.";Code[20])
        {
            Editable = false;
            TableRelation = Item;
        }
        field(23;"Operation No.";Code[20])
        {
            Editable = false;
            TableRelation = "Prod. Order Routing Line"."Operation No." WHERE ("Prod. Order No."=FIELD("Production Order"),
                                                                              "Routing Reference No."=FIELD("Production Order Line No."),
                                                                              "Routing No."=FIELD("Routing No."));
        }
        field(24;"Routing No.";Code[20])
        {
            Editable = false;
            TableRelation = "Routing Line"."Routing No.";

            trigger OnValidate();
            begin
                TestStatusOpen;;
            end;
        }
        field(27;"MRIR No.";Code[20])
        {
            TableRelation = IF (Type=CONST(Item)) "Inspection Receipt Header"."No." WHERE (Status=CONST(false),
                                                                                           "Item No."=FIELD("No."));
        }
        field(28;Status;Option)
        {
            Description = 'Calibration';
            OptionCaption = 'Not Posted,Posted';
            OptionMembers = "Not Posted",Posted;
        }
        field(29;"RET/NRET";Option)
        {
            OptionMembers = Returnable,"Non-Returnable";

            trigger OnValidate();
            begin
                TestStatusOpen;;
            end;
        }
        field(30;"Material Group";Code[20])
        {
            TableRelation = "Product Group";

            trigger OnValidate();
            begin
                TestStatusOpen;;
            end;
        }
        field(31;"S.L.No.";Text[250])
        {
        }
        field(32;Purpose;Text[100])
        {
        }
        field(33;"Submited TO (dept)";Code[20])
        {
        }
        field(34;"Submition Date";Date)
        {
        }
        field(35;"Exp. Date";Date)
        {
        }
        field(36;"Exp.Incurred";Decimal)
        {
        }
    }

    keys
    {
        key(Key1;"Document No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        TestStatusOpen;
    end;

    var
        RGPInHeaderRelease : Record "RGP In Header";

    [LineStart(2495)]
    local procedure TestStatusOpen();
    begin
        RGPInHeaderRelease.SetRange("RGP In No.","Document No.");
        if RGPInHeaderRelease.Find('-') then
          RGPInHeaderRelease.TestField("Release Status",RGPInHeaderRelease."Release Status"::Open);
    end;
}

