.class public Lc8/Ldo;
.super Ljava/lang/Object;
.source "SimpleVideoPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ndo;->start()V
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
    .line 609
    iput-object p1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 616
    :goto_0
    :try_start_0
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$1800(Lc8/Ndo;)Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    iget-object v1, v1, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 618
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Ndo;->access$2102(Lc8/Ndo;Z)Z

    .line 647
    :cond_0
    :goto_1
    return-void

    .line 621
    :cond_1
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$2200(Lc8/Ndo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 622
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    iget-object v1, v1, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 623
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    iget-object v1, v1, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    invoke-static {v2}, Lc8/Ndo;->access$400(Lc8/Ndo;)I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 624
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$1300(Lc8/Ndo;)Lc8/Mdo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 625
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$1300(Lc8/Ndo;)Lc8/Mdo;

    move-result-object v1

    invoke-interface {v1}, Lc8/Mdo;->onCompleted()V

    .line 627
    :cond_2
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    iget-object v1, v1, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 628
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Ndo;->access$2102(Lc8/Ndo;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 645
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    invoke-static {v1, v4}, Lc8/Ndo;->access$2102(Lc8/Ndo;Z)Z

    goto :goto_1

    .line 632
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$1300(Lc8/Ndo;)Lc8/Mdo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 633
    iget-object v1, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$1300(Lc8/Ndo;)Lc8/Mdo;

    move-result-object v1

    iget-object v2, p0, Lc8/Ldo;->this$0:Lc8/Ndo;

    invoke-virtual {v2}, Lc8/Ndo;->getCurrentPosition()I

    move-result v2

    invoke-interface {v1, v2}, Lc8/Mdo;->onProgressChange(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 637
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 638
    :catch_1
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
