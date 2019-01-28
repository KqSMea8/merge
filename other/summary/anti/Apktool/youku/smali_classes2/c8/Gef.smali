.class public Lc8/Gef;
.super Lc8/Fef;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Fef",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxPoolSize"    # I

    .prologue
    .line 146
    .local p0, "this":Lc8/Gef;, "Lcom/taobao/android/utils/pools/Pools$SynchronizedPool<TT;>;"
    invoke-direct {p0, p1}, Lc8/Fef;-><init>(I)V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/Gef;->mLock:Ljava/lang/Object;

    .line 147
    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lc8/Gef;, "Lcom/taobao/android/utils/pools/Pools$SynchronizedPool<TT;>;"
    iget-object v1, p0, Lc8/Gef;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    invoke-super {p0}, Lc8/Fef;->acquire()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lc8/Gef;, "Lcom/taobao/android/utils/pools/Pools$SynchronizedPool<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lc8/Gef;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    invoke-super {p0, p1}, Lc8/Fef;->release(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 165
    .local p0, "this":Lc8/Gef;, "Lcom/taobao/android/utils/pools/Pools$SynchronizedPool<TT;>;"
    iget-object v1, p0, Lc8/Gef;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    invoke-super {p0}, Lc8/Fef;->shutdown()V

    .line 167
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
