.class public Lc8/Srf;
.super Ljava/lang/Object;
.source "MemoryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;,
        Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;,
        Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;,
        Lc8/Rrf;,
        Lc8/Qrf;
    }
.end annotation


# instance fields
.field mHeapDumpFile:Ljava/io/File;

.field mMemoryUsedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;",
            ">;"
        }
    .end annotation
.end field

.field mTotalInstanceCount:J

.field mTotalInstanceRetainedSize:J

.field mTotalInstanceSize:J

.field mTotalSingletonCount:I

.field mTotalSingletonRetainedSize:I

.field mTotalSingletonSize:I

.field mTotalStaticCount:I

.field mTotalStaticRetainedSize:I

.field mTotalStaticSize:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/msf;->sOnLineMonitorFileDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/heapdump.hprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc8/Srf;->mHeapDumpFile:Ljava/io/File;

    .line 62
    iget-object v2, p0, Lc8/Srf;->mHeapDumpFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lc8/Srf;->mHeapDumpFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 67
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->runFinalization()V

    .line 68
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 79
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "OnLineMonitor"

    const-string/jumbo v3, "\u624b\u52a8\u6267\u884c\u5185\u5b58\u56de\u6536\u5f02\u5e38"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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
.method detectLeak(Ljava/util/List;)Ljava/util/List;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "watchedObjects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 89
    const/16 v22, 0x0

    .line 213
    :cond_0
    :goto_0
    return-object v22

    .line 92
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Runtime;->gc()V

    .line 93
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Runtime;->runFinalization()V

    .line 94
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Runtime;->gc()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :goto_1
    const-string/jumbo v40, "OnLineMonitor"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "\u5206\u6790\u6cc4\u6f0f: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v37, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v40

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v37, "referenceKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v36, Ljava/lang/ref/ReferenceQueue;

    invoke-direct/range {v36 .. v36}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 106
    .local v36, "queue":Ljava/lang/ref/ReferenceQueue;
    :try_start_1
    const-string/jumbo v40, "com.squareup.leakcanary.KeyedWeakReference"

    invoke-static/range {v40 .. v40}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 107
    .local v13, "clazz":Ljava/lang/Class;
    invoke-static {v13}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    .line 108
    const/16 v40, 0x4

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-class v42, Ljava/lang/Object;

    aput-object v42, v40, v41

    const/16 v41, 0x1

    const-class v42, Ljava/lang/String;

    aput-object v42, v40, v41

    const/16 v41, 0x2

    const-class v42, Ljava/lang/String;

    aput-object v42, v40, v41

    const/16 v41, 0x3

    const-class v42, Ljava/lang/ref/ReferenceQueue;

    aput-object v42, v40, v41

    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    .line 109
    .local v14, "constructor":Ljava/lang/reflect/Constructor;
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 112
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    .line 113
    .local v29, "obj":Ljava/lang/Object;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    .line 115
    .local v20, "key":Ljava/lang/String;
    const/16 v40, 0x4

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v29, v40, v41

    const/16 v41, 0x1

    aput-object v20, v40, v41

    const/16 v41, 0x2

    const-string/jumbo v42, ""

    aput-object v42, v40, v41

    const/16 v41, 0x3

    aput-object v36, v40, v41

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 119
    .end local v13    # "clazz":Ljava/lang/Class;
    .end local v14    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v20    # "key":Ljava/lang/String;
    .end local v29    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v15

    .line 120
    .local v15, "e":Ljava/lang/Throwable;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    const-string/jumbo v40, "OnLineMonitor"

    const-string/jumbo v41, "LeakCanary error"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 95
    .end local v15    # "e":Ljava/lang/Throwable;
    .end local v36    # "queue":Ljava/lang/ref/ReferenceQueue;
    .end local v37    # "referenceKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v15

    .line 96
    .restart local v15    # "e":Ljava/lang/Throwable;
    const-string/jumbo v40, "OnLineMonitor"

    const-string/jumbo v41, "\u624b\u52a8\u6267\u884c\u5185\u5b58\u56de\u6536\u5f02\u5e38"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 118
    .end local v15    # "e":Ljava/lang/Throwable;
    .restart local v13    # "clazz":Ljava/lang/Class;
    .restart local v14    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v36    # "queue":Ljava/lang/ref/ReferenceQueue;
    .restart local v37    # "referenceKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mHeapDumpFile:Ljava/io/File;

    move-object/from16 v41, v0

    monitor-enter v41
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 128
    :try_start_4
    const-string/jumbo v40, "OnLineMonitor"

    const-string/jumbo v42, "dumping memory..."

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mHeapDumpFile:Ljava/io/File;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->exists()Z

    move-result v40

    if-nez v40, :cond_3

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mHeapDumpFile:Ljava/io/File;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 132
    :cond_3
    monitor-exit v41
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    :goto_3
    const-string/jumbo v40, "OnLineMonitor"

    const-string/jumbo v41, "Dump done, do Analyzer"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v22, "leakResults":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;>;"
    :try_start_5
    const-string/jumbo v40, "com.squareup.leakcanary.AndroidExcludedRefs"

    invoke-static/range {v40 .. v40}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 142
    .local v8, "classExcludedRefs":Ljava/lang/Class;
    const-string/jumbo v40, "com.squareup.leakcanary.ExcludedRefs"

    invoke-static/range {v40 .. v40}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 143
    .local v9, "classExcludedRefsSuper":Ljava/lang/Class;
    const-string/jumbo v40, "createAndroidDefaults"

    const/16 v41, 0x0

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v24

    .line 144
    .local v24, "methodAndroidDefaults":Ljava/lang/reflect/Method;
    const/16 v40, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 145
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-static {v0, v8, v1}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    .line 146
    .local v31, "objBuilder":Ljava/lang/Object;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    const-string/jumbo v41, "build"

    const/16 v42, 0x0

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v27

    .line 147
    .local v27, "methodbuild":Ljava/lang/reflect/Method;
    const/16 v40, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 148
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .line 150
    .local v32, "objExcludedRefs":Ljava/lang/Object;
    const-string/jumbo v40, "com.squareup.leakcanary.HeapAnalyzer"

    invoke-static/range {v40 .. v40}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 151
    .local v10, "classHeapAnalyzer":Ljava/lang/Class;
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v9, v40, v41

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    .line 152
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 153
    const-string/jumbo v40, "checkForLeak"

    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const-class v43, Ljava/io/File;

    aput-object v43, v41, v42

    const/16 v42, 0x1

    const-class v43, Ljava/lang/String;

    aput-object v43, v41, v42

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v25

    .line 154
    .local v25, "methodCheckForLeak":Ljava/lang/reflect/Method;
    const/16 v40, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 155
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v32, v40, v41

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .line 156
    .local v33, "objHeapAnalyzer":Ljava/lang/Object;
    const-string/jumbo v40, "com.squareup.leakcanary.AnalysisResult"

    invoke-static/range {v40 .. v40}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 157
    .local v7, "classAnalysisResult":Ljava/lang/Class;
    const-string/jumbo v40, "leakFound"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21

    .line 158
    .local v21, "leakFound":Ljava/lang/reflect/Field;
    const/16 v40, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 159
    const-string/jumbo v40, "className"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 160
    .local v12, "className":Ljava/lang/reflect/Field;
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 161
    const-string/jumbo v40, "retainedHeapSize"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v38

    .line 162
    .local v38, "retainedHeapSize":Ljava/lang/reflect/Field;
    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 163
    const-string/jumbo v40, "leakTrace"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v23

    .line 164
    .local v23, "leakTrace":Ljava/lang/reflect/Field;
    const/16 v40, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 165
    const-string/jumbo v40, "analysisDurationMs"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 166
    .local v6, "analysisDurationMs":Ljava/lang/reflect/Field;
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 167
    const-string/jumbo v40, "com.squareup.leakcanary.LeakTrace"

    invoke-static/range {v40 .. v40}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 168
    .local v11, "classLeakTrace":Ljava/lang/Class;
    const-string/jumbo v40, "toString"

    const/16 v41, 0x0

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v11, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v28

    .line 169
    .local v28, "methodtToString":Ljava/lang/reflect/Method;
    const/16 v40, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 170
    const-string/jumbo v40, "toDetailedString"

    const/16 v41, 0x0

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v11, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v26

    .line 171
    .local v26, "methodToDetailedString":Ljava/lang/reflect/Method;
    const/16 v40, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 173
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 175
    .restart local v20    # "key":Ljava/lang/String;
    const/16 v40, 0x2

    :try_start_6
    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mHeapDumpFile:Ljava/io/File;

    move-object/from16 v42, v0

    aput-object v42, v40, v41

    const/16 v41, 0x1

    aput-object v20, v40, v41

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 176
    .local v30, "objAnalysisResult":Ljava/lang/Object;
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v18

    .line 177
    .local v18, "isLeakFound":Z
    if-eqz v30, :cond_4

    if-eqz v18, :cond_4

    .line 178
    new-instance v19, Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;

    invoke-direct/range {v19 .. v19}, Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;-><init>()V

    .line 179
    .local v19, "item":Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;
    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;->className:Ljava/lang/String;

    .line 180
    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;->retainedHeapSize:J

    .line 181
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 182
    .local v34, "objLeakTrace":Ljava/lang/Object;
    if-eqz v34, :cond_5

    .line 183
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;->simpleLeakTrace:Ljava/lang/String;

    .line 186
    :cond_5
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;->analysisDurationMs:J

    .line 187
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v40, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    move-object/from16 v0, v40

    iget-object v0, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_7

    .line 189
    sget-object v40, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    move-object/from16 v0, v40

    iget-object v0, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 190
    .local v39, "size":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v39

    if-ge v0, v1, :cond_7

    .line 191
    sget-object v40, Lc8/msf;->sOnLineMonitor:Lc8/msf;

    move-object/from16 v0, v40

    iget-object v0, v0, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lc8/psf;

    .line 192
    .local v35, "onlineStatistics":Lc8/psf;
    if-eqz v35, :cond_6

    .line 193
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;->className:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;->retainedHeapSize:J

    move-wide/from16 v42, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;->simpleLeakTrace:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-wide/from16 v2, v42

    move-object/from16 v4, v41

    invoke-interface {v0, v1, v2, v3, v4}, Lc8/psf;->onMemoryLeak(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 190
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 132
    .end local v6    # "analysisDurationMs":Ljava/lang/reflect/Field;
    .end local v7    # "classAnalysisResult":Ljava/lang/Class;
    .end local v8    # "classExcludedRefs":Ljava/lang/Class;
    .end local v9    # "classExcludedRefsSuper":Ljava/lang/Class;
    .end local v10    # "classHeapAnalyzer":Ljava/lang/Class;
    .end local v11    # "classLeakTrace":Ljava/lang/Class;
    .end local v12    # "className":Ljava/lang/reflect/Field;
    .end local v16    # "i":I
    .end local v18    # "isLeakFound":Z
    .end local v19    # "item":Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;
    .end local v20    # "key":Ljava/lang/String;
    .end local v21    # "leakFound":Ljava/lang/reflect/Field;
    .end local v22    # "leakResults":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;>;"
    .end local v23    # "leakTrace":Ljava/lang/reflect/Field;
    .end local v24    # "methodAndroidDefaults":Ljava/lang/reflect/Method;
    .end local v25    # "methodCheckForLeak":Ljava/lang/reflect/Method;
    .end local v26    # "methodToDetailedString":Ljava/lang/reflect/Method;
    .end local v27    # "methodbuild":Ljava/lang/reflect/Method;
    .end local v28    # "methodtToString":Ljava/lang/reflect/Method;
    .end local v30    # "objAnalysisResult":Ljava/lang/Object;
    .end local v31    # "objBuilder":Ljava/lang/Object;
    .end local v32    # "objExcludedRefs":Ljava/lang/Object;
    .end local v33    # "objHeapAnalyzer":Ljava/lang/Object;
    .end local v34    # "objLeakTrace":Ljava/lang/Object;
    .end local v35    # "onlineStatistics":Lc8/psf;
    .end local v38    # "retainedHeapSize":Ljava/lang/reflect/Field;
    .end local v39    # "size":I
    :catchall_0
    move-exception v40

    :try_start_7
    monitor-exit v41
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v40
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 134
    :catch_2
    move-exception v40

    const-string/jumbo v40, "OnLineMonitor"

    const-string/jumbo v41, "Failed to dump memory"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 197
    .restart local v6    # "analysisDurationMs":Ljava/lang/reflect/Field;
    .restart local v7    # "classAnalysisResult":Ljava/lang/Class;
    .restart local v8    # "classExcludedRefs":Ljava/lang/Class;
    .restart local v9    # "classExcludedRefsSuper":Ljava/lang/Class;
    .restart local v10    # "classHeapAnalyzer":Ljava/lang/Class;
    .restart local v11    # "classLeakTrace":Ljava/lang/Class;
    .restart local v12    # "className":Ljava/lang/reflect/Field;
    .restart local v18    # "isLeakFound":Z
    .restart local v19    # "item":Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;
    .restart local v20    # "key":Ljava/lang/String;
    .restart local v21    # "leakFound":Ljava/lang/reflect/Field;
    .restart local v22    # "leakResults":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;>;"
    .restart local v23    # "leakTrace":Ljava/lang/reflect/Field;
    .restart local v24    # "methodAndroidDefaults":Ljava/lang/reflect/Method;
    .restart local v25    # "methodCheckForLeak":Ljava/lang/reflect/Method;
    .restart local v26    # "methodToDetailedString":Ljava/lang/reflect/Method;
    .restart local v27    # "methodbuild":Ljava/lang/reflect/Method;
    .restart local v28    # "methodtToString":Ljava/lang/reflect/Method;
    .restart local v30    # "objAnalysisResult":Ljava/lang/Object;
    .restart local v31    # "objBuilder":Ljava/lang/Object;
    .restart local v32    # "objExcludedRefs":Ljava/lang/Object;
    .restart local v33    # "objHeapAnalyzer":Ljava/lang/Object;
    .restart local v34    # "objLeakTrace":Ljava/lang/Object;
    .restart local v38    # "retainedHeapSize":Ljava/lang/reflect/Field;
    :cond_7
    :try_start_9
    const-string/jumbo v40, "OnLineMonitor"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "leak item: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;->className:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ","

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;->retainedHeapSize:J

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    long-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x44800000    # 1024.0f

    div-float v42, v42, v43

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " k"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ","

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;->simpleLeakTrace:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_4

    .line 200
    .end local v18    # "isLeakFound":Z
    .end local v19    # "item":Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;
    .end local v30    # "objAnalysisResult":Ljava/lang/Object;
    .end local v34    # "objLeakTrace":Ljava/lang/Object;
    :catch_3
    move-exception v40

    :try_start_a
    const-string/jumbo v40, "OnLineMonitor"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Failed to AnalysisResult"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_4

    .line 203
    .end local v6    # "analysisDurationMs":Ljava/lang/reflect/Field;
    .end local v7    # "classAnalysisResult":Ljava/lang/Class;
    .end local v8    # "classExcludedRefs":Ljava/lang/Class;
    .end local v9    # "classExcludedRefsSuper":Ljava/lang/Class;
    .end local v10    # "classHeapAnalyzer":Ljava/lang/Class;
    .end local v11    # "classLeakTrace":Ljava/lang/Class;
    .end local v12    # "className":Ljava/lang/reflect/Field;
    .end local v20    # "key":Ljava/lang/String;
    .end local v21    # "leakFound":Ljava/lang/reflect/Field;
    .end local v23    # "leakTrace":Ljava/lang/reflect/Field;
    .end local v24    # "methodAndroidDefaults":Ljava/lang/reflect/Method;
    .end local v25    # "methodCheckForLeak":Ljava/lang/reflect/Method;
    .end local v26    # "methodToDetailedString":Ljava/lang/reflect/Method;
    .end local v27    # "methodbuild":Ljava/lang/reflect/Method;
    .end local v28    # "methodtToString":Ljava/lang/reflect/Method;
    .end local v31    # "objBuilder":Ljava/lang/Object;
    .end local v32    # "objExcludedRefs":Ljava/lang/Object;
    .end local v33    # "objHeapAnalyzer":Ljava/lang/Object;
    .end local v38    # "retainedHeapSize":Ljava/lang/reflect/Field;
    :catch_4
    move-exception v15

    .line 204
    .restart local v15    # "e":Ljava/lang/Throwable;
    const-string/jumbo v40, "OnLineMonitor"

    const-string/jumbo v41, "Failed to dump memory"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .end local v15    # "e":Ljava/lang/Throwable;
    :cond_8
    sget-boolean v40, Lc8/Asf;->sMemoryAnalysis:Z

    if-nez v40, :cond_0

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mHeapDumpFile:Ljava/io/File;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method

.method findStaticVariables()Ljava/util/List;
    .locals 62
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mHeapDumpFile:Ljava/io/File;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/io/File;->exists()Z

    move-result v57

    if-nez v57, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mHeapDumpFile:Ljava/io/File;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v57 .. v57}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    new-instance v49, Ljava/util/ArrayList;

    const/16 v57, 0x3e8

    move-object/from16 v0, v49

    move/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .local v49, "results":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;>;"
    :try_start_1
    const-string/jumbo v57, "com.squareup.haha.perflib.io.MemoryMappedFileBuffer"

    invoke-static/range {v57 .. v57}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 232
    .local v8, "classHprofMemoryBuffer":Ljava/lang/Class;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-class v59, Ljava/io/File;

    aput-object v59, v57, v58

    move-object/from16 v0, v57

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 233
    .local v13, "constructor":Ljava/lang/reflect/Constructor;
    const/16 v57, 0x1

    move/from16 v0, v57

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 234
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mHeapDumpFile:Ljava/io/File;

    move-object/from16 v59, v0

    aput-object v59, v57, v58

    move-object/from16 v0, v57

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    .line 235
    .local v42, "objHprofBuffer":Ljava/lang/Object;
    const-string/jumbo v57, "com.squareup.haha.perflib.io.HprofBuffer"

    invoke-static/range {v57 .. v57}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 236
    .local v7, "classHprofBuffer":Ljava/lang/Class;
    const-string/jumbo v57, "com.squareup.haha.perflib.HprofParser"

    invoke-static/range {v57 .. v57}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 237
    .local v9, "classHprofParser":Ljava/lang/Class;
    const-string/jumbo v57, "parse"

    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v58, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-virtual {v9, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v36

    .line 238
    .local v36, "methodParse":Ljava/lang/reflect/Method;
    const/16 v57, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 240
    const-string/jumbo v57, "com.squareup.haha.perflib.Snapshot"

    invoke-static/range {v57 .. v57}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 241
    .local v11, "classSnapshot":Ljava/lang/Class;
    const-string/jumbo v57, "computeDominators"

    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v58, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-virtual {v11, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v28

    .line 242
    .local v28, "methodComputeDominators":Ljava/lang/reflect/Method;
    const/16 v57, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 243
    const-string/jumbo v57, "getReachableInstances"

    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v58, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-virtual {v11, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v37

    .line 244
    .local v37, "methodgetReachableInstances":Ljava/lang/reflect/Method;
    const/16 v57, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 245
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v7, v57, v58

    move-object/from16 v0, v57

    invoke-virtual {v9, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 246
    const/16 v57, 0x1

    move/from16 v0, v57

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 247
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v42, v57, v58

    move-object/from16 v0, v57

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .line 248
    .local v43, "objHprofParser":Ljava/lang/Object;
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    .line 249
    .local v45, "objSnapshot":Ljava/lang/Object;
    const-string/jumbo v57, "com.squareup.haha.perflib.Instance"

    invoke-static/range {v57 .. v57}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 250
    .local v10, "classInstance":Ljava/lang/Class;
    const-string/jumbo v57, "getClassObj"

    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v58, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v31

    .line 251
    .local v31, "methodGetClassObj":Ljava/lang/reflect/Method;
    const/16 v57, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 252
    const-string/jumbo v57, "getTotalRetainedSize"

    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v58, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v35

    .line 253
    .local v35, "methodGetTotalRetainedSize":Ljava/lang/reflect/Method;
    const/16 v57, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 254
    const-string/jumbo v57, "getSize"

    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v58, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v33

    .line 255
    .local v33, "methodGetSize":Ljava/lang/reflect/Method;
    const/16 v57, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 256
    const-string/jumbo v57, "mHardReferences"

    move-object/from16 v0, v57

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    .line 257
    .local v16, "fieldHardReferences":Ljava/lang/reflect/Field;
    const/16 v57, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 258
    const-string/jumbo v57, "mSoftReferences"

    move-object/from16 v0, v57

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 259
    .local v18, "fieldSoftReferences":Ljava/lang/reflect/Field;
    const/16 v57, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 261
    const-string/jumbo v57, "com.squareup.haha.perflib.ClassObj"

    invoke-static/range {v57 .. v57}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 262
    .local v5, "classClassObj":Ljava/lang/Class;
    const-string/jumbo v57, "getClassName"

    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v58, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v30

    .line 263
    .local v30, "methodGetClassName":Ljava/lang/reflect/Method;
    const/16 v57, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 265
    const-string/jumbo v57, "com.squareup.haha.perflib.ArrayInstance"

    invoke-static/range {v57 .. v57}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 266
    .local v4, "classArrayInstance":Ljava/lang/Class;
    const-string/jumbo v57, "com.squareup.haha.perflib.Type"

    invoke-static/range {v57 .. v57}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 268
    const-string/jumbo v57, "getStaticFieldValues"

    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v58, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v34

    .line 269
    .local v34, "methodGetStaticFieldValues":Ljava/lang/reflect/Method;
    const/16 v57, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 270
    const-string/jumbo v57, "com.squareup.haha.perflib.Field"

    invoke-static/range {v57 .. v57}, Lc8/Srf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 271
    .local v6, "classField":Ljava/lang/Class;
    const-string/jumbo v57, "getType"

    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v58, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v29

    .line 272
    .local v29, "methodGeType":Ljava/lang/reflect/Method;
    const/16 v57, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 273
    const-string/jumbo v57, "getName"

    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v58, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v32

    .line 274
    .local v32, "methodGetName":Ljava/lang/reflect/Method;
    const/16 v57, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 276
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v57, Ljava/util/ArrayList;

    const/16 v58, 0x3e8

    invoke-direct/range {v57 .. v58}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Srf;->mMemoryUsedList:Ljava/util/List;

    .line 278
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v45

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    .line 279
    .local v24, "instances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v52

    .line 280
    .local v52, "size":I
    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v0, v58

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Srf;->mTotalInstanceCount:J

    .line 281
    new-instance v55, Ljava/util/HashMap;

    invoke-direct/range {v55 .. v55}, Ljava/util/HashMap;-><init>()V

    .line 283
    .local v55, "staticOwnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/16 v22, 0x0

    .local v22, "index":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_b

    .line 284
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v44

    .line 285
    .local v44, "objInstance":Ljava/lang/Object;
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .line 286
    .local v39, "objClassObj":Ljava/lang/Object;
    if-eqz v39, :cond_a

    .line 289
    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v25

    .line 290
    .local v25, "isArrayObj":Z
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 291
    .local v23, "instanceClazzName":Ljava/lang/String;
    const-string/jumbo v57, "com.taobao.onlinemonitor"

    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v57

    if-nez v57, :cond_a

    const-string/jumbo v57, "char[]"

    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v57

    if-nez v57, :cond_a

    const-string/jumbo v57, "boolean[]"

    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v57

    if-nez v57, :cond_a

    .line 295
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/Long;

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    .line 296
    .local v50, "retainedSize":J
    sget v57, Lc8/osf;->sInstanceOccupySize:I

    move/from16 v0, v57

    int-to-long v0, v0

    move-wide/from16 v58, v0

    cmp-long v57, v50, v58

    if-ltz v57, :cond_6

    .line 297
    new-instance v26, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;

    invoke-direct/range {v26 .. v26}, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;-><init>()V

    .line 298
    .local v26, "item":Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->className:Ljava/lang/String;

    .line 299
    move-wide/from16 v0, v50

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->retainedHeapSize:J

    .line 300
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v44

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/Integer;

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v57

    move/from16 v0, v57

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v0, v58

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->shadowHeapSize:J

    .line 301
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Srf;->mTotalInstanceCount:J

    move-wide/from16 v58, v0

    const-wide/16 v60, 0x1

    add-long v58, v58, v60

    move-wide/from16 v0, v58

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Srf;->mTotalInstanceCount:J

    .line 302
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Srf;->mTotalInstanceSize:J

    move-wide/from16 v58, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->shadowHeapSize:J

    move-wide/from16 v60, v0

    add-long v58, v58, v60

    move-wide/from16 v0, v58

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Srf;->mTotalInstanceSize:J

    .line 303
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Srf;->mTotalInstanceRetainedSize:J

    move-wide/from16 v58, v0

    add-long v58, v58, v50

    move-wide/from16 v0, v58

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Srf;->mTotalInstanceRetainedSize:J

    .line 304
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 305
    .local v19, "hardReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/ArrayList;

    .line 306
    .local v53, "softReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v19, :cond_3

    .line 307
    new-instance v57, Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v58

    invoke-direct/range {v57 .. v58}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v57

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->hardReferences:Ljava/util/ArrayList;

    .line 308
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v57

    move/from16 v0, v20

    move/from16 v1, v57

    if-ge v0, v1, :cond_3

    .line 309
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    .line 310
    .local v38, "obj":Ljava/lang/Object;
    if-eqz v38, :cond_1

    .line 311
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->hardReferences:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 308
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 223
    .end local v4    # "classArrayInstance":Ljava/lang/Class;
    .end local v5    # "classClassObj":Ljava/lang/Class;
    .end local v6    # "classField":Ljava/lang/Class;
    .end local v7    # "classHprofBuffer":Ljava/lang/Class;
    .end local v8    # "classHprofMemoryBuffer":Ljava/lang/Class;
    .end local v9    # "classHprofParser":Ljava/lang/Class;
    .end local v10    # "classInstance":Ljava/lang/Class;
    .end local v11    # "classSnapshot":Ljava/lang/Class;
    .end local v13    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v16    # "fieldHardReferences":Ljava/lang/reflect/Field;
    .end local v18    # "fieldSoftReferences":Ljava/lang/reflect/Field;
    .end local v19    # "hardReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v20    # "i":I
    .end local v22    # "index":I
    .end local v23    # "instanceClazzName":Ljava/lang/String;
    .end local v24    # "instances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v25    # "isArrayObj":Z
    .end local v26    # "item":Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;
    .end local v28    # "methodComputeDominators":Ljava/lang/reflect/Method;
    .end local v29    # "methodGeType":Ljava/lang/reflect/Method;
    .end local v30    # "methodGetClassName":Ljava/lang/reflect/Method;
    .end local v31    # "methodGetClassObj":Ljava/lang/reflect/Method;
    .end local v32    # "methodGetName":Ljava/lang/reflect/Method;
    .end local v33    # "methodGetSize":Ljava/lang/reflect/Method;
    .end local v34    # "methodGetStaticFieldValues":Ljava/lang/reflect/Method;
    .end local v35    # "methodGetTotalRetainedSize":Ljava/lang/reflect/Method;
    .end local v36    # "methodParse":Ljava/lang/reflect/Method;
    .end local v37    # "methodgetReachableInstances":Ljava/lang/reflect/Method;
    .end local v38    # "obj":Ljava/lang/Object;
    .end local v39    # "objClassObj":Ljava/lang/Object;
    .end local v42    # "objHprofBuffer":Ljava/lang/Object;
    .end local v43    # "objHprofParser":Ljava/lang/Object;
    .end local v44    # "objInstance":Ljava/lang/Object;
    .end local v45    # "objSnapshot":Ljava/lang/Object;
    .end local v49    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;>;"
    .end local v50    # "retainedSize":J
    .end local v52    # "size":I
    .end local v53    # "softReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v55    # "staticOwnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v14

    .line 224
    .local v14, "e":Ljava/io/IOException;
    const-string/jumbo v57, "OnLineMonitor"

    const-string/jumbo v58, "Failed to dump memory"

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    const/16 v49, 0x0

    .line 407
    .end local v14    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v49

    .line 315
    .restart local v4    # "classArrayInstance":Ljava/lang/Class;
    .restart local v5    # "classClassObj":Ljava/lang/Class;
    .restart local v6    # "classField":Ljava/lang/Class;
    .restart local v7    # "classHprofBuffer":Ljava/lang/Class;
    .restart local v8    # "classHprofMemoryBuffer":Ljava/lang/Class;
    .restart local v9    # "classHprofParser":Ljava/lang/Class;
    .restart local v10    # "classInstance":Ljava/lang/Class;
    .restart local v11    # "classSnapshot":Ljava/lang/Class;
    .restart local v13    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v16    # "fieldHardReferences":Ljava/lang/reflect/Field;
    .restart local v18    # "fieldSoftReferences":Ljava/lang/reflect/Field;
    .restart local v19    # "hardReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v22    # "index":I
    .restart local v23    # "instanceClazzName":Ljava/lang/String;
    .restart local v24    # "instances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v25    # "isArrayObj":Z
    .restart local v26    # "item":Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;
    .restart local v28    # "methodComputeDominators":Ljava/lang/reflect/Method;
    .restart local v29    # "methodGeType":Ljava/lang/reflect/Method;
    .restart local v30    # "methodGetClassName":Ljava/lang/reflect/Method;
    .restart local v31    # "methodGetClassObj":Ljava/lang/reflect/Method;
    .restart local v32    # "methodGetName":Ljava/lang/reflect/Method;
    .restart local v33    # "methodGetSize":Ljava/lang/reflect/Method;
    .restart local v34    # "methodGetStaticFieldValues":Ljava/lang/reflect/Method;
    .restart local v35    # "methodGetTotalRetainedSize":Ljava/lang/reflect/Method;
    .restart local v36    # "methodParse":Ljava/lang/reflect/Method;
    .restart local v37    # "methodgetReachableInstances":Ljava/lang/reflect/Method;
    .restart local v39    # "objClassObj":Ljava/lang/Object;
    .restart local v42    # "objHprofBuffer":Ljava/lang/Object;
    .restart local v43    # "objHprofParser":Ljava/lang/Object;
    .restart local v44    # "objInstance":Ljava/lang/Object;
    .restart local v45    # "objSnapshot":Ljava/lang/Object;
    .restart local v49    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;>;"
    .restart local v50    # "retainedSize":J
    .restart local v52    # "size":I
    .restart local v53    # "softReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v55    # "staticOwnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    if-eqz v53, :cond_5

    .line 316
    :try_start_2
    new-instance v57, Ljava/util/ArrayList;

    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v58

    invoke-direct/range {v57 .. v58}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v57

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->softReferences:Ljava/util/ArrayList;

    .line 317
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_3
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v57

    move/from16 v0, v20

    move/from16 v1, v57

    if-ge v0, v1, :cond_5

    .line 318
    move-object/from16 v0, v53

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    .line 319
    .restart local v38    # "obj":Ljava/lang/Object;
    if-eqz v38, :cond_4

    .line 320
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->softReferences:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 324
    .end local v20    # "i":I
    .end local v38    # "obj":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mMemoryUsedList:Ljava/util/List;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v19    # "hardReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v26    # "item":Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;
    .end local v53    # "softReferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_6
    if-nez v25, :cond_a

    .line 327
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/util/Map;

    .line 328
    .local v54, "staticFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v54, :cond_a

    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->size()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v57

    if-eqz v57, :cond_a

    .line 331
    const/16 v47, 0x0

    .line 333
    .local v47, "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    :try_start_3
    invoke-interface/range {v54 .. v54}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    move-object/from16 v48, v47

    .end local v47    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .local v48, "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    :cond_7
    :goto_4
    :try_start_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 334
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v41

    .line 335
    .local v41, "objField":Ljava/lang/Object;
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    .line 337
    .local v46, "objType":Ljava/lang/Object;
    if-eqz v46, :cond_8

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v57

    const-string/jumbo v58, "OBJECT"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_7

    .line 341
    :cond_8
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 342
    .local v17, "fieldName":Ljava/lang/String;
    const-string/jumbo v57, "$staticOverhead"

    move-object/from16 v0, v17

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-nez v57, :cond_7

    .line 345
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v56

    .line 346
    .local v56, "value":Ljava/lang/Object;
    if-eqz v56, :cond_7

    .line 349
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    .line 350
    .local v40, "objClassObjValue":Ljava/lang/Object;
    if-eqz v40, :cond_7

    .line 353
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 354
    .local v12, "clazzName":Ljava/lang/String;
    const-string/jumbo v57, "com.taobao.onlinemonitor"

    move-object/from16 v0, v57

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v57

    if-nez v57, :cond_7

    .line 359
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/Long;

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    .line 360
    sget v57, Lc8/Asf;->sMemoryOccupySize:I

    move/from16 v0, v57

    int-to-long v0, v0

    move-wide/from16 v58, v0

    cmp-long v57, v50, v58

    if-ltz v57, :cond_d

    .line 361
    new-instance v26, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;

    invoke-direct/range {v26 .. v26}, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;-><init>()V

    .line 362
    .restart local v26    # "item":Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->fieldName:Ljava/lang/String;

    .line 363
    move-object/from16 v0, v26

    iput-object v12, v0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->className:Ljava/lang/String;

    .line 364
    move-wide/from16 v0, v50

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->retainedHeapSize:J

    .line 365
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lc8/Srf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/Integer;

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v57

    move/from16 v0, v57

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v0, v58

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->shadowHeapSize:J

    .line 366
    if-nez v48, :cond_c

    .line 367
    new-instance v47, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->className:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 369
    .end local v48    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .restart local v47    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    :goto_5
    :try_start_5
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->isSingleton:Z

    .line 370
    move-object/from16 v0, v47

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;->addStaticVariable(Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;)V

    .line 371
    move-object/from16 v0, v55

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v57

    if-nez v57, :cond_9

    .line 372
    sget-object v57, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v55

    move-object/from16 v1, v23

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Srf;->mTotalStaticCount:I

    move/from16 v57, v0

    add-int/lit8 v57, v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Srf;->mTotalStaticCount:I

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Srf;->mTotalStaticRetainedSize:I

    move/from16 v57, v0

    move/from16 v0, v57

    int-to-long v0, v0

    move-wide/from16 v58, v0

    add-long v58, v58, v50

    move-wide/from16 v0, v58

    long-to-int v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Srf;->mTotalStaticRetainedSize:I

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Srf;->mTotalStaticSize:I

    move/from16 v57, v0

    move/from16 v0, v57

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->shadowHeapSize:J

    move-wide/from16 v60, v0

    add-long v58, v58, v60

    move-wide/from16 v0, v58

    long-to-int v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Srf;->mTotalStaticSize:I

    .line 377
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->isSingleton:Z

    move/from16 v57, v0

    if-eqz v57, :cond_9

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Srf;->mTotalSingletonCount:I

    move/from16 v57, v0

    add-int/lit8 v57, v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Srf;->mTotalSingletonCount:I

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Srf;->mTotalSingletonSize:I

    move/from16 v57, v0

    move/from16 v0, v57

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->shadowHeapSize:J

    move-wide/from16 v60, v0

    add-long v58, v58, v60

    move-wide/from16 v0, v58

    long-to-int v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Srf;->mTotalSingletonSize:I

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Srf;->mTotalSingletonRetainedSize:I

    move/from16 v57, v0

    move/from16 v0, v57

    int-to-long v0, v0

    move-wide/from16 v58, v0

    add-long v58, v58, v50

    move-wide/from16 v0, v58

    long-to-int v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Srf;->mTotalSingletonRetainedSize:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .end local v26    # "item":Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;
    :cond_9
    :goto_6
    move-object/from16 v48, v47

    .line 386
    .end local v47    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .restart local v48    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    goto/16 :goto_4

    .line 388
    .end local v12    # "clazzName":Ljava/lang/String;
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v17    # "fieldName":Ljava/lang/String;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v40    # "objClassObjValue":Ljava/lang/Object;
    .end local v41    # "objField":Ljava/lang/Object;
    .end local v46    # "objType":Ljava/lang/Object;
    .end local v48    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .end local v56    # "value":Ljava/lang/Object;
    .restart local v47    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    :catch_1
    move-exception v14

    .line 389
    .local v14, "e":Ljava/lang/Throwable;
    :goto_7
    :try_start_6
    const-string/jumbo v57, "OnLineMonitor"

    const-string/jumbo v58, "\u5206\u6790\u5185\u5b58\u5f02\u5e38"

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 283
    .end local v14    # "e":Ljava/lang/Throwable;
    .end local v23    # "instanceClazzName":Ljava/lang/String;
    .end local v25    # "isArrayObj":Z
    .end local v47    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .end local v50    # "retainedSize":J
    .end local v54    # "staticFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_a
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 394
    .end local v4    # "classArrayInstance":Ljava/lang/Class;
    .end local v5    # "classClassObj":Ljava/lang/Class;
    .end local v6    # "classField":Ljava/lang/Class;
    .end local v7    # "classHprofBuffer":Ljava/lang/Class;
    .end local v8    # "classHprofMemoryBuffer":Ljava/lang/Class;
    .end local v9    # "classHprofParser":Ljava/lang/Class;
    .end local v10    # "classInstance":Ljava/lang/Class;
    .end local v11    # "classSnapshot":Ljava/lang/Class;
    .end local v13    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v16    # "fieldHardReferences":Ljava/lang/reflect/Field;
    .end local v18    # "fieldSoftReferences":Ljava/lang/reflect/Field;
    .end local v22    # "index":I
    .end local v24    # "instances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v28    # "methodComputeDominators":Ljava/lang/reflect/Method;
    .end local v29    # "methodGeType":Ljava/lang/reflect/Method;
    .end local v30    # "methodGetClassName":Ljava/lang/reflect/Method;
    .end local v31    # "methodGetClassObj":Ljava/lang/reflect/Method;
    .end local v32    # "methodGetName":Ljava/lang/reflect/Method;
    .end local v33    # "methodGetSize":Ljava/lang/reflect/Method;
    .end local v34    # "methodGetStaticFieldValues":Ljava/lang/reflect/Method;
    .end local v35    # "methodGetTotalRetainedSize":Ljava/lang/reflect/Method;
    .end local v36    # "methodParse":Ljava/lang/reflect/Method;
    .end local v37    # "methodgetReachableInstances":Ljava/lang/reflect/Method;
    .end local v39    # "objClassObj":Ljava/lang/Object;
    .end local v42    # "objHprofBuffer":Ljava/lang/Object;
    .end local v43    # "objHprofParser":Ljava/lang/Object;
    .end local v44    # "objInstance":Ljava/lang/Object;
    .end local v45    # "objSnapshot":Ljava/lang/Object;
    .end local v52    # "size":I
    .end local v55    # "staticOwnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :catch_2
    move-exception v14

    .line 395
    .restart local v14    # "e":Ljava/lang/Throwable;
    const-string/jumbo v57, "OnLineMonitor"

    const-string/jumbo v58, "\u5206\u6790\u5185\u5b58\u5931\u8d25"

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    .end local v14    # "e":Ljava/lang/Throwable;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mHeapDumpFile:Ljava/io/File;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/io/File;->delete()Z

    .line 400
    new-instance v27, Lc8/Qrf;

    invoke-direct/range {v27 .. v27}, Lc8/Qrf;-><init>()V

    .line 402
    .local v27, "memoryComparator":Lc8/Qrf;
    move-object/from16 v0, v49

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mMemoryUsedList:Ljava/util/List;

    move-object/from16 v57, v0

    if-eqz v57, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mMemoryUsedList:Ljava/util/List;

    move-object/from16 v57, v0

    invoke-interface/range {v57 .. v57}, Ljava/util/List;->size()I

    move-result v57

    if-lez v57, :cond_2

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Srf;->mMemoryUsedList:Ljava/util/List;

    move-object/from16 v57, v0

    new-instance v58, Lc8/Rrf;

    invoke-direct/range {v58 .. v58}, Lc8/Rrf;-><init>()V

    invoke-static/range {v57 .. v58}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_2

    .line 388
    .end local v27    # "memoryComparator":Lc8/Qrf;
    .restart local v4    # "classArrayInstance":Ljava/lang/Class;
    .restart local v5    # "classClassObj":Ljava/lang/Class;
    .restart local v6    # "classField":Ljava/lang/Class;
    .restart local v7    # "classHprofBuffer":Ljava/lang/Class;
    .restart local v8    # "classHprofMemoryBuffer":Ljava/lang/Class;
    .restart local v9    # "classHprofParser":Ljava/lang/Class;
    .restart local v10    # "classInstance":Ljava/lang/Class;
    .restart local v11    # "classSnapshot":Ljava/lang/Class;
    .restart local v13    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v16    # "fieldHardReferences":Ljava/lang/reflect/Field;
    .restart local v18    # "fieldSoftReferences":Ljava/lang/reflect/Field;
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v22    # "index":I
    .restart local v23    # "instanceClazzName":Ljava/lang/String;
    .restart local v24    # "instances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v25    # "isArrayObj":Z
    .restart local v28    # "methodComputeDominators":Ljava/lang/reflect/Method;
    .restart local v29    # "methodGeType":Ljava/lang/reflect/Method;
    .restart local v30    # "methodGetClassName":Ljava/lang/reflect/Method;
    .restart local v31    # "methodGetClassObj":Ljava/lang/reflect/Method;
    .restart local v32    # "methodGetName":Ljava/lang/reflect/Method;
    .restart local v33    # "methodGetSize":Ljava/lang/reflect/Method;
    .restart local v34    # "methodGetStaticFieldValues":Ljava/lang/reflect/Method;
    .restart local v35    # "methodGetTotalRetainedSize":Ljava/lang/reflect/Method;
    .restart local v36    # "methodParse":Ljava/lang/reflect/Method;
    .restart local v37    # "methodgetReachableInstances":Ljava/lang/reflect/Method;
    .restart local v39    # "objClassObj":Ljava/lang/Object;
    .restart local v42    # "objHprofBuffer":Ljava/lang/Object;
    .restart local v43    # "objHprofParser":Ljava/lang/Object;
    .restart local v44    # "objInstance":Ljava/lang/Object;
    .restart local v45    # "objSnapshot":Ljava/lang/Object;
    .restart local v48    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .restart local v50    # "retainedSize":J
    .restart local v52    # "size":I
    .restart local v54    # "staticFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v55    # "staticOwnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :catch_3
    move-exception v14

    move-object/from16 v47, v48

    .end local v48    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .restart local v47    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    goto :goto_7

    .end local v47    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .restart local v12    # "clazzName":Ljava/lang/String;
    .restart local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v17    # "fieldName":Ljava/lang/String;
    .restart local v26    # "item":Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;
    .restart local v40    # "objClassObjValue":Ljava/lang/Object;
    .restart local v41    # "objField":Ljava/lang/Object;
    .restart local v46    # "objType":Ljava/lang/Object;
    .restart local v48    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .restart local v56    # "value":Ljava/lang/Object;
    :cond_c
    move-object/from16 v47, v48

    .end local v48    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .restart local v47    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    goto/16 :goto_5

    .end local v26    # "item":Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;
    .end local v47    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .restart local v48    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    :cond_d
    move-object/from16 v47, v48

    .end local v48    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .restart local v47    # "owner":Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    goto :goto_6
.end method
