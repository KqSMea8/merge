.class public abstract Lc8/Bbf;
.super Ljava/lang/Object;
.source "PanguInitializers.java"


# annotations
.annotation build Lc8/iFp;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Abf;,
        Lc8/ybf;,
        Lc8/xbf;,
        Lc8/vbf;,
        Lc8/wbf;,
        Lc8/ubf;,
        Lc8/zbf;,
        Lcom/taobao/android/lifecycle/PanguInitializers$UnqualifiedInitializerError;
    }
.end annotation


# instance fields
.field protected mApplication:Lc8/kbf;
    .annotation build Lc8/jFp;
    .end annotation
.end field

.field protected final mAsyncInitializers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDelayedInitializers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field protected final mGlobalFlowInitializers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected final mMethodCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mPackageName:Ljava/lang/String;

.field protected mPermission:[Ljava/lang/String;

.field protected mProcessName:Ljava/lang/String;

.field protected final mSyncInitializers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mUIFlowInitializers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Bbf;->mPermission:[Ljava/lang/String;

    .line 388
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/Bbf;->mSyncInitializers:Landroid/util/SparseArray;

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Bbf;->mAsyncInitializers:Ljava/util/ArrayList;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Bbf;->mDelayedInitializers:Ljava/util/ArrayList;

    .line 391
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/Bbf;->mMethodCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 393
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/Bbf;->mGlobalFlowInitializers:Landroid/util/SparseArray;

    .line 394
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/Bbf;->mUIFlowInitializers:Landroid/util/SparseArray;

    .line 44
    iput-object p1, p0, Lc8/Bbf;->mProcessName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lc8/Bbf;->mPackageName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected doInitOnFistActivityCreate(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 121
    return-void
.end method

.method protected doInitOnFistActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 125
    return-void
.end method

.method protected getApplication()Lc8/kbf;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lc8/Bbf;->mApplication:Lc8/kbf;

    return-object v0
.end method

.method protected getInitializer(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lc8/jFp;
    .end annotation

    .prologue
    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "init"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "fullname":Ljava/lang/String;
    iget-object v4, p0, Lc8/Bbf;->mAsyncInitializers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 375
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 383
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 376
    :cond_1
    iget-object v4, p0, Lc8/Bbf;->mDelayedInitializers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 377
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 378
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lc8/Bbf;->mSyncInitializers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 379
    iget-object v4, p0, Lc8/Bbf;->mSyncInitializers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 380
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 378
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 382
    :cond_6
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/NoSuchMethodError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (used in @Require)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 383
    :cond_7
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected invokeInitializer(Ljava/lang/reflect/Method;)V
    .locals 18
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 329
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 332
    const-class v2, Lc8/ybf;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lc8/ybf;

    .local v13, "permission_annotation":Lc8/ybf;
    if-eqz v13, :cond_2

    .line 333
    invoke-interface {v13}, Lc8/ybf;->value()[Ljava/lang/String;

    move-result-object v8

    .local v8, "arr$":[Ljava/lang/String;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v12, v8, v10

    .line 334
    .local v12, "permission":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Bbf;->mApplication:Lc8/kbf;

    invoke-static {v2, v12}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "permission":Ljava/lang/String;
    .end local v13    # "permission_annotation":Lc8/ybf;
    :cond_0
    :goto_1
    return-void

    .line 333
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "permission":Ljava/lang/String;
    .restart local v13    # "permission_annotation":Lc8/ybf;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 343
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "permission":Ljava/lang/String;
    .end local v13    # "permission_annotation":Lc8/ybf;
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 344
    .local v6, "time":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    .line 346
    .local v4, "cputime":J
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2}, Lc8/Bbf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide/32 v14, 0xf4240

    div-long v4, v2, v14

    .line 361
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    const-wide/32 v14, 0xf4240

    div-long v6, v2, v14

    .line 362
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lc8/Bbf;->onInitializerTimeing(Ljava/lang/String;JJ)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Bbf;->mMethodCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    .line 365
    invoke-virtual/range {p0 .. p0}, Lc8/Bbf;->onInitializerFinish()V

    goto :goto_1

    .line 347
    :catch_0
    move-exception v9

    .line 348
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v2

    if-nez v2, :cond_3

    .line 349
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lc8/Bbf;->onInitializerException(Ljava/lang/reflect/Method;Ljava/lang/Exception;)V

    .line 354
    :goto_2
    const-string/jumbo v2, "Pangu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "invoke exception:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide/32 v14, 0xf4240

    div-long v4, v2, v14

    .line 361
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    const-wide/32 v14, 0xf4240

    div-long v6, v2, v14

    .line 362
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lc8/Bbf;->onInitializerTimeing(Ljava/lang/String;JJ)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Bbf;->mMethodCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    .line 365
    invoke-virtual/range {p0 .. p0}, Lc8/Bbf;->onInitializerFinish()V

    goto/16 :goto_1

    .line 351
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lc8/Bbf;->onInitializerException(Ljava/lang/reflect/Method;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 360
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    move-object v14, v2

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide/32 v16, 0xf4240

    div-long v4, v2, v16

    .line 361
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    const-wide/32 v16, 0xf4240

    div-long v6, v2, v16

    .line 362
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lc8/Bbf;->onInitializerTimeing(Ljava/lang/String;JJ)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Bbf;->mMethodCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_4

    .line 365
    invoke-virtual/range {p0 .. p0}, Lc8/Bbf;->onInitializerFinish()V

    :cond_4
    throw v14

    .line 355
    :catch_1
    move-exception v9

    .line 356
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v2, "Pangu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "invoke throwable:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide/32 v14, 0xf4240

    div-long v4, v2, v14

    .line 361
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v6

    const-wide/32 v14, 0xf4240

    div-long v6, v2, v14

    .line 362
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lc8/Bbf;->onInitializerTimeing(Ljava/lang/String;JJ)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Bbf;->mMethodCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    .line 365
    invoke-virtual/range {p0 .. p0}, Lc8/Bbf;->onInitializerFinish()V

    goto/16 :goto_1
.end method

.method public abstract onInitializerException(Ljava/lang/reflect/Method;Ljava/lang/Exception;)V
.end method

.method public onInitializerFinish()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onInitializerTimeing(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cpu"    # J
    .param p4, "real"    # J

    .prologue
    .line 107
    return-void
.end method

.method protected parse()V
    .locals 26

    .prologue
    .line 244
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v5

    .line 246
    .local v5, "debug":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Bbf;->mProcessName:Ljava/lang/String;

    .line 248
    .local v4, "current_process_name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v15

    .line 249
    .local v15, "methods":[Ljava/lang/reflect/Method;
    move-object v2, v15

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v12, v15

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v2    # "arr$":[Ljava/lang/reflect/Method;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_12

    aget-object v14, v2, v10

    .line 250
    .local v14, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    .line 251
    .local v16, "name":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_6

    const-string/jumbo v23, "init"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v23, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 253
    if-eqz v5, :cond_3

    .line 254
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v23

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_0

    .line 255
    new-instance v23, Lcom/taobao/android/lifecycle/PanguInitializers$UnqualifiedInitializerError;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Private: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/taobao/android/lifecycle/PanguInitializers$UnqualifiedInitializerError;-><init>(Ljava/lang/String;)V

    throw v23

    .line 256
    :cond_0
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v23

    and-int/lit8 v23, v23, 0x8

    if-eqz v23, :cond_1

    .line 257
    new-instance v23, Lcom/taobao/android/lifecycle/PanguInitializers$UnqualifiedInitializerError;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Static: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/taobao/android/lifecycle/PanguInitializers$UnqualifiedInitializerError;-><init>(Ljava/lang/String;)V

    throw v23

    .line 258
    :cond_1
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 259
    new-instance v23, Lcom/taobao/android/lifecycle/PanguInitializers$UnqualifiedInitializerError;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "With parameters: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/taobao/android/lifecycle/PanguInitializers$UnqualifiedInitializerError;-><init>(Ljava/lang/String;)V

    throw v23

    .line 260
    :cond_2
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v23

    sget-object v24, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 261
    new-instance v23, Lcom/taobao/android/lifecycle/PanguInitializers$UnqualifiedInitializerError;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Non-void return type: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/taobao/android/lifecycle/PanguInitializers$UnqualifiedInitializerError;-><init>(Ljava/lang/String;)V

    throw v23

    .line 265
    :cond_3
    const/16 v22, 0x0

    .line 266
    .local v22, "stop":Z
    const-class v23, Lc8/Abf;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v20

    check-cast v20, Lc8/Abf;

    .local v20, "process_annotation":Lc8/Abf;
    if-eqz v20, :cond_4

    .line 267
    invoke-interface/range {v20 .. v20}, Lc8/Abf;->value()[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_1
    if-ge v9, v13, :cond_4

    aget-object v21, v3, v9

    .line 268
    .local v21, "process_name":Ljava/lang/String;
    if-eqz v21, :cond_7

    if-eqz v4, :cond_7

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 270
    const/16 v22, 0x1

    .line 281
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v21    # "process_name":Ljava/lang/String;
    :cond_4
    if-nez v22, :cond_6

    .line 283
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x17

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bbf;->mPermission:[Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 285
    const-class v23, Lc8/ybf;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 291
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bbf;->mMethodCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 292
    const-class v23, Lc8/vbf;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bbf;->mDelayedInitializers:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v20    # "process_annotation":Lc8/Abf;
    .end local v22    # "stop":Z
    :cond_6
    :goto_2
    add-int/lit8 v9, v10, 0x1

    .restart local v9    # "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_0

    .line 267
    .end local v10    # "i$":I
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v13    # "len$":I
    .restart local v20    # "process_annotation":Lc8/Abf;
    .restart local v21    # "process_name":Ljava/lang/String;
    .restart local v22    # "stop":Z
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 294
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v21    # "process_name":Ljava/lang/String;
    :cond_8
    const-class v23, Lc8/ubf;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bbf;->mAsyncInitializers:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 296
    :cond_9
    const-class v23, Lc8/wbf;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 298
    const-class v23, Lc8/wbf;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lc8/wbf;

    .line 299
    .local v7, "flow_annonation":Lc8/wbf;
    if-nez v7, :cond_c

    const/4 v6, 0x0

    .line 303
    .local v6, "flow":I
    :goto_3
    const-class v23, Lc8/xbf;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bbf;->mGlobalFlowInitializers:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 305
    .local v8, "flow_initializers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;>;"
    if-nez v8, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bbf;->mGlobalFlowInitializers:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    new-instance v8, Landroid/util/SparseArray;

    .end local v8    # "flow_initializers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;>;"
    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .restart local v8    # "flow_initializers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;>;"
    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 311
    :cond_a
    :goto_4
    const-class v23, Lc8/zbf;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lc8/zbf;

    .line 312
    .local v18, "priority_annonation":Lc8/zbf;
    if-nez v18, :cond_e

    const/16 v17, 0x0

    .line 313
    .local v17, "priority":I
    :goto_5
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 314
    .local v19, "priority_initializers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;"
    if-nez v19, :cond_b

    new-instance v19, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v19    # "priority_initializers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .restart local v19    # "priority_initializers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;"
    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    :cond_b
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 299
    .end local v6    # "flow":I
    .end local v8    # "flow_initializers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;>;"
    .end local v17    # "priority":I
    .end local v18    # "priority_annonation":Lc8/zbf;
    .end local v19    # "priority_initializers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;"
    :cond_c
    invoke-interface {v7}, Lc8/wbf;->value()I

    move-result v6

    goto :goto_3

    .line 307
    .restart local v6    # "flow":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bbf;->mUIFlowInitializers:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 308
    .restart local v8    # "flow_initializers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;>;"
    if-nez v8, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bbf;->mUIFlowInitializers:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    new-instance v8, Landroid/util/SparseArray;

    .end local v8    # "flow_initializers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;>;"
    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .restart local v8    # "flow_initializers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;>;"
    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 312
    .restart local v18    # "priority_annonation":Lc8/zbf;
    :cond_e
    invoke-interface/range {v18 .. v18}, Lc8/zbf;->value()I

    move-result v17

    goto :goto_5

    .line 318
    .end local v6    # "flow":I
    .end local v7    # "flow_annonation":Lc8/wbf;
    .end local v8    # "flow_initializers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;>;"
    .end local v18    # "priority_annonation":Lc8/zbf;
    :cond_f
    const-class v23, Lc8/zbf;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lc8/zbf;

    .line 319
    .restart local v18    # "priority_annonation":Lc8/zbf;
    if-nez v18, :cond_11

    const/16 v17, 0x0

    .line 320
    .restart local v17    # "priority":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bbf;->mSyncInitializers:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 321
    .local v11, "initializers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    if-nez v11, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bbf;->mSyncInitializers:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "initializers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .restart local v11    # "initializers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    :cond_10
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 319
    .end local v11    # "initializers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    .end local v17    # "priority":I
    :cond_11
    invoke-interface/range {v18 .. v18}, Lc8/zbf;->value()I

    move-result v17

    goto :goto_6

    .line 325
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v16    # "name":Ljava/lang/String;
    .end local v18    # "priority_annonation":Lc8/zbf;
    .end local v20    # "process_annotation":Lc8/Abf;
    .end local v22    # "stop":Z
    .restart local v10    # "i$":I
    :cond_12
    return-void
.end method

.method public start(Lc8/kbf;)V
    .locals 2
    .param p1, "application"    # Lc8/kbf;

    .prologue
    .line 128
    iput-object p1, p0, Lc8/Bbf;->mApplication:Lc8/kbf;

    .line 130
    new-instance v0, Lc8/lbf;

    const-string/jumbo v1, "initPanguParse"

    invoke-direct {v0, p0, v1}, Lc8/lbf;-><init>(Lc8/Bbf;Ljava/lang/String;)V

    invoke-static {v0}, Lc8/Vcf;->runTask(Lc8/Tcf;)V

    .line 135
    const-class v0, Lc8/xbf;

    invoke-virtual {p0, v0}, Lc8/Bbf;->startInitializersAnnotatedBy(Ljava/lang/Class;)V

    .line 138
    new-instance v0, Lc8/mbf;

    invoke-direct {v0, p0, p1}, Lc8/mbf;-><init>(Lc8/Bbf;Lc8/kbf;)V

    invoke-virtual {p1, v0}, Lc8/kbf;->registerCrossActivityLifecycleCallback(Lc8/hbf;)V

    .line 161
    return-void
.end method

.method protected startInitializersAnnotatedBy(Ljava/lang/Class;)V
    .locals 8
    .param p1    # Ljava/lang/Class;
        .annotation build Lc8/jFp;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v5, p0, Lc8/Bbf;->mAsyncInitializers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/reflect/Method;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 168
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    :cond_1
    new-instance v5, Lc8/nbf;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, v2}, Lc8/nbf;-><init>(Lc8/Bbf;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    invoke-static {v5}, Lc8/Vcf;->postTask(Lc8/Tcf;)V

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 176
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_2
    if-nez p1, :cond_3

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lc8/Bbf;->mUIFlowInitializers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 178
    iget-object v5, p0, Lc8/Bbf;->mUIFlowInitializers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 180
    .local v3, "p1":I
    new-instance v5, Lc8/pbf;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UIFlow"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Lc8/pbf;-><init>(Lc8/Bbf;Ljava/lang/String;I)V

    invoke-static {v5}, Lc8/Vcf;->postTask(Lc8/Tcf;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "i":I
    .end local v3    # "p1":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v5, p0, Lc8/Bbf;->mGlobalFlowInitializers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 197
    iget-object v5, p0, Lc8/Bbf;->mGlobalFlowInitializers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 199
    .restart local v3    # "p1":I
    new-instance v5, Lc8/rbf;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GlobalFlow"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Lc8/rbf;-><init>(Lc8/Bbf;Ljava/lang/String;I)V

    invoke-static {v5}, Lc8/Vcf;->postTask(Lc8/Tcf;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 217
    .end local v3    # "p1":I
    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget-object v5, p0, Lc8/Bbf;->mSyncInitializers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 218
    iget-object v5, p0, Lc8/Bbf;->mSyncInitializers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 220
    .local v4, "priority":I
    iget-object v5, p0, Lc8/Bbf;->mSyncInitializers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 221
    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 223
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 224
    :cond_6
    new-instance v5, Lc8/sbf;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, v2}, Lc8/sbf;-><init>(Lc8/Bbf;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    invoke-static {v5}, Lc8/Vcf;->runTask(Lc8/Tcf;)V

    .line 227
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 217
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 232
    .end local v4    # "priority":I
    :cond_8
    iget-object v5, p0, Lc8/Bbf;->mDelayedInitializers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 233
    :cond_9
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 235
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_a

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 236
    :cond_a
    new-instance v5, Lc8/tbf;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, v2}, Lc8/tbf;-><init>(Lc8/Bbf;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    invoke-static {v5}, Lc8/Vcf;->postIdleTask(Lc8/Tcf;)V

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 241
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_b
    return-void
.end method

.method public withPermission([Ljava/lang/String;)Lc8/Bbf;
    .locals 0
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lc8/Bbf;->mPermission:[Ljava/lang/String;

    .line 116
    return-object p0
.end method
