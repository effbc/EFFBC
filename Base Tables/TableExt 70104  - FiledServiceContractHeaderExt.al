tableextension 70104 FiledServiceContractHeaderExt extends "Filed Service Contract Header"
{
    // version NAVW19.00.00.50087

    fields
    {

        //Unsupported feature: Change OptionString on "Status(Field 5)". Please convert manually.


        //Unsupported feature: Change Editable on "Status(Field 5)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Customer No."(Field 7)". Please convert manually.


        //Unsupported feature: Change Editable on "Name(Field 8)". Please convert manually.


        //Unsupported feature: Change Editable on "Address(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Address 2"(Field 10)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Post Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Post Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change Editable on ""Post Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on "City(Field 12)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on "City(Field 12)". Please convert manually.


        //Unsupported feature: Change Editable on "City(Field 12)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salesperson Code"(Field 15)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to Name"(Field 17)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to Address"(Field 18)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to Address 2"(Field 19)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bill-to Post Code"(Field 20)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Bill-to Post Code"(Field 20)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to Post Code"(Field 20)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Bill-to City"(Field 21)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Bill-to City"(Field 21)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to City"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Code"(Field 22)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ship-to Name"(Field 23)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ship-to Address"(Field 24)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ship-to Address 2"(Field 25)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to Post Code"(Field 26)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to Post Code"(Field 26)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ship-to Post Code"(Field 26)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Ship-to City"(Field 27)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Ship-to City"(Field 27)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ship-to City"(Field 27)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Invoice Period"(Field 32)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Invoice Date"(Field 33)". Please convert manually.


        //Unsupported feature: Change Editable on ""Amount per Period"(Field 43)". Please convert manually.


        //Unsupported feature: Change Editable on ""Next Invoice Period"(Field 46)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Price Update Date"(Field 51)". Please convert manually.


        //Unsupported feature: Change Editable on ""Last Price Update %"(Field 53)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Quote Type"(Field 63)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 67)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 68)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Country/Region Code"(Field 92)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Bill-to Country/Region Code"(Field 93)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Ship-to Country/Region Code"(Field 94)". Please convert manually.


        //Unsupported feature: Change Editable on ""Name 2"(Field 95)". Please convert manually.


        //Unsupported feature: Change Editable on ""Bill-to Name 2"(Field 96)". Please convert manually.


        //Unsupported feature: Change Editable on ""Ship-to Name 2"(Field 97)". Please convert manually.


        //Unsupported feature: Change Editable on ""Next Invoice Period Start"(Field 98)". Please convert manually.


        //Unsupported feature: Change Editable on ""Next Invoice Period End"(Field 99)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Filed By"(Field 103)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Reason for Filing"(Field 104)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Contract No. Relation"(Field 106)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Bill-to Contact No."(Field 5051)". Please convert manually.

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

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Contract Type Relation,Contract No. Relation,File Date,File Time"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Contract Type,Contract No."(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Contract Type Relation", "Contract No. Relation", "File Date", "File Time")
        {
        }
        key(Key3; "Contract Type", "Contract No.")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    FiledContractLine.RESET;
    FiledContractLine.SETRANGE("Entry No.","Entry No.");
    FiledContractLine.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    FiledContractLine.Reset;
    FiledContractLine.SetRange("Entry No.","Entry No.");
    FiledContractLine.DeleteAll;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""E-Mail"(Field 88).OnValidate.MailManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"E-Mail" : 9520;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"E-Mail" : "Mail Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on ""Filed By"(Field 103).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"Filed By" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"Filed By" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FileContract(PROCEDURE 1).ServContractLine(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FileContract : 5964;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FileContract : "Service Contract Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FiledServContractHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FiledServContractHeader : 5970;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FiledServContractHeader : "Filed Service Contract Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FiledContractLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FiledContractLine : 5971;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FiledContractLine : "Filed Contract Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.
}

