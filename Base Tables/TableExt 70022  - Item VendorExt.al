tableextension 70022 ItemVendorExt extends "Item Vendor"
{
    // version NAVW19.00.00.50868,B2B1.0,POAU

    fields
    {

        //Unsupported feature: Change NotBlank on ""Item No."(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Vendor No."(Field 2)". Please convert manually.


        //Unsupported feature: Change Data type on ""Variant Code"(Field 5700)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 5700)". Please convert manually.


        //Unsupported feature: CodeModification on ""Vendor No."(Field 2).OnValidate". Please convert manually.

        //trigger "(Field 2)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        Vend.GET("Vendor No.");
        "Lead Time Calculation" := Vend."Lead Time Calculation";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Vend.Get("Vendor No.");
        "Lead Time Calculation" := Vend."Lead Time Calculation";
        */
        //end;
        field(60001; "Sampling Plan Code"; Code[20])
        {
            Description = 'B2B';
            //TableRelation = "Item Variant".Make;
        }
        field(60002; "Total Qty. Supplied"; Decimal)
        {
            CalcFormula = Sum("Purch. Rcpt. Line".Quantity WHERE(Type = CONST(Item),
                                                                  "Buy-from Vendor No." = FIELD("Vendor No."),
                                                                  "No." = FIELD("Item No.")));
            Description = 'B2B';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60003; "Qty. Supplied With in DueDate"; Decimal)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60004; Approved; Boolean)
        {
            Description = 'POAU';

            trigger OnValidate();
            begin
                //NSS1.0 >> BEGIN
                if Approved = true then
                    "Refernce Number" := true
                else
                    "Refernce Number" := false;
                //NSS1.0 << END
            end;
        }
        field(60005; "Refernce Number"; Boolean)
        {
            Description = 'POAU';
        }
        field(60006; "Delivery Rating"; Decimal)
        {
            CalcFormula = Sum("Purch. Rcpt. Line"."Delivery Rating" WHERE("Buy-from Vendor No." = FIELD("Vendor No."),
                                                                           Type = FILTER(Item),
                                                                           "No." = FIELD("Item No.")));
            Description = 'POAU';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60007; "Avg. Delivery Rating"; Decimal)
        {
            Description = 'POAU';
            Editable = false;
        }
        field(60008; "Avg. Quality Rating"; Decimal)
        {
            Description = 'POAU';
            Editable = false;
        }
        field(60015; "Quality Rating"; Decimal)
        {
            Description = 'POAU';
            Editable = false;
        }
        field(60016; Description; Text[30])
        {
            Caption = 'Description';
            TableRelation = Item.Description WHERE("No." = FIELD("Item No."));
        }
        field(60017; Priority; Code[10])
        {
        }
        field(60018; "Minimum Order Quantity"; Decimal)
        {
            Caption = 'Variant Code';
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Vendor No.,Item No.,Variant Code"(Key)". Please convert manually.


        //Unsupported feature: PropertyModification on ""Item No.,Variant Code,Vendor No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Vendor No.,Vendor Item No."(Key)". Please convert manually.

        key(Vendor1; "Vendor No.", "Item No.", "Variant Code")
        {
        }
        key(ItemNo2; "Item No.", "Variant Code", "Vendor No.")
        {
        }
        key(VendItem3; "Vendor No.", "Vendor Item No.")
        {
        }
    }

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "Vend(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Vend : 23;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Vend : Vendor;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemCrossReference(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemCrossReference : 5717;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemCrossReference : "Item Cross Reference";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DistIntegration(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DistIntegration : 5702;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DistIntegration : "Dist. Integration";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "LeadTimeMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //LeadTimeMgt : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //LeadTimeMgt : "Lead-Time Management";
    //Variable type has not been exported.
}

