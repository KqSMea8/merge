.class public Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResultReceiver"
.end annotation


# instance fields
.field private final mCallback:Lc8/Nj;

.field private final mExtras:Landroid/os/Bundle;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lc8/Nj;Landroid/os/Handler;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "callback"    # Lc8/Nj;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 1988
    invoke-direct {p0, p4}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 1989
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    .line 1990
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;

    .line 1991
    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Lc8/Nj;

    .line 1992
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 1996
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v3, "search_results"

    .line 1997
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1998
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Lc8/Nj;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Lc8/Nj;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2011
    :goto_0
    return-void

    .line 2001
    :cond_1
    const-string/jumbo v3, "search_results"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 2003
    .local v1, "items":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .line 2004
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    if-eqz v1, :cond_2

    .line 2005
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2006
    .restart local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 2007
    .local v0, "item":Landroid/os/Parcelable;
    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .end local v0    # "item":Landroid/os/Parcelable;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2006
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2010
    :cond_2
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Lc8/Nj;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5, v2}, Lc8/Nj;->onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_0
.end method