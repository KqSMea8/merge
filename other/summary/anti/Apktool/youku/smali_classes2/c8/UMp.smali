.class public Lc8/UMp;
.super Ljava/lang/Object;
.source "ExecuteCallBeforeFilter.java"

# interfaces
.implements Lc8/KMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ExecuteCallBeforeFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doBefore(Lc8/IMp;)Ljava/lang/String;
    .locals 9
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 33
    :try_start_0
    iget-object v5, p1, Lc8/IMp;->stats:Lc8/pPp;

    iget-object v6, p1, Lc8/IMp;->stats:Lc8/pPp;

    invoke-virtual {v6}, Lc8/pPp;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lc8/pPp;->netSendStartTime:J

    .line 34
    iget-object v5, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v5}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v5

    iget-object v1, v5, Lc8/kOp;->callFactory:Lc8/wPp;

    .line 36
    .local v1, "callFactory":Lc8/wPp;
    if-nez v1, :cond_0

    .line 37
    const-string/jumbo v5, "mtopsdk.ExecuteCallBeforeFilter"

    iget-object v6, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "call Factory of mtopInstance is null.instanceId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v8}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v4, Lmtopsdk/mtop/domain/MtopResponse;

    const-string/jumbo v5, "ANDROID_SYS_MTOP_MISS_CALL_FACTORY"

    const-string/jumbo v6, "Mtop\u5b9e\u4f8b\u6ca1\u6709\u8bbe\u7f6eCall Factory"

    invoke-direct {v4, v5, v6}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .local v4, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v5, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 40
    iget-object v5, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 41
    iput-object v4, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 42
    invoke-static {p1}, Lc8/jNp;->handleExceptionCallBack(Lc8/IMp;)V

    .line 43
    const-string/jumbo v5, "STOP"

    .line 55
    .end local v1    # "callFactory":Lc8/wPp;
    .end local v4    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    :goto_0
    return-object v5

    .line 45
    .restart local v1    # "callFactory":Lc8/wPp;
    :cond_0
    iget-object v5, p1, Lc8/IMp;->networkRequest:Lc8/FPp;

    invoke-interface {v1, v5}, Lc8/wPp;->newCall(Lc8/FPp;)Lc8/xPp;

    move-result-object v0

    .line 46
    .local v0, "call":Lc8/xPp;
    new-instance v5, Lc8/OOp;

    invoke-direct {v5, p1}, Lc8/OOp;-><init>(Lc8/IMp;)V

    invoke-interface {v0, v5}, Lc8/xPp;->enqueue(Lc8/yPp;)V

    .line 47
    iget-object v5, p1, Lc8/IMp;->apiId:Lc8/ENp;

    if-eqz v5, :cond_1

    .line 48
    iget-object v5, p1, Lc8/IMp;->apiId:Lc8/ENp;

    invoke-virtual {v5, v0}, Lc8/ENp;->setCall(Lc8/xPp;)V

    .line 50
    :cond_1
    const-string/jumbo v5, "CONTINUE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v0    # "call":Lc8/xPp;
    .end local v1    # "callFactory":Lc8/wPp;
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invoke call.enqueue of mtopInstance error,apiKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v6}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "logStr":Ljava/lang/String;
    const-string/jumbo v5, "mtopsdk.ExecuteCallBeforeFilter"

    iget-object v6, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    invoke-static {v5, v6, v3, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    const-string/jumbo v5, "STOP"

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "mtopsdk.ExecuteCallBeforeFilter"

    return-object v0
.end method
