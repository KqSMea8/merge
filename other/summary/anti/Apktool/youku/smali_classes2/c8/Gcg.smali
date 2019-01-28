.class public Lc8/Gcg;
.super Ljava/lang/Object;
.source "ScrollStartEndHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private component:Lc8/tbg;

.field private handler:Landroid/os/Handler;

.field private hasStart:Z

.field private minInterval:J

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lc8/Gcg;->component:Lc8/tbg;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/Gcg;->handler:Landroid/os/Handler;

    .line 51
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    const-string/jumbo v1, "minscrolldelayinterval"

    invoke-virtual {v0, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lc8/Dgg;->getNumberInt(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lc8/Gcg;->minInterval:J

    .line 52
    return-void
.end method

.method private getScrollEvent(II)Ljava/util/Map;
    .locals 5
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v4, p0, Lc8/Gcg;->component:Lc8/tbg;

    instance-of v4, v4, Lc8/Xcg;

    if-eqz v4, :cond_0

    .line 88
    iget-object v0, p0, Lc8/Gcg;->component:Lc8/tbg;

    check-cast v0, Lc8/Xcg;

    .line 89
    .local v0, "basicListComponent":Lc8/Xcg;
    invoke-virtual {v0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lc8/ddg;

    if-eqz v4, :cond_2

    .line 90
    invoke-virtual {v0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/ddg;

    .line 91
    .local v1, "componentView":Lc8/ddg;
    if-eqz v1, :cond_2

    .line 92
    invoke-interface {v1}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v4

    invoke-virtual {v0, v4, p1, p2}, Lc8/Xcg;->getScrollEvent(Lc8/Rv;II)Ljava/util/Map;

    move-result-object v4

    .line 102
    .end local v0    # "basicListComponent":Lc8/Xcg;
    .end local v1    # "componentView":Lc8/ddg;
    :goto_0
    return-object v4

    .line 95
    :cond_0
    iget-object v4, p0, Lc8/Gcg;->component:Lc8/tbg;

    instance-of v4, v4, Lc8/Bdg;

    if-eqz v4, :cond_1

    .line 96
    iget-object v3, p0, Lc8/Gcg;->component:Lc8/tbg;

    check-cast v3, Lc8/Bdg;

    .line 97
    .local v3, "templateList":Lc8/Bdg;
    invoke-virtual {v3}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lc8/Ifg;

    invoke-virtual {v4}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lc8/Rv;

    invoke-virtual {v3, v4, p1, p2}, Lc8/Bdg;->getScrollEvent(Lc8/Rv;II)Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    .line 98
    .end local v3    # "templateList":Lc8/Bdg;
    :cond_1
    iget-object v4, p0, Lc8/Gcg;->component:Lc8/tbg;

    instance-of v4, v4, Lc8/acg;

    if-eqz v4, :cond_2

    .line 99
    iget-object v2, p0, Lc8/Gcg;->component:Lc8/tbg;

    check-cast v2, Lc8/acg;

    .line 100
    .local v2, "scroller":Lc8/acg;
    invoke-virtual {v2, p1, p2}, Lc8/acg;->getScrollEvent(II)Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    .line 102
    .end local v2    # "scroller":Lc8/acg;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isScrollEvent(Ljava/lang/String;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 107
    const-string/jumbo v1, "scroll"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    const-string/jumbo v1, "scrollstart"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const-string/jumbo v1, "scrollend"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onScrolled(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lc8/Gcg;->component:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "scrollstart"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Gcg;->component:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "scrollend"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    :cond_0
    iput p1, p0, Lc8/Gcg;->x:I

    .line 62
    iput p2, p0, Lc8/Gcg;->y:I

    .line 63
    iget-boolean v0, p0, Lc8/Gcg;->hasStart:Z

    if-nez v0, :cond_2

    .line 64
    iget-object v0, p0, Lc8/Gcg;->component:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "scrollstart"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lc8/Gcg;->component:Lc8/tbg;

    const-string/jumbo v1, "scrollstart"

    invoke-direct {p0, p1, p2}, Lc8/Gcg;->getScrollEvent(II)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Gcg;->hasStart:Z

    .line 69
    :cond_2
    iget-object v0, p0, Lc8/Gcg;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    iget-object v0, p0, Lc8/Gcg;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lc8/Gcg;->minInterval:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    :cond_3
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lc8/Gcg;->component:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lc8/Gcg;->component:Lc8/tbg;

    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "scrollend"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lc8/Gcg;->component:Lc8/tbg;

    const-string/jumbo v1, "scrollend"

    iget v2, p0, Lc8/Gcg;->x:I

    iget v3, p0, Lc8/Gcg;->y:I

    invoke-direct {p0, v2, v3}, Lc8/Gcg;->getScrollEvent(II)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Gcg;->hasStart:Z

    goto :goto_0
.end method
