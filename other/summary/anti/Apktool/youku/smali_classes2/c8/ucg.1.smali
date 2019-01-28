.class public Lc8/ucg;
.super Ljava/lang/Object;
.source "WXVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xcg;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xcg;

.field final synthetic val$video:Lc8/Ceg;


# direct methods
.method constructor <init>(Lc8/xcg;Lc8/Ceg;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lc8/ucg;->this$0:Lc8/xcg;

    iput-object p2, p0, Lc8/ucg;->val$video:Lc8/Ceg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 91
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v1, "Video"

    const-string/jumbo v2, "onPrepared"

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lc8/ucg;->val$video:Lc8/Ceg;

    invoke-virtual {v1}, Lc8/Ceg;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lc8/ucg;->this$0:Lc8/xcg;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lc8/xcg;->mPrepared:Z

    .line 96
    iget-object v1, p0, Lc8/ucg;->this$0:Lc8/xcg;

    invoke-static {v1}, Lc8/xcg;->access$200(Lc8/xcg;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lc8/ucg;->val$video:Lc8/Ceg;

    invoke-virtual {v1}, Lc8/Ceg;->start()V

    .line 101
    :cond_1
    iget-object v1, p0, Lc8/ucg;->val$video:Lc8/Ceg;

    invoke-virtual {v1}, Lc8/Ceg;->getVideoView()Lc8/Deg;

    move-result-object v0

    .line 102
    .local v0, "videoView":Lc8/Deg;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lc8/Deg;->seekTo(I)V

    .line 104
    iget-object v1, p0, Lc8/ucg;->val$video:Lc8/Ceg;

    invoke-virtual {v1}, Lc8/Ceg;->getMediaController()Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lc8/ucg;->this$0:Lc8/xcg;

    invoke-static {v1}, Lc8/xcg;->access$300(Lc8/xcg;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    iget-object v1, p0, Lc8/ucg;->val$video:Lc8/Ceg;

    invoke-virtual {v1}, Lc8/Ceg;->getMediaController()Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    .line 112
    :cond_2
    :goto_0
    iget-object v1, p0, Lc8/ucg;->this$0:Lc8/xcg;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/xcg;->access$302(Lc8/xcg;Z)Z

    .line 113
    return-void

    .line 108
    :cond_3
    iget-object v1, p0, Lc8/ucg;->val$video:Lc8/Ceg;

    invoke-virtual {v1}, Lc8/Ceg;->getMediaController()Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    goto :goto_0
.end method
