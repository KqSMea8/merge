.class public Lc8/gBb;
.super Lc8/eBb;
.source "UploadLogFromDB.java"


# static fields
.field private static final Default_WIN_SIZE:I = 0x4

.field private static final MAX_LOG_COUNT:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "UploadLogFromDB"

.field private static final TOTAL_MAX_POST_SIZE:I = 0x500000

.field private static s_instance:Lc8/gBb;


# instance fields
.field private volatile bRunning:Z

.field private hasSuccess:Z

.field private mAveragePackageSize:F

.field private mFactor:I

.field public final mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

.field private mTNetFailTimes:I

.field private mUploadByteSize:I

.field private mUploadCount:J

.field private mUploadIndex:I

.field private mWinSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lc8/gBb;

    invoke-direct {v0}, Lc8/gBb;-><init>()V

    sput-object v0, Lc8/gBb;->s_instance:Lc8/gBb;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lc8/eBb;-><init>()V

    .line 32
    iput-boolean v2, p0, Lc8/gBb;->bRunning:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lc8/gBb;->mWinSize:I

    .line 34
    iput v2, p0, Lc8/gBb;->mFactor:I

    .line 35
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lc8/gBb;->mAveragePackageSize:F

    .line 36
    iput v2, p0, Lc8/gBb;->mUploadByteSize:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/gBb;->mUploadCount:J

    .line 38
    iput-boolean v2, p0, Lc8/gBb;->hasSuccess:Z

    .line 39
    iput v2, p0, Lc8/gBb;->mTNetFailTimes:I

    .line 41
    iget v0, p0, Lc8/gBb;->mMaxUploadTimes:I

    iput v0, p0, Lc8/gBb;->mUploadIndex:I

    .line 43
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    iput-object v0, p0, Lc8/gBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    return-void
.end method

.method private addToDelayList(Ljava/util/List;Lc8/tAb;)Ljava/util/List;
    .locals 0
    .param p2, "log"    # Lc8/tAb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;",
            "Lc8/tAb;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "delayLogs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    if-nez p1, :cond_0

    .line 268
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "delayLogs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .restart local p1    # "delayLogs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-object p1
.end method

.method private calPackPackageWindowSize(Ljava/lang/Boolean;J)I
    .locals 12
    .param p1, "isSuccess"    # Ljava/lang/Boolean;
    .param p2, "pTransferInterval"    # J

    .prologue
    const/16 v10, 0x15e

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 286
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_0

    .line 287
    iget v4, p0, Lc8/gBb;->mWinSize:I

    .line 310
    :goto_0
    return v4

    .line 289
    :cond_0
    iget v1, p0, Lc8/gBb;->mUploadByteSize:I

    .line 290
    .local v1, "size":I
    int-to-float v4, v1

    long-to-float v5, p2

    div-float v0, v4, v5

    .line 292
    .local v0, "currentSpeed":F
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 293
    const-wide/32 v4, 0xafc8

    cmp-long v4, p2, v4

    if-lez v4, :cond_1

    .line 294
    iget v4, p0, Lc8/gBb;->mWinSize:I

    goto :goto_0

    .line 296
    :cond_1
    const v4, 0x472fc800    # 45000.0f

    mul-float/2addr v4, v0

    float-to-double v2, v4

    .line 297
    .local v2, "nextExpectByte":D
    iget v4, p0, Lc8/gBb;->mAveragePackageSize:F

    float-to-double v4, v4

    div-double v4, v2, v4

    iget v6, p0, Lc8/gBb;->mFactor:I

    int-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lc8/gBb;->mWinSize:I

    .line 303
    .end local v2    # "nextExpectByte":D
    :goto_1
    iget v4, p0, Lc8/gBb;->mWinSize:I

    if-gtz v4, :cond_4

    .line 304
    iput v9, p0, Lc8/gBb;->mWinSize:I

    .line 305
    iput v8, p0, Lc8/gBb;->mFactor:I

    .line 309
    :cond_2
    :goto_2
    const-string/jumbo v4, "UploadLogFromDB"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "winsize"

    aput-object v6, v5, v8

    iget v6, p0, Lc8/gBb;->mWinSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget v4, p0, Lc8/gBb;->mWinSize:I

    goto :goto_0

    .line 300
    :cond_3
    iget v4, p0, Lc8/gBb;->mWinSize:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lc8/gBb;->mWinSize:I

    .line 301
    iget v4, p0, Lc8/gBb;->mFactor:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lc8/gBb;->mFactor:I

    goto :goto_1

    .line 306
    :cond_4
    iget v4, p0, Lc8/gBb;->mWinSize:I

    if-le v4, v10, :cond_2

    .line 307
    iput v10, p0, Lc8/gBb;->mWinSize:I

    goto :goto_2
.end method

.method public static getInstance()Lc8/gBb;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lc8/gBb;->s_instance:Lc8/gBb;

    return-object v0
.end method

.method private getLogCount()I
    .locals 3

    .prologue
    .line 314
    iget v1, p0, Lc8/gBb;->mWinSize:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 316
    invoke-static {}, Lc8/yAb;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "Wi-Fi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    const/16 v1, 0x14

    iput v1, p0, Lc8/gBb;->mWinSize:I

    .line 327
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v1, p0, Lc8/gBb;->mWinSize:I

    return v1

    .line 319
    .restart local v0    # "type":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "4G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    const/16 v1, 0x10

    iput v1, p0, Lc8/gBb;->mWinSize:I

    goto :goto_0

    .line 321
    :cond_2
    const-string/jumbo v1, "3G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    const/16 v1, 0xc

    iput v1, p0, Lc8/gBb;->mWinSize:I

    goto :goto_0

    .line 324
    :cond_3
    const/16 v1, 0x8

    iput v1, p0, Lc8/gBb;->mWinSize:I

    goto :goto_0
.end method

.method private reduceWindowSize()V
    .locals 5

    .prologue
    const/16 v1, 0x15e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 275
    iget v0, p0, Lc8/gBb;->mWinSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc8/gBb;->mWinSize:I

    .line 276
    iget v0, p0, Lc8/gBb;->mWinSize:I

    if-gtz v0, :cond_1

    .line 277
    iput v4, p0, Lc8/gBb;->mWinSize:I

    .line 278
    iput v3, p0, Lc8/gBb;->mFactor:I

    .line 282
    :cond_0
    :goto_0
    const-string/jumbo v0, "UploadLogFromDB"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "winsize"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget v3, p0, Lc8/gBb;->mWinSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    return-void

    .line 279
    :cond_1
    iget v0, p0, Lc8/gBb;->mWinSize:I

    if-le v0, v1, :cond_0

    .line 280
    iput v1, p0, Lc8/gBb;->mWinSize:I

    goto :goto_0
.end method

.method private uploadEventLog()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 75
    invoke-static {}, Lc8/NBb;->d()V

    .line 76
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lc8/yAb;->isConnectInternet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    sget-object v4, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iget-object v5, p0, Lc8/gBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lc8/gBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {p0}, Lc8/gBb;->getNetworkStatus()Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 80
    const-string/jumbo v4, "network not match,return"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "current networkstatus"

    aput-object v6, v5, v8

    invoke-virtual {p0}, Lc8/gBb;->getNetworkStatus()Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string/jumbo v7, "mAllowedNetworkStatus"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lc8/gBb;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-boolean v4, p0, Lc8/gBb;->bRunning:Z

    if-nez v4, :cond_0

    .line 84
    iput-boolean v7, p0, Lc8/gBb;->bRunning:Z

    .line 90
    const-wide/16 v4, 0x0

    :try_start_0
    iput-wide v4, p0, Lc8/gBb;->mUploadCount:J

    .line 91
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lc8/QBb;->lock(Landroid/content/Context;)Z

    move-result v1

    .line 92
    .local v1, "lock":Z
    if-nez v1, :cond_3

    .line 93
    const-string/jumbo v4, "UploadLogFromDB"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "Other Process is Uploading, break"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iput-boolean v8, p0, Lc8/gBb;->bRunning:Z

    .line 118
    invoke-static {}, Lc8/QBb;->release()V

    goto :goto_0

    .line 96
    :cond_3
    :try_start_1
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v4

    invoke-direct {p0}, Lc8/gBb;->getLogCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lc8/TAb;->get(I)Ljava/util/List;

    move-result-object v2

    .line 97
    .local v2, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 98
    :cond_4
    const-string/jumbo v4, ""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "logs is null"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const/4 v4, 0x0

    iput-boolean v4, p0, Lc8/gBb;->bRunning:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    iput-boolean v8, p0, Lc8/gBb;->bRunning:Z

    .line 118
    invoke-static {}, Lc8/QBb;->release()V

    goto/16 :goto_0

    .line 103
    :cond_5
    :try_start_2
    invoke-direct {p0, v2}, Lc8/gBb;->uploadLogs(Ljava/util/List;)Z

    move-result v3

    .line 104
    .local v3, "suspendUploadLogs":Z
    if-eqz v3, :cond_6

    .line 105
    iget v4, p0, Lc8/gBb;->mMaxUploadTimes:I

    iput v4, p0, Lc8/gBb;->mUploadIndex:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :goto_1
    iput-boolean v8, p0, Lc8/gBb;->bRunning:Z

    .line 118
    invoke-static {}, Lc8/QBb;->release()V

    goto/16 :goto_0

    .line 107
    :cond_6
    :try_start_3
    iget v4, p0, Lc8/gBb;->mUploadIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lc8/gBb;->mUploadIndex:I

    .line 108
    iget v4, p0, Lc8/gBb;->mUploadIndex:I

    if-lez v4, :cond_7

    .line 109
    invoke-static {}, Lc8/oBb;->getInstance()Lc8/oBb;

    move-result-object v4

    const-string/jumbo v5, "i"

    invoke-virtual {v4, v5}, Lc8/oBb;->add(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 114
    .end local v1    # "lock":Z
    .end local v2    # "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    .end local v3    # "suspendUploadLogs":Z
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_4
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    iput-boolean v8, p0, Lc8/gBb;->bRunning:Z

    .line 118
    invoke-static {}, Lc8/QBb;->release()V

    goto/16 :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "lock":Z
    .restart local v2    # "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    .restart local v3    # "suspendUploadLogs":Z
    :cond_7
    :try_start_5
    iget v4, p0, Lc8/gBb;->mMaxUploadTimes:I

    iput v4, p0, Lc8/gBb;->mUploadIndex:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 117
    .end local v1    # "lock":Z
    .end local v2    # "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    .end local v3    # "suspendUploadLogs":Z
    :catchall_0
    move-exception v4

    iput-boolean v8, p0, Lc8/gBb;->bRunning:Z

    .line 118
    invoke-static {}, Lc8/QBb;->release()V

    throw v4
.end method

.method private uploadLogs(Ljava/util/List;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    invoke-static {}, Lc8/NBb;->d()V

    .line 125
    invoke-virtual/range {p0 .. p1}, Lc8/gBb;->buildEventRequestMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v14

    .line 126
    .local v14, "postDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v15

    if-nez v15, :cond_1

    .line 127
    :cond_0
    const-string/jumbo v15, ""

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "postDataMap is null"

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lc8/gBb;->bRunning:Z

    .line 129
    const/4 v15, 0x1

    .line 193
    :goto_0
    return v15

    .line 131
    :cond_1
    const/4 v13, 0x0

    .line 133
    .local v13, "packRequest":[B
    :try_start_0
    invoke-static {v14}, Lc8/UAb;->getPackRequest(Ljava/util/Map;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 137
    :goto_1
    if-nez v13, :cond_2

    .line 138
    invoke-direct/range {p0 .. p0}, Lc8/gBb;->reduceWindowSize()V

    .line 139
    const/4 v15, 0x0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v9

    .line 135
    .local v9, "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 141
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 143
    .local v16, "start":J
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v15

    invoke-virtual {v15}, Lc8/uzb;->isHttpService()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 144
    invoke-static {v13}, Lc8/qBb;->sendRequest([B)Lc8/VAb;

    move-result-object v5

    .line 148
    .local v5, "bizResponse":Lc8/VAb;
    :goto_2
    invoke-virtual {v5}, Lc8/VAb;->isSuccess()Z

    move-result v12

    .line 149
    .local v12, "isSendSuccess":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 151
    .local v18, "uploadEnd":J
    sub-long v6, v18, v16

    .line 152
    .local v6, "consumeTime":J
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6, v7}, Lc8/gBb;->calPackPackageWindowSize(Ljava/lang/Boolean;J)I

    .line 153
    if-eqz v12, :cond_5

    .line 154
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v15

    invoke-virtual {v15}, Lc8/uzb;->turnOnSelfMonitor()V

    .line 155
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lc8/gBb;->hasSuccess:Z

    .line 156
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lc8/gBb;->mTNetFailTimes:I

    .line 157
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lc8/TAb;->delete(Ljava/util/List;)I

    move-result v8

    .line 158
    .local v8, "deleteCount":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/gBb;->mUploadCount:J

    move-wide/from16 v20, v0

    int-to-long v0, v8

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/gBb;->mUploadCount:J

    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/gBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v20, Lc8/JAb;->UPLOAD_TRAFFIC:I

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/gBb;->mUploadByteSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    .line 161
    :try_start_1
    iget-object v15, v5, Lc8/VAb;->data:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lc8/gBb;->parserConfig(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 186
    .end local v8    # "deleteCount":I
    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 187
    .local v10, "deleteEnd":J
    const-string/jumbo v15, ""

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "isSendSuccess"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "upload log count"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string/jumbo v22, "upload consume"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    sub-long v22, v18, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    const-string/jumbo v22, "delete consume"

    aput-object v22, v20, v21

    const/16 v21, 0x7

    sub-long v22, v10, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    const-wide/16 v20, 0x64

    :try_start_2
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 193
    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 146
    .end local v5    # "bizResponse":Lc8/VAb;
    .end local v6    # "consumeTime":J
    .end local v10    # "deleteEnd":J
    .end local v12    # "isSendSuccess":Z
    .end local v18    # "uploadEnd":J
    :cond_4
    invoke-static {v13}, Lc8/dBb;->sendRequest([B)Lc8/VAb;

    move-result-object v5

    .restart local v5    # "bizResponse":Lc8/VAb;
    goto/16 :goto_2

    .line 166
    .restart local v6    # "consumeTime":J
    .restart local v12    # "isSendSuccess":Z
    .restart local v18    # "uploadEnd":J
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lc8/gBb;->mTNetFailTimes:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lc8/gBb;->mTNetFailTimes:I

    .line 167
    move-object/from16 v0, p0

    iget v15, v0, Lc8/gBb;->mTNetFailTimes:I

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v15, v0, :cond_6

    .line 168
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v15

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lc8/uzb;->setHttpService(Z)V

    .line 169
    const-string/jumbo v15, ""

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "setHttpService"

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 173
    :cond_6
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v15

    invoke-virtual {v15}, Lc8/uzb;->isSelfMonitorTurnOn()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 174
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/gBb;->hasSuccess:Z

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lc8/gBb;->mTNetFailTimes:I

    const/16 v20, 0xa

    move/from16 v0, v20

    if-gt v15, v0, :cond_7

    .line 175
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v4, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v15, "rt"

    iget-wide v0, v5, Lc8/VAb;->rt:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v15, "pSize"

    move-object/from16 v0, p0

    iget v0, v0, Lc8/gBb;->mUploadByteSize:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v15, "errCode"

    iget v0, v5, Lc8/VAb;->errCode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v15, "type"

    const-string/jumbo v20, "1"

    move-object/from16 v0, v20

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/gBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v20, Lc8/JAb;->UPLOAD_FAILED:I

    invoke-static {v4}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    goto/16 :goto_3

    .line 182
    .end local v4    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v15

    invoke-virtual {v15}, Lc8/uzb;->turnOffSelfMonitor()V

    goto/16 :goto_3

    .line 190
    .restart local v10    # "deleteEnd":J
    :catch_1
    move-exception v9

    .line 191
    .local v9, "e":Ljava/lang/Throwable;
    const/4 v15, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v15, v9, v0}, Lc8/NBb;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 165
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "deleteEnd":J
    .restart local v8    # "deleteCount":I
    :catch_2
    move-exception v15

    goto/16 :goto_3
.end method


# virtual methods
.method public buildEventRequestMap(Ljava/util/List;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_1

    .line 198
    :cond_0
    const/4 v8, 0x0

    .line 263
    :goto_0
    return-object v8

    .line 200
    :cond_1
    const/4 v11, 0x0

    .line 201
    .local v11, "totalUploadSize":I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v10, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/StringBuilder;>;"
    const/4 v2, 0x0

    .line 203
    .local v2, "delayLogs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    const/4 v7, 0x0

    .line 205
    .local v7, "priorityLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/analytics/core/model/Log;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_7

    .line 206
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/tAb;

    .line 208
    .local v6, "log":Lc8/tAb;
    const/high16 v14, 0x500000

    if-le v11, v14, :cond_2

    .line 209
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lc8/gBb;->addToDelayList(Ljava/util/List;Lc8/tAb;)Ljava/util/List;

    move-result-object v2

    .line 210
    const-string/jumbo v14, "log delay to upload because totalUploadSize Exceed"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "log"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v6, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "totalUploadSize"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 214
    :cond_2
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v14

    invoke-virtual {v6}, Lc8/tAb;->getContent()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/mAb;->disassemble(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v14, v15}, Lc8/zzb;->checkDelayLog(Ljava/util/Map;)Z

    move-result v1

    .line 216
    .local v1, "delay":Z
    if-eqz v1, :cond_5

    .line 217
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lc8/gBb;->addToDelayList(Ljava/util/List;Lc8/tAb;)Ljava/util/List;

    move-result-object v2

    .line 219
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc8/tAb;

    iget-object v14, v14, Lc8/tAb;->priority:Ljava/lang/String;

    const-string/jumbo v15, "3"

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_4

    .line 220
    if-nez v7, :cond_3

    .line 221
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "priorityLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/analytics/core/model/Log;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .restart local v7    # "priorityLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/analytics/core/model/Log;>;"
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_4
    const-string/jumbo v14, "log delay to upload because delay config"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "log"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v6, v15, v16

    invoke-static {v14, v15}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 229
    :cond_5
    iget-object v14, v6, Lc8/tAb;->eventId:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/StringBuilder;

    .line 230
    .local v13, "vBuilder":Ljava/lang/StringBuilder;
    if-nez v13, :cond_6

    .line 231
    new-instance v13, Ljava/lang/StringBuilder;

    .end local v13    # "vBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .restart local v13    # "vBuilder":Ljava/lang/StringBuilder;
    iget-object v14, v6, Lc8/tAb;->eventId:Ljava/lang/String;

    invoke-virtual {v10, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc8/tAb;

    invoke-virtual {v14}, Lc8/tAb;->getContent()Ljava/lang/String;

    move-result-object v12

    .line 238
    .local v12, "uploadContent":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v11, v14

    goto :goto_2

    .line 234
    .end local v12    # "uploadContent":Ljava/lang/String;
    :cond_6
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 243
    .end local v1    # "delay":Z
    .end local v6    # "log":Lc8/tAb;
    .end local v13    # "vBuilder":Ljava/lang/StringBuilder;
    :cond_7
    if-eqz v2, :cond_8

    .line 244
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 246
    :cond_8
    if-eqz v7, :cond_a

    .line 247
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_9

    .line 248
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc8/tAb;

    const-string/jumbo v15, "2"

    iput-object v15, v14, Lc8/tAb;->priority:Ljava/lang/String;

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 250
    :cond_9
    invoke-static {}, Lc8/TAb;->getInstance()Lc8/TAb;

    move-result-object v14

    invoke-virtual {v14, v7}, Lc8/TAb;->updateLogPriority(Ljava/util/List;)V

    .line 253
    :cond_a
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v8, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iput v11, v0, Lc8/gBb;->mUploadByteSize:I

    .line 255
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 256
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, "str":Ljava/lang/String;
    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 259
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    :cond_b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_c

    .line 260
    move-object/from16 v0, p0

    iget v14, v0, Lc8/gBb;->mUploadByteSize:I

    int-to-float v14, v14

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lc8/gBb;->mAveragePackageSize:F

    .line 262
    :cond_c
    const-string/jumbo v14, "UploadLogFromDB"

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "averagePackageSize"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lc8/gBb;->mAveragePackageSize:F

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "mUploadByteSize"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lc8/gBb;->mUploadByteSize:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string/jumbo v17, "count"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public hasSuccess()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lc8/gBb;->hasSuccess:Z

    return v0
.end method

.method public upload()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 55
    invoke-static {}, Lc8/NBb;->d()V

    .line 57
    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/uzb;->isAllServiceClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-direct {p0}, Lc8/gBb;->uploadEventLog()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    :try_start_1
    iget-object v2, p0, Lc8/gBb;->mIUploadExcuted:Lc8/XAb;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lc8/gBb;->mIUploadExcuted:Lc8/XAb;

    iget-wide v4, p0, Lc8/gBb;->mUploadCount:J

    invoke-interface {v2, v4, v5}, Lc8/XAb;->onUploadExcuted(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :cond_0
    :goto_1
    return-void

    .line 60
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "isAllServiceClosed"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 70
    .local v1, "throwable":Ljava/lang/Throwable;
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
