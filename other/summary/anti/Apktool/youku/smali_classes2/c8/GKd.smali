.class public Lc8/GKd;
.super Lc8/IKd;
.source "RegisterStatusStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/IKd",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;",
        ">;"
    }
.end annotation


# instance fields
.field protected deviceIdRetry:I

.field protected mainHandler:Landroid/os/Handler;

.field protected scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushAPI"    # Lc8/CKd;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    const/4 v2, 0x0

    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/GKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 37
    invoke-static {}, Lc8/cLd;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lc8/GKd;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    new-instance v0, Lc8/EKd;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/EKd;-><init>(Lc8/GKd;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/GKd;->mainHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushAPI"    # Lc8/CKd;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p4, "enableRPC"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lc8/GKd;-><init>(Landroid/content/Context;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 53
    iput-boolean p4, p0, Lc8/GKd;->enableRPC:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "pushAPI"    # Lc8/CKd;
    .param p5, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lc8/IKd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/CKd;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lc8/GKd;->deviceIdRetry:I

    .line 33
    return-void
.end method


# virtual methods
.method protected executeAfterGetDeviceId(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 147
    iget-object v0, p0, Lc8/GKd;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lc8/FKd;

    invoke-direct {v1, p0}, Lc8/FKd;-><init>(Lc8/GKd;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 154
    return-void
.end method

.method protected bridge synthetic feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lc8/GKd;->feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method protected feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;-><init>()V

    .line 64
    .local v0, "registerStatus":Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;
    const-string/jumbo v1, "20001"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setCode(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lc8/GKd;->appId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const-string/jumbo v1, "appId not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setMessage(Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    iget-object v1, p0, Lc8/GKd;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v1, "appKey not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lc8/GKd;->localResponse()Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method protected localResponse()Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public matchCondition()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lc8/GKd;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/GKd;->appKey:Ljava/lang/String;

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

.method public bridge synthetic netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lc8/GKd;->netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method public netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    .line 91
    new-instance v3, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    invoke-direct {v3}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;-><init>()V

    .line 92
    .local v3, "registerStatus":Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;
    iget-object v5, p0, Lc8/GKd;->context:Landroid/content/Context;

    iget-object v6, p0, Lc8/GKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v5, v6}, Lc8/ELd;->getPushId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "pushId":Ljava/lang/String;
    iget-object v5, p0, Lc8/GKd;->context:Landroid/content/Context;

    iget-object v6, p0, Lc8/GKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v5, v6}, Lc8/ELd;->getPushIdExpireTime(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 94
    .local v1, "expireTime":I
    invoke-virtual {p0, v2, v1}, Lc8/GKd;->retryRegister(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    const-string/jumbo v5, "200"

    invoke-virtual {v3, v5}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setCode(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v5, "already register PushId,dont register frequently"

    invoke-virtual {v3, v5}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setMessage(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v3, v2}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setPushId(Ljava/lang/String;)V

    .line 98
    int-to-long v6, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    long-to-int v5, v6

    invoke-virtual {v3, v5}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setExpireTime(I)V

    .line 130
    :cond_0
    :goto_0
    return-object v3

    .line 101
    :cond_1
    iget-object v5, p0, Lc8/GKd;->context:Landroid/content/Context;

    const-string/jumbo v6, ""

    iget-object v7, p0, Lc8/GKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lc8/ELd;->putPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lc8/GKd;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc8/GKd;->deviceId:Ljava/lang/String;

    .line 103
    iget-object v5, p0, Lc8/GKd;->deviceId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lc8/GKd;->deviceIdRetry:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 104
    const-string/jumbo v5, "Strategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lc8/GKd;->deviceIdRetry:I

    mul-int/lit8 v7, v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " seconds start register"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget v5, p0, Lc8/GKd;->deviceIdRetry:I

    mul-int/lit8 v5, v5, 0xa

    int-to-long v6, v5

    invoke-virtual {p0, v6, v7}, Lc8/GKd;->executeAfterGetDeviceId(J)V

    .line 106
    iget v5, p0, Lc8/GKd;->deviceIdRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/GKd;->deviceIdRetry:I

    .line 107
    const-string/jumbo v5, "20000"

    invoke-virtual {v3, v5}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setCode(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v5, "deviceId is empty"

    invoke-virtual {v3, v5}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    const/4 v5, 0x0

    iput v5, p0, Lc8/GKd;->deviceIdRetry:I

    .line 111
    iget-object v5, p0, Lc8/GKd;->pushAPI:Lc8/CKd;

    iget-object v6, p0, Lc8/GKd;->appId:Ljava/lang/String;

    iget-object v7, p0, Lc8/GKd;->appKey:Ljava/lang/String;

    iget-object v8, p0, Lc8/GKd;->deviceId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lc8/CKd;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/WHd;

    move-result-object v4

    .line 112
    .local v4, "registerStatusANResponse":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lc8/WHd;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 113
    new-instance v3, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    .end local v3    # "registerStatus":Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;
    invoke-virtual {v4}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;-><init>(Ljava/lang/String;)V

    .line 114
    .restart local v3    # "registerStatus":Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;
    const-string/jumbo v5, "Strategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getPushId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    iget-object v5, p0, Lc8/GKd;->context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getPushId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lc8/GKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lc8/ELd;->putPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v5, p0, Lc8/GKd;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v10

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getExpireTime()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    long-to-int v6, v6

    iget-object v7, p0, Lc8/GKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lc8/ELd;->putPushIdExpireTime(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_3
    invoke-virtual {v4}, Lc8/WHd;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v0

    .line 121
    .local v0, "error":Lcom/meizu/cloud/pushsdk/networking/error/ANError;
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 122
    const-string/jumbo v5, "Strategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "status code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lc8/JId;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_4
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setCode(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setMessage(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v5, "Strategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected retryRegister(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pushId"    # Ljava/lang/String;
    .param p2, "expireTime"    # I

    .prologue
    .line 164
    const/4 v1, 0x1

    .line 165
    .local v1, "flag":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    invoke-virtual {p0}, Lc8/GKd;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "deviceId":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lc8/AKd;->decryptPushId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 169
    const/4 v1, 0x0

    .line 173
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public bridge synthetic sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    invoke-virtual {p0, p1}, Lc8/GKd;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V

    return-void
.end method

.method public sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V
    .locals 2
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    .prologue
    .line 135
    iget-object v1, p0, Lc8/GKd;->context:Landroid/content/Context;

    iget-object v0, p0, Lc8/GKd;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/GKd;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lc8/zKd;->sendRegisterStatus(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V

    .line 136
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lc8/GKd;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sendRpcRequest()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lc8/GKd;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v1, "app_key"

    iget-object v2, p0, Lc8/GKd;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v1, "strategy_package_name"

    iget-object v2, p0, Lc8/GKd;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string/jumbo v1, "strategy_type"

    invoke-virtual {p0}, Lc8/GKd;->strategyType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    return-object v0
.end method

.method protected strategyType()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x2

    return v0
.end method
