.class public Lc8/gcg;
.super Lc8/scg;
.source "WXSlider.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/dcg;,
        Lc8/ecg;,
        Lc8/fcg;,
        Lc8/ccg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/scg",
        "<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final INDEX:Ljava/lang/String; = "index"

.field public static final INFINITE:Ljava/lang/String; = "infinite"


# instance fields
.field private initIndex:I

.field private isInfinite:Z

.field private keepIndex:Z

.field protected mAdapter:Lc8/leg;

.field protected mIndicator:Lc8/Mbg;

.field protected mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field protected mShowIndicators:Z

.field mViewPager:Lc8/oeg;

.field private offsetXAccuracy:F

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
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
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/gcg;->isInfinite:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/gcg;->params:Ljava/util/Map;

    .line 62
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lc8/gcg;->offsetXAccuracy:F

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lc8/gcg;->initIndex:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/gcg;->keepIndex:Z

    .line 91
    new-instance v0, Lc8/fcg;

    invoke-direct {v0, p0}, Lc8/fcg;-><init>(Lc8/gcg;)V

    iput-object v0, p0, Lc8/gcg;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 100
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
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lc8/gcg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lc8/gcg;)F
    .locals 1
    .param p0, "x0"    # Lc8/gcg;

    .prologue
    .line 54
    iget v0, p0, Lc8/gcg;->offsetXAccuracy:F

    return v0
.end method

.method private hackTwoItemsInfiniteScroll()V
    .locals 4

    .prologue
    .line 506
    iget-object v1, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    if-nez v1, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-boolean v1, p0, Lc8/gcg;->isInfinite:Z

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {v1}, Lc8/leg;->getRealCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 511
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lc8/gcg;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lc8/dcg;

    iget-object v3, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-direct {v2, v3}, Lc8/dcg;-><init>(Lc8/oeg;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 512
    .local v0, "gestureDetector":Landroid/view/GestureDetector;
    iget-object v1, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    new-instance v2, Lc8/bcg;

    invoke-direct {v2, p0, v0}, Lc8/bcg;-><init>(Lc8/gcg;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Lc8/oeg;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 519
    .end local v0    # "gestureDetector":Landroid/view/GestureDetector;
    :cond_2
    iget-object v1, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/oeg;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lc8/scg;->addEvent(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v0, "scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    new-instance v1, Lc8/ecg;

    invoke-direct {v1, p0}, Lc8/ecg;-><init>(Lc8/gcg;)V

    invoke-virtual {v0, v1}, Lc8/oeg;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0
.end method

.method public addIndicator(Lc8/Mbg;)V
    .locals 3
    .param p1, "indicator"    # Lc8/Mbg;

    .prologue
    .line 238
    invoke-virtual {p0}, Lc8/gcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 239
    .local v1, "root":Landroid/widget/FrameLayout;
    if-nez v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iput-object p1, p0, Lc8/gcg;->mIndicator:Lc8/Mbg;

    .line 243
    invoke-virtual {p1}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/keg;

    .line 244
    .local v0, "indicatorView":Lc8/keg;
    if-eqz v0, :cond_0

    .line 245
    iget-object v2, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0, v2}, Lc8/keg;->setCircleViewPager(Lc8/oeg;)V

    .line 247
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v2, -0x1

    .line 177
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    instance-of v0, p1, Lc8/keg;

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {v0, p1}, Lc8/leg;->addPageView(Landroid/view/View;)V

    .line 185
    invoke-direct {p0}, Lc8/gcg;->hackTwoItemsInfiniteScroll()V

    .line 186
    iget v0, p0, Lc8/gcg;->initIndex:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {v0}, Lc8/leg;->getRealCount()I

    move-result v0

    iget v1, p0, Lc8/gcg;->initIndex:I

    if-le v0, v1, :cond_3

    .line 187
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    iget v1, p0, Lc8/gcg;->initIndex:I

    invoke-virtual {v0, v1}, Lc8/oeg;->setCurrentItem(I)V

    .line 188
    iput v2, p0, Lc8/gcg;->initIndex:I

    .line 194
    :cond_2
    :goto_1
    iget-object v0, p0, Lc8/gcg;->mIndicator:Lc8/Mbg;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lc8/gcg;->mIndicator:Lc8/Mbg;

    invoke-virtual {v0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/keg;

    invoke-virtual {v0}, Lc8/keg;->forceLayout()V

    .line 196
    iget-object v0, p0, Lc8/gcg;->mIndicator:Lc8/Mbg;

    invoke-virtual {v0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/keg;

    invoke-virtual {v0}, Lc8/keg;->requestLayout()V

    goto :goto_0

    .line 190
    :cond_3
    iget-boolean v0, p0, Lc8/gcg;->keepIndex:Z

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/oeg;->setCurrentItem(I)V

    goto :goto_1
.end method

.method public containsGesture(Lc8/Weg;)Z
    .locals 1
    .param p1, "WXGestureType"    # Lc8/Weg;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lc8/scg;->containsGesture(Lc8/Weg;)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lc8/scg;->destroy()V

    .line 214
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->stopAutoScroll()V

    .line 216
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->removeAllViews()V

    .line 217
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->destory()V

    .line 219
    :cond_0
    return-void
.end method

.method public getChildLayoutParams(Lc8/tbg;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "child"    # Lc8/tbg;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I
    .param p7, "top"    # I
    .param p8, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 133
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 134
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    if-nez v0, :cond_2

    .line 135
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 143
    instance-of v1, p1, Lc8/Mbg;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 144
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p5, p7, p6, p8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 149
    :cond_0
    :goto_2
    return-object v0

    .line 133
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 137
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 138
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 146
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lc8/gcg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lc8/gcg;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, -0x1

    .line 104
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 106
    .local v2, "view":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lc8/gcg;->getDomObject()Lc8/qYf;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lc8/gcg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {p0}, Lc8/gcg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    const-string/jumbo v4, "infinite"

    invoke-virtual {v3, v4}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "obj":Ljava/lang/Object;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lc8/gcg;->isInfinite:Z

    .line 110
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v1, "pagerParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Lc8/oeg;

    invoke-direct {v3, p1}, Lc8/oeg;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    .line 113
    iget-object v3, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    iget-boolean v4, p0, Lc8/gcg;->isInfinite:Z

    invoke-virtual {v3, v4}, Lc8/oeg;->setCircle(Z)V

    .line 114
    iget-object v3, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v3, v1}, Lc8/oeg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v3, Lc8/leg;

    iget-boolean v4, p0, Lc8/gcg;->isInfinite:Z

    invoke-direct {v3, v4}, Lc8/leg;-><init>(Z)V

    iput-object v3, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    .line 118
    iget-object v3, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    iget-object v4, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {v3, v4}, Lc8/oeg;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 120
    iget-object v3, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 121
    iget-object v3, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    iget-object v4, p0, Lc8/gcg;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v3, v4}, Lc8/oeg;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 123
    invoke-virtual {p0}, Lc8/gcg;->registerActivityStateListener()V

    .line 125
    return-object v2
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lc8/scg;->onActivityResume()V

    .line 224
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->isAutoScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->startAutoScroll()V

    .line 227
    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Lc8/scg;->onActivityStop()V

    .line 232
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->pauseAutoScroll()V

    .line 235
    :cond_0
    return-void
.end method

.method public remove(Lc8/tbg;Z)V
    .locals 2
    .param p1, "child"    # Lc8/tbg;
    .param p2, "destroy"    # Z

    .prologue
    .line 202
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {p1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/leg;->removePageView(Landroid/view/View;)V

    .line 207
    invoke-direct {p0}, Lc8/gcg;->hackTwoItemsInfiniteScroll()V

    .line 208
    invoke-super {p0, p1, p2}, Lc8/scg;->remove(Lc8/tbg;Z)V

    goto :goto_0
.end method

.method public setAutoPlay(Ljava/lang/String;)V
    .locals 1
    .param p1, "autoPlay"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "autoPlay"
    .end annotation

    .prologue
    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->stopAutoScroll()V

    .line 327
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->stopAutoScroll()V

    .line 325
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->startAutoScroll()V

    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation runtime Lc8/vbg;
        name = "index"
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {v0}, Lc8/leg;->getRealCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_2

    .line 354
    :cond_0
    iput p1, p0, Lc8/gcg;->initIndex:I

    .line 370
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0, p1}, Lc8/oeg;->setCurrentItem(I)V

    .line 358
    iget-object v0, p0, Lc8/gcg;->mIndicator:Lc8/Mbg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/gcg;->mIndicator:Lc8/Mbg;

    invoke-virtual {v0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/gcg;->mIndicator:Lc8/Mbg;

    invoke-virtual {v0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/keg;

    invoke-virtual {v0}, Lc8/keg;->getRealCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIndex >>>> correction indicator to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lc8/gcg;->mIndicator:Lc8/Mbg;

    invoke-virtual {v0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/keg;

    invoke-virtual {v0, p1}, Lc8/keg;->setRealCurrentItem(I)V

    .line 363
    iget-object v0, p0, Lc8/gcg;->mIndicator:Lc8/Mbg;

    invoke-virtual {v0}, Lc8/Mbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/keg;

    invoke-virtual {v0}, Lc8/keg;->invalidate()V

    .line 365
    iget-object v0, p0, Lc8/gcg;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lc8/gcg;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v1, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {v1}, Lc8/leg;->getFirst()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0
.end method

.method public setInterval(I)V
    .locals 4
    .param p1, "intervalMS"    # I
    .annotation runtime Lc8/vbg;
        name = "interval"
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 346
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lc8/oeg;->setIntervalTime(J)V

    .line 348
    :cond_0
    return-void
.end method

.method public setOffsetXAccuracy(F)V
    .locals 0
    .param p1, "accuracy"    # F
    .annotation runtime Lc8/vbg;
        name = "offsetXAccuracy"
    .end annotation

    .prologue
    .line 382
    iput p1, p0, Lc8/gcg;->offsetXAccuracy:F

    .line 383
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 254
    const/4 v8, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 299
    invoke-super {p0, p1, p2}, Lc8/scg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    :cond_1
    :goto_1
    return v7

    .line 254
    :sswitch_0
    const-string/jumbo v10, "value"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v8, v9

    goto :goto_0

    :sswitch_1
    const-string/jumbo v10, "autoPlay"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v8, v7

    goto :goto_0

    :sswitch_2
    const-string/jumbo v10, "showIndicators"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v10, "interval"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v10, "index"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v10, "offsetXAccuracy"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v10, "scrollable"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v10, "keepIndex"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x7

    goto :goto_0

    .line 256
    :pswitch_0
    invoke-static {p2, v11}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 258
    invoke-virtual {p0, v6}, Lc8/gcg;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    .end local v6    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-static {p2, v11}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "aotu_play":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {p0, v1}, Lc8/gcg;->setAutoPlay(Ljava/lang/String;)V

    goto :goto_1

    .line 268
    .end local v1    # "aotu_play":Ljava/lang/String;
    :pswitch_2
    invoke-static {p2, v11}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "indicators":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 270
    invoke-virtual {p0, v3}, Lc8/gcg;->setShowIndicators(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 274
    .end local v3    # "indicators":Ljava/lang/String;
    :pswitch_3
    invoke-static {p2, v11}, Lc8/Dgg;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    .line 275
    .local v4, "interval":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 276
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lc8/gcg;->setInterval(I)V

    goto/16 :goto_1

    .line 280
    .end local v4    # "interval":Ljava/lang/Integer;
    :pswitch_4
    invoke-static {p2, v11}, Lc8/Dgg;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    .line 281
    .local v2, "index":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lc8/gcg;->setIndex(I)V

    goto/16 :goto_1

    .line 286
    .end local v2    # "index":Ljava/lang/Integer;
    :pswitch_5
    const v8, 0x3dcccccd    # 0.1f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {p2, v8}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    .line 287
    .local v0, "accuracy":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    .line 288
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {p0, v8}, Lc8/gcg;->setOffsetXAccuracy(F)V

    goto/16 :goto_1

    .line 292
    .end local v0    # "accuracy":Ljava/lang/Float;
    :pswitch_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 293
    .local v5, "scrollable":Z
    invoke-virtual {p0, v5}, Lc8/gcg;->setScrollable(Z)V

    goto/16 :goto_1

    .line 296
    .end local v5    # "scrollable":Z
    :pswitch_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p2, v8}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lc8/gcg;->keepIndex:Z

    goto/16 :goto_1

    .line 254
    :sswitch_data_0
    .sparse-switch
        -0x696287b3 -> :sswitch_7
        0x3f94da7 -> :sswitch_6
        0x5fb28d2 -> :sswitch_4
        0x6ac9171 -> :sswitch_0
        0x21ffe4c5 -> :sswitch_3
        0x3b6be321 -> :sswitch_2
        0x55bf6d83 -> :sswitch_1
        0x5d56563e -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z
    .annotation runtime Lc8/vbg;
        name = "scrollable"
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lc8/gcg;->mAdapter:Lc8/leg;

    invoke-virtual {v0}, Lc8/leg;->getRealCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 375
    iget-object v0, p0, Lc8/gcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0, p1}, Lc8/oeg;->setScrollable(Z)V

    .line 378
    :cond_0
    return-void
.end method

.method public setShowIndicators(Ljava/lang/String;)V
    .locals 2
    .param p1, "show"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "showIndicators"
    .end annotation

    .prologue
    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/gcg;->mShowIndicators:Z

    .line 337
    :goto_0
    iget-object v0, p0, Lc8/gcg;->mIndicator:Lc8/Mbg;

    if-nez v0, :cond_2

    .line 341
    :goto_1
    return-void

    .line 334
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/gcg;->mShowIndicators:Z

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lc8/gcg;->mIndicator:Lc8/Mbg;

    iget-boolean v1, p0, Lc8/gcg;->mShowIndicators:Z

    invoke-virtual {v0, v1}, Lc8/Mbg;->setShowIndicators(Z)V

    goto :goto_1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "value"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc8/gcg;->getHostView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 316
    .local v1, "i":I
    invoke-virtual {p0, v1}, Lc8/gcg;->setIndex(I)V

    goto :goto_0

    .line 311
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, ""

    invoke-static {v2, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
