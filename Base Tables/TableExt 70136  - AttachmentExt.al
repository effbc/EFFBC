tableextension 70136 AttachmentExt extends Attachment
{
    // version NAVW19.00.00.48466

    fields
    {

        //Unsupported feature: Change NotBlank on ""No."(Field 1)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Storage Type"(Field 3)". Please convert manually.

    }
    keys
    {

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Email Message Checksum"(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Email Message Checksum")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := TODAY;
    "Last Time Modified" := TIME;

    Attachment2.LOCKTABLE;
    IF Attachment2.FINDLAST THEN
      NextAttachmentNo := Attachment2."No." + 1
    ELSE
      NextAttachmentNo := 1;

    "No." := NextAttachmentNo;

    RMSetup.GET;
    "Storage Type" := RMSetup."Attachment Storage Type";
    IF "Storage Type" = "Storage Type"::"Disk File" THEN BEGIN
      RMSetup.TESTFIELD("Attachment Storage Location");
      "Storage Pointer" := RMSetup."Attachment Storage Location";
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date Modified" := Today;
    "Last Time Modified" := Time;

    Attachment2.LockTable;
    if Attachment2.FindLast then
      NextAttachmentNo := Attachment2."No." + 1
    else
    #8..11
    RMSetup.Get;
    "Storage Type" := RMSetup."Attachment Storage Type";
    if "Storage Type" = "Storage Type"::"Disk File" then begin
      RMSetup.TestField("Attachment Storage Location");
      "Storage Pointer" := RMSetup."Attachment Storage Location";
    end;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := TODAY;
    "Last Time Modified" := TIME;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Last Date Modified" := Today;
    "Last Time Modified" := Time;
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnInsert.Attachment2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnInsert.Attachment2 : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnInsert.Attachment2 : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAttachment(PROCEDURE 1).SegmentLine(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAttachment : 5077;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAttachment : "Segment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAttachment(PROCEDURE 1).WordManagement(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAttachment : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAttachment : WordManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RunAttachment(PROCEDURE 26).WordManagement(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RunAttachment : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RunAttachment : WordManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RunAttachment(PROCEDURE 26).WordApplicationHandler(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RunAttachment : 5068;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RunAttachment : WordApplicationHandler;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PreviewHTMLContent(PROCEDURE 30).ContentPreview(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PreviewHTMLContent : 5084;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PreviewHTMLContent : "Content Preview";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "WizSaveAttachment(PROCEDURE 8).Attachment2(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //WizSaveAttachment : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //WizSaveAttachment : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetCustomLayoutCodeLength(PROCEDURE 42).DummyCustomReportLayout(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetCustomLayoutCodeLength : 9650;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetCustomLayoutCodeLength : "Custom Report Layout";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TempBlob(Variable 1020)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TempBlob : 99008535;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TempBlob : TempBlob;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "RMSetup(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //RMSetup : 5079;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RMSetup : "Marketing Setup";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "FileMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //FileMgt : 419;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FileMgt : "File Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AttachmentMgt(Variable 1021)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AttachmentMgt : 5052;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AttachmentMgt : AttachmentManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ClientTypeManagement(Variable 1077)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ClientTypeManagement : 4030;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ClientTypeManagement : "Client Type Management";
    //Variable type has not been exported.
}

