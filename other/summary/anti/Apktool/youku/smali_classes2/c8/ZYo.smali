.class public Lc8/ZYo;
.super Landroid/widget/LinearLayout;
.source "CircleIndicator.java"


# static fields
.field private static final WHAT:I


# instance fields
.field private dotCount:I

.field private loopHandler:Landroid/os/Handler;

.field private mIndicatorHeight:I

.field private mIndicatorSpacing:I

.field private mIndicatorWidth:I

.field private mViewpager:Landroid/support/v4/view/ViewPager;

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0xa

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput v0, p0, Lc8/ZYo;->mIndicatorWidth:I

    .line 23
    iput v0, p0, Lc8/ZYo;->mIndicatorHeight:I

    .line 24
    const/16 v0, 0xc

    iput v0, p0, Lc8/ZYo;->mIndicatorSpacing:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lc8/ZYo;->dotCount:I

    .line 70
    new-instance v0, Lc8/YYo;

    invoke-direct {v0, p0}, Lc8/YYo;-><init>(Lc8/ZYo;)V

    iput-object v0, p0, Lc8/ZYo;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v0, 0xa

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v0, p0, Lc8/ZYo;->mIndicatorWidth:I

    .line 23
    iput v0, p0, Lc8/ZYo;->mIndicatorHeight:I

    .line 24
    const/16 v0, 0xc

    iput v0, p0, Lc8/ZYo;->mIndicatorSpacing:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lc8/ZYo;->dotCount:I

    .line 70
    new-instance v0, Lc8/YYo;

    invoke-direct {v0, p0}, Lc8/YYo;-><init>(Lc8/ZYo;)V

    iput-object v0, p0, Lc8/ZYo;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 36
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lc8/ZYo;->setGravity(I)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/ZYo;->setOrientation(I)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lc8/XYo;

    invoke-direct {v1, p0}, Lc8/XYo;-><init>(Lc8/ZYo;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/ZYo;->loopHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lc8/ZYo;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lc8/ZYo;

    .prologue
    .line 17
    iget-object v0, p0, Lc8/ZYo;->mViewpager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lc8/ZYo;I)V
    .locals 0
    .param p0, "x0"    # Lc8/ZYo;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lc8/ZYo;->setChecked(I)V

    return-void
.end method

.method private addIndicator()V
    .locals 4

    .prologue
    .line 89
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lc8/ZYo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, "Indicator":Landroid/view/View;
    sget v2, Lcom/youku/phone/R$drawable;->circle_indicator:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    iget v2, p0, Lc8/ZYo;->mIndicatorWidth:I

    iget v3, p0, Lc8/ZYo;->mIndicatorHeight:I

    invoke-virtual {p0, v0, v2, v3}, Lc8/ZYo;->addView(Landroid/view/View;II)V

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 93
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lc8/ZYo;->mIndicatorSpacing:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 94
    return-void
.end method

.method private setChecked(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x0

    .line 97
    iget v2, p0, Lc8/ZYo;->dotCount:I

    if-gtz v2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 100
    :cond_0
    iget v2, p0, Lc8/ZYo;->dotCount:I

    rem-int/2addr p1, v2

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lc8/ZYo;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 103
    invoke-virtual {p0, v0}, Lc8/ZYo;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "view":Landroid/view/View;
    if-ne p1, v0, :cond_1

    .line 105
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 102
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 111
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lc8/ZYo;->loopHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v2, p0, Lc8/ZYo;->loopHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 118
    iget-object v0, p0, Lc8/ZYo;->loopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    return-void
.end method

.method public setDotCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 79
    invoke-virtual {p0}, Lc8/ZYo;->removeAllViews()V

    .line 80
    iput p1, p0, Lc8/ZYo;->dotCount:I

    .line 81
    iget v1, p0, Lc8/ZYo;->dotCount:I

    if-gtz v1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lc8/ZYo;->dotCount:I

    if-ge v0, v1, :cond_1

    .line 83
    invoke-direct {p0}, Lc8/ZYo;->addIndicator()V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_1
    iget-object v1, p0, Lc8/ZYo;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0, v1}, Lc8/ZYo;->setChecked(I)V

    goto :goto_0
.end method

.method public setIndicatorSize(I)V
    .locals 0
    .param p1, "sizepx"    # I

    .prologue
    .line 54
    iput p1, p0, Lc8/ZYo;->mIndicatorHeight:I

    iput p1, p0, Lc8/ZYo;->mIndicatorWidth:I

    .line 55
    return-void
.end method

.method public setIndicatorSpacing(I)V
    .locals 0
    .param p1, "spa"    # I

    .prologue
    .line 61
    iput p1, p0, Lc8/ZYo;->mIndicatorSpacing:I

    .line 62
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 65
    iput-object p1, p0, Lc8/ZYo;->mViewpager:Landroid/support/v4/view/ViewPager;

    .line 66
    iget-object v0, p0, Lc8/ZYo;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->clearOnPageChangeListeners()V

    .line 67
    iget-object v0, p0, Lc8/ZYo;->mViewpager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lc8/ZYo;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 68
    return-void
.end method
