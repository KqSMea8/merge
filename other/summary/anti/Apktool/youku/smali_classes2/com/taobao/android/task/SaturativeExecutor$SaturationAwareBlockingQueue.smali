.class public Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "SaturativeExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaturationAwareBlockingQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/LinkedBlockingQueue",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mExecutor:Lc8/cdf;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 184
    .local p0, "this":Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;, "Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;, "Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;->mExecutor:Lc8/cdf;

    invoke-virtual {v0}, Lc8/cdf;->isReallyUnsaturated()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unsaturated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;, "Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;->mExecutor:Lc8/cdf;

    invoke-virtual {v0}, Lc8/cdf;->isReallyUnsaturated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;, "Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;, "Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setExecutor(Lc8/cdf;)V
    .locals 0
    .param p1, "executor"    # Lc8/cdf;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;, "Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue<TT;>;"
    iput-object p1, p0, Lcom/taobao/android/task/SaturativeExecutor$SaturationAwareBlockingQueue;->mExecutor:Lc8/cdf;

    return-void
.end method
