.class public final Lc8/Awf;
.super Ljava/lang/Object;
.source "TBNetwork4Phenix.java"

# interfaces
.implements Lc8/VJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cwf;->setupQualityChangedMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkQualityChanged(Lanet/channel/monitor/NetworkSpeed;)V
    .locals 10
    .param p1, "speed"    # Lanet/channel/monitor/NetworkSpeed;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    const-string/jumbo v3, "Network"

    const-string/jumbo v4, "network speed detect: %K/s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {}, Lc8/RN;->getNetSpeedValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/ixf;->schedulerBuilder()Lc8/Avf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Avf;->build()Lc8/Oyf;

    move-result-object v0

    .line 40
    .local v0, "supplier":Lc8/Oyf;
    instance-of v3, v0, Lc8/Hxf;

    if-eqz v3, :cond_0

    .line 41
    check-cast v0, Lc8/Hxf;

    .end local v0    # "supplier":Lc8/Oyf;
    sget-object v3, Lanet/channel/monitor/NetworkSpeed;->Slow:Lanet/channel/monitor/NetworkSpeed;

    if-ne p1, v3, :cond_1

    :goto_0
    invoke-interface {v0, v1}, Lc8/Hxf;->onNetworkQualityChanged(Z)V

    .line 43
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 41
    goto :goto_0
.end method
