.class public Lc8/Jdo;
.super Ljava/lang/Object;
.source "SimpleVideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    .line 415
    iput-object p1, p0, Lc8/Jdo;->this$0:Lc8/Ndo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 418
    iget-object v0, p0, Lc8/Jdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$1700(Lc8/Ndo;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lc8/Jdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$1700(Lc8/Ndo;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 421
    :cond_0
    return-void
.end method
