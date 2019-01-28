.class public Lc8/Nk;
.super Landroid/service/media/MediaBrowserService;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Qk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaBrowserServiceAdaptor"
.end annotation


# instance fields
.field final mServiceProxy:Lc8/Pk;


# direct methods
.method constructor <init>(Landroid/content/Context;Lc8/Pk;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceWrapper"    # Lc8/Pk;

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 115
    invoke-virtual {p0, p1}, Lc8/Nk;->attachBaseContext(Landroid/content/Context;)V

    .line 116
    iput-object p2, p0, Lc8/Nk;->mServiceProxy:Lc8/Pk;

    .line 117
    return-void
.end method


# virtual methods
.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 4
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUid"    # I
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 122
    iget-object v1, p0, Lc8/Nk;->mServiceProxy:Lc8/Pk;

    invoke-interface {v1, p1, p2, p3}, Lc8/Pk;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Lc8/Mk;

    move-result-object v0

    .line 124
    .local v0, "browserRoot":Lc8/Mk;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    iget-object v2, v0, Lc8/Mk;->mRootId:Ljava/lang/String;

    iget-object v3, v0, Lc8/Mk;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    iget-object v0, p0, Lc8/Nk;->mServiceProxy:Lc8/Pk;

    new-instance v1, Lc8/Ok;

    invoke-direct {v1, p2}, Lc8/Ok;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Lc8/Pk;->onLoadChildren(Ljava/lang/String;Lc8/Ok;)V

    .line 131
    return-void
.end method
