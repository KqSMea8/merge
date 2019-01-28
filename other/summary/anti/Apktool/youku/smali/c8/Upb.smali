.class public Lc8/Upb;
.super Ljava/lang/Object;
.source "WXWVWebView.java"

# interfaces
.implements Lc8/geg;


# static fields
.field private static forceWx:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstance:Lc8/nVf;

.field protected mOnErrorListener:Lc8/eeg;

.field protected mOnPageListener:Lc8/feg;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mShowLoading:Z

.field private mWebView:Lc8/DD;

.field private wxurls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "forceWx=true"

    sput-object v0, Lc8/Upb;->forceWx:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc8/nVf;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Upb;->mShowLoading:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Upb;->wxurls:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lc8/Upb;->mInstance:Lc8/nVf;

    .line 40
    invoke-virtual {p1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/Upb;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lc8/Upb;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/Upb;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/Upb;->wxurls:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lc8/Upb;->forceWx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Upb;)Lc8/nVf;
    .locals 1
    .param p0, "x0"    # Lc8/Upb;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/Upb;->mInstance:Lc8/nVf;

    return-object v0
.end method

.method static synthetic access$300(Lc8/Upb;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/Upb;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/Upb;->showWebView(Z)V

    return-void
.end method

.method static synthetic access$400(Lc8/Upb;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/Upb;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/Upb;->showProgressBar(Z)V

    return-void
.end method

.method private initWebView(Lc8/DD;)V
    .locals 3
    .param p1, "wv"    # Lc8/DD;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 133
    invoke-virtual {p1}, Lc8/DD;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    .line 134
    .local v0, "settings":Lcom/uc/webview/export/WebSettings;
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 135
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setAppCacheEnabled(Z)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setUseWideViewPort(Z)V

    .line 137
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setDomStorageEnabled(Z)V

    .line 138
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setSupportZoom(Z)V

    .line 139
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setBuiltInZoomControls(Z)V

    .line 140
    new-instance v1, Lc8/Spb;

    iget-object v2, p0, Lc8/Upb;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lc8/Spb;-><init>(Lc8/Upb;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lc8/DD;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 197
    new-instance v1, Lc8/Tpb;

    invoke-direct {v1, p0}, Lc8/Tpb;-><init>(Lc8/Upb;)V

    invoke-virtual {p1, v1}, Lc8/DD;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 215
    return-void
.end method

.method private showProgressBar(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 127
    iget-boolean v0, p0, Lc8/Upb;->mShowLoading:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lc8/Upb;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    :cond_0
    return-void

    .line 128
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showWebView(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 123
    iget-object v1, p0, Lc8/Upb;->mWebView:Lc8/DD;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lc8/DD;->setVisibility(I)V

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc8/Upb;->mWebView:Lc8/DD;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lc8/Upb;->mWebView:Lc8/DD;

    invoke-virtual {v0}, Lc8/DD;->destroy()V

    .line 74
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 46
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lc8/Upb;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, "root":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 49
    new-instance v3, Lc8/DD;

    iget-object v4, p0, Lc8/Upb;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lc8/DD;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lc8/Upb;->mWebView:Lc8/DD;

    .line 50
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v2, "wvLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 54
    iget-object v3, p0, Lc8/Upb;->mWebView:Lc8/DD;

    invoke-virtual {v3, v2}, Lc8/DD;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v3, p0, Lc8/Upb;->mWebView:Lc8/DD;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 56
    iget-object v3, p0, Lc8/Upb;->mWebView:Lc8/DD;

    invoke-direct {p0, v3}, Lc8/Upb;->initWebView(Lc8/DD;)V

    .line 58
    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v4, p0, Lc8/Upb;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lc8/Upb;->mProgressBar:Landroid/widget/ProgressBar;

    .line 59
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lc8/Upb;->showProgressBar(Z)V

    .line 60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "pLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lc8/Upb;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    iget-object v3, p0, Lc8/Upb;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 66
    return-object v1
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lc8/Upb;->mWebView:Lc8/DD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Upb;->mWebView:Lc8/DD;

    invoke-virtual {v0}, Lc8/DD;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lc8/Upb;->mWebView:Lc8/DD;

    invoke-virtual {v0}, Lc8/DD;->goBack()V

    .line 98
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lc8/Upb;->mWebView:Lc8/DD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Upb;->mWebView:Lc8/DD;

    invoke-virtual {v0}, Lc8/DD;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lc8/Upb;->mWebView:Lc8/DD;

    invoke-virtual {v0}, Lc8/DD;->goForward()V

    .line 105
    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lc8/Upb;->mWebView:Lc8/DD;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lc8/Upb;->wxurls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lc8/Upb;->mWebView:Lc8/DD;

    invoke-virtual {v0, p1}, Lc8/DD;->loadUrl(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lc8/Upb;->mWebView:Lc8/DD;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lc8/Upb;->mWebView:Lc8/DD;

    invoke-virtual {v0}, Lc8/DD;->reload()V

    .line 90
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lc8/eeg;)V
    .locals 0
    .param p1, "listener"    # Lc8/eeg;

    .prologue
    .line 114
    iput-object p1, p0, Lc8/Upb;->mOnErrorListener:Lc8/eeg;

    .line 115
    return-void
.end method

.method public setOnPageListener(Lc8/feg;)V
    .locals 0
    .param p1, "listener"    # Lc8/feg;

    .prologue
    .line 119
    iput-object p1, p0, Lc8/Upb;->mOnPageListener:Lc8/feg;

    .line 120
    return-void
.end method

.method public setShowLoading(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lc8/Upb;->mShowLoading:Z

    .line 110
    return-void
.end method
