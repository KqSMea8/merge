.class public Lc8/cvb;
.super Ljava/lang/Object;
.source "PrefetchStatisticsTracker.java"


# static fields
.field static final MODULE_NAME:Ljava/lang/String; = "Aliweex_JSPrefetch"

.field private static final MONITOR_CACHE_HIT:Ljava/lang/String; = "cache_hit"

.field static final MONITOR_TASK_SUCCESS:Ljava/lang/String; = "task_success"

.field private static final MONITOR_TOTAL_CACHE_HIT:Ljava/lang/String; = "total_cache_hit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static shouldTrack()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 108
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v0

    .local v0, "adapter":Lc8/Hob;
    if-eqz v0, :cond_0

    .line 109
    const-string/jumbo v3, "aliweex_link_component"

    const-string/jumbo v4, "switch_status"

    const-string/jumbo v5, "on"

    invoke-interface {v0, v3, v4, v5}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "on"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 110
    .restart local v1    # "result":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static trackPrefetchCacheHitRatio(Ljava/lang/String;Lc8/nM;)V
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "event"    # Lc8/nM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v7, 0x130

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lc8/cvb;->shouldTrack()Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-object v5, Lc8/bvb;->shouldReport:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_2

    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 52
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{\"pageName\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "extendArgs":Ljava/lang/String;
    invoke-interface {p1}, Lc8/nM;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v4

    .local v4, "statisticData":Lanetwork/channel/statist/StatisticData;
    if-eqz v4, :cond_7

    .line 55
    iget v0, v4, Lanetwork/channel/statist/StatisticData;->resultCode:I

    .line 56
    .local v0, "actualStatusCode":I
    iget-object v1, v4, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 60
    .local v1, "connectionType":Ljava/lang/String;
    invoke-static {}, Lc8/bvb;->getPrefetchEntries()Ljava/util/Set;

    move-result-object v5

    invoke-static {p0, v5}, Lc8/bvb;->findAlikeEntryInCache(Ljava/lang/String;Ljava/util/Set;)Lc8/Wub;

    move-result-object v2

    .line 61
    .local v2, "entry":Lc8/Wub;
    if-nez v2, :cond_3

    .line 63
    const-string/jumbo v5, "Aliweex_JSPrefetch"

    const-string/jumbo v6, "cache_hit"

    const-string/jumbo v7, "-1"

    const-string/jumbo v8, "url_not_in_cache"

    invoke-static {v5, v6, v3, v7, v8}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "-1"

    aput-object v6, v5, v9

    const-string/jumbo v6, "url_not_in_cache"

    aput-object v6, v5, v10

    invoke-static {p0, v9, v5}, Lc8/cvb;->trackTotalCacheHitRatio(Ljava/lang/String;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "cache"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 67
    invoke-virtual {v2}, Lc8/Wub;->isFresh()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 69
    const-string/jumbo v5, "Aliweex_JSPrefetch"

    const-string/jumbo v6, "cache_hit"

    invoke-static {v5, v6, v3}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_4
    const-string/jumbo v5, "Aliweex_JSPrefetch"

    const-string/jumbo v6, "cache_hit"

    const-string/jumbo v7, "-3"

    const-string/jumbo v8, "exceed_max_age"

    invoke-static {v5, v6, v3, v7, v8}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "-3"

    aput-object v6, v5, v9

    const-string/jumbo v6, "exceed_max_age"

    aput-object v6, v5, v10

    invoke-static {p0, v9, v5}, Lc8/cvb;->trackTotalCacheHitRatio(Ljava/lang/String;Z[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :cond_5
    if-ne v0, v7, :cond_6

    .line 76
    const-string/jumbo v5, "Aliweex_JSPrefetch"

    const-string/jumbo v6, "cache_hit"

    invoke-static {v5, v6, v3}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-array v5, v9, [Ljava/lang/String;

    invoke-static {p0, v10, v5}, Lc8/cvb;->trackTotalCacheHitRatio(Ljava/lang/String;Z[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :cond_6
    const-string/jumbo v5, "Aliweex_JSPrefetch"

    const-string/jumbo v6, "cache_hit"

    const-string/jumbo v7, "-2"

    const-string/jumbo v8, "error_connection_type"

    invoke-static {v5, v6, v3, v7, v8}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "-2"

    aput-object v6, v5, v9

    const-string/jumbo v6, "error_connection_type"

    aput-object v6, v5, v10

    invoke-static {p0, v9, v5}, Lc8/cvb;->trackTotalCacheHitRatio(Ljava/lang/String;Z[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    .end local v0    # "actualStatusCode":I
    .end local v1    # "connectionType":Ljava/lang/String;
    .end local v2    # "entry":Lc8/Wub;
    :cond_7
    const-string/jumbo v5, "Aliweex_JSPrefetch"

    const-string/jumbo v6, "cache_hit"

    const-string/jumbo v7, "-4"

    const-string/jumbo v8, "unknown_error"

    invoke-static {v5, v6, v3, v7, v8}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "-4"

    aput-object v6, v5, v9

    const-string/jumbo v6, "unknown_error"

    aput-object v6, v5, v10

    invoke-static {p0, v9, v5}, Lc8/cvb;->trackTotalCacheHitRatio(Ljava/lang/String;Z[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static varargs trackTotalCacheHitRatio(Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "result"    # Z
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lc8/cvb;->shouldTrack()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\"pageName\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "extendArgs":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 98
    const-string/jumbo v1, "Aliweex_JSPrefetch"

    const-string/jumbo v2, "total_cache_hit"

    invoke-static {v1, v2, v0}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    array-length v1, p2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 101
    const-string/jumbo v1, "Aliweex_JSPrefetch"

    const-string/jumbo v2, "total_cache_hit"

    const/4 v3, 0x0

    aget-object v3, p2, v3

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-static {v1, v2, v0, v3, v4}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
