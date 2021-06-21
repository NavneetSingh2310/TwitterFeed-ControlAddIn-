controladdin "Twitter Feed"
{
    RequestedHeight = 500;
    RequestedWidth = 1450;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts = 'https://platform.twitter.com/widgets.js', 'script1.js';
    StartupScript = 'startupScript.js';

    event Lookup()

    procedure ShowFeed(_twitterHandle: Text[100])
}