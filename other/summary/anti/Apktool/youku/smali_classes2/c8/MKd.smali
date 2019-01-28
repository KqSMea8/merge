.class public Lc8/MKd;
.super Lc8/IKd;
.source "UnRegisterStatusStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/IKd",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushAPI"    # Lc8/CKd;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    const/4 v2, 0x0

    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/MKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushAPI"    # Lc8/CKd;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p4, "enableRPC"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lc8/MKd;-><init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 33
    iput-boolean p4, p0, Lc8/MKd;->enableRPC:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "pushAPI"    # Lc8/CKd;
    .param p5, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lc8/IKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge synthetic feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lc8/MKd;->feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method protected feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;-><init>()V

    .line 44
    .local v0, "registerStatus":Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    const-string/jumbo v1, "20001"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setCode(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lc8/MKd;->appId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string/jumbo v1, "appId not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setMessage(Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    iget-object v1, p0, Lc8/MKd;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string/jumbo v1, "appKey not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lc8/MKd;->localResponse()Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method protected localResponse()Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method protected matchCondition()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/MKd;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/MKd;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lc8/MKd;->netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method protected netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    .locals 8

    .prologue
    .line 65
    new-instance v3, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    invoke-direct {v3}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;-><init>()V

    .line 66
    .local v3, "unRegisterStatus":Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    iget-object v4, p0, Lc8/MKd;->context:Landroid/content/Context;

    iget-object v5, p0, Lc8/MKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/ELd;->getPushId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "pushId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    const-string/jumbo v4, "200"

    invoke-virtual {v3, v4}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setCode(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v4, "already unRegister PushId,dont unRegister frequently"

    invoke-virtual {v3, v4}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setMessage(Ljava/lang/String;)V

    .line 70
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setIsUnRegisterSuccess(Z)V

    .line 90
    :cond_0
    :goto_0
    return-object v3

    .line 72
    :cond_1
    invoke-virtual {p0}, Lc8/MKd;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/MKd;->deviceId:Ljava/lang/String;

    .line 73
    iget-object v4, p0, Lc8/MKd;->pushAPI:Lc8/CKd;

    iget-object v5, p0, Lc8/MKd;->appId:Ljava/lang/String;

    iget-object v6, p0, Lc8/MKd;->appKey:Ljava/lang/String;

    iget-object v7, p0, Lc8/MKd;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lc8/CKd;->unRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/WHd;

    move-result-object v0

    .line 74
    .local v0, "anResponse":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lc8/WHd;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    new-instance v3, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    .end local v3    # "unRegisterStatus":Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    invoke-virtual {v0}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;-><init>(Ljava/lang/String;)V

    .line 76
    .restart local v3    # "unRegisterStatus":Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    const-string/jumbo v4, "Strategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "network unRegisterStatus "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v4, "200"

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    iget-object v4, p0, Lc8/MKd;->context:Landroid/content/Context;

    const-string/jumbo v5, ""

    iget-object v6, p0, Lc8/MKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lc8/ELd;->putPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v0}, Lc8/WHd;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v1

    .line 82
    .local v1, "error":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 83
    const-string/jumbo v4, "Strategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_3
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setCode(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setMessage(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v4, "Strategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unRegisterStatus "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    invoke-virtual {p0, p1}, Lc8/MKd;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V

    return-void
.end method

.method protected sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V
    .locals 2
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    .prologue
    .line 107
    iget-object v1, p0, Lc8/MKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/MKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/MKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lc8/zKd;->sendUnRegisterStatus(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V

    .line 108
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lc8/MKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected sendRpcRequest()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lc8/MKd;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string/jumbo v1, "app_key"

    iget-object v2, p0, Lc8/MKd;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v1, "strategy_package_name"

    iget-object v2, p0, Lc8/MKd;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v1, "strategy_type"

    invoke-virtual {p0}, Lc8/MKd;->strategyType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    return-object v0
.end method

.method protected strategyType()I
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x20

    return v0
.end method
