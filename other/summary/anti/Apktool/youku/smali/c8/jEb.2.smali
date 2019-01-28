.class public Lc8/jEb;
.super Lc8/Xzb;
.source "Metric.java"

# interfaces
.implements Lc8/xEb;


# annotations
.annotation runtime Lc8/fAb;
    value = "stat_register_temp"
.end annotation


# static fields
.field private static final SEPERATOR:Ljava/lang/String; = "$"
    .annotation runtime Lc8/eAb;
    .end annotation
.end field


# instance fields
.field private dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field private dimensions:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "dimensions"
    .end annotation
.end field

.field private extraArg:Ljava/lang/String;
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field private isCommitDetail:Z
    .annotation runtime Lc8/dAb;
        value = "is_commit_detail"
    .end annotation
.end field

.field private measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field private measures:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "measures"
    .end annotation
.end field

.field private module:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "module"
    .end annotation
.end field

.field private monitorPoint:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "monitor_point"
    .end annotation
.end field

.field private transactionId:Ljava/lang/String;
    .annotation runtime Lc8/eAb;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lc8/Xzb;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measureSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .param p4, "dimensionSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .param p5, "isCommitDetail"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Lc8/Xzb;-><init>()V

    .line 51
    iput-object p1, p0, Lc8/jEb;->module:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lc8/jEb;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 54
    iput-object p3, p0, Lc8/jEb;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jEb;->extraArg:Ljava/lang/String;

    .line 56
    iput-boolean p5, p0, Lc8/jEb;->isCommitDetail:Z

    .line 57
    if-eqz p4, :cond_0

    .line 58
    invoke-static {p4}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/jEb;->dimensions:Ljava/lang/String;

    .line 60
    :cond_0
    invoke-static {p3}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/jEb;->measures:Ljava/lang/String;

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measures"    # Ljava/lang/String;
    .param p4, "dimensions"    # Ljava/lang/String;
    .param p5, "isCommitDetail"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lc8/Xzb;-><init>()V

    .line 67
    iput-object p1, p0, Lc8/jEb;->module:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    .line 69
    const-class v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-static {p4, v0}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iput-object v0, p0, Lc8/jEb;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 70
    const-class v0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-static {p3, v0}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iput-object v0, p0, Lc8/jEb;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jEb;->extraArg:Ljava/lang/String;

    .line 72
    iput-boolean p5, p0, Lc8/jEb;->isCommitDetail:Z

    .line 73
    iput-object p4, p0, Lc8/jEb;->dimensions:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lc8/jEb;->measures:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private getMeasureByName(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    .local p2, "measures":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/appmonitor/model/Measure;>;"
    if-eqz p2, :cond_1

    .line 111
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 112
    .local v1, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    iget-object v2, v1, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    iput-object v1, p0, Lc8/jEb;->module:Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    .line 197
    iput-object v1, p0, Lc8/jEb;->extraArg:Ljava/lang/String;

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/jEb;->isCommitDetail:Z

    .line 199
    iput-object v1, p0, Lc8/jEb;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 200
    iput-object v1, p0, Lc8/jEb;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 201
    iput-object v1, p0, Lc8/jEb;->transactionId:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    if-ne p0, p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 163
    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 166
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 168
    check-cast v0, Lc8/jEb;

    .line 169
    .local v0, "other":Lc8/jEb;
    iget-object v3, p0, Lc8/jEb;->extraArg:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 170
    iget-object v3, v0, Lc8/jEb;->extraArg:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 171
    goto :goto_0

    .line 173
    :cond_4
    iget-object v3, p0, Lc8/jEb;->extraArg:Ljava/lang/String;

    iget-object v4, v0, Lc8/jEb;->extraArg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 174
    goto :goto_0

    .line 176
    :cond_5
    iget-object v3, p0, Lc8/jEb;->module:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 177
    iget-object v3, v0, Lc8/jEb;->module:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 178
    goto :goto_0

    .line 180
    :cond_6
    iget-object v3, p0, Lc8/jEb;->module:Ljava/lang/String;

    iget-object v4, v0, Lc8/jEb;->module:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 181
    goto :goto_0

    .line 183
    :cond_7
    iget-object v3, p0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 184
    iget-object v3, v0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 185
    goto :goto_0

    .line 187
    :cond_8
    iget-object v3, p0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    iget-object v4, v0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 188
    goto :goto_0
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x2

    .line 206
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/jEb;->module:Ljava/lang/String;

    .line 207
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    .line 208
    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 209
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/jEb;->extraArg:Ljava/lang/String;

    .line 211
    :cond_0
    return-void
.end method

.method public getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lc8/jEb;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/jEb;->dimensions:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lc8/jEb;->dimensions:Ljava/lang/String;

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-static {v0, v1}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iput-object v0, p0, Lc8/jEb;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 132
    :cond_0
    iget-object v0, p0, Lc8/jEb;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    return-object v0
.end method

.method public getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lc8/jEb;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/jEb;->measures:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lc8/jEb;->measures:Ljava/lang/String;

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-static {v0, v1}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iput-object v0, p0, Lc8/jEb;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 139
    :cond_0
    iget-object v0, p0, Lc8/jEb;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lc8/jEb;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitorPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getTransactionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/jEb;->transactionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/jEb;->module:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/jEb;->transactionId:Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v0, p0, Lc8/jEb;->transactionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 150
    const/4 v0, 0x1

    .line 151
    .local v0, "result":I
    iget-object v1, p0, Lc8/jEb;->extraArg:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 152
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lc8/jEb;->module:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 153
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 154
    return v0

    .line 151
    :cond_0
    iget-object v1, p0, Lc8/jEb;->extraArg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 152
    :cond_1
    iget-object v1, p0, Lc8/jEb;->module:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 153
    :cond_2
    iget-object v2, p0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public declared-synchronized isCommitDetail()Z
    .locals 3

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/jEb;->isCommitDetail:Z

    if-nez v0, :cond_0

    invoke-static {}, Lc8/AEb;->getInstance()Lc8/AEb;

    move-result-object v0

    iget-object v1, p0, Lc8/jEb;->module:Ljava/lang/String;

    iget-object v2, p0, Lc8/jEb;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/AEb;->isDetail(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetTransactionId()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jEb;->transactionId:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public valid(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z
    .locals 2
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p2, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 98
    const/4 v0, 0x1

    .line 99
    .local v0, "valid":Z
    iget-object v1, p0, Lc8/jEb;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lc8/jEb;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-virtual {v1, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->valid(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Z

    move-result v0

    .line 102
    :cond_0
    iget-object v1, p0, Lc8/jEb;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    if-eqz v1, :cond_1

    .line 103
    if-eqz v0, :cond_2

    iget-object v1, p0, Lc8/jEb;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-virtual {v1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->valid(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 105
    :cond_1
    :goto_0
    return v0

    .line 103
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
