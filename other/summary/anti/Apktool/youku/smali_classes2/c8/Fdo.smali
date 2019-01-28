.class public Lc8/Fdo;
.super Ljava/lang/Object;
.source "SimpleVideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 317
    iput-object p1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .annotation build Lc8/N;
        api = 0x10
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 322
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lc8/Ndo;->access$302(Lc8/Ndo;I)I

    .line 324
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$400(Lc8/Ndo;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 325
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Ndo;->access$402(Lc8/Ndo;I)I

    .line 327
    :cond_0
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    iget-object v1, v1, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v2}, Lc8/Ndo;->access$500(Lc8/Ndo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 328
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$600(Lc8/Ndo;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$600(Lc8/Ndo;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    iget-object v2, v2, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 331
    :cond_1
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$700(Lc8/Ndo;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 332
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$700(Lc8/Ndo;)Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 334
    :cond_2
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Ndo;->access$102(Lc8/Ndo;I)I

    .line 335
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Ndo;->access$202(Lc8/Ndo;I)I

    .line 337
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$800(Lc8/Ndo;)I

    move-result v0

    .line 338
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_3

    .line 339
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-virtual {v1, v0}, Lc8/Ndo;->seekTo(I)V

    .line 341
    :cond_3
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$100(Lc8/Ndo;)I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$200(Lc8/Ndo;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 342
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-virtual {v1}, Lc8/Ndo;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v2}, Lc8/Ndo;->access$100(Lc8/Ndo;)I

    move-result v2

    iget-object v3, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v3}, Lc8/Ndo;->access$200(Lc8/Ndo;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 343
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$900(Lc8/Ndo;)I

    move-result v1

    iget-object v2, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v2}, Lc8/Ndo;->access$100(Lc8/Ndo;)I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$1000(Lc8/Ndo;)I

    move-result v1

    iget-object v2, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v2}, Lc8/Ndo;->access$200(Lc8/Ndo;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 344
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$1100(Lc8/Ndo;)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 345
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-virtual {v1}, Lc8/Ndo;->start()V

    .line 346
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$700(Lc8/Ndo;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 347
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$700(Lc8/Ndo;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 364
    :cond_4
    :goto_0
    return-void

    .line 349
    :cond_5
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-virtual {v1}, Lc8/Ndo;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_6

    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    .line 350
    invoke-virtual {v1}, Lc8/Ndo;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_4

    .line 351
    :cond_6
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$700(Lc8/Ndo;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 353
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$700(Lc8/Ndo;)Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 360
    :cond_7
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$1100(Lc8/Ndo;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 361
    iget-object v1, p0, Lc8/Fdo;->this$0:Lc8/Ndo;

    invoke-virtual {v1}, Lc8/Ndo;->start()V

    goto :goto_0
.end method
