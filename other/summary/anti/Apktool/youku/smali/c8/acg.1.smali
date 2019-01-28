.class public Lc8/acg;
.super Lc8/scg;
.source "WXScroller.java"

# interfaces
.implements Lc8/ebg;
.implements Lc8/weg;


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Zbg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/scg",
        "<",
        "Landroid/view/ViewGroup;",
        ">;",
        "Lc8/ebg;",
        "Lc8/weg;"
    }
.end annotation


# static fields
.field public static final DIRECTION:Ljava/lang/String; = "direction"


# instance fields
.field private handler:Landroid/os/Handler;

.field private isScrollable:Z

.field private mAppearanceComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/bbg;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenLayoutOffset:I

.field private mContentHeight:I

.field private mForceLoadmoreNextTime:Z

.field private mHasAddScrollEvent:Z

.field private mLastReport:Landroid/graphics/Point;

.field private mOffsetAccuracy:I

.field protected mOrientation:I

.field private mRealView:Landroid/widget/FrameLayout;

.field private mRefreshs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/tbg;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStartEndHelper:Lc8/Gcg;

.field private mStickyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/tbg;",
            ">;>;"
        }
    .end annotation
.end field

.field private stickyHelper:Lc8/Mcg;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 4
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 76
    iput v3, p0, Lc8/acg;->mOrientation:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/acg;->mRefreshs:Ljava/util/List;

    .line 78
    iput v1, p0, Lc8/acg;->mChildrenLayoutOffset:I

    .line 79
    iput-boolean v1, p0, Lc8/acg;->mForceLoadmoreNextTime:Z

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lc8/acg;->mOffsetAccuracy:I

    .line 81
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lc8/acg;->mLastReport:Landroid/graphics/Point;

    .line 82
    iput-boolean v1, p0, Lc8/acg;->mHasAddScrollEvent:Z

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/acg;->mAppearanceComponents:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/acg;->mStickyMap:Ljava/util/Map;

    .line 107
    iput v1, p0, Lc8/acg;->mContentHeight:I

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc8/acg;->handler:Landroid/os/Handler;

    .line 112
    iput-boolean v3, p0, Lc8/acg;->isScrollable:Z

    .line 123
    new-instance v0, Lc8/Mcg;

    invoke-direct {v0, p0}, Lc8/Mcg;-><init>(Lc8/ebg;)V

    iput-object v0, p0, Lc8/acg;->stickyHelper:Lc8/Mcg;

    .line 124
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lc8/acg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lc8/acg;II)Z
    .locals 1
    .param p0, "x0"    # Lc8/acg;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lc8/acg;->shouldReport(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lc8/acg;Landroid/graphics/Rect;IIII)V
    .locals 0
    .param p0, "x0"    # Lc8/acg;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Lc8/acg;->fireScrollEvent(Landroid/graphics/Rect;IIII)V

    return-void
.end method

.method static synthetic access$200(Lc8/acg;IIII)V
    .locals 0
    .param p0, "x0"    # Lc8/acg;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/acg;->procAppear(IIII)V

    return-void
.end method

.method private checkRefreshOrLoading(Lc8/tbg;)Z
    .locals 6
    .param p1, "child"    # Lc8/tbg;

    .prologue
    const-wide/16 v4, 0x64

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "result":Z
    instance-of v2, p1, Lc8/Qbg;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p0}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Hfg;

    move-object v3, p1

    check-cast v3, Lc8/Qbg;

    invoke-virtual {v2, v3}, Lc8/Hfg;->setOnRefreshListener(Lc8/Efg;)V

    .line 312
    new-instance v2, Lc8/Tbg;

    invoke-direct {v2, p0, p1}, Lc8/Tbg;-><init>(Lc8/acg;Lc8/tbg;)V

    invoke-static {v2}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 318
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lc8/acg;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_0
    instance-of v2, p1, Lc8/Obg;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 322
    invoke-virtual {p0}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/Hfg;

    move-object v3, p1

    check-cast v3, Lc8/Obg;

    invoke-virtual {v2, v3}, Lc8/Hfg;->setOnLoadingListener(Lc8/Dfg;)V

    .line 323
    new-instance v2, Lc8/Ubg;

    invoke-direct {v2, p0, p1}, Lc8/Ubg;-><init>(Lc8/acg;Lc8/tbg;)V

    invoke-static {v2}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 329
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lc8/acg;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    const/4 v0, 0x1

    .line 332
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_1
    return v0
.end method

.method private fireScrollEvent(Landroid/graphics/Rect;IIII)V
    .locals 2
    .param p1, "contentFrame"    # Landroid/graphics/Rect;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .prologue
    .line 210
    const-string/jumbo v0, "scroll"

    invoke-virtual {p0, p2, p3}, Lc8/acg;->getScrollEvent(II)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/acg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    return-void
.end method

.method private procAppear(IIII)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldx"    # I
    .param p4, "oldy"    # I

    .prologue
    .line 675
    sub-int v5, p2, p4

    .line 676
    .local v5, "moveY":I
    sub-int v4, p1, p3

    .line 677
    .local v4, "moveX":I
    if-lez v5, :cond_2

    const-string/jumbo v0, "up"

    .line 679
    .local v0, "direction":Ljava/lang/String;
    :goto_0
    iget v8, p0, Lc8/acg;->mOrientation:I

    if-nez v8, :cond_0

    if-eqz v4, :cond_0

    .line 680
    if-lez v4, :cond_4

    const-string/jumbo v0, "right"

    .line 683
    :cond_0
    :goto_1
    iget-object v8, p0, Lc8/acg;->mAppearanceComponents:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 684
    .local v3, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/bbg;

    .line 686
    .local v1, "helper":Lc8/bbg;
    invoke-virtual {v1}, Lc8/bbg;->isWatch()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 689
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lc8/bbg;->isViewVisible(Z)Z

    move-result v7

    .line 691
    .local v7, "visible":Z
    invoke-virtual {v1, v7}, Lc8/bbg;->setAppearStatus(Z)I

    move-result v6

    .line 692
    .local v6, "result":I
    if-eqz v6, :cond_1

    .line 693
    invoke-virtual {v1}, Lc8/bbg;->getAwareChild()Lc8/tbg;

    move-result-object v9

    const/4 v8, 0x1

    if-ne v6, v8, :cond_5

    const-string/jumbo v8, "appear"

    :goto_3
    invoke-virtual {v9, v8, v0}, Lc8/tbg;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 677
    .end local v0    # "direction":Ljava/lang/String;
    .end local v1    # "helper":Lc8/bbg;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .end local v6    # "result":I
    .end local v7    # "visible":Z
    :cond_2
    if-gez v5, :cond_3

    const-string/jumbo v0, "down"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 680
    .restart local v0    # "direction":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "left"

    goto :goto_1

    .line 693
    .restart local v1    # "helper":Lc8/bbg;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .restart local v6    # "result":I
    .restart local v7    # "visible":Z
    :cond_5
    const-string/jumbo v8, "disappear"

    goto :goto_3

    .line 696
    .end local v1    # "helper":Lc8/bbg;
    .end local v3    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .end local v6    # "result":I
    .end local v7    # "visible":Z
    :cond_6
    return-void
.end method

.method private setWatch(ILc8/tbg;Z)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "component"    # Lc8/tbg;
    .param p3, "isWatch"    # Z

    .prologue
    const/4 v3, 0x0

    .line 571
    iget-object v1, p0, Lc8/acg;->mAppearanceComponents:Ljava/util/Map;

    invoke-virtual {p2}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/bbg;

    .line 572
    .local v0, "item":Lc8/bbg;
    if-nez v0, :cond_0

    .line 573
    new-instance v0, Lc8/bbg;

    .end local v0    # "item":Lc8/bbg;
    invoke-direct {v0, p2}, Lc8/bbg;-><init>(Lc8/tbg;)V

    .line 574
    .restart local v0    # "item":Lc8/bbg;
    iget-object v1, p0, Lc8/acg;->mAppearanceComponents:Ljava/util/Map;

    invoke-virtual {p2}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_0
    invoke-virtual {v0, p1, p3}, Lc8/bbg;->setWatchEvent(IZ)V

    .line 579
    invoke-direct {p0, v3, v3, v3, v3}, Lc8/acg;->procAppear(IIII)V

    .line 580
    return-void
.end method

.method private shouldReport(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 238
    iget-object v1, p0, Lc8/acg;->mLastReport:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lc8/acg;->mLastReport:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_0

    .line 239
    iget-object v1, p0, Lc8/acg;->mLastReport:Landroid/graphics/Point;

    iput p1, v1, Landroid/graphics/Point;->x:I

    .line 240
    iget-object v1, p0, Lc8/acg;->mLastReport:Landroid/graphics/Point;

    iput p2, v1, Landroid/graphics/Point;->y:I

    .line 258
    :goto_0
    return v0

    .line 244
    :cond_0
    iget v1, p0, Lc8/acg;->mOrientation:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lc8/acg;->mLastReport:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lc8/acg;->mOffsetAccuracy:I

    if-lt v1, v2, :cond_1

    .line 246
    iget-object v1, p0, Lc8/acg;->mLastReport:Landroid/graphics/Point;

    iput p1, v1, Landroid/graphics/Point;->x:I

    .line 247
    iget-object v1, p0, Lc8/acg;->mLastReport:Landroid/graphics/Point;

    iput p2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 251
    :cond_1
    iget v1, p0, Lc8/acg;->mOrientation:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lc8/acg;->mLastReport:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lc8/acg;->mOffsetAccuracy:I

    if-lt v1, v2, :cond_2

    .line 253
    iget-object v1, p0, Lc8/acg;->mLastReport:Landroid/graphics/Point;

    iput p1, v1, Landroid/graphics/Point;->x:I

    .line 254
    iget-object v1, p0, Lc8/acg;->mLastReport:Landroid/graphics/Point;

    iput p2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 258
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lc8/tbg;I)V
    .locals 2
    .param p1, "child"    # Lc8/tbg;
    .param p2, "index"    # I

    .prologue
    .line 293
    iget v0, p0, Lc8/acg;->mChildrenLayoutOffset:I

    invoke-virtual {p1}, Lc8/tbg;->getLayoutTopOffsetForSibling()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lc8/acg;->mChildrenLayoutOffset:I

    .line 294
    instance-of v0, p1, Lc8/ibg;

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0, p1}, Lc8/acg;->checkRefreshOrLoading(Lc8/tbg;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lc8/acg;->mRefreshs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_0
    invoke-super {p0, p1, p2}, Lc8/scg;->addChild(Lc8/tbg;I)V

    .line 301
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lc8/scg;->addEvent(Ljava/lang/String;)V

    .line 161
    invoke-static {p1}, Lc8/Gcg;->isScrollEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/acg;->mHasAddScrollEvent:Z

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/acg;->mHasAddScrollEvent:Z

    .line 164
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lc8/xeg;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lc8/xeg;

    new-instance v1, Lc8/Rbg;

    invoke-direct {v1, p0}, Lc8/Rbg;-><init>(Lc8/acg;)V

    invoke-virtual {v0, v1}, Lc8/xeg;->addScrollViewListener(Lc8/weg;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lc8/seg;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lc8/seg;

    new-instance v1, Lc8/Sbg;

    invoke-direct {v1, p0}, Lc8/Sbg;-><init>(Lc8/acg;)V

    invoke-virtual {v0, v1}, Lc8/seg;->addScrollViewListener(Lc8/reg;)V

    goto :goto_0
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v1, -0x1

    .line 266
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc8/acg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    instance-of v2, p1, Lc8/jeg;

    if-nez v2, :cond_0

    .line 274
    invoke-virtual {p0}, Lc8/acg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 275
    .local v0, "count":I
    if-lt p2, v0, :cond_2

    move p2, v1

    .line 276
    :cond_2
    if-ne p2, v1, :cond_3

    .line 277
    invoke-virtual {p0}, Lc8/acg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p0}, Lc8/acg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public bindAppearEvent(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 567
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lc8/acg;->setWatch(ILc8/tbg;Z)V

    .line 568
    return-void
.end method

.method public bindDisappearEvent(Lc8/tbg;)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    const/4 v0, 0x1

    .line 587
    invoke-direct {p0, v0, p1, v0}, Lc8/acg;->setWatch(ILc8/tbg;Z)V

    .line 588
    return-void
.end method

.method public bindStickStyle(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 554
    iget-object v0, p0, Lc8/acg;->stickyHelper:Lc8/Mcg;

    iget-object v1, p0, Lc8/acg;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lc8/Mcg;->bindStickStyle(Lc8/tbg;Ljava/util/Map;)V

    .line 555
    return-void
.end method

.method public createViewImpl()V
    .locals 3

    .prologue
    .line 137
    invoke-super {p0}, Lc8/scg;->createViewImpl()V

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lc8/acg;->mRefreshs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 139
    iget-object v2, p0, Lc8/acg;->mRefreshs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    .line 140
    .local v0, "component":Lc8/tbg;
    invoke-virtual {v0}, Lc8/tbg;->createViewImpl()V

    .line 141
    invoke-direct {p0, v0}, Lc8/acg;->checkRefreshOrLoading(Lc8/tbg;)Z

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "component":Lc8/tbg;
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0}, Lc8/scg;->destroy()V

    .line 348
    iget-object v0, p0, Lc8/acg;->mAppearanceComponents:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lc8/acg;->mAppearanceComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 351
    :cond_0
    iget-object v0, p0, Lc8/acg;->mStickyMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lc8/acg;->mStickyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 354
    :cond_1
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lc8/ceg;

    if-eqz v0, :cond_2

    .line 355
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lc8/ceg;

    invoke-interface {v0}, Lc8/ceg;->destroy()V

    .line 357
    :cond_2
    return-void
.end method

.method protected getChildrenLayoutTopOffset()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lc8/acg;->mChildrenLayoutOffset:I

    return v0
.end method

.method public getInnerView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lc8/Jfg;

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Jfg;

    invoke-virtual {v0}, Lc8/Jfg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lc8/acg;->mOrientation:I

    return v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lc8/acg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lc8/acg;->mRealView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getScrollEvent(II)Ljava/util/Map;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
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
    const/4 v6, 0x2

    .line 214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 215
    .local v0, "contentFrame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v5

    instance-of v5, v5, Lc8/xeg;

    if-eqz v5, :cond_1

    .line 216
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Lc8/xeg;

    invoke-virtual {v5}, Lc8/xeg;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 220
    :cond_0
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 221
    .local v3, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 222
    .local v2, "contentSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 224
    .local v1, "contentOffset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lc8/acg;->getInstance()Lc8/nVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v4

    .line 226
    .local v4, "viewport":I
    const-string/jumbo v5, "width"

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6, v4}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string/jumbo v5, "height"

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6, v4}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string/jumbo v5, "x"

    int-to-float v6, p1

    invoke-static {v6, v4}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v6

    neg-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string/jumbo v5, "y"

    int-to-float v6, p2

    invoke-static {v6, v4}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v6

    neg-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string/jumbo v5, "contentSize"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v5, "contentOffset"

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-object v3

    .line 217
    .end local v1    # "contentOffset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "contentSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "viewport":I
    :cond_1
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v5

    instance-of v5, v5, Lc8/seg;

    if-eqz v5, :cond_0

    .line 218
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Lc8/seg;

    invoke-virtual {v5}, Lc8/seg;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getScrollStartEndHelper()Lc8/Gcg;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lc8/acg;->mScrollStartEndHelper:Lc8/Gcg;

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Lc8/Gcg;

    invoke-direct {v0, p0}, Lc8/Gcg;-><init>(Lc8/tbg;)V

    iput-object v0, p0, Lc8/acg;->mScrollStartEndHelper:Lc8/Gcg;

    .line 757
    :cond_0
    iget-object v0, p0, Lc8/acg;->mScrollStartEndHelper:Lc8/Gcg;

    return-object v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    goto :goto_0
.end method

.method public getStickMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/tbg;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lc8/acg;->mStickyMap:Ljava/util/Map;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lc8/acg;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 381
    invoke-virtual {p0}, Lc8/acg;->getDomObject()Lc8/qYf;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lc8/acg;->getDomObject()Lc8/qYf;

    move-result-object v6

    invoke-interface {v6}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v6

    invoke-virtual {v6}, Lc8/xYf;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 382
    :cond_0
    const-string/jumbo v3, "vertical"

    .line 388
    .local v3, "scroll":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "horizontal"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 389
    iput v8, p0, Lc8/acg;->mOrientation:I

    .line 390
    new-instance v4, Lc8/seg;

    invoke-direct {v4, p1}, Lc8/seg;-><init>(Landroid/content/Context;)V

    .line 391
    .local v4, "scrollView":Lc8/seg;
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lc8/acg;->mRealView:Landroid/widget/FrameLayout;

    .line 392
    new-instance v6, Lc8/Vbg;

    invoke-direct {v6, p0}, Lc8/Vbg;-><init>(Lc8/acg;)V

    invoke-virtual {v4, v6}, Lc8/seg;->setScrollViewListener(Lc8/reg;)V

    .line 398
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 400
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lc8/acg;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6, v2}, Lc8/seg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    invoke-virtual {v4, v8}, Lc8/seg;->setHorizontalScrollBarEnabled(Z)V

    .line 403
    move-object v0, v4

    .line 458
    .end local v4    # "scrollView":Lc8/seg;
    .local v0, "host":Landroid/view/ViewGroup;
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lc8/Xbg;

    invoke-direct {v7, p0}, Lc8/Xbg;-><init>(Lc8/acg;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 474
    return-object v0

    .line 384
    .end local v0    # "host":Landroid/view/ViewGroup;
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "scroll":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lc8/acg;->getDomObject()Lc8/qYf;

    move-result-object v6

    invoke-interface {v6}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v6

    invoke-virtual {v6}, Lc8/xYf;->getScrollDirection()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "scroll":Ljava/lang/String;
    goto :goto_0

    .line 405
    :cond_2
    iput v9, p0, Lc8/acg;->mOrientation:I

    .line 406
    new-instance v5, Lc8/Jfg;

    iget v6, p0, Lc8/acg;->mOrientation:I

    invoke-direct {v5, p1, v6, p0}, Lc8/Jfg;-><init>(Landroid/content/Context;ILc8/acg;)V

    .line 407
    .local v5, "scrollerView":Lc8/Jfg;
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lc8/acg;->mRealView:Landroid/widget/FrameLayout;

    .line 408
    invoke-virtual {v5}, Lc8/Jfg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/xeg;

    .line 409
    .local v1, "innerView":Lc8/xeg;
    invoke-virtual {v1, p0}, Lc8/xeg;->addScrollViewListener(Lc8/weg;)V

    .line 410
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 412
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lc8/acg;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6, v2}, Lc8/xeg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    invoke-virtual {v1, v9}, Lc8/xeg;->setVerticalScrollBarEnabled(Z)V

    .line 414
    new-instance v6, Lc8/Wbg;

    invoke-direct {v6, p0}, Lc8/Wbg;-><init>(Lc8/acg;)V

    invoke-virtual {v1, v6}, Lc8/xeg;->addScrollViewListener(Lc8/weg;)V

    .line 455
    move-object v0, v5

    .restart local v0    # "host":Landroid/view/ViewGroup;
    goto :goto_1
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lc8/acg;->isScrollable:Z

    return v0
.end method

.method protected measure(II)Lc8/pbg;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, -0x1

    .line 361
    new-instance v0, Lc8/pbg;

    invoke-direct {v0}, Lc8/pbg;-><init>()V

    .line 362
    .local v0, "measureOutput":Lc8/pbg;
    iget v6, p0, Lc8/acg;->mOrientation:I

    if-nez v6, :cond_2

    .line 363
    sget-object v6, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-static {v6}, Lc8/Jgg;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 364
    .local v2, "screenW":I
    invoke-virtual {p0}, Lc8/acg;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/Jgg;->getWeexWidth(Ljava/lang/String;)I

    move-result v4

    .line 365
    .local v4, "weexW":I
    if-lt v4, v2, :cond_1

    .end local v2    # "screenW":I
    :goto_0
    if-le p1, v2, :cond_0

    move p1, v5

    .end local p1    # "width":I
    :cond_0
    iput p1, v0, Lc8/pbg;->width:I

    .line 367
    iput p2, v0, Lc8/pbg;->height:I

    .line 375
    .end local v4    # "weexW":I
    :goto_1
    return-object v0

    .restart local v2    # "screenW":I
    .restart local v4    # "weexW":I
    .restart local p1    # "width":I
    :cond_1
    move v2, v4

    .line 365
    goto :goto_0

    .line 369
    .end local v2    # "screenW":I
    .end local v4    # "weexW":I
    :cond_2
    sget-object v6, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-static {v6}, Lc8/Jgg;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 370
    .local v1, "screenH":I
    invoke-virtual {p0}, Lc8/acg;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/Jgg;->getWeexHeight(Ljava/lang/String;)I

    move-result v3

    .line 371
    .local v3, "weexH":I
    if-lt v3, v1, :cond_3

    .end local v1    # "screenH":I
    :goto_2
    if-le p2, v1, :cond_4

    :goto_3
    iput v5, v0, Lc8/pbg;->height:I

    .line 373
    iput p1, v0, Lc8/pbg;->width:I

    goto :goto_1

    .restart local v1    # "screenH":I
    :cond_3
    move v1, v3

    .line 371
    goto :goto_2

    .end local v1    # "screenH":I
    :cond_4
    move v5, p2

    goto :goto_3
.end method

.method protected onLoadMore(Lc8/xeg;II)V
    .locals 8
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 722
    :try_start_0
    invoke-virtual {p0}, Lc8/acg;->getDomObject()Lc8/qYf;

    move-result-object v6

    invoke-interface {v6}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v6

    invoke-virtual {v6}, Lc8/xYf;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, "offset":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 745
    .end local v3    # "offset":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 726
    .restart local v3    # "offset":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0}, Lc8/acg;->getInstance()Lc8/nVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v6

    float-to-int v4, v6

    .line 728
    .local v4, "offsetInt":I
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lc8/xeg;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 729
    .local v0, "contentH":I
    invoke-virtual {p1}, Lc8/xeg;->getHeight()I

    move-result v5

    .line 730
    .local v5, "scrollerH":I
    sub-int v6, v0, p3

    sub-int v2, v6, v5

    .line 731
    .local v2, "offScreenY":I
    if-ge v2, v4, :cond_0

    .line 732
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 733
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[WXScroller-onScroll] offScreenY :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 735
    :cond_2
    iget v6, p0, Lc8/acg;->mContentHeight:I

    if-ne v6, v0, :cond_3

    iget-boolean v6, p0, Lc8/acg;->mForceLoadmoreNextTime:Z

    if-eqz v6, :cond_0

    .line 736
    :cond_3
    const-string/jumbo v6, "loadmore"

    invoke-virtual {p0, v6}, Lc8/acg;->fireEvent(Ljava/lang/String;)V

    .line 737
    iput v0, p0, Lc8/acg;->mContentHeight:I

    .line 738
    const/4 v6, 0x0

    iput-boolean v6, p0, Lc8/acg;->mForceLoadmoreNextTime:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    .end local v0    # "contentH":I
    .end local v2    # "offScreenY":I
    .end local v3    # "offset":Ljava/lang/String;
    .end local v4    # "offsetInt":I
    .end local v5    # "scrollerH":I
    :catch_0
    move-exception v1

    .line 742
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "[WXScroller-onScroll] "

    invoke-static {v6, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onScroll(Lc8/xeg;II)V
    .locals 0
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 710
    invoke-virtual {p0, p1, p2, p3}, Lc8/acg;->onLoadMore(Lc8/xeg;II)V

    .line 711
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
    .line 667
    invoke-direct {p0, p2, p3, p4, p5}, Lc8/acg;->procAppear(IIII)V

    .line 668
    return-void
.end method

.method public onScrollStopped(Lc8/xeg;II)V
    .locals 0
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 705
    return-void
.end method

.method public onScrollToBottom(Lc8/xeg;II)V
    .locals 0
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 701
    return-void
.end method

.method public remove(Lc8/tbg;Z)V
    .locals 1
    .param p1, "child"    # Lc8/tbg;
    .param p2, "destory"    # Z

    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Lc8/scg;->remove(Lc8/tbg;Z)V

    .line 338
    instance-of v0, p1, Lc8/Obg;

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Hfg;

    invoke-virtual {v0, p1}, Lc8/Hfg;->removeFooterView(Lc8/tbg;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    instance-of v0, p1, Lc8/Qbg;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Hfg;

    invoke-virtual {v0, p1}, Lc8/Hfg;->removeHeaderView(Lc8/tbg;)V

    goto :goto_0
.end method

.method public resetLoadmore()V
    .locals 1
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/acg;->mForceLoadmoreNextTime:Z

    .line 750
    return-void
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/acg;->scrollBy(IIZ)V

    .line 636
    return-void
.end method

.method public scrollBy(IIZ)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "smooth"    # Z

    .prologue
    .line 639
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 662
    :goto_0
    return-void

    .line 643
    :cond_0
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lc8/Ybg;

    invoke-direct {v1, p0, p3, p2, p1}, Lc8/Ybg;-><init>(Lc8/acg;ZII)V

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public scrollTo(Lc8/tbg;Ljava/util/Map;)V
    .locals 9
    .param p1, "component"    # Lc8/tbg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 609
    .local v2, "offsetFloat":F
    const/4 v3, 0x1

    .line 611
    .local v3, "smooth":Z
    if-eqz p2, :cond_0

    .line 612
    const-string/jumbo v6, "offset"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v1, "0"

    .line 613
    .local v1, "offset":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "animated"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 614
    if-eqz v1, :cond_0

    .line 616
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0}, Lc8/acg;->getInstance()Lc8/nVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lc8/Jgg;->getRealPxByWidth(FI)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 623
    .end local v1    # "offset":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lc8/tbg;->getAbsoluteY()I

    move-result v6

    invoke-virtual {p0}, Lc8/acg;->getAbsoluteY()I

    move-result v7

    sub-int v5, v6, v7

    .line 624
    .local v5, "viewYInScroller":I
    invoke-virtual {p1}, Lc8/tbg;->getAbsoluteX()I

    move-result v6

    invoke-virtual {p0}, Lc8/acg;->getAbsoluteX()I

    move-result v7

    sub-int v4, v6, v7

    .line 626
    .local v4, "viewXInScroller":I
    invoke-virtual {p0}, Lc8/acg;->getScrollX()I

    move-result v6

    sub-int v6, v4, v6

    float-to-int v7, v2

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lc8/acg;->getScrollY()I

    move-result v7

    sub-int v7, v5, v7

    float-to-int v8, v2

    add-int/2addr v7, v8

    invoke-virtual {p0, v6, v7, v3}, Lc8/acg;->scrollBy(IIZ)V

    .line 627
    return-void

    .line 612
    .end local v4    # "viewXInScroller":I
    .end local v5    # "viewYInScroller":I
    :cond_1
    const-string/jumbo v6, "offset"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 617
    .restart local v1    # "offset":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Float parseFloat error :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setOffsetAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I
    .annotation runtime Lc8/vbg;
        name = "offsetAccuracy"
    .end annotation

    .prologue
    .line 541
    int-to-float v1, p1

    invoke-virtual {p0}, Lc8/acg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v0

    .line 542
    .local v0, "realPx":F
    float-to-int v1, v0

    iput v1, p0, Lc8/acg;->mOffsetAccuracy:I

    .line 543
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 498
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 513
    invoke-super {p0, p1, p2}, Lc8/scg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    :cond_1
    :goto_1
    return v3

    .line 498
    :sswitch_0
    const-string/jumbo v5, "showScrollbar"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "scrollable"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "offsetAccuracy"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 500
    :pswitch_0
    const/4 v4, 0x0

    invoke-static {p2, v4}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 501
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 502
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lc8/acg;->setShowScrollbar(Z)V

    goto :goto_1

    .line 505
    .end local v1    # "result":Ljava/lang/Boolean;
    :pswitch_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2, v4}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 506
    .local v2, "scrollable":Z
    invoke-virtual {p0, v2}, Lc8/acg;->setScrollable(Z)V

    goto :goto_1

    .line 509
    .end local v2    # "scrollable":Z
    :pswitch_2
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v4}, Lc8/Dgg;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 510
    .local v0, "accuracy":I
    invoke-virtual {p0, v0}, Lc8/acg;->setOffsetAccuracy(I)V

    goto :goto_1

    .line 498
    nop

    :sswitch_data_0
    .sparse-switch
        -0xd52a857 -> :sswitch_0
        -0x55c154 -> :sswitch_2
        0x3f94da7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setScrollable(Z)V
    .locals 2
    .param p1, "scrollable"    # Z
    .annotation runtime Lc8/vbg;
        name = "scrollable"
    .end annotation

    .prologue
    .line 530
    iput-boolean p1, p0, Lc8/acg;->isScrollable:Z

    .line 531
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 532
    .local v0, "hostView":Landroid/view/View;
    instance-of v1, v0, Lc8/seg;

    if-eqz v1, :cond_1

    .line 533
    check-cast v0, Lc8/seg;

    .end local v0    # "hostView":Landroid/view/View;
    invoke-virtual {v0, p1}, Lc8/seg;->setScrollable(Z)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 534
    .restart local v0    # "hostView":Landroid/view/View;
    :cond_1
    instance-of v1, v0, Lc8/xeg;

    if-eqz v1, :cond_0

    .line 535
    check-cast v0, Lc8/xeg;

    .end local v0    # "hostView":Landroid/view/View;
    invoke-virtual {v0, p1}, Lc8/xeg;->setScrollable(Z)V

    goto :goto_0
.end method

.method public setShowScrollbar(Z)V
    .locals 2
    .param p1, "show"    # Z
    .annotation runtime Lc8/vbg;
        name = "showScrollbar"
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 521
    :cond_0
    iget v0, p0, Lc8/acg;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 522
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {p0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public unbindAppearEvent(Lc8/tbg;)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    const/4 v0, 0x0

    .line 595
    invoke-direct {p0, v0, p1, v0}, Lc8/acg;->setWatch(ILc8/tbg;Z)V

    .line 596
    return-void
.end method

.method public unbindDisappearEvent(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 603
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lc8/acg;->setWatch(ILc8/tbg;Z)V

    .line 604
    return-void
.end method

.method public unbindStickStyle(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 559
    iget-object v0, p0, Lc8/acg;->stickyHelper:Lc8/Mcg;

    iget-object v1, p0, Lc8/acg;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lc8/Mcg;->unbindStickStyle(Lc8/tbg;Ljava/util/Map;)V

    .line 560
    return-void
.end method
