.class public Lcom/taobao/accs/ut/monitor/TrafficsMonitor;
.super Ljava/lang/Object;
.source "TrafficsMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;,
        Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;
    }
.end annotation


# static fields
.field private static final CACHE_COUNT:I = 0xa

.field private static final DIMENSION_BIZID:Ljava/lang/String; = "bizId"

.field private static final DIMENSION_DATE:Ljava/lang/String; = "date"

.field private static final DIMENSION_HOST:Ljava/lang/String; = "host"

.field private static final DIMENSION_ISBACKGROUND:Ljava/lang/String; = "isBackground"

.field private static final MEASURE_SIZE:Ljava/lang/String; = "size"

.field private static final MODULE:Ljava/lang/String; = "NetworkSDK"

.field private static final MONITOR_POINT:Ljava/lang/String; = "TrafficStats"

.field private static final TAG:Ljava/lang/String; = "TrafficsMonitor"


# instance fields
.field private bidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private lastSaveDay:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private trafficMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->trafficMap:Ljava/util/Map;

    .line 33
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;-><init>(Lcom/taobao/accs/ut/monitor/TrafficsMonitor;)V

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->bidMap:Ljava/util/Map;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->count:I

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->lastSaveDay:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private commit()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 163
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/statistics/DBHelper;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/statistics/DBHelper;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/taobao/accs/statistics/DBHelper;->getTraffics(Z)Ljava/util/List;

    move-result-object v3

    .line 165
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    if-nez v3, :cond_0

    .line 189
    :goto_0
    return-void

    .line 170
    :cond_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    .line 171
    .local v2, "info":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;
    if-eqz v2, :cond_1

    .line 173
    new-instance v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;

    invoke-direct {v4}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;-><init>()V

    .line 174
    .local v4, "monitor":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;
    iget-object v5, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->bid:Ljava/lang/String;

    iput-object v5, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->bizId:Ljava/lang/String;

    .line 175
    iget-object v5, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->date:Ljava/lang/String;

    iput-object v5, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->date:Ljava/lang/String;

    .line 176
    iget-object v5, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->host:Ljava/lang/String;

    iput-object v5, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->host:Ljava/lang/String;

    .line 177
    iget-boolean v5, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->isBackground:Z

    iput-boolean v5, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->isBackground:Z

    .line 178
    iget-wide v6, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->trafficSize:J

    iput-wide v6, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->size:J

    .line 180
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v5

    invoke-interface {v5, v4}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 184
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;
    .end local v4    # "monitor":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, ""

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/statistics/DBHelper;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/statistics/DBHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/accs/statistics/DBHelper;->clearTraffics()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private saveTraffics()V
    .locals 18

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->trafficMap:Ljava/util/Map;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 103
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/taobao/accs/utl/UtilityImpl;->formatDay(J)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "currDay":Ljava/lang/String;
    move-object v10, v2

    .line 105
    .local v10, "savetoDay":Ljava/lang/String;
    const/16 v16, 0x0

    .line 106
    .local v16, "needCommit":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->lastSaveDay:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->lastSaveDay:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->lastSaveDay:Ljava/lang/String;

    .line 108
    const/16 v16, 0x1

    .line 111
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->trafficMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 112
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->trafficMap:Ljava/util/Map;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 113
    .local v14, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    .line 114
    .local v13, "info":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;
    if-eqz v13, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/statistics/DBHelper;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/statistics/DBHelper;

    move-result-object v3

    iget-object v4, v13, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->host:Ljava/lang/String;

    iget-object v5, v13, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->serviceId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->bidMap:Ljava/util/Map;

    iget-object v7, v13, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->serviceId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-boolean v7, v13, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->isBackground:Z

    iget-wide v8, v13, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->trafficSize:J

    invoke-virtual/range {v3 .. v10}, Lcom/taobao/accs/statistics/DBHelper;->onTraffics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v2    # "currDay":Ljava/lang/String;
    .end local v10    # "savetoDay":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "info":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;
    .end local v14    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "needCommit":Z
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 121
    .restart local v2    # "currDay":Ljava/lang/String;
    .restart local v10    # "savetoDay":Ljava/lang/String;
    .restart local v16    # "needCommit":Z
    :cond_3
    :try_start_1
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    const-string/jumbo v3, "TrafficsMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "savetoDay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " saveTraffics"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->trafficMap:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_4
    if-eqz v16, :cond_6

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->trafficMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->commit()V

    .line 135
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->lastSaveDay:Ljava/lang/String;

    .line 136
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->count:I

    .line 139
    monitor-exit v17

    return-void

    .line 130
    :cond_6
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    const-string/jumbo v3, "TrafficsMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no need commit lastsaveDay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->lastSaveDay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " currday:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public addTrafficInfo(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;)V
    .locals 12
    .param p1, "info"    # Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    .prologue
    .line 60
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->host:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-wide v6, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->trafficSize:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 61
    iget-object v5, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->serviceId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "accsSelf"

    :goto_0
    iput-object v5, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->serviceId:Ljava/lang/String;

    .line 62
    iget-object v6, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->trafficMap:Ljava/util/Map;

    monitor-enter v6

    .line 63
    :try_start_0
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->bidMap:Ljava/util/Map;

    iget-object v7, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->serviceId:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v0    # "bid":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 61
    :cond_1
    iget-object v5, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->serviceId:Ljava/lang/String;

    goto :goto_0

    .line 67
    .restart local v0    # "bid":Ljava/lang/String;
    :cond_2
    :try_start_1
    iput-object v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->bid:Ljava/lang/String;

    .line 68
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    const-string/jumbo v5, "TrafficsMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "addTrafficInfo count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->count:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_3
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->trafficMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 72
    .local v4, "traffics":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    if-eqz v4, :cond_7

    .line 73
    const/4 v2, 0x1

    .line 74
    .local v2, "needAdd":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    .line 75
    .local v3, "traf":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;
    iget-boolean v5, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->isBackground:Z

    iget-boolean v7, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->isBackground:Z

    if-ne v5, v7, :cond_4

    iget-object v5, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->host:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->host:Ljava/lang/String;

    iget-object v7, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->host:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 78
    iget-wide v8, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->trafficSize:J

    iget-wide v10, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->trafficSize:J

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;->trafficSize:J

    .line 79
    const/4 v2, 0x0

    .line 83
    .end local v3    # "traf":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;
    :cond_5
    if-eqz v2, :cond_6

    .line 84
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "needAdd":Z
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->trafficMap:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->count:I

    .line 92
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    iget v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->count:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->saveTraffics()V

    goto/16 :goto_1

    .line 87
    :cond_7
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "traffics":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .restart local v4    # "traffics":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 92
    .end local v0    # "bid":Ljava/lang/String;
    .end local v4    # "traffics":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public restoreTraffics()V
    .locals 7

    .prologue
    .line 145
    :try_start_0
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->trafficMap:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    iget-object v4, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->trafficMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 147
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    iget-object v4, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/statistics/DBHelper;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/statistics/DBHelper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/taobao/accs/statistics/DBHelper;->getTraffics(Z)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 150
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    if-nez v3, :cond_1

    .line 159
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 147
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "TrafficsMonitor"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;>;"
    :cond_1
    :try_start_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;

    .line 154
    .local v2, "info":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;
    invoke-virtual {p0, v2}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->addTrafficInfo(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$TrafficInfo;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method
