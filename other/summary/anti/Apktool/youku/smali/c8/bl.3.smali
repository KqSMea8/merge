.class public Lc8/bl;
.super Lc8/Pi;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaControllerExtraData"
.end annotation


# instance fields
.field private final mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0
    .param p1, "mediaController"    # Landroid/support/v4/media/session/MediaControllerCompat;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lc8/Pi;-><init>()V

    .line 85
    iput-object p1, p0, Lc8/bl;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 86
    return-void
.end method


# virtual methods
.method public getMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lc8/bl;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method
