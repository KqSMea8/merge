.class public Lcom/taobao/onlinemonitor/OnLineMonitor$TrafficStatsInfo;
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
    name = "TrafficStatsInfo"
.end annotation


# instance fields
.field public activityMobileRxBytes:F

.field public activityMobileTxBytes:F

.field public activityTotalRxBytes:F

.field public activityTotalTxBytes:F

.field public totalMobileRxBytes:F

.field public totalMobileTxBytes:F

.field public totalTotalRxBytes:F

.field public totalTotalTxBytes:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
