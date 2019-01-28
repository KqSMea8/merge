.class public Lc8/ETb;
.super Ljava/lang/Object;
.source "FinalizeFake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/DTb;,
        Lc8/BTb;,
        Lc8/CTb;
    }
.end annotation


# static fields
.field private static final MAX_FINALIZE_NANOS:J = 0x2540be400L

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00

.field static STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

.field static mDaemonsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static mDaemonsInnerClazzInstances:[Ljava/lang/Object;

.field static mDaemonsInnerClazzStartMethods:[Ljava/lang/reflect/Method;

.field static mDaemonsInnerClazzStopMethods:[Ljava/lang/reflect/Method;

.field static mDaemonsInnerClazzes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static mFinalizerReferenceClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static mFinalizerReferenceClazz_RemoveMethod:Ljava/lang/reflect/Method;

.field static mObjectClazz_FinalizeMethod:Ljava/lang/reflect/Method;

.field static mQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static mSystemThreadGroup:Ljava/lang/ThreadGroup;

.field static mThreadGroupClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field volatile initSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 51
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lc8/ETb;->mDaemonsInnerClazzes:[Ljava/lang/Class;

    .line 52
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lc8/ETb;->mDaemonsInnerClazzInstances:[Ljava/lang/Object;

    .line 53
    new-array v0, v1, [Ljava/lang/reflect/Method;

    sput-object v0, Lc8/ETb;->mDaemonsInnerClazzStartMethods:[Ljava/lang/reflect/Method;

    .line 54
    new-array v0, v1, [Ljava/lang/reflect/Method;

    sput-object v0, Lc8/ETb;->mDaemonsInnerClazzStopMethods:[Ljava/lang/reflect/Method;

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Lc8/ETb;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/ETb;->initSuccess:Z

    .line 59
    :try_start_0
    invoke-direct {p0}, Lc8/ETb;->initialize()V

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/ETb;->initSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FinalizeFake initialize"

    invoke-static {v1, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
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

.method private initialize()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 169
    const-class v11, Ljava/lang/Object;

    const-string/jumbo v12, "finalize"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 170
    sput-object v11, Lc8/ETb;->mObjectClazz_FinalizeMethod:Ljava/lang/reflect/Method;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 173
    const-string/jumbo v11, "java.lang.ThreadGroup"

    invoke-static {v11}, Lc8/ETb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lc8/ETb;->mThreadGroupClazz:Ljava/lang/Class;

    .line 175
    :try_start_0
    sget-object v11, Lc8/ETb;->mThreadGroupClazz:Ljava/lang/Class;

    const-string/jumbo v12, "systemThreadGroup"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 176
    .local v10, "systemThreadGroupField":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 177
    sget-object v11, Lc8/ETb;->mThreadGroupClazz:Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ThreadGroup;

    sput-object v11, Lc8/ETb;->mSystemThreadGroup:Ljava/lang/ThreadGroup;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    const-string/jumbo v11, "java.lang.ref.FinalizerReference"

    invoke-static {v11}, Lc8/ETb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 184
    sput-object v11, Lc8/ETb;->mFinalizerReferenceClazz:Ljava/lang/Class;

    const-string/jumbo v12, "queue"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 185
    .local v9, "queueField":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 186
    sget-object v11, Lc8/ETb;->mFinalizerReferenceClazz:Ljava/lang/Class;

    invoke-virtual {v9, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/ReferenceQueue;

    sput-object v11, Lc8/ETb;->mQueue:Ljava/lang/ref/ReferenceQueue;

    .line 187
    sget-object v11, Lc8/ETb;->mFinalizerReferenceClazz:Ljava/lang/Class;

    const-string/jumbo v12, "remove"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    sget-object v15, Lc8/ETb;->mFinalizerReferenceClazz:Ljava/lang/Class;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Lc8/ETb;->mFinalizerReferenceClazz_RemoveMethod:Ljava/lang/reflect/Method;

    .line 190
    const/4 v11, 0x5

    new-array v3, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "java.lang.Daemons$ReferenceQueueDaemon"

    aput-object v12, v3, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "java.lang.Daemons$FinalizerDaemon"

    aput-object v12, v3, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "java.lang.Daemons$FinalizerWatchdogDaemon"

    aput-object v12, v3, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "java.lang.Daemons$HeapTrimmerDaemon"

    aput-object v12, v3, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "java.lang.Daemons$GCDaemon"

    aput-object v12, v3, v11

    .line 194
    .local v3, "clazzNames":[Ljava/lang/String;
    const-string/jumbo v11, "java.lang.Daemons"

    invoke-static {v11}, Lc8/ETb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 195
    sput-object v11, Lc8/ETb;->mDaemonsClazz:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    .line 196
    .local v1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v2, v0, v5

    .line 197
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v11, v3

    if-ge v4, v11, :cond_0

    .line 198
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    aget-object v12, v3, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 199
    sget-object v11, Lc8/ETb;->mDaemonsInnerClazzes:[Ljava/lang/Class;

    aput-object v2, v11, v4

    .line 200
    const-string/jumbo v11, "INSTANCE"

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 201
    .local v7, "instanceField":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 202
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 203
    .local v6, "instance":Ljava/lang/Object;
    sget-object v11, Lc8/ETb;->mDaemonsInnerClazzInstances:[Ljava/lang/Object;

    aput-object v6, v11, v4

    .line 204
    sget-object v11, Lc8/ETb;->mDaemonsInnerClazzStartMethods:[Ljava/lang/reflect/Method;

    const-string/jumbo v12, "start"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v11, v4

    .line 205
    sget-object v11, Lc8/ETb;->mDaemonsInnerClazzStopMethods:[Ljava/lang/reflect/Method;

    const-string/jumbo v12, "stop"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v11, v4

    .line 196
    .end local v6    # "instance":Ljava/lang/Object;
    .end local v7    # "instanceField":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 179
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "clazzNames":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "queueField":Ljava/lang/reflect/Field;
    .end local v10    # "systemThreadGroupField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v11

    sget-object v11, Lc8/ETb;->mThreadGroupClazz:Ljava/lang/Class;

    const-string/jumbo v12, "mSystem"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 180
    .restart local v10    # "systemThreadGroupField":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 181
    sget-object v11, Lc8/ETb;->mThreadGroupClazz:Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ThreadGroup;

    sput-object v11, Lc8/ETb;->mSystemThreadGroup:Ljava/lang/ThreadGroup;

    goto/16 :goto_0

    .line 197
    .restart local v0    # "arr$":[Ljava/lang/Class;
    .restart local v1    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "clazzNames":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "queueField":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 210
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public resumeFinalizerDaemon()V
    .locals 4

    .prologue
    .line 105
    iget-boolean v1, p0, Lc8/ETb;->initSuccess:Z

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/CTb;->access$000()Lc8/CTb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/CTb;->stop()V

    .line 110
    invoke-static {}, Lc8/DTb;->access$100()Lc8/DTb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/DTb;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 116
    :goto_1
    :try_start_1
    sget-object v1, Lc8/ETb;->mDaemonsInnerClazzStartMethods:[Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v2, Lc8/ETb;->mDaemonsInnerClazzInstances:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/ETb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 127
    :cond_2
    :try_start_2
    sget-object v1, Lc8/ETb;->mDaemonsInnerClazzStartMethods:[Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lc8/ETb;->mDaemonsInnerClazzInstances:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/ETb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    instance-of v1, v0, Ljava/lang/IllegalAccessException;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "already running"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    :cond_3
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 119
    .restart local v0    # "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/IllegalAccessException;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "already running"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    :cond_4
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public startFakeFinalizerDaemon()V
    .locals 4

    .prologue
    .line 69
    iget-boolean v1, p0, Lc8/ETb;->initSuccess:Z

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    sget-object v1, Lc8/ETb;->mDaemonsInnerClazzStopMethods:[Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v2, Lc8/ETb;->mDaemonsInnerClazzInstances:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/ETb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :cond_1
    :try_start_1
    sget-object v1, Lc8/ETb;->mDaemonsInnerClazzStopMethods:[Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lc8/ETb;->mDaemonsInnerClazzInstances:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/ETb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    :cond_2
    :try_start_2
    invoke-static {}, Lc8/CTb;->access$000()Lc8/CTb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/CTb;->start()V

    .line 95
    invoke-static {}, Lc8/DTb;->access$100()Lc8/DTb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/DTb;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lc8/ETb;->resumeFinalizerDaemon()V

    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "not running"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    :cond_3
    throw v0

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "not running"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    :cond_4
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method
