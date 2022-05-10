tableextension 70067 InteractionLogEntryExt extends "Interaction Log Entry"
{
    // version NAVW19.00.00.50221

    fields
    {

        //Unsupported feature: Change OptionString on ""Information Flow"(Field 6)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Initiated By"(Field 7)". Please convert manually.


        //Unsupported feature: Change Editable on ""Cost (LCY)"(Field 9)". Please convert manually.


        //Unsupported feature: Change Editable on ""Duration (Min.)"(Field 10)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""User ID"(Field 11)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Campaign Entry No."(Field 15)". Please convert manually.


        //Unsupported feature: Change OptionString on "Evaluation(Field 19)". Please convert manually.


        //Unsupported feature: Change Editable on "Evaluation(Field 19)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""To-do No."(Field 23)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Salesperson Code"(Field 24)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Delivery Status"(Field 25)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Correspondence Type"(Field 27)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Contact Alt. Address Code"(Field 28)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Document Type"(Field 30)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Document No."(Field 31)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Contact Name"(Field 39)". Please convert manually.


        //Unsupported feature: Change Editable on ""Contact Name"(Field 39)". Please convert manually.


        //Unsupported feature: Change CalcFormula on ""Contact Company Name"(Field 40)". Please convert manually.


        //Unsupported feature: Change Editable on ""Contact Company Name"(Field 40)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 43)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 43)". Please convert manually.

        field(50000; "OutWard No."; Code[30])
        {
            Editable = false;
        }
        field(50001; "InWard No."; Code[30])
        {
            Editable = false;
        }
        field(50002; "OutWard Ref No."; Code[30])
        {
            Editable = false;
        }
        field(50003; "InWard Ref No."; Code[30])
        {
            Editable = false;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Entry No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Contact Company No.,Contact No.,Date,Postponed"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Contact Company No.,Date,Contact No.,Canceled,Initiated By,Attempt Failed,Postponed"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Interaction Group Code,Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Interaction Group Code,Canceled,Date,Postponed"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Interaction Template Code,Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Interaction Template Code,Canceled,Date,Postponed"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Canceled,Campaign No.,Campaign Entry No.,Date,Postponed"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Campaign No.,Campaign Entry No.,Date,Postponed"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Salesperson Code,Date,Postponed"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Canceled,Salesperson Code,Date,Postponed"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Logged Segment Entry No.,Postponed"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Attachment No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""To-do No.,Date"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Contact No.,Correspondence Type,E-Mail Logged,Subject,Postponed"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Campaign No.,Campaign Target"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Campaign No.,Contact Company No.,Campaign Target,Postponed"(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Opportunity No.,Date"(Key)". Please convert manually.

        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Contact Company No.", "Contact No.", Date, Postponed)
        {
            SumIndexFields = "Cost (LCY)", "Duration (Min.)";
        }
        key(Key3; "Contact Company No.", Date, "Contact No.", Canceled, "Initiated By", "Attempt Failed", Postponed)
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Cost (LCY)", "Duration (Min.)";
        }
        key(Key4; "Interaction Group Code", Date)
        {
        }
        key(Key5; "Interaction Group Code", Canceled, Date, Postponed)
        {
            SumIndexFields = "Cost (LCY)", "Duration (Min.)";
        }
        key(Key6; "Interaction Template Code", Date)
        {
        }
        key(Key7; "Interaction Template Code", Canceled, Date, Postponed)
        {
            SumIndexFields = "Cost (LCY)", "Duration (Min.)";
        }
        key(Key8; Canceled, "Campaign No.", "Campaign Entry No.", Date, Postponed)
        {
            SumIndexFields = "Cost (LCY)", "Duration (Min.)";
        }
        key(Key9; "Campaign No.", "Campaign Entry No.", Date, Postponed)
        {
            SumIndexFields = "Cost (LCY)", "Duration (Min.)";
        }
        key(Key10; "Salesperson Code", Date, Postponed)
        {
            SumIndexFields = "Cost (LCY)", "Duration (Min.)";
        }
        key(Key11; Canceled, "Salesperson Code", Date, Postponed)
        {
            SumIndexFields = "Cost (LCY)", "Duration (Min.)";
        }
        key(Key12; "Logged Segment Entry No.", Postponed)
        {
        }
        key(Key13; "Attachment No.")
        {
        }
        key(Key14; "To-do No.", Date)
        {
        }
        key(Key15; "Contact No.", "Correspondence Type", "E-Mail Logged", Subject, Postponed)
        {
        }
        key(Key16; "Campaign No.", "Campaign Target")
        {
        }
        key(Key17; "Campaign No.", "Contact Company No.", "Campaign Target", Postponed)
        {
        }
        key(Key18; "Opportunity No.", Date)
        {
        }
        key(Key19; Date, "Contact No.", "Interaction Group Code", "Salesperson Code")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    InteractionCommentLine.SETRANGE("Entry No.","Entry No.");
    InteractionCommentLine.DELETEALL;

    CampaignMgt.DeleteContfromTargetGr(Rec);
    IF UniqueAttachment THEN
      IF Attachment.GET("Attachment No.") THEN
        Attachment.RemoveAttachment(FALSE);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    InteractionCommentLine.SetRange("Entry No.","Entry No.");
    InteractionCommentLine.DeleteAll;

    CampaignMgt.DeleteContfromTargetGr(Rec);
    if UniqueAttachment then
      if Attachment.Get("Attachment No.") then
        Attachment.RemoveAttachment(false);
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on ""User ID"(Field 11).OnLookup.UserMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //"User ID" : 418;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"User ID" : "User Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.InteractionCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.InteractionCommentLine : 5123;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.InteractionCommentLine : "Inter. Log Entry Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.Attachment(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.Attachment : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.Attachment : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.CampaignMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.CampaignMgt : 7030;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.CampaignMgt : "Campaign Target Group Mgt";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssignNewOpportunity(PROCEDURE 15).Opportunity(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssignNewOpportunity : 5092;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssignNewOpportunity : Opportunity;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "AssignNewOpportunity(PROCEDURE 15).Contact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //AssignNewOpportunity : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AssignNewOpportunity : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInteraction(PROCEDURE 10).TempSegLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInteraction : 5077;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInteraction : "Segment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateInteraction(PROCEDURE 10).Contact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateInteraction : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateInteraction : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateTask(PROCEDURE 8).TempTask(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateTask : 5080;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateTask : "To-do";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "CreateTask(PROCEDURE 8).Contact(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //CreateTask : 5050;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CreateTask : Contact;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAttachment(PROCEDURE 5).Attachment(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAttachment : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAttachment : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAttachment(PROCEDURE 5).SegLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAttachment : 5077;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAttachment : "Segment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAttachment(PROCEDURE 5).WebRequestHelper(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAttachment : 1299;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAttachment : "Web Request Helper";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAttachment(PROCEDURE 5).WordManagement(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAttachment : 5054;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAttachment : WordManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OpenAttachment(PROCEDURE 5).WordApplicationHandler(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OpenAttachment : 5068;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenAttachment : WordApplicationHandler;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetCanceledCheckmark(PROCEDURE 2).CampaignEntry(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetCanceledCheckmark : 5072;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetCanceledCheckmark : "Campaign Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetCanceledCheckmark(PROCEDURE 2).LoggedSeg(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetCanceledCheckmark : 5075;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetCanceledCheckmark : "Logged Segment";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "SetCanceledCheckmark(PROCEDURE 2).Attachment(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //SetCanceledCheckmark : 5062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SetCanceledCheckmark : Attachment;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UniqueAttachment(PROCEDURE 4).InteractLogEntry(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UniqueAttachment : 5065;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UniqueAttachment : "Interaction Log Entry";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).SalesHeader(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 36;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Sales Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).SalesHeaderArchive(Variable 1011)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 5107;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Sales Header Archive";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).SalesInvHeader(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 112;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Sales Invoice Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).SalesShptHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 110;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Sales Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).SalesCrMemoHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 114;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Sales Cr.Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).IssuedReminderHeader(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 297;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Issued Reminder Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).PurchHeader(Variable 1005)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 38;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Purchase Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).PurchHeaderArchive(Variable 1012)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 5109;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Purchase Header Archive";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).PurchInvHeader(Variable 1006)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 122;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Purch. Inv. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).PurchRcptHeader(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 120;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Purch. Rcpt. Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).PurchCrMemoHeader(Variable 1008)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 124;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Purch. Cr. Memo Hdr.";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).ServHeader(Variable 1009)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 5900;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Service Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).ReturnRcptHeader(Variable 1013)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 6660;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Return Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).IssuedFinChargeMemoHeader(Variable 1015)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 304;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Issued Fin. Charge Memo Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).ReturnReceiptHeader(Variable 1014)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 6660;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Return Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).ReturnShipmentHeader(Variable 1016)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 6650;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Return Shipment Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ShowDocument(PROCEDURE 1).ServiceContractHeader(Variable 1017)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ShowDocument : 5965;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ShowDocument : "Service Contract Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ResumeInteraction(PROCEDURE 11).TempSegLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ResumeInteraction : 5077;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ResumeInteraction : "Segment Line";
    //Variable type has not been exported.
}

