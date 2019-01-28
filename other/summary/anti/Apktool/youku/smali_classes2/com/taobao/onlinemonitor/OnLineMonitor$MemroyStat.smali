.class public Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;
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
    name = "MemroyStat"
.end annotation


# instance fields
.field public blockingGCCount:I

.field public dalvikPss:I

.field public deviceAvailMemory:J

.field public finalizerSize:I

.field public isLowMemroy:Z

.field public majorFault:I

.field public maxCanUseJavaMemory:I

.field public maxCanUseTotalMemory:I

.field public memoryAlert:Z

.field public nativePss:J

.field public remainAvailMemory:I

.field public summaryGraphics:I

.field public totalBlockingGCTime:J

.field public totalGcCount:I

.field public totalJavaPercent:J

.field public totalMemoryPercent:J

.field public totalUsedMemory:J

.field public trimMemoryLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5021
    iput v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->totalGcCount:I

    .line 5025
    iput v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->blockingGCCount:I

    return-void
.end method
