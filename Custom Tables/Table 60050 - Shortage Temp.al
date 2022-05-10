table 60050 "Shortage Temp"
{
    DataCaptionFields = "Item No.",Description;

    fields
    {
        field(1;"Item No.";Code[20])
        {
            NotBlank = false;
            TableRelation = Item WHERE ("No."=FIELD("Item No."));

            trigger OnValidate();
            begin
                 if Item.Get(Item."No.") then
                 begin
                   "Lead Time":=Item."Safety Lead Time";
                   Description:=Item.Description;
                   "Unit of Measure":=Item."Base Unit of Measure";
                 end;
            end;
        }
        field(2;Description;Text[50])
        {
        }
        field(3;Shortage;Decimal)
        {
        }
        field(4;"Lead Time";DateFormula)
        {
        }
        field(5;"Suitable Vendor";Code[20])
        {
            TableRelation = Vendor WHERE (Blocked=FILTER(<>All));

            trigger OnValidate();
            begin
                 if Vendor.Get("Suitable Vendor") then
                 "Vendor Name":=Vendor.Name;
            end;
        }
        field(6;"Unit Cost";Decimal)
        {
            Caption = 'Unit Cost';
        }
        field(7;"Production  Orders";Code[20])
        {
            TableRelation = "Production Order"."No." WHERE (Status=CONST(Released));
        }
        field(8;"Purchase Orders";Decimal)
        {
        }
        field(9;"Planned Purchase Date (WOB)";Date)
        {
        }
        field(10;"Planned Purchase Date";Date)
        {
        }
        field(11;"Minimum Order Qty.";Decimal)
        {
            CalcFormula = Lookup(Item."Minimum Order Quantity" WHERE ("No."=FIELD("Item No.")));
            FieldClass = FlowField;
        }
        field(12;"Vendor Name";Text[50])
        {
        }
        field(13;"Minimum Order Quanity";Decimal)
        {
        }
        field(14;Authorisation;Option)
        {
            OptionMembers = Open,WFA,Authorised;
        }
        field(15;"Unit of Measure";Code[10])
        {
        }
        field(16;"Earliest Required Day";Date)
        {
            CalcFormula = Min("Item Lot Numbers"."Material Required Date" WHERE ("Item No"=FIELD("Item No.")));
            FieldClass = FlowField;
        }
        field(17;"Present Week";Decimal)
        {
        }
        field(18;"Direct Unit Cost";Decimal)
        {
        }
        field(19;"Overall Requirement";Decimal)
        {
            Caption = 'Overall Shoratge';
        }
        field(20;"Next 15 Days";Decimal)
        {
        }
        field(21;"In One Month";Decimal)
        {
        }
        field(22;"Below Present Week";Decimal)
        {
        }
        field(23;"Next Week";Decimal)
        {
        }
        field(24;"This Week";Decimal)
        {
        }
        field(26;"Product Group Code";Code[20])
        {
            CalcFormula = Lookup(Item."Product Group Code" WHERE ("No."=FIELD("Item No.")));
            FieldClass = FlowField;
        }
        field(27;"Required  Qty";Decimal)
        {
        }
        field(28;"Qty. In Material Issues";Decimal)
        {
            FieldClass = Normal;
        }
        field(29;"Earliest Mat. Req. Date";Date)
        {
        }
        field(30;"Qty. In Stores";Decimal)
        {
            CalcFormula = Lookup(Item."Stock at Stores" WHERE ("No."=FIELD("Item No.")));
            FieldClass = FlowField;
        }
        field(31;"Qty. In MCH";Decimal)
        {
        }
        field(32;"Qty. In R&D";Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE ("Item No."=FIELD("Item No."),
                                                                              "Location Code"=CONST('R&D STR')));
            FieldClass = FlowField;
        }
        field(33;"Qty. In CS";Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE ("Item No."=FIELD("Item No."),
                                                                              "Location Code"=CONST('CS STR')));
            FieldClass = FlowField;
        }
        field(34;"Get From R&D";Boolean)
        {
        }
        field(35;"Get From CS";Boolean)
        {
        }
        field(36;"Purchase Time Slot";Code[10])
        {
        }
        field(37;"Qty Under Inspection";Decimal)
        {
        }
        field(38;"Final Mat. Req. Date";Date)
        {
            CalcFormula = Max("Prod. Order Component"."Production Plan Date" WHERE ("Item No."=FIELD("Item No."),
                                                                                    "Production Plan Date"=FILTER(<>0D)));
            FieldClass = FlowField;
        }
        field(39;"Complicarted Item";Boolean)
        {
        }
        field(40;"Type Of Item";Option)
        {
            OptionMembers = Normal,Ordered,Alternate,MOQ,Problematic;
        }
        field(41;"Alternate Item";Code[20])
        {
            TableRelation = Item;
        }
        field(42;Difference;Decimal)
        {
        }
        field(43;"Accepted By Purchase";Boolean)
        {
        }
        field(44;"Not Needed";Boolean)
        {
        }
        field(45;Confirmed;Boolean)
        {
        }
        field(46;"Total Cost";Decimal)
        {
        }
        field(47;"Alternated Item";Code[20])
        {
        }
        field(48;Remarks;Text[50])
        {
        }
        field(49;"Possible Procurement Date";Date)
        {
        }
        field(50;"Possible Procured Qty";Decimal)
        {
        }
        field(51;"Change Plan";Boolean)
        {
        }
        field(52;"Don't Repeat";Boolean)
        {
        }
        field(53;Reason;Option)
        {
            OptionMembers = Null,"Ordered in Other Store","Within Buffer","Unit of Measure Mismatch","Plan Shifted","As Per Process not Effecteed to Production";
        }
        field(54;"Tax Structure";Text[30])
        {
            TableRelation = "Structure Header".Code;
        }
        field(55;Neditemsqty;Decimal)
        {
        }
        field(56;"Total PO Qty";Decimal)
        {
        }
        field(57;"Qty. In PROD";Decimal)
        {
        }
        field(58;"Req Qty";Decimal)
        {
        }
    }

    keys
    {
        key(Key1;"Item No.")
        {
        }
        key(Key2;"Total Cost","Lead Time","Item No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    begin
        TestField("Item No.",'');
    end;

    var
        Vendor : Record Vendor;
        Item : Record Item;
}

