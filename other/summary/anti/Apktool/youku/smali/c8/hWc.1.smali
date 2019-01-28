.class public abstract Lc8/hWc;
.super Ljava/lang/Object;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/eWc;,
        Lc8/gWc;,
        Lc8/fWc;,
        Lcom/baseproject/image/ImageAsyncTask$Status;
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

.field private static final sHandler:Lc8/fWc;

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

.field private volatile mStatus:Lcom/baseproject/image/ImageAsyncTask$Status;

.field private final mWorker:Lc8/gWc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/gWc",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lc8/hWc;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 35
    new-instance v0, Lc8/bWc;

    invoke-direct {v0}, Lc8/bWc;-><init>()V

    sput-object v0, Lc8/hWc;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 43
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x6

    const/16 v3, 0x24

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lc8/hWc;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v8, Lc8/hWc;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lc8/hWc;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    new-instance v0, Lc8/fWc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/fWc;-><init>(Lc8/bWc;)V

    sput-object v0, Lc8/hWc;->sHandler:Lc8/fWc;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    .local p0, "this":Lc8/hWc;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/baseproject/image/ImageAsyncTask$Status;->PENDING:Lcom/baseproject/image/ImageAsyncTask$Status;

    iput-object v0, p0, Lc8/hWc;->mStatus:Lcom/baseproject/image/ImageAsyncTask$Status;

    .line 87
    new-instance v0, Lc8/cWc;

    invoke-direct {v0, p0}, Lc8/cWc;-><init>(Lc8/hWc;)V

    iput-object v0, p0, Lc8/hWc;->mWorker:Lc8/gWc;

    .line 94
    new-instance v0, Lc8/dWc;

    iget-object v1, p0, Lc8/hWc;->mWorker:Lc8/gWc;

    invoke-direct {v0, p0, v1}, Lc8/dWc;-><init>(Lc8/hWc;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lc8/hWc;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 126
    return-void
.end method

.method static synthetic access$200()Lc8/fWc;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lc8/hWc;->sHandler:Lc8/fWc;

    return-object v0
.end method

.method static synthetic access$300(Lc8/hWc;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lc8/hWc;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lc8/hWc;->finish(Ljava/lang/Object;)V

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
    .line 343
    .local p0, "this":Lc8/hWc;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    sget-object v0, Lcom/baseproject/image/ImageAsyncTask$Status;->FINISHED:Lcom/baseproject/image/ImageAsyncTask$Status;

    iput-object v0, p0, Lc8/hWc;->mStatus:Lcom/baseproject/image/ImageAsyncTask$Status;

    .line 344
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
    .line 202
    .local p0, "this":Lc8/hWc;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
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
    .line 193
    .local p0, "this":Lc8/hWc;, "Lcom/baseproject/image/ImageAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method
