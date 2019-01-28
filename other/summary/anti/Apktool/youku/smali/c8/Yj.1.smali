.class public Lc8/Yj;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc8/Xj;",
        ">",
        "Landroid/media/browse/MediaBrowser$SubscriptionCallback;"
    }
.end annotation


# instance fields
.field protected final mSubscriptionCallback:Lc8/Xj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Xj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lc8/Yj;, "Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy<TT;>;"
    .local p1, "callback":Lc8/Xj;, "TT;"
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    .line 128
    iput-object p1, p0, Lc8/Yj;->mSubscriptionCallback:Lc8/Xj;

    .line 129
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lc8/Yj;, "Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy<TT;>;"
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v0, p0, Lc8/Yj;->mSubscriptionCallback:Lc8/Xj;

    invoke-interface {v0, p1, p2}, Lc8/Xj;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 135
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 139
    .local p0, "this":Lc8/Yj;, "Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy<TT;>;"
    iget-object v0, p0, Lc8/Yj;->mSubscriptionCallback:Lc8/Xj;

    invoke-interface {v0, p1}, Lc8/Xj;->onError(Ljava/lang/String;)V

    .line 140
    return-void
.end method
