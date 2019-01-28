.class public abstract Lc8/oqd;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"

# interfaces
.implements Lc8/eqd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/nqd;,
        Lc8/lqd;,
        Lc8/mqd;,
        Lc8/kqd;,
        Lc8/jqd;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lc8/eqd",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_MODE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field static final FRICTION:F = 2.0f

.field static final INITIAL_STATE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"

.field static final MANUAL_REFRESHING:I = 0x9

.field static final PULL_TO_REFRESH:I = 0x1

.field static final REFRESHING:I = 0x8

.field static final RELEASE_TO_REFRESH:I = 0x2

.field public static final SMOOTH_SCROLL_DURATION_MS:I = 0xc8

.field public static final SMOOTH_SCROLL_LONG_DURATION_MS:I = 0x145

.field static final STATE_CURRENT_MODE:Ljava/lang/String; = "ptr_current_mode"

.field static final STATE_DISABLE_SCROLLING_REFRESHING:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final STATE_MODE:Ljava/lang/String; = "ptr_mode"

.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"

.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"

.field static final WAITING:I


# instance fields
.field private mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lc8/nqd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/oqd",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mDisableScrollingWhileRefreshing:Z

.field private mFilterTouchEvents:Z

.field private mFooterHeight:I

.field private mFooterLayout:Lc8/Mqd;

.field private mHeaderHeight:I

.field private mHeaderLayout:Lc8/Mqd;

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mOnPullEventListener:Lc8/kqd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/kqd",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lc8/mqd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/mqd",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lc8/lqd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/lqd",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mShowViewWhileRefreshing:Z

.field private mState:I

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sput-object v0, Lc8/oqd;->DEFAULT_MODE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    iput-boolean v0, p0, Lc8/oqd;->mIsBeingDragged:Z

    .line 86
    iput v0, p0, Lc8/oqd;->mState:I

    .line 87
    sget-object v0, Lc8/oqd;->DEFAULT_MODE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 93
    iput-boolean v1, p0, Lc8/oqd;->mShowViewWhileRefreshing:Z

    .line 94
    iput-boolean v1, p0, Lc8/oqd;->mDisableScrollingWhileRefreshing:Z

    .line 95
    iput-boolean v1, p0, Lc8/oqd;->mFilterTouchEvents:Z

    .line 96
    iput-boolean v1, p0, Lc8/oqd;->mOverScrollEnabled:Z

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/oqd;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput-boolean v0, p0, Lc8/oqd;->mIsBeingDragged:Z

    .line 86
    iput v0, p0, Lc8/oqd;->mState:I

    .line 87
    sget-object v0, Lc8/oqd;->DEFAULT_MODE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 93
    iput-boolean v1, p0, Lc8/oqd;->mShowViewWhileRefreshing:Z

    .line 94
    iput-boolean v1, p0, Lc8/oqd;->mDisableScrollingWhileRefreshing:Z

    .line 95
    iput-boolean v1, p0, Lc8/oqd;->mFilterTouchEvents:Z

    .line 96
    iput-boolean v1, p0, Lc8/oqd;->mOverScrollEnabled:Z

    .line 123
    invoke-direct {p0, p1, p2}, Lc8/oqd;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    iput-boolean v0, p0, Lc8/oqd;->mIsBeingDragged:Z

    .line 86
    iput v0, p0, Lc8/oqd;->mState:I

    .line 87
    sget-object v0, Lc8/oqd;->DEFAULT_MODE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 93
    iput-boolean v1, p0, Lc8/oqd;->mShowViewWhileRefreshing:Z

    .line 94
    iput-boolean v1, p0, Lc8/oqd;->mDisableScrollingWhileRefreshing:Z

    .line 95
    iput-boolean v1, p0, Lc8/oqd;->mFilterTouchEvents:Z

    .line 96
    iput-boolean v1, p0, Lc8/oqd;->mOverScrollEnabled:Z

    .line 128
    iput-object p2, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/oqd;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lc8/oqd;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lc8/oqd;

    .prologue
    .line 45
    iget-object v0, p0, Lc8/oqd;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p2, "refreshableView":Landroid/view/View;, "TT;"
    const/4 v4, -0x1

    .line 765
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/oqd;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    .line 766
    iget-object v0, p0, Lc8/oqd;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 768
    iget-object v0, p0, Lc8/oqd;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lc8/oqd;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v5, 0x1

    .line 773
    invoke-virtual {p0, v5}, Lc8/oqd;->setOrientation(I)V

    .line 775
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 776
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lc8/oqd;->mTouchSlop:I

    .line 779
    sget-object v3, Lcom/youku/phone/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 781
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrMode:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 782
    sget v3, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrMode:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToMode(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 787
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc8/oqd;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lc8/oqd;->mRefreshableView:Landroid/view/View;

    .line 788
    iget-object v3, p0, Lc8/oqd;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lc8/oqd;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 791
    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lc8/oqd;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lc8/Mqd;

    move-result-object v3

    iput-object v3, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    .line 792
    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lc8/oqd;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lc8/Mqd;

    move-result-object v3

    iput-object v3, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    .line 795
    sget v3, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 796
    sget v3, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrHeaderBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 797
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 798
    invoke-virtual {p0, v1}, Lc8/oqd;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 801
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget v3, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 802
    sget v3, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 803
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 804
    iget-object v3, p0, Lc8/oqd;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget v3, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 808
    sget v3, Lcom/youku/phone/R$styleable;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lc8/oqd;->mOverScrollEnabled:Z

    .line 813
    :cond_3
    invoke-virtual {p0, v0}, Lc8/oqd;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 814
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 817
    invoke-virtual {p0}, Lc8/oqd;->updateUIForMode()V

    .line 818
    return-void
.end method

.method private isReadyForPull()Z
    .locals 3

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    .line 821
    sget-object v1, Lc8/iqd;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 829
    :cond_0
    :goto_0
    return v0

    .line 823
    :pswitch_0
    invoke-virtual {p0}, Lc8/oqd;->isReadyForPullDown()Z

    move-result v0

    goto :goto_0

    .line 825
    :pswitch_1
    invoke-virtual {p0}, Lc8/oqd;->isReadyForPullUp()Z

    move-result v0

    goto :goto_0

    .line 827
    :pswitch_2
    invoke-virtual {p0}, Lc8/oqd;->isReadyForPullUp()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lc8/oqd;->isReadyForPullDown()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 821
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v6, 0x0

    .line 833
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 834
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 835
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 838
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 839
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 841
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 842
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 846
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 847
    return-void

    .line 844
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private pullEvent()V
    .locals 8

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 859
    sget-object v3, Lc8/iqd;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v4, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 866
    iget v3, p0, Lc8/oqd;->mInitialMotionY:F

    iget v4, p0, Lc8/oqd;->mLastMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 867
    .local v1, "newScrollY":I
    iget v0, p0, Lc8/oqd;->mHeaderHeight:I

    .line 871
    .local v0, "itemHeight":I
    :goto_0
    invoke-virtual {p0, v1}, Lc8/oqd;->setHeaderScroll(I)V

    .line 873
    if-eqz v1, :cond_1

    .line 874
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 875
    .local v2, "scale":F
    sget-object v3, Lc8/iqd;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v4, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 884
    :goto_1
    iget v3, p0, Lc8/oqd;->mState:I

    if-eq v3, v5, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 886
    iget v3, p0, Lc8/oqd;->mState:I

    if-nez v3, :cond_0

    .line 887
    invoke-virtual {p0}, Lc8/oqd;->onPullEventStarted()V

    .line 890
    :cond_0
    iput v5, p0, Lc8/oqd;->mState:I

    .line 891
    invoke-virtual {p0}, Lc8/oqd;->onPullToRefresh()V

    .line 897
    .end local v2    # "scale":F
    :cond_1
    :goto_2
    return-void

    .line 861
    .end local v0    # "itemHeight":I
    .end local v1    # "newScrollY":I
    :pswitch_0
    iget v3, p0, Lc8/oqd;->mInitialMotionY:F

    iget v4, p0, Lc8/oqd;->mLastMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 862
    .restart local v1    # "newScrollY":I
    iget v0, p0, Lc8/oqd;->mFooterHeight:I

    .line 863
    .restart local v0    # "itemHeight":I
    goto :goto_0

    .line 877
    .restart local v2    # "scale":F
    :pswitch_1
    iget-object v3, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {v3, v2}, Lc8/Mqd;->onPullY(F)V

    goto :goto_1

    .line 880
    :pswitch_2
    iget-object v3, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {v3, v2}, Lc8/Mqd;->onPullY(F)V

    goto :goto_1

    .line 892
    :cond_2
    iget v3, p0, Lc8/oqd;->mState:I

    if-ne v3, v5, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 893
    const/4 v3, 0x2

    iput v3, p0, Lc8/oqd;->mState:I

    .line 894
    invoke-virtual {p0}, Lc8/oqd;->onReleaseToRefresh()V

    goto :goto_2

    .line 859
    .line 875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshLoadingViewsHeight()V
    .locals 3

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    .line 904
    iput v2, p0, Lc8/oqd;->mFooterHeight:I

    iput v2, p0, Lc8/oqd;->mHeaderHeight:I

    .line 906
    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-direct {p0, v0}, Lc8/oqd;->measureView(Landroid/view/View;)V

    .line 908
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {v0}, Lc8/Mqd;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lc8/oqd;->mHeaderHeight:I

    .line 910
    :cond_0
    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-direct {p0, v0}, Lc8/oqd;->measureView(Landroid/view/View;)V

    .line 912
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {v0}, Lc8/Mqd;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lc8/oqd;->mFooterHeight:I

    .line 916
    :cond_1
    sget-object v0, Lc8/iqd;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 927
    :pswitch_0
    iget v0, p0, Lc8/oqd;->mHeaderHeight:I

    neg-int v0, v0

    invoke-virtual {p0, v2, v0, v2, v2}, Lc8/oqd;->setPadding(IIII)V

    .line 930
    :goto_0
    return-void

    .line 918
    :pswitch_1
    invoke-virtual {p0, v2, v2, v2, v2}, Lc8/oqd;->setPadding(IIII)V

    .line 920
    :pswitch_2
    iget v0, p0, Lc8/oqd;->mHeaderHeight:I

    neg-int v0, v0

    iget v1, p0, Lc8/oqd;->mFooterHeight:I

    neg-int v1, v1

    invoke-virtual {p0, v2, v0, v2, v1}, Lc8/oqd;->setPadding(IIII)V

    goto :goto_0

    .line 923
    :pswitch_3
    iget v0, p0, Lc8/oqd;->mFooterHeight:I

    neg-int v0, v0

    invoke-virtual {p0, v2, v2, v2, v0}, Lc8/oqd;->setPadding(IIII)V

    goto :goto_0

    .line 916
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final smoothScrollTo(IJ)V
    .locals 6
    .param p1, "y"    # I
    .param p2, "duration"    # J

    .prologue
    .line 941
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mCurrentSmoothScrollRunnable:Lc8/nqd;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lc8/oqd;->mCurrentSmoothScrollRunnable:Lc8/nqd;

    invoke-virtual {v0}, Lc8/nqd;->stop()V

    .line 945
    :cond_0
    invoke-virtual {p0}, Lc8/oqd;->getScrollY()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 946
    iget-object v0, p0, Lc8/oqd;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 948
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lc8/oqd;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 950
    :cond_1
    new-instance v0, Lc8/nqd;

    invoke-virtual {p0}, Lc8/oqd;->getScrollY()I

    move-result v2

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lc8/nqd;-><init>(Lc8/oqd;IIJ)V

    iput-object v0, p0, Lc8/oqd;->mCurrentSmoothScrollRunnable:Lc8/nqd;

    .line 951
    iget-object v0, p0, Lc8/oqd;->mCurrentSmoothScrollRunnable:Lc8/nqd;

    invoke-virtual {p0, v0}, Lc8/oqd;->post(Ljava/lang/Runnable;)Z

    .line 953
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 138
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lc8/oqd;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "refreshableView":Landroid/view/View;, "TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "refreshableView":Landroid/view/View;, "TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 143
    .restart local v0    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 502
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 503
    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 510
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 511
    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lc8/Mqd;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 514
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    new-instance v0, Lc8/Mqd;

    invoke-direct {v0, p1, p2, p3}, Lc8/Mqd;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 149
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .line 154
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lc8/oqd;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getFooterHeight()I
    .locals 1

    .prologue
    .line 536
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget v0, p0, Lc8/oqd;->mFooterHeight:I

    return v0
.end method

.method protected final getFooterLayout()Lc8/Mqd;
    .locals 1

    .prologue
    .line 540
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    return-object v0
.end method

.method protected final getHeaderHeight()I
    .locals 1

    .prologue
    .line 544
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget v0, p0, Lc8/oqd;->mHeaderHeight:I

    return v0
.end method

.method protected final getHeaderLayout()Lc8/Mqd;
    .locals 1

    .prologue
    .line 548
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    return-object v0
.end method

.method public final getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    .prologue
    .line 552
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    .prologue
    .line 556
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 560
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lc8/oqd;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method protected final getState()I
    .locals 1

    .prologue
    .line 564
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget v0, p0, Lc8/oqd;->mState:I

    return v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 575
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final hasPullFromTop()Z
    .locals 2

    .prologue
    .line 177
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDisableScrollingWhileRefreshing()Z
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lc8/oqd;->mDisableScrollingWhileRefreshing:Z

    return v0
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 2

    .prologue
    .line 187
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPullToRefreshOverScrollEnabled()Z
    .locals 2

    .prologue
    .line 192
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lc8/oqd;->mOverScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oqd;->mRefreshableView:Landroid/view/View;

    .line 193
    invoke-static {v0}, Lc8/fqd;->isAndroidOverScrollEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isReadyForPullDown()Z
.end method

.method protected abstract isReadyForPullUp()Z
.end method

.method public final isRefreshing()Z
    .locals 2

    .prologue
    .line 198
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget v0, p0, Lc8/oqd;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lc8/oqd;->mState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 204
    invoke-virtual {p0}, Lc8/oqd;->isPullToRefreshEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 260
    :goto_0
    return v5

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 210
    .local v0, "action":I
    const/4 v7, 0x3

    if-eq v0, v7, :cond_1

    if-ne v0, v6, :cond_2

    .line 211
    :cond_1
    iput-boolean v5, p0, Lc8/oqd;->mIsBeingDragged:Z

    goto :goto_0

    .line 215
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v7, p0, Lc8/oqd;->mIsBeingDragged:Z

    if-eqz v7, :cond_3

    move v5, v6

    .line 216
    goto :goto_0

    .line 219
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v5, p0, Lc8/oqd;->mIsBeingDragged:Z

    goto :goto_0

    .line 222
    :pswitch_1
    iget-boolean v5, p0, Lc8/oqd;->mDisableScrollingWhileRefreshing:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lc8/oqd;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    .line 223
    goto :goto_0

    .line 226
    :cond_5
    invoke-direct {p0}, Lc8/oqd;->isReadyForPull()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 228
    .local v3, "y":F
    iget v5, p0, Lc8/oqd;->mLastMotionY:F

    sub-float v1, v3, v5

    .line 229
    .local v1, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 230
    .local v4, "yDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v7, p0, Lc8/oqd;->mLastMotionX:F

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 232
    .local v2, "xDiff":F
    iget v5, p0, Lc8/oqd;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    iget-boolean v5, p0, Lc8/oqd;->mFilterTouchEvents:Z

    if-eqz v5, :cond_6

    cmpl-float v5, v4, v2

    if-lez v5, :cond_4

    .line 233
    :cond_6
    iget-object v5, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v5

    if-eqz v5, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_7

    invoke-virtual {p0}, Lc8/oqd;->isReadyForPullDown()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 234
    iput v3, p0, Lc8/oqd;->mLastMotionY:F

    .line 235
    iput-boolean v6, p0, Lc8/oqd;->mIsBeingDragged:Z

    .line 236
    iget-object v5, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v5, v6, :cond_4

    .line 237
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v5, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_1

    .line 239
    :cond_7
    iget-object v5, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v5

    if-eqz v5, :cond_4

    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_4

    invoke-virtual {p0}, Lc8/oqd;->isReadyForPullUp()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 240
    iput v3, p0, Lc8/oqd;->mLastMotionY:F

    .line 241
    iput-boolean v6, p0, Lc8/oqd;->mIsBeingDragged:Z

    .line 242
    iget-object v5, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v5, v6, :cond_4

    .line 243
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v5, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto/16 :goto_1

    .line 251
    .end local v1    # "dy":F
    .end local v2    # "xDiff":F
    .end local v3    # "y":F
    .end local v4    # "yDiff":F
    :pswitch_2
    invoke-direct {p0}, Lc8/oqd;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lc8/oqd;->mInitialMotionY:F

    iput v6, p0, Lc8/oqd;->mLastMotionY:F

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lc8/oqd;->mLastMotionX:F

    .line 254
    iput-boolean v5, p0, Lc8/oqd;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPullEventFinished()V
    .locals 2

    .prologue
    .line 662
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mOnPullEventListener:Lc8/kqd;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lc8/oqd;->mOnPullEventListener:Lc8/kqd;

    iget-object v1, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1}, Lc8/kqd;->onRelease(Lc8/oqd;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 665
    :cond_0
    return-void
.end method

.method protected onPullEventStarted()V
    .locals 2

    .prologue
    .line 669
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mOnPullEventListener:Lc8/kqd;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lc8/oqd;->mOnPullEventListener:Lc8/kqd;

    iget-object v1, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1}, Lc8/kqd;->onPull(Lc8/oqd;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 672
    :cond_0
    return-void
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 599
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lc8/iqd;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 607
    :goto_0
    return-void

    .line 601
    :pswitch_0
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {v0}, Lc8/Mqd;->pullToRefresh()V

    goto :goto_0

    .line 604
    :pswitch_1
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {v0}, Lc8/Mqd;->pullToRefresh()V

    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onRefreshComplete()V
    .locals 1

    .prologue
    .line 265
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lc8/oqd;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lc8/oqd;->resetHeader()V

    .line 268
    :cond_0
    return-void
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 613
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lc8/iqd;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 621
    :goto_0
    return-void

    .line 615
    :pswitch_0
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {v0}, Lc8/Mqd;->releaseToRefresh()V

    goto :goto_0

    .line 618
    :pswitch_1
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {v0}, Lc8/Mqd;->releaseToRefresh()V

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 625
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 626
    check-cast v0, Landroid/os/Bundle;

    .line 628
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ptr_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToMode(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v2

    iput-object v2, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 629
    const-string/jumbo v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToMode(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v2

    iput-object v2, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 631
    const-string/jumbo v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lc8/oqd;->mDisableScrollingWhileRefreshing:Z

    .line 632
    const-string/jumbo v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lc8/oqd;->mShowViewWhileRefreshing:Z

    .line 635
    const-string/jumbo v2, "ptr_super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 637
    const-string/jumbo v2, "ptr_state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 638
    .local v1, "viewState":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 639
    :cond_0
    invoke-virtual {p0, v4}, Lc8/oqd;->setRefreshingInternal(Z)V

    .line 640
    iput v1, p0, Lc8/oqd;->mState:I

    .line 646
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "viewState":I
    :cond_1
    :goto_0
    return-void

    .line 645
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 650
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 651
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "ptr_state"

    iget v2, p0, Lc8/oqd;->mState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    const-string/jumbo v1, "ptr_mode"

    iget-object v2, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    const-string/jumbo v1, "ptr_current_mode"

    iget-object v2, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 654
    const-string/jumbo v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lc8/oqd;->mDisableScrollingWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 655
    const-string/jumbo v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lc8/oqd;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 656
    const-string/jumbo v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 657
    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 273
    invoke-virtual {p0}, Lc8/oqd;->isPullToRefreshEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    iget-boolean v2, p0, Lc8/oqd;->mDisableScrollingWhileRefreshing:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lc8/oqd;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 279
    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 286
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 297
    :pswitch_0
    invoke-direct {p0}, Lc8/oqd;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lc8/oqd;->mInitialMotionY:F

    iput v0, p0, Lc8/oqd;->mLastMotionY:F

    move v0, v1

    .line 299
    goto :goto_0

    .line 288
    :pswitch_1
    iget-boolean v2, p0, Lc8/oqd;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lc8/oqd;->mLastMotionY:F

    .line 290
    invoke-direct {p0}, Lc8/oqd;->pullEvent()V

    move v0, v1

    .line 291
    goto :goto_0

    .line 306
    :pswitch_2
    iget-boolean v2, p0, Lc8/oqd;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 307
    iput-boolean v0, p0, Lc8/oqd;->mIsBeingDragged:Z

    .line 309
    iget v0, p0, Lc8/oqd;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 310
    invoke-virtual {p0}, Lc8/oqd;->onPullEventFinished()V

    .line 312
    iget-object v0, p0, Lc8/oqd;->mOnRefreshListener:Lc8/mqd;

    if-eqz v0, :cond_4

    .line 313
    invoke-virtual {p0, v1}, Lc8/oqd;->setRefreshingInternal(Z)V

    .line 314
    iget-object v0, p0, Lc8/oqd;->mOnRefreshListener:Lc8/mqd;

    invoke-interface {v0, p0}, Lc8/mqd;->onRefresh(Lc8/oqd;)V

    move v0, v1

    .line 315
    goto :goto_0

    .line 317
    :cond_4
    iget-object v0, p0, Lc8/oqd;->mOnRefreshListener2:Lc8/lqd;

    if-eqz v0, :cond_7

    .line 318
    invoke-virtual {p0, v1}, Lc8/oqd;->setRefreshingInternal(Z)V

    .line 319
    iget-object v0, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v2, :cond_6

    .line 320
    iget-object v0, p0, Lc8/oqd;->mOnRefreshListener2:Lc8/lqd;

    invoke-interface {v0, p0}, Lc8/lqd;->onPullDownToRefresh(Lc8/oqd;)V

    :cond_5
    :goto_1
    move v0, v1

    .line 324
    goto :goto_0

    .line 321
    :cond_6
    iget-object v0, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v2, :cond_5

    .line 322
    iget-object v0, p0, Lc8/oqd;->mOnRefreshListener2:Lc8/lqd;

    invoke-interface {v0, p0}, Lc8/lqd;->onPullUpToRefresh(Lc8/oqd;)V

    goto :goto_1

    .line 327
    :cond_7
    invoke-virtual {p0}, Lc8/oqd;->resetHeader()V

    move v0, v1

    .line 328
    goto/16 :goto_0

    .line 332
    :cond_8
    invoke-virtual {p0}, Lc8/oqd;->onPullEventFinished()V

    .line 333
    invoke-virtual {p0}, Lc8/oqd;->resetHeader()V

    move v0, v1

    .line 334
    goto/16 :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected resetHeader()V
    .locals 2

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    .line 675
    iput v1, p0, Lc8/oqd;->mState:I

    .line 676
    iput-boolean v1, p0, Lc8/oqd;->mIsBeingDragged:Z

    .line 678
    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {v0}, Lc8/Mqd;->reset()V

    .line 681
    :cond_0
    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {v0}, Lc8/Mqd;->reset()V

    .line 685
    :cond_1
    invoke-virtual {p0, v1}, Lc8/oqd;->smoothScrollTo(I)V

    .line 686
    return-void
.end method

.method public final setDisableScrollingWhileRefreshing(Z)V
    .locals 0
    .param p1, "disableScrollingWhileRefreshing"    # Z

    .prologue
    .line 345
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lc8/oqd;->mDisableScrollingWhileRefreshing:Z

    .line 346
    return-void
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .param p1, "filterEvents"    # Z

    .prologue
    .line 350
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lc8/oqd;->mFilterTouchEvents:Z

    .line 351
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 689
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lc8/oqd;->scrollTo(II)V

    .line 690
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 355
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_1
    invoke-direct {p0}, Lc8/oqd;->refreshLoadingViewsHeight()V

    .line 364
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 368
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lc8/oqd;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 369
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 373
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    :cond_1
    invoke-direct {p0}, Lc8/oqd;->refreshLoadingViewsHeight()V

    .line 382
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .line 386
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lc8/oqd;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 387
    return-void
.end method

.method public final setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 391
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    .line 395
    iput-object p1, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 396
    invoke-virtual {p0}, Lc8/oqd;->updateUIForMode()V

    .line 398
    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lc8/kqd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/kqd",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lc8/kqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener<TT;>;"
    iput-object p1, p0, Lc8/oqd;->mOnPullEventListener:Lc8/kqd;

    .line 402
    return-void
.end method

.method public final setOnRefreshListener(Lc8/lqd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/lqd",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lc8/lqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2<TT;>;"
    iput-object p1, p0, Lc8/oqd;->mOnRefreshListener2:Lc8/lqd;

    .line 412
    return-void
.end method

.method public final setOnRefreshListener(Lc8/mqd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/mqd",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lc8/mqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<TT;>;"
    iput-object p1, p0, Lc8/oqd;->mOnRefreshListener:Lc8/mqd;

    .line 407
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 416
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lc8/oqd;->setPullLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 417
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 421
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 427
    :cond_1
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 437
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    if-eqz p1, :cond_0

    sget-object v0, Lc8/oqd;->DEFAULT_MODE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    :goto_0
    invoke-virtual {p0, v0}, Lc8/oqd;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 438
    return-void

    .line 437
    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_0
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 442
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lc8/oqd;->mOverScrollEnabled:Z

    .line 443
    return-void
.end method

.method public final setRefreshing()V
    .locals 1

    .prologue
    .line 447
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/oqd;->setRefreshing(Z)V

    .line 448
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 1
    .param p1, "doScroll"    # Z

    .prologue
    .line 452
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lc8/oqd;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0, p1}, Lc8/oqd;->setRefreshingInternal(Z)V

    .line 454
    const/16 v0, 0x9

    iput v0, p0, Lc8/oqd;->mState:I

    .line 456
    :cond_0
    return-void
.end method

.method protected setRefreshingInternal(Z)V
    .locals 2
    .param p1, "doScroll"    # Z

    .prologue
    .line 693
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/16 v0, 0x8

    iput v0, p0, Lc8/oqd;->mState:I

    .line 695
    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {v0}, Lc8/Mqd;->refreshing()V

    .line 698
    :cond_0
    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {v0}, Lc8/Mqd;->refreshing()V

    .line 702
    :cond_1
    if-eqz p1, :cond_2

    .line 703
    iget-boolean v0, p0, Lc8/oqd;->mShowViewWhileRefreshing:Z

    if-eqz v0, :cond_4

    .line 704
    iget-object v0, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lc8/oqd;->mHeaderHeight:I

    neg-int v0, v0

    :goto_0
    invoke-virtual {p0, v0}, Lc8/oqd;->smoothScrollTo(I)V

    .line 709
    :cond_2
    :goto_1
    return-void

    .line 704
    :cond_3
    iget v0, p0, Lc8/oqd;->mFooterHeight:I

    goto :goto_0

    .line 706
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/oqd;->smoothScrollTo(I)V

    goto :goto_1
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 460
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lc8/oqd;->setRefreshingLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 461
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 465
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 471
    :cond_1
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 475
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lc8/oqd;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 476
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 480
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 483
    :cond_0
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {v0, p1}, Lc8/Mqd;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 486
    :cond_1
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 489
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lc8/oqd;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 490
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .param p1, "showView"    # Z

    .prologue
    .line 494
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lc8/oqd;->mShowViewWhileRefreshing:Z

    .line 495
    return-void
.end method

.method protected final smoothScrollTo(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 719
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lc8/oqd;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lc8/oqd;->smoothScrollTo(IJ)V

    .line 720
    return-void
.end method

.method protected final smoothScrollToLonger(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 730
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lc8/oqd;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lc8/oqd;->smoothScrollTo(IJ)V

    .line 731
    return-void
.end method

.method protected updateUIForMode()V
    .locals 5

    .prologue
    .local p0, "this":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>;"
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 739
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {v0}, Lc8/Mqd;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 740
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    invoke-virtual {p0, v0}, Lc8/oqd;->removeView(Landroid/view/View;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lc8/oqd;->mHeaderLayout:Lc8/Mqd;

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Lc8/oqd;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 748
    :cond_1
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {v0}, Lc8/Mqd;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_2

    .line 749
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    invoke-virtual {p0, v0}, Lc8/oqd;->removeView(Landroid/view/View;)V

    .line 751
    :cond_2
    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lc8/oqd;->mFooterLayout:Lc8/Mqd;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lc8/oqd;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    :cond_3
    invoke-direct {p0}, Lc8/oqd;->refreshLoadingViewsHeight()V

    .line 761
    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lc8/oqd;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    :goto_0
    iput-object v0, p0, Lc8/oqd;->mCurrentMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 762
    return-void

    .line 761
    :cond_4
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_0
.end method
