.class public Lc8/Jk;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Lc8/Ik;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceCallbacksCompat"
.end annotation


# instance fields
.field final mCallbacks:Landroid/os/Messenger;

.field final synthetic this$0:Lc8/Lk;


# direct methods
.method constructor <init>(Lc8/Lk;Landroid/os/Messenger;)V
    .locals 0
    .param p2, "callbacks"    # Landroid/os/Messenger;

    .prologue
    .line 779
    iput-object p1, p0, Lc8/Jk;->this$0:Lc8/Lk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-object p2, p0, Lc8/Jk;->mCallbacks:Landroid/os/Messenger;

    .line 781
    return-void
.end method

.method private sendRequest(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 822
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 823
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 824
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 825
    iget-object v1, p0, Lc8/Jk;->mCallbacks:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 826
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lc8/Jk;->mCallbacks:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 791
    if-nez p3, :cond_0

    .line 792
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "extras":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 794
    .restart local p3    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v1, "extra_service_version"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 795
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 796
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string/jumbo v1, "data_media_session_token"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 798
    const-string/jumbo v1, "data_root_hints"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 799
    invoke-direct {p0, v2, v0}, Lc8/Jk;->sendRequest(ILandroid/os/Bundle;)V

    .line 800
    return-void
.end method

.method public onConnectFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 804
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc8/Jk;->sendRequest(ILandroid/os/Bundle;)V

    .line 805
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 810
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 811
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string/jumbo v1, "data_options"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 813
    if-eqz p2, :cond_0

    .line 814
    const-string/jumbo v2, "data_media_item_list"

    instance-of v1, p2, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    :goto_0
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 817
    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lc8/Jk;->sendRequest(ILandroid/os/Bundle;)V

    .line 818
    return-void

    .line 814
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p2, v1

    goto :goto_0
.end method
