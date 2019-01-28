.class public final Lc8/FL;
.super Ljava/lang/Object;
.source "WorkerTheadPoolExecutors.java"

# interfaces
.implements Lc8/VJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HL;->registerSlowSpeedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkQualityChanged(Lanet/channel/monitor/NetworkSpeed;)V
    .locals 8
    .param p1, "networkSpeed"    # Lanet/channel/monitor/NetworkSpeed;

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 55
    const-string/jumbo v2, "awcn.ThreadPoolExecutorFactory"

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "Network"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-string/jumbo v6, "Speed"

    aput-object v6, v5, v1

    invoke-static {}, Lc8/UJ;->getInstance()Lc8/UJ;

    move-result-object v6

    invoke-virtual {v6}, Lc8/UJ;->getNetSpeedValue()D

    move-result-wide v6

    double-to-int v6, v6

    shl-int/lit8 v6, v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lc8/HL;->getHighPriorityExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    sget-object v3, Lanet/channel/monitor/NetworkSpeed;->Slow:Lanet/channel/monitor/NetworkSpeed;

    if-ne p1, v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 58
    return-void

    :cond_0
    move v0, v1

    .line 57
    goto :goto_0
.end method
