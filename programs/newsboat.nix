{ ... }:
{
  programs.newsboat = {
    enable = true;
    urls = [

      {
        title = "Daily Readings";
        url = "https://orthocal.info/api/feed/";
      }
      { url = "https://inklesspen.blog/feed"; }
      {
        url = "https://torrentfreak.com/feed/";
      }
      {
        title = "El País Edición México";
        url = "https://feeds.elpais.com/mrss-s/pages/ep/site/elpais.com/section/mexico/portada";
      }
      { url = "https://www.defensenews.com/arc/outboundfeeds/rss/?outputType=xml"; }
      { url = "https://techcrunch.com/feed/"; }
    ];
    autoReload = true;
    extraConfig = ''
      # unbind keys
      unbind-key ENTER
      unbind-key j
      unbind-key k
      unbind-key J
      unbind-key K

      # bind keys - vim style
      bind-key j down
      bind-key k up
      bind-key l open
      bind-key h quit

      # niceties for reading
      text-width 65

      # colors
      color background          color234   color235
      color listnormal          color223   color235
      color listfocus           color81    color235 bold
      color listnormal_unread   color229   color235
      color listfocus_unread    color223   color235 bold
      color info                color223   color235
      color article             color223   color235
    '';
  };
}

