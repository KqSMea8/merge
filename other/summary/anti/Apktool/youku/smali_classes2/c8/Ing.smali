.class public Lc8/Ing;
.super Lc8/RD;
.source "AntJsPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 4

    .prologue
    .line 58
    :try_start_0
    const-string/jumbo v1, "Ant"

    const-class v2, Lc8/Ing;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 59
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 60
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "wvCallBackContext"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 28
    new-instance v5, Lc8/kE;

    invoke-direct {v5}, Lc8/kE;-><init>()V

    .line 29
    .local v5, "result":Lc8/kE;
    const-string/jumbo v6, "getAllExp"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 30
    invoke-static {}, Lc8/Tng;->getInstance()Lc8/Sng;

    move-result-object v6

    invoke-interface {v6}, Lc8/Sng;->getAllExperimentInfo()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "antInfo":Ljava/lang/String;
    const-string/jumbo v6, "result"

    invoke-virtual {v5, v6, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p3, v5}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 49
    .end local v0    # "antInfo":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 33
    :cond_1
    const-string/jumbo v6, "getBucket"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 35
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .local v3, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v6, "component"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "component":Ljava/lang/String;
    const-string/jumbo v6, "module"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "module":Ljava/lang/String;
    invoke-static {}, Lc8/hng;->getInstance()Lc8/gng;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Lc8/gng;->getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "bucket":Ljava/lang/String;
    const-string/jumbo v6, "result"

    invoke-virtual {v5, v6, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p3, v5}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v1    # "bucket":Ljava/lang/String;
    .end local v2    # "component":Ljava/lang/String;
    .end local v3    # "jsObj":Lorg/json/JSONObject;
    .end local v4    # "module":Ljava/lang/String;
    :catch_0
    move-exception v6

    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 43
    const/4 v6, 0x0

    goto :goto_1

    .line 45
    :cond_2
    const-string/jumbo v6, "updateAntData"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    invoke-static {}, Lc8/Tng;->getInstance()Lc8/Sng;

    move-result-object v6

    const-string/jumbo v7, "hybrid"

    invoke-interface {v6, v7}, Lc8/Sng;->updateAntData(Ljava/lang/String;)V

    .line 47
    sget-object v6, Lc8/kE;->RET_SUCCESS:Lc8/kE;

    invoke-virtual {p3, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_0
.end method
