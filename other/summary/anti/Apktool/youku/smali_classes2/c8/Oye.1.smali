.class public abstract Lc8/Oye;
.super Landroid/webkit/WebViewClient;
.source "BaseWebViewClient.java"


# instance fields
.field protected param:Lc8/Uye;

.field protected requestCallback:Lc8/Gye;


# direct methods
.method public constructor <init>(Lc8/Gye;Lc8/Uye;)V
    .locals 0
    .param p1, "callback"    # Lc8/Gye;
    .param p2, "param"    # Lc8/Uye;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    iput-object p1, p0, Lc8/Oye;->requestCallback:Lc8/Gye;

    .line 24
    iput-object p2, p0, Lc8/Oye;->param:Lc8/Uye;

    .line 25
    return-void
.end method


# virtual methods
.method public closeWeb()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onBackKeyDown()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lc8/Oye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lc8/Oye;->requestCallback:Lc8/Gye;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lc8/Gye;->shouldOverrideUrlLoadingCallBack(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 32
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/Oye;->requestCallback:Lc8/Gye;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lc8/Oye;->requestCallback:Lc8/Gye;

    invoke-interface {v0, p1, p2}, Lc8/Gye;->shouldOverrideUrlLoadingCallBack(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 40
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
