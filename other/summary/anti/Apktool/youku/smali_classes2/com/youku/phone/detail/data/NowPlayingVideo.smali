.class public Lcom/youku/phone/detail/data/NowPlayingVideo;
.super Lcom/youku/phone/detail/data/Video;
.source "NowPlayingVideo.java"


# instance fields
.field public final newPermissions:Lc8/Fkk;

.field public final permissions:Lc8/Ekk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/youku/phone/detail/data/Video;-><init>()V

    .line 11
    new-instance v0, Lc8/Ekk;

    invoke-direct {v0}, Lc8/Ekk;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/data/NowPlayingVideo;->permissions:Lc8/Ekk;

    .line 16
    new-instance v0, Lc8/Fkk;

    invoke-direct {v0}, Lc8/Fkk;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/data/NowPlayingVideo;->newPermissions:Lc8/Fkk;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/youku/phone/detail/data/Video;->clear()V

    .line 20
    iget-object v0, p0, Lcom/youku/phone/detail/data/NowPlayingVideo;->permissions:Lc8/Ekk;

    invoke-virtual {v0}, Lc8/Ekk;->clear()V

    .line 21
    return-void
.end method
