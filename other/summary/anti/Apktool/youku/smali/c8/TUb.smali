.class public Lc8/TUb;
.super Ljava/lang/Object;
.source "ThreadSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialization(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 32
    .param p2, "isMainThread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "mapStackTrace":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    if-eqz p1, :cond_a

    .line 21
    :try_start_0
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .local v16, "sb":Ljava/lang/StringBuffer;
    const/16 v25, 0xc8

    .line 23
    .local v25, "traceMaxLength":I
    const/16 v9, 0x40

    .line 25
    .local v9, "elementMaxLength":I
    const/4 v6, 0x0

    .line 26
    .local v6, "count":I
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 27
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    if-eqz v10, :cond_8

    .line 28
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Thread;

    .line 29
    .local v21, "thread":Ljava/lang/Thread;
    if-eqz v21, :cond_8

    .line 30
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    .line 31
    .local v14, "name":Ljava/lang/String;
    if-eqz v14, :cond_1

    const-string/jumbo v28, "MainLooper_Monitor"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 34
    :cond_1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getPriority()I

    move-result v15

    .line 35
    .local v15, "prio":I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getId()J

    move-result-wide v26

    .line 36
    .local v26, "tid":J
    const-string/jumbo v19, ""

    .line 37
    .local v19, "stateName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v20

    .line 38
    .local v20, "tState":Ljava/lang/Thread$State;
    if-eqz v20, :cond_3

    .line 39
    if-nez p2, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "RUNNABLE"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 42
    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v19

    .line 44
    :cond_3
    const-string/jumbo v23, ""

    .line 45
    .local v23, "threadGroupName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v22

    .line 46
    .local v22, "threadGroup":Ljava/lang/ThreadGroup;
    if-eqz v22, :cond_4

    .line 47
    invoke-virtual/range {v22 .. v22}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v23

    .line 48
    const-string/jumbo v28, "system"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 52
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "className":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 54
    .local v4, "classLoaderInfo":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 55
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_5

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    :cond_5
    const-string/jumbo v28, "name:%s prio:%d tid:%d \n|state:%s \n|group:%s \n|class:%s \n|classLoader:%s\n"

    const/16 v29, 0x7

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v14, v29, v30

    const/16 v30, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x3

    aput-object v19, v29, v30

    const/16 v30, 0x4

    aput-object v23, v29, v30

    const/16 v30, 0x5

    aput-object v5, v29, v30

    const/16 v30, 0x6

    aput-object v4, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 60
    .local v24, "threadName":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/StackTraceElement;

    .line 62
    .local v18, "stackTraceElements":[Ljava/lang/StackTraceElement;
    if-eqz v18, :cond_7

    if-eqz v9, :cond_7

    .line 63
    const-string/jumbo v28, "|stackTrace:\n "

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const/4 v8, 0x0

    .line 65
    .local v8, "elementCount":I
    move-object/from16 v2, v18

    .local v2, "arr$":[Ljava/lang/StackTraceElement;
    move-object/from16 v0, v18

    array-length v13, v0

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_7

    aget-object v17, v2, v12

    .line 66
    .local v17, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-eqz v17, :cond_6

    .line 67
    const-string/jumbo v28, "at %s\n"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 71
    if-ge v8, v9, :cond_7

    .line 65
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v8    # "elementCount":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v17    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_7
    const-string/jumbo v28, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "classLoaderInfo":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "prio":I
    .end local v18    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    .end local v19    # "stateName":Ljava/lang/String;
    .end local v20    # "tState":Ljava/lang/Thread$State;
    .end local v21    # "thread":Ljava/lang/Thread;
    .end local v22    # "threadGroup":Ljava/lang/ThreadGroup;
    .end local v23    # "threadGroupName":Ljava/lang/String;
    .end local v24    # "threadName":Ljava/lang/String;
    .end local v26    # "tid":J
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 81
    move/from16 v0, v25

    if-lt v6, v0, :cond_0

    .line 85
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    .line 90
    .end local v6    # "count":I
    .end local v9    # "elementMaxLength":I
    .end local v16    # "sb":Ljava/lang/StringBuffer;
    .end local v25    # "traceMaxLength":I
    :goto_1
    return-object v28

    .line 87
    :catch_0
    move-exception v7

    .line 88
    .local v7, "e":Ljava/lang/Exception;
    sget-object v28, Lc8/IUb;->TAG:Ljava/lang/String;

    const-string/jumbo v29, "serialization failed."

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_a
    const-string/jumbo v28, ""

    goto :goto_1
.end method
