table 60018 "Item Wise Min. Req. Qty at Loc"
{

    fields
    {
        field(1;Location;Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Dimension Code"=CONST('LOCATIONS'));

            trigger OnValidate();
            begin
                /*"Dimension Value".SETRANGE("Dimension Value"."Dimension Code",'Locations');
                "Dimension Value".SETRANGE("Dimension Value".Code,Location);
                IF "Dimension Value".FIND('-') THEN
                  "Location Name":="Dimension Value".Name;
                */
                Division.Reset;
                Division.SetRange(Division."Division Code",Location);
                if Division.FindFirst then
                  "Location Name":=Division."Division Name";

            end;
        }
        field(2;Item;Code[30])
        {
            TableRelation = Item;

            trigger OnValidate();
            begin
                 if item1.Get(Item) then
                 begin
                  Descirption:=item1.Description;
                  "Unit Cost (LCY)":=item1."Avg Unit Cost";
                 end;
            end;
        }
        field(3;Descirption;Text[50])
        {
        }
        field(4;"Minimum Stock Quantity";Integer)
        {
            Editable = true;
        }
        field(5;"Location Name";Text[50])
        {
        }
        field(6;"Actual Qty";Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE ("Global Dimension 2 Code"=FIELD(Location),
                                                                              "Item No."=FIELD(Item),
                                                                              "Remaining Quantity"=FILTER(>0),
                                                                              "Location Code"=FIELD("Base Location")));
            FieldClass = FlowField;
        }
        field(7;"AMC Qty";Decimal)
        {

            trigger OnValidate();
            begin
                  // "Minimum Stock Quantity":="AMC Qty"+"Warranty Qty";
            end;
        }
        field(8;"Warranty Qty";Decimal)
        {

            trigger OnValidate();
            begin
                  //    "Minimum Stock Quantity":="AMC Qty"+"Warranty Qty";
            end;
        }
        field(9;"Unit Cost (LCY)";Decimal)
        {
            FieldClass = Normal;
        }
        field(10;"Type Of Module";Option)
        {
            OptionMembers = Digital,Processor,Communication,Analog,Supply,DIS,Modem,Moth,Chargers,DB;
        }
        field(11;"Responsible Person";Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE ("Dimension Code"=CONST('EMPLOYEE CODES'));

            trigger OnValidate();
            begin
                  "Dimension Value".SetFilter("Dimension Value"."Dimension Code",'Employee Codes');
                  "Dimension Value".SetRange("Dimension Value".Code,"Responsible Person");
                  if "Dimension Value".Find('-') then
                     Name:="Dimension Value".Name;
            end;
        }
        field(12;Name;Text[30])
        {
        }
        field(13;"Old Stock";Integer)
        {
        }
        field(14;"User Id";Code[10])
        {
            Editable = false;
        }
        field(15;"Last Date Modified";Date)
        {
            Editable = false;
        }
        field(16;"Creation Date";Date)
        {
        }
        field(17;"Base Location";Code[10])
        {
        }
        field(18;"Non-Working Cards";Integer)
        {
            CalcFormula = Count("Service Item" WHERE ("Present Location"=FIELD("Location Name"),
                                                      "Item No."=FIELD(Item),
                                                      "WORKING STATUS"=CONST("NON-WORKING")));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1;Location,Item)
        {
        }
        key(Key2;Item,Location)
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert();
    begin
         if not(   (Location='H-OFF')
                or (Location='SERVICE')
                or (Location='DAMAGE'))then
            "Base Location" :='SITE';
         if (   (Location='H-OFF')
             or (Location='SERVICE')
             or (Location='DAMAGE'))then
            "Base Location" :='CS';
         "Creation Date":=Today;
    end;

    trigger OnModify();
    begin
        /*
        IF (USERID='EFFTRONICS\RAMADEVI') OR (USERID='07CS019') THEN
        BEGIN
          "User Id":=USERID;
          "Last Date Modified":=TODAY;
        END ELSE
          ERROR('You Do not Have Permissions to Modify');
        */

    end;

    trigger OnRename();
    begin
        //TESTFIELD("Minimum Stock Quantity",0);
    end;

    var
        item1 : Record Item;
        "Dimension Value" : Record "Dimension Value";
        Division : Record Division;
}

