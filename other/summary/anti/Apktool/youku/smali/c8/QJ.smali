.class public Lc8/QJ;
.super Ljava/lang/Object;
.source "BandWidthListenerHelper.java"


# static fields
.field private static volatile bandWidthListenerHelper:Lc8/QJ;


# instance fields
.field private defaultFilter:Lc8/XJ;

.field private qualityListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/VJ;",
            "Lc8/XJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/QJ;->qualityListeners:Ljava/util/Map;

    .line 16
    new-instance v0, Lc8/XJ;

    invoke-direct {v0}, Lc8/XJ;-><init>()V

    iput-object v0, p0, Lc8/QJ;->defaultFilter:Lc8/XJ;

    .line 19
    return-void
.end method

.method public static getInstance()Lc8/QJ;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lc8/QJ;->bandWidthListenerHelper:Lc8/QJ;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lc8/QJ;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lc8/QJ;->bandWidthListenerHelper:Lc8/QJ;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lc8/QJ;

    invoke-direct {v0}, Lc8/QJ;-><init>()V

    sput-object v0, Lc8/QJ;->bandWidthListenerHelper:Lc8/QJ;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lc8/QJ;->bandWidthListenerHelper:Lc8/QJ;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addQualityChangeListener(Lc8/VJ;Lc8/XJ;)V
    .locals 4
    .param p1, "listener"    # Lc8/VJ;
    .param p2, "filter"    # Lc8/XJ;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    const-string/jumbo v0, "BandWidthListenerHelp"

    const-string/jumbo v1, "listener is null"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    if-nez p2, :cond_1

    .line 38
    iget-object v0, p0, Lc8/QJ;->defaultFilter:Lc8/XJ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/XJ;->filterAddTime:J

    .line 39
    iget-object v0, p0, Lc8/QJ;->qualityListeners:Ljava/util/Map;

    iget-object v1, p0, Lc8/QJ;->defaultFilter:Lc8/XJ;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lc8/XJ;->filterAddTime:J

    .line 42
    iget-object v0, p0, Lc8/QJ;->qualityListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onNetworkSpeedValueNotify(D)V
    .locals 7
    .param p1, "speed"    # D

    .prologue
    .line 51
    iget-object v6, p0, Lc8/QJ;->qualityListeners:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lanet/channel/monitor/INetworkQualityChangeListener;Lanet/channel/monitor/QualityChangeFilter;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/VJ;

    .line 53
    .local v4, "listener":Lc8/VJ;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/XJ;

    .line 55
    .local v1, "filter":Lc8/XJ;
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Lc8/XJ;->checkShouldDelay()Z

    move-result v6

    if-nez v6, :cond_0

    .line 61
    invoke-virtual {v1, p1, p2}, Lc8/XJ;->detectNetSpeedSlow(D)Z

    move-result v3

    .line 62
    .local v3, "isNetSlow":Z
    invoke-virtual {v1}, Lc8/XJ;->isNetSpeedSlow()Z

    move-result v6

    if-eq v6, v3, :cond_0

    .line 63
    invoke-virtual {v1, v3}, Lc8/XJ;->setNetSpeedSlow(Z)V

    .line 64
    if-eqz v3, :cond_1

    sget-object v5, Lanet/channel/monitor/NetworkSpeed;->Slow:Lanet/channel/monitor/NetworkSpeed;

    .line 65
    .local v5, "networkSpeed":Lanet/channel/monitor/NetworkSpeed;
    :goto_1
    invoke-interface {v4, v5}, Lc8/VJ;->onNetworkQualityChanged(Lanet/channel/monitor/NetworkSpeed;)V

    goto :goto_0

    .line 64
    .end local v5    # "networkSpeed":Lanet/channel/monitor/NetworkSpeed;
    :cond_1
    sget-object v5, Lanet/channel/monitor/NetworkSpeed;->Fast:Lanet/channel/monitor/NetworkSpeed;

    goto :goto_1

    .line 68
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lanet/channel/monitor/INetworkQualityChangeListener;Lanet/channel/monitor/QualityChangeFilter;>;"
    .end local v1    # "filter":Lc8/XJ;
    .end local v3    # "isNetSlow":Z
    .end local v4    # "listener":Lc8/VJ;
    :cond_2
    return-void
.end method
