.class public Lc8/ONn;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/WNn;
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
    .line 181
    iput-object p1, p0, Lc8/ONn;->this$0:Lc8/WNn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 184
    iget-object v0, p0, Lc8/ONn;->this$0:Lc8/WNn;

    const-string/jumbo v1, "onPrepared "

    invoke-static {v0, v1}, Lc8/WNn;->access$000(Lc8/WNn;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lc8/ONn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$600(Lc8/WNn;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lc8/ONn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$200(Lc8/WNn;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc8/NNn;

    invoke-direct {v1, p0}, Lc8/NNn;-><init>(Lc8/ONn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    iget-object v0, p0, Lc8/ONn;->this$0:Lc8/WNn;

    invoke-static {v0, v2}, Lc8/WNn;->access$602(Lc8/WNn;Z)Z

    .line 202
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lc8/ONn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$800(Lc8/WNn;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Lc8/ONn;->this$0:Lc8/WNn;

    invoke-static {v0, v2}, Lc8/WNn;->access$802(Lc8/WNn;I)I

    .line 197
    iget-object v0, p0, Lc8/ONn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$1000(Lc8/WNn;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lc8/ONn;->this$0:Lc8/WNn;

    invoke-static {v1}, Lc8/WNn;->access$900(Lc8/WNn;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lc8/ONn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$1000(Lc8/WNn;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method
