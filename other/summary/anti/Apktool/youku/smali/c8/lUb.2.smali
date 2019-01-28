.class public Lc8/lUb;
.super Ljava/lang/Object;
.source "MotuTransaction.java"


# instance fields
.field private mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

.field private name:Ljava/lang/String;

.field private videoInfo:Lc8/jUb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc8/jUb;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Lc8/jUb;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lc8/lUb;->videoInfo:Lc8/jUb;

    .line 22
    iput-object v0, p0, Lc8/lUb;->name:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    iput-object v0, p0, Lc8/lUb;->mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 30
    iput-object p1, p0, Lc8/lUb;->name:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lc8/lUb;->videoInfo:Lc8/jUb;

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized addSegment(Ljava/lang/String;D)V
    .locals 2
    .param p1, "segment"    # Ljava/lang/String;
    .param p2, "duration"    # D

    .prologue
    .line 41
    monitor-enter p0

    if-nez p1, :cond_0

    .line 43
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc8/lUb;->mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit()V
    .locals 10

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lc8/lUb;->mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 77
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 51
    :cond_1
    :try_start_1
    iget-object v6, p0, Lc8/lUb;->videoInfo:Lc8/jUb;

    if-eqz v6, :cond_0

    .line 52
    iget-object v6, p0, Lc8/lUb;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 54
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    .line 55
    .local v5, "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    iget-object v6, p0, Lc8/lUb;->mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v3

    .line 56
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;>;"
    if-eqz v3, :cond_2

    .line 57
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 58
    .local v4, "measure":Ljava/lang/String;
    invoke-virtual {v5, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 59
    const-string/jumbo v6, "register"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "measure"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 50
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;>;"
    .end local v4    # "measure":Ljava/lang/String;
    .end local v5    # "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 63
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;>;"
    .restart local v5    # "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 64
    .local v0, "ds":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v6, "mediaType"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 65
    const-string/jumbo v6, "videoWidth"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 66
    const-string/jumbo v6, "videoHeight"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 67
    const-string/jumbo v6, "videoCode"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 68
    const-string/jumbo v6, "screenSize"

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 70
    const-string/jumbo v6, "vpm"

    iget-object v7, p0, Lc8/lUb;->name:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v6, v7, v5, v0, v8}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 71
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 72
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    iget-object v6, p0, Lc8/lUb;->videoInfo:Lc8/jUb;

    invoke-virtual {v6}, Lc8/jUb;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setMap(Ljava/util/Map;)V

    .line 73
    const-string/jumbo v6, "vpm"

    iget-object v7, p0, Lc8/lUb;->name:Ljava/lang/String;

    iget-object v8, p0, Lc8/lUb;->mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {v6, v7, v1, v8}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 74
    const/4 v6, 0x0

    iput-object v6, p0, Lc8/lUb;->mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 75
    const/4 v6, 0x0

    iput-object v6, p0, Lc8/lUb;->videoInfo:Lc8/jUb;

    .line 76
    const/4 v6, 0x0

    iput-object v6, p0, Lc8/lUb;->name:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
