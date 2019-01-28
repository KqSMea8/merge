.class public Lc8/Pye;
.super Lc8/Oye;
.source "DefaultWebViewClient.java"


# direct methods
.method public constructor <init>(Lc8/Gye;Lc8/Uye;)V
    .locals 0
    .param p1, "callback"    # Lc8/Gye;
    .param p2, "param"    # Lc8/Uye;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lc8/Oye;-><init>(Lc8/Gye;Lc8/Uye;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lc8/Oye;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lc8/Pye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lc8/Pye;->requestCallback:Lc8/Gye;

    invoke-interface {v0, p1, p2}, Lc8/Gye;->onPageFinishedCallBack(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lc8/Oye;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 25
    iget-object v0, p0, Lc8/Pye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lc8/Pye;->requestCallback:Lc8/Gye;

    invoke-interface {v0, p1, p2, p3}, Lc8/Gye;->onPageStartedCallBack(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 28
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Lc8/Oye;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lc8/Pye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lc8/Pye;->requestCallback:Lc8/Gye;

    invoke-interface {v0, p1, p2, p3, p4}, Lc8/Gye;->onReceivedErrorCallBack(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;
    .annotation build Lc8/N;
        api = 0x17
    .end annotation

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lc8/Oye;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 42
    iget-object v0, p0, Lc8/Pye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lc8/Pye;->requestCallback:Lc8/Gye;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Lc8/Gye;->onReceivedErrorCallBack(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method
