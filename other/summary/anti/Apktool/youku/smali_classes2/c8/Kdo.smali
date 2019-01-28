.class public Lc8/Kdo;
.super Ljava/lang/Object;
.source "SimpleVideoPlayerView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 468
    iput-object p1, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 472
    iget-object v4, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-static {v4, p3}, Lc8/Ndo;->access$902(Lc8/Ndo;I)I

    .line 473
    iget-object v4, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-static {v4, p4}, Lc8/Ndo;->access$1002(Lc8/Ndo;I)I

    .line 474
    iget-object v4, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-static {v4}, Lc8/Ndo;->access$1100(Lc8/Ndo;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 475
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-static {v4}, Lc8/Ndo;->access$100(Lc8/Ndo;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-static {v4}, Lc8/Ndo;->access$200(Lc8/Ndo;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 476
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    iget-object v2, v2, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 477
    iget-object v2, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-static {v2}, Lc8/Ndo;->access$800(Lc8/Ndo;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    iget-object v2, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    iget-object v3, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-static {v3}, Lc8/Ndo;->access$800(Lc8/Ndo;)I

    move-result v3

    invoke-virtual {v2, v3}, Lc8/Ndo;->seekTo(I)V

    .line 480
    :cond_0
    iget-object v2, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-virtual {v2}, Lc8/Ndo;->start()V

    .line 482
    :cond_1
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    move v1, v3

    .line 474
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_3
    move v0, v3

    .line 475
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 486
    iget-object v0, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-static {v0, p1}, Lc8/Ndo;->access$1802(Lc8/Ndo;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 487
    iget-object v0, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$1900(Lc8/Ndo;)V

    .line 488
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 493
    iget-object v0, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Ndo;->access$1802(Lc8/Ndo;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 494
    iget-object v0, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$700(Lc8/Ndo;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$700(Lc8/Ndo;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 495
    :cond_0
    iget-object v0, p0, Lc8/Kdo;->this$0:Lc8/Ndo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/Ndo;->access$2000(Lc8/Ndo;Z)V

    .line 496
    return-void
.end method
