.class public Lc8/TNn;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/WNn;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/WNn;


# direct methods
.method constructor <init>(Lc8/WNn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/WNn;

    .prologue
    .line 374
    iput-object p1, p0, Lc8/TNn;->this$0:Lc8/WNn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 378
    invoke-static {}, Lc8/WNn;->access$1300()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 380
    :try_start_0
    iget-object v0, p0, Lc8/TNn;->this$0:Lc8/WNn;

    const-string/jumbo v1, "release "

    invoke-static {v0, v1}, Lc8/WNn;->access$000(Lc8/WNn;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lc8/WNn;->access$1400()Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lc8/TNn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$1000(Lc8/WNn;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 383
    iget-object v0, p0, Lc8/TNn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$1000(Lc8/WNn;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 384
    iget-object v0, p0, Lc8/TNn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$1000(Lc8/WNn;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 385
    invoke-static {}, Lc8/WNn;->access$1400()Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lc8/TNn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$1500(Lc8/WNn;)V

    .line 387
    iget-object v0, p0, Lc8/TNn;->this$0:Lc8/WNn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/WNn;->access$1002(Lc8/WNn;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-static {}, Lc8/WNn;->access$1300()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    invoke-static {}, Lc8/WNn;->access$1300()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
