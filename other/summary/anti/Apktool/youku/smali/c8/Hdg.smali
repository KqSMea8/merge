.class public abstract Lc8/Hdg;
.super Lc8/scg;
.source "WidgetContainer.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lc8/scg",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Ldg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 41
    .local p0, "this":Lc8/Hdg;, "Lcom/taobao/weex/ui/flat/WidgetContainer<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/Hdg;->widgets:Ljava/util/List;

    .line 42
    return-void
.end method

.method private addFlatChild(Lc8/Ldg;I)V
    .locals 1
    .param p1, "widget"    # Lc8/Ldg;
    .param p2, "index"    # I

    .prologue
    .line 85
    .local p0, "this":Lc8/Hdg;, "Lcom/taobao/weex/ui/flat/WidgetContainer<TT;>;"
    iget-object v0, p0, Lc8/Hdg;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 86
    iget-object v0, p0, Lc8/Hdg;->widgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_0
    invoke-virtual {p0}, Lc8/Hdg;->mountFlatGUI()V

    .line 92
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lc8/Hdg;->widgets:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public createChildViewAt(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 54
    .local p0, "this":Lc8/Hdg;, "Lcom/taobao/weex/ui/flat/WidgetContainer<TT;>;"
    invoke-virtual {p0}, Lc8/Hdg;->intendToBeFlatContainer()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 55
    invoke-virtual {p0, p1}, Lc8/Hdg;->rearrangeIndexAndGetChild(I)Landroid/util/Pair;

    move-result-object v3

    .line 56
    .local v3, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Integer;>;"
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 57
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lc8/tbg;

    .line 59
    .local v0, "child":Lc8/tbg;
    invoke-virtual {p0}, Lc8/Hdg;->getInstance()Lc8/nVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/nVf;->getFlatUIContext()Lc8/Gdg;

    move-result-object v4

    .line 60
    .local v4, "uiImp":Lc8/Gdg;
    invoke-virtual {v4, p0}, Lc8/Gdg;->getFlatComponentAncestor(Lc8/tbg;)Lc8/Hdg;

    move-result-object v2

    .line 61
    .local v2, "parent":Lc8/Hdg;
    if-eqz v2, :cond_0

    invoke-virtual {v4, p0}, Lc8/Gdg;->getAndroidViewWidget(Lc8/tbg;)Lc8/Idg;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 62
    :cond_0
    move-object v2, p0

    .line 64
    :cond_1
    invoke-virtual {v4, v0, v2}, Lc8/Gdg;->register(Lc8/tbg;Lc8/Hdg;)V

    .line 66
    instance-of v5, v0, Lc8/Fdg;

    if-eqz v5, :cond_3

    move-object v5, v0

    check-cast v5, Lc8/Fdg;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lc8/Fdg;->promoteToView(Z)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v0

    .line 67
    check-cast v5, Lc8/Fdg;

    invoke-interface {v5}, Lc8/Fdg;->getOrCreateFlatWidget()Lc8/Ldg;

    move-result-object v1

    .line 76
    .local v1, "flatChild":Lc8/Ldg;
    :goto_0
    invoke-virtual {v4, v1, v0}, Lc8/Gdg;->register(Lc8/Ldg;Lc8/tbg;)V

    .line 77
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lc8/Hdg;->addFlatChild(Lc8/Ldg;I)V

    .line 82
    .end local v0    # "child":Lc8/tbg;
    .end local v1    # "flatChild":Lc8/Ldg;
    .end local v2    # "parent":Lc8/Hdg;
    .end local v3    # "ret":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Integer;>;"
    .end local v4    # "uiImp":Lc8/Gdg;
    :cond_2
    :goto_1
    return-void

    .line 69
    .restart local v0    # "child":Lc8/tbg;
    .restart local v2    # "parent":Lc8/Hdg;
    .restart local v3    # "ret":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Integer;>;"
    .restart local v4    # "uiImp":Lc8/Gdg;
    :cond_3
    new-instance v1, Lc8/Idg;

    invoke-direct {v1, v4}, Lc8/Idg;-><init>(Lc8/Gdg;)V

    .restart local v1    # "flatChild":Lc8/Ldg;
    move-object v5, v1

    .line 70
    check-cast v5, Lc8/Idg;

    invoke-virtual {v4, v0, v5}, Lc8/Gdg;->register(Lc8/tbg;Lc8/Idg;)V

    .line 71
    invoke-virtual {v0}, Lc8/tbg;->createView()V

    move-object v5, v1

    .line 72
    check-cast v5, Lc8/Idg;

    invoke-virtual {v0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/Idg;->setContentView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Lc8/Hdg;->addSubView(Landroid/view/View;I)V

    goto :goto_0

    .line 80
    .end local v0    # "child":Lc8/tbg;
    .end local v1    # "flatChild":Lc8/Ldg;
    .end local v2    # "parent":Lc8/Hdg;
    .end local v3    # "ret":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Integer;>;"
    .end local v4    # "uiImp":Lc8/Gdg;
    :cond_4
    invoke-super {p0, p1}, Lc8/scg;->createChildViewAt(I)V

    goto :goto_1
.end method

.method public intendToBeFlatContainer()Z
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lc8/Hdg;, "Lcom/taobao/weex/ui/flat/WidgetContainer<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract mountFlatGUI()V
.end method

.method protected abstract unmountFlatGUI()V
.end method
