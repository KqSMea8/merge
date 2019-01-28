.class public Lc8/zco;
.super Landroid/webkit/WebViewClient;
.source "BridgeWebViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BridgeWebViewClient"


# instance fields
.field private mWrapper:Lc8/bdo;


# direct methods
.method public constructor <init>(Lc8/bdo;)V
    .locals 0
    .param p1, "mWrapper"    # Lc8/bdo;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/zco;->mWrapper:Lc8/bdo;

    .line 25
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lc8/zco;->mWrapper:Lc8/bdo;

    invoke-virtual {v0, p2}, Lc8/bdo;->onPageFinished(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 63
    iget-object v0, p0, Lc8/zco;->mWrapper:Lc8/bdo;

    invoke-virtual {v0, p2}, Lc8/bdo;->onPageStarted(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 84
    iget-object v0, p0, Lc8/zco;->mWrapper:Lc8/bdo;

    invoke-virtual {v0, p2, p3}, Lc8/bdo;->onReceivedError(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 85
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "/favicon.ico"

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v2, "image/*"

    const-string/jumbo v3, "utf-8"

    new-instance v4, Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 78
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 34
    :goto_0
    iget-object v1, p0, Lc8/zco;->mWrapper:Lc8/bdo;

    invoke-virtual {v1}, Lc8/bdo;->getWebView()Lc8/yco;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc8/yco;->invokeProtocols(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const/4 v1, 0x1

    .line 56
    :goto_1
    return v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method
