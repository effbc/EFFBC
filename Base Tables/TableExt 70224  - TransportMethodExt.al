tableextension 70224 TransportMethodExt extends "Transport Method"
{
    // version NAVW19.00.00.50357,NAVIN9.00.00.50357

    fields
    {

        //Unsupported feature: Change Data type on "Code(Field 1)". Please convert manually.


        //Unsupported feature: Change NotBlank on "Code(Field 1)". Please convert manually.

        field(16601; "Trans Mode"; Option)
        {
            CaptionML = ENU = 'Trans Mode',
                        ENN = 'Trans Mode';
            DataClassification = ToBeClassified;
            OptionCaptionML = ENU = 'Road,Rail,Air,Ship',
                              ENN = 'Road,Rail,Air,Ship';
            OptionMembers = Road,Rail,Air,Ship;
        }
    }
    keys
    {

        //Unsupported feature: PropertyChange on "Code(Key)". Please convert manually.

    }

    //Unsupported feature: PropertyChange. Please convert manually.


    //Unsupported feature: PropertyChange. Please convert manually.

}

