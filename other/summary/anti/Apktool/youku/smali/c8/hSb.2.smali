.class public Lc8/hSb;
.super Lc8/gSb;
.source "MotuAdapteBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iSb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleJavaExceptionReportBuilder"
.end annotation


# instance fields
.field mExceptionContent:Ljava/lang/String;

.field mExceptionModule:Lc8/dSb;

.field mThread:Ljava/lang/Thread;

.field mThrowable:Ljava/lang/Throwable;

.field final synthetic this$0:Lc8/iSb;


# direct methods
.method constructor <init>(Lc8/iSb;Lc8/dSb;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 13
    .param p2, "exceptionModule"    # Lc8/dSb;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "reportName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "type"    # Ljava/lang/String;

    .prologue
    .line 347
    iput-object p1, p0, Lc8/hSb;->this$0:Lc8/iSb;

    invoke-direct {p0, p1}, Lc8/gSb;-><init>(Lc8/iSb;)V

    .line 348
    iput-object p2, p0, Lc8/hSb;->mExceptionModule:Lc8/dSb;

    .line 350
    iget-object v9, p2, Lc8/dSb;->throwable:Ljava/lang/Throwable;

    iput-object v9, p0, Lc8/hSb;->mThrowable:Ljava/lang/Throwable;

    .line 351
    iget-object v9, p2, Lc8/dSb;->thread:Ljava/lang/Thread;

    iput-object v9, p0, Lc8/hSb;->mThread:Ljava/lang/Thread;

    .line 352
    iget-object v9, p2, Lc8/dSb;->exceptionDetail:Ljava/lang/String;

    iput-object v9, p0, Lc8/hSb;->mExceptionContent:Ljava/lang/String;

    .line 353
    iget-object v9, p0, Lc8/hSb;->mExtraInfo:Ljava/util/Map;

    if-nez v9, :cond_0

    .line 354
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lc8/hSb;->mExtraInfo:Ljava/util/Map;

    .line 356
    :cond_0
    iget-object v7, p2, Lc8/dSb;->exceptionId:Ljava/lang/String;

    .line 357
    .local v7, "exceptionId":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 358
    iget-object v9, p0, Lc8/hSb;->mExtraInfo:Ljava/util/Map;

    const-string/jumbo v10, "exceptionId"

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_1
    iget-object v6, p2, Lc8/dSb;->exceptionCode:Ljava/lang/String;

    .line 361
    .local v6, "exceptionCode":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 362
    iget-object v9, p0, Lc8/hSb;->mExtraInfo:Ljava/util/Map;

    const-string/jumbo v10, "exceptionCode"

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_2
    iget-object v8, p2, Lc8/dSb;->exceptionVersion:Ljava/lang/String;

    .line 365
    .local v8, "exceptionVersion":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 366
    iget-object v9, p0, Lc8/hSb;->mExtraInfo:Ljava/util/Map;

    const-string/jumbo v10, "exceptionVersion"

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_3
    iget-object v2, p2, Lc8/dSb;->exceptionArg1:Ljava/lang/String;

    .line 369
    .local v2, "exceptionArg1":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 370
    iget-object v9, p0, Lc8/hSb;->mExtraInfo:Ljava/util/Map;

    const-string/jumbo v10, "exceptionArg1"

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_4
    iget-object v3, p2, Lc8/dSb;->exceptionArg2:Ljava/lang/String;

    .line 373
    .local v3, "exceptionArg2":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 374
    iget-object v9, p0, Lc8/hSb;->mExtraInfo:Ljava/util/Map;

    const-string/jumbo v10, "exceptionArg2"

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_5
    iget-object v4, p2, Lc8/dSb;->exceptionArg3:Ljava/lang/String;

    .line 377
    .local v4, "exceptionArg3":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 378
    iget-object v9, p0, Lc8/hSb;->mExtraInfo:Ljava/util/Map;

    const-string/jumbo v10, "exceptionArg3"

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_6
    iget-object v5, p2, Lc8/dSb;->exceptionArgs:Ljava/util/Map;

    .line 381
    .local v5, "exceptionArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 382
    iget-object v9, p0, Lc8/hSb;->mExtraInfo:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 385
    :cond_7
    move-object/from16 v0, p3

    iput-object v0, p0, Lc8/hSb;->mContext:Landroid/content/Context;

    .line 386
    move-object/from16 v0, p4

    iput-object v0, p0, Lc8/hSb;->mReportName:Ljava/lang/String;

    .line 387
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lc8/hSb;->mTimestamp:J

    .line 388
    move-object/from16 v0, p7

    iput-object v0, p0, Lc8/hSb;->mReportType:Ljava/lang/String;

    .line 389
    return-void
.end method


# virtual methods
.method protected buildContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lc8/hSb;->buildThrowable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {p0}, Lc8/hSb;->buildExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected buildThread(Ljava/lang/Thread;)Ljava/lang/String;
    .locals 12
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    const-string/jumbo v7, "Thread Name: \'%s\'\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string/jumbo v7, "\"%s\" prio=%d tid=%d %s\n"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p1}, Ljava/lang/Thread;->getPriority()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 460
    .local v5, "stackTraces":[Ljava/lang/StackTraceElement;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v5

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 461
    .local v4, "stackTraceElement":Ljava/lang/StackTraceElement;
    const-string/jumbo v7, "\tat %s\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v5    # "stackTraces":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "MotuCrashAdapter"

    const-string/jumbo v8, "dumpThread"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method protected buildThrowable()Ljava/lang/String;
    .locals 9

    .prologue
    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    const-string/jumbo v4, "Process Name: \'%s\' \n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lc8/PSb;->getInstance()Lc8/PSb;

    move-result-object v7

    const-string/jumbo v8, "PROCESS_NAME"

    invoke-virtual {v7, v8}, Lc8/PSb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget-object v4, p0, Lc8/hSb;->mThread:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    .line 407
    const-string/jumbo v4, "Thread Name: \'%s\' \n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lc8/hSb;->mThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :goto_0
    const-string/jumbo v4, "Back traces starts.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    const/4 v0, 0x0

    .line 414
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    iget-object v4, p0, Lc8/hSb;->mThrowable:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 415
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    iget-object v4, p0, Lc8/hSb;->mThrowable:Ljava/lang/Throwable;

    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 417
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 427
    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_3
    invoke-static {v0}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    .line 429
    :goto_2
    const-string/jumbo v4, "Back traces end.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {p0}, Lc8/hSb;->buildEnd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 435
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_3
    iget-object v4, p0, Lc8/hSb;->mThread:Ljava/lang/Thread;

    if-eqz v4, :cond_0

    .line 437
    :try_start_4
    iget-object v4, p0, Lc8/hSb;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0, v4}, Lc8/hSb;->buildThread(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 443
    :cond_0
    :goto_4
    invoke-virtual {p0}, Lc8/hSb;->buildEnd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 409
    :cond_1
    :try_start_5
    const-string/jumbo v4, "Thread Name: \'%s\' \n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "adapter no thread name"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v2

    .line 432
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MotuCrashAdapter"

    const-string/jumbo v5, "write throwable"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 418
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_6
    iget-object v4, p0, Lc8/hSb;->mExceptionContent:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 419
    iget-object v4, p0, Lc8/hSb;->mExceptionContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 424
    :catch_1
    move-exception v2

    .line 425
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    const-string/jumbo v4, "MotuCrashAdapter"

    const-string/jumbo v5, "print throwable"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 427
    :try_start_8
    invoke-static {v0}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    .line 422
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_9
    const-string/jumbo v4, "\u65e0\u5185\u5bb9"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 427
    :catchall_0
    move-exception v4

    :goto_6
    :try_start_a
    invoke-static {v0}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    throw v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 438
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v2

    .line 439
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MotuCrashAdapter"

    const-string/jumbo v5, "write thread"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 427
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 424
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5
.end method
