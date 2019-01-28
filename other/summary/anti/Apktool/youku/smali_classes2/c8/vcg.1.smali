.class public Lc8/vcg;
.super Ljava/lang/Object;
.source "WXVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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


# direct methods
.method constructor <init>(Lc8/xcg;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lc8/vcg;->this$0:Lc8/xcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 120
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v0, "Video"

    const-string/jumbo v1, "onCompletion"

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lc8/vcg;->this$0:Lc8/xcg;

    invoke-virtual {v0}, Lc8/xcg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "finish"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lc8/vcg;->this$0:Lc8/xcg;

    const-string/jumbo v1, "finish"

    const-string/jumbo v2, "stop"

    invoke-static {v0, v1, v2}, Lc8/xcg;->access$100(Lc8/xcg;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_1
    return-void
.end method
