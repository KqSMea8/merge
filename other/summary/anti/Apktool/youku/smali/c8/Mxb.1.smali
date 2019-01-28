.class public abstract Lc8/Mxb;
.super Ljava/lang/Object;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BranchMerge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 349
    .local p0, "this":Lc8/Mxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchMerge<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract branchFlow()Ljava/util/concurrent/CountDownLatch;
.end method

.method abstract createLatch()Ljava/util/concurrent/CountDownLatch;
.end method

.method final flowAndWait()V
    .locals 2

    .prologue
    .line 353
    .local p0, "this":Lc8/Mxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchMerge<TT;>;"
    invoke-virtual {p0}, Lc8/Mxb;->branchFlow()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 355
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
