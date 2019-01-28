.class public Lc8/wTh;
.super Ljava/lang/Object;
.source "WVWebViewService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vTh;
    }
.end annotation


# static fields
.field private static TPP_unSuccessUrl:Ljava/lang/String;

.field private static alipayFromTBZ:Z

.field private static return_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method

.method static synthetic access$100(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;
    .param p2, "x2"    # Landroid/webkit/WebViewClient;
    .param p3, "x3"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 30
    invoke-static {p0, p1, p2, p3}, Lc8/wTh;->initBcWeb(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lc8/wTh;->return_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    sput-object p0, Lc8/wTh;->return_url:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lc8/wTh;->clearTPPUrlCache()V

    return-void
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lc8/wTh;->TPP_unSuccessUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    sput-object p0, Lc8/wTh;->TPP_unSuccessUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500()Z
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 30
    sget-boolean v0, Lc8/wTh;->alipayFromTBZ:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 30
    sput-boolean p0, Lc8/wTh;->alipayFromTBZ:Z

    return p0
.end method

.method public static bindWVWebView(Landroid/app/Activity;Landroid/taobao/windvane/webview/WVWebView;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "webView"    # Landroid/taobao/windvane/webview/WVWebView;

    .prologue
    const/4 v6, 0x0

    .line 48
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 49
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 50
    .local v4, "weakWebView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/webview/WVWebView;>;"
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 51
    .local v3, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 52
    .local v2, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lc8/HTh;->initSettings(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    .line 53
    invoke-static {v2}, Lc8/HTh;->removeAliAppUserAgent(Landroid/webkit/WebSettings;)V

    .line 54
    new-instance v0, Lc8/vTh;

    invoke-direct {v0, v6}, Lc8/vTh;-><init>(Lc8/qTh;)V

    .line 55
    .local v0, "customWebViewClient":Lc8/vTh;
    invoke-static {p1}, Lc8/HTh;->doCommonConfig(Landroid/webkit/WebView;)V

    .line 57
    sget-object v5, Lc8/xFb;->initState:Lc8/xHb;

    invoke-virtual {v5}, Lc8/xHb;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    invoke-static {v3, v4, v0, v6}, Lc8/wTh;->initBcWeb(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V

    .line 72
    .end local v0    # "customWebViewClient":Lc8/vTh;
    .end local v2    # "settings":Landroid/webkit/WebSettings;
    .end local v3    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .end local v4    # "weakWebView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/webview/WVWebView;>;"
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v0    # "customWebViewClient":Lc8/vTh;
    .restart local v2    # "settings":Landroid/webkit/WebSettings;
    .restart local v3    # "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .restart local v4    # "weakWebView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/webview/WVWebView;>;"
    :cond_1
    new-instance v1, Lc8/qTh;

    invoke-direct {v1, v3, v4, v0}, Lc8/qTh;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Lc8/vTh;)V

    .line 68
    .local v1, "listener":Lc8/dac;
    invoke-static {v1}, Lc8/eac;->registListener(Lc8/dac;)V

    .line 69
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lc8/cac;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static clearTPPUrlCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 215
    sput-object v0, Lc8/wTh;->TPP_unSuccessUrl:Ljava/lang/String;

    .line 216
    sput-object v0, Lc8/wTh;->return_url:Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    sput-boolean v0, Lc8/wTh;->alipayFromTBZ:Z

    .line 218
    return-void
.end method

.method private static initBcWeb(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V
    .locals 9
    .param p2, "webViewClient"    # Landroid/webkit/WebViewClient;
    .param p3, "webChromeClient"    # Landroid/webkit/WebChromeClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/taobao/windvane/webview/WVWebView;",
            ">;",
            "Landroid/webkit/WebViewClient;",
            "Landroid/webkit/WebChromeClient;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .local p1, "weakWebView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/webview/WVWebView;>;"
    const/4 v6, 0x0

    .line 76
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 80
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/webview/WVWebView;

    .line 81
    .local v1, "webView":Landroid/taobao/windvane/webview/WVWebView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 84
    new-instance v4, Lc8/FHb;

    const-string/jumbo v2, "about:blank"

    invoke-direct {v4, v2}, Lc8/FHb;-><init>(Ljava/lang/String;)V

    .line 85
    .local v4, "alibcPage":Lc8/FHb;
    new-instance v5, Lc8/vHb;

    invoke-direct {v5}, Lc8/vHb;-><init>()V

    .line 86
    .local v5, "showParams":Lc8/vHb;
    new-instance v8, Lcom/youku/interaction/utils/WVWebViewService$2;

    invoke-direct {v8, p1}, Lcom/youku/interaction/utils/WVWebViewService$2;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object v2, p2

    move-object v3, p3

    move-object v7, v6

    invoke-static/range {v0 .. v8}, Lc8/wFb;->show(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Lc8/AHb;Lc8/vHb;Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    goto :goto_0
.end method
