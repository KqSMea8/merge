.class public final Lc8/uZf;
.super Ljava/lang/Object;
.source "UpdateFinishAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 3
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 36
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-interface {p1, p0}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V

    .line 41
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v0

    .line 42
    .local v0, "instance":Lc8/nVf;
    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v1, "domModule"

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0, v1, v2}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 1
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 49
    invoke-interface {p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->onUpdateFinish()V

    .line 50
    return-void
.end method
