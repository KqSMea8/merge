.class public final Lc8/mZf;
.super Ljava/lang/Object;
.source "MoveElementAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# instance fields
.field private final mIndex:I

.field private mNewIndex:I

.field private final mParentRef:Ljava/lang/String;

.field private final mRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "parentRef"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lc8/mZf;->mRef:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lc8/mZf;->mParentRef:Ljava/lang/String;

    .line 45
    iput p3, p0, Lc8/mZf;->mIndex:I

    .line 46
    iput p3, p0, Lc8/mZf;->mNewIndex:I

    .line 47
    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 6
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 51
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v2

    .line 55
    .local v2, "instance":Lc8/nVf;
    iget-object v4, p0, Lc8/mZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v4}, Lc8/gYf;->getDomByRef(Ljava/lang/String;)Lc8/HYf;

    move-result-object v0

    .line 56
    .local v0, "domObject":Lc8/HYf;
    iget-object v4, p0, Lc8/mZf;->mParentRef:Ljava/lang/String;

    invoke-interface {p1, v4}, Lc8/gYf;->getDomByRef(Ljava/lang/String;)Lc8/HYf;

    move-result-object v3

    .line 57
    .local v3, "parentObject":Lc8/HYf;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lc8/HYf;->parent:Lc8/HYf;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lc8/HYf;->hasNewLayout()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 59
    :cond_2
    if-eqz v2, :cond_0

    .line 60
    const-string/jumbo v4, "domModule"

    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_MOVEELEMENT:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2, v4, v5}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0

    .line 64
    :cond_3
    iget v1, p0, Lc8/mZf;->mIndex:I

    .line 65
    .local v1, "index":I
    iget-object v4, v0, Lc8/HYf;->parent:Lc8/HYf;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 66
    invoke-virtual {v3, v0}, Lc8/HYf;->index(Lc8/HYf;)I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 68
    iget-object v4, v0, Lc8/HYf;->parent:Lc8/HYf;

    invoke-virtual {v4, v0}, Lc8/HYf;->index(Lc8/HYf;)I

    move-result v4

    if-ge v4, v1, :cond_4

    .line 69
    add-int/lit8 v1, v1, -0x1

    .line 73
    :cond_4
    iput v1, p0, Lc8/mZf;->mNewIndex:I

    .line 74
    iget-object v4, v0, Lc8/HYf;->parent:Lc8/HYf;

    invoke-virtual {v4, v0}, Lc8/HYf;->remove(Lc8/HYf;)V

    .line 75
    iget v4, p0, Lc8/mZf;->mNewIndex:I

    invoke-virtual {v3, v0, v4}, Lc8/HYf;->add(Lc8/HYf;I)V

    .line 77
    invoke-interface {p1, p0}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V

    .line 78
    if-eqz v2, :cond_0

    .line 79
    const-string/jumbo v4, "domModule"

    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2, v4, v5}, Lc8/nVf;->commitUTStab(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;)V

    goto :goto_0
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 5
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 85
    iget-object v3, p0, Lc8/mZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v3}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 86
    .local v0, "component":Lc8/tbg;
    iget-object v3, p0, Lc8/mZf;->mParentRef:Ljava/lang/String;

    invoke-interface {p1, v3}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v1

    .line 87
    .local v1, "newParent":Lc8/tbg;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    instance-of v3, v1, Lc8/scg;

    if-nez v3, :cond_1

    .line 97
    .end local v1    # "newParent":Lc8/tbg;
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v1    # "newParent":Lc8/tbg;
    :cond_1
    invoke-virtual {v0}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v2

    .line 92
    .local v2, "oldParent":Lc8/scg;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lc8/scg;->remove(Lc8/tbg;Z)V

    move-object v3, v1

    .line 93
    check-cast v3, Lc8/scg;

    iget v4, p0, Lc8/mZf;->mNewIndex:I

    invoke-virtual {v3, v0, v4}, Lc8/scg;->addChild(Lc8/tbg;I)V

    .line 94
    invoke-virtual {v0}, Lc8/tbg;->isVirtualComponent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    check-cast v1, Lc8/scg;

    .end local v1    # "newParent":Lc8/tbg;
    invoke-virtual {v0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lc8/mZf;->mNewIndex:I

    invoke-virtual {v1, v3, v4}, Lc8/scg;->addSubView(Landroid/view/View;I)V

    goto :goto_0
.end method
