.class public Lc8/FD;
.super Lcom/uc/webview/export/WebViewClient;
.source "WVUCWebViewClient.java"


# static fields
.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static final TAG:Ljava/lang/String; = "WVUCWebViewClient"


# instance fields
.field protected mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/FD;->mContext:Ljava/lang/ref/WeakReference;

    .line 74
    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 16
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string/jumbo v2, "WVUCWebViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPageFinished : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 96
    .local v14, "mPageFinshTime":J
    invoke-super/range {p0 .. p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p1

    instance-of v2, v0, Lc8/DD;

    if-eqz v2, :cond_0

    move-object/from16 v2, p1

    .line 98
    check-cast v2, Lc8/DD;

    const-string/jumbo v3, "onPageFinished"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lc8/DD;->setCurrentUrl(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p1

    .line 99
    check-cast v2, Lc8/DD;

    const/16 v3, 0x191

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lc8/DD;->onMessage(ILjava/lang/Object;)V

    .line 101
    :cond_0
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v2, :cond_1

    .line 102
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v3

    const/16 v4, 0x3ea

    move-object/from16 v2, p1

    check-cast v2, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v2, v0, v5}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 103
    invoke-static {}, Lc8/BF;->getInstance()Lc8/BF;

    move-result-object v3

    move-object/from16 v2, p1

    check-cast v2, Landroid/taobao/windvane/webview/IWVWebView;

    move-object/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Lc8/BF;->execute(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    move-object/from16 v2, p1

    .line 104
    check-cast v2, Landroid/taobao/windvane/webview/IWVWebView;

    const-string/jumbo v3, "WindVaneReady"

    const-string/jumbo v4, "{\'version\':\'%s\'}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "8.3.0"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v13

    .line 112
    .local v13, "ucExtension":Lcom/uc/webview/export/extension/UCExtension;
    const/4 v11, 0x0

    .line 113
    .local v11, "isPageCache":Z
    if-eqz v13, :cond_2

    .line 114
    invoke-virtual {v13}, Lcom/uc/webview/export/extension/UCExtension;->isLoadFromCachedPage()Z

    move-result v11

    .line 117
    :cond_2
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    const/4 v4, -0x1

    if-eqz v11, :cond_4

    const/16 v5, 0x48

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v10}, Lc8/cG;->didGetPageStatusCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lc8/bG;)V

    .line 121
    .end local v11    # "isPageCache":Z
    .end local v13    # "ucExtension":Lcom/uc/webview/export/extension/UCExtension;
    :cond_3
    const-string/jumbo v12, "(function(p){if(!p||!p.timing)return;var t=p.timing,s=t.navigationStart,sc=t.secureConnectionStart,dc=t.domComplete,lee=t.loadEventEnd;return JSON.stringify({dns:t.domainLookupEnd-t.domainLookupStart,c:t.connectEnd-t.connectStart,scs:sc>0?sc-s:0,req:t.requestStart-s,rps:t.responseStart-s,rpe:t.responseEnd-s,dl:t.domLoading-s,dcl:t.domContentLoadedEventEnd-s,dc:dc>0?dc-s:0,lee:lee>0?lee-s:0})})(window.performance)"

    .local v12, "jsContent":Ljava/lang/String;
    move-object/from16 v2, p1

    .line 122
    check-cast v2, Lc8/DD;

    new-instance v3, Lc8/ED;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1, v14, v15}, Lc8/ED;-><init>(Lc8/FD;Ljava/lang/String;J)V

    invoke-virtual {v2, v12, v3}, Lc8/DD;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 132
    const-string/jumbo v2, "WVUCWebViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " LayerType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/uc/webview/export/WebView;->getLayerType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v2, "javascript:(function(f){try{if(f.__windvane__.nativeCall){var h=f.__windvane__||(f.__windvane__={});var c=\"wvapi:\"+(Math.floor(Math.random()*(1<<16))),a=0,b={},g=function(j){if(j&&typeof j==\"string\"){try{return JSON.parse(j)}catch(i){return{ret:\"HY_RESULT_PARSE_ERROR\"}}}else{return j||{}}};h.call=function(i,m,l,e,k){if(typeof l!=\"function\"){l=null}if(typeof e!=\"function\"){e=null}var j=c+(a++);b[j]={s:l,f:e,};if(k>0){b[j].t=setTimeout(function(){h.onFailure(j,{ret:\"HY_TIMEOUT\"})},k)}if(typeof m!=\"string\"){m=JSON.stringify(m)}f.__windvane__.nativeCall(i,m,j,location.href)};h.find=function(i,j){var e=b[i];if(e.t){clearTimeout(e.t);delete e.t}if(!j){delete b[i]}return e};h.onSuccess=function(j,e,k){var i=h.find(j,k).s;if(i){i(g(e))}};h.onFailure=function(j,e){var i=h.find(j,false).f;if(i){i(g(e))}}}}catch(d){}})(window);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    .line 134
    return-void

    .line 117
    .end local v12    # "jsContent":Ljava/lang/String;
    .restart local v11    # "isPageCache":Z
    .restart local v13    # "ucExtension":Lcom/uc/webview/export/extension/UCExtension;
    :cond_4
    invoke-static {}, Lc8/DD;->getFromType()I

    move-result v5

    goto :goto_0
.end method

.method public onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, p2, v2, v3}, Lc8/cG;->didPageStartLoadAtTime(Ljava/lang/String;J)V

    .line 82
    :cond_0
    instance-of v0, p1, Lc8/DD;

    if-eqz v0, :cond_1

    .line 83
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

    move-object v0, p1

    .line 85
    check-cast v0, Lc8/DD;

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc8/DD;->onMessage(ILjava/lang/Object;)V

    .line 86
    check-cast p1, Lc8/DD;

    .end local p1    # "view":Lcom/uc/webview/export/WebView;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lc8/DD;->mPageStart:J

    .line 88
    :cond_1
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fE;->tryToRunTailBridges()V

    .line 89
    const-string/jumbo v0, "WVUCWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string/jumbo v1, "WVUCWebViewClient"

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

    .line 142
    :cond_0
    instance-of v1, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v1, :cond_2

    .line 143
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

    .line 158
    .end local p1    # "view":Lcom/uc/webview/export/WebView;
    .end local p4    # "failingUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 148
    .restart local p1    # "view":Lcom/uc/webview/export/WebView;
    .restart local p4    # "failingUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "curl":Ljava/lang/String;
    const/16 v1, -0x10

    if-le p2, v1, :cond_3

    if-ltz p2, :cond_4

    :cond_3
    const/16 v1, -0x50

    if-eq p2, v1, :cond_4

    const/16 v1, -0x32

    if-ne p2, v1, :cond_6

    .line 150
    :cond_4
    instance-of v1, p1, Lc8/DD;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 151
    :cond_5
    check-cast p1, Lc8/DD;

    .end local p1    # "view":Lcom/uc/webview/export/WebView;
    const/16 v1, 0x192

    invoke-virtual {p1, v1, p4}, Lc8/DD;->onMessage(ILjava/lang/Object;)V

    .line 155
    :cond_6
    invoke-static {}, Lc8/YF;->getErrorMonitor()Lc8/HF;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    invoke-static {}, Lc8/YF;->getErrorMonitor()Lc8/HF;

    move-result-object v1

    if-nez v0, :cond_7

    .end local p4    # "failingUrl":Ljava/lang/String;
    :goto_1
    invoke-interface {v1, p4, p2, p3}, Lc8/HF;->didOccurNativeError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .restart local p4    # "failingUrl":Ljava/lang/String;
    :cond_7
    move-object p4, v0

    goto :goto_1
.end method

.method public onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v6, 0x3ee

    .line 298
    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "errorInfo":Ljava/lang/String;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    const-string/jumbo v2, "WVUCWebViewClient"

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

    .line 302
    :cond_0
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "curl":Ljava/lang/String;
    instance-of v2, p1, Lc8/DD;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 304
    check-cast v2, Lc8/DD;

    const/16 v3, 0x192

    invoke-virtual {v2, v3, v0}, Lc8/DD;->onMessage(ILjava/lang/Object;)V

    .line 306
    :cond_1
    instance-of v2, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v2, :cond_2

    .line 307
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v6, v2, v0, v4}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 309
    :cond_2
    invoke-static {}, Lc8/YF;->getErrorMonitor()Lc8/HF;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 310
    invoke-static {}, Lc8/YF;->getErrorMonitor()Lc8/HF;

    move-result-object v2

    invoke-interface {v2, v0, v6, v1}, Lc8/HF;->didOccurNativeError(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 313
    return-void
.end method

.method public shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 21
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 217
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v2, :cond_3

    .line 218
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

    .line 222
    .local v8, "eventResult":Landroid/taobao/windvane/service/WVEventResult;
    iget-boolean v2, v8, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v2, :cond_3

    iget-object v2, v8, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, v8, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    instance-of v2, v2, Lc8/II;

    if-eqz v2, :cond_3

    .line 224
    iget-object v0, v8, Landroid/taobao/windvane/service/WVEventResult;->resultObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lc8/II;

    .line 226
    .local v20, "wrapRes":Lc8/II;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    const-string/jumbo v2, "WVUCWebViewClient"

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

    .line 229
    :cond_0
    new-instance v15, Lcom/uc/webview/export/WebResourceResponse;

    move-object/from16 v0, v20

    iget-object v2, v0, Lc8/II;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v3, v0, Lc8/II;->mEncoding:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v4, v0, Lc8/II;->mInputStream:Ljava/io/InputStream;

    invoke-direct {v15, v2, v3, v4}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 231
    .local v15, "resourceResponse":Lcom/uc/webview/export/WebResourceResponse;
    :try_start_0
    move-object/from16 v0, v20

    iget-object v2, v0, Lc8/II;->mHeaders:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 232
    move-object/from16 v0, v20

    iget-object v2, v0, Lc8/II;->mHeaders:Ljava/util/Map;

    invoke-virtual {v15, v2}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    :cond_1
    :goto_0
    move-object/from16 v16, v15

    .line 292
    .end local v8    # "eventResult":Landroid/taobao/windvane/service/WVEventResult;
    .end local v15    # "resourceResponse":Lcom/uc/webview/export/WebResourceResponse;
    .end local v20    # "wrapRes":Lc8/II;
    :goto_1
    return-object v16

    .line 233
    .restart local v8    # "eventResult":Landroid/taobao/windvane/service/WVEventResult;
    .restart local v15    # "resourceResponse":Lcom/uc/webview/export/WebResourceResponse;
    .restart local v20    # "wrapRes":Lc8/II;
    :cond_2
    invoke-static/range {p2 .. p2}, Lc8/PB;->isAllowAccess(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v13, "map":Ljava/util/HashMap;
    const-string/jumbo v2, "Access-Control-Allow-Origin"

    const-string/jumbo v3, "*"

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {v15, v13}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v13    # "map":Ljava/util/HashMap;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 246
    .end local v8    # "eventResult":Landroid/taobao/windvane/service/WVEventResult;
    .end local v15    # "resourceResponse":Lcom/uc/webview/export/WebResourceResponse;
    .end local v20    # "wrapRes":Lc8/II;
    :cond_3
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 247
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {}, Lc8/DD;->getFromType()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lc8/cG;->didGetResourceStatusCode(Ljava/lang/String;IILjava/util/Map;Lc8/bG;)V

    .line 251
    :cond_4
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lc8/qB;->isCacheEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 252
    invoke-static/range {p2 .. p2}, Lc8/dI;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 253
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

    .line 257
    .local v12, "localPath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 259
    .local v10, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v9, "f":Ljava/io/File;
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 261
    .end local v10    # "in":Ljava/io/InputStream;
    .local v11, "in":Ljava/io/InputStream;
    :try_start_2
    new-instance v16, Lcom/uc/webview/export/WebResourceResponse;

    const-string/jumbo v2, "image/png"

    const-string/jumbo v3, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v11}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 262
    .local v16, "response":Lcom/uc/webview/export/WebResourceResponse;
    if-eqz v16, :cond_5

    .line 263
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 264
    .restart local v13    # "map":Ljava/util/HashMap;
    const-string/jumbo v2, "Access-Control-Allow-Origin"

    const-string/jumbo v3, "*"

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 269
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v16    # "response":Lcom/uc/webview/export/WebResourceResponse;
    :catch_1
    move-exception v2

    move-object v10, v11

    .end local v9    # "f":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v10    # "in":Ljava/io/InputStream;
    :goto_2
    if-eqz v10, :cond_5

    .line 271
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 278
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

    .line 279
    .local v14, "memoryCacheInfo":Lc8/wB;
    if-eqz v14, :cond_7

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v14, Lc8/wB;->cachedTime:J

    sub-long v18, v2, v4

    .line 281
    .local v18, "visitUseTime":J
    const/16 v16, 0x0

    .line 282
    .restart local v16    # "response":Lcom/uc/webview/export/WebResourceResponse;
    const-wide/16 v2, 0x7d0

    cmp-long v2, v18, v2

    if-gez v2, :cond_6

    .line 283
    new-instance v16, Lcom/uc/webview/export/WebResourceResponse;

    .end local v16    # "response":Lcom/uc/webview/export/WebResourceResponse;
    sget-object v2, Landroid/taobao/windvane/util/MimeTypeEnum;->HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-virtual {v2}, Landroid/taobao/windvane/util/MimeTypeEnum;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, v14, Lc8/wB;->mCachedDatas:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 285
    .restart local v16    # "response":Lcom/uc/webview/export/WebResourceResponse;
    :cond_6
    invoke-static {}, Lc8/vB;->getInstance()Lc8/vB;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lc8/vB;->clearCacheByUrl(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v2, "WVUCWebViewClient"

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

    .line 289
    .end local v16    # "response":Lcom/uc/webview/export/WebResourceResponse;
    .end local v18    # "visitUseTime":J
    :cond_7
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 290
    const-string/jumbo v2, "WVUCWebViewClient"

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

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_8
    invoke-super/range {p0 .. p2}, Lcom/uc/webview/export/WebViewClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v16

    goto/16 :goto_1

    .end local v14    # "memoryCacheInfo":Lc8/wB;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v12    # "localPath":Ljava/lang/String;
    .restart local v17    # "temp":Ljava/lang/String;
    :catch_2
    move-exception v2

    goto/16 :goto_3

    .line 269
    :catch_3
    move-exception v2

    goto/16 :goto_2
.end method

.method public shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 162
    invoke-static {p2}, Lc8/dI;->isCommonUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p2}, Lc8/PB;->isBlackUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    invoke-static {}, Lc8/OB;->getInstance()Lc8/OB;

    move-result-object v5

    invoke-virtual {v5}, Lc8/OB;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "forbiddenDomainRedirectURL":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 165
    check-cast p1, Lc8/DD;

    .end local p1    # "view":Lcom/uc/webview/export/WebView;
    const/16 v5, 0x192

    invoke-virtual {p1, v5, p2}, Lc8/DD;->onMessage(ILjava/lang/Object;)V

    :goto_0
    move v5, v6

    .line 211
    .end local v3    # "forbiddenDomainRedirectURL":Ljava/lang/String;
    :goto_1
    return v5

    .line 167
    .restart local v3    # "forbiddenDomainRedirectURL":Ljava/lang/String;
    .restart local p1    # "view":Lcom/uc/webview/export/WebView;
    :cond_0
    invoke-virtual {p1, v3}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v3    # "forbiddenDomainRedirectURL":Ljava/lang/String;
    :cond_1
    instance-of v5, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v5, :cond_2

    .line 172
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v7

    const/16 v8, 0x3eb

    move-object v5, p1

    check-cast v5, Landroid/taobao/windvane/webview/IWVWebView;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v5, p2, v9}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v5

    iget-boolean v5, v5, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v5, :cond_2

    move v5, v6

    .line 173
    goto :goto_1

    .line 176
    :cond_2
    iget-object v5, p0, Lc8/FD;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 177
    .local v1, "cxt":Landroid/content/Context;
    const-string/jumbo v5, "mailto:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "tel:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 179
    :cond_3
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "intent":Landroid/content/Intent;
    :goto_2
    move v5, v6

    .line 185
    goto :goto_1

    .line 183
    :catch_0
    move-exception v5

    const-string/jumbo v5, "WVUCWebViewClient"

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

    .line 190
    :cond_4
    :try_start_1
    instance-of v5, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v5, :cond_6

    invoke-static {}, Lc8/CH;->getWVURLIntercepter()Lc8/GH;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {}, Lc8/CH;->getWVURLIntercepter()Lc8/GH;

    move-result-object v5

    invoke-interface {v5}, Lc8/GH;->isOpenURLIntercept()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 193
    invoke-static {}, Lc8/CH;->getWVURLIntercepter()Lc8/GH;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Lc8/GH;->isNeedupdateURLRule(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 194
    invoke-static {}, Lc8/CH;->getWVURLIntercepter()Lc8/GH;

    move-result-object v5

    invoke-interface {v5}, Lc8/GH;->updateURLRule()V

    .line 197
    :cond_5
    invoke-static {}, Lc8/CH;->getWVURLIntercepter()Lc8/GH;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Landroid/taobao/windvane/webview/IWVWebView;

    move-object v5, v0

    invoke-interface {v7, v1, v5, p2}, Lc8/GH;->shouldOverrideUrlLoading(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 199
    const-string/jumbo v5, "WVUCWebViewClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "intercept url : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v6

    .line 200
    goto/16 :goto_1

    .line 203
    :catch_1
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "WVUCWebViewClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldOverrideUrlLoading: doFilter error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    instance-of v5, p1, Lc8/DD;

    if-eqz v5, :cond_7

    .line 208
    invoke-static {}, Lc8/ZC;->getInstance()Lc8/ZC;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lc8/DD;

    invoke-virtual {v6, v5, p2}, Lc8/ZC;->onUrlChange(Lc8/DD;Ljava/lang/String;)V

    .line 210
    :cond_7
    const-string/jumbo v5, "WVUCWebViewClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldOverrideUrlLoading : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_1
.end method
