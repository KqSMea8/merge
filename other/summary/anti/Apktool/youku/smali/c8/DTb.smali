.class public Lc8/DTb;
.super Lc8/BTb;
.source "FinalizeFake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ETb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FakeFinalizerWatchdogDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/DTb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 348
    new-instance v0, Lc8/DTb;

    invoke-direct {v0}, Lc8/DTb;-><init>()V

    sput-object v0, Lc8/DTb;->INSTANCE:Lc8/DTb;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 351
    const-string/jumbo v0, "FakeFinalizerWatchdogDaemon"

    invoke-direct {p0, v0}, Lc8/BTb;-><init>(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method static synthetic access$100()Lc8/DTb;
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lc8/DTb;->INSTANCE:Lc8/DTb;

    return-object v0
.end method

.method private isDebuggerActive()Z
    .locals 1

    .prologue
    .line 378
    invoke-static {}, Lc8/uTb;->isDebuggerActive()Z

    move-result v0

    return v0
.end method

.method private sleepFor(JJ)V
    .locals 9
    .param p1, "startNanos"    # J
    .param p3, "durationNanos"    # J

    .prologue
    .line 402
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, p1

    .line 403
    .local v0, "elapsedNanos":J
    sub-long v4, p3, v0

    .line 404
    .local v4, "sleepNanos":J
    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    .line 405
    .local v2, "sleepMills":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    .line 412
    :goto_1
    return-void

    .line 409
    :cond_1
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v6

    invoke-virtual {p0}, Lc8/DTb;->isRunning()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1
.end method

.method private waitForFinalization()Z
    .locals 4

    .prologue
    .line 419
    invoke-static {}, Lc8/CTb;->access$000()Lc8/CTb;

    move-result-object v2

    invoke-static {v2}, Lc8/CTb;->access$300(Lc8/CTb;)J

    move-result-wide v0

    .line 420
    .local v0, "startTime":J
    const-wide v2, 0x2540be400L

    invoke-direct {p0, v0, v1, v2, v3}, Lc8/DTb;->sleepFor(JJ)V

    .line 424
    invoke-static {}, Lc8/CTb;->access$000()Lc8/CTb;

    move-result-object v2

    invoke-static {v2}, Lc8/CTb;->access$200(Lc8/CTb;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lc8/CTb;->access$000()Lc8/CTb;

    move-result-object v2

    invoke-static {v2}, Lc8/CTb;->access$300(Lc8/CTb;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private waitForObject()Z
    .locals 2

    .prologue
    .line 383
    :goto_0
    invoke-static {}, Lc8/CTb;->access$000()Lc8/CTb;

    move-result-object v1

    invoke-static {v1}, Lc8/CTb;->access$200(Lc8/CTb;)Ljava/lang/Object;

    move-result-object v0

    .line 384
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 385
    const/4 v1, 0x1

    .line 394
    :goto_1
    return v1

    .line 387
    :cond_0
    monitor-enter p0

    .line 391
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 394
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 356
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lc8/DTb;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    invoke-direct {p0}, Lc8/DTb;->waitForObject()Z

    move-result v2

    .line 358
    .local v2, "waitSuccessful":Z
    if-eqz v2, :cond_0

    .line 362
    invoke-direct {p0}, Lc8/DTb;->waitForFinalization()Z

    move-result v0

    .line 363
    .local v0, "finalized":Z
    if-nez v0, :cond_0

    invoke-direct {p0}, Lc8/DTb;->isDebuggerActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    invoke-static {}, Lc8/CTb;->access$000()Lc8/CTb;

    move-result-object v3

    invoke-static {v3}, Lc8/CTb;->access$200(Lc8/CTb;)Ljava/lang/Object;

    move-result-object v1

    .line 367
    .local v1, "finalizedObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 371
    invoke-static {}, Lc8/CTb;->access$000()Lc8/CTb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/CTb;->interrupt()V

    goto :goto_0

    .line 375
    .end local v0    # "finalized":Z
    .end local v1    # "finalizedObject":Ljava/lang/Object;
    .end local v2    # "waitSuccessful":Z
    :cond_1
    return-void
.end method
