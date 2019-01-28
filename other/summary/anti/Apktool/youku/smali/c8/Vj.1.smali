.class public Lc8/Vj;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc8/Uj;",
        ">",
        "Landroid/media/browse/MediaBrowser$ConnectionCallback;"
    }
.end annotation


# instance fields
.field protected final mConnectionCallback:Lc8/Uj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Uj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lc8/Vj;, "Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy<TT;>;"
    .local p1, "connectionCallback":Lc8/Uj;, "TT;"
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    .line 99
    iput-object p1, p0, Lc8/Vj;->mConnectionCallback:Lc8/Uj;

    .line 100
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lc8/Vj;, "Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy<TT;>;"
    iget-object v0, p0, Lc8/Vj;->mConnectionCallback:Lc8/Uj;

    invoke-interface {v0}, Lc8/Uj;->onConnected()V

    .line 105
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lc8/Vj;, "Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy<TT;>;"
    iget-object v0, p0, Lc8/Vj;->mConnectionCallback:Lc8/Uj;

    invoke-interface {v0}, Lc8/Uj;->onConnectionFailed()V

    .line 115
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lc8/Vj;, "Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy<TT;>;"
    iget-object v0, p0, Lc8/Vj;->mConnectionCallback:Lc8/Uj;

    invoke-interface {v0}, Lc8/Uj;->onConnectionSuspended()V

    .line 110
    return-void
.end method
