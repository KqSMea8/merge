.class public Lc8/ezb;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UtDelayInitTask"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 557
    :try_start_0
    const-string/jumbo v2, "\u5ef6\u65f6\u542f\u52a8\u4efb\u52a1"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    invoke-static {}, Lc8/gzb;->access$400()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 559
    :try_start_1
    invoke-static {}, Lc8/gzb;->access$500()I

    move-result v1

    .line 560
    .local v1, "waitSecond":I
    if-lez v1, :cond_0

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "delay "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " second to start service,waiting..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    :try_start_2
    invoke-static {}, Lc8/gzb;->access$400()Ljava/lang/Object;

    move-result-object v2

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 569
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 570
    :try_start_4
    invoke-static {}, Lc8/gzb;->access$700()Z

    move-result v2

    invoke-static {v2}, Lc8/gzb;->access$602(Z)Z

    .line 571
    sget-object v2, Lc8/gzb;->handler:Lc8/fzb;

    new-instance v3, Lc8/dzb;

    invoke-direct {v3}, Lc8/dzb;-><init>()V

    invoke-virtual {v2, v3}, Lc8/fzb;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 575
    .end local v1    # "waitSecond":I
    :goto_1
    return-void

    .line 565
    .restart local v1    # "waitSecond":I
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 569
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "waitSecond":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 572
    :catch_1
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "AnalyticsMgr"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "6"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
