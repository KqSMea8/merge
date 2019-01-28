.class public Lc8/HI;
.super Landroid/webkit/WebViewClient;
.source "WVWebViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVWebViewClient"


# instance fields
.field private currentUrl:Ljava/lang/String;

.field public extraWebViewClient:Landroid/webkit/WebViewClient;

.field protected mContext:Landroid/content/Context;

.field private mPageFinshTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 56
    iput-object v2, p0, Lc8/HI;->currentUrl:Ljava/lang/String;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/HI;->mPageFinshTime:J

    .line 60
    iput-object v2, p0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    .line 63
    iput-object p1, p0, Lc8/HI;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lc8/HI;)J
    .locals 2
    .param p0, "x0"    # Lc8/HI;

    .prologue
    .line 52
    iget-wide v0, p0, Lc8/HI;->mPageFinshTime:J

    return-wide v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 90
    const-string/jumbo v3, "WVWebViewClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPageFinished : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lc8/HI;->mPageFinshTime:J

    .line 92
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 93
    instance-of v3, p1, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 94
    check-cast v3, Landroid/taobao/windvane/webview/WVWebView;

    const-string/jumbo v4, "onPageFinished"

    invoke-virtual {v3, p2, v4}, Landroid/taobao/windvane/webview/WVWebView;->setCurrentUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    instance-of v3, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v3, :cond_1

    .line 97
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v4

    const/16 v5, 0x3ea

    move-object v3, p1

    check-cast v3, Landroid/taobao/windvane/webview/IWVWebView;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3, p2, v6}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 98
    invoke-static {}, Lc8/BF;->getInstance()Lc8/BF;

    move-result-object v4

    move-object v3, p1

    check-cast v3, Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v4, v3, p2}, Lc8/BF;->execute(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    :cond_1
    move-object v2, p1

    .line 100
    check-cast v2, Landroid/taobao/windvane/webview/WVWebView;

    .line 101
    .local v2, "webview":Landroid/taobao/windvane/webview/WVWebView;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    const-string/jumbo v3, "WVWebViewClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Page finish: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_2
    const/16 v3, 0x191

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    .line 107
    const-string/jumbo v3, "WindVaneReady"

    const-string/jumbo v4, "{\'version\':\'%s\'}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "8.3.0"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/taobao/windvane/webview/WVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    move-object v1, p2

    .line 111
    .local v1, "monitorUrl":Ljava/lang/String;
    const-string/jumbo v0, "(function(p){if(!p||!p.timing)return;var t=p.timing,s=t.navigationStart,sc=t.secureConnectionStart,dc=t.domComplete,lee=t.loadEventEnd;return JSON.stringify({dns:t.domainLookupEnd-t.domainLookupStart,c:t.connectEnd-t.connectStart,scs:sc>0?sc-s:0,req:t.requestStart-s,rps:t.responseStart-s,rpe:t.responseEnd-s,dl:t.domLoading-s,dcl:t.domContentLoadedEventEnd-s,dc:dc>0?dc-s:0,lee:lee>0?lee-s:0})})(window.performance)"

    .line 112
    .local v0, "jsContent":Ljava/lang/String;
    new-instance v3, Lc8/GI;

    invoke-direct {v3, p0, v1}, Lc8/GI;-><init>(Lc8/HI;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 123
    const-string/jumbo v3, "javascript:(function(f){try{if(f.__windvane__.nativeCall){var h=f.__windvane__||(f.__windvane__={});var c=\"wvapi:\"+(Math.floor(Math.random()*(1<<16))),a=0,b={},g=function(j){if(j&&typeof j==\"string\"){try{return JSON.parse(j)}catch(i){return{ret:\"HY_RESULT_PARSE_ERROR\"}}}else{return j||{}}};h.call=function(i,m,l,e,k){if(typeof l!=\"function\"){l=null}if(typeof e!=\"function\"){e=null}var j=c+(a++);b[j]={s:l,f:e,};if(k>0){b[j].t=setTimeout(function(){h.onFailure(j,{ret:\"HY_TIMEOUT\"})},k)}if(typeof m!=\"string\"){m=JSON.stringify(m)}f.__windvane__.nativeCall(i,m,j,location.href)};h.find=function(i,j){var e=b[i];if(e.t){clearTimeout(e.t);delete e.t}if(!j){delete b[i]}return e};h.onSuccess=function(j,e,k){var i=h.find(j,k).s;if(i){i(g(e))}};h.onFailure=function(j,e){var i=h.find(j,false).f;if(i){i(g(e))}}}}catch(d){}})(window);"

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v3, :cond_3

    .line 125
    iget-object v3, p0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v3, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 127
    :cond_3
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 68
    instance-of v0, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    const/16 v2, 0x3e9

    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v0, p2, v3}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 72
    :cond_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string/jumbo v0, "WVWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1
    iput-object p2, p0, Lc8/HI;->currentUrl:Ljava/lang/String;

    move-object v0, p1

    .line 76
    check-cast v0, Landroid/taobao/windvane/webview/WVWebView;

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    .line 78
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, p2, v2, v3}, Lc8/cG;->didPageStartLoadAtTime(Ljava/lang/String;J)V

    .line 82
    :cond_2
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fE;->tryToRunTailBridges()V

    .line 83
    iget-object v0, p0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 86
    :cond_3
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string/jumbo v1, "WVWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Receive error, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; desc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    instance-of v1, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v1, :cond_2

    .line 136
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v2

    const/16 v3, 0x3ed

    move-object v1, p1

    check-cast v1, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    invoke-virtual {v2, v3, v1, p4, v4}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v1

    iget-boolean v1, v1, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v1, :cond_2

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "curl":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object v1, p1

    .line 143
    check-cast v1, Landroid/taobao/windvane/webview/WVWebView;

    const/16 v2, 0x192

    invoke-virtual {v1, v2, p4}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    .line 146
    :cond_4
    invoke-static {}, Lc8/YF;->getErrorMonitor()Lc8/HF;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 147
    invoke-static {}, Lc8/YF;->getErrorMonitor()Lc8/HF;

    move-result-object v1

    if-nez v0, :cond_5

    move-object v0, p4

    .end local v0    # "curl":Ljava/lang/String;
    :cond_5
    invoke-interface {v1, v0, p2, p3}, Lc8/HF;->didOccurNativeError(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    :cond_6
    iget-object v1, p0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v6, 0x3ee

    .line 312
    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "errorInfo":Ljava/lang/String;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    const-string/jumbo v2, "WVWebViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceivedSslError  url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "errorMsg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "curl":Ljava/lang/String;
    instance-of v2, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v2, :cond_1

    .line 318
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v6, v2, v0, v4}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 320
    :cond_1
    invoke-static {}, Lc8/YF;->getErrorMonitor()Lc8/HF;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 321
    invoke-static {}, Lc8/YF;->getErrorMonitor()Lc8/HF;

    move-result-object v2

    invoke-interface {v2, v0, v6, v1}, Lc8/HF;->didOccurNativeError(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    :cond_2
    iget-object v2, p0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v2, :cond_3

    .line 324
    iget-object v2, p0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v2, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 21
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 227
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v2, :cond_4

    .line 228
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v3

    const/16 v4, 0x3ec

    move-object/from16 v2, p1

    check-cast v2, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v2, v0, v5}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v8

    .line 232
    .local v8, "eventResult":Landroid/taobao/windvane/service/WVEventResult;
    iget-boolean v2, v8, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v2, :cond_4

    iget-object v2, v8, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, v8, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    instance-of v2, v2, Lc8/II;

    if-eqz v2, :cond_4

    .line 234
    iget-object v0, v8, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lc8/II;

    .line 236
    .local v20, "wrapRes":Lc8/II;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    const-string/jumbo v2, "WVWebViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u9884\u52a0\u8f7d\u547d\u4e2d : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    new-instance v15, Landroid/webkit/WebResourceResponse;

    move-object/from16 v0, v20

    iget-object v2, v0, Lc8/II;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v3, v0, Lc8/II;->mEncoding:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v4, v0, Lc8/II;->mInputStream:Ljava/io/InputStream;

    invoke-direct {v15, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 241
    .local v15, "resourceResponse":Landroid/webkit/WebResourceResponse;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 242
    move-object/from16 v0, v20

    iget-object v2, v0, Lc8/II;->mHeaders:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 244
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-object v3, v0, Lc8/II;->mHeaders:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v15, v2}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :goto_0
    move-object/from16 v16, v15

    .line 306
    .end local v8    # "eventResult":Landroid/taobao/windvane/service/WVEventResult;
    .end local v15    # "resourceResponse":Landroid/webkit/WebResourceResponse;
    .end local v20    # "wrapRes":Lc8/II;
    :cond_2
    :goto_1
    return-object v16

    .line 247
    .restart local v8    # "eventResult":Landroid/taobao/windvane/service/WVEventResult;
    .restart local v15    # "resourceResponse":Landroid/webkit/WebResourceResponse;
    .restart local v20    # "wrapRes":Lc8/II;
    :cond_3
    invoke-static/range {p2 .. p2}, Lc8/PB;->isAllowAccess(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v13, "map":Ljava/util/HashMap;
    const-string/jumbo v2, "Access-Control-Allow-Origin"

    const-string/jumbo v3, "*"

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v15, v13}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    goto :goto_0

    .line 257
    .end local v8    # "eventResult":Landroid/taobao/windvane/service/WVEventResult;
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v15    # "resourceResponse":Landroid/webkit/WebResourceResponse;
    .end local v20    # "wrapRes":Lc8/II;
    :cond_4
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lc8/qB;->isCacheEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 258
    invoke-static/range {p2 .. p2}, Lc8/dI;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 259
    .local v17, "temp":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lc8/qB;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Lc8/NH;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 263
    .local v12, "localPath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 265
    .local v10, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v9, "f":Ljava/io/File;
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 267
    .end local v10    # "in":Ljava/io/InputStream;
    .local v11, "in":Ljava/io/InputStream;
    :try_start_2
    new-instance v16, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v2, "image/png"

    const-string/jumbo v3, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 268
    .local v16, "response":Landroid/webkit/WebResourceResponse;
    if-eqz v16, :cond_5

    .line 269
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 270
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 271
    .restart local v13    # "map":Ljava/util/HashMap;
    const-string/jumbo v2, "Access-Control-Allow-Origin"

    const-string/jumbo v3, "*"

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 277
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v16    # "response":Landroid/webkit/WebResourceResponse;
    :catch_0
    move-exception v2

    move-object v10, v11

    .end local v9    # "f":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v10    # "in":Ljava/io/InputStream;
    :goto_2
    if-eqz v10, :cond_5

    .line 279
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 285
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v12    # "localPath":Ljava/lang/String;
    .end local v17    # "temp":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-static {}, Lc8/vB;->getInstance()Lc8/vB;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lc8/vB;->getMemoryCacheByUrl(Ljava/lang/String;)Lc8/wB;

    move-result-object v14

    .line 286
    .local v14, "memoryCacheInfo":Lc8/wB;
    if-eqz v14, :cond_7

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v14, Lc8/wB;->cachedTime:J

    sub-long v18, v2, v4

    .line 288
    .local v18, "visitUseTime":J
    const/16 v16, 0x0

    .line 289
    .restart local v16    # "response":Landroid/webkit/WebResourceResponse;
    const-wide/16 v2, 0x7d0

    cmp-long v2, v18, v2

    if-gez v2, :cond_6

    .line 290
    new-instance v16, Landroid/webkit/WebResourceResponse;

    .end local v16    # "response":Landroid/webkit/WebResourceResponse;
    sget-object v2, Landroid/taobao/windvane/util/MimeTypeEnum;->HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-virtual {v2}, Landroid/taobao/windvane/util/MimeTypeEnum;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, v14, Lc8/wB;->mCachedDatas:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 292
    .restart local v16    # "response":Landroid/webkit/WebResourceResponse;
    :cond_6
    invoke-static {}, Lc8/vB;->getInstance()Lc8/vB;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lc8/vB;->clearCacheByUrl(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v2, "WVWebViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WVMemoryCacheInfo \u547d\u4e2d : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 297
    .end local v16    # "response":Landroid/webkit/WebResourceResponse;
    .end local v18    # "visitUseTime":J
    :cond_7
    const-string/jumbo v2, "WVWebViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldInterceptRequest : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 299
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lc8/cG;->didGetResourceStatusCode(Ljava/lang/String;IILjava/util/Map;Lc8/bG;)V

    .line 303
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v2, :cond_9

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v16

    goto/16 :goto_1

    .line 306
    :cond_9
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v16

    goto/16 :goto_1

    .end local v14    # "memoryCacheInfo":Lc8/wB;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v12    # "localPath":Ljava/lang/String;
    .restart local v17    # "temp":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 277
    :catch_2
    move-exception v2

    goto/16 :goto_2

    .line 246
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v12    # "localPath":Ljava/lang/String;
    .end local v17    # "temp":Ljava/lang/String;
    .restart local v8    # "eventResult":Landroid/taobao/windvane/service/WVEventResult;
    .restart local v15    # "resourceResponse":Landroid/webkit/WebResourceResponse;
    .restart local v20    # "wrapRes":Lc8/II;
    :catch_3
    move-exception v2

    goto/16 :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 158
    invoke-static {p2}, Lc8/dI;->isCommonUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p2}, Lc8/PB;->isBlackUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    invoke-static {}, Lc8/OB;->getInstance()Lc8/OB;

    move-result-object v5

    invoke-virtual {v5}, Lc8/OB;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "forbiddenDomainRedirectURL":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    check-cast p1, Landroid/taobao/windvane/webview/WVWebView;

    .end local p1    # "view":Landroid/webkit/WebView;
    const/16 v5, 0x192

    invoke-virtual {p1, v5, p2}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    :goto_0
    move v5, v6

    .line 221
    .end local v3    # "forbiddenDomainRedirectURL":Ljava/lang/String;
    :goto_1
    return v5

    .line 163
    .restart local v3    # "forbiddenDomainRedirectURL":Ljava/lang/String;
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v3    # "forbiddenDomainRedirectURL":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    const-string/jumbo v5, "WVWebViewClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shouldOverrideUrlLoading: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_2
    instance-of v5, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v5, :cond_3

    .line 171
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v8

    const/16 v9, 0x3eb

    move-object v5, p1

    check-cast v5, Landroid/taobao/windvane/webview/IWVWebView;

    new-array v10, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v5, p2, v10}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v5

    iget-boolean v5, v5, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v5, :cond_3

    move v5, v6

    .line 172
    goto :goto_1

    .line 174
    :cond_3
    const-string/jumbo v5, "mailto:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "tel:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 176
    :cond_4
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    iget-object v5, p0, Lc8/HI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "intent":Landroid/content/Intent;
    :goto_2
    move v5, v6

    .line 182
    goto :goto_1

    .line 180
    :catch_0
    move-exception v5

    const-string/jumbo v5, "WVWebViewClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shouldOverrideUrlLoading: ActivityNotFoundException, url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 187
    :cond_5
    :try_start_1
    instance-of v5, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v5, :cond_8

    invoke-static {}, Lc8/CH;->getWVURLIntercepter()Lc8/GH;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {}, Lc8/CH;->getWVURLIntercepter()Lc8/GH;

    move-result-object v5

    invoke-interface {v5}, Lc8/GH;->isOpenURLIntercept()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 190
    invoke-static {}, Lc8/CH;->getWVURLIntercepter()Lc8/GH;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Lc8/GH;->isNeedupdateURLRule(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 191
    invoke-static {}, Lc8/CH;->getWVURLIntercepter()Lc8/GH;

    move-result-object v5

    invoke-interface {v5}, Lc8/GH;->updateURLRule()V

    .line 193
    :cond_6
    invoke-static {}, Lc8/CH;->getWVURLIntercepter()Lc8/GH;

    move-result-object v8

    iget-object v9, p0, Lc8/HI;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/webview/IWVWebView;

    move-object v5, v0

    invoke-interface {v8, v9, v5, p2}, Lc8/GH;->shouldOverrideUrlLoading(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 195
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 196
    const-string/jumbo v5, "WVWebViewClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "intercept url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    move v5, v6

    .line 198
    goto/16 :goto_1

    .line 201
    :catch_1
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "WVWebViewClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shouldOverrideUrlLoading: doFilter error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-static {}, Lc8/CH;->getWVABTestHandler()Lc8/xH;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-static {p2}, Lc8/dI;->shouldTryABTest(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 206
    invoke-static {}, Lc8/CH;->getWVABTestHandler()Lc8/xH;

    move-result-object v5

    invoke-interface {v5, p2}, Lc8/xH;->toABTestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "abTestUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 208
    const-string/jumbo v5, "WVWebViewClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " abTestUrl to : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v5, v6

    .line 210
    goto/16 :goto_1

    .line 214
    .end local v1    # "abTestUrl":Ljava/lang/String;
    :cond_9
    instance-of v5, p1, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v5, :cond_a

    move-object v5, p1

    .line 215
    check-cast v5, Landroid/taobao/windvane/webview/WVWebView;

    const-string/jumbo v6, "shouldOverrideUrlLoading"

    invoke-virtual {v5, p2, v6}, Landroid/taobao/windvane/webview/WVWebView;->setCurrentUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_a
    const-string/jumbo v5, "WVWebViewClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shouldOverrideUrlLoading : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v5, p0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v5, :cond_b

    .line 219
    iget-object v5, p0, Lc8/HI;->extraWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v5, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_1

    :cond_b
    move v5, v7

    .line 221
    goto/16 :goto_1
.end method
