.class public final Lc8/hxq;
.super Lc8/amq;
.source "NewThreadScheduler.java"


# instance fields
.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/amq;-><init>()V

    .line 28
    iput-object p1, p0, Lc8/hxq;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 29
    return-void
.end method


# virtual methods
.method public createWorker()Lc8/Zlq;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lc8/jxq;

    iget-object v1, p0, Lc8/hxq;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lc8/jxq;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
