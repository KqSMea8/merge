.class public Lc8/TTh;
.super Landroid/widget/FrameLayout;
.source "WebViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/QTh;,
        Lc8/PTh;,
        Lc8/RTh;,
        Lc8/STh;
    }
.end annotation


# static fields
.field private static final ALIPAY_EMPTY_ORDER:I = 0x2719

.field private static final ALIPAY_ERROR_CODE:I = 0x271a

.field public static final SHOW_FAILURE:I = -0x1

.field public static final SHOW_H5:I = 0x1

.field public static final SHOW_NATIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WebViewWrapper"

.field private static final TAG_CONSOLE:Ljava/lang/String; = "WebViewWrapperConsole"

.field private static final TPP_BACK_CODE:Ljava/lang/String; = "6001"

.field private static final TPP_FAIL_CODE:Ljava/lang/String; = "4000"

.field private static final TPP_PAY_URL:Ljava/lang/String; = "//d.m.taobao.com/goAlipay.htm?"


# instance fields
.field private TPP_backURL:Ljava/lang/String;

.field private TPP_unSuccessUrl:Ljava/lang/String;

.field private alipayFromTBZ:Z

.field downloadListener:Lc8/PTh;

.field private failingUrl:Ljava/lang/String;

.field private mErrorContainer:Landroid/widget/FrameLayout;

.field private mJSPoxy:Lc8/hTh;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWebView:Landroid/taobao/windvane/webview/WVWebView;

.field private return_url:Ljava/lang/String;

.field private ruleFail:Ljava/lang/String;

.field private ruleSuccess:Ljava/lang/String;

.field private schemeExtra:Ljava/lang/String;

.field private shareInfo:Lc8/QTh;

.field public showProgress:Z

.field private touchIconUrl:Ljava/lang/String;

.field private webChromeClient:Lc8/RTh;

.field private webViewClient:Lc8/STh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    const-string/jumbo v0, "(taobao|taopiaopiao)\\.com/app/movie.+\\?.*bc_close=(\\d)"

    iput-object v0, p0, Lc8/TTh;->ruleSuccess:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "(taobao|taopiaopiao)\\.com/app/movie.+\\?.*"

    iput-object v0, p0, Lc8/TTh;->ruleFail:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/TTh;->showProgress:Z

    .line 102
    invoke-direct {p0}, Lc8/TTh;->init()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    const-string/jumbo v0, "(taobao|taopiaopiao)\\.com/app/movie.+\\?.*bc_close=(\\d)"

    iput-object v0, p0, Lc8/TTh;->ruleSuccess:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "(taobao|taopiaopiao)\\.com/app/movie.+\\?.*"

    iput-object v0, p0, Lc8/TTh;->ruleFail:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/TTh;->showProgress:Z

    .line 107
    invoke-direct {p0}, Lc8/TTh;->init()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    const-string/jumbo v0, "(taobao|taopiaopiao)\\.com/app/movie.+\\?.*bc_close=(\\d)"

    iput-object v0, p0, Lc8/TTh;->ruleSuccess:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "(taobao|taopiaopiao)\\.com/app/movie.+\\?.*"

    iput-object v0, p0, Lc8/TTh;->ruleFail:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/TTh;->showProgress:Z

    .line 112
    invoke-direct {p0}, Lc8/TTh;->init()V

    .line 113
    return-void
.end method

.method static synthetic access$002(Lc8/TTh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/TTh;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lc8/TTh;->TPP_backURL:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$100(Lc8/TTh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/TTh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lc8/TTh;->TPP_unSuccessUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lc8/TTh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/TTh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lc8/TTh;->ruleSuccess:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lc8/TTh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/TTh;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lc8/TTh;->TPP_unSuccessUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1100(Lc8/TTh;)V
    .locals 0
    .param p0, "x0"    # Lc8/TTh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lc8/TTh;->clearTPPUrlCache()V

    return-void
.end method

.method public static synthetic access$1200(Lc8/TTh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/TTh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lc8/TTh;->ruleFail:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lc8/TTh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/TTh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lc8/TTh;->return_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lc8/TTh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/TTh;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lc8/TTh;->return_url:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$300(Lc8/TTh;)Z
    .locals 1
    .param p0, "x0"    # Lc8/TTh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 56
    iget-boolean v0, p0, Lc8/TTh;->alipayFromTBZ:Z

    return v0
.end method

.method static synthetic access$302(Lc8/TTh;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/TTh;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lc8/TTh;->alipayFromTBZ:Z

    return p1
.end method

.method static synthetic access$402(Lc8/TTh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/TTh;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lc8/TTh;->failingUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lc8/TTh;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lc8/TTh;

    .prologue
    .line 56
    iget-object v0, p0, Lc8/TTh;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic access$600(Lc8/TTh;)Landroid/taobao/windvane/webview/WVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/TTh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    return-object v0
.end method

.method static synthetic access$700(Lc8/TTh;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lc8/TTh;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lc8/TTh;->ensureView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lc8/TTh;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lc8/TTh;

    .prologue
    .line 56
    iget-object v0, p0, Lc8/TTh;->mErrorContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$902(Lc8/TTh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/TTh;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lc8/TTh;->touchIconUrl:Ljava/lang/String;

    return-object p1
.end method

.method private clearTPPUrlCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 590
    iput-object v0, p0, Lc8/TTh;->TPP_backURL:Ljava/lang/String;

    .line 591
    iput-object v0, p0, Lc8/TTh;->TPP_unSuccessUrl:Ljava/lang/String;

    .line 592
    iput-object v0, p0, Lc8/TTh;->return_url:Ljava/lang/String;

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/TTh;->alipayFromTBZ:Z

    .line 594
    return-void
.end method

.method private ensureView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-direct {p0, v0, p1}, Lc8/TTh;->ensureView(Landroid/view/View;Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lc8/TTh;->mErrorContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, p1}, Lc8/TTh;->ensureView(Landroid/view/View;Landroid/view/View;)V

    .line 166
    iget-object v0, p0, Lc8/TTh;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1}, Lc8/TTh;->ensureView(Landroid/view/View;Landroid/view/View;)V

    .line 167
    return-void
.end method

.method private ensureView(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "toShow"    # Landroid/view/View;

    .prologue
    .line 176
    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 177
    return-void

    .line 176
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 117
    invoke-static {}, Lc8/HTh;->initWindVane()V

    .line 118
    new-instance v1, Lc8/hTh;

    invoke-direct {v1}, Lc8/hTh;-><init>()V

    iput-object v1, p0, Lc8/TTh;->mJSPoxy:Lc8/hTh;

    .line 119
    invoke-virtual {p0}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 120
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/youku/phone/R$layout;->webview_wrapper_layout:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 122
    sget v1, Lcom/youku/phone/R$id;->wvwebView:I

    invoke-virtual {p0, v1}, Lc8/TTh;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/webview/WVWebView;

    iput-object v1, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    .line 124
    iget-object v1, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/webview/WVWebView;->supportJavascriptInterface(Z)V

    .line 125
    sget v1, Lcom/youku/phone/R$id;->progress:I

    invoke-virtual {p0, v1}, Lc8/TTh;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lc8/TTh;->mProgressBar:Landroid/widget/ProgressBar;

    .line 127
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/TTh;->mErrorContainer:Landroid/widget/FrameLayout;

    .line 129
    iget-object v1, p0, Lc8/TTh;->mErrorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v3, v3}, Lc8/TTh;->addView(Landroid/view/View;II)V

    .line 131
    iget-object v1, p0, Lc8/TTh;->mErrorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lc8/TTh;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    invoke-direct {p0}, Lc8/TTh;->initWebView()V

    .line 135
    return-void
.end method

.method private initWebView()V
    .locals 4

    .prologue
    .line 138
    iget-object v1, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v2, p0, Lc8/TTh;->mJSPoxy:Lc8/hTh;

    const-string/jumbo v3, "YoukuJSBridge"

    invoke-virtual {v1, v2, v3}, Landroid/taobao/windvane/webview/WVWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    :try_start_0
    iget-object v1, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    new-instance v2, Lc8/bLj;

    invoke-direct {v2}, Lc8/bLj;-><init>()V

    const-string/jumbo v3, "StepJSBridge"

    invoke-virtual {v1, v2, v3}, Landroid/taobao/windvane/webview/WVWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    new-instance v1, Lc8/STh;

    invoke-direct {v1, p0}, Lc8/STh;-><init>(Lc8/TTh;)V

    iput-object v1, p0, Lc8/TTh;->webViewClient:Lc8/STh;

    .line 145
    new-instance v1, Lc8/RTh;

    invoke-direct {v1, p0}, Lc8/RTh;-><init>(Lc8/TTh;)V

    iput-object v1, p0, Lc8/TTh;->webChromeClient:Lc8/RTh;

    .line 146
    iget-object v1, p0, Lc8/TTh;->webViewClient:Lc8/STh;

    invoke-virtual {p0, v1}, Lc8/TTh;->setWebViewClient(Lc8/STh;)V

    .line 147
    iget-object v1, p0, Lc8/TTh;->webChromeClient:Lc8/RTh;

    invoke-virtual {p0, v1}, Lc8/TTh;->setWebChromeClient(Lc8/RTh;)V

    .line 148
    new-instance v1, Lc8/PTh;

    invoke-virtual {p0}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/PTh;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/TTh;->downloadListener:Lc8/PTh;

    .line 149
    iget-object v1, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v2, p0, Lc8/TTh;->downloadListener:Lc8/PTh;

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/webview/WVWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 151
    iget-object v1, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-static {v1}, Lc8/HTh;->doCommonConfig(Landroid/webkit/WebView;)V

    .line 153
    iget-object v1, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/webview/WVWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 154
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {p0}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lc8/HTh;->initSettings(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    .line 155
    invoke-static {v0}, Lc8/HTh;->removeAliAppUserAgent(Landroid/webkit/WebSettings;)V

    .line 156
    return-void

    .end local v0    # "settings":Landroid/webkit/WebSettings;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public varargs addJavascriptInterfaces([Lc8/iTh;)V
    .locals 1
    .param p1, "objs"    # [Lc8/iTh;

    .prologue
    .line 221
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/TTh;->mJSPoxy:Lc8/hTh;

    invoke-virtual {v0, p1}, Lc8/hTh;->addObjects([Ljava/lang/Object;)V

    .line 222
    :cond_0
    return-void
.end method

.method public clearView()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    const-string/jumbo v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public enableDownloadApk(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 604
    if-eqz p1, :cond_0

    .line 605
    iget-object v0, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v1, p0, Lc8/TTh;->downloadListener:Lc8/PTh;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    goto :goto_0
.end method

.method public getSchemeExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lc8/TTh;->schemeExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getShareInfo()Lc8/QTh;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lc8/TTh;->shareInfo:Lc8/QTh;

    return-object v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lc8/TTh;->touchIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebChromeClient()Lc8/RTh;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lc8/TTh;->webChromeClient:Lc8/RTh;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    return-object v0
.end method

.method public getWebViewClient()Lc8/STh;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lc8/TTh;->webViewClient:Lc8/STh;

    return-object v0
.end method

.method public loadJS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 568
    invoke-virtual {p0}, Lc8/TTh;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lc8/HTh;->loadJS(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/TTh;->loadUrl(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)I
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 447
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lc8/xFb;->initState:Lc8/xHb;

    invoke-virtual {v1}, Lc8/xHb;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p0, p1, p2}, Lc8/TTh;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)I

    move-result v1

    .line 460
    :goto_0
    return v1

    .line 450
    :cond_0
    new-instance v0, Lc8/JTh;

    invoke-direct {v0, p0, p1, p2}, Lc8/JTh;-><init>(Lc8/TTh;Ljava/lang/String;Ljava/util/Map;)V

    .line 458
    .local v0, "listener":Lc8/dac;
    invoke-static {v0}, Lc8/eac;->registListener(Lc8/dac;)V

    .line 459
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/cac;->init(Landroid/content/Context;)V

    .line 460
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)I
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 465
    invoke-virtual {p0}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    :goto_0
    new-instance v4, Lc8/FHb;

    invoke-direct {v4, p1}, Lc8/FHb;-><init>(Ljava/lang/String;)V

    .line 468
    .local v4, "alibcPage":Lc8/FHb;
    iput-object p2, v4, Lc8/FHb;->additionalHttpHeaders:Ljava/util/Map;

    .line 469
    new-instance v5, Lc8/vHb;

    invoke-direct {v5}, Lc8/vHb;-><init>()V

    .line 470
    .local v5, "showParams":Lc8/vHb;
    invoke-virtual {p0}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    new-instance v8, Lcom/youku/interaction/views/WebViewWrapper$2;

    invoke-direct {v8, p0}, Lcom/youku/interaction/views/WebViewWrapper$2;-><init>(Lc8/TTh;)V

    move-object v3, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v8}, Lc8/wFb;->show(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    move-result v0

    .line 560
    .end local v4    # "alibcPage":Lc8/FHb;
    .end local v5    # "showParams":Lc8/vHb;
    :goto_1
    return v0

    .line 466
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 560
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public reloadWithUA()V
    .locals 3

    .prologue
    .line 233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/webview/WVWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/TTh;->failingUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 235
    .local v0, "isReload":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 236
    iget-object v1, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v1}, Landroid/taobao/windvane/webview/WVWebView;->reload()V

    .line 240
    :goto_1
    return-void

    .line 233
    .end local v0    # "isReload":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 238
    .restart local v0    # "isReload":Z
    :cond_1
    iget-object v1, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    iget-object v2, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v2}, Landroid/taobao/windvane/webview/WVWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setErrorView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 187
    iget-object v0, p0, Lc8/TTh;->mErrorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 188
    iget-object v0, p0, Lc8/TTh;->mErrorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 189
    return-void
.end method

.method public setSchemeExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lc8/TTh;->schemeExtra:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setShareInfo(Lc8/QTh;)V
    .locals 0
    .param p1, "shareInfo"    # Lc8/QTh;

    .prologue
    .line 580
    iput-object p1, p0, Lc8/TTh;->shareInfo:Lc8/QTh;

    .line 581
    return-void
.end method

.method public setShowProgress(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 597
    iput-boolean p1, p0, Lc8/TTh;->showProgress:Z

    .line 598
    iget-boolean v0, p0, Lc8/TTh;->showProgress:Z

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lc8/TTh;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 601
    :cond_0
    return-void
.end method

.method public setWebChromeClient(Lc8/RTh;)V
    .locals 1
    .param p1, "client"    # Lc8/RTh;

    .prologue
    .line 211
    iput-object p1, p0, Lc8/TTh;->webChromeClient:Lc8/RTh;

    .line 212
    iget-object v0, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/webview/WVWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 213
    return-void
.end method

.method public setWebViewClient(Lc8/STh;)V
    .locals 1
    .param p1, "client"    # Lc8/STh;

    .prologue
    .line 199
    iput-object p1, p0, Lc8/TTh;->webViewClient:Lc8/STh;

    .line 200
    iget-object v0, p0, Lc8/TTh;->mWebView:Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/webview/WVWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 201
    return-void
.end method
