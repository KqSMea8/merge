.class public Lc8/ETh;
.super Ljava/lang/Object;
.source "WebViewService.java"

# interfaces
.implements Lc8/Wgn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/DTh;
    }
.end annotation


# static fields
.field private static instance:Lc8/ETh;


# instance fields
.field private TPP_backURL:Ljava/lang/String;

.field private TPP_unSuccessUrl:Ljava/lang/String;

.field private alipayFromTBZ:Z

.field private return_url:Ljava/lang/String;

.field private ruleFail:Ljava/lang/String;

.field private ruleSuccess:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string/jumbo v0, "(taobao|taopiaopiao)\\.com/app/movie.+\\?.*bc_close=(\\d)"

    iput-object v0, p0, Lc8/ETh;->ruleSuccess:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "(taobao|taopiaopiao)\\.com/app/movie.+\\?.*"

    iput-object v0, p0, Lc8/ETh;->ruleFail:Ljava/lang/String;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lc8/ETh;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V
    .locals 0
    .param p0, "x0"    # Lc8/ETh;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;
    .param p2, "x2"    # Ljava/lang/ref/WeakReference;
    .param p3, "x3"    # Landroid/webkit/WebViewClient;
    .param p4, "x4"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/ETh;->initBcWeb(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public static synthetic access$100(Lc8/ETh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/ETh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lc8/ETh;->return_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lc8/ETh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/ETh;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/ETh;->return_url:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Lc8/ETh;)V
    .locals 0
    .param p0, "x0"    # Lc8/ETh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lc8/ETh;->clearTPPUrlCache()V

    return-void
.end method

.method public static synthetic access$300(Lc8/ETh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/ETh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lc8/ETh;->TPP_unSuccessUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lc8/ETh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/ETh;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/ETh;->TPP_unSuccessUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lc8/ETh;)Z
    .locals 1
    .param p0, "x0"    # Lc8/ETh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 53
    iget-boolean v0, p0, Lc8/ETh;->alipayFromTBZ:Z

    return v0
.end method

.method static synthetic access$402(Lc8/ETh;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/ETh;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lc8/ETh;->alipayFromTBZ:Z

    return p1
.end method

.method public static synthetic access$500(Lc8/ETh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/ETh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lc8/ETh;->ruleFail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Lc8/ETh;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lc8/ETh;->instance:Lc8/ETh;

    return-object v0
.end method

.method static synthetic access$702(Lc8/ETh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/ETh;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/ETh;->TPP_backURL:Ljava/lang/String;

    return-object p1
.end method

.method private clearTPPUrlCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lc8/ETh;->TPP_backURL:Ljava/lang/String;

    .line 474
    iput-object v0, p0, Lc8/ETh;->TPP_unSuccessUrl:Ljava/lang/String;

    .line 475
    iput-object v0, p0, Lc8/ETh;->return_url:Ljava/lang/String;

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/ETh;->alipayFromTBZ:Z

    .line 477
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/ETh;
    .locals 2

    .prologue
    .line 78
    const-class v1, Lc8/ETh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/ETh;->instance:Lc8/ETh;

    if-nez v0, :cond_0

    new-instance v0, Lc8/ETh;

    invoke-direct {v0}, Lc8/ETh;-><init>()V

    sput-object v0, Lc8/ETh;->instance:Lc8/ETh;

    .line 79
    :cond_0
    sget-object v0, Lc8/ETh;->instance:Lc8/ETh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initBcWeb(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V
    .locals 9
    .param p3, "webViewClient"    # Landroid/webkit/WebViewClient;
    .param p4, "webChromeClient"    # Landroid/webkit/WebChromeClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebChromeClient;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .local p2, "weakWebView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/webkit/WebView;>;"
    const/4 v6, 0x0

    .line 129
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 133
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 134
    .local v1, "webView":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 137
    new-instance v4, Lc8/FHb;

    const-string/jumbo v2, "about:blank"

    invoke-direct {v4, v2}, Lc8/FHb;-><init>(Ljava/lang/String;)V

    .line 138
    .local v4, "alibcPage":Lc8/FHb;
    new-instance v5, Lc8/vHb;

    invoke-direct {v5}, Lc8/vHb;-><init>()V

    .line 139
    .local v5, "showParams":Lc8/vHb;
    new-instance v8, Lcom/youku/interaction/utils/WebViewService$2;

    invoke-direct {v8, p0, p2}, Lcom/youku/interaction/utils/WebViewService$2;-><init>(Lc8/ETh;Ljava/lang/ref/WeakReference;)V

    move-object v2, p3

    move-object v3, p4

    move-object v7, v6

    invoke-static/range {v0 .. v8}, Lc8/wFb;->show(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    goto :goto_0
.end method


# virtual methods
.method public bindWebView(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Landroid/webkit/WebView;
    .param p3, "webViewClient"    # Landroid/webkit/WebViewClient;
    .param p4, "chromeClient"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 85
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 86
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 87
    .local v3, "weakWebView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/webkit/WebView;>;"
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 88
    .local v2, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    .line 89
    .local v8, "settings":Landroid/webkit/WebSettings;
    invoke-static {p1, v8}, Lc8/HTh;->initSettings(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    .line 90
    invoke-static {v8}, Lc8/HTh;->removeAliAppUserAgent(Landroid/webkit/WebSettings;)V

    .line 91
    new-instance v4, Lc8/DTh;

    invoke-direct {v4, p3}, Lc8/DTh;-><init>(Landroid/webkit/WebViewClient;)V

    .line 92
    .local v4, "customWebViewClient":Lc8/DTh;
    invoke-virtual {p2, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 93
    if-eqz p4, :cond_0

    invoke-virtual {p2, p4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 94
    :cond_0
    new-instance v7, Lc8/hTh;

    invoke-direct {v7}, Lc8/hTh;-><init>()V

    .line 95
    .local v7, "mJSPoxy":Lc8/hTh;
    const-string/jumbo v1, "YoukuJSBridge"

    invoke-virtual {p2, v7, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    :try_start_0
    new-instance v1, Lc8/bLj;

    invoke-direct {v1}, Lc8/bLj;-><init>()V

    const-string/jumbo v5, "StepJSBridge"

    invoke-virtual {p2, v1, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    invoke-static {p2}, Lc8/HTh;->doCommonConfig(Landroid/webkit/WebView;)V

    .line 102
    new-instance v6, Lc8/KSh;

    invoke-direct {v6, p2}, Lc8/KSh;-><init>(Landroid/webkit/WebView;)V

    .line 103
    .local v6, "loginJSBridge":Lc8/KSh;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v1, v5

    const/4 v5, 0x1

    new-instance v9, Lc8/TSh;

    invoke-direct {v9, p1, p2}, Lc8/TSh;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    aput-object v9, v1, v5

    const/4 v5, 0x2

    new-instance v9, Lc8/HSh;

    invoke-direct {v9, p1, p2}, Lc8/HSh;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    aput-object v9, v1, v5

    const/4 v5, 0x3

    new-instance v9, Lc8/OSh;

    invoke-direct {v9, p1, p2}, Lc8/OSh;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    aput-object v9, v1, v5

    const/4 v5, 0x4

    new-instance v9, Lc8/CSh;

    invoke-direct {v9, p1}, Lc8/CSh;-><init>(Landroid/content/Context;)V

    aput-object v9, v1, v5

    invoke-virtual {v7, v1}, Lc8/hTh;->addObjects([Ljava/lang/Object;)V

    .line 109
    sget v1, Lcom/youku/phone/R$id;->web_tag_receiver:I

    invoke-virtual {v6}, Lc8/KSh;->getLoginReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    .line 110
    sget-object v1, Lc8/xFb;->initState:Lc8/xHb;

    invoke-virtual {v1}, Lc8/xHb;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-direct {p0, v2, v3, v4, p4}, Lc8/ETh;->initBcWeb(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    .line 125
    .end local v2    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .end local v3    # "weakWebView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/webkit/WebView;>;"
    .end local v4    # "customWebViewClient":Lc8/DTh;
    .end local v6    # "loginJSBridge":Lc8/KSh;
    .end local v7    # "mJSPoxy":Lc8/hTh;
    .end local v8    # "settings":Landroid/webkit/WebSettings;
    :cond_1
    :goto_1
    return-void

    .line 113
    .restart local v2    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .restart local v3    # "weakWebView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/webkit/WebView;>;"
    .restart local v4    # "customWebViewClient":Lc8/DTh;
    .restart local v6    # "loginJSBridge":Lc8/KSh;
    .restart local v7    # "mJSPoxy":Lc8/hTh;
    .restart local v8    # "settings":Landroid/webkit/WebSettings;
    :cond_2
    new-instance v0, Lc8/yTh;

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/yTh;-><init>(Lc8/ETh;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Lc8/DTh;Landroid/webkit/WebChromeClient;)V

    .line 121
    .local v0, "listener":Lc8/dac;
    invoke-static {v0}, Lc8/eac;->registListener(Lc8/dac;)V

    .line 122
    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/cac;->init(Landroid/content/Context;)V

    goto :goto_1

    .end local v0    # "listener":Lc8/dac;
    .end local v6    # "loginJSBridge":Lc8/KSh;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public initWindVaneParams()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 250
    :try_start_0
    sget v1, Lc8/nib;->OPEN_TAOBAO:I

    if-eq p1, v1, :cond_0

    sget v1, Lc8/nib;->OPEN_H5_LOGIN:I

    if-eq p1, v1, :cond_0

    sget v1, Lc8/nib;->OPEN_DOUBLE_CHECK:I

    if-ne p1, v1, :cond_1

    .line 253
    :cond_0
    invoke-static {p1, p2, p3}, Lc8/mjb;->onActivityResult(IILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WebViewService"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public registerLoginReceiver(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 231
    sget v0, Lcom/youku/phone/R$id;->web_tag_receiver:I

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/youku/phone/R$id;->web_tag_receiver:I

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 233
    sget v0, Lcom/youku/phone/R$id;->web_tag_receiver:I

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 234
    invoke-static {}, Lc8/KSh;->getLoginFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 233
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    :cond_0
    return-void
.end method

.method public unregisterLoginReceiver(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 240
    sget v0, Lcom/youku/phone/R$id;->web_tag_receiver:I

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/youku/phone/R$id;->web_tag_receiver:I

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 242
    sget v0, Lcom/youku/phone/R$id;->web_tag_receiver:I

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    :cond_0
    return-void
.end method
