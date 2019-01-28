.class public Lc8/pl;
.super Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;
.source "MediaSessionCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc8/ol;",
        ">",
        "Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc8/ol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lc8/pl;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    .local p1, "callback":Lc8/ol;, "TT;"
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onPrepare()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lc8/pl;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    iget-object v0, p0, Lc8/pl;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Lc8/ol;

    invoke-interface {v0}, Lc8/ol;->onPrepare()V

    .line 65
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 69
    .local p0, "this":Lc8/pl;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    iget-object v0, p0, Lc8/pl;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Lc8/ol;

    invoke-interface {v0, p1, p2}, Lc8/ol;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 74
    .local p0, "this":Lc8/pl;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    iget-object v0, p0, Lc8/pl;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Lc8/ol;

    invoke-interface {v0, p1, p2}, Lc8/ol;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 79
    .local p0, "this":Lc8/pl;, "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy<TT;>;"
    iget-object v0, p0, Lc8/pl;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Lc8/ol;

    invoke-interface {v0, p1, p2}, Lc8/ol;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 80
    return-void
.end method
