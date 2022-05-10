tableextension 70156 EmployeeStatisticsGroupExt extends "Employee Statistics Group"
{
    // version NAVW17.00

    fields
    {
        modify("Code")
        {

            //Unsupported feature: Change Name on "Code(Field 1)". Please convert manually.

            CaptionML = ENU = 'Division Code';

            //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.

        }
        modify(Description)
        {

            //Unsupported feature: Change Name on "Description(Field 2)". Please convert manually.


            //Unsupported feature: Change Data type on "Description(Field 2)". Please convert manually.

            CaptionML = ENU = 'Zone code';

            //Unsupported feature: Change TableRelation on "Description(Field 2)". Please convert manually.

        }
        field(50000; "Division Name"; Text[50])
        {
            Caption = 'Division Name';
        }
        field(50001; "Project Manager"; Code[50])
        {
            TableRelation = Employee."No.";
        }
        field(50002; "Stock Verified"; Boolean)
        {
        }
        field(50003; "Cumilative Division1"; Text[30])
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on "Code(Key)". Please convert manually.

        key(Key1; "Division Code")
        {
        }
        key(Key2; "Project Manager", "Division Code", "Zone code")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.

}

