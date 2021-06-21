//main.js
function init() {
    window.twttr = (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0],
            t = window.twttr || {};
        if (d.getElementById(id)) return t;
        js = d.createElement(s);
        js.id = id;
        js.src = "https://platform.twitter.com/widgets.js";
        fjs.parentNode.insertBefore(js, fjs);
        t._e = [];
        t.ready = function (f) {
            t._e.push(f);
        };
        return t;
    }(document, "script", "twitter-wjs"));
}

function ShowFeed(twitterHandle) {
    document.open();
    if (twitterHandle) {
        document.write('<html><body><a class="twitter-timeline" data-height="310" data-theme="light" data-chrome="nofooter noheader" target = "_blank" href = "http://twitter.com/' + twitterHandle + '?ref_src=twsrc%5Etfw" > Tweets by ' + twitterHandle + '</a ></body ></html > ');
        twttr.widgets.load();
    } else {
        document.write('<html><body>TwitterHandle is not defined</body></html>');
    }
}