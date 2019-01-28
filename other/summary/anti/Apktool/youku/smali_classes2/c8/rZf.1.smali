.class public final Lc8/rZf;
.super Ljava/lang/Object;
.source "ScrollToElementAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# instance fields
.field private final mOptions:Lcom/alibaba/fastjson/JSONObject;

.field private final mRef:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lc8/rZf;->mRef:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lc8/rZf;->mOptions:Lcom/alibaba/fastjson/JSONObject;

    .line 44
    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 3
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 48
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v0

    .line 52
    .local v0, "instance":Lc8/nVf;
    invoke-interface {p1, p0}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V

    .line 53
    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v1, "domModule"

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0, v1, v2}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 3
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 60
    iget-object v2, p0, Lc8/rZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v2}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 61
    .local v0, "component":Lc8/tbg;
    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {v0}, Lc8/tbg;->getParentScroller()Lc8/ebg;

    move-result-object v1

    .line 66
    .local v1, "scroller":Lc8/ebg;
    if-eqz v1, :cond_0

    .line 69
    iget-object v2, p0, Lc8/rZf;->mOptions:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v1, v0, v2}, Lc8/ebg;->scrollTo(Lc8/tbg;Ljava/util/Map;)V

    goto :goto_0
.end method
