.class public final Lc8/pZf;
.super Ljava/lang/Object;
.source "RemoveElementAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# instance fields
.field private final mRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lc8/pZf;->mRef:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private clearRegistryForComponent(Lc8/sYf;Lc8/tbg;)V
    .locals 5
    .param p1, "context"    # Lc8/sYf;
    .param p2, "component"    # Lc8/tbg;

    .prologue
    .line 86
    invoke-virtual {p2}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lc8/sYf;->unregisterComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v3

    .line 87
    .local v3, "removedComponent":Lc8/tbg;
    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v3}, Lc8/tbg;->removeAllEvent()V

    .line 89
    invoke-virtual {v3}, Lc8/tbg;->removeStickyStyle()V

    .line 91
    :cond_0
    instance-of v4, p2, Lc8/scg;

    if-eqz v4, :cond_1

    move-object v0, p2

    .line 92
    check-cast v0, Lc8/scg;

    .line 93
    .local v0, "container":Lc8/scg;
    invoke-virtual {v0}, Lc8/scg;->childCount()I

    move-result v1

    .line 94
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 95
    invoke-virtual {v0, v2}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lc8/pZf;->clearRegistryForComponent(Lc8/sYf;Lc8/tbg;)V

    .line 94
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 99
    .end local v0    # "container":Lc8/scg;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 6
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 44
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v1

    .line 48
    .local v1, "instance":Lc8/nVf;
    iget-object v3, p0, Lc8/pZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v3}, Lc8/gYf;->getDomByRef(Ljava/lang/String;)Lc8/HYf;

    move-result-object v0

    .line 49
    .local v0, "domObject":Lc8/HYf;
    if-nez v0, :cond_2

    .line 50
    if-eqz v1, :cond_0

    .line 51
    const-string/jumbo v3, "domModule"

    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_REMOVEELEMENT:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1, v3, v4}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v2, v0, Lc8/HYf;->parent:Lc8/HYf;

    .line 56
    .local v2, "parent":Lc8/HYf;
    if-nez v2, :cond_3

    .line 57
    if-eqz v1, :cond_0

    .line 58
    const-string/jumbo v3, "domModule"

    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_REMOVEELEMENT:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1, v3, v4}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0

    .line 62
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Lc8/GYf;

    const/4 v4, 0x0

    invoke-interface {p1}, Lc8/gYf;->getRemoveElementConsumer()Lc8/GYf;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lc8/HYf;->traverseTree([Lc8/GYf;)V

    .line 63
    invoke-virtual {v2, v0}, Lc8/HYf;->remove(Lc8/HYf;)V

    .line 64
    iget-object v3, p0, Lc8/pZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v3}, Lc8/gYf;->unregisterDOMObject(Ljava/lang/String;)V

    .line 66
    invoke-interface {p1, p0}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V

    .line 68
    if-eqz v1, :cond_0

    .line 69
    const-string/jumbo v3, "domModule"

    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1, v3, v4}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 3
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 75
    iget-object v2, p0, Lc8/pZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v2}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 76
    .local v0, "component":Lc8/tbg;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v2

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {v0}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v1

    .line 80
    .local v1, "parent":Lc8/scg;
    invoke-direct {p0, p1, v0}, Lc8/pZf;->clearRegistryForComponent(Lc8/sYf;Lc8/tbg;)V

    .line 81
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lc8/scg;->remove(Lc8/tbg;Z)V

    .line 82
    iget-object v2, p0, Lc8/pZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v2}, Lc8/sYf;->unregisterComponent(Ljava/lang/String;)Lc8/tbg;

    goto :goto_0
.end method
