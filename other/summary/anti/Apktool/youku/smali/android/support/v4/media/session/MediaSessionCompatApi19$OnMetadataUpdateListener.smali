.class public Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi19.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnMetadataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi19;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnMetadataUpdateListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc8/nl;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/media/RemoteControlClient$OnMetadataUpdateListener;"
    }
.end annotation


# instance fields
.field protected final mCallback:Lc8/nl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/nl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;, "Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener<TT;>;"
    .local p1, "callback":Lc8/nl;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;->mCallback:Lc8/nl;

    .line 95
    return-void
.end method


# virtual methods
.method public onMetadataUpdate(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 99
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;, "Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener<TT;>;"
    const v0, 0x10000001

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/media/Rating;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;->mCallback:Lc8/nl;

    invoke-interface {v0, p2}, Lc8/nl;->onSetRating(Ljava/lang/Object;)V

    .line 102
    :cond_0
    return-void
.end method
