.class public abstract Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:J

.field protected b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x3b9aca00

    iput-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;->a:J

    return-void
.end method

.method public static getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkTime(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;->a:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDimensionValues()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;->initDimension()V

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;->getDimensionValues()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract getMeasureValues()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
.end method

.method public abstract getMonitorPoint()Ljava/lang/String;
.end method

.method public initDimension()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;

    :cond_0
    return-void
.end method

.method public abstract timeBegin(Ljava/lang/String;)V
.end method

.method public abstract timeEnd(Ljava/lang/String;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PerformancePoint{dimension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/dimension/Dimension;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
