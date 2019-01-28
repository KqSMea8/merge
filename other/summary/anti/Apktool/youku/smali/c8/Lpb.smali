.class public Lc8/Lpb;
.super Lc8/scg;
.source "WXTabHeader.java"


# instance fields
.field private mContainer:Lc8/scg;

.field private mDataChanged:Z

.field public mElevator:Lc8/Ivb;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 32
    iput-object p3, p0, Lc8/Lpb;->mContainer:Lc8/scg;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lc8/Lpb;)V
    .locals 0
    .param p0, "x0"    # Lc8/Lpb;

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/Lpb;->invalidate()V

    return-void
.end method

.method private invalidate()V
    .locals 7

    .prologue
    .line 50
    iget-object v5, p0, Lc8/Lpb;->mContainer:Lc8/scg;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lc8/Lpb;->mContainer:Lc8/scg;

    invoke-virtual {v5}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 51
    iget-object v5, p0, Lc8/Lpb;->mContainer:Lc8/scg;

    invoke-virtual {v5}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 52
    .local v4, "waScrollView":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lc8/Lpb;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 53
    .local v1, "left":I
    invoke-virtual {p0}, Lc8/Lpb;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    .line 54
    .local v3, "top":I
    invoke-virtual {p0}, Lc8/Lpb;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v2

    .line 55
    .local v2, "right":I
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lc8/Lpb;->getHostView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v0, v5, v6

    .line 56
    .local v0, "bottom":I
    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/ViewGroup;->invalidate(IIII)V

    .line 58
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    .end local v4    # "waScrollView":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private refreshList(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v5, p0, Lc8/Lpb;->mElevator:Lc8/Ivb;

    if-nez v5, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v5, p0, Lc8/Lpb;->mElevator:Lc8/Ivb;

    invoke-virtual {p0}, Lc8/Lpb;->getDomObject()Lc8/qYf;

    move-result-object v6

    invoke-interface {v6}, Lc8/qYf;->getLayoutHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lc8/Ivb;->setTextHeight(I)V

    .line 90
    :try_start_0
    const-class v5, Ljava/lang/String;

    invoke-static {p1, v5}, Lc8/ugg;->getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 91
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v2, "elevatorItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/adapter/view/ElevatorItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    .local v4, "string":Ljava/lang/String;
    new-instance v1, Lc8/Lvb;

    invoke-direct {v1, v4}, Lc8/Lvb;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "elevatorItem":Lc8/Lvb;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 100
    .end local v1    # "elevatorItem":Lc8/Lvb;
    .end local v2    # "elevatorItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/adapter/view/ElevatorItem;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "string":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "elevatorItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/adapter/view/ElevatorItem;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    iget-object v5, p0, Lc8/Lpb;->mElevator:Lc8/Ivb;

    invoke-virtual {v5, v2}, Lc8/Ivb;->setList(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lc8/scg;->addEvent(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lc8/Lpb;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lc8/Lpb;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "select"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lc8/Lpb;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXEvent;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lc8/Lpb;->mElevator:Lc8/Ivb;

    new-instance v1, Lc8/Kpb;

    invoke-direct {v1, p0}, Lc8/Kpb;-><init>(Lc8/Lpb;)V

    invoke-virtual {v0, v1}, Lc8/Ivb;->setElevatorOnClickListener(Lc8/Gvb;)V

    .line 123
    :cond_0
    return-void
.end method

.method public bindData(Lc8/tbg;)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lc8/scg;->bindData(Lc8/tbg;)V

    .line 147
    iget-object v0, p0, Lc8/Lpb;->mElevator:Lc8/Ivb;

    invoke-virtual {v0}, Lc8/Ivb;->reBindImage()V

    .line 148
    return-void
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    new-instance v0, Lc8/Ivb;

    invoke-direct {v0, p1}, Lc8/Ivb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Lpb;->mElevator:Lc8/Ivb;

    .line 39
    iget-object v0, p0, Lc8/Lpb;->mElevator:Lc8/Ivb;

    new-instance v1, Lc8/Jpb;

    invoke-direct {v1, p0}, Lc8/Jpb;-><init>(Lc8/Lpb;)V

    invoke-virtual {v0, v1}, Lc8/Ivb;->setIWATabHeaderChanged(Lc8/Hvb;)V

    .line 46
    iget-object v0, p0, Lc8/Lpb;->mElevator:Lc8/Ivb;

    invoke-virtual {v0}, Lc8/Ivb;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "backgroundColor"
    .end annotation

    .prologue
    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lc8/Lpb;->mElevator:Lc8/Ivb;

    invoke-virtual {v0, p1}, Lc8/Ivb;->setBackgroundColor(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "data"
    .end annotation

    .prologue
    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Lpb;->mDataChanged:Z

    .line 78
    invoke-direct {p0, p1}, Lc8/Lpb;->refreshList(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setSelectedIndex(Ljava/lang/String;)V
    .locals 4
    .param p1, "selectedIndex"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "selectedIndex"
    .end annotation

    .prologue
    .line 135
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 138
    iget-object v1, p0, Lc8/Lpb;->mElevator:Lc8/Ivb;

    invoke-virtual {v1, v0}, Lc8/Ivb;->setLocation(I)V

    .line 140
    :cond_0
    const-string/jumbo v1, "updateAttrs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "textColor"
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lc8/Lpb;->mElevator:Lc8/Ivb;

    invoke-virtual {v0, p1}, Lc8/Ivb;->setNormalColor(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public setTextHighlightColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "textHighlightColor"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "textHighlightColor"
    .end annotation

    .prologue
    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lc8/Lpb;->mElevator:Lc8/Ivb;

    invoke-virtual {v0, p1}, Lc8/Ivb;->setSelectedColor(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method
