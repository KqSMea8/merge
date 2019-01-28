.class public Lc8/MXe;
.super Ljava/lang/Object;
.source "AVFSSDKAppMonitorImpl.java"

# interfaces
.implements Lc8/HXe;


# static fields
.field private static final DIMENSION_CACHE:Ljava/lang/String; = "Cache"

.field private static final DIMENSION_HIT_MEMORY:Ljava/lang/String; = "HitMemory"

.field private static final DIMENSION_MEMORYCACHE:Ljava/lang/String; = "MemoryCache"

.field private static final DIMENSION_MODULE:Ljava/lang/String; = "Module"

.field private static final DIMENSION_OPERATION:Ljava/lang/String; = "Operation"

.field private static final MEASURE_DISK_COST:Ljava/lang/String; = "DiskCost"

.field private static final MODULE_NAME:Ljava/lang/String; = "AliVfsSDK"

.field private static final MONITOR_POINT_MEMORY_HIT_RATE:Ljava/lang/String; = "MemoryCacheHitRate"

.field private static final MONITOR_POINT_STAT_CACHE:Ljava/lang/String; = "Cache"

.field private static final TAG:Ljava/lang/String; = "AVFSSDKAppMonitorImpl"


# instance fields
.field private final mStatTable:Lc8/MVb;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v2, Lc8/MVb;

    const-string/jumbo v3, "AliVfsSDK"

    const-string/jumbo v4, "Cache"

    invoke-direct {v2, v3, v4}, Lc8/MVb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lc8/MXe;->mStatTable:Lc8/MVb;

    .line 57
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 58
    .local v1, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v2, "DiskCost"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 60
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 61
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v2, "Cache"

    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 62
    const-string/jumbo v2, "Module"

    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 63
    const-string/jumbo v2, "Operation"

    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 64
    const-string/jumbo v2, "HitMemory"

    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 65
    const-string/jumbo v2, "MemoryCache"

    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 67
    iget-object v2, p0, Lc8/MXe;->mStatTable:Lc8/MVb;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lc8/MVb;->registerRowAndColumn(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)Lc8/MVb;

    .line 68
    return-void
.end method

.method public static getCacheString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cache"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :sswitch_0
    const-string/jumbo v1, "file"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "sql"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "mmap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 132
    :pswitch_0
    const-string/jumbo v0, "FileCache"

    .line 136
    :goto_1
    return-object v0

    .line 134
    :pswitch_1
    const-string/jumbo v0, "SQLiteCache"

    goto :goto_1

    .line 136
    :pswitch_2
    const-string/jumbo v0, "MmapCache"

    goto :goto_1

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x1bdce -> :sswitch_1
        0x2ff57c -> :sswitch_0
        0x3331cf -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getMonitorPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cache"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lc8/MXe;->getCacheString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lc8/MXe;->getOperationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOperationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "operation"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :sswitch_0
    const-string/jumbo v1, "read"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "write"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :pswitch_0
    const-string/jumbo v0, "Read"

    .line 147
    :goto_1
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "Write"

    goto :goto_1

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0x355996 -> :sswitch_0
        0x6c257df -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public hitMemoryCacheForModule(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 72
    if-eqz p2, :cond_0

    .line 73
    const-string/jumbo v0, "AliVfsSDK"

    const-string/jumbo v1, "MemoryCacheHitRate"

    invoke-static {v0, v1, p1}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string/jumbo v0, "AliVfsSDK"

    const-string/jumbo v1, "MemoryCacheHitRate"

    invoke-static {v0, v1, p1, v2, v2}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeEvent(Lc8/LXe;)V
    .locals 8
    .param p1, "monitorCacheEvent"    # Lc8/LXe;

    .prologue
    .line 87
    :try_start_0
    iget-object v4, p1, Lc8/LXe;->cache:Ljava/lang/String;

    iget-object v5, p1, Lc8/LXe;->operation:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/MXe;->getMonitorPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "monitorPoint":Ljava/lang/String;
    iget v4, p1, Lc8/LXe;->errorCode:I

    if-nez v4, :cond_0

    .line 90
    const-string/jumbo v4, "AliVfsSDK"

    iget-object v5, p1, Lc8/LXe;->moduleName:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 96
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v4, "Cache"

    iget-object v5, p1, Lc8/LXe;->cache:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 97
    const-string/jumbo v4, "Module"

    iget-object v5, p1, Lc8/LXe;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 98
    const-string/jumbo v4, "Operation"

    iget-object v5, p1, Lc8/LXe;->operation:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 99
    const-string/jumbo v4, "HitMemory"

    iget-boolean v5, p1, Lc8/LXe;->hitMemory:Z

    .line 100
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 101
    const-string/jumbo v4, "MemoryCache"

    iget-boolean v5, p1, Lc8/LXe;->memoryCache:Z

    .line 102
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 106
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    .line 107
    .local v2, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v4, "DiskCost"

    iget-wide v6, p1, Lc8/LXe;->diskTime:J

    long-to-double v6, v6

    invoke-virtual {v2, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 108
    iget-object v4, p0, Lc8/MXe;->mStatTable:Lc8/MVb;

    invoke-virtual {v4, v0, v2}, Lc8/MVb;->update(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Lc8/MVb;

    .line 109
    const-string/jumbo v4, "AliVfsSDK"

    const-string/jumbo v5, "Cache"

    invoke-static {v4, v5, v0, v2}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 123
    .end local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v3    # "monitorPoint":Ljava/lang/String;
    :goto_0
    return-void

    .line 114
    .restart local v3    # "monitorPoint":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "AliVfsSDK"

    iget-object v5, p1, Lc8/LXe;->moduleName:Ljava/lang/String;

    iget v6, p1, Lc8/LXe;->errorCode:I

    .line 117
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lc8/LXe;->errorMessage:Ljava/lang/String;

    .line 114
    invoke-static {v4, v3, v5, v6, v7}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v3    # "monitorPoint":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "AVFSSDKAppMonitorImpl"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
