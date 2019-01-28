.class public Lc8/lZm;
.super Ljava/lang/Object;
.source "WebViewCompat.java"


# static fields
.field public static final WEBCONSOLE_LOGCAT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/webkit/ConsoleMessage$MessageLevel;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    sput-object v0, Lc8/lZm;->WEBCONSOLE_LOGCAT_MAP:Ljava/util/Map;

    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->TIP:Landroid/webkit/ConsoleMessage$MessageLevel;

    const/16 v2, 0x76

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lc8/lZm;->WEBCONSOLE_LOGCAT_MAP:Ljava/util/Map;

    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->LOG:Landroid/webkit/ConsoleMessage$MessageLevel;

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lc8/lZm;->WEBCONSOLE_LOGCAT_MAP:Ljava/util/Map;

    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->WARNING:Landroid/webkit/ConsoleMessage$MessageLevel;

    const/16 v2, 0x77

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lc8/lZm;->WEBCONSOLE_LOGCAT_MAP:Ljava/util/Map;

    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lc8/lZm;->WEBCONSOLE_LOGCAT_MAP:Ljava/util/Map;

    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->DEBUG:Landroid/webkit/ConsoleMessage$MessageLevel;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static destroy(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 2
    .param p0, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    .line 66
    instance-of v1, p0, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 67
    check-cast v0, Landroid/taobao/windvane/webview/WVWebView;

    .line 68
    .local v0, "wv":Landroid/taobao/windvane/webview/WVWebView;
    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVWebView;->destroy()V

    .line 73
    .end local v0    # "wv":Landroid/taobao/windvane/webview/WVWebView;
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    instance-of v1, p0, Lc8/DD;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 70
    check-cast v0, Lc8/DD;

    .line 71
    .local v0, "wv":Lc8/DD;
    invoke-virtual {v0}, Lc8/DD;->destroy()V

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Lc8/iZm;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "popLayerWebView"    # Lc8/iZm;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 27
    invoke-virtual {p1}, Lc8/iZm;->getWebView()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v2

    .line 28
    .local v2, "webView":Landroid/taobao/windvane/webview/IWVWebView;
    instance-of v4, v2, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 29
    check-cast v3, Landroid/taobao/windvane/webview/WVWebView;

    .line 31
    .local v3, "wv":Landroid/taobao/windvane/webview/WVWebView;
    invoke-virtual {v3, v6}, Landroid/taobao/windvane/webview/WVWebView;->setBackgroundColor(I)V

    .line 34
    invoke-virtual {v3}, Landroid/taobao/windvane/webview/WVWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 35
    .local v1, "wbset":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 38
    const-string/jumbo v4, "WVPopLayer"

    new-instance v5, Lc8/mZm;

    invoke-direct {v5, p1}, Lc8/mZm;-><init>(Lc8/iZm;)V

    invoke-virtual {v3, v4, v5}, Landroid/taobao/windvane/webview/WVWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string/jumbo v4, "WVUIToast"

    new-instance v5, Lc8/nZm;

    invoke-direct {v5, p1}, Lc8/nZm;-><init>(Lc8/jXb;)V

    invoke-virtual {v3, v4, v5}, Landroid/taobao/windvane/webview/WVWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "errorView":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    invoke-virtual {v3}, Landroid/taobao/windvane/webview/WVWebView;->getWvUIModel()Lc8/xI;

    move-result-object v4

    invoke-virtual {v4, v0}, Lc8/xI;->setErrorView(Landroid/view/View;)V

    .line 63
    .end local v0    # "errorView":Landroid/view/View;
    .end local v1    # "wbset":Landroid/webkit/WebSettings;
    .end local v3    # "wv":Landroid/taobao/windvane/webview/WVWebView;
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Lc8/iZm;->getWebView()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v4

    instance-of v4, v4, Lc8/DD;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 45
    check-cast v3, Lc8/DD;

    .line 47
    .local v3, "wv":Lc8/DD;
    invoke-virtual {v3, v7}, Lc8/DD;->setBackgroundColor(I)V

    .line 50
    invoke-virtual {v3}, Lc8/DD;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v1

    .line 51
    .local v1, "wbset":Lcom/uc/webview/export/WebSettings;
    invoke-virtual {v1, v6}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    invoke-virtual {v1, v7}, Lcom/uc/webview/export/WebSettings;->setSavePassword(Z)V

    .line 54
    const-string/jumbo v4, "WVPopLayer"

    new-instance v5, Lc8/mZm;

    invoke-direct {v5, p1}, Lc8/mZm;-><init>(Lc8/iZm;)V

    invoke-virtual {v3, v4, v5}, Lc8/DD;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string/jumbo v4, "WVUIToast"

    new-instance v5, Lc8/nZm;

    invoke-direct {v5, p1}, Lc8/nZm;-><init>(Lc8/jXb;)V

    invoke-virtual {v3, v4, v5}, Lc8/DD;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    .restart local v0    # "errorView":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 59
    invoke-virtual {v3}, Lc8/DD;->getWvUIModel()Lc8/xI;

    move-result-object v4

    invoke-virtual {v4, v0}, Lc8/xI;->setErrorView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p1, v7}, Lc8/iZm;->setUseCacheMark(Z)V

    goto :goto_0
.end method

.method public static setLayerType(Landroid/taobao/windvane/webview/IWVWebView;ILandroid/graphics/Paint;)V
    .locals 1
    .param p0, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 76
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 77
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 78
    return-void
.end method
