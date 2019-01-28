.class public Lc8/zVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/LVb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 558
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
    .line 608
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    if-nez v1, :cond_0

    .line 609
    const/4 v0, 0x0

    .line 617
    :goto_0
    return v0

    .line 611
    :cond_0
    const/4 v0, 0x0

    .line 613
    .local v0, "ret":Z
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    invoke-interface {v1, p0, p1}, Lc8/kzb;->counter_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
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
    .line 628
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 642
    :goto_0
    return-void

    .line 631
    :cond_0
    new-instance v0, Lc8/xVb;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/xVb;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    .line 641
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 653
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    :goto_0
    return-void

    .line 656
    :cond_0
    new-instance v0, Lc8/yVb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lc8/yVb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 666
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setSampling(I)V
    .locals 2
    .param p0, "sampling"    # I

    .prologue
    .line 587
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    :goto_0
    return-void

    .line 590
    :cond_0
    new-instance v0, Lc8/wVb;

    invoke-direct {v0, p0}, Lc8/wVb;-><init>(I)V

    .line 600
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setStatisticsInterval(I)V
    .locals 2
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 566
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 581
    :goto_0
    return-void

    .line 569
    :cond_0
    new-instance v0, Lc8/vVb;

    invoke-direct {v0, p0}, Lc8/vVb;-><init>(I)V

    .line 580
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
