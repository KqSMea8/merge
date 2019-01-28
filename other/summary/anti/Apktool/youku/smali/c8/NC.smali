.class public Lc8/NC;
.super Lc8/RD;
.source "WVUCBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 15
    const-string/jumbo v1, "onLowMemory"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-static {}, Lc8/DD;->getUCSDKSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->onLowMemory()V

    .line 19
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const/4 v1, 0x1

    .line 27
    :goto_0
    return v1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Only UCSDKSupport !"

    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 23
    const-string/jumbo v1, "WVUCBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UCCore :: onLowMemory error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
