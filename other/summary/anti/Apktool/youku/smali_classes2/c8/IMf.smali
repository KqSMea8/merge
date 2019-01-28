.class public Lc8/IMf;
.super Ljava/lang/Object;
.source "RequestPool.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "mtopsdk.RequestPool"

.field private static lock:Ljava/util/concurrent/locks/Lock;

.field private static requestPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/AOp;",
            "Ljava/util/List",
            "<",
            "Lc8/GMf;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/IMf;->requestPool:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToRequestPool(Lc8/AOp;Lc8/GMf;)V
    .locals 5
    .param p0, "mtop"    # Lc8/AOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mtopBusiness"    # Lc8/GMf;

    .prologue
    .line 39
    sget-object v1, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 41
    :try_start_0
    sget-object v1, Lc8/IMf;->requestPool:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 42
    .local v0, "mtopBusinessList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/remotebusiness/MtopBusiness;>;"
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "mtopBusinessList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/remotebusiness/MtopBusiness;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .restart local v0    # "mtopBusinessList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/remotebusiness/MtopBusiness;>;"
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v1, Lc8/IMf;->requestPool:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string/jumbo v1, "mtopsdk.RequestPool"

    invoke-virtual {p1}, Lc8/GMf;->getSeqNo()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [addToRequestPool] add mtopBusiness to request pool."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v1, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 52
    return-void

    .line 51
    .end local v0    # "mtopBusinessList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/remotebusiness/MtopBusiness;>;"
    :catchall_0
    move-exception v1

    sget-object v2, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public static failAllRequest(Lc8/AOp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "mtop"    # Lc8/AOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v6, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 111
    :try_start_0
    sget-object v6, Lc8/IMf;->requestPool:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .local v4, "mtopBusinessList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/remotebusiness/MtopBusiness;>;"
    if-nez v4, :cond_0

    .line 139
    sget-object v6, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 140
    :goto_0
    return-void

    .line 115
    :cond_0
    :try_start_1
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    const-string/jumbo v6, "mtopsdk.RequestPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " [failAllRequest]session all request,current size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/GMf;

    .line 121
    .local v3, "mtopBusiness":Lc8/GMf;
    iget-object v6, v3, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v6, :cond_3

    .line 122
    new-instance v5, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v6, v3, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v6}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, p1, p2}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v5, "response":Lmtopsdk/mtop/domain/MtopResponse;
    :goto_2
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v6

    invoke-virtual {v6}, Lc8/oOp;->isGlobalErrorCodeMappingOpen()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 128
    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/iPp;->getMappingCodeByErrorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "localMappingCode":Ljava/lang/String;
    invoke-static {v1}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .end local v1    # "localMappingCode":Ljava/lang/String;
    :goto_3
    iput-object v1, v5, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    .line 130
    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v6

    iget-object v7, v5, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    invoke-static {v6, v7}, Lc8/iPp;->appendMappingCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmtopsdk/mtop/domain/MtopResponse;->mappingCode:Ljava/lang/String;

    .line 131
    const-string/jumbo v6, "\u670d\u52a1\u7adf\u7136\u51fa\u9519\u4e86"

    invoke-virtual {v5, v6}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 134
    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Lc8/QMf;->getHandlerMsg(Lc8/QNp;Lc8/NNp;Lc8/GMf;)Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    move-result-object v2

    .line 135
    .local v2, "msg":Lcom/taobao/tao/remotebusiness/handler/HandlerParam;
    iput-object v5, v2, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 136
    invoke-static {}, Lc8/QMf;->instance()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 139
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "msg":Lcom/taobao/tao/remotebusiness/handler/HandlerParam;
    .end local v3    # "mtopBusiness":Lc8/GMf;
    .end local v4    # "mtopBusinessList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/remotebusiness/MtopBusiness;>;"
    .end local v5    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :catchall_0
    move-exception v6

    sget-object v7, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 124
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mtopBusiness":Lc8/GMf;
    .restart local v4    # "mtopBusinessList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/remotebusiness/MtopBusiness;>;"
    :cond_3
    :try_start_2
    new-instance v5, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {v5, p1, p2}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    goto :goto_2

    .line 129
    .restart local v1    # "localMappingCode":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "EC00000"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 139
    .end local v1    # "localMappingCode":Ljava/lang/String;
    .end local v3    # "mtopBusiness":Lc8/GMf;
    .end local v5    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_5
    sget-object v6, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method

.method public static removeFromRequestPool(Lc8/AOp;Lc8/GMf;)V
    .locals 5
    .param p0, "mtop"    # Lc8/AOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mtopBusiness"    # Lc8/GMf;

    .prologue
    .line 62
    sget-object v1, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    :try_start_0
    sget-object v1, Lc8/IMf;->requestPool:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 65
    .local v0, "mtopBusinessList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/remotebusiness/MtopBusiness;>;"
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string/jumbo v1, "mtopsdk.RequestPool"

    invoke-virtual {p1}, Lc8/GMf;->getSeqNo()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [removeFromRequestPool] remove mtopBusiness from request pool."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v1, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    .end local v0    # "mtopBusinessList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/remotebusiness/MtopBusiness;>;"
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    sget-object v1, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public static retryAllRequest(Lc8/AOp;)V
    .locals 6
    .param p0, "mtop"    # Lc8/AOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    sget-object v3, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 86
    :try_start_0
    sget-object v3, Lc8/IMf;->requestPool:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .local v2, "mtopBusinessList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/remotebusiness/MtopBusiness;>;"
    if-nez v2, :cond_0

    .line 97
    sget-object v3, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    :try_start_1
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    const-string/jumbo v3, "mtopsdk.RequestPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [retryAllRequest] retry all request,current size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/GMf;

    .line 94
    .local v1, "mtopBusiness":Lc8/GMf;
    invoke-virtual {v1}, Lc8/GMf;->retryRequest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 97
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mtopBusiness":Lc8/GMf;
    .end local v2    # "mtopBusinessList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/remotebusiness/MtopBusiness;>;"
    :catchall_0
    move-exception v3

    sget-object v4, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mtopBusinessList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/remotebusiness/MtopBusiness;>;"
    :cond_2
    sget-object v3, Lc8/IMf;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method
