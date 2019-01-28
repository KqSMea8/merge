.class public Lc8/KVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/LVb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stat"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static begin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measureName"    # Ljava/lang/String;

    .prologue
    .line 832
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 846
    :goto_0
    return-void

    .line 835
    :cond_0
    new-instance v0, Lc8/GVb;

    invoke-direct {v0, p0, p1, p2}, Lc8/GVb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 812
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    if-nez v1, :cond_0

    .line 813
    const/4 v0, 0x0

    .line 821
    :goto_0
    return v0

    .line 815
    :cond_0
    const/4 v0, 0x0

    .line 817
    .local v0, "ret":Z
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    invoke-interface {v1, p0, p1}, Lc8/kzb;->stat_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 903
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V

    .line 904
    return-void
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p3, "value"    # D

    .prologue
    .line 915
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 929
    :goto_0
    return-void

    .line 918
    :cond_0
    new-instance v0, Lc8/IVb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lc8/IVb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V

    .line 928
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p3, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 940
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 954
    :goto_0
    return-void

    .line 943
    :cond_0
    new-instance v0, Lc8/JVb;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/JVb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 953
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionNames"    # [Ljava/lang/String;
    .param p3, "dimensionValues"    # [Ljava/lang/String;
    .param p4, "measureNames"    # [Ljava/lang/String;
    .param p5, "measureValues"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 963
    const-string/jumbo v3, "[commit from jni]"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 964
    const/4 v0, 0x0

    .line 965
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const/4 v2, 0x0

    .line 966
    .local v2, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v3, p2

    array-length v6, p3

    if-ne v3, v6, :cond_0

    .line 967
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 968
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_0

    .line 969
    aget-object v3, p2, v1

    aget-object v6, p3, v1

    invoke-virtual {v0, v3, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 968
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 972
    .end local v1    # "i":I
    :cond_0
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v3, p4

    array-length v6, p5

    if-ne v3, v6, :cond_2

    .line 973
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    .line 974
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v3, p5

    if-ge v1, v3, :cond_3

    .line 975
    const-wide/16 v4, 0x0

    .line 976
    .local v4, "value":D
    aget-object v3, p5, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 978
    :try_start_0
    aget-object v3, p5, v1

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 983
    :cond_1
    :goto_2
    aget-object v3, p4, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 974
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 980
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "measure\'s value cannot convert to double. measurevalue:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, p5, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 986
    .end local v1    # "i":I
    .end local v4    # "value":D
    :cond_2
    const-string/jumbo v3, "measure is null ,or lenght not match"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 988
    :cond_3
    invoke-static {p0, p1, v0, v2}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 989
    return-void
.end method

.method public static createTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/Transaction;
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 880
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/KVb;->createTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public static createTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/Transaction;
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .prologue
    .line 892
    new-instance v0, Lcom/alibaba/mtl/appmonitor/Transaction;

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/Transaction;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    return-object v0
.end method

.method public static end(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measureName"    # Ljava/lang/String;

    .prologue
    .line 856
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 870
    :goto_0
    return-void

    .line 859
    :cond_0
    new-instance v0, Lc8/HVb;

    invoke-direct {v0, p0, p1, p2}, Lc8/HVb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setSampling(I)V
    .locals 2
    .param p0, "sampling"    # I

    .prologue
    .line 792
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 806
    :goto_0
    return-void

    .line 795
    :cond_0
    new-instance v0, Lc8/FVb;

    invoke-direct {v0, p0}, Lc8/FVb;-><init>(I)V

    .line 805
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setStatisticsInterval(I)V
    .locals 2
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 772
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    :goto_0
    return-void

    .line 775
    :cond_0
    new-instance v0, Lc8/EVb;

    invoke-direct {v0, p0}, Lc8/EVb;-><init>(I)V

    .line 785
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
