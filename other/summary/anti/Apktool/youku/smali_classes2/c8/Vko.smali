.class public final Lc8/Vko;
.super Ljava/lang/Object;
.source "PassportAppMonitor.java"


# static fields
.field private static final MONITOR_MODEL:Ljava/lang/String; = "passport"

.field private static final MONITOR_POINT_API_EXCEPTION:Ljava/lang/String; = "remoteApiException"

.field private static final MONITOR_POINT_BIND_FAIL:Ljava/lang/String; = "bindServiceFail"

.field private static final MONITOR_POINT_INIT_TIME:Ljava/lang/String; = "initTime"

.field private static final MONITOR_POINT_MISSCALL_EXCEED:Ljava/lang/String; = "missCallExceed"

.field private static sApiExceptionRegistered:Z

.field private static sInitTimeRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lc8/Vko;->sApiExceptionRegistered:Z

    .line 38
    sput-boolean v0, Lc8/Vko;->sInitTimeRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitApiException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "aProcess"    # Ljava/lang/String;
    .param p1, "aMethod"    # Ljava/lang/String;
    .param p2, "aException"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 75
    sget-boolean v2, Lc8/Vko;->sApiExceptionRegistered:Z

    if-nez v2, :cond_0

    .line 76
    const/4 v2, 0x1

    sput-boolean v2, Lc8/Vko;->sApiExceptionRegistered:Z

    .line 77
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "process"

    .line 78
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "method"

    .line 79
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "exception"

    .line 80
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 81
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v2, "passport"

    const-string/jumbo v3, "remoteApiException"

    invoke-static {v2, v3, v4, v0}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 85
    .end local v0    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 86
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "process"

    invoke-virtual {v1, v2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 87
    const-string/jumbo v2, "method"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 88
    const-string/jumbo v2, "exception"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 90
    const-string/jumbo v2, "passport"

    const-string/jumbo v3, "remoteApiException"

    invoke-static {v2, v3, v1, v4}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 91
    return-void
.end method

.method public static commitBindServiceFail(Ljava/lang/String;)V
    .locals 6
    .param p0, "aArg"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 108
    .local v0, "arg":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "passport"

    const-string/jumbo v2, "bindServiceFail"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v0, v4, v5}, Lc8/zVb;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 109
    return-void

    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 107
    goto :goto_0
.end method

.method public static commitInitTime(Ljava/lang/String;J)V
    .locals 9
    .param p0, "aProcess"    # Ljava/lang/String;
    .param p1, "aCostTime"    # J

    .prologue
    .line 47
    sget-boolean v4, Lc8/Vko;->sInitTimeRegistered:Z

    if-nez v4, :cond_0

    .line 48
    const/4 v4, 0x1

    sput-boolean v4, Lc8/Vko;->sInitTimeRegistered:Z

    .line 49
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    const-string/jumbo v5, "process"

    .line 50
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 51
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    const-string/jumbo v5, "costTime"

    .line 52
    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 53
    .local v2, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v4, "passport"

    const-string/jumbo v5, "initTime"

    invoke-static {v4, v5, v2, v0}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 57
    .end local v0    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v2    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 58
    .local v1, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v4, "process"

    invoke-virtual {v1, v4, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 60
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 61
    .local v3, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v4, "costTime"

    long-to-double v6, p1

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 63
    const-string/jumbo v4, "passport"

    const-string/jumbo v5, "initTime"

    invoke-static {v4, v5, v1, v3}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 65
    return-void
.end method

.method public static commitMissCallExceed(Ljava/lang/String;)V
    .locals 6
    .param p0, "aArg"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 99
    .local v0, "arg":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "passport"

    const-string/jumbo v2, "missCallExceed"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v0, v4, v5}, Lc8/zVb;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 100
    return-void

    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 98
    goto :goto_0
.end method
