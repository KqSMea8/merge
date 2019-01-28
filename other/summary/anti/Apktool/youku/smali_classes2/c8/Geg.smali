.class public Lc8/Geg;
.super Ljava/lang/Object;
.source "WXWebView.java"

# interfaces
.implements Lc8/geg;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnErrorListener:Lc8/eeg;

.field private mOnPageListener:Lc8/feg;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mShowLoading:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Geg;->mShowLoading:Z

    .line 53
    iput-object p1, p0, Lc8/Geg;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lc8/Geg;)Lc8/feg;
    .locals 1
    .param p0, "x0"    # Lc8/Geg;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/Geg;->mOnPageListener:Lc8/feg;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Geg;)Lc8/eeg;
    .locals 1
    .param p0, "x0"    # Lc8/Geg;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/Geg;->mOnErrorListener:Lc8/eeg;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Geg;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/Geg;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lc8/Geg;->showWebView(Z)V

    return-void
.end method

.method static synthetic access$300(Lc8/Geg;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/Geg;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lc8/Geg;->showProgressBar(Z)V

    return-void
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lc8/Geg;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private initWebView(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "wv"    # Landroid/webkit/WebView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 156
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 157
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 161
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 162
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 163
    new-instance v1, Lc8/Eeg;

    invoke-direct {v1, p0}, Lc8/Eeg;-><init>(Lc8/Geg;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 216
    new-instance v1, Lc8/Feg;

    invoke-direct {v1, p0}, Lc8/Feg;-><init>(Lc8/Geg;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 234
    return-void
.end method

.method private showProgressBar(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 141
    iget-boolean v0, p0, Lc8/Geg;->mShowLoading:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lc8/Geg;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    :cond_0
    return-void

    .line 142
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showWebView(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 147
    iget-object v1, p0, Lc8/Geg;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lc8/Geg;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lc8/Geg;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 85
    invoke-direct {p0}, Lc8/Geg;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Geg;->mWebView:Landroid/webkit/WebView;

    .line 88
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 58
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lc8/Geg;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, "root":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 61
    new-instance v3, Landroid/webkit/WebView;

    iget-object v4, p0, Lc8/Geg;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lc8/Geg;->mWebView:Landroid/webkit/WebView;

    .line 62
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v2, "wvLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    iget-object v3, p0, Lc8/Geg;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v3, p0, Lc8/Geg;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 68
    iget-object v3, p0, Lc8/Geg;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v3}, Lc8/Geg;->initWebView(Landroid/webkit/WebView;)V

    .line 70
    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v4, p0, Lc8/Geg;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lc8/Geg;->mProgressBar:Landroid/widget/ProgressBar;

    .line 71
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lc8/Geg;->showProgressBar(Z)V

    .line 72
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v0, "pLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lc8/Geg;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 77
    iget-object v3, p0, Lc8/Geg;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 78
    return-object v1
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lc8/Geg;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-direct {p0}, Lc8/Geg;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lc8/Geg;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lc8/Geg;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Lc8/Geg;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lc8/Geg;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lc8/Geg;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lc8/Geg;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method

.method public setOnErrorListener(Lc8/eeg;)V
    .locals 0
    .param p1, "listener"    # Lc8/eeg;

    .prologue
    .line 132
    iput-object p1, p0, Lc8/Geg;->mOnErrorListener:Lc8/eeg;

    .line 133
    return-void
.end method

.method public setOnPageListener(Lc8/feg;)V
    .locals 0
    .param p1, "listener"    # Lc8/feg;

    .prologue
    .line 137
    iput-object p1, p0, Lc8/Geg;->mOnPageListener:Lc8/feg;

    .line 138
    return-void
.end method

.method public setShowLoading(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lc8/Geg;->mShowLoading:Z

    .line 128
    return-void
.end method
