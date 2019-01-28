.class public Lc8/DSh;
.super Lc8/RD;
.source "DYKStorageJSBridge.java"


# static fields
.field public static final PLUGIN_NAME:Ljava/lang/String; = "DYKStorageJSBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private getItem(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 7
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v6, 0x0

    .line 69
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v1, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "key"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v5, "namespace"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "namespace":Ljava/lang/String;
    const/4 v0, 0x0

    .line 81
    .local v0, "item":Ljava/lang/String;
    iget-object v5, p0, Lc8/DSh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v5, :cond_0

    .line 82
    iget-object v5, p0, Lc8/DSh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v5}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v2}, Lc8/HTh;->getLocalStorageForWeb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    if-eqz v0, :cond_1

    .line 85
    new-instance v4, Lc8/kE;

    invoke-direct {v4}, Lc8/kE;-><init>()V

    .line 86
    .local v4, "result":Lc8/kE;
    const-string/jumbo v5, "success"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string/jumbo v5, "message"

    const-string/jumbo v6, "get success"

    invoke-virtual {v4, v5, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v5, "item"

    invoke-virtual {v4, v5, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 96
    .end local v0    # "item":Ljava/lang/String;
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "namespace":Ljava/lang/String;
    :goto_0
    return-void

    .line 71
    .end local v4    # "result":Lc8/kE;
    :catch_0
    move-exception v5

    new-instance v4, Lc8/kE;

    invoke-direct {v4}, Lc8/kE;-><init>()V

    .line 72
    .restart local v4    # "result":Lc8/kE;
    const-string/jumbo v5, "success"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string/jumbo v5, "message"

    const-string/jumbo v6, "get failed"

    invoke-virtual {v4, v5, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 91
    .end local v4    # "result":Lc8/kE;
    .restart local v0    # "item":Ljava/lang/String;
    .restart local v1    # "jsObj":Lorg/json/JSONObject;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "namespace":Ljava/lang/String;
    :cond_1
    new-instance v4, Lc8/kE;

    invoke-direct {v4}, Lc8/kE;-><init>()V

    .line 92
    .restart local v4    # "result":Lc8/kE;
    const-string/jumbo v5, "success"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string/jumbo v5, "message"

    const-string/jumbo v6, "get failed"

    invoke-virtual {v4, v5, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method private setItem(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 8
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v7, 0x0

    .line 39
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v1, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v6, "key"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v6, "item"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "item":Ljava/lang/String;
    const-string/jumbo v6, "namespace"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "namespace":Ljava/lang/String;
    const-string/jumbo v6, "toDisk"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 52
    .local v5, "toDisk":Z
    iget-object v6, p0, Lc8/DSh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lc8/DSh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 53
    invoke-interface {v6}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v0, v3, v5}, Lc8/HTh;->saveLocalStorageForWeb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    new-instance v4, Lc8/kE;

    invoke-direct {v4}, Lc8/kE;-><init>()V

    .line 55
    .local v4, "result":Lc8/kE;
    const-string/jumbo v6, "success"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string/jumbo v6, "message"

    const-string/jumbo v7, "save success"

    invoke-virtual {v4, v6, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 64
    .end local v0    # "item":Ljava/lang/String;
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "namespace":Ljava/lang/String;
    .end local v5    # "toDisk":Z
    :goto_0
    return-void

    .line 41
    .end local v4    # "result":Lc8/kE;
    :catch_0
    move-exception v6

    new-instance v4, Lc8/kE;

    invoke-direct {v4}, Lc8/kE;-><init>()V

    .line 42
    .restart local v4    # "result":Lc8/kE;
    const-string/jumbo v6, "success"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    const-string/jumbo v6, "message"

    const-string/jumbo v7, "save failed"

    invoke-virtual {v4, v6, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 59
    .end local v4    # "result":Lc8/kE;
    .restart local v0    # "item":Ljava/lang/String;
    .restart local v1    # "jsObj":Lorg/json/JSONObject;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "namespace":Ljava/lang/String;
    .restart local v5    # "toDisk":Z
    :cond_0
    new-instance v4, Lc8/kE;

    invoke-direct {v4}, Lc8/kE;-><init>()V

    .line 60
    .restart local v4    # "result":Lc8/kE;
    const-string/jumbo v6, "success"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string/jumbo v6, "message"

    const-string/jumbo v7, "save failed"

    invoke-virtual {v4, v6, v7}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v0, 0x1

    .line 26
    const-string/jumbo v1, "setItem"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-direct {p0, p2, p3}, Lc8/DSh;->setItem(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 33
    :goto_0
    return v0

    .line 29
    :cond_0
    const-string/jumbo v1, "getItem"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-direct {p0, p2, p3}, Lc8/DSh;->getItem(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
