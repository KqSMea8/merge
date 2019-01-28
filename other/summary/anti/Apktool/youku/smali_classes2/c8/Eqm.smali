.class public Lc8/Eqm;
.super Ljava/lang/Object;
.source "PWAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jqm;


# direct methods
.method constructor <init>(Lc8/Jqm;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jqm;

    .prologue
    .line 29
    iput-object p1, p0, Lc8/Eqm;->this$0:Lc8/Jqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/Eqm;->this$0:Lc8/Jqm;

    invoke-static {v0}, Lc8/Jqm;->access$000(Lc8/Jqm;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 33
    iget-object v0, p0, Lc8/Eqm;->this$0:Lc8/Jqm;

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lc8/Jqm;->access$102(Lc8/Jqm;I)I

    .line 34
    iget-object v0, p0, Lc8/Eqm;->this$0:Lc8/Jqm;

    invoke-static {v0}, Lc8/Jqm;->access$200(Lc8/Jqm;)Lc8/Iqm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lc8/Eqm;->this$0:Lc8/Jqm;

    invoke-static {v0}, Lc8/Jqm;->access$200(Lc8/Jqm;)Lc8/Iqm;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Iqm;->onStarted()V

    .line 38
    :cond_0
    return-void
.end method
