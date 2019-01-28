.class public Lc8/bdo;
.super Landroid/widget/FrameLayout;
.source "WebViewWrapper.java"

# interfaces
.implements Lc8/Pco;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ado;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewWrapper"


# instance fields
.field private mErrorContainer:Landroid/widget/FrameLayout;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWebView:Lc8/yco;

.field private schemeExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lc8/bdo;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lc8/bdo;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0}, Lc8/bdo;->init()V

    .line 52
    return-void
.end method

.method private ensureView(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "toShow"    # Landroid/view/View;

    .prologue
    .line 130
    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    return-void

    .line 130
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, -0x1

    .line 82
    invoke-virtual {p0}, Lc8/bdo;->generateWebView()Lc8/yco;

    move-result-object v0

    iput-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    .line 83
    invoke-virtual {p0}, Lc8/bdo;->generateProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lc8/bdo;->mProgressBar:Landroid/widget/ProgressBar;

    .line 84
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lc8/bdo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/bdo;->mErrorContainer:Landroid/widget/FrameLayout;

    .line 85
    iget-object v0, p0, Lc8/bdo;->mErrorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v2, v2}, Lc8/bdo;->addView(Landroid/view/View;II)V

    .line 87
    iget-object v0, p0, Lc8/bdo;->mErrorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lc8/bdo;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    invoke-direct {p0}, Lc8/bdo;->initWebView()V

    .line 91
    return-void
.end method

.method private initWebView()V
    .locals 4

    .prologue
    .line 94
    new-instance v1, Lc8/zco;

    invoke-direct {v1, p0}, Lc8/zco;-><init>(Lc8/bdo;)V

    invoke-virtual {p0, v1}, Lc8/bdo;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 95
    new-instance v1, Lc8/xco;

    invoke-direct {v1, p0}, Lc8/xco;-><init>(Lc8/Pco;)V

    invoke-virtual {p0, v1}, Lc8/bdo;->setWebChromeClient(Lc8/xco;)V

    .line 96
    iget-object v1, p0, Lc8/bdo;->mWebView:Lc8/yco;

    new-instance v2, Lc8/ado;

    invoke-direct {v2, p0}, Lc8/ado;-><init>(Lc8/bdo;)V

    invoke-virtual {v1, v2}, Lc8/yco;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 99
    iget-object v1, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v1}, Lc8/yco;->requestFocus()Z

    .line 101
    iget-object v1, p0, Lc8/bdo;->mWebView:Lc8/yco;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Lc8/yco;->setScrollBarStyle(I)V

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lc8/bdo;->mWebView:Lc8/yco;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lc8/yco;->setLayerType(ILandroid/graphics/Paint;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v1}, Lc8/yco;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 109
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {p0}, Lc8/bdo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lc8/Zco;->initSettings(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    .line 110
    return-void
.end method


# virtual methods
.method public addProtocols(Lc8/cdo;)V
    .locals 1
    .param p1, "iProtocol"    # Lc8/cdo;

    .prologue
    .line 241
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v0, p1}, Lc8/yco;->registerProtocols(Lc8/cdo;)V

    .line 242
    return-void
.end method

.method public ensureView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-direct {p0, v0, p1}, Lc8/bdo;->ensureView(Landroid/view/View;Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lc8/bdo;->mErrorContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, p1}, Lc8/bdo;->ensureView(Landroid/view/View;Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lc8/bdo;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1}, Lc8/bdo;->ensureView(Landroid/view/View;Landroid/view/View;)V

    .line 121
    return-void
.end method

.method public execJS(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v0, p1}, Lc8/yco;->loadUrl(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method protected generateProgressBar()Landroid/widget/ProgressBar;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 72
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lc8/bdo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lc8/bdo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-object v0
.end method

.method protected generateWebView()Lc8/yco;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 60
    new-instance v0, Lc8/yco;

    invoke-virtual {p0}, Lc8/bdo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/yco;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "webView":Lc8/yco;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lc8/bdo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    return-object v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lc8/bdo;->schemeExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v0}, Lc8/yco;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v0}, Lc8/yco;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Lc8/yco;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v0, p1}, Lc8/yco;->loadUrl(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/bdo;->toggleLoading(Z)V

    .line 203
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {p0, v0}, Lc8/bdo;->ensureView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v0, p1}, Lc8/yco;->onPageFinish(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/bdo;->toggleLoading(Z)V

    .line 198
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1
    .param p1, "request"    # Landroid/webkit/WebResourceRequest;
    .param p2, "error"    # Landroid/webkit/WebResourceError;

    .prologue
    .line 219
    iget-object v0, p0, Lc8/bdo;->mErrorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lc8/bdo;->ensureView(Landroid/view/View;)V

    .line 220
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v0}, Lc8/yco;->reload()V

    .line 167
    return-void
.end method

.method public removeProtocols(Lc8/cdo;)V
    .locals 1
    .param p1, "iProtocol"    # Lc8/cdo;

    .prologue
    .line 250
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v0, p1}, Lc8/yco;->unRegisterProtocols(Lc8/cdo;)V

    .line 251
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-virtual {p0}, Lc8/bdo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lc8/Zco;->setCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setErrorView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 141
    iget-object v0, p0, Lc8/bdo;->mErrorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 142
    iget-object v0, p0, Lc8/bdo;->mErrorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 143
    return-void
.end method

.method public setLoadingPercent(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lc8/bdo;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 215
    return-void
.end method

.method public setSchemeExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lc8/bdo;->schemeExtra:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v0}, Lc8/yco;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setWebChromeClient(Lc8/xco;)V
    .locals 1
    .param p1, "client"    # Lc8/xco;

    .prologue
    .line 156
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v0, p1}, Lc8/yco;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 157
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 149
    iget-object v0, p0, Lc8/bdo;->mWebView:Lc8/yco;

    invoke-virtual {v0, p1}, Lc8/yco;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 150
    return-void
.end method

.method public toggleLoading(Z)V
    .locals 2
    .param p1, "toggle"    # Z

    .prologue
    .line 209
    iget-object v1, p0, Lc8/bdo;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 210
    return-void

    .line 209
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
