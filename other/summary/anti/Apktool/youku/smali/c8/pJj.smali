.class public abstract Lc8/pJj;
.super Ljava/lang/Object;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/oJj;,
        Lc8/nJj;,
        Lc8/mJj;,
        Lcom/youku/network/YoukuAsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lc8/mJj;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/youku/network/YoukuAsyncTask$Status;

.field private final mWorker:Lc8/nJj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/nJj",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v2, 0x5

    .line 40
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lc8/pJj;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 42
    new-instance v0, Lc8/iJj;

    invoke-direct {v0}, Lc8/iJj;-><init>()V

    sput-object v0, Lc8/pJj;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 50
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v3, 0xa

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lc8/pJj;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v8, Lc8/pJj;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lc8/pJj;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 58
    new-instance v0, Lc8/mJj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/mJj;-><init>(Lc8/iJj;)V

    sput-object v0, Lc8/pJj;->sHandler:Lc8/mJj;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    .local p0, "this":Lc8/pJj;, "Lcom/youku/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/youku/network/YoukuAsyncTask$Status;->PENDING:Lcom/youku/network/YoukuAsyncTask$Status;

    iput-object v0, p0, Lc8/pJj;->mStatus:Lcom/youku/network/YoukuAsyncTask$Status;

    .line 93
    new-instance v0, Lc8/jJj;

    invoke-direct {v0, p0}, Lc8/jJj;-><init>(Lc8/pJj;)V

    iput-object v0, p0, Lc8/pJj;->mWorker:Lc8/nJj;

    .line 100
    new-instance v0, Lc8/kJj;

    iget-object v1, p0, Lc8/pJj;->mWorker:Lc8/nJj;

    invoke-direct {v0, p0, v1}, Lc8/kJj;-><init>(Lc8/pJj;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lc8/pJj;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 133
    return-void
.end method

.method static synthetic access$200()Lc8/mJj;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lc8/pJj;->sHandler:Lc8/mJj;

    return-object v0
.end method

.method static synthetic access$300(Lc8/pJj;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lc8/pJj;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lc8/pJj;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lc8/pJj;, "Lcom/youku/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0, p1}, Lc8/pJj;->onPostExecute(Ljava/lang/Object;)V

    .line 350
    sget-object v0, Lcom/youku/network/YoukuAsyncTask$Status;->FINISHED:Lcom/youku/network/YoukuAsyncTask$Status;

    iput-object v0, p0, Lc8/pJj;->mStatus:Lcom/youku/network/YoukuAsyncTask$Status;

    .line 351
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 245
    .local p0, "this":Lc8/pJj;, "Lcom/youku/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lc8/pJj;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lc8/pJj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lc8/pJj",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lc8/pJj;, "Lcom/youku/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lc8/pJj;->mStatus:Lcom/youku/network/YoukuAsyncTask$Status;

    sget-object v1, Lcom/youku/network/YoukuAsyncTask$Status;->PENDING:Lcom/youku/network/YoukuAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 309
    sget-object v0, Lc8/lJj;->$SwitchMap$com$youku$network$YoukuAsyncTask$Status:[I

    iget-object v1, p0, Lc8/pJj;->mStatus:Lcom/youku/network/YoukuAsyncTask$Status;

    invoke-virtual {v1}, Lcom/youku/network/YoukuAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 320
    :cond_0
    sget-object v0, Lcom/youku/network/YoukuAsyncTask$Status;->RUNNING:Lcom/youku/network/YoukuAsyncTask$Status;

    iput-object v0, p0, Lc8/pJj;->mStatus:Lcom/youku/network/YoukuAsyncTask$Status;

    .line 324
    iget-object v0, p0, Lc8/pJj;->mWorker:Lc8/nJj;

    iput-object p1, v0, Lc8/nJj;->mParams:[Ljava/lang/Object;

    .line 325
    sget-object v0, Lc8/pJj;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lc8/pJj;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 327
    return-object p0

    .line 311
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 220
    .local p0, "this":Lc8/pJj;, "Lcom/youku/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lc8/pJj;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 209
    .local p0, "this":Lc8/pJj;, "Lcom/youku/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lc8/pJj;, "Lcom/youku/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lc8/pJj;, "Lcom/youku/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lc8/pJj;, "Lcom/youku/network/YoukuAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    sget-object v0, Lc8/pJj;->sHandler:Lc8/mJj;

    const/4 v1, 0x2

    new-instance v2, Lc8/oJj;

    invoke-direct {v2, p0, p1}, Lc8/oJj;-><init>(Lc8/pJj;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lc8/mJj;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 346
    return-void
.end method
