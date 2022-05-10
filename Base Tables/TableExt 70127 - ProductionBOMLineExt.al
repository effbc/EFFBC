tableextension 70127 ProductionBOMLineExt extends "Production BOM Line"
{
    // version NAVW19.00.00.48992,NAVIN9.00.00.48992,B2B1.0,DWS1.0

    fields
    {

        //Unsupported feature: Change NotBlank on ""Production BOM No."(Field 1)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Version Code"(Field 3)". Please convert manually.


        //Unsupported feature: Change OptionString on "Type(Field 10)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""No."(Field 11)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Unit of Measure Code"(Field 13)". Please convert manually.


        //Unsupported feature: Change Editable on "Quantity(Field 14)". Please convert manually.

        modify(Position)
        {

            //Unsupported feature: Change Data type on "Position(Field 15)". Please convert manually.

            CaptionML = ENU = 'Position';
        }
        modify("Position 2")
        {

            //Unsupported feature: Change Data type on ""Position 2"(Field 16)". Please convert manually.

            CaptionML = ENU = 'Position 2';
        }
        modify("Position 3")
        {

            //Unsupported feature: Change Data type on ""Position 3"(Field 17)". Please convert manually.

            CaptionML = ENU = 'Position 3';
        }

        //Unsupported feature: Change Data type on ""Variant Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change TableRelation on ""Variant Code"(Field 21)". Please convert manually.


        //Unsupported feature: Change CalcFormula on "Comment(Field 22)". Please convert manually.


        //Unsupported feature: Change Editable on "Comment(Field 22)". Please convert manually.


        //Unsupported feature: Change OptionString on ""Calculation Formula"(Field 44)". Please convert manually.


        //Unsupported feature: CodeModification on "Type(Field 10).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatus;

        xRec.Type := Type;

        INIT;
        Type := xRec.Type;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestStatus;
        //>> Added by vishnu on 05-12-2018 to prevent the BOM Picking for PCB abd Fproducts
        if Type = Type::"Production BOM" then
          begin
            if Item.Get("No.") then
              Error('Type Should be Item for %1',"No.");
          end;
          //>> Ended by vishnu on 05-12-2018

        {xRec.Type := Type;

        INIT;
        Type := xRec.Type;}
        */
        //end;


        //Unsupported feature: CodeModification on ""No."(Field 11).OnValidate". Please convert manually.

        //trigger "(Field 11)();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type);

        TestStatus;

        CASE Type OF
          Type::Item:
            BEGIN
              Item.GET("No.");
              Description := Item.Description;
              Item.TESTFIELD("Base Unit of Measure");
              "Unit of Measure Code" := Item."Base Unit of Measure";
              "Scrap %" := Item."Scrap %";
              IF "No." <> xRec."No." THEN
                "Variant Code" := '';
              OnValidateNoOnAfterAssignItemFields(Rec,Item,xRec,CurrFieldNo);
        #16..19
              ProdBOMHeader.TESTFIELD("Unit of Measure Code");
              Description := ProdBOMHeader.Description;
              "Unit of Measure Code" := ProdBOMHeader."Unit of Measure Code";
              OnValidateNoOnAfterAssignProdBOMFields(Rec,ProdBOMHeader,xRec,CurrFieldNo);
            END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {
        #1..3
        //Added by Vishnu on 05-12-2018 to prevent the BOM Picking for PCB abd Fproducts
        TestType;
        #5..8
              IF FORMAT(Item."Item Status") IN ['NRND','Obsolete'] THEN// added by sundar to prevent obsolete items selection in new boms
                 ERROR('The item %1 cannot be picked as its status is %2',Item.Description,FORMAT(Item."Item Status"));
              Description := Item.Description;
              "Scrap %" := Item."Scrap %";
              "Description 2" := Item."Description 2";
               //NSS 030907
               PCB := Item.PCB;
               //NSS 030907
              Item.TESTFIELD("Base Unit of Measure");
              Item.TESTFIELD("Item Tracking Code");     //added by pranavi on 08-09-2015
              "Unit of Measure Code" := Item."Base Unit of Measure";
              "Type of Solder" := Item."Type of Solder";
              //"Shelf No." := Item."Shelf No.";
              "No. of Pins":=Item."No. of Pins"*"Quantity per";
              "No. of Soldering Points":=Item."No. of Soldering Points"*("Quantity per"-"Scrap Quantity");
              "No. of Opportunities":=Item."No. of Opportunities"*"Quantity per";
               Make:=Item.Make;
               "Part number":=Item."Part Number";
               "Storage Temperature":=Item."Storage Temperature";
                Package:=Item.Package;


              //cost1.0
              IF Item."Production BOM No."='' THEN BEGIN
                "Avg Cost":=Item."Avg Unit Cost";
                "Tot Avg Cost":="Avg Cost"*"Quantity per";
              END ELSE BEGIN
                ProdBOMHeader.GET("No.");
                ProdBOMHeader.TESTFIELD("Unit of Measure Code");
                ProdBOMHeader.CALCFIELDS(ProdBOMHeader."BOM Cost",ProdBOMHeader."BOM Manufacturing Cost");
                "No. of Soldering Points":=ProdBOMHeader."Total Soldering Points"*"Quantity per";
                "No. of SMD Points":=ProdBOMHeader."Total Soldering Points SMD"*"Quantity per";
                "No. of DIP Point":=ProdBOMHeader."Total Soldering Points DIP"*"Quantity per";

                "Avg Cost":=ProdBOMHeader."BOM Cost";
                "Tot Avg Cost":="Avg Cost"*"Quantity per";
                IF Type=Type::"Production BOM" THEN BEGIN
                  "Manufacturing Cost":=ProdBOMHeader."BOM Manufacturing Cost";
                  "Tot Avg Cost":="Avg Cost"*"Quantity per";
                END;
              END;
              IF Item."Routing No."<>'' THEN
                  "Manufacturing Cost":=Item."Manufacturing Cost";
              //Cost1.0
        #13..22
        {>>>>>>>} ORIGINAL
        {=======} MODIFIED
              OnValidateNoOnAfterAssignProdBOMFields(Rec,ProdBOMHeader,xRec,CurrFieldNo);
        {=======} TARGET
              //Cost1.0
              ProdBOMHeader.CALCFIELDS(ProdBOMHeader."BOM Cost");
              "Avg Cost":=ProdBOMHeader."BOM Cost";
               "Tot Avg Cost":="Avg Cost"*"Quantity per";
               "Manufacturing Cost":=ProdBOMHeader."BOM Manufacturing Cost";
              //Cost1.0
        {<<<<<<<}
            END;
        END;
        }
        */
        //end;


        //Unsupported feature: CodeModification on ""Unit of Measure Code"(Field 13).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("No.");
        IF xRec."Unit of Measure Code" <> "Unit of Measure Code" THEN
          TESTFIELD(Type,Type::Item);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type = Type::Item then begin
          TestField("No.");
        end;
          if xRec."Unit of Measure Code" <> "Unit of Measure Code" then
            TestField(Type,Type::Item);
        */
        //end;


        //Unsupported feature: CodeInsertion on "Position(Field 15)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
          Item.Reset;
          Item.SetFilter(Item."No.","No.");
          if Item.FindFirst then
          begin
          if not (Item."Item Category Code"='MECH') then
          begin
          CODE:='';
          single_pos:=false; //indicates if only single postion is used(Ex:R1)
          range_pos :=false;
          is_slash :=false; //defines a range(Ex:R1-R5)
          first_val:=''; //stores the first char(say R)alphabet
          sec_val:=''; //stores the second char(say 1)numeric
          multi_first_val:='';
          multi_sec_val:='';
          First_Num:=0;
          Second_Num:=0;
          IS_SKIPPED:=false;
          CODE:=Position;
          Curr_Pos:=1;
          if StrLen(CODE)>2 then
          begin
            if IS_SKIPPED = false then
            repeat
              char:=CopyStr(CODE,Curr_Pos,1);
              if char = '-' then
              begin
                is_slash:=true;
              if single_pos = false then
                Error('no comments/space inside range value')
              else  single_pos:=false;

              end
              else if  char = ' ' then
              begin
                if Curr_Pos= StrLen(CODE) then
                   Error('Un-necessary space at the ending');
                char1:=' ';
                if Curr_Pos-2>0 then
                  char1:=CopyStr(CODE,Curr_Pos-1,1);
                if (first_val ='') and (char1 <>')') then
                  Error('Un necessary space detected');

                if range_pos then
                begin
                  if first_val <>sec_val then
                    Error('ERROR AT 1ST CHAR IN RANGE');
                  if multi_first_val <> multi_sec_val then
                    Error('ERROR AT 3RD CHAR IN RANGE');
                  if Second_Num <= First_Num then
                    Error('ERROR IN RANGE');
                end
                else
                if is_slash then
                  Error('Un necessary1 "-"');
                single_pos:=false;
                range_pos :=false;
                is_slash :=false;
                first_val:='';
                sec_val:='';
                multi_first_val:='';
                multi_sec_val:='';
                First_Num:=0;
                Second_Num:=0;
              end
              else if char= '(' then
              begin
                if Curr_Pos>1 then
                begin
                  char1:=CopyStr(CODE,Curr_Pos-1,1);
                  if (char1<>' ') and (char1<>')') then
                    Error('No space between comment and position-1');
                end
                else
                  first_val:='@';
                Curr_Pos_inner:=Curr_Pos+1;
                No_times_Rep:=1;
                repeat
                  char:=CopyStr(CODE,Curr_Pos_inner,1);
                  if char =')' then
                    No_times_Rep:=No_times_Rep-1;
                  if char ='(' then
                    No_times_Rep:=No_times_Rep+1;

                  Curr_Pos_inner:=Curr_Pos_inner+1;

                until (No_times_Rep=0) or (Curr_Pos_inner > StrLen(CODE));

                if No_times_Rep >0 then
                  Error('COMMENT NOT PROPERLY ENDED');
                Curr_Pos:=Curr_Pos_inner-1;
                if Curr_Pos_inner < StrLen(CODE) then
                begin
                  char:=CopyStr(CODE,Curr_Pos_inner,1);
                  if (char<>' ') and (char<>'(') then
                  Error('No space between comment and position-2');
                end;
              end
              else if (char in ['A'..'Z']) or (char ='/') then
              begin
                if single_pos then
                begin
                  multi_first_val:=multi_first_val+char;
                end else
                if range_pos then
                begin
                  multi_sec_val:=multi_sec_val+char;
                end else
                if is_slash then
                begin
                  sec_val:=sec_val+char;
                end else
                first_val:=first_val+char;
              end
              else if (char in ['0'..'9']) or (char='.') then
              begin
                if first_val ='' then
                Error('1');
                //IF multi_first_val <>'' THEN
                  //ERROR('No Numeric in Multi Value');
                if is_slash then
                begin
                  range_pos:=true;
                  if Evaluate(test_int,char) then
                  begin
                    if Second_Num =0 then
                      Second_Num := Second_Num+test_int
                    else
                      Second_Num := Second_Num*10+test_int;

                  end;
                end
                else
                begin
                  if Evaluate(test_int,char) then
                  begin
                    if First_Num =0 then
                      First_Num := First_Num+test_int
                    else
                      First_Num := First_Num*10+test_int;

                  end;
                  single_pos:=true;
                  if First_Num = 0 then
                     Error('0 IS NOT A VALID POSITION');
                end;
              end
              else
                Error('Unknown character');
              Curr_Pos := Curr_Pos+1;
            until Curr_Pos > StrLen(CODE);
            if range_pos then
            begin
              if first_val <>sec_val then
                Error('ERROR AT 1ST CHAR IN RANGE');
              if multi_first_val <> multi_sec_val then
                Error('ERROR AT 3RD CHAR IN RANGE');
              if Second_Num <= First_Num then
                Error('ERROR IN RANGE');

              range_pos:=false;
              is_slash :=false;
            end;
            if  is_slash then
              Error('UN NECESSARY "-"');
          end;
          end;
          end;
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Position 2"(Field 16)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
          Item.Reset;
          Item.SetFilter(Item."No.","No.");
          if Item.FindFirst then
          begin
          if not (Item."Item Category Code"='MECH') then
          begin

          CODE:='';
          single_pos:=false; //indicates if only single postion is used(Ex:R1)
          range_pos :=false;
          is_slash :=false; //defines a range(Ex:R1-R5)
          first_val:=''; //stores the first char(say R)alphabet
          sec_val:=''; //stores the second char(say 1)numeric
          multi_first_val:='';
          multi_sec_val:='';
          First_Num:=0;
          Second_Num:=0;
          IS_SKIPPED:=false;
          CODE:="Position 2";
          Curr_Pos:=1;
          if StrLen(CODE)>2 then
          begin
            if IS_SKIPPED = false then
            repeat
              char:=CopyStr(CODE,Curr_Pos,1);
              if char = '-' then
              begin
                is_slash:=true;
              if single_pos = false then
                Error('no comments/space inside range value')
              else  single_pos:=false;

              end
              else if  char = ' ' then
              begin
                if Curr_Pos= StrLen(CODE) then
                   Error('Un-necessary space at the ending');
                char1:=' ';
                if Curr_Pos-2>0 then
                  char1:=CopyStr(CODE,Curr_Pos-1,1);
                if (first_val ='') and (char1 <>')') then
                  Error('Un necessary space detected');

                if range_pos then
                begin
                  if first_val <>sec_val then
                    Error('ERROR AT 1ST CHAR IN RANGE');
                  if multi_first_val <> multi_sec_val then
                    Error('ERROR AT 3RD CHAR IN RANGE');
                  if Second_Num <= First_Num then
                    Error('ERROR IN RANGE');
                end
                else
                if is_slash then
                  Error('Un necessary1 "-"');
                single_pos:=false;
                range_pos :=false;
                is_slash :=false;
                first_val:='';
                sec_val:='';
                multi_first_val:='';
                multi_sec_val:='';
                First_Num:=0;
                Second_Num:=0;
              end
              else if char= '(' then
              begin
                if Curr_Pos>1 then
                begin
                  char1:=CopyStr(CODE,Curr_Pos-1,1);
                  if (char1<>' ') and (char1<>')') then
                    Error('No space between comment and position-1');
                end
                else
                  first_val:='@';
                Curr_Pos_inner:=Curr_Pos+1;
                No_times_Rep:=1;
                repeat
                  char:=CopyStr(CODE,Curr_Pos_inner,1);
                  if char =')' then
                    No_times_Rep:=No_times_Rep-1;
                  if char ='(' then
                    No_times_Rep:=No_times_Rep+1;

                  Curr_Pos_inner:=Curr_Pos_inner+1;

                until (No_times_Rep=0) or (Curr_Pos_inner > StrLen(CODE));

                if No_times_Rep >0 then
                  Error('COMMENT NOT PROPERLY ENDED');
                Curr_Pos:=Curr_Pos_inner-1;
                if Curr_Pos_inner < StrLen(CODE) then
                begin
                  char:=CopyStr(CODE,Curr_Pos_inner,1);
                  if (char<>' ') and (char<>'(') then
                  Error('No space between comment and position-2');
                end;
              end
              else if (char in ['A'..'Z']) or (char ='/') then
              begin
                if single_pos then
                begin
                  multi_first_val:=multi_first_val+char;
                end else
                if range_pos then
                begin
                  multi_sec_val:=multi_sec_val+char;
                end else
                if is_slash then
                begin
                  sec_val:=sec_val+char;
                end else
                first_val:=first_val+char;
              end
              else if (char in ['0'..'9']) or (char='.') then
              begin
                if first_val ='' then
                Error('1');
                //IF multi_first_val <>'' THEN
                  //ERROR('No Numeric in Multi Value');
                if is_slash then
                begin
                  range_pos:=true;
                  if Evaluate(test_int,char) then
                  begin
                    if Second_Num =0 then
                      Second_Num := Second_Num+test_int
                    else
                      Second_Num := Second_Num*10+test_int;

                  end;
                end
                else
                begin
                  if Evaluate(test_int,char) then
                  begin
                    if First_Num =0 then
                      First_Num := First_Num+test_int
                    else
                      First_Num := First_Num*10+test_int;

                  end;
                  single_pos:=true;
                  if First_Num = 0 then
                     Error('0 IS NOT A VALID POSITION');
                end;
              end
              else
                Error('Unknown character');
              Curr_Pos := Curr_Pos+1;
            until Curr_Pos > StrLen(CODE);
            if range_pos then
            begin
              if first_val <>sec_val then
                Error('ERROR AT 1ST CHAR IN RANGE');
              if multi_first_val <> multi_sec_val then
                Error('ERROR AT 3RD CHAR IN RANGE');
              if Second_Num <= First_Num then
                Error('ERROR IN RANGE');

              range_pos:=false;
              is_slash :=false;
            end;
            if  is_slash then
              Error('UN NECESSARY "-"');
          end;
         end;
         end;
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Position 3"(Field 17)". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //begin
        /*
          Item.Reset;
          Item.SetFilter(Item."No.","No.");
          if Item.FindFirst then
          begin
          if not (Item."Item Category Code"='MECH') then
          begin

          CODE:='';
          single_pos:=false; //indicates if only single postion is used(Ex:R1)
          range_pos :=false;
          is_slash :=false; //defines a range(Ex:R1-R5)
          first_val:=''; //stores the first char(say R)alphabet
          sec_val:=''; //stores the second char(say 1)numeric
          multi_first_val:='';
          multi_sec_val:='';
          First_Num:=0;
          Second_Num:=0;
          IS_SKIPPED:=false;
          CODE:="Position 3";
          Curr_Pos:=1;
          if StrLen(CODE)>2 then
          begin
            if IS_SKIPPED = false then
            repeat
              char:=CopyStr(CODE,Curr_Pos,1);
              if char = '-' then
              begin
                is_slash:=true;
              if single_pos = false then
                Error('no comments/space inside range value')
              else  single_pos:=false;

              end
              else if  char = ' ' then
              begin
                if Curr_Pos= StrLen(CODE) then
                   Error('Un-necessary space at the ending');
                char1:=' ';
                if Curr_Pos-2>0 then
                  char1:=CopyStr(CODE,Curr_Pos-1,1);
                if (first_val ='') and (char1 <>')') then
                  Error('Un necessary space detected');

                if range_pos then
                begin
                  if first_val <>sec_val then
                    Error('ERROR AT 1ST CHAR IN RANGE');
                  if multi_first_val <> multi_sec_val then
                    Error('ERROR AT 3RD CHAR IN RANGE');
                  if Second_Num <= First_Num then
                    Error('ERROR IN RANGE');
                end
                else
                if is_slash then
                  Error('Un necessary1 "-"');
                single_pos:=false;
                range_pos :=false;
                is_slash :=false;
                first_val:='';
                sec_val:='';
                multi_first_val:='';
                multi_sec_val:='';
                First_Num:=0;
                Second_Num:=0;
              end
              else if char= '(' then
              begin
                if Curr_Pos>1 then
                begin
                  char1:=CopyStr(CODE,Curr_Pos-1,1);
                  if (char1<>' ') and (char1<>')') then
                    Error('No space between comment and position-1');
                end
                else
                  first_val:='@';
                Curr_Pos_inner:=Curr_Pos+1;
                No_times_Rep:=1;
                repeat
                  char:=CopyStr(CODE,Curr_Pos_inner,1);
                  if char =')' then
                    No_times_Rep:=No_times_Rep-1;
                  if char ='(' then
                    No_times_Rep:=No_times_Rep+1;

                  Curr_Pos_inner:=Curr_Pos_inner+1;

                until (No_times_Rep=0) or (Curr_Pos_inner > StrLen(CODE));

                if No_times_Rep >0 then
                  Error('COMMENT NOT PROPERLY ENDED');
                Curr_Pos:=Curr_Pos_inner-1;
                if Curr_Pos_inner < StrLen(CODE) then
                begin
                  char:=CopyStr(CODE,Curr_Pos_inner,1);
                  if (char<>' ') and (char<>'(') then
                  Error('No space between comment and position-2');
                end;
              end
              else if (char in ['A'..'Z']) or (char ='/') then
              begin
                if single_pos then
                begin
                  multi_first_val:=multi_first_val+char;
                end else
                if range_pos then
                begin
                  multi_sec_val:=multi_sec_val+char;
                end else
                if is_slash then
                begin
                  sec_val:=sec_val+char;
                end else
                first_val:=first_val+char;
              end
              else if (char in ['0'..'9']) or (char='.') then
              begin
                if first_val ='' then
                Error('1');
                //IF multi_first_val <>'' THEN
                  //ERROR('No Numeric in Multi Value');
                if is_slash then
                begin
                  range_pos:=true;
                  if Evaluate(test_int,char) then
                  begin
                    if Second_Num =0 then
                      Second_Num := Second_Num+test_int
                    else
                      Second_Num := Second_Num*10+test_int;

                  end;
                end
                else
                begin
                  if Evaluate(test_int,char) then
                  begin
                    if First_Num =0 then
                      First_Num := First_Num+test_int
                    else
                      First_Num := First_Num*10+test_int;

                  end;
                  single_pos:=true;
                  if First_Num = 0 then
                     Error('0 IS NOT A VALID POSITION');
                end;
              end
              else
                Error('Unknown character');
              Curr_Pos := Curr_Pos+1;
            until Curr_Pos > StrLen(CODE);
            if range_pos then
            begin
              if first_val <>sec_val then
                Error('ERROR AT 1ST CHAR IN RANGE');
              if multi_first_val <> multi_sec_val then
                Error('ERROR AT 3RD CHAR IN RANGE');
              if Second_Num <= First_Num then
                Error('ERROR IN RANGE');

              range_pos:=false;
              is_slash :=false;
            end;
            if  is_slash then
              Error('UN NECESSARY "-"');
          end;
         end;
         end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Lead-Time Offset"(Field 18).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Routing Link Code"(Field 19).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Routing Link Code" <> '' THEN BEGIN
          TESTFIELD(Type,Type::Item);
          TESTFIELD("No.");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Routing Link Code" <> '' then begin
          TestField(Type,Type::Item);
          TestField("No.");
        end;
        */
        //end;


        //Unsupported feature: CodeModification on ""Scrap %"(Field 20).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("No.");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("No.");
        */
        //end;


        //Unsupported feature: CodeModification on ""Variant Code"(Field 21).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Variant Code" = '' THEN
          EXIT;
        TESTFIELD(Type,Type::Item);
        TESTFIELD("No.");
        ItemVariant.GET("No.","Variant Code");
        Description := ItemVariant.Description;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Variant Code" = '' then
          exit;
        TestField(Type,Type::Item);
        TestField("No.");
        ItemVariant.Get("No.","Variant Code");
        Description := ItemVariant."Part No";
        */
        //end;


        //Unsupported feature: CodeModification on ""Starting Date"(Field 28).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("No.");

        IF "Starting Date" > 0D THEN
          VALIDATE("Ending Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {TESTFIELD("No.");

        IF "Starting Date" > 0D THEN
          VALIDATE("Ending Date");}
        */
        //end;


        //Unsupported feature: CodeModification on ""Ending Date"(Field 29).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("No.");

        IF ("Ending Date" > 0D) AND
           ("Starting Date" > 0D) AND
           ("Starting Date" > "Ending Date")
        THEN
          ERROR(
            Text000,
            FIELDCAPTION("Ending Date"),
            FIELDCAPTION("Starting Date"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("No.");

        if ("Ending Date" > 0D) and
           ("Starting Date" > 0D) and
           ("Starting Date" > "Ending Date")
        then
          Error(
            Text000,
            FieldCaption("Ending Date"),
            FieldCaption("Starting Date"));
        */
        //end;


        //Unsupported feature: CodeModification on "Length(Field 40).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Calculation Formula");
        */
        //end;


        //Unsupported feature: CodeModification on "Width(Field 41).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Calculation Formula");
        */
        //end;


        //Unsupported feature: CodeModification on "Weight(Field 42).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Calculation Formula");
        */
        //end;


        //Unsupported feature: CodeModification on "Depth(Field 43).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Calculation Formula");
        */
        //end;


        //Unsupported feature: CodeModification on ""Calculation Formula"(Field 44).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("No.");

        CASE "Calculation Formula" OF
          "Calculation Formula"::" ":
            Quantity := "Quantity per";
          "Calculation Formula"::Length:
            Quantity := ROUND(Length * "Quantity per",UOMMgt.QtyRndPrecision);
          "Calculation Formula"::"Length * Width":
            Quantity := ROUND(Length * Width * "Quantity per",UOMMgt.QtyRndPrecision);
          "Calculation Formula"::"Length * Width * Depth":
            Quantity := ROUND(Length * Width * Depth * "Quantity per",UOMMgt.QtyRndPrecision);
          "Calculation Formula"::Weight:
            Quantity := ROUND(Weight * "Quantity per",UOMMgt.QtyRndPrecision);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        TestField("No.");

        case "Calculation Formula" of
        #4..6
            Quantity := Round(Length * "Quantity per",UOMMgt.QtyRndPrecision);
          "Calculation Formula"::"Length * Width":
            Quantity := Round(Length * Width * "Quantity per",UOMMgt.QtyRndPrecision);
          "Calculation Formula"::"Length * Width * Depth":
            Quantity := Round(Length * Width * Depth * "Quantity per",UOMMgt.QtyRndPrecision);
          "Calculation Formula"::Weight:
            Quantity := Round(Weight * "Quantity per",UOMMgt.QtyRndPrecision);
        end;
        */
        //end;


        //Unsupported feature: CodeInsertion on ""Quantity per"(Field 45).OnValidate". Please convert manually.

        //trigger (Variable: TOTSolderingPoints)();
        //Parameters and return type have not been exported.
        //begin
        /*
        */
        //end;


        //Unsupported feature: CodeModification on ""Quantity per"(Field 45).OnValidate". Please convert manually.

        //trigger OnValidate();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        VALIDATE("Calculation Formula");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type=Type::Item then
        Validate("Calculation Formula");
          { Commented on 110907  NSS
        Item.RESET;
        IF Type = Type :: Item THEN BEGIN
          Item.GET("No.");
           MESSAGE('%1',Item."No. of Soldering Points");
          "No. of Soldering Points" := ROUND("Quantity per" * Item."No. of Soldering Points",1,'=');
          "No. of Pins" := ROUND("Quantity per" * Item."No. of Pins",1,'=');
          "No. of Opportunities" := ROUND("Quantity per" * Item."No. of Opportunities",1,'=');
          "No. of Fixing Holes" := ROUND("Quantity per" * Item."No.of Fixing Holes",1,'=');
        END;
        }

        //NSS 110907
        Item.Reset;
        if Type = Type :: Item then
        begin
          Item.Get("No.");
          Updateparameters(Item);
          if ProdBOMHeader.Get("No.") then
          begin
            Validate("No. of Soldering Points",ProdBOMHeader."Total Soldering Points"*"Quantity per");
             "No. of SMD Points":=ProdBOMHeader."Total Soldering Points SMD"*"Quantity per";
             "No. of DIP Point":=ProdBOMHeader."Total Soldering Points DIP"*"Quantity per";

          end else
          begin
            Validate("No. of Pins",("Quantity per" * Item."No. of Pins"));
            Validate("No. of Soldering Points",(("Quantity per"-"Scrap Quantity") *  Item."No. of Soldering Points"));
            Validate("No. of Opportunities",("Quantity per" * Item. "No. of Opportunities"));
            Validate("No. of Fixing Holes",("Quantity per" * "No. of Fixing Holes"));
          end;

        end;
        Quantity:="Quantity per";
        //NSS 110907
        //cost1.0
        "Tot Avg Cost":="Avg Cost"*"Quantity per";
        //cost1.0
        */
        //end;
        field(16500; "Principal Input"; Boolean)
        {
            CaptionML = ENU = 'Principal Input',
                        ENN = 'Principal Input';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(60001; "Substitute Item"; Code[20])
        {
            Description = 'B2B';
            TableRelation = "Item Substitution"."Substitute No." WHERE("No." = FIELD("No."));
        }
        field(60002; "Allow Excess Qty."; Boolean)
        {
            Description = 'B2B';
        }
        field(60003; "No. of Pins"; Decimal)
        {
            BlankZero = true;
            Description = 'B2B';
            Editable = true;
        }
        field(60004; "No. of Soldering Points"; Decimal)
        {
            BlankZero = true;
            Description = 'B2B';
            Editable = true;
        }
        field(60005; "No. of Opportunities"; Decimal)
        {
            BlankZero = true;
            Description = 'B2B';
            Editable = false;
        }
        field(60006; "Type of Solder"; Option)
        {
            Description = 'B2B';
            Editable = true;
            OptionMembers = " ",SMD,DIP;
        }
        field(60007; "Shelf No."; Code[20])
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60008; "Change Type"; Option)
        {
            Description = 'B2B';
            Editable = false;
            OptionMembers = " ",Added,Modified,Deleted;
        }
        field(60009; "No. of Fixing Holes"; Integer)
        {
            Description = 'B2B';
            Editable = false;
        }
        field(60010; "Position 4"; Code[250])
        {
            Description = 'B2B';

            trigger OnValidate();
            begin
                Item.Reset;
                Item.SetFilter(Item."No.", "No.");
                if Item.FindFirst then begin
                    if not (Item."Item Category Code" = 'MECH') then begin

                        CODE := '';
                        single_pos := false; //indicates if only single postion is used(Ex:R1)
                        range_pos := false;
                        is_slash := false; //defines a range(Ex:R1-R5)
                        first_val := ''; //stores the first char(say R)alphabet
                        sec_val := ''; //stores the second char(say 1)numeric
                        multi_first_val := '';
                        multi_sec_val := '';
                        First_Num := 0;
                        Second_Num := 0;
                        IS_SKIPPED := false;
                        CODE := "Position 4";
                        Curr_Pos := 1;
                        if StrLen(CODE) > 2 then begin
                            if IS_SKIPPED = false then
                                repeat
                                    char := CopyStr(CODE, Curr_Pos, 1);
                                    if char = '-' then begin
                                        is_slash := true;
                                        if single_pos = false then
                                            Error('no comments/space inside range value')
                                        else
                                            single_pos := false;

                                    end
                                    else
                                        if char = ' ' then begin
                                            if Curr_Pos = StrLen(CODE) then
                                                Error('Un-necessary space at the ending');
                                            char1 := ' ';
                                            if Curr_Pos - 2 > 0 then
                                                char1 := CopyStr(CODE, Curr_Pos - 1, 1);
                                            if (first_val = '') and (char1 <> ')') then
                                                Error('Un necessary space detected');

                                            if range_pos then begin
                                                if first_val <> sec_val then
                                                    Error('ERROR AT 1ST CHAR IN RANGE');
                                                if multi_first_val <> multi_sec_val then
                                                    Error('ERROR AT 3RD CHAR IN RANGE');
                                                if Second_Num <= First_Num then
                                                    Error('ERROR IN RANGE');
                                            end
                                            else
                                                if is_slash then
                                                    Error('Un necessary1 "-"');
                                            single_pos := false;
                                            range_pos := false;
                                            is_slash := false;
                                            first_val := '';
                                            sec_val := '';
                                            multi_first_val := '';
                                            multi_sec_val := '';
                                            First_Num := 0;
                                            Second_Num := 0;
                                        end
                                        else
                                            if char = '(' then begin
                                                if Curr_Pos > 1 then begin
                                                    char1 := CopyStr(CODE, Curr_Pos - 1, 1);
                                                    if (char1 <> ' ') and (char1 <> ')') then
                                                        Error('No space between comment and position-1');
                                                end
                                                else
                                                    first_val := '@';
                                                Curr_Pos_inner := Curr_Pos + 1;
                                                No_times_Rep := 1;
                                                repeat
                                                    char := CopyStr(CODE, Curr_Pos_inner, 1);
                                                    if char = ')' then
                                                        No_times_Rep := No_times_Rep - 1;
                                                    if char = '(' then
                                                        No_times_Rep := No_times_Rep + 1;

                                                    Curr_Pos_inner := Curr_Pos_inner + 1;

                                                until (No_times_Rep = 0) or (Curr_Pos_inner > StrLen(CODE));

                                                if No_times_Rep > 0 then
                                                    Error('COMMENT NOT PROPERLY ENDED');
                                                Curr_Pos := Curr_Pos_inner - 1;
                                                if Curr_Pos_inner < StrLen(CODE) then begin
                                                    char := CopyStr(CODE, Curr_Pos_inner, 1);
                                                    if (char <> ' ') and (char <> '(') then
                                                        Error('No space between comment and position-2');
                                                end;
                                            end
                                            else
                                                if (char in ['A' .. 'Z']) or (char = '/') then begin
                                                    if single_pos then begin
                                                        multi_first_val := multi_first_val + char;
                                                    end else
                                                        if range_pos then begin
                                                            multi_sec_val := multi_sec_val + char;
                                                        end else
                                                            if is_slash then begin
                                                                sec_val := sec_val + char;
                                                            end else
                                                                first_val := first_val + char;
                                                end
                                                else
                                                    if (char in ['0' .. '9']) or (char = '.') then begin
                                                        if first_val = '' then
                                                            Error('1');
                                                        //IF multi_first_val <>'' THEN
                                                        //ERROR('No Numeric in Multi Value');
                                                        if is_slash then begin
                                                            range_pos := true;
                                                            if Evaluate(test_int, char) then begin
                                                                if Second_Num = 0 then
                                                                    Second_Num := Second_Num + test_int
                                                                else
                                                                    Second_Num := Second_Num * 10 + test_int;

                                                            end;
                                                        end
                                                        else begin
                                                            if Evaluate(test_int, char) then begin
                                                                if First_Num = 0 then
                                                                    First_Num := First_Num + test_int
                                                                else
                                                                    First_Num := First_Num * 10 + test_int;

                                                            end;
                                                            single_pos := true;
                                                            if First_Num = 0 then
                                                                Error('0 IS NOT A VALID POSITION');
                                                        end;
                                                    end
                                                    else
                                                        Error('Unknown character');
                                    Curr_Pos := Curr_Pos + 1;
                                until Curr_Pos > StrLen(CODE);
                            if range_pos then begin
                                if first_val <> sec_val then
                                    Error('ERROR AT 1ST CHAR IN RANGE');
                                if multi_first_val <> multi_sec_val then
                                    Error('ERROR AT 3RD CHAR IN RANGE');
                                if Second_Num <= First_Num then
                                    Error('ERROR IN RANGE');

                                range_pos := false;
                                is_slash := false;
                            end;
                            if is_slash then
                                Error('UN NECESSARY "-"');
                        end;
                    end;
                end;
            end;
        }
        field(60011; "Description 2"; Text[50])
        {
            Description = 'B2B';
        }
        field(60012; PCB; Boolean)
        {
        }
        field(60013; "Product group code"; Code[10])
        {
            Description = 'renuka';
        }
        field(60014; "Include in SO Schedule"; Boolean)
        {
            Description = 'B2B';
        }
        field(60015; "BOM Type"; Option)
        {
            Description = 'B2B';
            Editable = false;
            OptionCaption = '" ,Mechanical,Wiring,Testing,Packing"';
            OptionMembers = " ",Mechanical,Wiring,Testing,Packing;
        }
        field(60016; "Avg Cost"; Decimal)
        {
            Description = 'Cost1.0';
        }
        field(60017; "Manufacturing Cost"; Decimal)
        {
            Description = 'Cost1.0';
        }
        field(60018; "Tot Avg Cost"; Decimal)
        {
        }
        field(60019; "Material Reqired Day"; Integer)
        {
        }
        field(60020; Status; Option)
        {
            CalcFormula = Lookup("Production BOM Header".Status WHERE("No." = FIELD("Production BOM No.")));
            FieldClass = FlowField;
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(60021; "Scrap Quantity"; Decimal)
        {
            DecimalPlaces = 1 : 4;

            trigger OnValidate();
            begin
                if Item.Get("No.") then
                    "No. of Soldering Points" := Item."No. of Soldering Points" * ("Quantity per" - "Scrap Quantity");
            end;
        }
        field(60022; "No. of SMD Points"; Decimal)
        {
        }
        field(60023; "No. of DIP Point"; Decimal)
        {
        }
        field(60024; "Part number"; Code[30])
        {
        }
        field(60025; "Storage Temperature"; Text[30])
        {

            trigger OnValidate();
            begin
                if Item.Get("No.") then
                    "Storage Temperature" := Item."Storage Temperature";
            end;
        }
        field(60026; Make; Code[30])
        {
        }
        field(60027; Package; Code[20])
        {
        }
        field(60028; Certify; Boolean)
        {
        }
        field(60029; Dept; Code[10])
        {
            Description = 'pranavi';
        }
        field(60030; "Operation No."; Code[10])
        {
            Description = 'pranavi';
            TableRelation = "Routing Line"."Operation No." WHERE("Routing No." = FIELD("Production BOM No."));

            trigger OnValidate();
            begin
                //added by pranavi on 09-05-2015 for updating dept code to prod. bom lines
                routingline.Reset;
                if "Operation No." = '' then
                    Dept := ''
                else begin
                    routingline.SetFilter(routingline."Routing No.", "Production BOM No.");
                    routingline.SetFilter(routingline."Operation No.", "Operation No.");
                    if routingline.FindFirst then
                        Dept := routingline."No.";
                end;
                //end--pranavi
            end;
        }
        field(60031; "operating temp"; Text[30])
        {
            CalcFormula = Lookup(Item."Operating Temperature" WHERE("No." = FIELD("No.")));
            Description = 'sujani';
            FieldClass = FlowField;
        }
    }
    keys
    {

        //Unsupported feature: Deletion on ""Production BOM No.,Version Code,Line No."(Key)". Please convert manually.


        //Unsupported feature: Deletion on ""Type,No."(Key)". Please convert manually.

        key(Key1; "Production BOM No.", "Version Code", "Line No.")
        {
            SumIndexFields = "Manufacturing Cost", "Tot Avg Cost";
        }
        key(Key2; Type, "No.")
        {
        }
        key(Key3; "Tot Avg Cost")
        {
        }
    }


    //Unsupported feature: CodeModification on "OnDelete". Please convert manually.

    //trigger OnDelete();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Type <> Type::" " THEN BEGIN
      TestStatus;
      IF Type = Type::Item THEN
        PlanningAssignment.AssignPlannedOrders("No.",FALSE)
      ELSE
        IF Type = Type::"Production BOM" THEN
          PlanningAssignment.OldBom("No.");
    END;

    ProdBOMComment.SETRANGE("Production BOM No.","Production BOM No.");
    ProdBOMComment.SETRANGE("BOM Line No.","Line No.");
    ProdBOMComment.SETRANGE("Version Code","Version Code");
    ProdBOMComment.DELETEALL;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //Added by Rakesh on 12-Jul-14 to stop modification when BOM is under certification
    {IF NOT (UPPERCASE(USERID) IN ['ERPSERVER\ADMINISTRATOR','EFFTRONICS\MNRAJU']) THEN
    BEGIN
      ProdBOMHeader.SETRANGE(ProdBOMHeader."No.","Production BOM No.");
      IF ProdBOMHeader.FINDFIRST THEN
      BEGIN
          IF ProdBOMHeader.Certify > 0 THEN
            ERROR('BOM('+"Production BOM No."+') is under Approval, modifications are not allowed.');
        END;
    END;
    //end by Rakesh
     }
    {IF NOT((USERID='SUPER') OR (USERID='10RD010')) THEN
    BEGIN}
    {
    IF (Type <> Type::" ") THEN BEGIN
    #2..8
    #10..12
    }
    //{>>>>>>>} ORIGINAL
    {
    IF ProdBOMComment.FINDSET THEN
      REPEAT
        BOMReasonCodeLine.RESET;
        BOMReasonCodeLine.SETRANGE("Production BOM No.","Production BOM No.");
        BOMReasonCodeLine.SETRANGE("Line No.","Line No.");
        BOMReasonCodeLine.SETRANGE("Version Code","Version Code");
        IF NOT BOMReasonCodeLine.FINDFIRST THEN
          InsertBOMReasonCodeLine(ProdBOMComment);
      UNTIL ProdBOMComment.NEXT = 0
    ELSE
      IF CONFIRM(Text16500,TRUE,"Production BOM No.") THEN
        ERROR('');
    IF "Principal Input" THEN BEGIN
      BOMChangeLog.RESET;
      IF BOMChangeLog.FINDLAST THEN
        EntryNo := BOMChangeLog."Entry No." + 1
      ELSE
        EntryNo := 1;
      BOMChangeLog.INIT;
      BOMChangeLog."Entry No." := EntryNo;
      BOMChangeLog."Raw Material Code" := "No.";
      BOMChangeLog."BOM No." := "Production BOM No.";
      BOMChangeLog."Effective Date" := 0D;
      BOMChangeLog."Raw Material Line No." := "Line No.";
      BOMChangeLog.Quantity := Quantity;
      BOMChangeLog."Quantity per" := "Quantity per";
      BOMChangeLog."Unit Of Measure" := "Unit of Measure Code";
      BOMChangeLog."PI Status" := TRUE;
      BOMChangeLog.Deleted :=TRUE;
      Item.RESET;
      Item.SETRANGE("Production BOM No.","Production BOM No.");
      IF Item.FINDFIRST THEN
        BOMChangeLog."FG Code" := Item."No.";
      BOMChangeLog.INSERT(TRUE);
    END;
    {=======} MODIFIED
    {=======} TARGET

    IF ProdBOMComment.FINDSET THEN
      REPEAT
        BOMReasonCodeLine.RESET;
        BOMReasonCodeLine.SETRANGE("Production BOM No.","Production BOM No.");
        BOMReasonCodeLine.SETRANGE("Line No.","Line No.");
        BOMReasonCodeLine.SETRANGE("Version Code","Version Code");
        IF NOT BOMReasonCodeLine.FINDFIRST THEN
          InsertBOMReasonCodeLine(ProdBOMComment);
      UNTIL ProdBOMComment.NEXT = 0
    ELSE
    //  IF CONFIRM(Text16500,TRUE,"Production BOM No.") THEN
    //    ERROR('');
    IF "Principal Input" THEN BEGIN
      BOMChangeLog.RESET;
      IF BOMChangeLog.FINDLAST THEN
        EntryNo := BOMChangeLog."Entry No." + 1
      ELSE
        EntryNo := 1;
      BOMChangeLog.INIT;
      BOMChangeLog."Entry No." := EntryNo;
      BOMChangeLog."Raw Material Code" := "No.";
      BOMChangeLog."BOM No." := "Production BOM No.";
      BOMChangeLog."Effective Date" := 0D;
      BOMChangeLog."Raw Material Line No." := "Line No.";
      BOMChangeLog.Quantity := Quantity;
      BOMChangeLog."Quantity per" := "Quantity per";
      BOMChangeLog."Unit Of Measure" := "Unit of Measure Code";
      BOMChangeLog."PI Status" := TRUE;
      BOMChangeLog.Deleted :=TRUE;
      Item.RESET;
      Item.SETRANGE("Production BOM No.","Production BOM No.");
      IF Item.FINDFIRST THEN
        BOMChangeLog."FG Code" := Item."No.";
      BOMChangeLog.INSERT(TRUE);
    END;
    {<<<<<<<}
    ProdBOMComment.DELETEALL;
    //END;
    }
    */
    //end;


    //Unsupported feature: CodeModification on "OnInsert". Please convert manually.

    //trigger OnInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestStatus;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //Added by Rakesh on 12-Jul-14 to stop modification when BOM is under certification
    {IF NOT (UPPERCASE(USERID) IN ['ERPSERVER\ADMINISTRATOR','EFFTRONICS\MNRAJU']) THEN
    BEGIN
      ProdBOMHeader.SETRANGE(ProdBOMHeader."No.","Production BOM No.");
      IF ProdBOMHeader.FINDFIRST THEN
      BEGIN
          IF ProdBOMHeader.Certify > 0 THEN
            ERROR('BOM('+"Production BOM No."+') is under Approval, modifications are not allowed.');
        END;
    END;
    }
    //end by Rakesh

    TestStatus;
    */
    //end;


    //Unsupported feature: CodeModification on "OnModify". Please convert manually.

    //trigger OnModify();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Type <> Type::" " THEN
      TestStatus;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //Added by Rakesh on 12-Jul-14 to stop modification when BOM is under certification
    {IF NOT (UPPERCASE(USERID) IN ['ERPSERVER\ADMINISTRATOR','EFFTRONICS\MNRAJU']) THEN
    BEGIN
      ProdBOMHeader.SETRANGE(ProdBOMHeader."No.","Production BOM No.");
      IF ProdBOMHeader.FINDFIRST THEN
      BEGIN
          IF ProdBOMHeader.Certify > 0 THEN
            ERROR('BOM('+"Production BOM No."+') is under Approval, modifications are not allowed.');
        END;
    END;
    //end by Rakesh
     }
     ProdBOMHeader.Reset;
     ProdBOMHeader.SetRange(ProdBOMHeader."No.","Production BOM No.");
     if ProdBOMHeader.FindFirst then
      ProdBOMHeader."Modified User ID" := UserId;

    if Type <> Type::" " then
    if not((UserId='SUPER') or (UserId='10RD010')) then
      TestStatus;


     // vishnu for bom alerts

      {BEGIN
        Subject := 'BOM -'+Rec."Production BOM No."+' -Done';
        SMTP_MAIL.CreateMessage('ERP','erp@efftronics.com','vishnupriya@efftronics.com',Subject,'',TRUE);
        SMTP_MAIL.AppendBody('<html><body><table>');
        SMTP_MAIL.AppendBody('<th>BOM  Details</th>');
        ProdBOMHeader.RESET;
        ProdBOMHeader.SETFILTER("No.",Rec."Production BOM No.");
        ProdBOMHeader.FINDFIRST;
        SMTP_MAIL.AppendBody('<tr><td>BOM No</td><td>'+FORMAT(ProdBOMHeader."No.")+ '</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>User Id</td><td>'+ProdBOMHeader."User Id"+ '</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>Last Modified Date</td><td>'+FORMAT(ProdBOMHeader."Last Date Modified")+ '</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>Today</td><td>'+FORMAT(TODAY)+ '</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>Item No</td><td>'+Rec."No."+ '</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>Desc</td><td>'+Rec.Description+ '</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>Qty</td><td>'+FORMAT(Rec.Quantity)+ '</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>Postition</td>'+Rec.Position+ '</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>Position2</td><td>'+Rec."Position 2"+ '</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>Position3</td><td>'+Rec."Position 3"+ '</td></tr>');
        SMTP_MAIL.AppendBody('<tr><td>Position4</td><td>'+Rec."Position 4"+ '</td></tr>');
         //MESSAGE(DELCHR(FORMAT(Rec.Quantity),'<=>',','));
         LastdateM := ProdBOMHeader."Last Date Modified";


        SMTP_MAIL.AppendBody('</table>');
        //SMTP_MAIL.AppendBody('<br/><br/>*********** This is auto generated mail from ERP ************</body></html>');
        SMTP_MAIL.Send;
        END;
        }

    // commented by vishnu Priya on 02-05-2020
    {
    IF ISCLEAR(SQLConnection) THEN
      CREATE(SQLConnection,FALSE,TRUE);

    IF ISCLEAR(RecordSet) THEN
      CREATE(RecordSet,FALSE,TRUE);

    IF ConnectionOpen <> 1 THEN
    BEGIN
      SQLConnection.ConnectionString:='DSN=erpserver;UID=report;PASSWORD=Efftronics@eff;SERVER=erpserver;';
      SQLConnection.Open;
      SQLConnection.BeginTrans;
      ConnectionOpen:=1;
    END;
        ProdBOMHeader.RESET;
        ProdBOMHeader.SETFILTER("No.",Rec."Production BOM No.");
        ProdBOMHeader.FINDFIRST;
        Day := DATE2DMY(ProdBOMHeader."Last Date Modified",1);
        Month := DATE2DMY(ProdBOMHeader."Last Date Modified",2);
        Year := DATE2DMY(ProdBOMHeader."Last Date Modified",3);
        Datecon := FORMAT(Year)+'-'+FORMAT(Month)+'-'+FORMAT(Day);
        //MESSAGE(FORMAT(Datecon));
       //MESSAGE(COPYSTR(ProdBOMHeader."User Id",11,STRLEN(ProdBOMHeader."Modified User ID")));
    SQLQuery := 'insert into [BOM alerts purpose custom] ([Bom Num], [BOM Desc], Status, [Last Modified Date],[Current time],'+
            '[Component Number], [Component Desc], [Component Qty], [Position1], [Postion2],'+
            '[Postion3], [User Id],Postion4,LineBOM_type1,[BOM Type],currentusername1'+
            ') values('''+FORMAT(Rec."Production BOM No.")+''','''+FORMAT(ProdBOMHeader.Description)+''','''+FORMAT(ProdBOMHeader.Status)+''',convert(date,'''+FORMAT(Datecon)+'''),getdate(),'''+FORMAT(Rec."No.")+''','''+FORMAT(Rec.Description)+''','+
            DELCHR(FORMAT(Rec.Quantity),'<=>',',')+','''+FORMAT(Rec.Position)+''','''+
            FORMAT(Rec."Position 2")+''','''+FORMAT(Rec."Position 3")+''','''+FORMAT(COPYSTR(ProdBOMHeader."User Id",12,STRLEN(ProdBOMHeader."Modified User ID")))+''','''+FORMAT(Rec."Position 4")+''','''+
            FORMAT(Rec."BOM Type")+''','''+
            FORMAT(ProdBOMHeader."BOM Type")+''','''+FORMAT(DELSTR(USERID,1,11))+''')';
           // MESSAGE(SQLQuery);
            IF SQLQuery <>'' THEN
            SQLConnection.Execute(SQLQuery);
            SQLConnection.CommitTrans;
            //SQLConnection.BeginTrans;


    }
    // commented by vishnu Priya on 02-05-2020
    */
    //end;

    //Unsupported feature: InsertAfter on "Documentation". Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.


    var
        TOTSolderingPoints: Integer;
        TOTFixingPoints: Integer;


    //Unsupported feature: PropertyModification on "OnDelete.ProdBOMComment(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.ProdBOMComment : 99000776;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.ProdBOMComment : "Production BOM Comment Line";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "OnDelete.PlanningAssignment(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //OnDelete.PlanningAssignment : 99000850;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OnDelete.PlanningAssignment : "Planning Assignment";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "TestStatus(PROCEDURE 1).ProdBOMVersion(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //TestStatus : 99000779;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //TestStatus : "Production BOM Version";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetQtyPerUnitOfMeasure(PROCEDURE 2).Item(Variable 1000)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetQtyPerUnitOfMeasure : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetQtyPerUnitOfMeasure : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetQtyPerUnitOfMeasure(PROCEDURE 2).UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetQtyPerUnitOfMeasure : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetQtyPerUnitOfMeasure : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetBOMHeaderQtyPerUOM(PROCEDURE 3).ProdBOMHeader(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetBOMHeaderQtyPerUOM : 99000771;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetBOMHeaderQtyPerUOM : "Production BOM Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetBOMHeaderQtyPerUOM(PROCEDURE 3).ProdBOMVersion(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetBOMHeaderQtyPerUOM : 99000779;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetBOMHeaderQtyPerUOM : "Production BOM Version";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetBOMHeaderQtyPerUOM(PROCEDURE 3).ItemUnitOfMeasure(Variable 1004)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetBOMHeaderQtyPerUOM : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetBOMHeaderQtyPerUOM : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetBOMHeaderQtyPerUOM(PROCEDURE 3).UOMMgt(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetBOMHeaderQtyPerUOM : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetBOMHeaderQtyPerUOM : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetBOMLineQtyPerUOM(PROCEDURE 4).ItemUnitOfMeasure(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetBOMLineQtyPerUOM : 5404;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetBOMLineQtyPerUOM : "Item Unit of Measure";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "GetBOMLineQtyPerUOM(PROCEDURE 4).UOMMgt(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //GetBOMLineQtyPerUOM : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GetBOMLineQtyPerUOM : "Unit of Measure Management";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "Item(Variable 1001)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //Item : 27;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Item : Item;
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ProdBOMHeader(Variable 1002)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ProdBOMHeader : 99000771;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ProdBOMHeader : "Production BOM Header";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "ItemVariant(Variable 1003)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //ItemVariant : 5401;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ItemVariant : "Item Variant";
    //Variable type has not been exported.


    //Unsupported feature: PropertyModification on "UOMMgt(Variable 1007)". Please convert manually.

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 5402;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : "Unit of Measure Management";
    //Variable type has not been exported.

    var
        ProdBOMLine: Record "Production BOM Line";
        ProdBOMHeaderRec: Record "Production BOM Header";
        IS_SKIPPED: Boolean;
        char: Text[30];
        char1: Text[30];
        single_pos: Boolean;
        range_pos: Boolean;
        multi_single_pos: Boolean;
        multi_range_pos: Boolean;
        is_slash: Boolean;
        first_val: Text[30];
        sec_val: Text[30];
        multi_first_val: Text[30];
        multi_sec_val: Text[30];
        Curr_Pos: Integer;
        First_Num: Integer;
        Second_Num: Integer;
        test_int: Integer;
        Curr_Pos_inner: Integer;
        No_times_Rep: Integer;
        "CODE": Code[250];
        routingline: Record "Routing Line";
        Subject: Text[300];
        SMTP_MAIL: Codeunit "SMTP Mail";
        SQLQuery: Text[1000];
        RowCount: Integer;
        SQLConnection: Automation "'{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8:'{00000514-0000-0010-8000-00AA006D2EA4}':''{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8'.Connection";
        SQLQuery1: Text;
        ConnectionOpen: Integer;
        RecordSet: Automation "'{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8:'{00000535-0000-0010-8000-00AA006D2EA4}':''{2A75196C-D9EB-4129-B803-931327F72D5C}' 2.8'.Recordset";
        LastdateM: Date;
        Day: Integer;
        Month: Integer;
        Year: Integer;
        Datecon: Text;
}

