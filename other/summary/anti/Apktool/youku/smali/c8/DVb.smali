.class public Lc8/DVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/LVb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffLineCounter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 723
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    if-nez v1, :cond_0

    .line 724
    const/4 v0, 0x0

    .line 732
    :goto_0
    return v0

    .line 726
    :cond_0
    const/4 v0, 0x0

    .line 728
    .local v0, "ret":Z
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    invoke-interface {v1, p0, p1}, Lc8/kzb;->offlinecounter_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
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
    .line 743
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    :goto_0
    return-void

    .line 746
    :cond_0
    new-instance v0, Lc8/CVb;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/CVb;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    .line 756
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setSampling(I)V
    .locals 2
    .param p0, "sampling"    # I

    .prologue
    .line 702
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    :goto_0
    return-void

    .line 705
    :cond_0
    new-instance v0, Lc8/BVb;

    invoke-direct {v0, p0}, Lc8/BVb;-><init>(I)V

    .line 715
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setStatisticsInterval(I)V
    .locals 2
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 682
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    :goto_0
    return-void

    .line 685
    :cond_0
    new-instance v0, Lc8/AVb;

    invoke-direct {v0, p0}, Lc8/AVb;-><init>(I)V

    .line 695
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
