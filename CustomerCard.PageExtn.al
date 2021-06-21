pageextension 50100 "Customer Extn" extends "Customer Card"
{
    layout
    {
        addafter("E-Mail")
        {
            field("Twitter Handle"; Rec."Twitter Handle")
            {
                ApplicationArea = All;
                trigger OnValidate()
                begin
                    CurrPage.Feed.Page.ChangeControlIsReady();
                    CurrPage.Feed.Page.UpdateFeed(Rec."Twitter Handle");
                end;
            }
        }
        addfirst(factboxes)
        {
            part(Feed; "Twitter Feed")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
                Caption = 'Tweets';
            }
        }

    }

    actions
    {
    }

}