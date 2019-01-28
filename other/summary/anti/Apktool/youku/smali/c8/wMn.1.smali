.class public Lc8/wMn;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 468
    iput-object p1, p0, Lc8/wMn;->this$0:Lc8/KMn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 471
    iget-object v0, p0, Lc8/wMn;->this$0:Lc8/KMn;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lc8/KMn;->access$102(Lc8/KMn;I)I

    .line 472
    iget-object v0, p0, Lc8/wMn;->this$0:Lc8/KMn;

    invoke-static {v0}, Lc8/KMn;->access$200(Lc8/KMn;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lc8/wMn;->this$0:Lc8/KMn;

    invoke-static {v0}, Lc8/KMn;->access$200(Lc8/KMn;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lc8/wMn;->this$0:Lc8/KMn;

    invoke-virtual {v0}, Lc8/KMn;->release()V

    goto :goto_0
.end method
