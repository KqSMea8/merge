.class public final Lc8/hTb;
.super Lc8/fTb;
.source "ReportBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iTb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UncaughtExceptionReportPrintWrite"
.end annotation


# instance fields
.field mThread:Ljava/lang/Thread;

.field mThrowable:Ljava/lang/Throwable;

.field final synthetic this$0:Lc8/iTb;


# direct methods
.method constructor <init>(Lc8/iTb;Landroid/content/Context;Lc8/kTb;Lc8/LSb;Ljava/lang/String;JLjava/io/File;Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/util/Map;)V
    .locals 14
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "reporterContext"    # Lc8/kTb;
    .param p4, "configuration"    # Lc8/LSb;
    .param p5, "reportName"    # Ljava/lang/String;
    .param p6, "timestamp"    # J
    .param p8, "reportFile"    # Ljava/io/File;
    .param p9, "throwable"    # Ljava/lang/Throwable;
    .param p10, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc8/kTb;",
            "Lc8/LSb;",
            "Ljava/lang/String;",
            "J",
            "Ljava/io/File;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Thread;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p11, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lc8/hTb;->this$0:Lc8/iTb;

    .line 469
    const-string/jumbo v9, "java"

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v13}, Lc8/fTb;-><init>(Lc8/iTb;Landroid/content/Context;Lc8/kTb;Lc8/LSb;Ljava/lang/String;Ljava/lang/String;JLjava/io/File;Ljava/util/Map;)V

    .line 471
    move-object/from16 v0, p9

    iput-object v0, p0, Lc8/hTb;->mThrowable:Ljava/lang/Throwable;

    .line 472
    move-object/from16 v0, p10

    iput-object v0, p0, Lc8/hTb;->mThread:Ljava/lang/Thread;

    .line 473
    return-void
.end method

.method private printThrowable()V
    .locals 8

    .prologue
    .line 491
    :try_start_0
    const-string/jumbo v3, "Process Name: \'%s\' \n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lc8/hTb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v7, "PROCESS_NAME"

    invoke-virtual {v6, v7}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/hTb;->write(Ljava/lang/String;)V

    .line 492
    const-string/jumbo v3, "Thread Name: \'%s\' \n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lc8/hTb;->mThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/hTb;->write(Ljava/lang/String;)V

    .line 493
    const-string/jumbo v3, "Back traces starts.\n"

    invoke-virtual {p0, v3}, Lc8/hTb;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 494
    const/4 v0, 0x0

    .line 496
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    iget-object v3, p0, Lc8/hTb;->mThrowable:Ljava/lang/Throwable;

    new-instance v4, Ljava/io/PrintStream;

    invoke-direct {v4, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 498
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/hTb;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 502
    :try_start_3
    invoke-static {v1}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 504
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    const-string/jumbo v3, "Back traces end.\n"

    invoke-virtual {p0, v3}, Lc8/hTb;->write(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lc8/hTb;->printEnd()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 511
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_4
    iget-object v3, p0, Lc8/hTb;->mThread:Ljava/lang/Thread;

    invoke-static {v3}, Lc8/vTb;->dumpThread(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/hTb;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 515
    :goto_2
    invoke-virtual {p0}, Lc8/hTb;->printEnd()V

    .line 516
    return-void

    .line 499
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 500
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string/jumbo v3, "print throwable"

    invoke-static {v3, v2}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 502
    :try_start_6
    invoke-static {v0}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 506
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 507
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "write throwable"

    invoke-static {v3, v2}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 502
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v3

    :goto_4
    :try_start_7
    invoke-static {v0}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 512
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v2

    .line 513
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "write thread"

    invoke-static {v3, v2}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 502
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 499
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method


# virtual methods
.method protected printContent()V
    .locals 1

    .prologue
    .line 476
    invoke-direct {p0}, Lc8/hTb;->printThrowable()V

    .line 477
    invoke-virtual {p0}, Lc8/hTb;->printExtraInfo()V

    .line 478
    invoke-virtual {p0}, Lc8/hTb;->printStatus()V

    .line 479
    invoke-virtual {p0}, Lc8/hTb;->printStorageinfo()V

    .line 480
    invoke-virtual {p0}, Lc8/hTb;->printFileDescriptor()V

    .line 482
    iget-object v0, p0, Lc8/hTb;->mThrowable:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lc8/hTb;->printApplictionMeminfo()V

    .line 485
    :cond_0
    invoke-virtual {p0}, Lc8/hTb;->printLogcat()V

    .line 486
    return-void
.end method
