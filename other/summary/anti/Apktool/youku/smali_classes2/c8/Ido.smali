.class public Lc8/Ido;
.super Ljava/lang/Object;
.source "SimpleVideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ndo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ndo;


# direct methods
.method constructor <init>(Lc8/Ndo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ndo;

    .prologue
    .line 405
    iput-object p1, p0, Lc8/Ido;->this$0:Lc8/Ndo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lc8/Ido;->this$0:Lc8/Ndo;

    invoke-static {v0, p2}, Lc8/Ndo;->access$1502(Lc8/Ndo;I)I

    .line 409
    iget-object v0, p0, Lc8/Ido;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$1600(Lc8/Ndo;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lc8/Ido;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$1600(Lc8/Ndo;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 412
    :cond_0
    return-void
.end method
