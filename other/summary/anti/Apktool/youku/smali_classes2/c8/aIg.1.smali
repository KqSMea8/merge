.class public final Lc8/aIg;
.super Ljava/lang/Object;
.source "BootMonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/android/BootMonitorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stage"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private endTime:J

.field private method:Ljava/lang/String;

.field private startTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "startTime"    # J

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lc8/aIg;->className:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lc8/aIg;->method:Ljava/lang/String;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/aIg;->startTime:J

    .line 100
    iput-wide p1, p0, Lc8/aIg;->startTime:J

    .line 101
    return-void
.end method


# virtual methods
.method public bootMonitor()V
    .locals 8

    .prologue
    .line 104
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 105
    .local v0, "dvs":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v4, "className"

    iget-object v5, p0, Lc8/aIg;->className:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 106
    const-string/jumbo v4, "method"

    iget-object v5, p0, Lc8/aIg;->method:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 108
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 109
    .local v1, "mvs":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    iget-wide v4, p0, Lc8/aIg;->endTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lc8/aIg;->endTime:J

    .line 112
    :cond_0
    iget-wide v4, p0, Lc8/aIg;->endTime:J

    iget-wide v6, p0, Lc8/aIg;->startTime:J

    sub-long v2, v4, v6

    .line 113
    .local v2, "expendTime":J
    const-string/jumbo v4, "expendTime"

    long-to-double v6, v2

    invoke-virtual {v1, v4, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 115
    invoke-static {}, Lcom/youku/android/BootMonitorManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    const-string/jumbo v4, "Stage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bootMonitor: className = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/aIg;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", method = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/aIg;->method:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", expendTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    const-string/jumbo v4, "device_boot"

    const-string/jumbo v5, "boot_monitor"

    invoke-static {v4, v5, v0, v1}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 122
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lc8/aIg;->className:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lc8/aIg;->endTime:J

    .line 97
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lc8/aIg;->method:Ljava/lang/String;

    .line 89
    return-void
.end method
