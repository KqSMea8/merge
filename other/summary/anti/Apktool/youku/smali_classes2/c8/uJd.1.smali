.class public Lc8/uJd;
.super Lc8/OJd;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tJd;
    }
.end annotation


# static fields
.field private static head:Lc8/uJd;


# instance fields
.field private next:Lc8/uJd;

.field private timeoutAt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lc8/OJd;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lc8/uJd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lc8/uJd;->awaitTimeout()Lc8/uJd;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized awaitTimeout()Lc8/uJd;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0xf4240

    const/4 v1, 0x0

    .line 306
    const-class v6, Lc8/uJd;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lc8/uJd;->head:Lc8/uJd;

    iget-object v0, v7, Lc8/uJd;->next:Lc8/uJd;

    .line 309
    .local v0, "node":Lc8/uJd;
    if-nez v0, :cond_0

    .line 310
    const-class v7, Lc8/uJd;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 329
    .end local v0    # "node":Lc8/uJd;
    .local v4, "waitNanos":J
    :goto_0
    monitor-exit v6

    return-object v0

    .line 314
    .end local v4    # "waitNanos":J
    .restart local v0    # "node":Lc8/uJd;
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-direct {v0, v8, v9}, Lc8/uJd;->remainingNanos(J)J

    move-result-wide v4

    .line 317
    .restart local v4    # "waitNanos":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_1

    .line 320
    const-wide/32 v8, 0xf4240

    div-long v2, v4, v8

    .line 321
    .local v2, "waitMillis":J
    mul-long v8, v2, v10

    sub-long/2addr v4, v8

    .line 322
    const-class v7, Lc8/uJd;

    long-to-int v8, v4

    invoke-virtual {v7, v2, v3, v8}, Ljava/lang/Object;->wait(JI)V

    move-object v0, v1

    .line 323
    goto :goto_0

    .line 327
    .end local v2    # "waitMillis":J
    :cond_1
    sget-object v1, Lc8/uJd;->head:Lc8/uJd;

    iget-object v7, v0, Lc8/uJd;->next:Lc8/uJd;

    iput-object v7, v1, Lc8/uJd;->next:Lc8/uJd;

    .line 328
    const/4 v1, 0x0

    iput-object v1, v0, Lc8/uJd;->next:Lc8/uJd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 306
    .end local v4    # "waitNanos":J
    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method private remainingNanos(J)J
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 133
    iget-wide v0, p0, Lc8/uJd;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method protected timedOut()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method
