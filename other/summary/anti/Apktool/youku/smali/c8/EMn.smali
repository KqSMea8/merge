.class public Lc8/EMn;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KMn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KMn;


# direct methods
.method constructor <init>(Lc8/KMn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KMn;

    .prologue
    .line 515
    iput-object p1, p0, Lc8/EMn;->this$0:Lc8/KMn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 518
    iget-object v0, p0, Lc8/EMn;->this$0:Lc8/KMn;

    iget-object v1, p0, Lc8/EMn;->this$0:Lc8/KMn;

    invoke-static {v1}, Lc8/KMn;->access$600(Lc8/KMn;)I

    move-result v1

    invoke-static {v0, v1}, Lc8/KMn;->access$102(Lc8/KMn;I)I

    .line 519
    iget-object v0, p0, Lc8/EMn;->this$0:Lc8/KMn;

    invoke-static {v0}, Lc8/KMn;->access$700(Lc8/KMn;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lc8/EMn;->this$0:Lc8/KMn;

    invoke-static {v0}, Lc8/KMn;->access$700(Lc8/KMn;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    const/4 v1, 0x0

    .line 521
    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 524
    :cond_0
    return-void
.end method
