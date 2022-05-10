tableextension 70090 TransferReceiptHeaderExt extends "Transfer Receipt Header"
{
    // version NAVW19.00.00.50458,NAVIN9.00.00.50458,B2B1.0,Rev01

    fields
    {

        //Unsupported feature: Change TableRelation on ""Transfer-from Code"(Field 2)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Transfer-from Post Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Transfer-from Post Code"(Field 7)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Transfer-from City"(Field 8)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Transfer-from City"(Field 8)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Trsf.-from Country/Region Code"(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Transfer-to Code"(Field 11)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Transfer-to Post Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Transfer-to Post Code"(Field 16)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Transfer-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Transfer-to City"(Field 17)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Trsf.-to Country/Region Code"(Field 19)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 22)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 22)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 1 Code"(Field 23)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shortcut Dimension 2 Code"(Field 24)". Please convert manually.


        //Unsupported feature: Change ValidateTableRelation on ""Transfer Order No."(Field 25)". Please convert manually.


        //Unsupported feature: Change TestTableRelation on ""Transfer Order No."(Field 25)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""In-Transit Code"(Field 29)". Please convert manually.


        //Unsupported feature: Change AccessByPermission on ""Shipping Agent Code"(Field 33)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Shipping Agent Service Code"(Field 34)". Please convert manually.


        //Unsupported feature: Change Data type on ""Transport Method"(Field 48)". Please convert manually.


        //Unsupported feature: Change Editable on ""Dimension Set ID"(Field 480)". Please convert manually.

        field(13707; "Excise Bus. Posting Group"; Code[10])
        {
            CaptionML = ENU = 'Excise Bus. Posting Group',
                        ENN = 'Excise Bus. Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Excise Bus. Posting Group";
        }
        field(13723; "Form Code"; Code[10])
        {
            CaptionML = ENU = 'Form Code',
                        ENN = 'Form Code';
            DataClassification = ToBeClassified;
            TableRelation = "Form Codes";
        }
        field(13724; "Form No."; Code[10])
        {
            CaptionML = ENU = 'Form No.',
                        ENN = 'Form No.';
            DataClassification = ToBeClassified;
            TableRelation = "Tax Forms Details"."Form No." WHERE("Form Code" = FIELD("Form Code"));
        }
        field(13750; Structure; Code[10])
        {
            CaptionML = ENU = 'Structure',
                        ENN = 'Structure';
            DataClassification = ToBeClassified;
            TableRelation = "Structure Header".Code;

            trigger OnValidate();
            var
                Text13700: TextConst ENU = 'Structure code cannot be changed.', ENN = 'Structure code cannot be changed.';
                StrDetails: Record "Structure Details";
                StrOrderDetails: Record "Structure Order Details";
                StrOrderLines: Record "Structure Order Line Details";
                TransLines: Record "Transfer Line";
            begin
            end;
        }
        field(16503; "Captive Consumption"; Boolean)
        {
            CaptionML = ENU = 'Captive Consumption',
                        ENN = 'Captive Consumption';
            DataClassification = ToBeClassified;
        }
        field(16504; "Vendor Invoice No."; Code[20])
        {
            CaptionML = ENU = 'Vendor Invoice No.',
                        ENN = 'Vendor Invoice No.';
            DataClassification = ToBeClassified;
        }
        field(16510; "Bill of Entry No."; Text[20])
        {
            CaptionML = ENU = 'Bill of Entry No.',
                        ENN = 'Bill of Entry No.';
            DataClassification = ToBeClassified;
        }
        field(16511; "Bill of Entry Date"; Date)
        {
            CaptionML = ENU = 'Bill of Entry Date',
                        ENN = 'Bill of Entry Date';
            DataClassification = ToBeClassified;
        }
        field(16512; "Vendor No."; Code[20])
        {
            CaptionML = ENU = 'Vendor No.',
                        ENN = 'Vendor No.';
            DataClassification = ToBeClassified;
            TableRelation = Vendor WHERE("GST Vendor Type" = FILTER(Import));
        }
        field(16513; "Distance (Km)"; Decimal)
        {
            CaptionML = ENU = 'Distance (Km)',
                        ENN = 'Distance (Km)';
            DataClassification = ToBeClassified;
        }
        field(16514; "Vehicle Type"; Option)
        {
            CaptionML = ENU = 'Vehicle Type',
                        ENN = 'Vehicle Type';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = ' ,Regular,ODC',
                              ENN = ' ,Regular,ODC';
            OptionMembers = " ",Regular,ODC;
        }
        field(60001; "Prod. Order No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Production Order"."No." WHERE(Status = CONST(Released));
        }
        field(60002; "Prod. Order Line No."; Integer)
        {
            Description = 'B2B';
            TableRelation = "Prod. Order Line"."Line No." WHERE("Prod. Order No." = FIELD("Prod. Order No."),
                                                                 Status = CONST(Released));
        }
        field(60003; "Service Item No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Service Item"."No.";
        }
        field(60004; "Customer No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = Customer."No.";
        }
        field(60005; "Prod. BOM No."; Code[20])
        {
            Description = 'B2B';

            trigger OnLookup();
            var
                ProductionOrderLine: Record "Prod. Order Line";
                ProductionBOMHeader: Record "Production BOM Header";
            begin
            end;
        }
        field(60006; "Machine Center No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Machine Center"."No.";
        }
        field(60007; "User ID"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(60008; "Required Date"; Date)
        {
            Description = 'B2B';
        }
        field(60009; "Operation No."; Code[20])
        {
            Description = 'B2B';

            trigger OnLookup();
            var
                ProductionOrderLine: Record "Prod. Order Line";
            begin
            end;
        }
        field(60010; "Due Date"; Date)
        {
        }
        field(60011; "Released Date"; Date)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60012; "Released By"; Code[50])
        {
            Description = 'Rev01';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(60013; "Sales Order No."; Code[20])
        {
            Description = 'B2B';
            Editable = false;
            TableRelation = "Sales Header"."No." WHERE("Document Type" = FILTER(Order),
                                                        Status = FILTER(Released));
        }
        field(60014; "Service Order No."; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Service Header"."No.";
        }
        field(60015; "Resource Name"; Text[50])
        {
            Description = 'B2B';
            Editable = false;

            trigger OnValidate();
            begin
                /*
                IF FORM.RUNMODAL(5201,Employee) = ACTION::LookupOK THEN
                  "Resource Name" := Employee."First Name";
                */

            end;
        }
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

        //Unsupported feature: Deletion on ""No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Posting Date"(Key)". Please convert manually.

        key(Key1; "No.")
        {
        }
        key(Key2; "Posting Date")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TransRcptLine.SETRANGE("Document No.","No.");
    IF TransRcptLine.FIND('-') THEN
      REPEAT
        TransRcptLine.DELETE;
      UNTIL TransRcptLine.NEXT = 0;

    InvtCommentLine.SETRANGE("Document Type",InvtCommentLine."Document Type"::"Posted Transfer Receipt");
    InvtCommentLine.SETRANGE("No.","No.");
    InvtCommentLine.DELETEALL;

    ItemTrackingMgt.DeleteItemEntryRelation(
      DATABASE::"Transfer Receipt Line",0,"No.",'',0,0,TRUE);

    MoveEntries.MoveDocRelatedEntries(DATABASE::"Transfer Receipt Header","No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TransRcptLine.SetRange("Document No.","No.");
    if TransRcptLine.Find('-') then
      repeat
        TransRcptLine.Delete;
      until TransRcptLine.Next = 0;

    InvtCommentLine.SetRange("Document Type",InvtCommentLine."Document Type"::"Posted Transfer Receipt");
    InvtCommentLine.SetRange("No.","No.");
    InvtCommentLine.DeleteAll;

    ItemTrackingMgt.DeleteItemEntryRelation(
      DATABASE::"Transfer Receipt Line",0,"No.",'',0,0,true);

    MoveEntries.MoveDocRelatedEntries(DATABASE::"Transfer Receipt Header","No.");
    */
    //end;

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.



    //Unsupported feature: PropertyModification on "OnDelete.InvtCommentLine(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.InvtCommentLine : 5748;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.InvtCommentLine : "Inventory Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.TransRcptLine(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.TransRcptLine : 5747;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.TransRcptLine : "Transfer Receipt Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.MoveEntries(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.MoveEntries : 361;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.MoveEntries : MoveEntries;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Navigate(PROCEDURE 2).NavigateForm(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Navigate : 344;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Navigate : Navigate;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 3).ReportSelection(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 77;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Report Selections";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "PrintRecords(PROCEDURE 3).TransRcptHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //PrintRecords : 5746;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PrintRecords : "Transfer Receipt Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "DimMgt(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //DimMgt : 408;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimMgt : DimensionManagement;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemTrackingMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemTrackingMgt : 6500;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemTrackingMgt : "Item Tracking Management";
    //Variable type has not been exported.
}

