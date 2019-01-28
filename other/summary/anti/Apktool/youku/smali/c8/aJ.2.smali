.class public Lc8/aJ;
.super Ljava/lang/Object;
.source "SessionCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bJ;->forground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/bJ;


# direct methods
.method constructor <init>(Lc8/bJ;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lc8/aJ;->this$1:Lc8/bJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 550
    :try_start_0
    sget-wide v2, Lc8/OL;->lastEnterBackgroundTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lc8/OL;->lastEnterBackgroundTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 552
    iget-object v1, p0, Lc8/aJ;->this$1:Lc8/bJ;

    iget-object v1, v1, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v1, v1, Lanet/channel/SessionCenter;->accsSessionManager:Lc8/OI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lc8/OI;->forceCloseSession(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :goto_0
    iget-object v1, p0, Lc8/aJ;->this$1:Lc8/bJ;

    iput-boolean v6, v1, Lc8/bJ;->foreGroundCheckRunning:Z

    .line 560
    :goto_1
    return-void

    .line 554
    :cond_0
    :try_start_1
    iget-object v1, p0, Lc8/aJ;->this$1:Lc8/bJ;

    iget-object v1, v1, Lc8/bJ;->this$0:Lanet/channel/SessionCenter;

    iget-object v1, v1, Lanet/channel/SessionCenter;->accsSessionManager:Lc8/OI;

    invoke-virtual {v1}, Lc8/OI;->checkAndStartSession()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 559
    iget-object v1, p0, Lc8/aJ;->this$1:Lc8/bJ;

    iput-boolean v6, v1, Lc8/bJ;->foreGroundCheckRunning:Z

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/aJ;->this$1:Lc8/bJ;

    iput-boolean v6, v2, Lc8/bJ;->foreGroundCheckRunning:Z

    throw v1
.end method
