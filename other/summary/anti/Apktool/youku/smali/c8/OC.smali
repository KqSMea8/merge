.class public Lc8/OC;
.super Lc8/RD;
.source "WVWebPerformance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVWebPerformance"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 22
    const-string/jumbo v0, "timing"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p3}, Lc8/OC;->timing(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 29
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 24
    :cond_0
    const-string/jumbo v0, "jsBridgeHistory"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p0, p3}, Lc8/OC;->jsBridgeHistory(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public jsBridgeHistory(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 7
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 50
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 52
    .local v3, "result":Lc8/kE;
    :try_start_0
    sget-object v5, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 53
    .local v2, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "key":Ljava/lang/String;
    sget-object v5, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 56
    .local v4, "value":Ljava/lang/Integer;
    invoke-virtual {v3, v1, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "msg"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 58
    .restart local v2    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public timing(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 33
    new-instance v2, Lc8/kE;

    const-string/jumbo v3, "HY_NO_PERMISSION"

    invoke-direct {v2, v3}, Lc8/kE;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, "result":Lc8/kE;
    iget-object v3, p0, Lc8/OC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    instance-of v3, v3, Lc8/DD;

    if-eqz v3, :cond_0

    .line 36
    new-instance v2, Lc8/kE;

    .end local v2    # "result":Lc8/kE;
    const-string/jumbo v3, "HY_SUCCESS"

    invoke-direct {v2, v3}, Lc8/kE;-><init>(Ljava/lang/String;)V

    .line 38
    .restart local v2    # "result":Lc8/kE;
    :try_start_0
    iget-object v3, p0, Lc8/OC;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    check-cast v3, Lc8/DD;

    invoke-virtual {v3}, Lc8/DD;->getH5MonitorDatas()Lorg/json/JSONObject;

    move-result-object v1

    .line 39
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 40
    invoke-virtual {v2, v1}, Lc8/kE;->setData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 47
    :cond_0
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 48
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const-string/jumbo v3, "HY_FAILED"

    invoke-virtual {v2, v3}, Lc8/kE;->setResult(Ljava/lang/String;)V

    goto :goto_0
.end method
