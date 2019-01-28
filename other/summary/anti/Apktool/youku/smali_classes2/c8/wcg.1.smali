.class public Lc8/wcg;
.super Ljava/lang/Object;
.source "WXVideo.java"

# interfaces
.implements Lc8/Beg;


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
    .line 129
    iput-object p1, p0, Lc8/wcg;->this$0:Lc8/xcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "Video"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lc8/wcg;->this$0:Lc8/xcg;

    invoke-virtual {v0}, Lc8/xcg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "pause"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lc8/wcg;->this$0:Lc8/xcg;

    const-string/jumbo v1, "pause"

    const-string/jumbo v2, "pause"

    invoke-static {v0, v1, v2}, Lc8/xcg;->access$100(Lc8/xcg;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v0, "Video"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lc8/wcg;->this$0:Lc8/xcg;

    invoke-virtual {v0}, Lc8/xcg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lc8/wcg;->this$0:Lc8/xcg;

    const-string/jumbo v1, "start"

    const-string/jumbo v2, "play"

    invoke-static {v0, v1, v2}, Lc8/xcg;->access$100(Lc8/xcg;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    return-void
.end method
