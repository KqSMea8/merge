.class public Lc8/Fqm;
.super Ljava/lang/Object;
.source "PWAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 40
    iput-object p1, p0, Lc8/Fqm;->this$0:Lc8/Jqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lc8/Fqm;->this$0:Lc8/Jqm;

    const/16 v1, 0x3ef

    invoke-static {v0, v1}, Lc8/Jqm;->access$102(Lc8/Jqm;I)I

    .line 44
    iget-object v0, p0, Lc8/Fqm;->this$0:Lc8/Jqm;

    invoke-virtual {v0}, Lc8/Jqm;->playReset()V

    .line 45
    iget-object v0, p0, Lc8/Fqm;->this$0:Lc8/Jqm;

    invoke-static {v0}, Lc8/Jqm;->access$200(Lc8/Jqm;)Lc8/Iqm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lc8/Fqm;->this$0:Lc8/Jqm;

    invoke-static {v0}, Lc8/Jqm;->access$200(Lc8/Jqm;)Lc8/Iqm;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lc8/Iqm;->onError(II)V

    .line 48
    :cond_0
    iget-object v0, p0, Lc8/Fqm;->this$0:Lc8/Jqm;

    invoke-static {v0}, Lc8/Jqm;->access$300(Lc8/Jqm;)V

    .line 49
    const/4 v0, 0x0

    return v0
.end method
