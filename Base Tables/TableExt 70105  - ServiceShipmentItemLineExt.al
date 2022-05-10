tableextension 70105 ServiceShipmentItemLineExt extends "Service Shipment Item Line"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change Editable on ""No."(Field 1)". Please convert manually.


        //Unsupported feature: Change Editable on ""Starting Date"(Field 14)". Please convert manually.


        //Unsupported feature: Change Editable on ""Starting Time"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Finishing Date"(Field 16)". Please convert manually.


        //Unsupported feature: Change Editable on ""Finishing Time"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Contract No."(Field 26)". Please convert manually.


        //Unsupported feature: Change Editable on ""Contract No."(Field 26)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Location of Service Item"(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""Location of Service Item"(Field 27)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Fault Code"(Field 35)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Fault Comment"(Field 37)". Please convert manually.


        //Unsupported feature: Change Editable on ""Fault Comment"(Field 37)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Resolution Comment"(Field 38)". Please convert manually.


        //Unsupported feature: Change Editable on ""Resolution Comment"(Field 38)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Accessory Comment"(Field 39)". Please convert manually.


        //Unsupported feature: Change Editable on ""Accessory Comment"(Field 39)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 40)". Please convert manually.


        //Unsupported feature: Change Editable on ""Service Price Adjmt. Gr. Code"(Field 44)". Please convert manually.


        //Unsupported feature: Change Editable on ""Adjustment Type"(Field 45)". Please convert manually.


        //Unsupported feature: Change Editable on ""Base Amount to Adjust"(Field 46)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""No. of Active/Finished Allocs"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""No. of Active/Finished Allocs"(Field 60)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ship-to Code"(Field 64)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Customer No."(Field 65)". Please convert manually.


        //Unsupported feature: Change Editable on ""Customer No."(Field 65)". Please convert manually.


        //Unsupported feature: Change Editable on ""Responsibility Center"(Field 97)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.

        field(60090; "Dimension Corrected"; Boolean)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
        }
        field(60091; "OLD Dim Set ID"; Integer)
        {
            Description = 'added  by sujani for Dimension issue clearance (B2B Assistance)';
            Editable = false;
            TableRelation = "Dimension Set Entry Backup2"."Dimension Set ID" WHERE("Dimension Set ID" = FIELD("OLD Dim Set ID"));

            trigger OnLookup();
            begin
                //ShowDimensionsOLD;
            end;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""No.,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Item No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Item No.,Serial No.,Loaner No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Service Price Group Code,Adjustment Type,Base Amount to Adjust,Customer No."(Key)". Please convert manually.

        key(Key1; "No.", "Line No.")
        {
        }
        key(Key2; "Service Item No.")
        {
        }
        key(Key3; "Item No.", "Serial No.", "Loaner No.")
        {
        }
        key(Key4; "Service Price Group Code", "Adjustment Type", "Base Amount to Adjust", "Customer No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "ShowComments(PROCEDURE 11).ServShipmentHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowComments : 5990;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowComments : "Service Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowComments(PROCEDURE 11).ServCommentLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowComments : 5906;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowComments : "Service Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}

