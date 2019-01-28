.class public Lc8/kwb;
.super Ljava/lang/Object;
.source "CachePerf.java"


# static fields
.field public static final FAIL_CODE_CACHE_PROCESS_CANCELED:Ljava/lang/String; = "-111113"

.field public static final FAIL_CODE_CACHE_PROCESS_ERROR:Ljava/lang/String; = "-111114"

.field public static final FAIL_CODE_PKG_REQUEST_FAIL:Ljava/lang/String; = "-111112"

.field public static final FAIL_CODE_PKG_SIZE:Ljava/lang/String; = "-111111"

.field public static final KEY_AVFS_CACHE_RATIO:Ljava/lang/String; = "cacheAVFSCacheRatio"

.field public static final KEY_JOIN_PKGS_TIME:Ljava/lang/String; = "cacheJoinPkgsTime"

.field public static final KEY_MEM_CACHERATIO:Ljava/lang/String; = "cacheMemRatio"

.field public static final KEY_NETWORK_RATIO:Ljava/lang/String; = "cacheNetworkRatio"

.field public static final KEY_PARSE_DEP_PKGS_TIME:Ljava/lang/String; = "cacheParseDepPkgsTime"

.field public static final KEY_PROCESS_CACHE_ALL_TIME:Ljava/lang/String; = "cacheProcessAllTime"

.field public static final KEY_REQUEST_ALL_PKGS_TIME:Ljava/lang/String; = "cacheRequestAllPkgsTime"

.field public static final KEY_REQUEST_NUMBER:Ljava/lang/String; = "cacheRequestNumber"

.field public static final KEY_ZCACHE_RATIO:Ljava/lang/String; = "cacheZcacheRatio"

.field private static final MONITOR_POINT_ALARM:Ljava/lang/String; = "PageCacheAlarm"

.field private static final MONITOR_POINT_STAT:Ljava/lang/String; = "PageCacheStat"

.field private static inited:Z

.field public static final keys:[Ljava/lang/String;

.field private static sInstance:Lc8/kwb;


# instance fields
.field public avfsCacheRatio:D

.field public joinPkgsTime:J

.field public memCacheRatio:D

.field public networkRatio:D

.field public pageName:Ljava/lang/String;

.field public parseDepPkgsTime:J

.field public processCacheAllTime:J

.field public requestAllPkgsTime:J

.field public requestNumber:I

.field public zcacheRatio:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "cacheParseDepPkgsTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "cacheRequestNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "cacheJoinPkgsTime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "cacheRequestAllPkgsTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "cacheProcessAllTime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "cacheMemRatio"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "cacheZcacheRatio"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "cacheNetworkRatio"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "cacheAVFSCacheRatio"

    aput-object v2, v0, v1

    sput-object v0, Lc8/kwb;->keys:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private cacheRatioStatistic(Lc8/kwb;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "cachePerf"    # Lc8/kwb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/kwb;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 159
    const/4 v3, 0x0

    .line 161
    .local v3, "pkgSize":I
    const/4 v4, 0x4

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 162
    .local v0, "hitCounter":[I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/lwb;

    .line 163
    .local v2, "item":Lc8/lwb;
    iget-object v5, v2, Lc8/lwb;->depInfos:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 164
    iget-object v5, v2, Lc8/lwb;->depInfos:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/aliweex/cache/Package$Info;

    .line 165
    .local v1, "info":Lcom/alibaba/aliweex/cache/Package$Info;
    const-string/jumbo v6, "memory"

    iget-object v7, v1, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    aget v6, v0, v9

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v9

    goto :goto_0

    .line 167
    :cond_1
    const-string/jumbo v6, "zcache"

    iget-object v7, v1, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 168
    aget v6, v0, v10

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v10

    goto :goto_0

    .line 169
    :cond_2
    const-string/jumbo v6, "avfs"

    iget-object v7, v1, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 170
    aget v6, v0, v12

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v12

    goto :goto_0

    .line 171
    :cond_3
    const-string/jumbo v6, "network"

    iget-object v7, v1, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 172
    aget v6, v0, v11

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v11

    goto :goto_0

    .line 174
    :cond_4
    const-string/jumbo v6, "Page_Cache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "info.from:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/alibaba/aliweex/cache/Package$Info;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    .end local v1    # "info":Lcom/alibaba/aliweex/cache/Package$Info;
    .end local v2    # "item":Lc8/lwb;
    :cond_5
    iput v3, p1, Lc8/kwb;->requestNumber:I

    .line 179
    if-lez v3, :cond_6

    .line 180
    aget v4, v0, v9

    int-to-double v4, v4

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, p1, Lc8/kwb;->memCacheRatio:D

    .line 181
    aget v4, v0, v10

    int-to-double v4, v4

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, p1, Lc8/kwb;->zcacheRatio:D

    .line 182
    aget v4, v0, v11

    int-to-double v4, v4

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, p1, Lc8/kwb;->networkRatio:D

    .line 183
    aget v4, v0, v12

    int-to-double v4, v4

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, p1, Lc8/kwb;->avfsCacheRatio:D

    .line 185
    :cond_6
    return-void

    .line 161
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static getInstance()Lc8/kwb;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lc8/kwb;->sInstance:Lc8/kwb;

    if-nez v0, :cond_1

    .line 67
    const-class v1, Lc8/kwb;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lc8/kwb;->sInstance:Lc8/kwb;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lc8/kwb;

    invoke-direct {v0}, Lc8/kwb;-><init>()V

    sput-object v0, Lc8/kwb;->sInstance:Lc8/kwb;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    sget-object v0, Lc8/kwb;->sInstance:Lc8/kwb;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public alarmRequestSuccess(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method

.method public commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "args"    # Ljava/lang/String;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string/jumbo v0, "weex"

    const-string/jumbo v1, "PageCacheAlarm"

    invoke-static {v0, v1, p1, p2, p3}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public commitStatWeexCache(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    invoke-virtual {p0}, Lc8/kwb;->init()V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-direct {p0, p0, p1}, Lc8/kwb;->cacheRatioStatistic(Lc8/kwb;Ljava/util/ArrayList;)V

    .line 134
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 135
    .local v0, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    iget-object v3, p0, Lc8/kwb;->pageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    iget-object v3, p0, Lc8/kwb;->pageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "pn":Ljava/lang/String;
    const-string/jumbo v3, "pageName"

    invoke-static {v2}, Lc8/Kyb;->handleUTPageNameScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 140
    .end local v2    # "pn":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 141
    .local v1, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v3, "cacheParseDepPkgsTime"

    iget-wide v4, p0, Lc8/kwb;->parseDepPkgsTime:J

    long-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 142
    const-string/jumbo v3, "cacheRequestNumber"

    iget v4, p0, Lc8/kwb;->requestNumber:I

    int-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 143
    const-string/jumbo v3, "cacheJoinPkgsTime"

    iget-wide v4, p0, Lc8/kwb;->joinPkgsTime:J

    long-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 144
    const-string/jumbo v3, "cacheRequestAllPkgsTime"

    iget-wide v4, p0, Lc8/kwb;->requestAllPkgsTime:J

    long-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 145
    const-string/jumbo v3, "cacheProcessAllTime"

    iget-wide v4, p0, Lc8/kwb;->processCacheAllTime:J

    long-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 146
    const-string/jumbo v3, "cacheMemRatio"

    iget-wide v4, p0, Lc8/kwb;->memCacheRatio:D

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 147
    const-string/jumbo v3, "cacheZcacheRatio"

    iget-wide v4, p0, Lc8/kwb;->zcacheRatio:D

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 148
    const-string/jumbo v3, "cacheNetworkRatio"

    iget-wide v4, p0, Lc8/kwb;->networkRatio:D

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 149
    const-string/jumbo v3, "cacheAVFSCacheRatio"

    iget-wide v4, p0, Lc8/kwb;->avfsCacheRatio:D

    invoke-virtual {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 151
    const-string/jumbo v3, "weex"

    const-string/jumbo v4, "PageCacheStat"

    invoke-static {v3, v4, v0, v1}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 153
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    const-string/jumbo v3, "Page_Cache"

    invoke-virtual {p0}, Lc8/kwb;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/kwb;->pageName:Ljava/lang/String;

    .line 93
    iput-wide v4, p0, Lc8/kwb;->parseDepPkgsTime:J

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lc8/kwb;->requestNumber:I

    .line 95
    iput-wide v4, p0, Lc8/kwb;->joinPkgsTime:J

    .line 96
    iput-wide v4, p0, Lc8/kwb;->requestAllPkgsTime:J

    .line 97
    iput-wide v4, p0, Lc8/kwb;->processCacheAllTime:J

    .line 98
    iput-wide v2, p0, Lc8/kwb;->memCacheRatio:D

    .line 99
    iput-wide v2, p0, Lc8/kwb;->zcacheRatio:D

    .line 100
    iput-wide v2, p0, Lc8/kwb;->networkRatio:D

    .line 101
    iput-wide v2, p0, Lc8/kwb;->avfsCacheRatio:D

    .line 102
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    .line 77
    sget-boolean v3, Lc8/kwb;->inited:Z

    if-nez v3, :cond_1

    .line 78
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 79
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v3, "pageName"

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 81
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 82
    .local v2, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    sget-object v4, Lc8/kwb;->keys:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 83
    .local v1, "m":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-direct {v6, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "m":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "weex"

    const-string/jumbo v4, "PageCacheStat"

    invoke-static {v3, v4, v2, v0}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 87
    const/4 v3, 0x1

    sput-boolean v3, Lc8/kwb;->inited:Z

    .line 89
    .end local v0    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v2    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "msg":Ljava/lang/StringBuilder;
    sget-object v4, Lc8/kwb;->keys:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 108
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v6, "=%s "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p0, Lc8/kwb;->parseDepPkgsTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    iget v5, p0, Lc8/kwb;->requestNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    iget-wide v6, p0, Lc8/kwb;->joinPkgsTime:J

    .line 112
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    iget-wide v6, p0, Lc8/kwb;->requestAllPkgsTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    iget-wide v6, p0, Lc8/kwb;->processCacheAllTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    iget-wide v6, p0, Lc8/kwb;->memCacheRatio:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x6

    iget-wide v6, p0, Lc8/kwb;->zcacheRatio:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x7

    iget-wide v6, p0, Lc8/kwb;->networkRatio:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0x8

    iget-wide v6, p0, Lc8/kwb;->avfsCacheRatio:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v3

    .line 111
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
