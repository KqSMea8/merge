.class public Lc8/kdf;
.super Ljava/lang/Object;
.source "EventCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/idf;,
        Lc8/jdf;
    }
.end annotation


# static fields
.field static final DEFAULT_BUILDER:Lc8/ldf;

.field public static TAG:Ljava/lang/String;

.field static volatile defaultInstance:Lc8/kdf;


# instance fields
.field private final asyncPoster:Lc8/ddf;

.field private final backgroundPoster:Lc8/edf;

.field private final currentPostingThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lc8/jdf;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final mainThreadPoster:Lc8/xdf;

.field private final subscriptionsByEventId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lc8/Bdf;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "EventCenter"

    sput-object v0, Lc8/kdf;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lc8/ldf;

    invoke-direct {v0}, Lc8/ldf;-><init>()V

    sput-object v0, Lc8/kdf;->DEFAULT_BUILDER:Lc8/ldf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lc8/kdf;->DEFAULT_BUILDER:Lc8/ldf;

    invoke-direct {p0, v0}, Lc8/kdf;-><init>(Lc8/ldf;)V

    .line 56
    return-void
.end method

.method constructor <init>(Lc8/ldf;)V
    .locals 3
    .param p1, "builder"    # Lc8/ldf;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lc8/hdf;

    invoke-direct {v0, p0}, Lc8/hdf;-><init>(Lc8/kdf;)V

    iput-object v0, p0, Lc8/kdf;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/kdf;->subscriptionsByEventId:Ljava/util/Map;

    .line 60
    new-instance v0, Lc8/xdf;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lc8/xdf;-><init>(Lc8/kdf;Landroid/os/Looper;I)V

    iput-object v0, p0, Lc8/kdf;->mainThreadPoster:Lc8/xdf;

    .line 61
    new-instance v0, Lc8/edf;

    invoke-direct {v0, p0}, Lc8/edf;-><init>(Lc8/kdf;)V

    iput-object v0, p0, Lc8/kdf;->backgroundPoster:Lc8/edf;

    .line 62
    new-instance v0, Lc8/ddf;

    invoke-direct {v0, p0}, Lc8/ddf;-><init>(Lc8/kdf;)V

    iput-object v0, p0, Lc8/kdf;->asyncPoster:Lc8/ddf;

    .line 63
    iget-object v0, p1, Lc8/ldf;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lc8/kdf;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    return-void
.end method

.method public static builder()Lc8/ldf;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lc8/ldf;

    invoke-direct {v0}, Lc8/ldf;-><init>()V

    return-object v0
.end method

.method private findSubscriptionsById(I)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .param p1, "eventId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lc8/Bdf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lc8/kdf;->subscriptionsByEventId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static getDefault()Lc8/kdf;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lc8/kdf;->defaultInstance:Lc8/kdf;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lc8/kdf;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lc8/kdf;->defaultInstance:Lc8/kdf;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lc8/kdf;

    invoke-direct {v0}, Lc8/kdf;-><init>()V

    sput-object v0, Lc8/kdf;->defaultInstance:Lc8/kdf;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lc8/kdf;->defaultInstance:Lc8/kdf;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private postSingleEvent(Lc8/fdf;Lc8/gdf;Lc8/jdf;)V
    .locals 8
    .param p1, "event"    # Lc8/fdf;
    .param p2, "callback"    # Lc8/gdf;
    .param p3, "postingState"    # Lc8/jdf;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 231
    invoke-interface {p1}, Lc8/fdf;->getEventId()I

    move-result v1

    .line 234
    .local v1, "eventId":I
    monitor-enter p0

    .line 235
    :try_start_0
    invoke-direct {p0, v1}, Lc8/kdf;->findSubscriptionsById(I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 236
    .local v4, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    :cond_0
    return-void

    .line 236
    .end local v4    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 242
    .restart local v4    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Bdf;

    .line 243
    .local v3, "subscription":Lc8/Bdf;
    iput-object p1, p3, Lc8/jdf;->event:Ljava/lang/Object;

    .line 244
    iput-object v3, p3, Lc8/jdf;->subscription:Lc8/Bdf;

    .line 248
    :try_start_2
    iget-boolean v5, p3, Lc8/jdf;->isMainThread:Z

    invoke-direct {p0, v3, p1, p2, v5}, Lc8/kdf;->postToSubscription(Lc8/Bdf;Lc8/fdf;Lc8/gdf;Z)V

    .line 249
    iget-boolean v0, p3, Lc8/jdf;->canceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    .local v0, "aborted":Z
    iput-object v6, p3, Lc8/jdf;->event:Ljava/lang/Object;

    .line 252
    iput-object v6, p3, Lc8/jdf;->subscription:Lc8/Bdf;

    .line 253
    iput-boolean v7, p3, Lc8/jdf;->canceled:Z

    .line 256
    if-nez v0, :cond_0

    goto :goto_0

    .line 251
    .end local v0    # "aborted":Z
    :catchall_1
    move-exception v5

    iput-object v6, p3, Lc8/jdf;->event:Ljava/lang/Object;

    .line 252
    iput-object v6, p3, Lc8/jdf;->subscription:Lc8/Bdf;

    .line 253
    iput-boolean v7, p3, Lc8/jdf;->canceled:Z

    throw v5
.end method

.method private postToSubscription(Lc8/Bdf;Lc8/fdf;Lc8/gdf;Z)V
    .locals 4
    .param p1, "subscription"    # Lc8/Bdf;
    .param p2, "event"    # Lc8/fdf;
    .param p3, "callback"    # Lc8/gdf;
    .param p4, "isMainThread"    # Z

    .prologue
    .line 264
    invoke-virtual {p1}, Lc8/Bdf;->getSubscriber()Lc8/wdf;

    move-result-object v1

    .line 265
    .local v1, "subscriber":Lc8/wdf;
    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p1}, Lc8/Bdf;->getFilter()Lc8/odf;

    move-result-object v0

    .line 270
    .local v0, "filter":Lc8/odf;
    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Lc8/odf;->filterEvent(Lc8/fdf;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    :cond_2
    sget-object v2, Lc8/idf;->$SwitchMap$com$taobao$android$trade$event$ThreadMode:[I

    invoke-interface {v1}, Lc8/wdf;->getThreadMode()Lcom/taobao/android/trade/event/ThreadMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/android/trade/event/ThreadMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 276
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lc8/kdf;->invokeSubscriber(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)V

    goto :goto_0

    .line 279
    :pswitch_1
    if-eqz p4, :cond_3

    .line 280
    invoke-virtual {p0, p1, p2, p3}, Lc8/kdf;->invokeSubscriber(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)V

    goto :goto_0

    .line 282
    :cond_3
    iget-object v2, p0, Lc8/kdf;->mainThreadPoster:Lc8/xdf;

    invoke-virtual {v2, p1, p2, p3}, Lc8/xdf;->enqueue(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)V

    goto :goto_0

    .line 286
    :pswitch_2
    if-eqz p4, :cond_4

    .line 287
    iget-object v2, p0, Lc8/kdf;->backgroundPoster:Lc8/edf;

    invoke-virtual {v2, p1, p2, p3}, Lc8/edf;->enqueue(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)V

    goto :goto_0

    .line 289
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lc8/kdf;->invokeSubscriber(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)V

    goto :goto_0

    .line 293
    :pswitch_3
    iget-object v2, p0, Lc8/kdf;->asyncPoster:Lc8/ddf;

    invoke-virtual {v2, p1, p2, p3}, Lc8/ddf;->enqueue(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)V

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cancelEventDelivery(Lc8/fdf;)V
    .locals 4
    .param p1, "event"    # Lc8/fdf;

    .prologue
    .line 212
    iget-object v2, p0, Lc8/kdf;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/jdf;

    .line 213
    .local v0, "postingState":Lc8/jdf;
    iget-object v2, v0, Lc8/jdf;->subscription:Lc8/Bdf;

    invoke-virtual {v2}, Lc8/Bdf;->getSubscriber()Lc8/wdf;

    move-result-object v1

    .line 215
    .local v1, "subscriber":Lc8/wdf;
    iget-boolean v2, v0, Lc8/jdf;->isPosting:Z

    if-nez v2, :cond_0

    .line 216
    new-instance v2, Lcom/taobao/android/trade/event/EventCenterException;

    const-string/jumbo v3, "This method may only be called from inside event handling methods on the posting thread"

    invoke-direct {v2, v3}, Lcom/taobao/android/trade/event/EventCenterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_0
    if-nez p1, :cond_1

    .line 219
    new-instance v2, Lcom/taobao/android/trade/event/EventCenterException;

    const-string/jumbo v3, "Event may not be null"

    invoke-direct {v2, v3}, Lcom/taobao/android/trade/event/EventCenterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_1
    iget-object v2, v0, Lc8/jdf;->event:Ljava/lang/Object;

    if-eq v2, p1, :cond_2

    .line 221
    new-instance v2, Lcom/taobao/android/trade/event/EventCenterException;

    const-string/jumbo v3, "Only the currently handled event may be aborted"

    invoke-direct {v2, v3}, Lcom/taobao/android/trade/event/EventCenterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lc8/wdf;->getThreadMode()Lcom/taobao/android/trade/event/ThreadMode;

    move-result-object v2

    sget-object v3, Lcom/taobao/android/trade/event/ThreadMode;->CurrentThread:Lcom/taobao/android/trade/event/ThreadMode;

    if-eq v2, v3, :cond_3

    .line 223
    new-instance v2, Lcom/taobao/android/trade/event/EventCenterException;

    const-string/jumbo v3, "Event handlers may only abort the incoming event"

    invoke-direct {v2, v3}, Lcom/taobao/android/trade/event/EventCenterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v0, Lc8/jdf;->canceled:Z

    .line 227
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/kdf;->subscriptionsByEventId:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .local v1, "eventIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    .local v0, "eventId":I
    invoke-virtual {p0, v0}, Lc8/kdf;->unregister(I)V

    goto :goto_0

    .line 73
    .end local v0    # "eventId":I
    .end local v1    # "eventIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 72
    .restart local v1    # "eventIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lc8/kdf;->subscriptionsByEventId:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 73
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lc8/kdf;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method invokeSubscriber(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)V
    .locals 5
    .param p1, "subscription"    # Lc8/Bdf;
    .param p2, "event"    # Lc8/fdf;
    .param p3, "callback"    # Lc8/gdf;

    .prologue
    .line 316
    invoke-virtual {p1}, Lc8/Bdf;->getSubscriber()Lc8/wdf;

    move-result-object v1

    .line 317
    .local v1, "subscriber":Lc8/wdf;
    if-nez v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    :try_start_0
    invoke-interface {v1, p2}, Lc8/wdf;->handleEvent(Lc8/fdf;)Lc8/udf;

    move-result-object v0

    .line 325
    .local v0, "result":Lc8/udf;
    if-eqz p3, :cond_0

    .line 326
    invoke-interface {p3, v0, v1}, Lc8/gdf;->onEventComplete(Lc8/udf;Lc8/wdf;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    .end local v0    # "result":Lc8/udf;
    :catch_0
    move-exception v2

    .line 329
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lc8/kdf;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Handle event error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    if-eqz p3, :cond_0

    .line 332
    invoke-interface {p3, v1}, Lc8/gdf;->onEventException(Lc8/wdf;)V

    goto :goto_0
.end method

.method invokeSubscriber(Lc8/ydf;)V
    .locals 4
    .param p1, "pendingPost"    # Lc8/ydf;

    .prologue
    .line 305
    iget-object v1, p1, Lc8/ydf;->event:Lc8/fdf;

    .line 306
    .local v1, "event":Lc8/fdf;
    iget-object v2, p1, Lc8/ydf;->subscription:Lc8/Bdf;

    .line 307
    .local v2, "subscription":Lc8/Bdf;
    iget-object v0, p1, Lc8/ydf;->callback:Lc8/gdf;

    .line 308
    .local v0, "callback":Lc8/gdf;
    invoke-static {p1}, Lc8/ydf;->releasePendingPost(Lc8/ydf;)V

    .line 309
    iget-boolean v3, v2, Lc8/Bdf;->active:Z

    if-eqz v3, :cond_0

    .line 310
    invoke-virtual {p0, v2, v1, v0}, Lc8/kdf;->invokeSubscriber(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)V

    .line 312
    :cond_0
    return-void
.end method

.method public isWatched(I)Z
    .locals 2
    .param p1, "eventId"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lc8/kdf;->subscriptionsByEventId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public postEvent(I)V
    .locals 2
    .param p1, "eventId"    # I

    .prologue
    .line 170
    new-instance v0, Lc8/Adf;

    invoke-direct {v0, p1}, Lc8/Adf;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/kdf;->postEvent(Lc8/fdf;Lc8/gdf;)V

    .line 171
    return-void
.end method

.method public postEvent(ILc8/gdf;)V
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "callback"    # Lc8/gdf;

    .prologue
    .line 174
    new-instance v0, Lc8/Adf;

    invoke-direct {v0, p1}, Lc8/Adf;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Lc8/kdf;->postEvent(Lc8/fdf;Lc8/gdf;)V

    .line 175
    return-void
.end method

.method public postEvent(Lc8/fdf;)V
    .locals 1
    .param p1, "event"    # Lc8/fdf;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/kdf;->postEvent(Lc8/fdf;Lc8/gdf;)V

    .line 179
    return-void
.end method

.method public postEvent(Lc8/fdf;Lc8/gdf;)V
    .locals 7
    .param p1, "event"    # Lc8/fdf;
    .param p2, "callback"    # Lc8/gdf;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 182
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v3, p0, Lc8/kdf;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/jdf;

    .line 187
    .local v2, "postingState":Lc8/jdf;
    iget-object v0, v2, Lc8/jdf;->eventQueue:Ljava/util/List;

    .line 188
    .local v0, "eventQueue":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/taobao/android/trade/event/Event;Lcom/taobao/android/trade/event/EventCallback;>;>;"
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-boolean v3, v2, Lc8/jdf;->isPosting:Z

    if-nez v3, :cond_0

    .line 191
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lc8/jdf;->isMainThread:Z

    .line 192
    iput-boolean v4, v2, Lc8/jdf;->isPosting:Z

    .line 194
    iget-boolean v3, v2, Lc8/jdf;->canceled:Z

    if-eqz v3, :cond_3

    .line 195
    new-instance v3, Lcom/taobao/android/trade/event/EventCenterException;

    const-string/jumbo v4, "Internal error. Abort state was not reset"

    invoke-direct {v3, v4}, Lcom/taobao/android/trade/event/EventCenterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move v3, v5

    .line 191
    goto :goto_1

    .line 200
    :cond_3
    :goto_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 201
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 202
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/android/trade/event/Event;Lcom/taobao/android/trade/event/EventCallback;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lc8/fdf;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lc8/gdf;

    invoke-direct {p0, v3, v4, v2}, Lc8/kdf;->postSingleEvent(Lc8/fdf;Lc8/gdf;Lc8/jdf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 205
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/android/trade/event/Event;Lcom/taobao/android/trade/event/EventCallback;>;"
    :catchall_0
    move-exception v3

    iput-boolean v5, v2, Lc8/jdf;->isPosting:Z

    .line 206
    iput-boolean v5, v2, Lc8/jdf;->isMainThread:Z

    throw v3

    .line 205
    :cond_4
    iput-boolean v5, v2, Lc8/jdf;->isPosting:Z

    .line 206
    iput-boolean v5, v2, Lc8/jdf;->isMainThread:Z

    goto :goto_0
.end method

.method public register(ILc8/wdf;)V
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "subscriber"    # Lc8/wdf;

    .prologue
    .line 77
    const/4 v0, 0x0

    check-cast v0, Lc8/rdf;

    invoke-virtual {p0, p1, p2, v0}, Lc8/kdf;->register(ILc8/wdf;Lc8/rdf;)V

    .line 78
    return-void
.end method

.method public register(ILc8/wdf;Lc8/odf;)V
    .locals 6
    .param p1, "eventId"    # I
    .param p2, "subscriber"    # Lc8/wdf;
    .param p3, "filter"    # Lc8/odf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    if-nez p2, :cond_0

    .line 102
    :goto_0
    return-void

    .line 86
    :cond_0
    monitor-enter p0

    .line 87
    :try_start_0
    invoke-direct {p0, p1}, Lc8/kdf;->findSubscriptionsById(I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 88
    .local v3, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    if-nez v3, :cond_1

    .line 89
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v3    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 92
    .restart local v3    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Bdf;

    .line 93
    .local v1, "s":Lc8/Bdf;
    invoke-virtual {v1}, Lc8/Bdf;->getSubscriber()Lc8/wdf;

    move-result-object v4

    if-ne v4, p2, :cond_2

    .line 94
    monitor-exit p0

    goto :goto_0

    .line 102
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Lc8/Bdf;
    .end local v3    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 98
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    :cond_3
    :try_start_1
    new-instance v2, Lc8/Bdf;

    const/4 v4, 0x0

    invoke-direct {v2, p1, p2, p3, v4}, Lc8/Bdf;-><init>(ILc8/wdf;Lc8/odf;Z)V

    .line 99
    .local v2, "subscription":Lc8/Bdf;
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v4, p0, Lc8/kdf;->subscriptionsByEventId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public register(ILc8/wdf;Lc8/rdf;)V
    .locals 8
    .param p1, "eventId"    # I
    .param p2, "subscriber"    # Lc8/wdf;
    .param p3, "option"    # Lc8/rdf;

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 110
    :cond_0
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-direct {p0, p1}, Lc8/kdf;->findSubscriptionsById(I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 112
    .local v4, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    if-nez v4, :cond_1

    .line 113
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v4    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 116
    .restart local v4    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Bdf;

    .line 117
    .local v2, "s":Lc8/Bdf;
    invoke-virtual {v2}, Lc8/Bdf;->getSubscriber()Lc8/wdf;

    move-result-object v6

    if-ne v6, p2, :cond_2

    .line 118
    monitor-exit p0

    goto :goto_0

    .line 130
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Lc8/Bdf;
    .end local v4    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 122
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/taobao/android/trade/event/Subscription;>;"
    :cond_3
    if-eqz p3, :cond_4

    :try_start_1
    invoke-virtual {p3}, Lc8/rdf;->getEventFilter()Lc8/odf;

    move-result-object v0

    .line 123
    .local v0, "filter":Lc8/odf;
    :goto_1
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lc8/rdf;->isUseWeakReference()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 125
    .local v5, "useWeakReference":Z
    :goto_2
    new-instance v3, Lc8/Bdf;

    invoke-direct {v3, p1, p2, v0, v5}, Lc8/Bdf;-><init>(ILc8/wdf;Lc8/odf;Z)V

    .line 127
    .local v3, "subscription":Lc8/Bdf;
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v6, p0, Lc8/kdf;->subscriptionsByEventId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    .end local v0    # "filter":Lc8/odf;
    .end local v3    # "subscription":Lc8/Bdf;
    .end local v5    # "useWeakReference":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 123
    .restart local v0    # "filter":Lc8/odf;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public unregister(I)V
    .locals 1
    .param p1, "eventId"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/kdf;->unregister(ILc8/wdf;)V

    .line 135
    return-void
.end method

.method public unregister(ILc8/wdf;)V
    .locals 7
    .param p1, "eventId"    # I
    .param p2, "subscriber"    # Lc8/wdf;

    .prologue
    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Lc8/kdf;->findSubscriptionsById(I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 140
    .local v4, "subscriptions":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/android/trade/event/Subscription;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    :cond_0
    monitor-exit p0

    .line 162
    :goto_0
    return-void

    .line 144
    :cond_1
    if-nez p2, :cond_3

    .line 145
    iget-object v5, p0, Lc8/kdf;->subscriptionsByEventId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Bdf;

    .line 147
    .local v3, "subscription":Lc8/Bdf;
    const/4 v5, 0x0

    iput-boolean v5, v3, Lc8/Bdf;->active:Z

    goto :goto_1

    .line 162
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "subscription":Lc8/Bdf;
    .end local v4    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/android/trade/event/Subscription;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 149
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/android/trade/event/Subscription;>;"
    :cond_2
    :try_start_1
    monitor-exit p0

    goto :goto_0

    .line 152
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 153
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_5

    .line 154
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Bdf;

    .line 155
    .restart local v3    # "subscription":Lc8/Bdf;
    invoke-virtual {v3}, Lc8/Bdf;->getSubscriber()Lc8/wdf;

    move-result-object v5

    if-ne v5, p2, :cond_4

    .line 156
    const/4 v5, 0x0

    iput-boolean v5, v3, Lc8/Bdf;->active:Z

    .line 157
    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    add-int/lit8 v0, v0, -0x1

    .line 159
    add-int/lit8 v2, v2, -0x1

    .line 153
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 162
    .end local v3    # "subscription":Lc8/Bdf;
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
