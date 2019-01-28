.class public Lc8/NNn;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ONn;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/ONn;


# direct methods
.method constructor <init>(Lc8/ONn;)V
    .locals 0
    .param p1, "this$1"    # Lc8/ONn;

    .prologue
    .line 186
    iput-object p1, p0, Lc8/NNn;->this$1:Lc8/ONn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lc8/NNn;->this$1:Lc8/ONn;

    iget-object v0, v0, Lc8/ONn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$700(Lc8/WNn;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 190
    return-void
.end method
