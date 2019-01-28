.class public Lc8/gJj;
.super Ljava/lang/Object;
.source "YKThreadPoolExecutorFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hJj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YKThreadFactory"
.end annotation


# instance fields
.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private priority:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "proiority"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/gJj;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    iput p1, p0, Lc8/gJj;->priority:I

    .line 38
    return-void
.end method

.method static synthetic access$000(Lc8/gJj;)I
    .locals 1
    .param p0, "x0"    # Lc8/gJj;

    .prologue
    .line 31
    iget v0, p0, Lc8/gJj;->priority:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v1, "threadName":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "NetWork Pool"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v2, "Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/gJj;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    new-instance v0, Lc8/fJj;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lc8/fJj;-><init>(Lc8/gJj;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    .local v0, "thread":Ljava/lang/Thread;
    return-object v0
.end method
