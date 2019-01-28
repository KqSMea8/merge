.class public Lc8/Vcf;
.super Ljava/lang/Object;
.source "Coordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Scf;,
        Lc8/Ocf;,
        Lc8/Pcf;,
        Lc8/Qcf;,
        Lc8/Ucf;,
        Lc8/Tcf;,
        Lc8/Rcf;
    }
.end annotation


# static fields
.field public static final QUEUE_PRIORITY_DECODE_IMAGE:I = 0x1b

.field public static final QUEUE_PRIORITY_EMERGENCY:I = 0xa

.field public static final QUEUE_PRIORITY_IMPORTANT:I = 0x14

.field public static final QUEUE_PRIORITY_LOWER:I = 0x32

.field public static final QUEUE_PRIORITY_NORMAL:I = 0x1e

.field public static final QUEUE_PRIORITY_NORMAL_DOWNLOAD:I = 0x23

.field public static final QUEUE_PRIORITY_ON_IDLE:I = 0x64

.field public static final QUEUE_PRIORITY_PATCH_DOWNLOAD:I = 0x15

.field public static final QUEUE_PRIORITY_REQUEST_DATA:I = 0x17

.field public static final QUEUE_PRIORITY_REQUEST_IMAGE:I = 0x1c

.field public static final QUEUE_PRIORITY_UNIMPORTANT:I = 0x5a

.field protected static final TAG:Ljava/lang/String; = "Coord"

.field protected static final mIdleTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lc8/Tcf;",
            ">;"
        }
    .end annotation
.end field

.field protected static final mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected static sHandler:Landroid/os/Handler;

.field static sThreadInfoListener:Lc8/Ucf;

.field static sThreadPoolExecutor:Lc8/Ocf;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lc8/Vcf;->mIdleTasks:Ljava/util/Queue;

    .line 83
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0x64

    new-instance v4, Lc8/Qcf;

    invoke-direct {v4}, Lc8/Qcf;-><init>()V

    invoke-direct {v0, v1, v4}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lc8/Vcf;->mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 99
    const/16 v2, 0x8

    .line 100
    .local v2, "CORE_POOL_SIZE":I
    const/16 v3, 0x10

    .line 103
    .local v3, "MAXIMUM_POOL_SIZE":I
    new-instance v8, Lc8/Lcf;

    invoke-direct {v8}, Lc8/Lcf;-><init>()V

    .line 120
    .local v8, "sThreadFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Lc8/Ocf;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lc8/Vcf;->mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v9, Lc8/Pcf;

    invoke-direct {v9}, Lc8/Pcf;-><init>()V

    invoke-direct/range {v1 .. v9}, Lc8/Ocf;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 123
    sput-object v1, Lc8/Vcf;->sThreadPoolExecutor:Lc8/Ocf;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lc8/Ocf;->allowCoreThreadTimeOut(Z)V

    .line 124
    sget-object v0, Lc8/Vcf;->sThreadPoolExecutor:Lc8/Ocf;

    invoke-static {v0}, Lc8/cdf;->installAsDefaultAsyncTaskExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)Z

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    return-void
.end method

.method protected static dumpTask()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 385
    sget-object v6, Lc8/Vcf;->mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 387
    .local v2, "array":[Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 390
    .local v0, "a":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 391
    invoke-static {v0}, Lc8/Vcf;->getOuterClass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    const/16 v6, 0x7e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 398
    .end local v0    # "a":Ljava/lang/Object;
    :cond_1
    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Task size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " --"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    return-void
.end method

.method public static execute(Lc8/Tcf;II)V
    .locals 6
    .param p0, "runnable"    # Lc8/Tcf;
    .param p1, "queuePriority"    # I
    .param p2, "delaymillisecond"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 251
    new-instance v1, Lc8/Scf;

    invoke-direct {v1, p0}, Lc8/Scf;-><init>(Ljava/lang/Runnable;)V

    .line 252
    .local v1, "task":Lc8/Scf;
    if-gtz p1, :cond_0

    .line 253
    const/4 p1, 0x1

    .line 255
    :cond_0
    iput p1, p0, Lc8/Tcf;->mQueuePriority:I

    .line 257
    if-lez p2, :cond_2

    .line 258
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 259
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 260
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    sget-object v2, Lc8/Vcf;->sHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 263
    new-instance v2, Lc8/Mcf;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Mcf;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lc8/Vcf;->sHandler:Landroid/os/Handler;

    .line 275
    :cond_1
    sget-object v2, Lc8/Vcf;->sHandler:Landroid/os/Handler;

    int-to-long v4, p2

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 279
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 277
    :cond_2
    sget-object v2, Lc8/Vcf;->sThreadPoolExecutor:Lc8/Ocf;

    invoke-virtual {v2, v1}, Lc8/Ocf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 237
    sget-object v0, Lc8/Vcf;->sThreadPoolExecutor:Lc8/Ocf;

    const/16 v1, 0x1e

    invoke-virtual {v0, p0, v1}, Lc8/Ocf;->execute(Ljava/lang/Runnable;I)V

    .line 238
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;I)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "queuePriority"    # I

    .prologue
    .line 241
    sget-object v0, Lc8/Vcf;->sThreadPoolExecutor:Lc8/Ocf;

    invoke-virtual {v0, p0, p1}, Lc8/Ocf;->execute(Ljava/lang/Runnable;I)V

    .line 242
    return-void
.end method

.method static getDefaultAsyncTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 4
    .annotation build Lc8/jFp;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 371
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_0

    .line 372
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 379
    .local v0, "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    .line 375
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :try_start_0
    const-class v1, Landroid/os/AsyncTask;

    const-string/jumbo v3, "sExecutor"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 376
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 377
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_0
.end method

.method public static getDefaultThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 466
    sget-object v0, Lc8/Vcf;->sThreadPoolExecutor:Lc8/Ocf;

    return-object v0
.end method

.method protected static getOuterClass(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "inner"    # Ljava/lang/Object;

    .prologue
    .line 450
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "this$0"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 451
    .local v2, "outer":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 452
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p0

    .line 461
    .end local v2    # "outer":Ljava/lang/reflect/Field;
    :goto_0
    return-object p0

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e1":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 456
    .end local v1    # "e1":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 458
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static postIdleTask(Lc8/Tcf;)V
    .locals 1
    .param p0, "runnable"    # Lc8/Tcf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    sget-object v0, Lc8/Vcf;->mIdleTasks:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 296
    return-void
.end method

.method public static postTask(Lc8/Tcf;)V
    .locals 1
    .param p0, "runnable"    # Lc8/Tcf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lcom/taobao/android/task/Priority;->DEFAULT:Lcom/taobao/android/task/Priority;

    invoke-static {p0, v0}, Lc8/Vcf;->postTask(Lc8/Tcf;Lcom/taobao/android/task/Priority;)V

    .line 223
    return-void
.end method

.method public static postTask(Lc8/Tcf;I)V
    .locals 1
    .param p0, "runnable"    # Lc8/Tcf;
    .param p1, "delaymillisecond"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Lc8/Vcf;->execute(Lc8/Tcf;II)V

    .line 234
    return-void
.end method

.method public static postTask(Lc8/Tcf;Lcom/taobao/android/task/Priority;)V
    .locals 2
    .param p0, "runnable"    # Lc8/Tcf;
    .param p1, "priority"    # Lcom/taobao/android/task/Priority;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lc8/Scf;

    invoke-direct {v0, p0}, Lc8/Scf;-><init>(Ljava/lang/Runnable;)V

    .line 228
    .local v0, "task":Lc8/Scf;
    sget-object v1, Lc8/Vcf;->sThreadPoolExecutor:Lc8/Ocf;

    invoke-virtual {v1, v0}, Lc8/Ocf;->execute(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public static postTask(Lc8/Tcf;Lcom/taobao/android/task/Priority;I)V
    .locals 1
    .param p0, "runnable"    # Lc8/Tcf;
    .param p1, "priority"    # Lcom/taobao/android/task/Priority;
    .param p2, "delaymillisecond"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    const/16 v0, 0xa

    invoke-static {p0, v0, p2}, Lc8/Vcf;->execute(Lc8/Tcf;II)V

    .line 284
    return-void
.end method

.method public static removeDelayTask(Lc8/Tcf;)V
    .locals 2
    .param p0, "runnable"    # Lc8/Tcf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 288
    sget-object v0, Lc8/Vcf;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_0
    sget-object v0, Lc8/Vcf;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static runTask(Lc8/Tcf;)V
    .locals 0
    .param p0, "runnable"    # Lc8/Tcf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    invoke-static {p0}, Lc8/Vcf;->runWithTiming(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method protected static runWithTiming(Ljava/lang/Runnable;)V
    .locals 20
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 326
    const-wide/16 v6, 0x0

    .local v6, "time":J
    const-wide/16 v10, 0x0

    .line 327
    .local v10, "cputime":J
    sget-object v3, Lc8/Vcf;->sThreadInfoListener:Lc8/Ucf;

    if-eqz v3, :cond_0

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 329
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v10

    .line 331
    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    .line 332
    .local v4, "tid":I
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v3, v5, :cond_3

    .line 334
    const/16 v2, 0xa

    .line 335
    .local v2, "priority":I
    if-gtz v2, :cond_1

    .line 336
    const/4 v2, 0x1

    .line 338
    :cond_1
    move-object/from16 v0, p0

    instance-of v3, v0, Lc8/Tcf;

    if-eqz v3, :cond_2

    move-object/from16 v3, p0

    .line 339
    check-cast v3, Lc8/Tcf;

    iget v2, v3, Lc8/Tcf;->mThreadPriority:I

    .line 342
    :cond_2
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 347
    .end local v2    # "priority":I
    :cond_3
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    sget-object v3, Lc8/Vcf;->sThreadInfoListener:Lc8/Ucf;

    if-eqz v3, :cond_5

    .line 353
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v14

    sub-long/2addr v14, v10

    const-wide/32 v16, 0xf4240

    div-long v10, v14, v16

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v8, v14, v6

    .line 355
    .local v8, "time2":J
    sget-object v3, Lc8/Vcf;->sThreadInfoListener:Lc8/Ucf;

    if-eqz v3, :cond_5

    .line 356
    const/16 v13, 0x1e

    .line 357
    .local v13, "queuePriority":I
    move-object/from16 v0, p0

    instance-of v3, v0, Lc8/Rcf;

    if-eqz v3, :cond_4

    move-object/from16 v3, p0

    .line 358
    check-cast v3, Lc8/Rcf;

    invoke-interface {v3}, Lc8/Rcf;->getQueuePriority()I

    move-result v13

    .line 360
    :cond_4
    sget-object v3, Lc8/Vcf;->sThreadInfoListener:Lc8/Ucf;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lc8/Vcf;->sThreadPoolExecutor:Lc8/Ocf;

    invoke-interface/range {v3 .. v14}, Lc8/Ucf;->threadInfo(ILjava/lang/String;JJJLjava/lang/String;ILjava/util/concurrent/ThreadPoolExecutor;)V

    .line 368
    .end local v8    # "time2":J
    .end local v13    # "queuePriority":I
    :cond_5
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v3

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Throwable in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    sget-object v3, Lc8/Vcf;->sThreadInfoListener:Lc8/Ucf;

    if-eqz v3, :cond_5

    .line 353
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v14

    sub-long/2addr v14, v10

    const-wide/32 v16, 0xf4240

    div-long v10, v14, v16

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v8, v14, v6

    .line 355
    .restart local v8    # "time2":J
    sget-object v3, Lc8/Vcf;->sThreadInfoListener:Lc8/Ucf;

    if-eqz v3, :cond_5

    .line 356
    const/16 v13, 0x1e

    .line 357
    .restart local v13    # "queuePriority":I
    move-object/from16 v0, p0

    instance-of v3, v0, Lc8/Rcf;

    if-eqz v3, :cond_6

    move-object/from16 v3, p0

    .line 358
    check-cast v3, Lc8/Rcf;

    invoke-interface {v3}, Lc8/Rcf;->getQueuePriority()I

    move-result v13

    .line 360
    :cond_6
    sget-object v3, Lc8/Vcf;->sThreadInfoListener:Lc8/Ucf;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lc8/Vcf;->sThreadPoolExecutor:Lc8/Ocf;

    invoke-interface/range {v3 .. v14}, Lc8/Ucf;->threadInfo(ILjava/lang/String;JJJLjava/lang/String;ILjava/util/concurrent/ThreadPoolExecutor;)V

    goto :goto_0

    .line 352
    .end local v8    # "time2":J
    .end local v13    # "queuePriority":I
    :catchall_0
    move-exception v3

    move-object v15, v3

    sget-object v3, Lc8/Vcf;->sThreadInfoListener:Lc8/Ucf;

    if-eqz v3, :cond_8

    .line 353
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v16

    sub-long v16, v16, v10

    const-wide/32 v18, 0xf4240

    div-long v10, v16, v18

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v8, v16, v6

    .line 355
    .restart local v8    # "time2":J
    sget-object v3, Lc8/Vcf;->sThreadInfoListener:Lc8/Ucf;

    if-eqz v3, :cond_8

    .line 356
    const/16 v13, 0x1e

    .line 357
    .restart local v13    # "queuePriority":I
    move-object/from16 v0, p0

    instance-of v3, v0, Lc8/Rcf;

    if-eqz v3, :cond_7

    move-object/from16 v3, p0

    .line 358
    check-cast v3, Lc8/Rcf;

    invoke-interface {v3}, Lc8/Rcf;->getQueuePriority()I

    move-result v13

    .line 360
    :cond_7
    sget-object v3, Lc8/Vcf;->sThreadInfoListener:Lc8/Ucf;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lc8/Vcf;->sThreadPoolExecutor:Lc8/Ocf;

    invoke-interface/range {v3 .. v14}, Lc8/Ucf;->threadInfo(ILjava/lang/String;JJJLjava/lang/String;ILjava/util/concurrent/ThreadPoolExecutor;)V

    .line 366
    .end local v8    # "time2":J
    .end local v13    # "queuePriority":I
    :cond_8
    throw v15
.end method

.method public static scheduleIdleTasks()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 310
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lc8/Ncf;

    invoke-direct {v1}, Lc8/Ncf;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 321
    return-void
.end method

.method public static setThreadInfoListener(Lc8/Ucf;)V
    .locals 0
    .param p0, "info"    # Lc8/Ucf;

    .prologue
    .line 193
    sput-object p0, Lc8/Vcf;->sThreadInfoListener:Lc8/Ucf;

    .line 194
    return-void
.end method
