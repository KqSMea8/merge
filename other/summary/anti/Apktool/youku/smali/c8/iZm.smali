.class public Lc8/iZm;
.super Lc8/jXb;
.source "PopLayerWebView.java"


# annotations
.annotation runtime Lc8/fXb;
    isDefaultType = true
    type = "webview"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/jXb",
        "<",
        "Landroid/taobao/windvane/webview/IWVWebView;",
        "Lc8/lYb;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mUrl:Ljava/lang/String;

.field private final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lc8/iZm;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/iZm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lc8/jXb;-><init>(Landroid/content/Context;)V

    .line 299
    const-string/jumbo v0, "^https?://actives\\.youku\\.com/activity/crmsz_page/index([\uff0f\\?].*)?$"

    iput-object v0, p0, Lc8/iZm;->pattern:Ljava/lang/String;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lc8/iZm;)V
    .locals 0
    .param p0, "x0"    # Lc8/iZm;

    .prologue
    .line 55
    invoke-direct {p0}, Lc8/iZm;->removeMeOnMainThread()V

    return-void
.end method

.method static synthetic access$100(Lc8/iZm;Landroid/webkit/ConsoleMessage;)V
    .locals 0
    .param p0, "x0"    # Lc8/iZm;
    .param p1, "x1"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lc8/iZm;->sendLog(Landroid/webkit/ConsoleMessage;)V

    return-void
.end method

.method private addParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v8, p1

    .line 369
    .end local p1    # "url":Ljava/lang/String;
    .local v8, "url":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 306
    .end local v8    # "url":Ljava/lang/String;
    .restart local p1    # "url":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string/jumbo v11, "^https?://actives\\.youku\\.com/activity/crmsz_page/index([\uff0f\\?].*)?$"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 307
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 308
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 309
    .local v1, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v11, "brand"

    sget-object v12, Lc8/NHg;->brand:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v11, "btype"

    sget-object v12, Lc8/NHg;->btype:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string/jumbo v11, "deviceid"

    sget-object v12, Lc8/NHg;->deviceid:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    const/4 v9, 0x0

    .line 314
    .local v9, "utdid":Ljava/lang/String;
    :try_start_1
    const-class v11, Lc8/vdn;

    invoke-static {v11}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/vdn;

    invoke-interface {v11}, Lc8/vdn;->getUtdid()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 318
    :try_start_2
    const-string/jumbo v11, "utdid"

    invoke-virtual {v1, v11, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :goto_1
    const-string/jumbo v11, "guid"

    sget-object v12, Lc8/NHg;->guid:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string/jumbo v11, "ouid"

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v11, "network"

    sget-object v12, Lc8/NHg;->network:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 323
    const/4 v3, 0x0

    .line 325
    .local v3, "operator":Ljava/lang/String;
    :try_start_3
    sget-object v11, Lc8/NHg;->operator:Ljava/lang/String;

    invoke-static {v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 329
    :try_start_4
    const-string/jumbo v11, "operator"

    invoke-virtual {v1, v11, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :goto_2
    const-string/jumbo v11, "os"

    sget-object v12, Lc8/NHg;->os:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string/jumbo v11, "os_ver"

    sget-object v12, Lc8/NHg;->os_ver:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 333
    const/4 v5, 0x0

    .line 335
    .local v5, "pid":Ljava/lang/String;
    :try_start_5
    const-class v11, Lc8/vdn;

    invoke-static {v11}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/vdn;

    invoke-interface {v11}, Lc8/vdn;->getPid()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v5

    .line 339
    :try_start_6
    const-string/jumbo v11, "pid"

    invoke-virtual {v1, v11, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :goto_3
    const-string/jumbo v11, "ver"

    sget-object v12, Lc8/NHg;->appver:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v7, "signBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 346
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v10, 0x0

    .end local v10    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "&"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "operator":Ljava/lang/String;
    .end local v5    # "pid":Ljava/lang/String;
    .end local v7    # "signBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "utdid":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 366
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 367
    invoke-static/range {p1 .. p2}, Lc8/iZm;->reformatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    move-object v8, p1

    .line 369
    .end local p1    # "url":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    goto/16 :goto_0

    .line 318
    .end local v8    # "url":Ljava/lang/String;
    .restart local v1    # "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v9    # "utdid":Ljava/lang/String;
    .restart local p1    # "url":Ljava/lang/String;
    :catch_1
    move-exception v11

    :try_start_7
    const-string/jumbo v11, "utdid"

    invoke-virtual {v1, v11, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :catchall_0
    move-exception v11

    const-string/jumbo v12, "utdid"

    invoke-virtual {v1, v12, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v11

    .line 329
    .restart local v3    # "operator":Ljava/lang/String;
    :catch_2
    move-exception v11

    const-string/jumbo v11, "operator"

    invoke-virtual {v1, v11, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :catchall_1
    move-exception v11

    const-string/jumbo v12, "operator"

    invoke-virtual {v1, v12, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v11

    .line 339
    .restart local v5    # "pid":Ljava/lang/String;
    :catch_3
    move-exception v11

    const-string/jumbo v11, "pid"

    invoke-virtual {v1, v11, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_2
    move-exception v11

    const-string/jumbo v12, "pid"

    invoke-virtual {v1, v12, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v11

    .line 348
    .restart local v7    # "signBuilder":Ljava/lang/StringBuilder;
    :cond_4
    const-string/jumbo v11, "appkey=IB2Z+VPxztcrFS3/eg/+zm7FVXTz2S"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lc8/Iin;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "sign":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v4, "paramsBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 353
    .restart local v10    # "value":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 354
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    .line 353
    :goto_6
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "&"

    .line 354
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    invoke-static {v10}, Lc8/OWc;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 356
    .end local v0    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v11, "sign="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lc8/HTh;->addParamsToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 359
    invoke-static/range {p1 .. p2}, Lc8/iZm;->reformatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object p1

    :cond_7
    move-object v8, p1

    .line 361
    .end local p1    # "url":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private buildWebView(Landroid/content/Context;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 222
    iget-object v2, p0, Lc8/iZm;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v1

    .line 226
    :cond_1
    iget-object v2, p0, Lc8/iZm;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Lc8/iZm;->getWebviewState(Ljava/lang/String;)Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    move-result-object v0

    .line 227
    .local v0, "state":Lcom/youku/poplayer/view/h5/WebViewStateEnum;
    sget-object v2, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->WV:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    if-ne v0, v2, :cond_2

    .line 228
    invoke-static {}, Lc8/HTh;->initWindVane()V

    .line 229
    new-instance v1, Landroid/taobao/windvane/webview/WVWebView;

    invoke-direct {v1, p1}, Landroid/taobao/windvane/webview/WVWebView;-><init>(Landroid/content/Context;)V

    .line 230
    .local v1, "webView":Landroid/taobao/windvane/webview/WVWebView;
    invoke-virtual {v1}, Landroid/taobao/windvane/webview/WVWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-static {v2}, Lc8/HTh;->addWindVaneExtraSettings(Landroid/webkit/WebSettings;)V

    .line 231
    new-instance v2, Lc8/kZm;

    invoke-direct {v2, p1, p2}, Lc8/kZm;-><init>(Landroid/content/Context;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)V

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/webview/WVWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 232
    new-instance v2, Lc8/fZm;

    invoke-direct {v2, p0, p1}, Lc8/fZm;-><init>(Lc8/iZm;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/webview/WVWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 239
    const-string/jumbo v2, "buildWebView,use native webkit. contains:poplayer_force_use_native_webkit"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    .end local v1    # "webView":Landroid/taobao/windvane/webview/WVWebView;
    :cond_2
    sget-object v2, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->UC:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    if-ne v0, v2, :cond_0

    .line 242
    invoke-static {}, Lc8/HTh;->initWindVane()V

    .line 243
    new-instance v1, Lc8/DD;

    invoke-direct {v1, p1}, Lc8/DD;-><init>(Landroid/content/Context;)V

    .line 244
    .local v1, "webView":Lc8/DD;
    new-instance v2, Lc8/jZm;

    invoke-direct {v2, p1, p2}, Lc8/jZm;-><init>(Landroid/content/Context;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)V

    invoke-virtual {v1, v2}, Lc8/DD;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 245
    new-instance v2, Lc8/gZm;

    invoke-direct {v2, p0, p1}, Lc8/gZm;-><init>(Lc8/iZm;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lc8/DD;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 252
    const-string/jumbo v2, "buildWebView,use default UC webview."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getWebviewState(Ljava/lang/String;)Lcom/youku/poplayer/view/h5/WebViewStateEnum;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-static {}, Lc8/HYm;->isUCSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc8/HYm;->isWindvaneSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    const-string/jumbo v0, "popWV=1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->WV:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    .line 418
    :goto_0
    return-object v0

    .line 403
    :cond_0
    sget-object v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->UC:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    goto :goto_0

    .line 408
    :cond_1
    invoke-static {}, Lc8/HYm;->isUCSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    sget-object v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->UC:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    goto :goto_0

    .line 413
    :cond_2
    invoke-static {}, Lc8/HYm;->isWindvaneSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    sget-object v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->WV:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    goto :goto_0

    .line 418
    :cond_3
    sget-object v0, Lcom/youku/poplayer/view/h5/WebViewStateEnum;->ALLClOSE:Lcom/youku/poplayer/view/h5/WebViewStateEnum;

    goto :goto_0
.end method

.method private initializeWebView(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p1, p0}, Lc8/lZm;->initialize(Landroid/content/Context;Lc8/iZm;)V

    .line 94
    return-void
.end method

.method public static reformatUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "nativeParam"    # Ljava/lang/String;

    .prologue
    .line 381
    if-nez p1, :cond_0

    .line 387
    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 384
    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reformatUrl.error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private removeMeOnMainThread()V
    .locals 6

    .prologue
    .line 131
    :try_start_0
    iget-object v2, p0, Lc8/iZm;->mInnerView:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lc8/iZm;->mInnerView:Ljava/lang/Object;

    check-cast v2, Landroid/taobao/windvane/webview/IWVWebView;

    const-string/jumbo v3, "about:blank"

    invoke-interface {v2, v3}, Landroid/taobao/windvane/webview/IWVWebView;->loadUrl(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lc8/iZm;->mInnerView:Ljava/lang/Object;

    instance-of v2, v2, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lc8/iZm;->mInnerView:Ljava/lang/Object;

    check-cast v2, Landroid/taobao/windvane/webview/WVWebView;

    invoke-virtual {v2}, Landroid/taobao/windvane/webview/WVWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 135
    .local v1, "wbset":Landroid/webkit/WebSettings;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 137
    .end local v1    # "wbset":Landroid/webkit/WebSettings;
    :cond_0
    iget-object v2, p0, Lc8/iZm;->mInnerView:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lc8/iZm;->removeView(Landroid/view/View;)V

    .line 138
    iget-object v2, p0, Lc8/iZm;->mInnerView:Ljava/lang/Object;

    check-cast v2, Landroid/taobao/windvane/webview/IWVWebView;

    invoke-static {v2}, Lc8/lZm;->destroy(Landroid/taobao/windvane/webview/IWVWebView;)V

    .line 139
    invoke-virtual {p0}, Lc8/iZm;->destroy()V

    .line 140
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/iZm;->mInnerView:Ljava/lang/Object;

    .line 142
    :cond_1
    iget-object v2, p0, Lc8/iZm;->mPopRequest:Lc8/yXb;

    check-cast v2, Lc8/lYb;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/lYb;->setLayer(Landroid/view/View;)V

    .line 143
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/iZm;->mPopRequest:Lc8/yXb;

    .line 144
    const-string/jumbo v2, "%s.destroyView.success"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lc8/iZm;->TAG:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/iZm;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".removeMeOnMainThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendLog(Landroid/webkit/ConsoleMessage;)V
    .locals 5
    .param p1, "msg"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 292
    :try_start_0
    const-string/jumbo v1, "%s\n@source-%s:lineNumber-%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lc8/lZm;->WEBCONSOLE_LOGCAT_MAP:Ljava/util/Map;

    .line 293
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->find(C)Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    move-result-object v1

    .line 292
    invoke-virtual {p0, v2, v1}, Lc8/iZm;->consoleLog(Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendLog.error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setWebView(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 7
    .param p1, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    iget-object v1, p0, Lc8/iZm;->mInnerView:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    .line 84
    .end local p1    # "webView":Landroid/taobao/windvane/webview/IWVWebView;
    :goto_0
    return-void

    .line 70
    .restart local p1    # "webView":Landroid/taobao/windvane/webview/IWVWebView;
    :cond_0
    const-string/jumbo v1, "\"PopLayer/%s\""

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/poplayer/PopLayer;->getVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "poplayerUA":Ljava/lang/String;
    const-string/jumbo v1, "javascript:(function () {Object.defineProperty(window,\'_ua_popLayer\',{value:%s});}());"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    .line 72
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-interface {p1, v1}, Landroid/taobao/windvane/webview/IWVWebView;->loadUrl(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lc8/iZm;->mInnerView:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lc8/iZm;->mInnerView:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lc8/iZm;->removeView(Landroid/view/View;)V

    .line 78
    :cond_1
    iput-object p1, p0, Lc8/iZm;->mInnerView:Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lc8/iZm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/iZm;->initializeWebView(Landroid/content/Context;)V

    .line 80
    check-cast p1, Landroid/view/View;

    .end local p1    # "webView":Landroid/taobao/windvane/webview/IWVWebView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lc8/iZm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const-string/jumbo v1, "%s.setWebView.success"

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lc8/iZm;->TAG:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public destroyView()V
    .locals 4

    .prologue
    .line 98
    invoke-super {p0}, Lc8/jXb;->destroyView()V

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lc8/iZm;->removeMeOnMainThread()V

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Lc8/eZm;

    invoke-direct {v0, p0}, Lc8/eZm;-><init>(Lc8/iZm;)V

    invoke-virtual {p0, v0}, Lc8/iZm;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getInfo()Landroid/text/SpannableStringBuilder;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 262
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 264
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    :try_start_0
    invoke-virtual {p0}, Lc8/iZm;->getPopRequest()Lc8/yXb;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    invoke-virtual {v2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v1

    .line 265
    .local v1, "configItem":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    const-string/jumbo v2, "UUID"

    iget-object v3, v1, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lc8/hZm;

    invoke-direct {v5, p0, v1}, Lc8/hZm;-><init>(Lc8/iZm;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)V

    invoke-static {v0, v2, v3, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    const-string/jumbo v2, "PopTimes"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerSharedPrererence;->getPopCountsFor(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    invoke-virtual {p0}, Lc8/iZm;->getWebView()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 279
    const-string/jumbo v2, "URL"

    invoke-virtual {p0}, Lc8/iZm;->getWebView()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v3

    invoke-interface {v3}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 281
    :cond_0
    const-string/jumbo v3, "Event"

    invoke-virtual {p0}, Lc8/iZm;->getPopRequest()Lc8/yXb;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    invoke-virtual {v2}, Lc8/lYb;->getEvent()Lcom/alibaba/poplayer/trigger/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/poplayer/trigger/Event;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    const-string/jumbo v2, "ModalThreshold"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lc8/iZm;->getPenetrateAlpha()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 283
    invoke-virtual {p0}, Lc8/iZm;->getPenetrateAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 282
    invoke-static {v0, v2, v3, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1    # "configItem":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    :goto_0
    return-object v0

    .line 285
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Error"

    const-string/jumbo v3, "getInfo Error"

    invoke-static {v0, v2, v3, v9, v9}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getWebView()Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lc8/iZm;->mInnerView:Ljava/lang/Object;

    check-cast v0, Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lc8/lYb;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "popRequest"    # Lc8/lYb;

    .prologue
    const/4 v9, 0x0

    .line 154
    const/4 v6, 0x0

    .line 156
    .local v6, "params":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v8

    iget-object v7, v8, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->params:Ljava/lang/String;

    .line 157
    .local v7, "paramsStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 158
    const/4 v6, 0x0

    .line 164
    :goto_0
    if-nez v6, :cond_1

    .line 194
    .end local v7    # "paramsStr":Ljava/lang/String;
    :goto_1
    return-void

    .line 160
    .restart local v7    # "paramsStr":Ljava/lang/String;
    :cond_0
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 161
    .local v5, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v5    # "jsonParser":Lorg/json/JSONTokener;
    .end local v7    # "paramsStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "PopLayerView init fail."

    invoke-static {v8, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lc8/iZm;->setVisibility(I)V

    .line 173
    invoke-virtual {p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v2

    .line 175
    .local v2, "configItem":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    if-nez v2, :cond_2

    .line 176
    const-string/jumbo v8, "PopLayerWebView init error,Poprequest`s config is empty."

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 181
    :cond_2
    const-string/jumbo v8, "url"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lc8/iZm;->mUrl:Ljava/lang/String;

    .line 184
    invoke-direct {p0, p1, v2}, Lc8/iZm;->buildWebView(Landroid/content/Context;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v8

    invoke-direct {p0, v8}, Lc8/iZm;->setWebView(Landroid/taobao/windvane/webview/IWVWebView;)V

    .line 187
    const-string/jumbo v8, "enableHardwareAcceleration"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 188
    .local v4, "enableHardwareAcceleration":Z
    invoke-virtual {p0, v4}, Lc8/iZm;->setHardwareAccleration(Z)V

    .line 191
    iget-wide v8, v2, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->modalThreshold:D

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {p0, v8}, Lc8/iZm;->setPenetrateAlpha(I)V

    .line 193
    iget-boolean v8, v2, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->showCloseBtn:Z

    invoke-virtual {p0, v8}, Lc8/iZm;->showCloseButton(Z)V

    goto :goto_1
.end method

.method public bridge synthetic init(Landroid/content/Context;Lc8/yXb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    check-cast p2, Lc8/lYb;

    invoke-virtual {p0, p1, p2}, Lc8/iZm;->init(Landroid/content/Context;Lc8/lYb;)V

    return-void
.end method

.method public onReceiveEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventParams"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0}, Lc8/iZm;->getWebView()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lc8/iZm;->getWebView()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-virtual {p0}, Lc8/iZm;->getWebView()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/iZm;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lc8/iZm;->mUrl:Ljava/lang/String;

    .line 118
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lc8/iZm;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lc8/iZm;->getPopRequest()Lc8/yXb;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    invoke-virtual {v2}, Lc8/lYb;->getEvent()Lcom/alibaba/poplayer/trigger/Event;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/poplayer/trigger/Event;->param:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lc8/iZm;->addParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    :goto_1
    const-string/jumbo v2, "Load url : %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lc8/iZm;->getWebView()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/taobao/windvane/webview/IWVWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reformatUrl.error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setHardwareAccleration(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 197
    invoke-virtual {p0}, Lc8/iZm;->getWebView()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 202
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 203
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 205
    :cond_0
    return-void
.end method
