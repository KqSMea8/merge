.class public Lc8/Wbg;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Lc8/weg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/acg;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/acg;


# direct methods
.method constructor <init>(Lc8/acg;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lc8/Wbg;->this$0:Lc8/acg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lc8/xeg;II)V
    .locals 6
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 439
    iget-object v3, p0, Lc8/Wbg;->this$0:Lc8/acg;

    invoke-virtual {v3}, Lc8/acg;->getInstance()Lc8/nVf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/nVf;->getWXScrollListeners()Ljava/util/List;

    move-result-object v2

    .line 440
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/common/OnWXScrollListener;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 441
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/AXf;

    .line 442
    .local v1, "listener":Lc8/AXf;
    if-eqz v1, :cond_0

    .line 443
    instance-of v3, v1, Lc8/vXf;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 444
    check-cast v3, Lc8/vXf;

    iget-object v4, p0, Lc8/Wbg;->this$0:Lc8/acg;

    invoke-virtual {v4}, Lc8/acg;->getRef()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lc8/vXf;->isNeedScroller(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    invoke-interface {v1, p1, p2, p3}, Lc8/AXf;->onScrolled(Landroid/view/View;II)V

    goto :goto_0

    .line 448
    :cond_1
    invoke-interface {v1, p1, p2, p3}, Lc8/AXf;->onScrolled(Landroid/view/View;II)V

    goto :goto_0

    .line 453
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lc8/AXf;
    :cond_2
    return-void
.end method

.method public onScrollChanged(Lc8/xeg;IIII)V
    .locals 0
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .prologue
    .line 418
    return-void
.end method

.method public onScrollStopped(Lc8/xeg;II)V
    .locals 4
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 427
    iget-object v3, p0, Lc8/Wbg;->this$0:Lc8/acg;

    invoke-virtual {v3}, Lc8/acg;->getInstance()Lc8/nVf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/nVf;->getWXScrollListeners()Ljava/util/List;

    move-result-object v2

    .line 428
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/common/OnWXScrollListener;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 429
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/AXf;

    .line 430
    .local v1, "listener":Lc8/AXf;
    if-eqz v1, :cond_0

    .line 431
    const/4 v3, 0x0

    invoke-interface {v1, p1, p2, p3, v3}, Lc8/AXf;->onScrollStateChanged(Landroid/view/View;III)V

    goto :goto_0

    .line 435
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lc8/AXf;
    :cond_1
    return-void
.end method

.method public onScrollToBottom(Lc8/xeg;II)V
    .locals 0
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 423
    return-void
.end method
