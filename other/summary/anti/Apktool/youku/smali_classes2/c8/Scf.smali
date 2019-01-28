.class public Lc8/Scf;
.super Ljava/lang/Object;
.source "Coordinator.java"

# interfaces
.implements Lc8/Rcf;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Vcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandaloneTask"
.end annotation


# instance fields
.field mPriorityQueue:I

.field final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    const/16 v0, 0x1e

    iput v0, p0, Lc8/Scf;->mPriorityQueue:I

    .line 534
    iput-object p1, p0, Lc8/Scf;->mRunnable:Ljava/lang/Runnable;

    .line 535
    return-void
.end method


# virtual methods
.method public getQueuePriority()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lc8/Scf;->mRunnable:Ljava/lang/Runnable;

    instance-of v0, v0, Lc8/Rcf;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lc8/Scf;->mRunnable:Ljava/lang/Runnable;

    check-cast v0, Lc8/Rcf;

    invoke-interface {v0}, Lc8/Rcf;->getQueuePriority()I

    move-result v0

    .line 542
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lc8/Scf;->mPriorityQueue:I

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 548
    :try_start_0
    iget-object v0, p0, Lc8/Scf;->mRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lc8/Vcf;->runWithTiming(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    return-void

    .line 549
    :catchall_0
    move-exception v0

    throw v0
.end method
