.class public Lc8/qZf;
.super Ljava/lang/Object;
.source "RemoveEventAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# instance fields
.field private final mEvent:Ljava/lang/String;

.field private final mRef:Ljava/lang/String;

.field private mUpdatedDomObject:Lc8/HYf;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lc8/qZf;->mRef:Ljava/lang/String;

    .line 45
    invoke-static {p2}, Lcom/taobao/weex/dom/WXEvent;->getEventName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/qZf;->mEvent:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 4
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 51
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v1

    .line 55
    .local v1, "instance":Lc8/nVf;
    iget-object v2, p0, Lc8/qZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v2}, Lc8/gYf;->getDomByRef(Ljava/lang/String;)Lc8/HYf;

    move-result-object v0

    .line 56
    .local v0, "domObject":Lc8/HYf;
    if-nez v0, :cond_2

    .line 57
    if-eqz v1, :cond_0

    .line 58
    const-string/jumbo v2, "domModule"

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_REMOVEEVENT:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1, v2, v3}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v2, p0, Lc8/qZf;->mEvent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lc8/HYf;->removeEvent(Ljava/lang/String;)V

    .line 63
    iput-object v0, p0, Lc8/qZf;->mUpdatedDomObject:Lc8/HYf;

    .line 64
    invoke-interface {p1, p0}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V

    .line 65
    if-eqz v1, :cond_0

    .line 66
    const-string/jumbo v2, "domModule"

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1, v2, v3}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 2
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 72
    iget-object v1, p0, Lc8/qZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v1}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 73
    .local v0, "comp":Lc8/tbg;
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lc8/qZf;->mUpdatedDomObject:Lc8/HYf;

    invoke-virtual {v0, v1}, Lc8/tbg;->updateDom(Lc8/HYf;)V

    .line 76
    iget-object v1, p0, Lc8/qZf;->mEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/tbg;->removeEvent(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method
