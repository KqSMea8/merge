.class public final Lc8/cxq;
.super Lc8/amq;
.source "ExecutorScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bxq;
    }
.end annotation


# instance fields
.field final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 34
    invoke-direct {p0}, Lc8/amq;-><init>()V

    .line 35
    iput-object p1, p0, Lc8/cxq;->executor:Ljava/util/concurrent/Executor;

    .line 36
    return-void
.end method


# virtual methods
.method public createWorker()Lc8/Zlq;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lc8/bxq;

    iget-object v1, p0, Lc8/cxq;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lc8/bxq;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
