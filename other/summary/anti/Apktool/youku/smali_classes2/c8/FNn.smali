.class public Lc8/FNn;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GNn;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/GNn;

.field final synthetic val$percent:I


# direct methods
.method constructor <init>(Lc8/GNn;I)V
    .locals 0
    .param p1, "this$1"    # Lc8/GNn;

    .prologue
    .line 115
    iput-object p1, p0, Lc8/FNn;->this$1:Lc8/GNn;

    iput p2, p0, Lc8/FNn;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lc8/FNn;->this$1:Lc8/GNn;

    iget-object v0, v0, Lc8/GNn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$100(Lc8/WNn;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lc8/FNn;->val$percent:I

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 120
    return-void
.end method
