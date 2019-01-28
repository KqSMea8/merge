.class public Lc8/yj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Lc8/Kj;
.implements Lc8/mj;
.implements Lc8/rj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaBrowserImplApi21"
.end annotation


# instance fields
.field protected final mBrowserObj:Ljava/lang/Object;

.field protected mCallbacksMessenger:Landroid/os/Messenger;

.field protected final mHandler:Lc8/lj;

.field protected final mRootHints:Landroid/os/Bundle;

.field protected mServiceBinderWrapper:Lc8/Oj;

.field private final mSubscriptions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/Pj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lc8/oj;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Lc8/oj;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 1436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1429
    new-instance v0, Lc8/lj;

    invoke-direct {v0, p0}, Lc8/lj;-><init>(Lc8/Kj;)V

    iput-object v0, p0, Lc8/yj;->mHandler:Lc8/lj;

    .line 1430
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/yj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    .line 1439
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    .line 1440
    if-nez p4, :cond_0

    .line 1441
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "rootHints":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 1443
    .restart local p4    # "rootHints":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v0, "extra_client_version"

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1444
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lc8/yj;->mRootHints:Landroid/os/Bundle;

    .line 1448
    :goto_0
    invoke-virtual {p3, p0}, Lc8/oj;->setInternalConnectionCallback(Lc8/mj;)V

    .line 1449
    iget-object v0, p3, Lc8/oj;->mConnectionCallbackObj:Ljava/lang/Object;

    iget-object v1, p0, Lc8/yj;->mRootHints:Landroid/os/Bundle;

    invoke-static {p1, p2, v0, v1}, Lc8/Zj;->createBrowser(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    .line 1451
    return-void

    .line 1446
    :cond_1
    if-nez p4, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lc8/yj;->mRootHints:Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Lc8/Zj;->connect(Ljava/lang/Object;)V

    .line 1456
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 1460
    iget-object v0, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/yj;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 1462
    :try_start_0
    iget-object v0, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    iget-object v1, p0, Lc8/yj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lc8/Oj;->unregisterCallbackMessenger(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Lc8/Zj;->disconnect(Ljava/lang/Object;)V

    .line 1468
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1489
    iget-object v0, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Lc8/Zj;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Lc8/qj;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cb"    # Lc8/qj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1585
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1586
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "mediaId is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1588
    :cond_0
    if-nez p2, :cond_1

    .line 1589
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "cb is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1591
    :cond_1
    iget-object v1, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v1}, Lc8/Zj;->isConnected(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1593
    iget-object v1, p0, Lc8/yj;->mHandler:Lc8/lj;

    new-instance v2, Lc8/sj;

    invoke-direct {v2, p0, p2, p1}, Lc8/sj;-><init>(Lc8/yj;Lc8/qj;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc8/lj;->post(Ljava/lang/Runnable;)Z

    .line 1623
    :goto_0
    return-void

    .line 1601
    :cond_2
    iget-object v1, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    if-nez v1, :cond_3

    .line 1602
    iget-object v1, p0, Lc8/yj;->mHandler:Lc8/lj;

    new-instance v2, Lc8/tj;

    invoke-direct {v2, p0, p2, p1}, Lc8/tj;-><init>(Lc8/yj;Lc8/qj;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc8/lj;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1611
    :cond_3
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;

    iget-object v1, p0, Lc8/yj;->mHandler:Lc8/lj;

    invoke-direct {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;-><init>(Ljava/lang/String;Lc8/qj;Landroid/os/Handler;)V

    .line 1613
    .local v0, "receiver":Landroid/support/v4/os/ResultReceiver;
    :try_start_0
    iget-object v1, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    iget-object v2, p0, Lc8/yj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, v0, v2}, Lc8/Oj;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1615
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote error getting media item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1616
    iget-object v1, p0, Lc8/yj;->mHandler:Lc8/lj;

    new-instance v2, Lc8/uj;

    invoke-direct {v2, p0, p2, p1}, Lc8/uj;-><init>(Lc8/yj;Lc8/qj;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc8/lj;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1483
    iget-object v0, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Lc8/Zj;->getRoot(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Lc8/Zj;->getServiceComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1495
    iget-object v0, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    .line 1496
    invoke-static {v0}, Lc8/Zj;->getSessionToken(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1495
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0}, Lc8/Zj;->isConnected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConnected()V
    .locals 4

    .prologue
    .line 1666
    iget-object v2, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v2}, Lc8/Zj;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    .line 1667
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 1681
    :cond_0
    :goto_0
    return-void

    .line 1670
    :cond_1
    const-string/jumbo v2, "extra_messenger"

    invoke-static {v0, v2}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1671
    .local v1, "serviceBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 1672
    new-instance v2, Lc8/Oj;

    iget-object v3, p0, Lc8/yj;->mRootHints:Landroid/os/Bundle;

    invoke-direct {v2, v1, v3}, Lc8/Oj;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v2, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    .line 1673
    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lc8/yj;->mHandler:Lc8/lj;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lc8/yj;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1674
    iget-object v2, p0, Lc8/yj;->mHandler:Lc8/lj;

    iget-object v3, p0, Lc8/yj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Lc8/lj;->setCallbacksMessenger(Landroid/os/Messenger;)V

    .line 1676
    :try_start_0
    iget-object v2, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    iget-object v3, p0, Lc8/yj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Lc8/Oj;->registerCallbackMessenger(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onConnectionFailed()V
    .locals 0

    .prologue
    .line 1693
    return-void
.end method

.method public onConnectionFailed(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Messenger;

    .prologue
    .line 1704
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1685
    iput-object v1, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    .line 1686
    iput-object v1, p0, Lc8/yj;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1687
    iget-object v0, p0, Lc8/yj;->mHandler:Lc8/lj;

    invoke-virtual {v0, v1}, Lc8/lj;->setCallbacksMessenger(Landroid/os/Messenger;)V

    .line 1688
    return-void
.end method

.method public onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/List;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1708
    iget-object v2, p0, Lc8/yj;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eq v2, p1, :cond_1

    .line 1738
    :cond_0
    :goto_0
    return-void

    .line 1713
    :cond_1
    iget-object v2, p0, Lc8/yj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Pj;

    .line 1714
    .local v0, "subscription":Lc8/Pj;
    if-nez v0, :cond_2

    .line 1715
    sget-boolean v2, Lc8/Tj;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadChildren for id that isn\'t subscribed id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 1722
    :cond_2
    invoke-virtual {v0, p4}, Lc8/Pj;->getCallback(Landroid/os/Bundle;)Lc8/Sj;

    move-result-object v1

    .line 1723
    .local v1, "subscriptionCallback":Lc8/Sj;
    if-eqz v1, :cond_0

    .line 1724
    if-nez p4, :cond_4

    .line 1725
    if-nez p3, :cond_3

    .line 1726
    invoke-virtual {v1, p2}, Lc8/Sj;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 1728
    :cond_3
    invoke-virtual {v1, p2, p3}, Lc8/Sj;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1731
    :cond_4
    if-nez p3, :cond_5

    .line 1732
    invoke-virtual {v1, p2, p4}, Lc8/Sj;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1734
    :cond_5
    invoke-virtual {v1, p2, p3, p4}, Lc8/Sj;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "session"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .param p4, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 1699
    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;Lc8/Nj;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "callback"    # Lc8/Nj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1628
    invoke-virtual {p0}, Lc8/yj;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1630
    iget-object v1, p0, Lc8/yj;->mHandler:Lc8/lj;

    new-instance v2, Lc8/vj;

    invoke-direct {v2, p0, p3, p1, p2}, Lc8/vj;-><init>(Lc8/yj;Lc8/Nj;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lc8/lj;->post(Ljava/lang/Runnable;)Z

    .line 1662
    :goto_0
    return-void

    .line 1638
    :cond_0
    iget-object v1, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    if-nez v1, :cond_1

    .line 1640
    iget-object v1, p0, Lc8/yj;->mHandler:Lc8/lj;

    new-instance v2, Lc8/wj;

    invoke-direct {v2, p0, p3, p1, p2}, Lc8/wj;-><init>(Lc8/yj;Lc8/Nj;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lc8/lj;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1650
    :cond_1
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;

    iget-object v1, p0, Lc8/yj;->mHandler:Lc8/lj;

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lc8/Nj;Landroid/os/Handler;)V

    .line 1652
    .local v0, "receiver":Landroid/support/v4/os/ResultReceiver;
    :try_start_0
    iget-object v1, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    iget-object v2, p0, Lc8/yj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1, p2, v0, v2}, Lc8/Oj;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1654
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote error searching items with query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1655
    iget-object v1, p0, Lc8/yj;->mHandler:Lc8/lj;

    new-instance v2, Lc8/xj;

    invoke-direct {v2, p0, p3, p1, p2}, Lc8/xj;-><init>(Lc8/yj;Lc8/Nj;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lc8/lj;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Lc8/Sj;)V
    .locals 5
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "callback"    # Lc8/Sj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1503
    iget-object v2, p0, Lc8/yj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Pj;

    .line 1504
    .local v1, "sub":Lc8/Pj;
    if-nez v1, :cond_0

    .line 1505
    new-instance v1, Lc8/Pj;

    .end local v1    # "sub":Lc8/Pj;
    invoke-direct {v1}, Lc8/Pj;-><init>()V

    .line 1506
    .restart local v1    # "sub":Lc8/Pj;
    iget-object v2, p0, Lc8/yj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    :cond_0
    invoke-static {p3, v1}, Lc8/Sj;->access$100(Lc8/Sj;Lc8/Pj;)V

    .line 1509
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 1510
    .local v0, "copiedOptions":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v1, v0, p3}, Lc8/Pj;->putCallback(Landroid/os/Bundle;Lc8/Sj;)V

    .line 1512
    iget-object v2, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    if-nez v2, :cond_2

    .line 1515
    iget-object v2, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    .line 1516
    invoke-static {p3}, Lc8/Sj;->access$200(Lc8/Sj;)Ljava/lang/Object;

    move-result-object v3

    .line 1515
    invoke-static {v2, p1, v3}, Lc8/Zj;->subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1527
    :goto_1
    return-void

    .line 1509
    .end local v0    # "copiedOptions":Landroid/os/Bundle;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1519
    .restart local v0    # "copiedOptions":Landroid/os/Bundle;
    :cond_2
    :try_start_0
    iget-object v2, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    .line 1520
    invoke-static {p3}, Lc8/Sj;->access$000(Lc8/Sj;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lc8/yj;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1519
    invoke-virtual {v2, p1, v3, v0, v4}, Lc8/Oj;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1524
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote error subscribing media item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method public unsubscribe(Ljava/lang/String;Lc8/Sj;)V
    .locals 7
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lc8/Sj;

    .prologue
    .line 1531
    iget-object v4, p0, Lc8/yj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Pj;

    .line 1532
    .local v3, "sub":Lc8/Pj;
    if-nez v3, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return-void

    .line 1536
    :cond_1
    iget-object v4, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    if-nez v4, :cond_7

    .line 1537
    if-nez p2, :cond_4

    .line 1538
    iget-object v4, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v4, p1}, Lc8/Zj;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1578
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lc8/Pj;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez p2, :cond_0

    .line 1579
    :cond_3
    iget-object v4, p0, Lc8/yj;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1540
    :cond_4
    invoke-virtual {v3}, Lc8/Pj;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 1541
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;>;"
    invoke-virtual {v3}, Lc8/Pj;->getOptionsList()Ljava/util/List;

    move-result-object v2

    .line 1542
    .local v2, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_6

    .line 1543
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_5

    .line 1544
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1545
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1542
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1548
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1549
    iget-object v4, p0, Lc8/yj;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v4, p1}, Lc8/Zj;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1555
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;>;"
    .end local v1    # "i":I
    .end local v2    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_7
    if-nez p2, :cond_8

    .line 1556
    :try_start_0
    iget-object v4, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    const/4 v5, 0x0

    iget-object v6, p0, Lc8/yj;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, p1, v5, v6}, Lc8/Oj;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1573
    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 1559
    :cond_8
    :try_start_1
    invoke-virtual {v3}, Lc8/Pj;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 1560
    .restart local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;>;"
    invoke-virtual {v3}, Lc8/Pj;->getOptionsList()Ljava/util/List;

    move-result-object v2

    .line 1561
    .restart local v2    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_2

    .line 1562
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_9

    .line 1563
    iget-object v4, p0, Lc8/yj;->mServiceBinderWrapper:Lc8/Oj;

    .line 1564
    invoke-static {p2}, Lc8/Sj;->access$000(Lc8/Sj;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Lc8/yj;->mCallbacksMessenger:Landroid/os/Messenger;

    .line 1563
    invoke-virtual {v4, p1, v5, v6}, Lc8/Oj;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V

    .line 1565
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1566
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1561
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method
