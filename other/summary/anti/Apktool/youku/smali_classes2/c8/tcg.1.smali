.class public Lc8/tcg;
.super Ljava/lang/Object;
.source "WXVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xcg;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xcg;

.field final synthetic val$video:Lc8/Ceg;


# direct methods
.method constructor <init>(Lc8/xcg;Lc8/Ceg;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lc8/tcg;->this$0:Lc8/xcg;

    iput-object p2, p0, Lc8/tcg;->val$video:Lc8/Ceg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x1

    .line 73
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lc8/tcg;->val$video:Lc8/Ceg;

    invoke-virtual {v0}, Lc8/Ceg;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lc8/tcg;->this$0:Lc8/xcg;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/xcg;->mPrepared:Z

    .line 78
    iget-object v0, p0, Lc8/tcg;->this$0:Lc8/xcg;

    invoke-static {v0, v3}, Lc8/xcg;->access$002(Lc8/xcg;Z)Z

    .line 80
    iget-object v0, p0, Lc8/tcg;->this$0:Lc8/xcg;

    invoke-virtual {v0}, Lc8/xcg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "fail"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lc8/tcg;->this$0:Lc8/xcg;

    const-string/jumbo v1, "fail"

    const-string/jumbo v2, "stop"

    invoke-static {v0, v1, v2}, Lc8/xcg;->access$100(Lc8/xcg;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    return v3
.end method
