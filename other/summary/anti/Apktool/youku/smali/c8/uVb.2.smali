.class public Lc8/uVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/LVb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alarm"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 390
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
    .line 441
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    if-nez v1, :cond_0

    .line 442
    const/4 v0, 0x0

    .line 450
    :goto_0
    return v0

    .line 444
    :cond_0
    const/4 v0, 0x0

    .line 446
    .local v0, "ret":Z
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    invoke-interface {v1, p0, p1}, Lc8/kzb;->alarm_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    :goto_0
    return-void

    .line 514
    :cond_0
    new-instance v0, Lc8/sVb;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/sVb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    :goto_0
    return-void

    .line 541
    :cond_0
    new-instance v0, Lc8/tVb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/tVb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 460
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    :goto_0
    return-void

    .line 463
    :cond_0
    new-instance v0, Lc8/qVb;

    invoke-direct {v0, p0, p1}, Lc8/qVb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 485
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    :goto_0
    return-void

    .line 488
    :cond_0
    new-instance v0, Lc8/rVb;

    invoke-direct {v0, p0, p1, p2}, Lc8/rVb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setSampling(I)V
    .locals 2
    .param p0, "sampling"    # I

    .prologue
    .line 419
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 422
    :cond_0
    new-instance v0, Lc8/pVb;

    invoke-direct {v0, p0}, Lc8/pVb;-><init>(I)V

    .line 433
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setStatisticsInterval(I)V
    .locals 2
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 398
    invoke-static {}, Lc8/LVb;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 401
    :cond_0
    new-instance v0, Lc8/oVb;

    invoke-direct {v0, p0}, Lc8/oVb;-><init>(I)V

    .line 412
    .local v0, "task":Ljava/lang/Runnable;
    sget-object v1, Lc8/gzb;->handler:Lc8/fzb;

    invoke-virtual {v1, v0}, Lc8/fzb;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
