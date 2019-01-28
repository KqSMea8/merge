.class public Lc8/XDb;
.super Lc8/YDb;
.source "DurationEvent.java"


# static fields
.field private static final DEFAULT_TIMEOUT:Ljava/lang/Long;

.field private static final TAG:Ljava/lang/String; = "DurationEvent"


# instance fields
.field private dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

.field private initTime:Ljava/lang/Long;

.field private measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

.field private metric:Lc8/jEb;

.field private undonePeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide/32 v0, 0x493e0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lc8/XDb;->DEFAULT_TIMEOUT:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lc8/YDb;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-super {p0}, Lc8/YDb;->clean()V

    .line 108
    iput-object v4, p0, Lc8/XDb;->metric:Lc8/jEb;

    .line 109
    iput-object v4, p0, Lc8/XDb;->initTime:Ljava/lang/Long;

    .line 110
    iget-object v2, p0, Lc8/XDb;->undonePeriod:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 111
    .local v1, "measureValue":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/vEb;->offer(Lc8/xEb;)V

    goto :goto_0

    .line 113
    .end local v1    # "measureValue":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    :cond_0
    iget-object v2, p0, Lc8/XDb;->undonePeriod:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 114
    iget-object v2, p0, Lc8/XDb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    if-eqz v2, :cond_1

    .line 115
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v2

    iget-object v3, p0, Lc8/XDb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v2, v3}, Lc8/vEb;->offer(Lc8/xEb;)V

    .line 116
    iput-object v4, p0, Lc8/XDb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 118
    :cond_1
    iget-object v2, p0, Lc8/XDb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-eqz v2, :cond_2

    .line 119
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v2

    iget-object v3, p0, Lc8/XDb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v2, v3}, Lc8/vEb;->offer(Lc8/xEb;)V

    .line 120
    iput-object v4, p0, Lc8/XDb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 122
    :cond_2
    return-void
.end method

.method public commitDimensionValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 1
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .prologue
    .line 90
    iget-object v0, p0, Lc8/XDb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-nez v0, :cond_0

    .line 91
    iput-object p1, p0, Lc8/XDb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lc8/XDb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->addValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_0
.end method

.method public end(Ljava/lang/String;)Z
    .locals 12
    .param p1, "measureName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 73
    iget-object v5, p0, Lc8/XDb;->undonePeriod:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 74
    .local v2, "value":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    if-eqz v2, :cond_0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 76
    .local v0, "curTime":J
    const-string/jumbo v5, "DurationEvent"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "statEvent consumeTime. module:"

    aput-object v7, v6, v4

    iget-object v7, p0, Lc8/XDb;->module:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x2

    const-string/jumbo v8, " monitorPoint:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lc8/XDb;->monitorPoint:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, " measureName:"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p1, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, " time:"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    long-to-double v8, v0

    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    long-to-double v6, v0

    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->setValue(D)V

    .line 79
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->setFinish(Z)V

    .line 80
    iget-object v5, p0, Lc8/XDb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v5, p1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 81
    iget-object v5, p0, Lc8/XDb;->metric:Lc8/jEb;

    invoke-virtual {v5}, Lc8/jEb;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    iget-object v6, p0, Lc8/XDb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->valid(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    .end local v0    # "curTime":J
    :goto_0
    return v3

    .line 85
    :cond_0
    const/4 v3, 0x0

    invoke-super {p0, v3}, Lc8/YDb;->commit(Ljava/lang/Long;)V

    move v3, v4

    .line 86
    goto :goto_0
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-super {p0, p1}, Lc8/YDb;->fill([Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lc8/XDb;->undonePeriod:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/XDb;->undonePeriod:Ljava/util/Map;

    .line 130
    :cond_0
    invoke-static {}, Lc8/kEb;->getRepo()Lc8/kEb;

    move-result-object v0

    iget-object v1, p0, Lc8/XDb;->module:Ljava/lang/String;

    iget-object v2, p0, Lc8/XDb;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/kEb;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lc8/jEb;

    move-result-object v0

    iput-object v0, p0, Lc8/XDb;->metric:Lc8/jEb;

    .line 131
    iget-object v0, p0, Lc8/XDb;->metric:Lc8/jEb;

    invoke-virtual {v0}, Lc8/jEb;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-object v0, p0, Lc8/XDb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 133
    iget-object v0, p0, Lc8/XDb;->metric:Lc8/jEb;

    invoke-virtual {v0}, Lc8/jEb;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    iget-object v1, p0, Lc8/XDb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->setConstantValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 135
    :cond_1
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    iput-object v0, p0, Lc8/XDb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 136
    return-void
.end method

.method public getDimensionValues()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lc8/XDb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    return-object v0
.end method

.method public getMeasureValues()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lc8/XDb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    return-object v0
.end method

.method public isExpired()Z
    .locals 14

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 36
    .local v0, "curTime":J
    iget-object v9, p0, Lc8/XDb;->metric:Lc8/jEb;

    invoke-virtual {v9}, Lc8/jEb;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->getMeasures()Ljava/util/List;

    move-result-object v7

    .line 37
    .local v7, "measures":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/appmonitor/model/Measure;>;"
    if-eqz v7, :cond_2

    .line 38
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 39
    .local v8, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_2

    .line 40
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 41
    .local v3, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getMax()Ljava/lang/Double;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getMax()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 43
    .local v4, "lifeTime":D
    :goto_1
    iget-object v9, p0, Lc8/XDb;->undonePeriod:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 44
    .local v6, "measureValue":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->isFinish()Z

    move-result v9

    if-nez v9, :cond_1

    .line 45
    long-to-double v10, v0

    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v12

    sub-double/2addr v10, v12

    cmpl-double v9, v10, v4

    if-lez v9, :cond_1

    .line 46
    const/4 v9, 0x1

    .line 53
    .end local v2    # "i":I
    .end local v3    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v4    # "lifeTime":D
    .end local v6    # "measureValue":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .end local v8    # "size":I
    :goto_2
    return v9

    .line 42
    .restart local v2    # "i":I
    .restart local v3    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .restart local v8    # "size":I
    :cond_0
    sget-object v9, Lc8/XDb;->DEFAULT_TIMEOUT:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-double v4, v10

    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "i":I
    .end local v3    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v8    # "size":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public start(Ljava/lang/String;)V
    .locals 10
    .param p1, "measureName"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    .local v0, "curTime":J
    iget-object v3, p0, Lc8/XDb;->undonePeriod:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lc8/XDb;->initTime:Ljava/lang/Long;

    .line 64
    :cond_0
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v3

    const-class v4, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lc8/XDb;->initTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v0, v8

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 65
    .local v2, "value":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    iget-object v3, p0, Lc8/XDb;->undonePeriod:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/4 v3, 0x0

    invoke-super {p0, v3}, Lc8/YDb;->commit(Ljava/lang/Long;)V

    .line 67
    return-void
.end method
