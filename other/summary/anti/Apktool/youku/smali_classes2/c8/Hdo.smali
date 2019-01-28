.class public Lc8/Hdo;
.super Ljava/lang/Object;
.source "SimpleVideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 386
    iput-object p1, p0, Lc8/Hdo;->this$0:Lc8/Ndo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 389
    iget-object v0, p0, Lc8/Hdo;->this$0:Lc8/Ndo;

    invoke-static {v0, v1}, Lc8/Ndo;->access$302(Lc8/Ndo;I)I

    .line 390
    iget-object v0, p0, Lc8/Hdo;->this$0:Lc8/Ndo;

    invoke-static {v0, v1}, Lc8/Ndo;->access$1102(Lc8/Ndo;I)I

    .line 391
    iget-object v0, p0, Lc8/Hdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$700(Lc8/Ndo;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lc8/Hdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$700(Lc8/Ndo;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 395
    :cond_0
    iget-object v0, p0, Lc8/Hdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$1400(Lc8/Ndo;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lc8/Hdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$1400(Lc8/Ndo;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lc8/Hdo;->this$0:Lc8/Ndo;

    iget-object v1, v1, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    :cond_1
    return v2
.end method
