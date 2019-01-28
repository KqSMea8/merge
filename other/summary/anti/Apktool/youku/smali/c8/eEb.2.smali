.class public Lc8/eEb;
.super Lc8/YDb;
.source "RawStatEvent.java"

# interfaces
.implements Lc8/bEb;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

.field private measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/YDb;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0}, Lc8/YDb;->clean()V

    .line 70
    iget-object v0, p0, Lc8/eEb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v0

    iget-object v1, p0, Lc8/eEb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v0, v1}, Lc8/vEb;->offer(Lc8/xEb;)V

    .line 72
    iput-object v2, p0, Lc8/eEb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 74
    :cond_0
    iget-object v0, p0, Lc8/eEb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-eqz v0, :cond_1

    .line 75
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v0

    iget-object v1, p0, Lc8/eEb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v0, v1}, Lc8/vEb;->offer(Lc8/xEb;)V

    .line 76
    iput-object v2, p0, Lc8/eEb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 78
    :cond_1
    return-void
.end method

.method public dumpToUTEvent()Lc8/hEb;
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v1

    const-class v2, Lc8/hEb;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v0

    check-cast v0, Lc8/hEb;

    .line 52
    .local v0, "event":Lc8/hEb;
    iget v1, p0, Lc8/eEb;->eventId:I

    iput v1, v0, Lc8/hEb;->eventId:I

    .line 53
    iget-object v1, p0, Lc8/eEb;->module:Ljava/lang/String;

    iput-object v1, v0, Lc8/hEb;->page:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lc8/eEb;->monitorPoint:Ljava/lang/String;

    iput-object v1, v0, Lc8/hEb;->arg1:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lc8/eEb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lc8/eEb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/hEb;->arg2:Ljava/lang/String;

    .line 58
    :cond_0
    iget-object v1, p0, Lc8/eEb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lc8/eEb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/hEb;->arg3:Ljava/lang/String;

    .line 61
    :cond_1
    iget-object v1, p0, Lc8/eEb;->extraArg:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, v0, Lc8/hEb;->args:Ljava/util/Map;

    const-string/jumbo v2, "arg"

    iget-object v3, p0, Lc8/eEb;->extraArg:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    return-object v0
.end method

.method public getDimensionValues()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lc8/eEb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    return-object v0
.end method

.method public getMeasureValues()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lc8/eEb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    return-object v0
.end method

.method public setDimensionValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 3
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .prologue
    .line 34
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-object v0, p0, Lc8/eEb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 35
    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lc8/eEb;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setMap(Ljava/util/Map;)V

    .line 38
    :cond_0
    return-void
.end method

.method public setMeasureValues(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 3
    .param p1, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 45
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    iput-object v0, p0, Lc8/eEb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 46
    iget-object v0, p0, Lc8/eEb;->measureValues:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setMap(Ljava/util/Map;)V

    .line 47
    return-void
.end method
