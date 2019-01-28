.class public Lc8/fId;
.super Ljava/lang/Object;
.source "DefaultExecutorSupplier.java"

# interfaces
.implements Lc8/gId;


# static fields
.field public static final DEFAULT_MAX_NUM_THREADS:I


# instance fields
.field private final mImmediateNetworkExecutor:Lc8/dId;

.field private final mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mNetworkExecutor:Lc8/dId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lc8/fId;->DEFAULT_MAX_NUM_THREADS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lc8/jId;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lc8/jId;-><init>(I)V

    .line 37
    .local v0, "backgroundPriorityThreadFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Lc8/dId;

    sget v2, Lc8/fId;->DEFAULT_MAX_NUM_THREADS:I

    invoke-direct {v1, v2, v0}, Lc8/dId;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lc8/fId;->mNetworkExecutor:Lc8/dId;

    .line 38
    new-instance v1, Lc8/dId;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lc8/dId;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lc8/fId;->mImmediateNetworkExecutor:Lc8/dId;

    .line 39
    new-instance v1, Lc8/hId;

    invoke-direct {v1}, Lc8/hId;-><init>()V

    iput-object v1, p0, Lc8/fId;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 40
    return-void
.end method


# virtual methods
.method public forImmediateNetworkTasks()Lc8/dId;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lc8/fId;->mImmediateNetworkExecutor:Lc8/dId;

    return-object v0
.end method

.method public forMainThreadTasks()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/fId;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public forNetworkTasks()Lc8/dId;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lc8/fId;->mNetworkExecutor:Lc8/dId;

    return-object v0
.end method
