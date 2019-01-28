.class public Lc8/Dtg;
.super Ljava/lang/Object;
.source "ThreadPoolExecutorFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Etg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0xa

    iput v0, p0, Lc8/Dtg;->a:I

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/Dtg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    iput p1, p0, Lc8/Dtg;->a:I

    .line 31
    return-void
.end method

.method static synthetic a(Lc8/Dtg;)I
    .locals 1
    .param p0, "x0"    # Lc8/Dtg;

    .prologue
    .line 24
    iget v0, p0, Lc8/Dtg;->a:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "aus work thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "threadName":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc8/Dtg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Lc8/Ctg;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lc8/Ctg;-><init>(Lc8/Dtg;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 45
    .local v0, "thread":Ljava/lang/Thread;
    return-object v0
.end method
