tableextension 70153 DimensionSetEntryExt extends "Dimension Set Entry"
{
    // version NAVW17.00

    fields
    {

        //Unsupported feature: Change NotBlank on ""Dimension Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Dimension Value Code"(Field 3)". Please convert manually.


        //Unsupported feature: Change NotBlank on ""Dimension Value Code"(Field 3)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Dimension Name"(Field 5)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Name"(Field 5)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Dimension Value Name"(Field 6)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Value Name"(Field 6)". Please convert manually.


        //Unsupported feature: CodeModification on ""Dimension Code"(Field 2).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT DimMgt.CheckDim("Dimension Code") THEN
          ERROR(DimMgt.GetDimErr);
        IF "Dimension Code" <> xRec."Dimension Code" THEN BEGIN
          "Dimension Value Code" := '';
          "Dimension Value ID" := 0;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not DimMgt.CheckDim("Dimension Code") then
          Error(DimMgt.GetDimErr);
        if "Dimension Code" <> xRec."Dimension Code" then begin
          "Dimension Value Code" := '';
          "Dimension Value ID" := 0;
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Dimension Value Code"(Field 3).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF NOT DimMgt.CheckDimValue("Dimension Code","Dimension Value Code") THEN
          ERROR(DimMgt.GetDimErr);

        DimVal.GET("Dimension Code","Dimension Value Code");
        "Dimension Value ID" := DimVal."Dimension Value ID";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if not DimMgt.CheckDimValue("Dimension Code","Dimension Value Code") then
          Error(DimMgt.GetDimErr);

        DimVal.Get("Dimension Code","Dimension Value Code");
        "Dimension Value ID" := DimVal."Dimension Value ID";
        */
        //end;
    }
    keys
    {

        //Unsupported feature: Deletion on ""Dimension Set ID,Dimension Code"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Dimension Value ID"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Dimension Code,Dimension Value Code,Dimension Set ID"(Key)". Please convert manually.

        key(Key1; "Dimension Set ID", "Dimension Code")
        {
        }
        key(Key2; "Dimension Value ID")
        {
        }
        key(Key3; "Dimension Code", "Dimension Value Code", "Dimension Set ID")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF DimVal.GET("Dimension Code","Dimension Value Code") THEN
      "Dimension Value ID" := DimVal."Dimension Value ID"
    ELSE
      "Dimension Value ID" := 0;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if DimVal.Get("Dimension Code","Dimension Value Code") then
      "Dimension Value ID" := DimVal."Dimension Value ID"
    else
      "Dimension Value ID" := 0;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF DimVal.GET("Dimension Code","Dimension Value Code") THEN
      "Dimension Value ID" := DimVal."Dimension Value ID"
    ELSE
      "Dimension Value ID" := 0;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if DimVal.Get("Dimension Code","Dimension Value Code") then
      "Dimension Value ID" := DimVal."Dimension Value ID"
    else
      "Dimension Value ID" := 0;
    {OldDim.RESET;
    OldDim.SETFILTER(OldDim."Dimension Code","Dimension Code");
    OldDim.SETFILTER(OldDim.Code,"Dimension Value Code");
    IF OldDim.FINDFIRST THEN
      OldDimValName := OldDim.Name;
    NewDim.RESET;
    NewDim.SETFILTER(NewDim."Dimension Code","Dimension Code");
    NewDim.SETFILTER(NewDim.Code,"Dimension Value Code");
    IF NewDim.FINDFIRST THEN
      NewDimValName := NewDim.Name;
    NewDim.RESET;
    Mail_From:='noreply@efftronics.com';
    Mail_To:='erp@efftronics.com';
    Subject:='ERP-Dimension Set Entry Changes';
    Body:='<html><BODY><h3><center>Dimension Set Entry Changes Details!<BR>';
    Body+= '</center></h3>';
    Body+='<br><table style="WIDTH:400px; HEIGHT: 20px; FONT-WEIGHT: bold"';
    Body+='border="1" align="Center">';
    Body+='<tr><td align="center">Field</td><td align="center">New Value</td><td align="center">Old Value</td></tr>';
    Body+='<tr><td>Dimension  Set ID</td><td align="right">'+FORMAT("Dimension Set ID")+'</td><td align="right">'+FORMAT(xRec."Dimension Set ID")+'</td></tr>';
    Body+='<tr><td>Dimension Code</td><td align="right">'+"Dimension Code"+'</td><td align="right">'+xRec."Dimension Code"+'</td></tr>';
    Body+='<tr><td>Dimension Value Code</td><td align="right">'+"Dimension Value Code"+'</td><td align="right">'+xRec."Dimension Value Code"+'</td></tr>';
    Body+='<tr><td>Dimension Value Id</td><td align="right">'+FORMAT("Dimension Value ID")+'</td><td align="right">'+FORMAT(xRec."Dimension Value ID")+'</td></tr>';
    Body+='<tr><td>Dimension Name</td><td align="right">'+"Dimension Name"+'</td><td align="right">'+xRec."Dimension Name"+'</td></tr>';
    Body+='<tr><td>Dimension Value Name</td><td align="right">'+OldDimValName+'</td><td align="right">'+NewDimValName+'</td></tr>';
    Body+='<tr><td>User ID</td><td colspan=2; align="right">'+USERID+'</td></tr></table><br>';
    Body+='<br><p><center>            ****  Automatic Mail Generated From ERP  ****       </center></p></BODY></html>';
    SMTP_MAIL.CreateMessage('ERP',Mail_From,Mail_To,Subject,Body,TRUE);
    IF "Dimension Set ID" <> 0 THEN
      SMTP_MAIL.Send;}// commented by SUJANI on 091018
    */
    //end;


    //Unsupported feature: CodeInsertion on "OnRename". Please convert manually.

    //trigger OnRename();
    //Parameters and return type have not been exported.
    //begin
    /*
    if not (UserId  in ['EFFTRONICS\SUVARCHALADEVI','EFFTRONICS\TPRIYANKA','EFFTRONICS\DURGAMAHESWARI'])

    then Error('You Donot have Right to Rename '+Format("Dimension Set ID"));
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "GetDimensionSetID(PROCEDURE 3).DimSetEntry2(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDimensionSetID : 480;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDimensionSetID : "Dimension Set Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetDimensionSetID(PROCEDURE 3).DimSetTreeNode(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetDimensionSetID : 481;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetDimensionSetID : "Dimension Set Tree Node";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "InsertDimSetEntries(PROCEDURE 13).DimSetEntry2(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //InsertDimSetEntries : 480;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //InsertDimSetEntries : "Dimension Set Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimVal(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimVal : 349;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimVal : "Dimension Value";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.

    var
        Body: Text;
        Subject: Text;
        Mail_To: Text;
        Mail_From: Text;
        Mail: Codeunit Mail;
        SMTP_MAIL: Codeunit "SMTP Mail";
        OldDim: Record "Dimension Value";
        NewDim: Record "Dimension Value";
        OldDimValName: Text;
        NewDimValName: Text;
}

