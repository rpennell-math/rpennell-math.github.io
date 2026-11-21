<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title><xsl:value-of select="/rss/channel/title"/> (RSS feed)</title>
<style>
  body { margin:0; font-family: Georgia, "Times New Roman", serif; color:#1d2433; background:#fafbfc; line-height:1.5; }
  header { background:#006648; color:#fff; padding:2.6rem 1.25rem 2.2rem; }
  .wrap { max-width:880px; margin:0 auto; }
  .kicker { font-family:system-ui,sans-serif; letter-spacing:.08em; text-transform:uppercase; font-size:.85rem; opacity:.85; margin:0; }
  .kicker a { color:#fff; text-decoration:none; }
  h1 { font-size:2.1rem; margin:.3rem 0 .6rem; font-weight:normal; }
  header p { margin:.2rem 0; opacity:.92; max-width:42rem; }
  code { background:rgba(255,255,255,.15); padding:.1rem .35rem; border-radius:4px; font-size:.92em; }
  main { padding:2rem 1.25rem 3rem; }
  .post { display:block; background:#fff; border:1px solid #e3e6ec; border-left:4px solid #006648; border-radius:8px; padding:1.1rem 1.3rem; margin-bottom:1rem; text-decoration:none; color:#1d2433; }
  .post:hover { background:#eef6f2; }
  .tag { font-family:system-ui,sans-serif; font-size:.78rem; text-transform:uppercase; letter-spacing:.07em; color:#006648; }
  .post h2 { font-size:1.3rem; font-weight:normal; margin:.15rem 0 .35rem; }
  .post p { margin:0; color:#5b6475; font-size:.97rem; }
  footer { text-align:center; color:#5b6475; font-size:.85rem; padding:0 1rem 2.5rem; font-family:system-ui,sans-serif; }
</style>
</head>
<body>
<header><div class="wrap">
  <p class="kicker"><a href="https://rpennell-math.github.io/">&#8592; Home</a></p>
  <h1>RSS feed: Tangents &amp; Demos</h1>
  <p>This is a feed. Paste its address, <code>https://rpennell-math.github.io/feed.xml</code>, into a feed reader (Feedly, Inoreader, NetNewsWire, and so on) to get new articles and demos as they're posted.</p>
</div></header>
<main class="wrap">
  <xsl:for-each select="/rss/channel/item">
    <a class="post" href="{link}">
      <span class="tag"><xsl:value-of select="category"/> · <xsl:value-of select="substring(pubDate,6,11)"/></span>
      <h2><xsl:value-of select="title"/></h2>
      <p><xsl:value-of select="description"/></p>
    </a>
  </xsl:for-each>
</main>
<footer>Ryan Pennell, Ivy Tech Bloomington</footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
