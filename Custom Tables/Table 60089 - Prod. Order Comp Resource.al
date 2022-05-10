table 60089 "Prod. Order Comp Resource"
{
    // version PCB

    DrillDownPageID = 60080;
    LookupPageID = 60080;

    fields
    {
        field(1;Status;Option)
        {
            Caption = 'Status';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(2;"Prod. Order No.";Code[20])
        {
            Caption = 'Prod. Order No.';
            TableRelation = "Production Order"."No." WHERE (Status=FIELD(Status));
        }
        field(3;"Prod. Order Line No.";Integer)
        {
            Caption = 'Prod. Order Line No.';
            TableRelation = "Prod. Order Line"."Line No." WHERE (Status=FIELD(Status),
                                                                 "Prod. Order No."=FIELD("Prod. Order No."));
        }
        field(5;"Item No.";Code[20])
        {
            TableRelation = Item;
        }
        field(10;"Serial No.";Code[20])
        {
            Editable = false;

            trigger OnValidate();
            begin
                TestField("IDS Generated",false);
            end;
        }
        field(11;"Lot No.";Code[20])
        {
            Editable = false;
        }
        field(12;Resource;Code[20])
        {
            TableRelation = "Machine Center";
        }
        field(13;"ILE No.";Integer)
        {
            Editable = false;
        }
        field(14;"IDS Generated";Boolean)
        {
        }
    }

    keys
    {
        key(Key1;Status,"Prod. Order No.","Prod. Order Line No.","Serial No.")
        {
        }
    }

    fieldgroups
    {
    }
}

