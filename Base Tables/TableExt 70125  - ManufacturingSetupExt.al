tableextension 70125 ManufacturingSetupExt extends "Manufacturing Setup"
{
    // version NAVW19.00.00.45778,B2B1.0

    fields
    {

        //Unsupported feature: Change Editable on ""Primary Key"(Field 1)". Please convert manually.


        //Unsupported feature: Change InitValue on ""Doc. No. Is Prod. Order No."(Field 9)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Work Center Nos."(Field 29)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Machine Center Nos."(Field 30)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Production BOM Nos."(Field 31)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Routing Nos."(Field 32)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Combined MPS/MRP Calculation"(Field 38)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Components at Location"(Field 39)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Blank Overflow Level"(Field 43)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Preset Output Quantity"(Field 5500)". Please convert manually.

        field(60001; "Soldering Time Req.for BID"; Decimal)
        {
            Description = 'B2B';
        }
        field(60002; "Soldering Time Req.for DIP"; Decimal)
        {
            Description = 'B2B';
        }
        field(60003; "Soldering Cost per Hour"; Decimal)
        {
            Description = 'B2B';
        }
        field(60004; "Development Cost Per Hour"; Decimal)
        {
            Description = 'B2B';
        }
        field(60005; "MI Transfer From Code"; Code[20])
        {
            TableRelation = Location;
        }
        field(60006; "Total Fixing Points Time"; Decimal)
        {
            Description = 'B2B';
        }
        field(60007; "Total Soldering Time"; Decimal)
        {
            Description = 'B2B';
        }
        field(60008; "Production Location"; Code[10])
        {
            Description = 'B2B';
            TableRelation = Location;
        }
        field(60009; "No. of Units/Day"; Decimal)
        {
        }
        field(60010; "Consider Exp. Order Material"; Boolean)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Primary Key"(Key)". Please convert manually.

        key(Key1; "Primary Key")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""Default Dampener Period"(Field 40).OnValidate.CalendarMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Default Dampener Period" : 7600;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Default Dampener Period" : "Calendar Management";
    //Variable type has not been exported.
}

