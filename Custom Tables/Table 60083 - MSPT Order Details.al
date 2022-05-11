table 60083 "MSPT Order Details"
{
    // version MSPT1.0

    // B2B Software Technologies
    // ---------------------------------------------------
    // Project : Mile Stone Payment Terms
    // B2B
    // No. sign   Description
    // ---------------------------------------------------
    // 01  B2B    MSPT Order Details


    fields
    {
        field(1;Type;Option)
        {
            OptionMembers = Sale,Purchase;
        }
        field(2;"Document Type";Option)
        {
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3;"Party Type";Option)
        {
            OptionMembers = Customer,Vendor;
        }
        field(4;"Document No.";Code[20])
        {
        }
        field(5;"Document Line No.";Integer)
        {
        }
        field(6;"Party No.";Code[20])
        {
        }
        field(7;"MSPT Header Code";Code[20])
        {
        }
        field(8;"Calculation Type";Option)
        {
            Enabled = false;
            OptionMembers = Percentage,"Fixed Value";
        }
        field(9;"MSPT Line No.";Integer)
        {
        }
        field(10;"MSPT Code";Code[20])
        {
        }
        field(11;Percentage;Decimal)
        {

            trigger OnValidate();
            begin
                if Type=Type::Sale then
                  MSPTSaleTestField
                else if Type=Type::Purchase then
                  MSPTPuchTestField;
                if Percentage < 0 then
                  Error(Text001);
            end;
        }
        field(12;Description;Text[80])
        {

            trigger OnValidate();
            begin
                if Type=Type::Sale then
                  MSPTSaleTestField
                else if Type=Type::Purchase then
                  MSPTPuchTestField;
            end;
        }
        field(13;"Calculation Period";DateFormula)
        {

            trigger OnValidate();
            begin
                if Type=Type::Sale then
                  MSPTSaleTestField
                else if Type=Type::Purchase then
                  MSPTPuchTestField;

                if Type=Type::Sale then begin
                  SalesHeader.SetRange("Document Type","Document Type");
                  SalesHeader.SetRange("No.","Document No.");
                  if SalesHeader.Find('-') then begin
                    repeat
                      "Due Date" :=CalcDate("Calculation Period",SalesHeader."MSPT Date");
                      Modify;
                    until SalesHeader.Next=0;
                  end;
                end else if Type=Type::Purchase then begin
                  PurchaseHeader.SetRange("Document Type","Document Type");
                  PurchaseHeader.SetRange("No.","Document No.");
                  if PurchaseHeader.Find('-') then begin
                    repeat
                      "Due Date" :=CalcDate("Calculation Period",PurchaseHeader."MSPT Date");
                      Modify;
                    until PurchaseHeader.Next=0;
                  end;
                end;
            end;
        }
        field(14;Amount;Decimal)
        {
            Enabled = false;
        }
        field(15;Remarks;Text[80])
        {

            trigger OnValidate();
            begin
                if Type=Type::Sale then
                  MSPTSaleTestField
                else if Type=Type::Purchase then
                  MSPTPuchTestField;
            end;
        }
        field(16;"Due Date";Date)
        {

            trigger OnValidate();
            begin
                if Type=Type::Sale then
                  MSPTSaleTestField
                else if Type=Type::Purchase then
                  MSPTPuchTestField;
            end;
        }
    }

    keys
    {
        key(Key1;Type,"Document Type","Party Type","Document No.","Document Line No.","Party No.","MSPT Header Code","MSPT Line No.","MSPT Code",Percentage,Description)
        {
        }
    }

    fieldgroups
    {
    }

    var
        SalesHeader : Record "Sales Header";
        PurchaseHeader : Record "Purchase Header";
        Text001 : Label 'Percentage Must Be Positive Value';
        Text002 : Label 'Percentage Must Be Equal to 100 In MSPT Order Details';

    //[LineStart(3851)]
    procedure MSPTSaleTestField();
    var
        SalesHeader : Record "Sales Header";
        MSPTOrderDetails : Record "MSPT Order Details";
    begin
        SalesHeader.SetRange("No.","Document No.");
        if SalesHeader.Find('-') then begin
          SalesHeader.TestField(Status,SalesHeader.Status::Open);
        end;
    end;

    //[LineStart(3857)]
    procedure MSPTPuchTestField();
    var
        PurchaseHeader : Record "Purchase Header";
    begin
        PurchaseHeader.SetRange("No.","Document No.");
        if PurchaseHeader.Find('-') then begin
          PurchaseHeader.TestField(Status,PurchaseHeader.Status::Open);
        end;
    end;

    //[LineStart(3863)]
    procedure MSPTSalesCheck(SalesHeader : Record "Sales Header");
    var
        MSPTOrderDetails : Record "MSPT Order Details";
        Percentage : Decimal;
        Text000 : Label 'Please Enter DueDate For MSPT Header Code %1 and MSPT Line Code %1';
    begin
        MSPTOrderDetails.SetRange(Type,MSPTOrderDetails.Type::Sale);
        MSPTOrderDetails.SetRange("Document Type",SalesHeader."Document Type");
        MSPTOrderDetails.SetRange("Document No.",SalesHeader."No.");
        if MSPTOrderDetails.Find('-') then begin
          repeat
            MSPTOrderDetails.TestField("Calculation Period");
            MSPTOrderDetails.TestField(Percentage);
            Percentage:=Percentage+MSPTOrderDetails.Percentage;
            //IF MSPTOrderDetails."Due Date"=0D THEN
            // ERROR(Text000,MSPTOrderDetails."MSPT Header Code",MSPTOrderDetails."MSPT Line No.");
          until MSPTOrderDetails.Next=0;
          if Percentage <> 100 then
            Error(Text002);

        end;
    end;

    //[LineStart(3880)]
    procedure MSPTPurchaseCheck(PurchaseHeader : Record "Purchase Header");
    var
        MSPTOrderDetails : Record "MSPT Order Details";
        Percentage : Decimal;
        Text000 : Label 'Please Enter DueDate For MSPT Header Code %1 and MSPT Line Code %1';
    begin
        MSPTOrderDetails.SetRange(Type,MSPTOrderDetails.Type::Purchase);
        MSPTOrderDetails.SetRange("Document Type",PurchaseHeader."Document Type");
        MSPTOrderDetails.SetRange("Document No.",PurchaseHeader."No.");
        if MSPTOrderDetails.Find('-') then begin
          repeat
            MSPTOrderDetails.TestField("Calculation Period");
            MSPTOrderDetails.TestField(Percentage);
            Percentage:=Percentage+MSPTOrderDetails.Percentage;
            //IF MSPTOrderDetails."Due Date"=0D THEN
            // ERROR(Text000,MSPTOrderDetails."MSPT Header Code",MSPTOrderDetails."MSPT Line No.");
          until MSPTOrderDetails.Next=0;
          if Percentage <> 100 then
            Error(Text002);
        end;
    end;
}

