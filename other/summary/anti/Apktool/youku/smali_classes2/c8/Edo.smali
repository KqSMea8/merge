.class public Lc8/Edo;
.super Ljava/lang/Object;
.source "SimpleVideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 305
    iput-object p1, p0, Lc8/Edo;->this$0:Lc8/Ndo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lc8/Edo;->this$0:Lc8/Ndo;

    invoke-static {v0, p2}, Lc8/Ndo;->access$102(Lc8/Ndo;I)I

    .line 310
    iget-object v0, p0, Lc8/Edo;->this$0:Lc8/Ndo;

    invoke-static {v0, p3}, Lc8/Ndo;->access$202(Lc8/Ndo;I)I

    .line 311
    iget-object v0, p0, Lc8/Edo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$100(Lc8/Ndo;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Edo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$200(Lc8/Ndo;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lc8/Edo;->this$0:Lc8/Ndo;

    invoke-virtual {v0}, Lc8/Ndo;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lc8/Edo;->this$0:Lc8/Ndo;

    invoke-static {v1}, Lc8/Ndo;->access$100(Lc8/Ndo;)I

    move-result v1

    iget-object v2, p0, Lc8/Edo;->this$0:Lc8/Ndo;

    invoke-static {v2}, Lc8/Ndo;->access$200(Lc8/Ndo;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 314
    :cond_0
    return-void
.end method
