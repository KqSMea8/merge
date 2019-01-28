.class public Lc8/Dyf;
.super Ljava/lang/Object;
.source "CentralWorkScheduler.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Eyf;-><init>(Ljava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Eyf;


# direct methods
.method constructor <init>(Lc8/Eyf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Eyf;

    .prologue
    .line 61
    iput-object p1, p0, Lc8/Dyf;->this$0:Lc8/Eyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "e"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 64
    const-string/jumbo v0, "RxSysLog"

    const-string/jumbo v1, "queue is full and no more available thread, directly run in thread(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/RNf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 68
    :cond_0
    return-void
.end method
