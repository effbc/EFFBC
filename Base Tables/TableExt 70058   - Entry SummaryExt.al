tableextension 70058 EntrySummaryExt extends "Entry Summary"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change Editable on ""Serial No."(Field 6500)". Please convert manually.


        //Unsupported feature: Change Editable on ""Lot No."(Field 6501)". Please convert manually.


        //Unsupported feature: Change Editable on ""Warranty Date"(Field 6502)". Please convert manually.


        //Unsupported feature: Change Editable on ""Expiration Date"(Field 6503)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Selected Quantity"(Field 6505)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Bin Content"(Field 6508)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bin Content"(Field 6508)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bin Active"(Field 6509)". Please convert manually.


        //Unsupported feature: Change Editable on ""Non-specific Reserved Qty."(Field 6510)". Please convert manually.


        //Unsupported feature: Change Editable on ""Double-entry Adjustment"(Field 6511)". Please convert manually.


        //Unsupported feature: CodeModification on ""Selected Quantity"(Field 6505).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Bin Active" AND ("Total Available Quantity" > "Bin Content") THEN BEGIN
          AvailableToSelect := QtyAvailableToSelectFromBin;
          IF "Selected Quantity" > AvailableToSelect THEN
            ERROR(Text001,TypeHelper.Maximum(0,AvailableToSelect));
        END ELSE
          IF "Selected Quantity" > "Total Available Quantity" THEN
            ERROR(Text001,"Total Available Quantity");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Bin Active" and ("Total Available Quantity" > "Bin Content") then begin
          AvailableToSelect := QtyAvailableToSelectFromBin;
          if "Selected Quantity" > AvailableToSelect then
            Error(Text001,TypeHelper.Maximum(0,AvailableToSelect));
        end else
          if "Selected Quantity" > "Total Available Quantity" then
            Error(Text001,"Total Available Quantity");
        */
        //end;
        field(60001; "Set Selection"; Boolean)
        {
        }
        field(60002; "Item Entry No."; Integer)
        {
            Description = 'B2B';
        }
        field(60003; "External Dcument.no"; Code[20])
        {
            CalcFormula = Lookup("Quality Item Ledger Entry"."External Document No." WHERE("Lot No." = FIELD("Lot No."),
                                                                                            Quantity = FIELD("Total Quantity")));
            FieldClass = FlowField;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Lot No.,Serial No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Expiration Date"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Lot No.", "Serial No.")
        {
        }
        key(Key3; "Expiration Date")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Selected Quantity"(Field 6505).OnValidate.TypeHelper(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Selected Quantity" : 10;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Selected Quantity" : "Type Helper";
    //Variable type has not been exported.
}

