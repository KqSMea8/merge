.class public Lc8/cof;
.super Ljava/lang/Object;
.source "AndroidHack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bof;
    }
.end annotation


# static fields
.field private static activityThread:Ljava/lang/Object;

.field public static activityThreadClass:Lc8/eof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/eof",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static activityThreadCurrentActivityThread:Lc8/hof;

.field public static activityThreadInstrumentationField:Lc8/gof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/gof",
            "<",
            "Ljava/lang/Object;",
            "Landroid/app/Instrumentation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lc8/cof;->activityThread:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$002(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    sput-object p0, Lc8/cof;->activityThread:Ljava/lang/Object;

    return-object p0
.end method

.method public static attachBaseContext(Landroid/app/Application;)V
    .locals 4
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 27
    :try_start_0
    invoke-static {}, Lc8/cof;->init()V

    .line 28
    new-instance v1, Lc8/qof;

    invoke-static {}, Lc8/cof;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/qof;-><init>(Landroid/app/Instrumentation;Landroid/content/Context;)V

    invoke-static {v1}, Lc8/cof;->injectInstrumentationHook(Landroid/app/Instrumentation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActivityThread()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 35
    sget-object v2, Lc8/cof;->activityThread:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 38
    :try_start_0
    sget-object v2, Lc8/cof;->activityThreadCurrentActivityThread:Lc8/hof;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lc8/hof;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lc8/cof;->activityThread:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    sget-object v2, Lc8/cof;->activityThread:Ljava/lang/Object;

    return-object v2

    .line 39
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    .line 40
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .local v1, "handler":Landroid/os/Handler;
    sget-object v3, Lc8/cof;->activityThreadCurrentActivityThread:Lc8/hof;

    monitor-enter v3

    .line 47
    :try_start_1
    new-instance v2, Lc8/bof;

    invoke-direct {v2}, Lc8/bof;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    sget-object v2, Lc8/cof;->activityThreadCurrentActivityThread:Lc8/hof;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 50
    :catch_2
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static getInstrumentation()Landroid/app/Instrumentation;
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lc8/cof;->getActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "activityThread":Ljava/lang/Object;
    if-eqz v0, :cond_0

    sget-object v1, Lc8/cof;->activityThreadInstrumentationField:Lc8/gof;

    invoke-virtual {v1, v0}, Lc8/gof;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/flowcustoms/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 20
    const-string/jumbo v0, "android.app.ActivityThread"

    invoke-static {v0}, Lc8/iof;->into(Ljava/lang/String;)Lc8/eof;

    move-result-object v0

    .line 21
    sput-object v0, Lc8/cof;->activityThreadClass:Lc8/eof;

    const-string/jumbo v1, "mInstrumentation"

    invoke-virtual {v0, v1}, Lc8/eof;->field(Ljava/lang/String;)Lc8/gof;

    move-result-object v0

    const-class v1, Landroid/app/Instrumentation;

    invoke-virtual {v0, v1}, Lc8/gof;->ofType(Ljava/lang/Class;)Lc8/gof;

    move-result-object v0

    sput-object v0, Lc8/cof;->activityThreadInstrumentationField:Lc8/gof;

    .line 22
    sget-object v0, Lc8/cof;->activityThreadClass:Lc8/eof;

    const-string/jumbo v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lc8/eof;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/hof;

    move-result-object v0

    sput-object v0, Lc8/cof;->activityThreadCurrentActivityThread:Lc8/hof;

    .line 23
    return-void
.end method

.method public static injectInstrumentationHook(Landroid/app/Instrumentation;)V
    .locals 3
    .param p0, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lc8/cof;->getActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "activityThread":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 68
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Failed to get ActivityThread.sCurrentActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    sget-object v1, Lc8/cof;->activityThreadInstrumentationField:Lc8/gof;

    invoke-virtual {v1, v0, p0}, Lc8/gof;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    return-void
.end method
