.class public Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;
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
    name = "PerformanceInfo"
.end annotation


# instance fields
.field public anrCount:I

.field public appProgressImportance:I

.field public cpuPercentScore:I

.field public cpuScore:I

.field public deviceScore:I

.field public eglScore:I

.field public gpuScore:I

.field public ioWaitScore:I

.field public isLowPerformance:Z

.field public memPercentScore:I

.field public memScore:I

.field public myPidScore:I

.field public runTimeThreadCount:I

.field public runningThreadCount:I

.field public schedWaitScore:I

.field public sysRunningProgress:I

.field public sysRunningService:I

.field public systemRunningScore:I

.field public threadCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5299
    iput v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->systemRunningScore:I

    .line 5303
    iput v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->myPidScore:I

    return-void
.end method
