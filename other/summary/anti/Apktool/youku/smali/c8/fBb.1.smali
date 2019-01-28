.class public Lc8/fBb;
.super Lc8/eBb;
.source "UploadLogFromCache.java"


# static fields
.field private static final MAX_NUM:I = 0x12c

.field private static s_instance:Lc8/fBb;


# instance fields
.field private volatile bRunning:Z

.field private hasSuccess:Z

.field private mCacheLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;"
        }
    .end annotation
.end field

.field public final mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

.field private mTNetFailTimes:I

.field private mUploadByteSize:I

.field private mUploadingLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lc8/fBb;

    invoke-direct {v0}, Lc8/fBb;-><init>()V

    sput-object v0, Lc8/fBb;->s_instance:Lc8/fBb;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lc8/eBb;-><init>()V

    .line 22
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    iput-object v0, p0, Lc8/fBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    .line 23
    iput v1, p0, Lc8/fBb;->mUploadByteSize:I

    .line 24
    iput-boolean v1, p0, Lc8/fBb;->hasSuccess:Z

    .line 25
    iput v1, p0, Lc8/fBb;->mTNetFailTimes:I

    .line 27
    iput-boolean v1, p0, Lc8/fBb;->bRunning:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/fBb;->mCacheLogs:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/fBb;->mUploadingLogs:Ljava/util/List;

    return-void
.end method

.method private buildEventRequestMap()Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/fBb;->mCacheLogs:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_1

    .line 160
    const/4 v7, 0x0

    .line 214
    :cond_0
    :goto_0
    return-object v7

    .line 163
    :cond_1
    const/4 v13, 0x0

    .line 164
    .local v13, "totalUploadSize":I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v9, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/StringBuilder;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v12, "timeoutLogs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    monitor-enter p0

    .line 168
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/fBb;->mUploadingLogs:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 169
    invoke-static {}, Lc8/Lzb;->getInstance()Lc8/Lzb;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lc8/Lzb;->getEffectiveTime()I

    move-result v16

    move/from16 v0, v16

    mul-int/lit16 v2, v0, 0x3e8

    .line 170
    .local v2, "effectiveTime":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 171
    .local v10, "time":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/fBb;->mCacheLogs:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v3, v0, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/fBb;->mCacheLogs:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/tAb;

    .line 173
    .local v6, "log":Lc8/tAb;
    iget-object v0, v6, Lc8/tAb;->time:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    sub-long v16, v10, v16

    int-to-long v0, v2

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_2

    .line 174
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 177
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/fBb;->mUploadingLogs:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Lc8/tAb;->getTopicId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/StringBuilder;

    .line 182
    .local v15, "vBuilder":Ljava/lang/StringBuilder;
    if-nez v15, :cond_3

    .line 183
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "vBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .restart local v15    # "vBuilder":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Lc8/tAb;->getTopicId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/fBb;->mCacheLogs:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lc8/tAb;

    invoke-virtual/range {v16 .. v16}, Lc8/tAb;->getContent()Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, "uploadContent":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    add-int v13, v13, v16

    goto :goto_2

    .line 186
    .end local v14    # "uploadContent":Ljava/lang/String;
    :cond_3
    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 195
    .end local v6    # "log":Lc8/tAb;
    .end local v15    # "vBuilder":Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_6

    .line 196
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lc8/uzb;->isSelfMonitorTurnOn()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/fBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    move-object/from16 v16, v0

    sget v17, Lc8/JAb;->LOGS_TIMEOUT:I

    const/16 v18, 0x0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    .line 199
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/fBb;->mCacheLogs:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 201
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v7, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iput v13, v0, Lc8/fBb;->mUploadByteSize:I

    .line 205
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 206
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 201
    .end local v2    # "effectiveTime":I
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "str":Ljava/lang/String;
    .end local v10    # "time":J
    :catchall_0
    move-exception v16

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16

    .line 209
    .restart local v2    # "effectiveTime":I
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "time":J
    :cond_7
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 210
    const-string/jumbo v16, ""

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "mUploadByteSize"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lc8/fBb;->mUploadByteSize:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string/jumbo v19, "count"

    aput-object v19, v17, v18

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/fBb;->mUploadingLogs:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string/jumbo v19, "timeoutLogs count"

    aput-object v19, v17, v18

    const/16 v18, 0x5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static getInstance()Lc8/fBb;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lc8/fBb;->s_instance:Lc8/fBb;

    return-object v0
.end method

.method private removeUploadingLogs()V
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lc8/fBb;->mCacheLogs:Ljava/util/List;

    iget-object v1, p0, Lc8/fBb;->mUploadingLogs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v0, p0, Lc8/fBb;->mUploadingLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private uploadByTnet()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lc8/NBb;->d()V

    .line 101
    invoke-direct {p0}, Lc8/fBb;->buildEventRequestMap()Ljava/util/Map;

    move-result-object v5

    .line 102
    .local v5, "postDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 103
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lc8/fBb;->bRunning:Z

    .line 104
    const/4 v8, 0x1

    .line 155
    :goto_0
    return v8

    .line 107
    :cond_1
    const/4 v4, 0x0

    .line 109
    .local v4, "packRequest":[B
    :try_start_0
    invoke-static {v5}, Lc8/UAb;->getPackRequestByRealtime(Ljava/util/Map;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 113
    :goto_1
    if-nez v4, :cond_2

    .line 114
    const-string/jumbo v8, ""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "packRequest is null"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const/4 v8, 0x0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v2, v9}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 118
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 119
    .local v6, "start":J
    invoke-static {v4}, Lc8/dBb;->sendRequest([B)Lc8/VAb;

    move-result-object v1

    .line 120
    .local v1, "bizResponse":Lc8/VAb;
    invoke-virtual {v1}, Lc8/VAb;->isSuccess()Z

    move-result v3

    .line 121
    .local v3, "isSendSuccess":Z
    if-eqz v3, :cond_5

    .line 122
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v8

    invoke-virtual {v8}, Lc8/uzb;->turnOnSelfMonitor()V

    .line 123
    const/4 v8, 0x1

    iput-boolean v8, p0, Lc8/fBb;->hasSuccess:Z

    .line 124
    const/4 v8, 0x0

    iput v8, p0, Lc8/fBb;->mTNetFailTimes:I

    .line 125
    invoke-direct {p0}, Lc8/fBb;->removeUploadingLogs()V

    .line 127
    :try_start_1
    iget-object v8, v1, Lc8/VAb;->data:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lc8/fBb;->parserConfig(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :cond_3
    :goto_2
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 148
    const-string/jumbo v8, ""

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "isSendSuccess"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "cost time"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_4
    const-wide/16 v8, 0x64

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 155
    :goto_3
    const/4 v8, 0x0

    goto :goto_0

    .line 128
    :catch_1
    move-exception v2

    .line 129
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 132
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iget v8, p0, Lc8/fBb;->mTNetFailTimes:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lc8/fBb;->mTNetFailTimes:I

    .line 133
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v8

    invoke-virtual {v8}, Lc8/uzb;->isHttpService()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 134
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 136
    :cond_6
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v8

    invoke-virtual {v8}, Lc8/uzb;->isSelfMonitorTurnOn()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 137
    iget-boolean v8, p0, Lc8/fBb;->hasSuccess:Z

    if-eqz v8, :cond_3

    iget v8, p0, Lc8/fBb;->mTNetFailTimes:I

    const/16 v9, 0xa

    if-gt v8, v9, :cond_3

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "rt"

    iget-wide v10, v1, Lc8/VAb;->rt:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v8, "pSize"

    iget v9, p0, Lc8/fBb;->mUploadByteSize:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v8, "errCode"

    iget v9, v1, Lc8/VAb;->errCode:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v8, "type"

    const-string/jumbo v9, "2"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v8, p0, Lc8/fBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v9, Lc8/JAb;->UPLOAD_FAILED:I

    invoke-static {v0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    goto/16 :goto_2

    .line 152
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "thread sleep interrupted"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method private uploadEventLog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    invoke-static {}, Lc8/NBb;->d()V

    .line 69
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/yAb;->isConnectInternet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget-object v2, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iget-object v3, p0, Lc8/fBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lc8/fBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {p0}, Lc8/fBb;->getNetworkStatus()Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 73
    const-string/jumbo v2, "network not match,return"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "current networkstatus"

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lc8/fBb;->getNetworkStatus()Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "mAllowedNetworkStatus"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lc8/fBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-boolean v2, p0, Lc8/fBb;->bRunning:Z

    if-nez v2, :cond_0

    .line 77
    iput-boolean v6, p0, Lc8/fBb;->bRunning:Z

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget v2, p0, Lc8/fBb;->mMaxUploadTimes:I

    if-ge v1, v2, :cond_3

    .line 83
    iget-object v2, p0, Lc8/fBb;->mCacheLogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 84
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/fBb;->bRunning:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_3
    iput-boolean v5, p0, Lc8/fBb;->bRunning:Z

    goto :goto_0

    .line 88
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lc8/fBb;->uploadByTnet()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    iput-boolean v5, p0, Lc8/fBb;->bRunning:Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iput-boolean v5, p0, Lc8/fBb;->bRunning:Z

    throw v2
.end method


# virtual methods
.method public addLog(Lc8/tAb;)V
    .locals 3
    .param p1, "log"    # Lc8/tAb;

    .prologue
    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v1, p0, Lc8/fBb;->mCacheLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    .line 40
    const/16 v0, 0x63

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 41
    iget-object v1, p0, Lc8/fBb;->mCacheLogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 40
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lc8/fBb;->mCacheLogs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {}, Lc8/oBb;->getInstance()Lc8/oBb;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v1, v2}, Lc8/oBb;->add(Ljava/lang/String;)V

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method upload()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lc8/NBb;->d()V

    .line 59
    :try_start_0
    invoke-static {}, Lc8/Lzb;->getInstance()Lc8/Lzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Lzb;->isRealtimeClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-direct {p0}, Lc8/fBb;->uploadEventLog()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
