.class public abstract Lc8/eSh;
.super Ljava/lang/Object;
.source "HttpAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bSh;,
        Lc8/dSh;,
        Lc8/cSh;,
        Lcom/youku/http/HttpAsyncTask$Status;
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
.field private static handle:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lc8/cSh;

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

.field private volatile mStatus:Lcom/youku/http/HttpAsyncTask$Status;

.field private final mWorker:Lc8/dSh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/dSh",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v3, 0xa

    .line 27
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lc8/eSh;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 29
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    sput-object v0, Lc8/eSh;->handle:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 30
    new-instance v0, Lc8/YRh;

    invoke-direct {v0}, Lc8/YRh;-><init>()V

    sput-object v0, Lc8/eSh;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 38
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lc8/eSh;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v8, Lc8/eSh;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    sget-object v9, Lc8/eSh;->handle:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lc8/eSh;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    new-instance v0, Lc8/cSh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/cSh;-><init>(Lc8/YRh;)V

    sput-object v0, Lc8/eSh;->sHandler:Lc8/cSh;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    .local p0, "this":Lc8/eSh;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/youku/http/HttpAsyncTask$Status;->PENDING:Lcom/youku/http/HttpAsyncTask$Status;

    iput-object v0, p0, Lc8/eSh;->mStatus:Lcom/youku/http/HttpAsyncTask$Status;

    .line 81
    new-instance v0, Lc8/ZRh;

    invoke-direct {v0, p0}, Lc8/ZRh;-><init>(Lc8/eSh;)V

    iput-object v0, p0, Lc8/eSh;->mWorker:Lc8/dSh;

    .line 88
    new-instance v0, Lc8/aSh;

    iget-object v1, p0, Lc8/eSh;->mWorker:Lc8/dSh;

    invoke-direct {v0, p0, v1}, Lc8/aSh;-><init>(Lc8/eSh;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lc8/eSh;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 120
    return-void
.end method

.method static synthetic access$200()Lc8/cSh;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lc8/eSh;->sHandler:Lc8/cSh;

    return-object v0
.end method

.method static synthetic access$300(Lc8/eSh;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lc8/eSh;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lc8/eSh;->finish(Ljava/lang/Object;)V

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
    .line 334
    .local p0, "this":Lc8/eSh;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    sget-object v0, Lcom/youku/http/HttpAsyncTask$Status;->FINISHED:Lcom/youku/http/HttpAsyncTask$Status;

    iput-object v0, p0, Lc8/eSh;->mStatus:Lcom/youku/http/HttpAsyncTask$Status;

    .line 335
    return-void
.end method


# virtual methods
.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 196
    .local p0, "this":Lc8/eSh;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 187
    .local p0, "this":Lc8/eSh;, "Lcom/youku/http/HttpAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method
