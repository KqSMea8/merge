.class public Lc8/qk;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Lc8/Pk;
.implements Lc8/nk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaBrowserServiceImplApi21"
.end annotation


# instance fields
.field mMessenger:Landroid/os/Messenger;

.field mServiceObj:Ljava/lang/Object;

.field final synthetic this$0:Lc8/Lk;


# direct methods
.method constructor <init>(Lc8/Lk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Lk;

    .prologue
    .line 225
    iput-object p1, p0, Lc8/qk;->this$0:Lc8/Lk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrowserRootHints()Landroid/os/Bundle;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 275
    iget-object v1, p0, Lc8/qk;->mMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-object v0

    .line 279
    :cond_1
    iget-object v1, p0, Lc8/qk;->this$0:Lc8/Lk;

    iget-object v1, v1, Lc8/Lk;->mCurConnection:Lc8/mk;

    if-nez v1, :cond_2

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This should be called inside of onLoadChildren or onLoadItem methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_2
    iget-object v1, p0, Lc8/qk;->this$0:Lc8/Lk;

    iget-object v1, v1, Lc8/Lk;->mCurConnection:Lc8/mk;

    iget-object v1, v1, Lc8/mk;->rootHints:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lc8/qk;->this$0:Lc8/Lk;

    iget-object v1, v1, Lc8/Lk;->mCurConnection:Lc8/mk;

    iget-object v1, v1, Lc8/mk;->rootHints:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 249
    iget-object v0, p0, Lc8/qk;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lc8/qk;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lc8/Qk;->notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lc8/qk;->this$0:Lc8/Lk;

    iget-object v0, v0, Lc8/Lk;->mHandler:Lc8/Kk;

    new-instance v1, Lc8/ok;

    invoke-direct {v1, p0, p1, p2}, Lc8/ok;-><init>(Lc8/qk;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lc8/Kk;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 239
    iget-object v0, p0, Lc8/qk;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lc8/Qk;->onBind(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lc8/qk;->this$0:Lc8/Lk;

    invoke-static {v0, p0}, Lc8/Qk;->createService(Landroid/content/Context;Lc8/Pk;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/qk;->mServiceObj:Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lc8/qk;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Lc8/Qk;->onCreate(Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Lc8/Mk;
    .locals 4
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUid"    # I
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "rootExtras":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    const-string/jumbo v2, "extra_client_version"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    const-string/jumbo v2, "extra_client_version"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 292
    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lc8/qk;->this$0:Lc8/Lk;

    iget-object v3, v3, Lc8/Lk;->mHandler:Lc8/Kk;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lc8/qk;->mMessenger:Landroid/os/Messenger;

    .line 293
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "rootExtras":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 294
    .restart local v1    # "rootExtras":Landroid/os/Bundle;
    const-string/jumbo v2, "extra_service_version"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const-string/jumbo v2, "extra_messenger"

    iget-object v3, p0, Lc8/qk;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 297
    :cond_0
    iget-object v2, p0, Lc8/qk;->this$0:Lc8/Lk;

    invoke-virtual {v2, p1, p2, p3}, Lc8/Lk;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Lc8/lk;

    move-result-object v0

    .line 299
    .local v0, "root":Lc8/lk;
    if-nez v0, :cond_1

    .line 300
    const/4 v2, 0x0

    .line 308
    :goto_0
    return-object v2

    .line 302
    :cond_1
    if-nez v1, :cond_3

    .line 303
    invoke-virtual {v0}, Lc8/lk;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 307
    :cond_2
    :goto_1
    new-instance v2, Lc8/Mk;

    .line 308
    invoke-virtual {v0}, Lc8/lk;->getRootId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lc8/Mk;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 304
    :cond_3
    invoke-virtual {v0}, Lc8/lk;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 305
    invoke-virtual {v0}, Lc8/lk;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onLoadChildren(Ljava/lang/String;Lc8/Ok;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/Ok",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/os/Parcel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, "resultWrapper":Lc8/Ok;, "Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper<Ljava/util/List<Landroid/os/Parcel;>;>;"
    new-instance v0, Lc8/pk;

    invoke-direct {v0, p0, p1, p2}, Lc8/pk;-><init>(Lc8/qk;Ljava/lang/Object;Lc8/Ok;)V

    .line 335
    .local v0, "result":Lc8/yk;, "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;"
    iget-object v1, p0, Lc8/qk;->this$0:Lc8/Lk;

    invoke-virtual {v1, p1, v0}, Lc8/Lk;->onLoadChildren(Ljava/lang/String;Lc8/yk;)V

    .line 336
    return-void
.end method

.method public setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2
    .param p1, "token"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .prologue
    .line 244
    iget-object v0, p0, Lc8/qk;->mServiceObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Qk;->setSessionToken(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    return-void
.end method
