.class public Lc8/CTb;
.super Lc8/BTb;
.source "FinalizeFake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ETb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FakeFinalizerDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Lc8/CTb;


# instance fields
.field private volatile finalizingObject:Ljava/lang/Object;

.field private volatile finalizingStartedNanos:J

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lc8/CTb;

    invoke-direct {v0}, Lc8/CTb;-><init>()V

    sput-object v0, Lc8/CTb;->INSTANCE:Lc8/CTb;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 220
    const-string/jumbo v0, "FakeFinalizerDaemon"

    invoke-direct {p0, v0}, Lc8/BTb;-><init>(Ljava/lang/String;)V

    .line 221
    sget-object v0, Lc8/ETb;->mQueue:Ljava/lang/ref/ReferenceQueue;

    iput-object v0, p0, Lc8/CTb;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 222
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

.method static synthetic access$000()Lc8/CTb;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lc8/CTb;->INSTANCE:Lc8/CTb;

    return-object v0
.end method

.method static synthetic access$200(Lc8/CTb;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/CTb;

    .prologue
    .line 212
    iget-object v0, p0, Lc8/CTb;->finalizingObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lc8/CTb;)J
    .locals 2
    .param p0, "x0"    # Lc8/CTb;

    .prologue
    .line 212
    iget-wide v0, p0, Lc8/CTb;->finalizingStartedNanos:J

    return-wide v0
.end method

.method private doFinalize(Ljava/lang/ref/Reference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :try_start_0
    sget-object v2, Lc8/ETb;->mFinalizerReferenceClazz_RemoveMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lc8/ETb;->mFinalizerReferenceClazz:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lc8/CTb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 240
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/CTb;->finalizingStartedNanos:J

    .line 243
    iput-object v1, p0, Lc8/CTb;->finalizingObject:Ljava/lang/Object;

    .line 244
    invoke-static {}, Lc8/DTb;->access$100()Lc8/DTb;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    :try_start_2
    invoke-static {}, Lc8/DTb;->access$100()Lc8/DTb;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 246
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    sget-object v2, Lc8/ETb;->mObjectClazz_FinalizeMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lc8/CTb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 255
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lc8/CTb;->finalizingObject:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 260
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 246
    .restart local v1    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 249
    :catch_0
    move-exception v0

    .line 252
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_7
    const-string/jumbo v2, "GCMagic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Uncaught exception thrown by ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") finalizer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 255
    const/4 v2, 0x0

    :try_start_8
    iput-object v2, p0, Lc8/CTb;->finalizingObject:Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 257
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "object":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 258
    .restart local v0    # "ex":Ljava/lang/Throwable;
    const-string/jumbo v2, "GCMagic"

    const-string/jumbo v3, "FinalizerReference remove exception by finalizer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 255
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "object":Ljava/lang/Object;
    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    :try_start_9
    iput-object v3, p0, Lc8/CTb;->finalizingObject:Ljava/lang/Object;

    throw v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 226
    :goto_0
    invoke-virtual {p0}, Lc8/CTb;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    :try_start_0
    iget-object v0, p0, Lc8/CTb;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/CTb;->doFinalize(Ljava/lang/ref/Reference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method
