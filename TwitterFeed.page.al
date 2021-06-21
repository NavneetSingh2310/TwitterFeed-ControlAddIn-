page 50100 "Twitter Feed"
{
    Caption = 'Twitter Feed';
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;

    layout
    {

        area(Content)
        {

            usercontrol("Twitter Feed"; "Twitter Feed")
            {
                ApplicationArea = All;
                trigger Lookup()
                begin
                    ControlIsReady := true;
                    UpdateFeed();
                end;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        UpdateFeed();
    end;

    trigger OnModifyRecord(): Boolean
    begin
        UpdateFeed();
    end;

    procedure UpdateFeed()
    var
    begin
        if ControlIsReady then
            CurrPage."Twitter Feed".ShowFeed(Rec."Twitter Handle");
    end;

    procedure UpdateFeed(text: Text[100])
    var
    begin
        if ControlIsReady then
            CurrPage."Twitter Feed".ShowFeed(text);
    end;

    procedure ChangeControlIsReady()
    begin
        ControlIsReady := true;
    end;

    var
        ControlIsReady: Boolean;
}