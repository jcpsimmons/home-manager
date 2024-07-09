{ ... }:
{
  programs.newsboat = {
    enable = true;
    urls = [
      { url = "https://torrentfreak.com/feed/"; }
      { url = "https://www.nationalreview.com/author/armond-white/feed/"; }
    ];
  };
}
