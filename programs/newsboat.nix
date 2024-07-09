{ ... }:
{
  programs.newsboat = {
    enable = true;
    urls = [
      { url = "https://torrentfreak.com/feed/"; }
      { url = "https://www.nationalreview.com/author/armond-white/feed/"; }
      { url = "https://www.defensenews.com/arc/outboundfeeds/rss/?outputType=xml"; }
      { url = "https://techcrunch.com/feed/"; }
    ];
  };
}

