.class public Lc8/RYn;
.super Ljava/lang/Object;
.source "PlayStageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TYn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stage"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lc8/RYn;->reigster()V

    .line 29
    return-void
.end method

.method static reigster()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 51
    sget-boolean v0, Lc8/TYn;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    sput-boolean v5, Lc8/TYn;->mRegistered:Z

    .line 53
    const-string/jumbo v0, "vpm"

    const-string/jumbo v1, "playStageStat"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "cost"

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "stage"

    aput-object v4, v3, v6

    const-string/jumbo v4, "section"

    aput-object v4, v3, v5

    .line 55
    invoke-static {v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 53
    invoke-static {v0, v1, v2, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    goto :goto_0
.end method


# virtual methods
.method public beginSection(Ljava/lang/String;)V
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lc8/RYn;->mName:Ljava/lang/String;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/RYn;->mStartTime:J

    .line 34
    return-void
.end method

.method commit()V
    .locals 10

    .prologue
    .line 40
    sget-object v0, Lc8/TYn;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stage=%s, section=%s, cost=%dms"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lc8/RYn;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lc8/RYn;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "vpm"

    const-string/jumbo v1, "playStageStat"

    .line 42
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v2

    const-string/jumbo v3, "stage"

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v2

    const-string/jumbo v3, "section"

    iget-object v4, p0, Lc8/RYn;->mName:Ljava/lang/String;

    .line 44
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v2

    .line 46
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    const-string/jumbo v4, "cost"

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lc8/RYn;->mStartTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    .line 46
    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 41
    invoke-static {v0, v1, v2, v3}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 48
    return-void
.end method

.method public endSection()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lc8/RYn;->commit()V

    .line 37
    return-void
.end method
