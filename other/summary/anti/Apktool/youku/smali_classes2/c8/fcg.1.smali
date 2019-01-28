.class public Lc8/fcg;
.super Ljava/lang/Object;
.source "WXSlider.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliderPageChangeListener"
.end annotation


# instance fields
.field private lastPos:I

.field final synthetic this$0:Lc8/gcg;


# direct methods
.method protected constructor <init>(Lc8/gcg;)V
    .locals 1

    .prologue
    .line 385
    iput-object p1, p0, Lc8/fcg;->this$0:Lc8/gcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 v0, -0x1

    iput v0, p0, Lc8/fcg;->lastPos:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 434
    iget-object v1, p0, Lc8/fcg;->this$0:Lc8/gcg;

    invoke-virtual {v1}, Lc8/gcg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 435
    .local v0, "root":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 438
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 392
    return-void
.end method

.method public onPageSelected(I)V
    .locals 9
    .param p1, "pos"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    iget-object v0, v0, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {v0, p1}, Lc8/leg;->getRealPosition(I)I

    move-result v0

    iget v1, p0, Lc8/fcg;->lastPos:I

    if-ne v0, v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPageSelected >>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/fcg;->this$0:Lc8/gcg;

    iget-object v1, v1, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {v1, p1}, Lc8/leg;->getRealPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lastPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/fcg;->lastPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 402
    :cond_2
    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    iget-object v0, v0, Lc8/gcg;->mAdapter:Lc8/leg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    iget-object v0, v0, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {v0}, Lc8/leg;->getRealCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    iget-object v0, v0, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {v0, p1}, Lc8/leg;->getRealPosition(I)I

    move-result v8

    .line 407
    .local v8, "realPosition":I
    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    iget-object v0, v0, Lc8/gcg;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    iget-object v0, v0, Lc8/gcg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 411
    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    invoke-virtual {v0}, Lc8/gcg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    invoke-virtual {v0}, Lc8/gcg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v7

    .line 415
    .local v7, "event":Lcom/taobao/weex/dom/WXEvent;
    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    invoke-virtual {v0}, Lc8/gcg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "ref":Ljava/lang/String;
    const-string/jumbo v0, "change"

    invoke-virtual {v7, v0}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    invoke-virtual {v0}, Lc8/gcg;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lc8/Jgg;->onScreenArea(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    iget-object v0, v0, Lc8/gcg;->params:Ljava/util/Map;

    const-string/jumbo v1, "index"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 420
    .local v5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v6, "attrsChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "index"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string/jumbo v0, "attrs"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    iget-object v1, p0, Lc8/fcg;->this$0:Lc8/gcg;

    invoke-virtual {v1}, Lc8/gcg;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "change"

    iget-object v4, p0, Lc8/fcg;->this$0:Lc8/gcg;

    iget-object v4, v4, Lc8/gcg;->params:Ljava/util/Map;

    invoke-virtual/range {v0 .. v5}, Lc8/pVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 427
    .end local v5    # "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "attrsChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    iget-object v0, v0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->requestLayout()V

    .line 428
    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    invoke-virtual {v0}, Lc8/gcg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 429
    iget-object v0, p0, Lc8/fcg;->this$0:Lc8/gcg;

    iget-object v0, v0, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {v0, p1}, Lc8/leg;->getRealPosition(I)I

    move-result v0

    iput v0, p0, Lc8/fcg;->lastPos:I

    goto/16 :goto_0
.end method
