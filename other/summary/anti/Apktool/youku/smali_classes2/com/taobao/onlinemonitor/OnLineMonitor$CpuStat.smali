.class public Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;
.super Ljava/lang/Object;
.source "OnLineMonitor.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/msf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuStat"
.end annotation


# instance fields
.field public cpuAlarmInBg:Z

.field public iOWaitTimeAvg:I

.field public myAVGPidCPUPercent:I

.field public myMaxPidCPUPercent:I

.field public myPidCPUPercent:I

.field public pidIoWaitCount:I

.field public pidPerCpuLoadAvg:F

.field public pidWaitCount:I

.field public pidWaitMax:F

.field public pidWaitSum:F

.field public sysAvgCPUPercent:I

.field public sysCPUPercent:I

.field public sysMaxCPUPercent:I

.field public systemLoadAvg:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
