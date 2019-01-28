.class public Lc8/FSb;
.super Ljava/lang/Object;
.source "CatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KSb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ANRCatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ESb;
    }
.end annotation


# instance fields
.field volatile canScan:Z

.field volatile enable:Z

.field mProcessANRFlagFile:Ljava/io/File;

.field mSystemTraceFile:Ljava/io/File;

.field mSystemTraceFilePath:Ljava/lang/String;

.field scaning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lc8/KSb;


# direct methods
.method public constructor <init>(Lc8/KSb;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 470
    iput-object p1, p0, Lc8/FSb;->this$0:Lc8/KSb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-boolean v3, p0, Lc8/FSb;->enable:Z

    .line 467
    iput-boolean v3, p0, Lc8/FSb;->canScan:Z

    .line 468
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lc8/FSb;->scaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 472
    const-string/jumbo v2, "/data/anr/traces.txt"

    iput-object v2, p0, Lc8/FSb;->mSystemTraceFilePath:Ljava/lang/String;

    .line 473
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lc8/FSb;->mSystemTraceFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc8/FSb;->mSystemTraceFile:Ljava/io/File;

    .line 475
    iget-object v2, p0, Lc8/FSb;->mSystemTraceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 476
    const-string/jumbo v2, "dalvik.vm.stack-trace-file"

    invoke-static {v2}, Lc8/tTb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "propSystemTraceFilePath":Ljava/lang/String;
    iget-object v2, p0, Lc8/FSb;->mSystemTraceFile:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 479
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc8/FSb;->mSystemTraceFile:Ljava/io/File;

    .line 480
    iput-object v1, p0, Lc8/FSb;->mSystemTraceFilePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v1    # "propSystemTraceFilePath":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lc8/FSb;->mSystemTraceFile:Ljava/io/File;

    if-eqz v2, :cond_2

    .line 489
    iget-object v2, p1, Lc8/KSb;->mStorageManager:Lc8/rTb;

    const-string/jumbo v3, "ANR_MONITOR"

    invoke-virtual {v2, v3}, Lc8/rTb;->getProcessTombstoneFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lc8/FSb;->mProcessANRFlagFile:Ljava/io/File;

    .line 491
    iget-object v2, p0, Lc8/FSb;->mProcessANRFlagFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lc8/FSb;->mProcessANRFlagFile:Ljava/io/File;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/vTb;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 494
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/FSb;->canScan:Z

    .line 497
    :cond_2
    return-void

    .line 481
    .restart local v1    # "propSystemTraceFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "system traces file error"

    invoke-static {v2, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public doScan()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 583
    .local v4, "start":J
    iget-boolean v7, p0, Lc8/FSb;->canScan:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lc8/FSb;->scaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 585
    :try_start_0
    new-instance v6, Lc8/ESb;

    iget-object v7, p0, Lc8/FSb;->mSystemTraceFile:Ljava/io/File;

    invoke-direct {v6, p0, v7}, Lc8/ESb;-><init>(Lc8/FSb;Ljava/io/File;)V

    .line 586
    .local v6, "tracesFinder":Lc8/ESb;
    invoke-virtual {v6}, Lc8/ESb;->find()V

    .line 587
    iget-boolean v7, v6, Lc8/ESb;->found:Z

    if-eqz v7, :cond_0

    .line 589
    new-instance v1, Lc8/DSb;

    const-string/jumbo v7, "CrashReportANRCatch"

    invoke-direct {v1, p0, v7, v6}, Lc8/DSb;-><init>(Lc8/FSb;Ljava/lang/String;Lc8/ESb;)V

    .line 602
    .local v1, "thread":Ljava/lang/Thread;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 603
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v1    # "thread":Ljava/lang/Thread;
    .end local v6    # "tracesFinder":Lc8/ESb;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 610
    .local v2, "end":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scaning anr complete elapsed time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 611
    return-void

    .line 605
    .end local v2    # "end":J
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "do scan traces file"

    invoke-static {v7, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
