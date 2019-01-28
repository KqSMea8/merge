.class public abstract Lc8/WYf;
.super Lc8/sZf;
.source "AbstractLayoutFinishAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# instance fields
.field protected mLayoutHeight:I

.field protected mLayoutWidth:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/sZf;-><init>()V

    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 4
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 39
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string/jumbo v2, "_root"

    invoke-interface {p1, v2}, Lc8/gYf;->getDomByRef(Ljava/lang/String;)Lc8/HYf;

    move-result-object v1

    .line 44
    .local v1, "root":Lc8/HYf;
    invoke-virtual {v1}, Lc8/HYf;->getLayoutHeight()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lc8/WYf;->mLayoutHeight:I

    .line 45
    invoke-virtual {v1}, Lc8/HYf;->getLayoutWidth()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lc8/WYf;->mLayoutWidth:I

    .line 46
    invoke-interface {p1, p0}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V

    .line 47
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v0

    .line 48
    .local v0, "instance":Lc8/nVf;
    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v2, "domModule"

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0, v2, v3}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0
.end method
