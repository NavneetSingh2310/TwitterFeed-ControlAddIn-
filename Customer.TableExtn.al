tableextension 50100 "Customer Extn." extends Customer
{
    fields
    {
        field(999; "Twitter Handle"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

}