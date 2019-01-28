.class public Lc8/GIf;
.super Ljava/lang/Object;
.source "ResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/FIf;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseManager"


# instance fields
.field private responses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/FIf;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/GIf;->responses:Ljava/util/HashMap;

    .line 75
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "dataId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/FIf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/GIf;->responses:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 72
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/tao/messagekit/base/ResponseManager$ResponseObserver;>;"
    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/tao/messagekit/base/ResponseManager$ResponseObserver;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pop(Ljava/lang/String;Ljava/lang/String;)Lc8/FIf;
    .locals 6
    .param p1, "dataId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "msgId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "ResponseManager"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "pop:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "msgId:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lc8/GIf;->responses:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 51
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/tao/messagekit/base/ResponseManager$ResponseObserver;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/FIf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .local v1, "ober":Lc8/FIf;
    if-eqz v1, :cond_0

    .line 59
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/tao/messagekit/base/ResponseManager$ResponseObserver;>;"
    .end local v1    # "ober":Lc8/FIf;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 55
    :cond_1
    :try_start_1
    iget-object v2, p0, Lc8/GIf;->responses:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 56
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/tao/messagekit/base/ResponseManager$ResponseObserver;>;"
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/FIf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 59
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/tao/messagekit/base/ResponseManager$ResponseObserver;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized pop(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "dataId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/FIf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/GIf;->responses:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 65
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/tao/messagekit/base/ResponseManager$ResponseObserver;>;"
    const-string/jumbo v1, "ResponseManager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "pop:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/tao/messagekit/base/ResponseManager$ResponseObserver;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized record(Ljava/lang/String;Lc8/RJf;)V
    .locals 9
    .param p1, "dataId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "p"    # Lc8/RJf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v5, p2, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v5}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "msgId":Ljava/lang/String;
    iget-object v5, p0, Lc8/GIf;->responses:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 33
    .local v0, "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/tao/messagekit/base/ResponseManager$ResponseObserver;>;"
    if-nez v0, :cond_0

    iget-object v5, p0, Lc8/GIf;->responses:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/tao/messagekit/base/ResponseManager$ResponseObserver;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/tao/messagekit/base/ResponseManager$ResponseObserver;>;"
    invoke-virtual {v5, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    new-instance v3, Lc8/FIf;

    invoke-direct {v3, p2}, Lc8/FIf;-><init>(Lc8/RJf;)V

    .line 35
    .local v3, "observer":Lc8/FIf;
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5}, Lc8/Vlq;->error(Ljava/lang/Throwable;)Lc8/Vlq;

    move-result-object v2

    .line 36
    .local v2, "ob":Lc8/Vlq;, "Lrx/Observable<Lcom/taobao/tao/messagekit/core/model/Package;>;"
    iget v5, p2, Lc8/RJf;->timeout:I

    int-to-long v6, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v5}, Lc8/Vlq;->delaySubscription(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;

    move-result-object v5

    invoke-virtual {v5, v3}, Lc8/Vlq;->subscribe(Lc8/Wlq;)Lc8/Pmq;

    move-result-object v5

    iput-object v5, v3, Lc8/FIf;->subscription:Lc8/Pmq;

    .line 37
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/FIf;

    .line 38
    .local v4, "old":Lc8/FIf;
    if-eqz v4, :cond_1

    .line 39
    iget-object v5, v4, Lc8/FIf;->subscription:Lc8/Pmq;

    invoke-interface {v5}, Lc8/Pmq;->unsubscribe()V

    .line 41
    :cond_1
    const-string/jumbo v5, "ResponseManager"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "record:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "msgId:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p2, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v8}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "topic:"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p2, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v8}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->topic()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 31
    .end local v0    # "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/tao/messagekit/base/ResponseManager$ResponseObserver;>;"
    .end local v1    # "msgId":Ljava/lang/String;
    .end local v2    # "ob":Lc8/Vlq;, "Lrx/Observable<Lcom/taobao/tao/messagekit/core/model/Package;>;"
    .end local v3    # "observer":Lc8/FIf;
    .end local v4    # "old":Lc8/FIf;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
