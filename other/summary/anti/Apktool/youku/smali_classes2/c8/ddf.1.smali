.class public Lc8/ddf;
.super Ljava/lang/Object;
.source "AsyncPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final eventCenter:Lc8/kdf;

.field private final queue:Lc8/zdf;


# direct methods
.method constructor <init>(Lc8/kdf;)V
    .locals 1
    .param p1, "eventCenter"    # Lc8/kdf;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lc8/ddf;->eventCenter:Lc8/kdf;

    .line 10
    new-instance v0, Lc8/zdf;

    invoke-direct {v0}, Lc8/zdf;-><init>()V

    iput-object v0, p0, Lc8/ddf;->queue:Lc8/zdf;

    .line 11
    return-void
.end method


# virtual methods
.method public enqueue(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)V
    .locals 2
    .param p1, "subscription"    # Lc8/Bdf;
    .param p2, "event"    # Lc8/fdf;
    .param p3, "callback"    # Lc8/gdf;

    .prologue
    .line 14
    invoke-static {p1, p2, p3}, Lc8/ydf;->obtainPendingPost(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)Lc8/ydf;

    move-result-object v0

    .line 15
    .local v0, "pendingPost":Lc8/ydf;
    iget-object v1, p0, Lc8/ddf;->queue:Lc8/zdf;

    invoke-virtual {v1, v0}, Lc8/zdf;->enqueue(Lc8/ydf;)V

    .line 16
    iget-object v1, p0, Lc8/ddf;->eventCenter:Lc8/kdf;

    invoke-virtual {v1}, Lc8/kdf;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 20
    iget-object v1, p0, Lc8/ddf;->queue:Lc8/zdf;

    invoke-virtual {v1}, Lc8/zdf;->poll()Lc8/ydf;

    move-result-object v0

    .line 21
    .local v0, "pendingPost":Lc8/ydf;
    if-nez v0, :cond_0

    .line 22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No pending post available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_0
    iget-object v1, p0, Lc8/ddf;->eventCenter:Lc8/kdf;

    invoke-virtual {v1, v0}, Lc8/kdf;->invokeSubscriber(Lc8/ydf;)V

    .line 25
    return-void
.end method
