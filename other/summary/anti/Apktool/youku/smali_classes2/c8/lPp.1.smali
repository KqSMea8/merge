.class public Lc8/lPp;
.super Ljava/lang/Object;
.source "MtopSDKThreadPoolExecutorFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mPp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtopSDKThreadFactory"
.end annotation


# instance fields
.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private priority:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "proiority"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lc8/lPp;->priority:I

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/lPp;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/lPp;->type:Ljava/lang/String;

    .line 38
    iput p1, p0, Lc8/lPp;->priority:I

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lc8/lPp;->priority:I

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/lPp;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/lPp;->type:Ljava/lang/String;

    .line 43
    iput p1, p0, Lc8/lPp;->priority:I

    .line 44
    iput-object p2, p0, Lc8/lPp;->type:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lc8/lPp;)I
    .locals 1
    .param p0, "x0"    # Lc8/lPp;

    .prologue
    .line 31
    iget v0, p0, Lc8/lPp;->priority:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    .local v1, "threadName":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "MTOPSDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v2, p0, Lc8/lPp;->type:Ljava/lang/String;

    invoke-static {v2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lc8/lPp;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :goto_0
    const-string/jumbo v2, "Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/lPp;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    new-instance v0, Lc8/kPp;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lc8/kPp;-><init>(Lc8/lPp;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 64
    .local v0, "thread":Ljava/lang/Thread;
    return-object v0

    .line 53
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    const-string/jumbo v2, "DefaultPool "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
