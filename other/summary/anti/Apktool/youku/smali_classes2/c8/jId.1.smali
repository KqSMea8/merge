.class public Lc8/jId;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mThreadPriority:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "threadPriority"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lc8/jId;->mThreadPriority:I

    .line 35
    return-void
.end method

.method static synthetic access$000(Lc8/jId;)I
    .locals 1
    .param p0, "x0"    # Lc8/jId;

    .prologue
    .line 29
    iget v0, p0, Lc8/jId;->mThreadPriority:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    new-instance v0, Lc8/iId;

    invoke-direct {v0, p0, p1}, Lc8/iId;-><init>(Lc8/jId;Ljava/lang/Runnable;)V

    .line 50
    .local v0, "wrapperRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v1
.end method
