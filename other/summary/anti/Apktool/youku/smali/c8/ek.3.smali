.class public Lc8/ek;
.super Lc8/Yj;
.source "MediaBrowserCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc8/dk;",
        ">",
        "Lc8/Yj",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc8/dk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lc8/ek;, "Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy<TT;>;"
    .local p1, "callback":Lc8/dk;, "TT;"
    invoke-direct {p0, p1}, Lc8/Yj;-><init>(Lc8/Xj;)V

    .line 55
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lc8/ek;, "Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy<TT;>;"
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v0, p0, Lc8/ek;->mSubscriptionCallback:Lc8/Xj;

    check-cast v0, Lc8/dk;

    invoke-interface {v0, p1, p2, p3}, Lc8/dk;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    .local p0, "this":Lc8/ek;, "Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy<TT;>;"
    iget-object v0, p0, Lc8/ek;->mSubscriptionCallback:Lc8/Xj;

    check-cast v0, Lc8/dk;

    invoke-interface {v0, p1, p2}, Lc8/dk;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    return-void
.end method
