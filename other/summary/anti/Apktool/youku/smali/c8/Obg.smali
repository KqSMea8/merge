.class public Lc8/Obg;
.super Lc8/ibg;
.source "WXLoading.java"

# interfaces
.implements Lc8/Dfg;


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation


# static fields
.field public static final HIDE:Ljava/lang/String; = "hide"


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "lazy"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/ibg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public canRecycled()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lc8/Obg;->initComponentHostView(Landroid/content/Context;)Lc8/qeg;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/qeg;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    new-instance v0, Lc8/ueg;

    invoke-direct {v0, p1}, Lc8/ueg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoading()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lc8/Obg;->getDomObject()Lc8/qYf;

    move-result-object v0

    .line 61
    .local v0, "domObject":Lc8/qYf;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "loading"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string/jumbo v1, "loading"

    invoke-virtual {p0, v1}, Lc8/Obg;->fireEvent(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onPullingUp(FIF)V
    .locals 4
    .param p1, "dy"    # F
    .param p2, "pullOutDistance"    # I
    .param p3, "viewHeight"    # F

    .prologue
    .line 68
    invoke-virtual {p0}, Lc8/Obg;->getDomObject()Lc8/qYf;

    move-result-object v1

    .line 69
    .local v1, "domObject":Lc8/qYf;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    const-string/jumbo v3, "pullingup"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "dy"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v2, "pullingDistance"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v2, "viewHeight"

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v2, "pullingup"

    invoke-virtual {p0, v2, v0}, Lc8/Obg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 1
    .param p1, "display"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "display"
    .end annotation

    .prologue
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const-string/jumbo v0, "hide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lc8/Obg;->getParent()Lc8/scg;

    move-result-object v0

    instance-of v0, v0, Lc8/Bdg;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/Obg;->getParent()Lc8/scg;

    move-result-object v0

    instance-of v0, v0, Lc8/odg;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/Obg;->getParent()Lc8/scg;

    move-result-object v0

    instance-of v0, v0, Lc8/acg;

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    invoke-virtual {p0}, Lc8/Obg;->getParent()Lc8/scg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Hfg;

    invoke-virtual {v0}, Lc8/Hfg;->getSwipeLayout()Lc8/Gfg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Gfg;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lc8/Obg;->getParent()Lc8/scg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Hfg;

    invoke-virtual {v0}, Lc8/Hfg;->finishPullLoad()V

    .line 104
    invoke-virtual {p0}, Lc8/Obg;->getParent()Lc8/scg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Hfg;

    invoke-virtual {v0}, Lc8/Hfg;->onLoadmoreComplete()V

    .line 109
    :cond_1
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 85
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 92
    invoke-super {p0, p1, p2}, Lc8/ibg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    .line 85
    :pswitch_0
    const-string/jumbo v2, "display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 87
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "display":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0, v0}, Lc8/Obg;->setDisplay(Ljava/lang/String;)V

    .line 90
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x63a518c2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
