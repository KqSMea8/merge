.class public Lc8/RNn;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/SNn;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/SNn;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lc8/SNn;II)V
    .locals 0
    .param p1, "this$1"    # Lc8/SNn;

    .prologue
    .line 232
    iput-object p1, p0, Lc8/RNn;->this$1:Lc8/SNn;

    iput p2, p0, Lc8/RNn;->val$width:I

    iput p3, p0, Lc8/RNn;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lc8/RNn;->this$1:Lc8/SNn;

    iget-object v0, v0, Lc8/SNn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$1200(Lc8/WNn;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lc8/RNn;->val$width:I

    iget v3, p0, Lc8/RNn;->val$height:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 237
    return-void
.end method
