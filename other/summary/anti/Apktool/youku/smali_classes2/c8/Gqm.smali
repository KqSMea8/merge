.class public Lc8/Gqm;
.super Ljava/lang/Object;
.source "PWAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 52
    iput-object p1, p0, Lc8/Gqm;->this$0:Lc8/Jqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 55
    iget-object v0, p0, Lc8/Gqm;->this$0:Lc8/Jqm;

    const/16 v1, 0x3ee

    invoke-static {v0, v1}, Lc8/Jqm;->access$102(Lc8/Jqm;I)I

    .line 56
    iget-object v0, p0, Lc8/Gqm;->this$0:Lc8/Jqm;

    invoke-static {v0}, Lc8/Jqm;->access$300(Lc8/Jqm;)V

    .line 57
    iget-object v0, p0, Lc8/Gqm;->this$0:Lc8/Jqm;

    invoke-virtual {v0}, Lc8/Jqm;->playReset()V

    .line 62
    return-void
.end method
