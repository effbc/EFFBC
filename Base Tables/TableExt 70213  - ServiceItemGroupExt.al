tableextension 70213 ServiceItemGroupExt extends "Service Item Group"
{
    // version NAVW19.00.00.45778

    fields
    {

        //Unsupported feature: Change Data type on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change BlankZero on ""Default Contract Discount %"(Field 4)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: PropertyChange on "Code(Key)". Please convert manually.

    }

    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    StdServItemGrCode.RESET;
    StdServItemGrCode.SETRANGE("Service Item Group Code",Code);
    StdServItemGrCode.DELETEALL;

    ResSkillMgt.DeleteServItemGrResSkills(Code);
    DimMgt.DeleteDefaultDim(DATABASE::"Service Item Group",Code);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    StdServItemGrCode.Reset;
    StdServItemGrCode.SetRange("Service Item Group Code",Code);
    StdServItemGrCode.DeleteAll;
    #4..6
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.StdServItemGrCode(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.StdServItemGrCode : 5998;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.StdServItemGrCode : "Standard Service Item Gr. Code";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.ResSkillMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ResSkillMgt : 5931;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ResSkillMgt : "Resource Skill Mgt.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.DimMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnRename.DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnRename.DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnRename.DimMgt : DimensionManagement;
    //Variable type has not been exported.
}

