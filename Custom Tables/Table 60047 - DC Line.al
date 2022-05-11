table 60047 "DC Line"
{
    // version B2B1.0

    // LookupPageID = 60066;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            TableRelation = "DC Header";
        }
        field(2; "Line No."; Integer)
        {
        }
        field(3; Type; Option)
        {
            OptionMembers = " ",Item,"Fixed Asset";
        }
        field(4; "No."; Code[20])
        {
            TableRelation = IF (Type = CONST(" ")) "Standard Text"
            ELSE
            IF (Type = CONST(Item)) Item
            ELSE
            IF (Type = CONST("Fixed Asset")) "Fixed Asset";

            trigger OnValidate();
            begin

                if Type = Type::" " then begin
                    StandardText.Get("No.");
                    Description := StandardText.Description
                end else
                    if Type = Type::Item then begin
                        if Item.Get("No.") then begin
                            Description := Item.Description;
                            "Unit Of Measure" := Item."Base Unit of Measure";
                            "Unit Cost" := Item."Avg Unit Cost";
                            //  "Customs Chapter Heading No." := Item."Customs Chapter Heading No.";
                        end;
                    end else
                        if Type = Type::"Fixed Asset" then begin
                            if FixedAsset.Get("No.") then begin
                                Description := FixedAsset.Description;
                                "Serial Or Lot No" := FixedAsset."Serial No.";
                            end;
                        end;
            end;
        }
        field(5; Description; Text[50])
        {
        }
        field(6; "Case No."; Code[10])
        {
        }
        field(7; Quantity; Decimal)
        {
            BlankZero = true;
            MinValue = 0;
        }
        field(8; "Unit Of Measure"; Code[10])
        {
            NotBlank = true;
            TableRelation = "Unit of Measure";
        }
        field(9; "Net Wt./Kgs."; Decimal)
        {
            BlankZero = true;
            MinValue = 0;

            trigger OnValidate();
            begin
                //VALIDATE("Gross Wt./Kgs.");
            end;
        }
        field(10; "Gross Wt./Kgs."; Decimal)
        {
            BlankZero = true;
            MinValue = 0;

            trigger OnValidate();
            begin
                /*
                IF ("Net Wt./Kgs." <> 0) THEN
                   IF ("Gross Wt./Kgs." ) < "Net Wt./Kgs." THEN
                     ERROR(Text001);
                */

            end;
        }
        field(11; "Size.of Case"; Boolean)
        {
        }
        field(12; Remarks; Text[30])
        {
        }
        field(13; "Customs Chapter Heading No."; Code[20])
        {
        }
        field(14; "Unit Cost"; Decimal)
        {
            DecimalPlaces = 2 : 2;
        }
        field(15; "Non-Returnable"; Boolean)
        {
        }
        field(16; Returned; Boolean)
        {

            trigger OnValidate();
            begin
                /*
                MIH.RESET;
                MIH.SETFILTER(MIH."No.","Request no");
                IF MIH.FINDFIRST THEN
                BEGIN
                  IF MIH.Status<>MIH.Status::Open THEN
                  BEGIN
                    MIH.Status:=MIH.Status::Open;
                    MODIFY;
                  END;
                  MIL.RESET;
                  MIL.SETFILTER(MIL."Document No.","Request no");
                  MIL.SETFILTER(MIL."Non-Returnable",'NO');
                  MIL.SETFILTER(MIL."Item No.","No.");
                  IF MIL.FINDFIRST THEN
                  BEGIN
                    MIL.DELETE;
                  END;
                  MIL.RESET;
                  MIL.SETFILTER(MIL."Document No.","Request no");
                  IF MIL.COUNT=0 THEN
                    MIH.DELETE
                  ELSE
                  BEGIN
                    MIH.Status:=MIH.Status::Released;
                    MODIFY;
                    MIL.RESET;
                    MIL.SETFILTER(MIL."Document No.","Request no");
                    MIL.SETFILTER(MIL."Non-Returnable",'NO');
                    IF MIL.COUNT=0 THEN
                    BEGIN
                      MIH."Posting Date":=TODAY;
                      CODEUNIT.RUN(60011,MIH);
                    END;
                  END;
                END;

                IF ("Document No."<>'') AND ("No."<>'') AND (Type=Type::Item) THEN
                BEGIN
                  MIT.RESET;
                  MIT.SETFILTER(MIT."Order No.","Document No.");
                  MIT.SETRANGE(MIT."Order Line No.","Line No.");
                  MIT.SETFILTER(MIT."Item No.","No.");
                  IF MIT.FINDFIRST THEN
                  REPEAT
                    MIT.DELETE;
                  UNTIL MIT.NEXT=0;
                END;
                */
                "Returned Date" := Today();

            end;
        }
        field(17; "Request no"; Code[20])
        {
        }
        field(18; "Returned Date"; Date)
        {
        }
        field(19; "Returned Quantity"; Decimal)
        {
        }
        field(20; "Serial Or Lot No"; Text[250])
        {
        }
        field(21; "Returned Serial Or Lot No"; Text[250])
        {
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        TestStatusOpen;
    end;

    trigger OnInsert();
    begin
        TestStatusOpen;
    end;

    trigger OnModify();
    begin
        TestStatusOpen;
    end;

    trigger OnRename();
    begin
        TestStatusOpen;
    end;

    var
        StandardText: Record "Standard Text";
        Item: Record Item;
        MIH: Record "Material Issues Header";
        MIL: Record "Material Issues Line";
        DCH: Record "DC Header";
        MIT: Record "Mat.Issue Track. Specification";
        DCL: Record "DC Line";
        FixedAsset: Record "Fixed Asset";

    // [LineStart(2681)]
    local procedure TestStatusOpen();
    begin
        TestField("Document No.");
        if (DCH."No." <> "Document No.") then
            DCH.Get("Document No.");
        DCH.TestField(Status, DCH.Status::Open);
    end;
}

