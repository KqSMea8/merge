.class public Lc8/usf;
.super Ljava/lang/Object;
.source "TraceDetail.java"

# interfaces
.implements Lc8/ysf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Asf;->traceHook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Asf;


# direct methods
.method constructor <init>(Lc8/Asf;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lc8/usf;->this$0:Lc8/Asf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public onHookedAfter(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 29
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 869
    sget-boolean v23, Lc8/Asf;->sTraceThreadPool:Z

    if-eqz v23, :cond_3

    .line 870
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 871
    if-nez p3, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v22, p1

    .line 874
    check-cast v22, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 875
    .local v22, "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "@"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->hashCode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 876
    .local v9, "key":Ljava/lang/String;
    const-string/jumbo v23, "execute"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mThreadPoolInfoMap:Ljava/util/LinkedHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;

    .line 878
    .local v6, "info":Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;
    if-eqz v6, :cond_3

    .line 879
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v13

    .line 880
    .local v13, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-interface {v13}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v15

    .line 881
    .local v15, "size":I
    iget v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->waitMaxSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v0, v15, :cond_2

    .line 882
    iput v15, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->waitMaxSize:I

    .line 884
    :cond_2
    iget v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->waitTotalSize:I

    move/from16 v23, v0

    add-int v23, v23, v15

    move/from16 v0, v23

    iput v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->waitTotalSize:I

    .line 885
    iget v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->totalPoolThread:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->totalPoolThread:I

    .line 886
    iget v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->waitExecuteCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    iput v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->waitExecuteCount:I

    .line 976
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;
    .end local v9    # "key":Ljava/lang/String;
    .end local v13    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    .end local v15    # "size":I
    .end local v22    # "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    :cond_3
    :goto_1
    sget-boolean v23, Lc8/Asf;->sTraceLog:Z

    if-eqz v23, :cond_14

    .line 977
    const/16 v23, 0xf

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    move-object/from16 v17, v0

    .line 978
    .local v17, "stackTraceElements":[Ljava/lang/StackTraceElement;
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v23, 0xc8

    move/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 980
    .local v14, "sbStack":Ljava/lang/StringBuilder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mFillStackTraceElements:Ljava/lang/reflect/Method;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/Asf;->mVmStackClass:Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v17, v25, v26

    invoke-static/range {v23 .. v25}, Lc8/usf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const/4 v8, 0x6

    .local v8, "j":I
    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_f

    const/16 v23, 0xf

    move/from16 v0, v23

    if-ge v8, v0, :cond_f

    .line 982
    aget-object v23, v17, v8

    if-eqz v23, :cond_f

    .line 985
    aget-object v23, v17, v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v20

    .line 986
    .local v20, "temp":Ljava/lang/String;
    const-string/jumbo v23, "onlinemonitor"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 989
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "<br>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 888
    .end local v8    # "j":I
    .end local v14    # "sbStack":Ljava/lang/StringBuilder;
    .end local v17    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v20    # "temp":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v22    # "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    :cond_4
    const-string/jumbo v23, "beforeExecute"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mThreadPoolRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 890
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mThreadPoolRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v26, v0

    const/16 v23, 0x1

    aget-object v23, p3, v23

    check-cast v23, Ljava/lang/Runnable;

    const/16 v24, 0x0

    aget-object v24, p3, v24

    check-cast v24, Ljava/lang/Thread;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    monitor-exit v25

    goto/16 :goto_1

    :catchall_0
    move-exception v23

    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    .line 892
    :cond_5
    const-string/jumbo v23, "afterExecute"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mThreadPoolRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 894
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mThreadPoolRunnableMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    const/16 v23, 0x0

    aget-object v23, p3, v23

    check-cast v23, Ljava/lang/Runnable;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Thread;

    .line 895
    .local v18, "t":Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mThreadPoolInfoMap:Ljava/util/LinkedHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;

    .line 896
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;
    if-eqz v18, :cond_7

    if-eqz v6, :cond_7

    .line 897
    iget-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->stringBuilderThreads:Ljava/lang/StringBuilder;

    move-object/from16 v23, v0

    if-nez v23, :cond_6

    .line 898
    new-instance v23, Ljava/lang/StringBuilder;

    const/16 v25, 0xc8

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->stringBuilderThreads:Ljava/lang/StringBuilder;

    .line 900
    :cond_6
    iget-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->stringBuilderThreads:Ljava/lang/StringBuilder;

    move-object/from16 v23, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v25, "<br>"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :cond_7
    monitor-exit v24

    goto/16 :goto_1

    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;
    .end local v18    # "t":Ljava/lang/Thread;
    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v23

    .line 903
    :cond_8
    const-string/jumbo v23, "java.util.concurrent.ThreadPoolExecutor"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 904
    new-instance v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;

    invoke-direct {v6}, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;-><init>()V

    .line 905
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;
    new-instance v23, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->threadPoolExecutor:Ljava/lang/ref/WeakReference;

    .line 906
    iput-object v9, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->classExecutor:Ljava/lang/String;

    .line 907
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->classThreadFactory:Ljava/lang/String;

    .line 908
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->classBlockingQueue:Ljava/lang/String;

    .line 909
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->createFromThread:Ljava/lang/String;

    .line 910
    sget-object v23, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->keepLiveTime:J

    .line 911
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v23

    move/from16 v0, v23

    iput v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->coreSize:I

    .line 912
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v23

    move/from16 v0, v23

    iput v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->maxSize:I

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/msf;->mIsInBootStep:Z

    move/from16 v23, v0

    move/from16 v0, v23

    iput-boolean v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->isInboot:Z

    .line 914
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v17

    .line 915
    .restart local v17    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v23, 0xc8

    move/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 917
    .restart local v14    # "sbStack":Ljava/lang/StringBuilder;
    const/4 v8, 0x5

    .restart local v8    # "j":I
    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_a

    .line 918
    aget-object v23, v17, v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v20

    .line 919
    .restart local v20    # "temp":Ljava/lang/String;
    const-string/jumbo v23, "dexposed"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_9

    .line 922
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "<br>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 924
    .end local v20    # "temp":Ljava/lang/String;
    :cond_a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;->newTraceElement:Ljava/lang/String;

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mThreadPoolInfoMap:Ljava/util/LinkedHashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 926
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mThreadPoolInfoMap:Ljava/util/LinkedHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 929
    new-instance v4, Lc8/Wrf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v4, v0, v1}, Lc8/Wrf;-><init>(Lc8/msf;I)V

    .line 930
    .local v4, "dynamic":Lc8/Wrf;
    iput-object v6, v4, Lc8/Wrf;->mOutterObject:Ljava/lang/Object;

    .line 931
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lc8/Wrf;->newProxyInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/ThreadFactory;

    .line 932
    .local v12, "objThreadFactory":Ljava/util/concurrent/ThreadFactory;
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    goto/16 :goto_1

    .line 927
    .end local v4    # "dynamic":Lc8/Wrf;
    .end local v12    # "objThreadFactory":Ljava/util/concurrent/ThreadFactory;
    :catchall_2
    move-exception v23

    :try_start_4
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v23

    .line 934
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$ThreadPoolInfo;
    .end local v8    # "j":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v14    # "sbStack":Ljava/lang/StringBuilder;
    .end local v17    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v22    # "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    :cond_b
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Thread;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 935
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v17

    .line 936
    .restart local v17    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v23, 0xc8

    move/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 937
    .restart local v14    # "sbStack":Ljava/lang/StringBuilder;
    const/4 v8, 0x5

    .restart local v8    # "j":I
    :goto_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_c

    .line 938
    aget-object v23, v17, v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v20

    .line 939
    .restart local v20    # "temp":Ljava/lang/String;
    const-string/jumbo v23, "ThreadPoolExecutor"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    const-string/jumbo v23, "onlinemonitor"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 942
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "<br>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v20    # "temp":Ljava/lang/String;
    :cond_c
    move-object/from16 v21, p1

    .line 944
    check-cast v21, Ljava/lang/Thread;

    .line 945
    .local v21, "thread":Ljava/lang/Thread;
    new-instance v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;

    invoke-direct {v6}, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;-><init>()V

    .line 946
    .local v6, "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->activityName:Ljava/lang/String;

    .line 947
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->classThreadName:Ljava/lang/String;

    .line 948
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->createFromThread:Ljava/lang/String;

    .line 949
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->newTraceElement:Ljava/lang/String;

    .line 950
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->name:Ljava/lang/String;

    .line 951
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->threadId:J

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/msf;->mIsInBootStep:Z

    move/from16 v23, v0

    move/from16 v0, v23

    iput-boolean v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->isInboot:Z

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mThreadInfoList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 954
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mThreadInfoList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    monitor-exit v24

    goto/16 :goto_1

    :catchall_3
    move-exception v23

    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v23

    .line 956
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .end local v8    # "j":I
    .end local v14    # "sbStack":Ljava/lang/StringBuilder;
    .end local v17    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v21    # "thread":Ljava/lang/Thread;
    :cond_d
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/os/AsyncTask;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 957
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v17

    .line 958
    .restart local v17    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v23, 0xc8

    move/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 959
    .restart local v14    # "sbStack":Ljava/lang/StringBuilder;
    const/4 v8, 0x5

    .restart local v8    # "j":I
    :goto_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_e

    .line 960
    aget-object v23, v17, v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v20

    .line 961
    .restart local v20    # "temp":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "<br>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 963
    .end local v20    # "temp":Ljava/lang/String;
    :cond_e
    new-instance v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;

    invoke-direct {v6}, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;-><init>()V

    .line 964
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->activityName:Ljava/lang/String;

    .line 965
    const-string/jumbo v23, ""

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->classThreadName:Ljava/lang/String;

    .line 966
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->classThreadName:Ljava/lang/String;

    .line 967
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->createFromThread:Ljava/lang/String;

    .line 968
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->newTraceElement:Ljava/lang/String;

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/msf;->mIsInBootStep:Z

    move/from16 v23, v0

    move/from16 v0, v23

    iput-boolean v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->isInboot:Z

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mAsyncTaskInfoList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 971
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mAsyncTaskInfoList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    monitor-exit v24

    goto/16 :goto_1

    :catchall_4
    move-exception v23

    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v23

    .line 991
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .end local v8    # "j":I
    :catch_0
    move-exception v5

    .line 992
    .local v5, "e":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 994
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 996
    .local v16, "stackStr":Ljava/lang/String;
    const-string/jumbo v23, "println_native"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mTraceForLogMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;

    .line 998
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mTraceForLogMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 999
    if-nez v6, :cond_15

    .line 1000
    :try_start_7
    new-instance v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;

    invoke-direct {v7}, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 1001
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .local v7, "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->activityName:Ljava/lang/String;

    .line 1002
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->createFromThread:Ljava/lang/String;

    .line 1003
    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->newTraceElement:Ljava/lang/String;

    .line 1004
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getId()J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->threadId:J

    .line 1005
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->count:I

    .line 1006
    if-eqz p3, :cond_12

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    const/16 v25, 0x4

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 1007
    const/16 v23, 0x3

    aget-object v10, p3, v23

    check-cast v10, Ljava/lang/String;

    .line 1008
    .local v10, "msg":Ljava/lang/String;
    if-eqz v10, :cond_10

    .line 1009
    iget v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->strLength:I

    move/from16 v23, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v25

    add-int v23, v23, v25

    move/from16 v0, v23

    iput v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->strLength:I

    .line 1011
    :cond_10
    const/16 v23, 0x2

    aget-object v19, p3, v23

    check-cast v19, Ljava/lang/String;

    .line 1012
    .local v19, "tag":Ljava/lang/String;
    if-eqz v19, :cond_12

    .line 1013
    iget-object v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->mapKeys:Ljava/util/HashMap;

    move-object/from16 v23, v0

    if-nez v23, :cond_11

    .line 1014
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->mapKeys:Ljava/util/HashMap;

    .line 1016
    :cond_11
    iget-object v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->mapKeys:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 1017
    iget-object v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->mapKeys:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    .end local v10    # "msg":Ljava/lang/String;
    .end local v19    # "tag":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mTraceForLogMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    move-object v6, v7

    .line 1031
    .end local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    :cond_13
    :goto_6
    :try_start_9
    monitor-exit v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1034
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .end local v14    # "sbStack":Ljava/lang/StringBuilder;
    .end local v16    # "stackStr":Ljava/lang/String;
    .end local v17    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_14
    sget-boolean v23, Lc8/Asf;->sTraceThrowable:Z

    if-eqz v23, :cond_18

    .line 1035
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Throwable;

    move/from16 v23, v0

    if-eqz v23, :cond_18

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mTraceForThrowableMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1037
    const/16 v23, 0xf

    :try_start_a
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    move-object/from16 v17, v0

    .line 1038
    .restart local v17    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v23, 0xc8

    move/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1040
    .restart local v14    # "sbStack":Ljava/lang/StringBuilder;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mFillStackTraceElements:Ljava/lang/reflect/Method;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/Asf;->mVmStackClass:Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    aput-object v17, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lc8/usf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const/4 v8, 0x6

    .restart local v8    # "j":I
    :goto_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_17

    const/16 v23, 0xf

    move/from16 v0, v23

    if-ge v8, v0, :cond_17

    .line 1042
    aget-object v23, v17, v8

    if-eqz v23, :cond_17

    .line 1045
    aget-object v23, v17, v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1046
    .restart local v20    # "temp":Ljava/lang/String;
    const-string/jumbo v23, "onlinemonitor"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result v23

    if-eqz v23, :cond_16

    .line 1047
    :try_start_c
    monitor-exit v24

    goto/16 :goto_0

    .line 1071
    .end local v8    # "j":I
    .end local v14    # "sbStack":Ljava/lang/StringBuilder;
    .end local v17    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v20    # "temp":Ljava/lang/String;
    :catchall_5
    move-exception v23

    monitor-exit v24
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v23

    .line 1023
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .restart local v14    # "sbStack":Ljava/lang/StringBuilder;
    .restart local v16    # "stackStr":Ljava/lang/String;
    .restart local v17    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_15
    :try_start_d
    iget v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->count:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    iput v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->count:I

    .line 1024
    if-eqz p3, :cond_13

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    const/16 v25, 0x4

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 1025
    const/16 v23, 0x3

    aget-object v10, p3, v23

    check-cast v10, Ljava/lang/String;

    .line 1026
    .restart local v10    # "msg":Ljava/lang/String;
    if-eqz v10, :cond_13

    .line 1027
    iget v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->strLength:I

    move/from16 v23, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v25

    add-int v23, v23, v25

    move/from16 v0, v23

    iput v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->strLength:I

    goto/16 :goto_6

    .line 1031
    .end local v10    # "msg":Ljava/lang/String;
    :catchall_6
    move-exception v23

    :goto_8
    monitor-exit v24
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v23

    .line 1049
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .end local v16    # "stackStr":Ljava/lang/String;
    .restart local v8    # "j":I
    .restart local v20    # "temp":Ljava/lang/String;
    :cond_16
    :try_start_e
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v25, "<br>"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1041
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1051
    .end local v8    # "j":I
    .end local v20    # "temp":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 1052
    .restart local v5    # "e":Ljava/lang/Throwable;
    :try_start_f
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1054
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_17
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1055
    .restart local v16    # "stackStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mTraceForThrowableMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;

    .line 1056
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    if-nez v6, :cond_1a

    .line 1057
    new-instance v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;

    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    invoke-direct {v6}, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;-><init>()V

    .line 1058
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->activityName:Ljava/lang/String;

    .line 1059
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->createFromThread:Ljava/lang/String;

    .line 1060
    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->newTraceElement:Ljava/lang/String;

    .line 1061
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getId()J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->threadId:J

    .line 1062
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->count:I

    .line 1063
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->classThreadName:Ljava/lang/String;

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mTraceForThrowableMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    :goto_9
    monitor-exit v24
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1075
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .end local v14    # "sbStack":Ljava/lang/StringBuilder;
    .end local v16    # "stackStr":Ljava/lang/String;
    .end local v17    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_18
    sget-boolean v23, Lc8/Asf;->sTraceGetStack:Z

    if-eqz v23, :cond_0

    .line 1076
    const/16 v23, 0xf

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    move-object/from16 v17, v0

    .line 1078
    .restart local v17    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mFillStackTraceElements:Ljava/lang/reflect/Method;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/Asf;->mVmStackClass:Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v17, v25, v26

    invoke-static/range {v23 .. v25}, Lc8/usf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1079
    .local v11, "objInt":Ljava/lang/Integer;
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v23, 0xc8

    move/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1080
    .restart local v14    # "sbStack":Ljava/lang/StringBuilder;
    const/4 v8, 0x6

    .restart local v8    # "j":I
    :goto_a
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_1b

    const/16 v23, 0xf

    move/from16 v0, v23

    if-ge v8, v0, :cond_1b

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    if-ge v8, v0, :cond_1b

    .line 1081
    aget-object v23, v17, v8

    if-eqz v23, :cond_1b

    .line 1084
    aget-object v23, v17, v8

    if-eqz v23, :cond_19

    .line 1085
    aget-object v23, v17, v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1086
    .restart local v20    # "temp":Ljava/lang/String;
    const-string/jumbo v23, "onlinemonitor"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 1089
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "<br>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2

    .line 1080
    .end local v20    # "temp":Ljava/lang/String;
    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 1069
    .end local v8    # "j":I
    .end local v11    # "objInt":Ljava/lang/Integer;
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .restart local v16    # "stackStr":Ljava/lang/String;
    :cond_1a
    :try_start_11
    iget v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->count:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    iput v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->count:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto/16 :goto_9

    .line 1092
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .end local v16    # "stackStr":Ljava/lang/String;
    .restart local v8    # "j":I
    .restart local v11    # "objInt":Ljava/lang/Integer;
    :cond_1b
    :try_start_12
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1093
    .restart local v16    # "stackStr":Ljava/lang/String;
    const-string/jumbo v23, "getStackTrace"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1c

    const-string/jumbo v23, "getAllStackTraces"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1094
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mTraceGetStackTraceMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;

    .line 1095
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mTraceGetStackTraceMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2

    .line 1096
    if-nez v6, :cond_1d

    .line 1097
    :try_start_13
    new-instance v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;

    invoke-direct {v7}, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;-><init>()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 1098
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .restart local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->activityName:Ljava/lang/String;

    .line 1099
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->createFromThread:Ljava/lang/String;

    .line 1100
    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->newTraceElement:Ljava/lang/String;

    .line 1101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getId()J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->threadId:J

    .line 1102
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v7, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->count:I

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/usf;->this$0:Lc8/Asf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/Asf;->mTraceGetStackTraceMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move-object v6, v7

    .line 1107
    .end local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    :goto_b
    :try_start_15
    monitor-exit v24

    goto/16 :goto_0

    :catchall_7
    move-exception v23

    :goto_c
    monitor-exit v24
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :try_start_16
    throw v23
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_2

    .line 1109
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .end local v8    # "j":I
    .end local v11    # "objInt":Ljava/lang/Integer;
    .end local v14    # "sbStack":Ljava/lang/StringBuilder;
    .end local v16    # "stackStr":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 1110
    .restart local v5    # "e":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1105
    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .restart local v8    # "j":I
    .restart local v11    # "objInt":Ljava/lang/Integer;
    .restart local v14    # "sbStack":Ljava/lang/StringBuilder;
    .restart local v16    # "stackStr":Ljava/lang/String;
    :cond_1d
    :try_start_17
    iget v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->count:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    iput v0, v6, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->count:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_b

    .line 1107
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .restart local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    :catchall_8
    move-exception v23

    move-object v6, v7

    .end local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    goto :goto_c

    .line 1031
    .end local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .end local v8    # "j":I
    .end local v11    # "objInt":Ljava/lang/Integer;
    .restart local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    :catchall_9
    move-exception v23

    move-object v6, v7

    .end local v7    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .restart local v6    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    goto/16 :goto_8
.end method

.method public onHookedBefore(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 781
    sget-boolean v7, Lc8/Asf;->sTraceSoFile:Z

    if-eqz v7, :cond_3

    .line 782
    const-string/jumbo v7, "loadLibrary"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 783
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 784
    .local v4, "stackTraceElements":[Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v7, 0xc8

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 785
    .local v3, "sbStack":Ljava/lang/StringBuilder;
    const/4 v1, 0x5

    .local v1, "j":I
    :goto_0
    array-length v7, v4

    if-ge v1, v7, :cond_2

    const/16 v7, 0xa

    if-gt v1, v7, :cond_2

    .line 786
    aget-object v7, v4, v1

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    .line 787
    .local v5, "temp":Ljava/lang/String;
    const-string/jumbo v7, "onlinemonitor"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 865
    .end local v1    # "j":I
    .end local v3    # "sbStack":Ljava/lang/StringBuilder;
    .end local v4    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v5    # "temp":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 790
    .restart local v1    # "j":I
    .restart local v3    # "sbStack":Ljava/lang/StringBuilder;
    .restart local v4    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .restart local v5    # "temp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<br>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 793
    .end local v5    # "temp":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;-><init>()V

    .line 794
    .local v0, "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    iget-object v7, p0, Lc8/usf;->this$0:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v7, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->activityName:Ljava/lang/String;

    .line 795
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->createFromThread:Ljava/lang/String;

    .line 796
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->newTraceElement:Ljava/lang/String;

    .line 797
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->threadId:J

    .line 798
    iget-object v7, p0, Lc8/usf;->this$0:Lc8/Asf;

    iget-object v8, v7, Lc8/Asf;->mTraceSoFileList:Ljava/util/ArrayList;

    monitor-enter v8

    .line 799
    :try_start_0
    iget-object v7, p0, Lc8/usf;->this$0:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mTraceSoFileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    .end local v0    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .end local v1    # "j":I
    .end local v3    # "sbStack":Ljava/lang/StringBuilder;
    .end local v4    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_3
    sget-boolean v7, Lc8/Asf;->sTraceThreadPriority:Z

    if-eqz v7, :cond_9

    .line 804
    const-string/jumbo v7, "setThreadPriority"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "setPriority"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 805
    :cond_4
    const/4 v6, 0x0

    .local v6, "tidP":I
    const/4 v2, 0x0

    .line 806
    .local v2, "javaP":I
    const-string/jumbo v7, "setThreadPriority"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 807
    const/4 v7, 0x1

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 811
    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v7, v8, :cond_6

    .line 813
    if-gtz v6, :cond_0

    const/4 v7, 0x5

    if-gt v2, v7, :cond_0

    .line 817
    :cond_6
    iget-object v7, p0, Lc8/usf;->this$0:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mHandlerThread:Lc8/asf;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 820
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 821
    .restart local v4    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v7, 0xc8

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 822
    .restart local v3    # "sbStack":Ljava/lang/StringBuilder;
    const/4 v1, 0x6

    .restart local v1    # "j":I
    :goto_3
    array-length v7, v4

    if-ge v1, v7, :cond_8

    const/16 v7, 0xa

    if-gt v1, v7, :cond_8

    .line 823
    aget-object v7, v4, v1

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    .line 824
    .restart local v5    # "temp":Ljava/lang/String;
    const-string/jumbo v7, "onlinemonitor"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "newThread"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 827
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<br>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 800
    .end local v2    # "javaP":I
    .end local v5    # "temp":Ljava/lang/String;
    .end local v6    # "tidP":I
    .restart local v0    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 808
    .end local v0    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .end local v1    # "j":I
    .end local v3    # "sbStack":Ljava/lang/StringBuilder;
    .end local v4    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .restart local v2    # "javaP":I
    .restart local v6    # "tidP":I
    :cond_7
    const-string/jumbo v7, "setPriority"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 809
    const/4 v7, 0x0

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 829
    .restart local v1    # "j":I
    .restart local v3    # "sbStack":Ljava/lang/StringBuilder;
    .restart local v4    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_8
    new-instance v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;-><init>()V

    .line 830
    .restart local v0    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    iget-object v7, p0, Lc8/usf;->this$0:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v7, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->activityName:Ljava/lang/String;

    .line 831
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->createFromThread:Ljava/lang/String;

    .line 832
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->newTraceElement:Ljava/lang/String;

    .line 833
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->threadId:J

    .line 834
    iput v2, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->javaPriority:I

    .line 835
    iput v6, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->threadPriority:I

    .line 836
    iget-object v7, p0, Lc8/usf;->this$0:Lc8/Asf;

    iget-object v8, v7, Lc8/Asf;->mTraceThreadPriorityList:Ljava/util/ArrayList;

    monitor-enter v8

    .line 837
    :try_start_2
    iget-object v7, p0, Lc8/usf;->this$0:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mTraceThreadPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 842
    .end local v0    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .end local v1    # "j":I
    .end local v2    # "javaP":I
    .end local v3    # "sbStack":Ljava/lang/StringBuilder;
    .end local v4    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v6    # "tidP":I
    :cond_9
    sget-boolean v7, Lc8/Asf;->sTraceSharedPreferences:Z

    if-eqz v7, :cond_0

    .line 843
    iget-object v7, p0, Lc8/usf;->this$0:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mEditorImpl:Ljava/lang/Class;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lc8/usf;->this$0:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mEditorImpl:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 845
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 846
    .restart local v4    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v7, 0xc8

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 847
    .restart local v3    # "sbStack":Ljava/lang/StringBuilder;
    const/4 v1, 0x6

    .restart local v1    # "j":I
    :goto_4
    array-length v7, v4

    if-ge v1, v7, :cond_a

    const/16 v7, 0xa

    if-gt v1, v7, :cond_a

    .line 848
    aget-object v7, v4, v1

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    .line 849
    .restart local v5    # "temp":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<br>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 838
    .end local v5    # "temp":Ljava/lang/String;
    .restart local v0    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .restart local v2    # "javaP":I
    .restart local v6    # "tidP":I
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 851
    .end local v0    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    .end local v2    # "javaP":I
    .end local v6    # "tidP":I
    :cond_a
    new-instance v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;

    invoke-direct {v0}, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;-><init>()V

    .line 852
    .restart local v0    # "info":Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;
    iget-object v7, p0, Lc8/usf;->this$0:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityName:Ljava/lang/String;

    iput-object v7, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->activityName:Ljava/lang/String;

    .line 853
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->createFromThread:Ljava/lang/String;

    .line 854
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->newTraceElement:Ljava/lang/String;

    .line 855
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->threadId:J

    .line 856
    iput-object p2, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->name:Ljava/lang/String;

    .line 857
    if-eqz p3, :cond_b

    array-length v7, p3

    if-lez v7, :cond_b

    .line 858
    const/4 v7, 0x0

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lcom/taobao/onlinemonitor/TraceDetail$NewThreadInfo;->classThreadName:Ljava/lang/String;

    .line 860
    :cond_b
    iget-object v7, p0, Lc8/usf;->this$0:Lc8/Asf;

    iget-object v8, v7, Lc8/Asf;->mTraceSharedPreferencesList:Ljava/util/ArrayList;

    monitor-enter v8

    .line 861
    :try_start_4
    iget-object v7, p0, Lc8/usf;->this$0:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mTraceSharedPreferencesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    monitor-exit v8

    goto/16 :goto_1

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7
.end method
