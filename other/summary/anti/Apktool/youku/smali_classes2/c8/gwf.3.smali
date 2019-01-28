.class public Lc8/gwf;
.super Lc8/kyf;
.source "PhenixLastConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/kyf",
        "<",
        "Lc8/Yvf;",
        "Lc8/Jxf;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCreator:Lc8/mxf;

.field private final mImageFlowMonitor:Lc8/Ixf;

.field private final mSchedulerSupplier:Lc8/Oyf;


# direct methods
.method public constructor <init>(Lc8/Jxf;Lc8/mxf;Lc8/Ixf;Lc8/Oyf;Lc8/ewf;)V
    .locals 2
    .param p1, "imageRequest"    # Lc8/Jxf;
    .param p2, "creator"    # Lc8/mxf;
    .param p3, "imageFlowMonitor"    # Lc8/Ixf;
    .param p4, "schedulerSupplier"    # Lc8/Oyf;
    .param p5, "decodingListener"    # Lc8/ewf;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lc8/kyf;-><init>(Lc8/zyf;)V

    .line 37
    iput-object p2, p0, Lc8/gwf;->mCreator:Lc8/mxf;

    .line 38
    iput-object p3, p0, Lc8/gwf;->mImageFlowMonitor:Lc8/Ixf;

    .line 39
    iput-object p4, p0, Lc8/gwf;->mSchedulerSupplier:Lc8/Oyf;

    .line 40
    new-instance v0, Lc8/jwf;

    invoke-virtual {p2}, Lc8/mxf;->getMemCacheMissListener()Lc8/qxf;

    move-result-object v1

    invoke-direct {v0, p1, v1, p5}, Lc8/jwf;-><init>(Lc8/Jxf;Lc8/qxf;Lc8/ewf;)V

    invoke-virtual {p1, v0}, Lc8/Jxf;->setProducerListener(Lc8/vyf;)V

    .line 41
    return-void
.end method

.method private statSuccessFlowIfNeed(J)V
    .locals 3
    .param p1, "endTime"    # J

    .prologue
    .line 165
    iget-object v1, p0, Lc8/gwf;->mImageFlowMonitor:Lc8/Ixf;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v1

    check-cast v1, Lc8/Jxf;

    invoke-virtual {v1}, Lc8/Jxf;->getStatistics()Lc8/Kxf;

    move-result-object v0

    .line 167
    .local v0, "statistics":Lc8/Kxf;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Lc8/gwf;->traverseDetailCost(JZZ)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Kxf;->setDetailCost(Ljava/util/Map;)V

    .line 168
    iget-object v1, p0, Lc8/gwf;->mImageFlowMonitor:Lc8/Ixf;

    invoke-interface {v1, v0}, Lc8/Ixf;->onSuccess(Lc8/Kxf;)V

    .line 170
    .end local v0    # "statistics":Lc8/Kxf;
    :cond_0
    return-void
.end method

.method private traverseDetailCost(JZZ)Ljava/util/Map;
    .locals 15
    .param p1, "endTime"    # J
    .param p3, "isPrint"    # Z
    .param p4, "isBuild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 174
    const/4 v4, 0x0

    .line 233
    :cond_0
    :goto_0
    return-object v4

    .line 176
    :cond_1
    const/4 v3, 0x0

    .line 177
    .local v3, "produceTotal":I
    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v9

    check-cast v9, Lc8/Jxf;

    invoke-virtual {v9}, Lc8/Jxf;->getRequestStartTime()J

    move-result-wide v10

    sub-long v10, p1, v10

    long-to-int v7, v10

    .line 178
    .local v7, "totalTime":I
    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v9

    check-cast v9, Lc8/Jxf;

    invoke-virtual {v9}, Lc8/Jxf;->getWorkThreadEndTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_6

    const/4 v8, 0x0

    .line 179
    .local v8, "wait4Main":I
    :goto_1
    const/4 v5, 0x0

    .line 180
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 182
    .local v4, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p3, :cond_2

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    const/16 v9, 0x96

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 184
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "User-Callback: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, p1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v9, "Total-Time: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    const-string/jumbo v9, "Wait-Main: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    :cond_2
    if-eqz p4, :cond_3

    .line 190
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 194
    .restart local v4    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v9

    check-cast v9, Lc8/Jxf;

    invoke-virtual {v9}, Lc8/Jxf;->getProduceTimeline()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    .local v1, "monitorKey":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 198
    .local v2, "produceCost":I
    if-eqz p3, :cond_5

    .line 199
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    if-gez v2, :cond_7

    .line 201
    const-string/jumbo v9, "Unknown(cause interrupted)"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :goto_3
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    :cond_5
    if-ltz v2, :cond_4

    .line 209
    add-int/2addr v3, v2

    .line 210
    if-eqz p4, :cond_4

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 178
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v1    # "monitorKey":Ljava/lang/String;
    .end local v2    # "produceCost":I
    .end local v4    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "wait4Main":I
    :cond_6
    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v9

    check-cast v9, Lc8/Jxf;

    invoke-virtual {v9}, Lc8/Jxf;->getWorkThreadEndTime()J

    move-result-wide v10

    sub-long v10, p1, v10

    long-to-int v8, v10

    goto/16 :goto_1

    .line 203
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v1    # "monitorKey":Ljava/lang/String;
    .restart local v2    # "produceCost":I
    .restart local v4    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "wait4Main":I
    :cond_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 216
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v1    # "monitorKey":Ljava/lang/String;
    .end local v2    # "produceCost":I
    :cond_8
    add-int v9, v3, v8

    if-ge v7, v9, :cond_9

    add-int v7, v3, v8

    .line 217
    :cond_9
    sub-int v9, v7, v3

    sub-int v6, v9, v8

    .line 218
    .local v6, "scheduleTime":I
    if-eqz p4, :cond_b

    .line 219
    const-string/jumbo v9, "totalTime"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string/jumbo v9, "scheduleTime"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v9, p0, Lc8/gwf;->mImageFlowMonitor:Lc8/Ixf;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lc8/gwf;->mSchedulerSupplier:Lc8/Oyf;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lc8/gwf;->mImageFlowMonitor:Lc8/Ixf;

    invoke-interface {v9}, Lc8/Ixf;->getMinimumScheduleTime2StatWaitSize()I

    move-result v9

    if-lt v6, v9, :cond_a

    .line 222
    const-string/jumbo v9, "masterWaitSize"

    iget-object v10, p0, Lc8/gwf;->mSchedulerSupplier:Lc8/Oyf;

    invoke-interface {v10}, Lc8/Oyf;->forCpuBound()Lc8/Nyf;

    move-result-object v10

    invoke-interface {v10}, Lc8/Nyf;->getQueueSize()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string/jumbo v9, "networkWaitSize"

    iget-object v10, p0, Lc8/gwf;->mSchedulerSupplier:Lc8/Oyf;

    invoke-interface {v10}, Lc8/Oyf;->forNetwork()Lc8/Nyf;

    move-result-object v10

    invoke-interface {v10}, Lc8/Nyf;->getQueueSize()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string/jumbo v9, "decodeWaitSize"

    iget-object v10, p0, Lc8/gwf;->mSchedulerSupplier:Lc8/Oyf;

    invoke-interface {v10}, Lc8/Oyf;->forDecode()Lc8/Nyf;

    move-result-object v10

    invoke-interface {v10}, Lc8/Nyf;->getQueueSize()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_a
    const-string/jumbo v9, "waitForMain"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_b
    if-eqz p3, :cond_0

    .line 230
    const-string/jumbo v9, "Schedule-Time: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string/jumbo v10, "PhenixConsumer"

    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v9

    check-cast v9, Lc8/Jxf;

    const-string/jumbo v11, "Detail-Cost:\n%s\n"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v9, v11, v12}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private willRetry(Lc8/Jxf;Ljava/lang/Throwable;)Z
    .locals 10
    .param p1, "request"    # Lc8/Jxf;
    .param p2, "thr"    # Ljava/lang/Throwable;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 65
    invoke-virtual {p1}, Lc8/Jxf;->isRetrying()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 98
    :goto_0
    return v5

    .line 70
    :cond_0
    const/4 v4, 0x0

    .line 71
    .local v4, "retryUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/Jxf;->getImageUriInfo()Lc8/Lxf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Lxf;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "rawUrl":Ljava/lang/String;
    iget-object v5, p0, Lc8/gwf;->mCreator:Lc8/mxf;

    invoke-virtual {v5}, Lc8/mxf;->getRetryHandlerOnFailure()Lc8/rxf;

    move-result-object v1

    .local v1, "handler":Lc8/rxf;
    if-eqz v1, :cond_1

    iget-object v5, p0, Lc8/gwf;->mCreator:Lc8/mxf;

    invoke-interface {v1, v5, p2}, Lc8/rxf;->getRetryUrl(Lc8/mxf;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    instance-of v5, p2, Lcom/taobao/phenix/decode/DecodeException;

    if-eqz v5, :cond_2

    move-object v0, p2

    .line 80
    check-cast v0, Lcom/taobao/phenix/decode/DecodeException;

    .line 81
    .local v0, "de":Lcom/taobao/phenix/decode/DecodeException;
    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v5

    check-cast v5, Lc8/Jxf;

    invoke-virtual {v5}, Lc8/Jxf;->getImageUriInfo()Lc8/Lxf;

    move-result-object v2

    .line 82
    .local v2, "info":Lc8/Lxf;
    invoke-virtual {v0}, Lcom/taobao/phenix/decode/DecodeException;->isDataFromDisk()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNLINK_SO_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    invoke-virtual {v0}, Lcom/taobao/phenix/decode/DecodeException;->getDecodedError()Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    move-result-object v8

    if-eq v5, v8, :cond_2

    invoke-virtual {v2}, Lc8/Lxf;->isLocalUri()Z

    move-result v5

    if-nez v5, :cond_2

    .line 83
    move-object v4, v3

    .line 84
    invoke-virtual {p1}, Lc8/Jxf;->skipCache()V

    .line 88
    .end local v0    # "de":Lcom/taobao/phenix/decode/DecodeException;
    .end local v2    # "info":Lc8/Lxf;
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    .line 89
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p1, v4}, Lc8/Jxf;->resetBeforeRetry(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v5, "PhenixConsumer"

    const-string/jumbo v8, "retry to load when received failure=%s, raw=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p2, v9, v6

    aput-object v3, v9, v7

    invoke-static {v5, p1, v8, v9}, Lc8/qwf;->w(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v5, p0, Lc8/gwf;->mCreator:Lc8/mxf;

    invoke-virtual {v5}, Lc8/mxf;->fetch()Lc8/nxf;

    move v5, v7

    .line 98
    goto :goto_0
.end method


# virtual methods
.method public consumeOn(Lc8/Nyf;)Lc8/oyf;
    .locals 2
    .param p1, "scheduler"    # Lc8/Nyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nyf;",
            ")",
            "Lc8/oyf",
            "<",
            "Lc8/Yvf;",
            "Lc8/Jxf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-super {p0, p1}, Lc8/kyf;->consumeOn(Lc8/Nyf;)Lc8/oyf;

    .line 157
    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v1

    check-cast v1, Lc8/Jxf;

    invoke-virtual {v1}, Lc8/Jxf;->getProducerListener()Lc8/vyf;

    move-result-object v0

    .line 158
    .local v0, "listener":Lc8/vyf;
    if-eqz v0, :cond_0

    .line 159
    check-cast v0, Lc8/jwf;

    .end local v0    # "listener":Lc8/vyf;
    invoke-virtual {v0, p1}, Lc8/jwf;->setMemMissScheduler(Lc8/Nyf;)V

    .line 161
    :cond_0
    return-object p0
.end method

.method protected onCancellationImpl()V
    .locals 12

    .prologue
    .line 136
    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v3

    check-cast v3, Lc8/Jxf;

    invoke-virtual {v3}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 138
    .local v0, "now":J
    const-string/jumbo v5, "PhenixConsumer"

    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v3

    check-cast v3, Lc8/Jxf;

    const-string/jumbo v6, "received cancellation, cost=%dms"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v4

    check-cast v4, Lc8/Jxf;

    invoke-virtual {v4}, Lc8/Jxf;->getRequestStartTime()J

    move-result-wide v10

    sub-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v3, v6, v7}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v3, p0, Lc8/gwf;->mCreator:Lc8/mxf;

    invoke-virtual {v3}, Lc8/mxf;->getCancelListener()Lc8/qxf;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lc8/gwf;->mCreator:Lc8/mxf;

    invoke-virtual {v3}, Lc8/mxf;->getCancelListener()Lc8/qxf;

    move-result-object v4

    new-instance v5, Lc8/txf;

    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v3

    check-cast v3, Lc8/Jxf;

    invoke-virtual {v3}, Lc8/Jxf;->getPhenixTicket()Lc8/nxf;

    move-result-object v3

    invoke-direct {v5, v2, v3}, Lc8/txf;-><init>(Ljava/lang/String;Lc8/nxf;)V

    invoke-interface {v4, v5}, Lc8/qxf;->onHappen(Lc8/txf;)Z

    .line 143
    :cond_0
    return-void
.end method

.method protected onFailureImpl(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 103
    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v1

    check-cast v1, Lc8/Jxf;

    .line 104
    .local v1, "request":Lc8/Jxf;
    invoke-direct {p0, v1, p1}, Lc8/gwf;->willRetry(Lc8/Jxf;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    instance-of v2, p1, Lcom/taobao/phenix/cache/memory/MemOnlyFailedException;

    if-eqz v2, :cond_2

    .line 113
    const-string/jumbo v3, "PhenixConsumer"

    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v2

    check-cast v2, Lc8/Jxf;

    const-string/jumbo v4, "ignored MemOnlyFailedException(%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v3, v2, v4, v5}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_2
    const-string/jumbo v3, "PhenixConsumer"

    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v2

    check-cast v2, Lc8/Jxf;

    const-string/jumbo v4, "received failure=%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v3, v2, v4, v5}, Lc8/qwf;->e(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    const/4 v2, 0x3

    invoke-static {v2}, Lc8/qwf;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    :cond_3
    iget-object v2, p0, Lc8/gwf;->mCreator:Lc8/mxf;

    invoke-virtual {v2}, Lc8/mxf;->getFailureListener()Lc8/qxf;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 121
    new-instance v0, Lc8/pxf;

    invoke-virtual {v1}, Lc8/Jxf;->getPhenixTicket()Lc8/nxf;

    move-result-object v2

    invoke-direct {v0, v2}, Lc8/pxf;-><init>(Lc8/nxf;)V

    .line 125
    .local v0, "e":Lc8/pxf;
    const/16 v2, 0x194

    invoke-virtual {v0, v2}, Lc8/pxf;->setResultCode(I)V

    .line 126
    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v2

    check-cast v2, Lc8/Jxf;

    invoke-virtual {v2}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc8/pxf;->setUrl(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lc8/gwf;->mCreator:Lc8/mxf;

    invoke-virtual {v2}, Lc8/mxf;->getFailureListener()Lc8/qxf;

    move-result-object v2

    invoke-interface {v2, v0}, Lc8/qxf;->onHappen(Lc8/txf;)Z

    .line 129
    .end local v0    # "e":Lc8/pxf;
    :cond_4
    iget-object v2, p0, Lc8/gwf;->mImageFlowMonitor:Lc8/Ixf;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lc8/gwf;->mImageFlowMonitor:Lc8/Ixf;

    invoke-virtual {v1}, Lc8/Jxf;->getStatistics()Lc8/Kxf;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lc8/Ixf;->onFail(Lc8/Kxf;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onNewResultImpl(Lc8/Yvf;Z)V
    .locals 11
    .param p1, "newResult"    # Lc8/Yvf;
    .param p2, "isLast"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    .local v0, "endTime":J
    iget-object v4, p0, Lc8/gwf;->mCreator:Lc8/mxf;

    invoke-virtual {v4}, Lc8/mxf;->getSuccessListener()Lc8/qxf;

    move-result-object v3

    .line 47
    .local v3, "succListener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/SuccPhenixEvent;>;"
    const-string/jumbo v7, "PhenixConsumer"

    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v4

    check-cast v4, Lc8/Jxf;

    const-string/jumbo v8, "received new result=%s, isLast=%b"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v4, v8, v9}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    if-eqz v3, :cond_0

    .line 49
    new-instance v2, Lc8/wxf;

    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v4

    check-cast v4, Lc8/Jxf;

    invoke-virtual {v4}, Lc8/Jxf;->getPhenixTicket()Lc8/nxf;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/wxf;-><init>(Lc8/nxf;)V

    .line 50
    .local v2, "event":Lc8/wxf;
    invoke-virtual {v2, p1}, Lc8/wxf;->setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 51
    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v4

    check-cast v4, Lc8/Jxf;

    invoke-virtual {v4}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lc8/wxf;->setUrl(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lc8/Yvf;->isFromMemory()Z

    move-result v4

    invoke-virtual {v2, v4}, Lc8/wxf;->setImmediate(Z)V

    .line 54
    if-nez p2, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v2, v4}, Lc8/wxf;->setIntermediate(Z)V

    .line 55
    invoke-virtual {p1}, Lc8/Yvf;->isFromDisk()Z

    move-result v4

    invoke-virtual {v2, v4}, Lc8/wxf;->fromDisk(Z)V

    .line 56
    invoke-virtual {p1}, Lc8/Yvf;->isFromSecondary()Z

    move-result v4

    invoke-virtual {v2, v4}, Lc8/wxf;->fromSecondary(Z)V

    .line 57
    invoke-interface {v3, v2}, Lc8/qxf;->onHappen(Lc8/txf;)Z

    .line 59
    .end local v2    # "event":Lc8/wxf;
    :cond_0
    if-eqz p2, :cond_1

    .line 60
    invoke-direct {p0, v0, v1}, Lc8/gwf;->statSuccessFlowIfNeed(J)V

    .line 62
    :cond_1
    return-void

    .restart local v2    # "event":Lc8/wxf;
    :cond_2
    move v4, v6

    .line 54
    goto :goto_0
.end method

.method protected bridge synthetic onNewResultImpl(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lc8/Yvf;

    invoke-virtual {p0, p1, p2}, Lc8/gwf;->onNewResultImpl(Lc8/Yvf;Z)V

    return-void
.end method

.method public onProgressUpdateImpl(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 147
    iget-object v1, p0, Lc8/gwf;->mCreator:Lc8/mxf;

    invoke-virtual {v1}, Lc8/mxf;->getProgressListener()Lc8/qxf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    new-instance v0, Lc8/vxf;

    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v1

    check-cast v1, Lc8/Jxf;

    invoke-virtual {v1}, Lc8/Jxf;->getPhenixTicket()Lc8/nxf;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc8/vxf;-><init>(Lc8/nxf;F)V

    .line 149
    .local v0, "event":Lc8/vxf;
    invoke-virtual {p0}, Lc8/gwf;->getContext()Lc8/zyf;

    move-result-object v1

    check-cast v1, Lc8/Jxf;

    invoke-virtual {v1}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/vxf;->setUrl(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lc8/gwf;->mCreator:Lc8/mxf;

    invoke-virtual {v1}, Lc8/mxf;->getProgressListener()Lc8/qxf;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/qxf;->onHappen(Lc8/txf;)Z

    .line 152
    .end local v0    # "event":Lc8/vxf;
    :cond_0
    return-void
.end method
