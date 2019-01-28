.class public Lc8/Rk;
.super Lc8/Nk;
.source "MediaBrowserServiceCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaBrowserServiceAdaptor"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lc8/Sk;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceWrapper"    # Lc8/Sk;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lc8/Nk;-><init>(Landroid/content/Context;Lc8/Pk;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v0, p0, Lc8/Rk;->mServiceProxy:Lc8/Pk;

    check-cast v0, Lc8/Sk;

    new-instance v1, Lc8/Ok;

    invoke-direct {v1, p2}, Lc8/Ok;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Lc8/Sk;->onLoadItem(Ljava/lang/String;Lc8/Ok;)V

    .line 48
    return-void
.end method
