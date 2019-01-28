.class public Lc8/Gdo;
.super Ljava/lang/Object;
.source "SimpleVideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 368
    iput-object p1, p0, Lc8/Gdo;->this$0:Lc8/Ndo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 371
    iget-object v0, p0, Lc8/Gdo;->this$0:Lc8/Ndo;

    invoke-static {v0, v1}, Lc8/Ndo;->access$302(Lc8/Ndo;I)I

    .line 372
    iget-object v0, p0, Lc8/Gdo;->this$0:Lc8/Ndo;

    invoke-static {v0, v1}, Lc8/Ndo;->access$1102(Lc8/Ndo;I)I

    .line 373
    iget-object v0, p0, Lc8/Gdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$700(Lc8/Ndo;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lc8/Gdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$700(Lc8/Ndo;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 376
    :cond_0
    iget-object v0, p0, Lc8/Gdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$1200(Lc8/Ndo;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lc8/Gdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$1200(Lc8/Ndo;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lc8/Gdo;->this$0:Lc8/Ndo;

    iget-object v1, v1, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 379
    :cond_1
    iget-object v0, p0, Lc8/Gdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$1300(Lc8/Ndo;)Lc8/Mdo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lc8/Gdo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$1300(Lc8/Ndo;)Lc8/Mdo;

    move-result-object v0

    invoke-interface {v0}, Lc8/Mdo;->onCompleted()V

    .line 382
    :cond_2
    return-void
.end method
