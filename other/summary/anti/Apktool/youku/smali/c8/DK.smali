.class public final Lc8/DK;
.super Ljava/lang/Object;
.source "NetworkStatusHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/FK;->notifyStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;


# direct methods
.method constructor <init>(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lc8/DK;->val$status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 79
    :try_start_0
    invoke-static {}, Lc8/FK;->access$000()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/EK;

    .line 80
    .local v1, "listener":Lc8/EK;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 81
    .local v2, "start":J
    iget-object v4, p0, Lc8/DK;->val$status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-interface {v1, v4}, Lc8/EK;->onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 83
    const-string/jumbo v4, "awcn.NetworkStatusHelper"

    const-string/jumbo v5, "call back cost too much time"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "listener"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lc8/EK;
    .end local v2    # "start":J
    :catch_0
    move-exception v4

    :cond_1
    return-void
.end method
