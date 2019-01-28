.class public Lc8/kbf;
.super Lc8/PZe;
.source "PanguApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ibf;,
        Lc8/jbf;,
        Lc8/hbf;
    }
.end annotation


# static fields
.field protected static final mAppHandler:Landroid/os/Handler;


# instance fields
.field protected final mCreationCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final mCrossActivityLifecycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/hbf;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStartCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/kbf;->mAppHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/PZe;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/kbf;->mCreationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/kbf;->mStartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 113
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 67
    sget-object v0, Lc8/kbf;->mAppHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method protected static timeingCallbackMethod(Lc8/hbf;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8
    .param p0, "callback"    # Lc8/hbf;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    const-wide/32 v6, 0xf4240

    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 178
    .local v2, "time":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    .line 180
    .local v0, "cputime":J
    const-string/jumbo v4, "onCreated"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    invoke-interface {p0, p1}, Lc8/hbf;->onCreated(Landroid/app/Activity;)V

    .line 189
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    sub-long/2addr v4, v0

    div-long v0, v4, v6

    .line 190
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    div-long v2, v4, v6

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CrossLifeTiming - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms (cpu) / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms (real)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    return-void

    .line 182
    :cond_1
    const-string/jumbo v4, "onStarted"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    invoke-interface {p0, p1}, Lc8/hbf;->onStarted(Landroid/app/Activity;)V

    goto :goto_0

    .line 184
    :cond_2
    const-string/jumbo v4, "onStopped"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    invoke-interface {p0, p1}, Lc8/hbf;->onStopped(Landroid/app/Activity;)V

    goto :goto_0

    .line 186
    :cond_3
    const-string/jumbo v4, "onDestroyed"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    invoke-interface {p0, p1}, Lc8/hbf;->onDestroyed(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lc8/PZe;->onCreate()V

    .line 72
    invoke-static {p0}, Lc8/Def;->init(Landroid/app/Application;)V

    .line 73
    new-instance v0, Lc8/ibf;

    invoke-direct {v0, p0}, Lc8/ibf;-><init>(Lc8/kbf;)V

    invoke-virtual {p0, v0}, Lc8/kbf;->registerActivityLifecycleCallbacks(Lc8/OZe;)V

    .line 74
    invoke-static {}, Lc8/Ycf;->init()V

    .line 75
    return-void
.end method

.method public registerCrossActivityLifecycleCallback(Lc8/hbf;)V
    .locals 4
    .param p1, "callback"    # Lc8/hbf;

    .prologue
    .line 42
    if-nez p1, :cond_1

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "registerCrossActivityLifecycleCallback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .end local v0    # "here":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v1, p0, Lc8/kbf;->mCreationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_2

    .line 53
    sget-object v1, Lc8/kbf;->mAppHandler:Landroid/os/Handler;

    new-instance v2, Lc8/jbf;

    const-string/jumbo v3, "onCreated"

    invoke-direct {v2, p0, p1, v3}, Lc8/jbf;-><init>(Lc8/kbf;Lc8/hbf;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    :cond_2
    iget-object v1, p0, Lc8/kbf;->mStartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_0

    .line 57
    sget-object v1, Lc8/kbf;->mAppHandler:Landroid/os/Handler;

    new-instance v2, Lc8/jbf;

    const-string/jumbo v3, "onStarted"

    invoke-direct {v2, p0, p1, v3}, Lc8/jbf;-><init>(Lc8/kbf;Lc8/hbf;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public unregisterCrossActivityLifecycleCallback(Lc8/hbf;)V
    .locals 1
    .param p1, "callback"    # Lc8/hbf;

    .prologue
    .line 62
    iget-object v0, p0, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
