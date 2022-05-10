tableextension 70060 ExcelBufferExt extends "Excel Buffer"
{
    // version NAVW19.00.00.50221,NAVIN9.00.00.50221

    fields
    {

        //Unsupported feature: CodeModification on ""Row No."(Field 1).OnValidate". Please convert manually.

        //trigger "(Field 1)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        xlRowID := '';
        IF "Row No." <> 0 THEN
          xlRowID := FORMAT("Row No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        xlRowID := '';
        if "Row No." <> 0 then
          xlRowID := Format("Row No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Column No."(Field 3).OnValidate". Please convert manually.

        //trigger "(Field 3)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        xlColID := '';
        x := "Column No.";
        WHILE x > 26 DO BEGIN
          y := x MOD 26;
          IF y = 0 THEN
            y := 26;
          c := 64 + y;
          i := i + 1;
          t[i] := c;
          x := (x - y) DIV 26;
        END;
        IF x > 0 THEN BEGIN
          c := 64 + x;
          i := i + 1;
          t[i] := c;
        END;
        FOR x := 1 TO i DO
          xlColID[x] := t[1 + i - x];
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        xlColID := '';
        x := "Column No.";
        while x > 26 do begin
          y := x mod 26;
          if y = 0 then
        #6..9
          x := (x - y) div 26;
        end;
        if x > 0 then begin
        #13..15
        end;
        for x := 1 to i do
          xlColID[x] := t[1 + i - x];
        */
        //end;
        field(50000; "Font Name"; Text[100])
        {
        }
        field(50001; "Font Size"; Integer)
        {
        }
        field(50002; "Font Color"; Integer)
        {
        }
        field(50003; "Background Color"; Integer)
        {
        }
        field(50004; "Using Custom Format"; Boolean)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Row No.,Column No."(Key)". Please convert manually.

        key(Key1; "Row No.", "Column No.")
        {
        }
    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "WriteAllToCurrentSheet(PROCEDURE 49).ExcelBufferDialogMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WriteAllToCurrentSheet : 5370;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WriteAllToCurrentSheet : "Excel Buffer Dialog Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateRangeName(PROCEDURE 9).TempExcelBuf(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateRangeName : 370;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateRangeName : "Excel Buffer";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ReadSheetContinous(PROCEDURE 58).ExcelBufferDialogMgt(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ReadSheetContinous : 5370;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ReadSheetContinous : "Excel Buffer Dialog Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectSheetsName(PROCEDURE 6).TempBlob(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectSheetsName : 99008535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectSheetsName : TempBlob;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SelectSheetsNameStream(PROCEDURE 56).TempNameValueBuffer(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SelectSheetsNameStream : 823;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectSheetsNameStream : "Name/Value Buffer";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ExportBudgetFilterToFormula(PROCEDURE 11).TempExcelBufFormula(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ExportBudgetFilterToFormula : 370;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ExportBudgetFilterToFormula : "Excel Buffer";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ExportBudgetFilterToFormula(PROCEDURE 11).TempExcelBufFormula2(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ExportBudgetFilterToFormula : 370;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ExportBudgetFilterToFormula : "Excel Buffer";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "StartRange(PROCEDURE 19).DummyExcelBuf(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //StartRange : 370;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StartRange : "Excel Buffer";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "EndRange(PROCEDURE 23).DummyExcelBuf(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //EndRange : 370;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EndRange : "Excel Buffer";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenUsingDocumentService(PROCEDURE 21).DocumentServiceMgt(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenUsingDocumentService : 9510;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenUsingDocumentService : "Document Service Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenUsingDocumentService(PROCEDURE 21).FileMgt(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenUsingDocumentService : 419;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenUsingDocumentService : "File Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SaveToStream(PROCEDURE 55).TempBlob(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SaveToStream : 99008535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SaveToStream : TempBlob;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TempInfoExcelBuf(Variable 1036)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TempInfoExcelBuf : 370;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TempInfoExcelBuf : "Excel Buffer";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FileManagement(Variable 1045)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FileManagement : 419;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FileManagement : "File Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenXMLManagement(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenXMLManagement : 6223;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenXMLManagement : "OpenXML Management";
    //Variable type has not been exported.

    var
        str: Text[100];
        fname1: Text[100];
        XlRange: DotNet "'Microsoft.Office.Interop.Excel, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c'.Microsoft.Office.Interop.Excel.Range" RUNONCLIENT;
        XlMerge: DotNet "'DocumentFormat.OpenXml, Version=2.5.5631.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35'.DocumentFormat.OpenXml.Spreadsheet.MergeCells" RUNONCLIENT;
}

