.class public Lc8/bk;
.super Landroid/media/browse/MediaBrowser$ItemCallback;
.source "MediaBrowserCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc8/ak;",
        ">",
        "Landroid/media/browse/MediaBrowser$ItemCallback;"
    }
.end annotation


# instance fields
.field protected final mItemCallback:Lc8/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/ak;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lc8/bk;, "Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy<TT;>;"
    .local p1, "callback":Lc8/ak;, "TT;"
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ItemCallback;-><init>()V

    .line 46
    iput-object p1, p0, Lc8/bk;->mItemCallback:Lc8/ak;

    .line 47
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    .local p0, "this":Lc8/bk;, "Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy<TT;>;"
    iget-object v0, p0, Lc8/bk;->mItemCallback:Lc8/ak;

    invoke-interface {v0, p1}, Lc8/ak;->onError(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V
    .locals 3
    .param p1, "item"    # Landroid/media/browse/MediaBrowser$MediaItem;

    .prologue
    .line 51
    .local p0, "this":Lc8/bk;, "Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy<TT;>;"
    if-nez p1, :cond_0

    .line 52
    iget-object v1, p0, Lc8/bk;->mItemCallback:Lc8/ak;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lc8/ak;->onItemLoaded(Landroid/os/Parcel;)V

    .line 58
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 55
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/browse/MediaBrowser$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 56
    iget-object v1, p0, Lc8/bk;->mItemCallback:Lc8/ak;

    invoke-interface {v1, v0}, Lc8/ak;->onItemLoaded(Landroid/os/Parcel;)V

    goto :goto_0
.end method
