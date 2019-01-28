.class public Lc8/Rv;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/lv;,
        Lc8/qv;,
        Lc8/rv;,
        Lc8/Av;,
        Lc8/Nv;,
        Landroid/support/v7/widget/RecyclerView$SavedState;,
        Lc8/jv;,
        Lc8/Mv;,
        Lc8/kv;,
        Lc8/yv;,
        Lc8/Qv;,
        Lc8/zv;,
        Lc8/Gv;,
        Lc8/Cv;,
        Lc8/Jv;,
        Lc8/Bv;,
        Lc8/sv;,
        Lc8/xv;,
        Lc8/iv;,
        Lc8/Ov;,
        Lc8/Fv;,
        Lc8/Ev;,
        Lc8/Hv;,
        Lc8/Pv;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final ALLOW_THREAD_GAP_WORK:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field static final DEBUG:Z = false

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mAccessibilityDelegate:Lc8/Tv;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lc8/Bv;

.field mAdapter:Lc8/iv;

.field mAdapterHelper:Lc8/ms;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mChildDrawingOrderCallback:Lc8/lv;

.field mChildHelper:Lc8/ht;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field private mDispatchScrollCounter:I

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field mFirstLayoutComplete:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mGapWorker:Lc8/Ot;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field mIsAttached:Z

.field mItemAnimator:Lc8/qv;

.field private mItemAnimatorListener:Lc8/ov;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/sv;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Lc8/xv;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Lc8/Hv;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/zv;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Lc8/Av;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Bv;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Qv;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Lc8/Mt;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Lc8/Fv;

.field mRecyclerListener:Lc8/Gv;

.field private mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lc8/Cv;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Cv;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field final mState:Lc8/Nv;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Lc8/Pv;

.field private final mViewInfoProcessCallback:Lc8/ux;

.field final mViewInfoStore:Lc8/vx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 159
    new-array v0, v2, [I

    const v3, 0x1010436

    aput v3, v0, v1

    sput-object v0, Lc8/Rv;->NESTED_SCROLLING_ATTRS:[I

    .line 162
    new-array v0, v2, [I

    const v3, 0x10100eb

    aput v3, v0, v1

    sput-object v0, Lc8/Rv;->CLIP_TO_PADDING_ATTR:[I

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lc8/Rv;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    move v0, v2

    :goto_1
    sput-boolean v0, Lc8/Rv;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_3

    move v0, v2

    :goto_2
    sput-boolean v0, Lc8/Rv;->POST_UPDATES_ON_ANIMATION:Z

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_4

    move v0, v2

    :goto_3
    sput-boolean v0, Lc8/Rv;->ALLOW_THREAD_GAP_WORK:Z

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_5

    move v0, v2

    :goto_4
    sput-boolean v0, Lc8/Rv;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_6

    move v0, v2

    :goto_5
    sput-boolean v0, Lc8/Rv;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 291
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lc8/Rv;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 499
    new-instance v0, Lc8/ev;

    invoke-direct {v0}, Lc8/ev;-><init>()V

    sput-object v0, Lc8/Rv;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_1
    move v0, v1

    .line 171
    goto :goto_0

    :cond_2
    move v0, v1

    .line 178
    goto :goto_1

    :cond_3
    move v0, v1

    .line 180
    goto :goto_2

    :cond_4
    move v0, v1

    .line 186
    goto :goto_3

    :cond_5
    move v0, v1

    .line 192
    goto :goto_4

    :cond_6
    move v0, v1

    .line 202
    goto :goto_5
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Rv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 548
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/Rv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 552
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v4, 0x40000

    const/4 v3, -0x1

    const/4 v1, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 555
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 294
    new-instance v0, Lc8/Hv;

    invoke-direct {v0, p0}, Lc8/Hv;-><init>(Lc8/Rv;)V

    iput-object v0, p0, Lc8/Rv;->mObserver:Lc8/Hv;

    .line 296
    new-instance v0, Lc8/Fv;

    invoke-direct {v0, p0}, Lc8/Fv;-><init>(Lc8/Rv;)V

    iput-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    .line 313
    new-instance v0, Lc8/vx;

    invoke-direct {v0}, Lc8/vx;-><init>()V

    iput-object v0, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    .line 327
    new-instance v0, Lc8/cv;

    invoke-direct {v0, p0}, Lc8/cv;-><init>(Lc8/Rv;)V

    iput-object v0, p0, Lc8/Rv;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 347
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    .line 348
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    .line 349
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/Rv;->mTempRectF:Landroid/graphics/RectF;

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Rv;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 362
    iput v11, p0, Lc8/Rv;->mEatRequestLayout:I

    .line 387
    iput-boolean v11, p0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    .line 397
    iput v11, p0, Lc8/Rv;->mLayoutOrScrollCounter:I

    .line 406
    iput v11, p0, Lc8/Rv;->mDispatchScrollCounter:I

    .line 410
    new-instance v0, Lc8/xt;

    invoke-direct {v0}, Lc8/xt;-><init>()V

    iput-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    .line 437
    iput v11, p0, Lc8/Rv;->mScrollState:I

    .line 438
    iput v3, p0, Lc8/Rv;->mScrollPointerId:I

    .line 449
    const/4 v0, 0x1

    iput v0, p0, Lc8/Rv;->mScrollFactor:F

    .line 450
    iput-boolean v10, p0, Lc8/Rv;->mPreserveFocusAfterLayout:Z

    .line 452
    new-instance v0, Lc8/Pv;

    invoke-direct {v0, p0}, Lc8/Pv;-><init>(Lc8/Rv;)V

    iput-object v0, p0, Lc8/Rv;->mViewFlinger:Lc8/Pv;

    .line 455
    sget-boolean v0, Lc8/Rv;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_3

    new-instance v0, Lc8/Mt;

    invoke-direct {v0}, Lc8/Mt;-><init>()V

    :goto_0
    iput-object v0, p0, Lc8/Rv;->mPrefetchRegistry:Lc8/Mt;

    .line 458
    new-instance v0, Lc8/Nv;

    invoke-direct {v0}, Lc8/Nv;-><init>()V

    iput-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    .line 464
    iput-boolean v11, p0, Lc8/Rv;->mItemsAddedOrRemoved:Z

    .line 465
    iput-boolean v11, p0, Lc8/Rv;->mItemsChanged:Z

    .line 466
    new-instance v0, Lc8/rv;

    invoke-direct {v0, p0}, Lc8/rv;-><init>(Lc8/Rv;)V

    iput-object v0, p0, Lc8/Rv;->mItemAnimatorListener:Lc8/ov;

    .line 468
    iput-boolean v11, p0, Lc8/Rv;->mPostedAnimatorRunner:Z

    .line 474
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/Rv;->mMinMaxLayoutPositions:[I

    .line 477
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/Rv;->mScrollOffset:[I

    .line 478
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/Rv;->mScrollConsumed:[I

    .line 479
    new-array v0, v1, [I

    iput-object v0, p0, Lc8/Rv;->mNestedOffsets:[I

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Rv;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 489
    new-instance v0, Lc8/dv;

    invoke-direct {v0, p0}, Lc8/dv;-><init>(Lc8/Rv;)V

    iput-object v0, p0, Lc8/Rv;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 510
    new-instance v0, Lc8/fv;

    invoke-direct {v0, p0}, Lc8/fv;-><init>(Lc8/Rv;)V

    iput-object v0, p0, Lc8/Rv;->mViewInfoProcessCallback:Lc8/ux;

    .line 556
    if-eqz p2, :cond_4

    .line 557
    sget-object v0, Lc8/Rv;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {p1, p2, v0, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 558
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lc8/Rv;->mClipToPadding:Z

    .line 559
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 563
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :goto_1
    invoke-virtual {p0, v10}, Lc8/Rv;->setScrollContainer(Z)V

    .line 564
    invoke-virtual {p0, v10}, Lc8/Rv;->setFocusableInTouchMode(Z)V

    .line 566
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    .line 567
    .local v9, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lc8/Rv;->mTouchSlop:I

    .line 568
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lc8/Rv;->mMinFlingVelocity:I

    .line 569
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lc8/Rv;->mMaxFlingVelocity:I

    .line 570
    invoke-virtual {p0}, Lc8/Rv;->getOverScrollMode()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v10

    :goto_2
    invoke-virtual {p0, v0}, Lc8/Rv;->setWillNotDraw(Z)V

    .line 572
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    iget-object v1, p0, Lc8/Rv;->mItemAnimatorListener:Lc8/ov;

    invoke-virtual {v0, v1}, Lc8/qv;->setListener(Lc8/ov;)V

    .line 573
    invoke-virtual {p0}, Lc8/Rv;->initAdapterManager()V

    .line 574
    invoke-direct {p0}, Lc8/Rv;->initChildrenHelper()V

    .line 576
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 578
    invoke-static {p0, v10}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 581
    :cond_0
    invoke-virtual {p0}, Lc8/Rv;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    .line 582
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lc8/Rv;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 583
    new-instance v0, Lc8/Tv;

    invoke-direct {v0, p0}, Lc8/Tv;-><init>(Lc8/Rv;)V

    invoke-virtual {p0, v0}, Lc8/Rv;->setAccessibilityDelegateCompat(Lc8/Tv;)V

    .line 586
    const/4 v8, 0x1

    .line 588
    .local v8, "nestedScrollingEnabled":Z
    if-eqz p2, :cond_6

    .line 589
    const/4 v5, 0x0

    .line 590
    .local v5, "defStyleRes":I
    sget-object v0, Lcom/youku/phone/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 592
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    sget v0, Lcom/youku/phone/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "layoutManagerName":Ljava/lang/String;
    sget v0, Lcom/youku/phone/R$styleable;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 595
    .local v7, "descendantFocusability":I
    if-ne v7, v3, :cond_1

    .line 596
    invoke-virtual {p0, v4}, Lc8/Rv;->setDescendantFocusability(I)V

    .line 598
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 599
    invoke-direct/range {v0 .. v5}, Lc8/Rv;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 601
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 602
    sget-object v0, Lc8/Rv;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 604
    invoke-virtual {v6, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 605
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 612
    .end local v2    # "layoutManagerName":Ljava/lang/String;
    .end local v5    # "defStyleRes":I
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "descendantFocusability":I
    :cond_2
    :goto_3
    invoke-virtual {p0, v8}, Lc8/Rv;->setNestedScrollingEnabled(Z)V

    .line 613
    return-void

    .line 455
    .end local v8    # "nestedScrollingEnabled":Z
    .end local v9    # "vc":Landroid/view/ViewConfiguration;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 561
    :cond_4
    iput-boolean v10, p0, Lc8/Rv;->mClipToPadding:Z

    goto/16 :goto_1

    .restart local v9    # "vc":Landroid/view/ViewConfiguration;
    :cond_5
    move v0, v11

    .line 570
    goto :goto_2

    .line 608
    .restart local v8    # "nestedScrollingEnabled":Z
    :cond_6
    invoke-virtual {p0, v4}, Lc8/Rv;->setDescendantFocusability(I)V

    goto :goto_3
.end method

.method static synthetic access$000(Lc8/Rv;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lc8/Rv;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lc8/Rv;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lc8/Rv;I)V
    .locals 0
    .param p0, "x0"    # Lc8/Rv;
    .param p1, "x1"    # I

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lc8/Rv;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$1000(Lc8/Rv;II)V
    .locals 0
    .param p0, "x0"    # Lc8/Rv;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2}, Lc8/Rv;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$500(Lc8/Rv;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Rv;

    .prologue
    .line 151
    invoke-virtual {p0}, Lc8/Rv;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lc8/Rv;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method private addAnimatingView(Lc8/Qv;)V
    .locals 6
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    const/4 v2, 0x1

    .line 1269
    iget-object v1, p1, Lc8/Qv;->itemView:Landroid/view/View;

    .line 1270
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    move v0, v2

    .line 1271
    .local v0, "alreadyParented":Z
    :goto_0
    iget-object v3, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {p0, v1}, Lc8/Rv;->getChildViewHolder(Landroid/view/View;)Lc8/Qv;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/Fv;->unscrapView(Lc8/Qv;)V

    .line 1272
    invoke-virtual {p1}, Lc8/Qv;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1274
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    const/4 v4, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5, v2}, Lc8/ht;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1280
    :goto_1
    return-void

    .line 1270
    .end local v0    # "alreadyParented":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1275
    .restart local v0    # "alreadyParented":Z
    :cond_1
    if-nez v0, :cond_2

    .line 1276
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3, v1, v2}, Lc8/ht;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1278
    :cond_2
    iget-object v2, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v2, v1}, Lc8/ht;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private animateChange(Lc8/Qv;Lc8/Qv;Lc8/pv;Lc8/pv;ZZ)V
    .locals 2
    .param p1, "oldHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "preInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "postInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "oldHolderDisappearing"    # Z
    .param p6, "newHolderDisappearing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3821
    invoke-virtual {p1, v1}, Lc8/Qv;->setIsRecyclable(Z)V

    .line 3822
    if-eqz p5, :cond_0

    .line 3823
    invoke-direct {p0, p1}, Lc8/Rv;->addAnimatingView(Lc8/Qv;)V

    .line 3825
    :cond_0
    if-eq p1, p2, :cond_2

    .line 3826
    if-eqz p6, :cond_1

    .line 3827
    invoke-direct {p0, p2}, Lc8/Rv;->addAnimatingView(Lc8/Qv;)V

    .line 3829
    :cond_1
    iput-object p2, p1, Lc8/Qv;->mShadowedHolder:Lc8/Qv;

    .line 3831
    invoke-direct {p0, p1}, Lc8/Rv;->addAnimatingView(Lc8/Qv;)V

    .line 3832
    iget-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, p1}, Lc8/Fv;->unscrapView(Lc8/Qv;)V

    .line 3833
    invoke-virtual {p2, v1}, Lc8/Qv;->setIsRecyclable(Z)V

    .line 3834
    iput-object p1, p2, Lc8/Qv;->mShadowingHolder:Lc8/Qv;

    .line 3836
    :cond_2
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/qv;->animateChange(Lc8/Qv;Lc8/Qv;Lc8/pv;Lc8/pv;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3837
    invoke-virtual {p0}, Lc8/Rv;->postAnimationRunner()V

    .line 3839
    :cond_3
    return-void
.end method

.method private cancelTouch()V
    .locals 1

    .prologue
    .line 2935
    invoke-direct {p0}, Lc8/Rv;->resetTouch()V

    .line 2936
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Rv;->setScrollState(I)V

    .line 2937
    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Lc8/Qv;)V
    .locals 3
    .param p0, "holder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 5176
    iget-object v2, p0, Lc8/Qv;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 5177
    iget-object v2, p0, Lc8/Qv;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5178
    .local v0, "item":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_3

    .line 5179
    iget-object v2, p0, Lc8/Qv;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_1

    .line 5192
    .end local v0    # "item":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 5183
    .restart local v0    # "item":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 5184
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 5185
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 5187
    :cond_2
    const/4 v0, 0x0

    .line 5189
    goto :goto_0

    .line 5190
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/Qv;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    goto :goto_1
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 638
    if-eqz p2, :cond_0

    .line 639
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 640
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 641
    invoke-direct {p0, p1, p2}, Lc8/Rv;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 644
    :try_start_0
    invoke-virtual {p0}, Lc8/Rv;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 646
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 651
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lc8/xv;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v6

    .line 653
    .local v6, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    const/4 v2, 0x0

    .line 655
    .local v2, "constructorArgs":[Ljava/lang/Object;
    :try_start_1
    sget-object v7, Lc8/Rv;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 656
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 657
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v3, v7

    const/4 v7, 0x1

    aput-object p3, v3, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .local v3, "constructorArgs":[Ljava/lang/Object;
    move-object v2, v3

    .line 667
    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    :goto_1
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 668
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/xv;

    invoke-virtual {p0, v7}, Lc8/Rv;->setLayoutManager(Lc8/xv;)V

    .line 687
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    :cond_0
    return-void

    .line 648
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 658
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    .restart local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    :catch_0
    move-exception v4

    .line 660
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const/4 v7, 0x0

    :try_start_3
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v1

    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    goto :goto_1

    .line 661
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    :catch_1
    move-exception v5

    .line 662
    .local v5, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 663
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Error creating LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    .line 669
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    :catch_2
    move-exception v4

    .line 670
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Unable to find LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 672
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v4

    .line 673
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 675
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v4

    .line 676
    .local v4, "e":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 678
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v4

    .line 679
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Cannot access non-public constructor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 681
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v4

    .line 682
    .local v4, "e":Ljava/lang/ClassCastException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Class is not a LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private didChildRangeChange(II)Z
    .locals 3
    .param p1, "minPositionPreLayout"    # I
    .param p2, "maxPositionPreLayout"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3773
    iget-object v2, p0, Lc8/Rv;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v2}, Lc8/Rv;->findMinMaxChildLayoutPositions([I)V

    .line 3774
    iget-object v2, p0, Lc8/Rv;->mMinMaxLayoutPositions:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lc8/Rv;->mMinMaxLayoutPositions:[I

    aget v2, v2, v1

    if-eq v2, p2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .prologue
    .line 3145
    iget v1, p0, Lc8/Rv;->mEatenAccessibilityChangeFlags:I

    .line 3146
    .local v1, "flags":I
    const/4 v2, 0x0

    iput v2, p0, Lc8/Rv;->mEatenAccessibilityChangeFlags:I

    .line 3147
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/Rv;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3148
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3149
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3150
    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3151
    invoke-virtual {p0, v0}, Lc8/Rv;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3153
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 15

    .prologue
    .line 3483
    iget-object v11, p0, Lc8/Rv;->mState:Lc8/Nv;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lc8/Nv;->assertLayoutStep(I)V

    .line 3484
    iget-object v11, p0, Lc8/Rv;->mState:Lc8/Nv;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lc8/Nv;->mIsMeasuring:Z

    .line 3485
    invoke-virtual {p0}, Lc8/Rv;->eatRequestLayout()V

    .line 3486
    iget-object v11, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v11}, Lc8/vx;->clear()V

    .line 3487
    invoke-virtual {p0}, Lc8/Rv;->onEnterLayoutOrScroll()V

    .line 3488
    invoke-direct {p0}, Lc8/Rv;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3489
    invoke-direct {p0}, Lc8/Rv;->saveFocusInfo()V

    .line 3490
    iget-object v12, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v11, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v11, v11, Lc8/Nv;->mRunSimpleAnimations:Z

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lc8/Rv;->mItemsChanged:Z

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_0
    iput-boolean v11, v12, Lc8/Nv;->mTrackOldChangeHolders:Z

    .line 3491
    const/4 v11, 0x0

    iput-boolean v11, p0, Lc8/Rv;->mItemsChanged:Z

    iput-boolean v11, p0, Lc8/Rv;->mItemsAddedOrRemoved:Z

    .line 3492
    iget-object v11, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v12, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v12, v12, Lc8/Nv;->mRunPredictiveAnimations:Z

    iput-boolean v12, v11, Lc8/Nv;->mInPreLayout:Z

    .line 3493
    iget-object v11, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v12, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v12}, Lc8/iv;->getItemCount()I

    move-result v12

    iput v12, v11, Lc8/Nv;->mItemCount:I

    .line 3494
    iget-object v11, p0, Lc8/Rv;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v11}, Lc8/Rv;->findMinMaxChildLayoutPositions([I)V

    .line 3496
    iget-object v11, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v11, v11, Lc8/Nv;->mRunSimpleAnimations:Z

    if-eqz v11, :cond_3

    .line 3498
    iget-object v11, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v11}, Lc8/ht;->getChildCount()I

    move-result v2

    .line 3499
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 3500
    iget-object v11, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v11, v6}, Lc8/ht;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v5

    .line 3501
    .local v5, "holder":Lc8/Qv;
    invoke-virtual {v5}, Lc8/Qv;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v5}, Lc8/Qv;->isInvalid()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v11}, Lc8/iv;->hasStableIds()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3504
    :cond_0
    iget-object v11, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    iget-object v12, p0, Lc8/Rv;->mState:Lc8/Nv;

    .line 3506
    invoke-static {v5}, Lc8/qv;->buildAdapterChangeFlagsForAnimations(Lc8/Qv;)I

    move-result v13

    .line 3507
    invoke-virtual {v5}, Lc8/Qv;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v14

    .line 3505
    invoke-virtual {v11, v12, v5, v13, v14}, Lc8/qv;->recordPreLayoutInformation(Lc8/Nv;Lc8/Qv;ILjava/util/List;)Lc8/pv;

    move-result-object v0

    .line 3508
    .local v0, "animationInfo":Lc8/pv;
    iget-object v11, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v11, v5, v0}, Lc8/vx;->addToPreLayout(Lc8/Qv;Lc8/pv;)V

    .line 3509
    iget-object v11, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v11, v11, Lc8/Nv;->mTrackOldChangeHolders:Z

    if-eqz v11, :cond_1

    invoke-virtual {v5}, Lc8/Qv;->isUpdated()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v5}, Lc8/Qv;->isRemoved()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3510
    invoke-virtual {v5}, Lc8/Qv;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v5}, Lc8/Qv;->isInvalid()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3511
    invoke-virtual {p0, v5}, Lc8/Rv;->getChangedHolderKey(Lc8/Qv;)J

    move-result-wide v8

    .line 3519
    .local v8, "key":J
    iget-object v11, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v11, v8, v9, v5}, Lc8/vx;->addToOldChangeHolders(JLc8/Qv;)V

    .line 3499
    .end local v0    # "animationInfo":Lc8/pv;
    .end local v8    # "key":J
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3490
    .end local v2    # "count":I
    .end local v5    # "holder":Lc8/Qv;
    .end local v6    # "i":I
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 3523
    :cond_3
    iget-object v11, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v11, v11, Lc8/Nv;->mRunPredictiveAnimations:Z

    if-eqz v11, :cond_8

    .line 3530
    invoke-virtual {p0}, Lc8/Rv;->saveOldPositions()V

    .line 3531
    iget-object v11, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v3, v11, Lc8/Nv;->mStructureChanged:Z

    .line 3532
    .local v3, "didStructureChange":Z
    iget-object v11, p0, Lc8/Rv;->mState:Lc8/Nv;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lc8/Nv;->mStructureChanged:Z

    .line 3534
    iget-object v11, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v12, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    iget-object v13, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v11, v12, v13}, Lc8/xv;->onLayoutChildren(Lc8/Fv;Lc8/Nv;)V

    .line 3535
    iget-object v11, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput-boolean v3, v11, Lc8/Nv;->mStructureChanged:Z

    .line 3537
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    iget-object v11, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v11}, Lc8/ht;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_7

    .line 3538
    iget-object v11, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v11, v6}, Lc8/ht;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3539
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v7

    .line 3540
    .local v7, "viewHolder":Lc8/Qv;
    invoke-virtual {v7}, Lc8/Qv;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_5

    .line 3543
    iget-object v11, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v11, v7}, Lc8/vx;->isInPreLayout(Lc8/Qv;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 3544
    invoke-static {v7}, Lc8/qv;->buildAdapterChangeFlagsForAnimations(Lc8/Qv;)I

    move-result v4

    .line 3545
    .local v4, "flags":I
    const/16 v11, 0x2000

    .line 3546
    invoke-virtual {v7, v11}, Lc8/Qv;->hasAnyOfTheFlags(I)Z

    move-result v10

    .line 3547
    .local v10, "wasHidden":Z
    if-nez v10, :cond_4

    .line 3548
    or-int/lit16 v4, v4, 0x1000

    .line 3550
    :cond_4
    iget-object v11, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    iget-object v12, p0, Lc8/Rv;->mState:Lc8/Nv;

    .line 3551
    invoke-virtual {v7}, Lc8/Qv;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v13

    .line 3550
    invoke-virtual {v11, v12, v7, v4, v13}, Lc8/qv;->recordPreLayoutInformation(Lc8/Nv;Lc8/Qv;ILjava/util/List;)Lc8/pv;

    move-result-object v0

    .line 3552
    .restart local v0    # "animationInfo":Lc8/pv;
    if-eqz v10, :cond_6

    .line 3553
    invoke-virtual {p0, v7, v0}, Lc8/Rv;->recordAnimationInfoIfBouncedHiddenView(Lc8/Qv;Lc8/pv;)V

    .line 3537
    .end local v0    # "animationInfo":Lc8/pv;
    .end local v4    # "flags":I
    .end local v10    # "wasHidden":Z
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3555
    .restart local v0    # "animationInfo":Lc8/pv;
    .restart local v4    # "flags":I
    .restart local v10    # "wasHidden":Z
    :cond_6
    iget-object v11, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v11, v7, v0}, Lc8/vx;->addToAppearedInPreLayoutHolders(Lc8/Qv;Lc8/pv;)V

    goto :goto_3

    .line 3560
    .end local v0    # "animationInfo":Lc8/pv;
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "flags":I
    .end local v7    # "viewHolder":Lc8/Qv;
    .end local v10    # "wasHidden":Z
    :cond_7
    invoke-virtual {p0}, Lc8/Rv;->clearOldPositions()V

    .line 3564
    .end local v3    # "didStructureChange":Z
    .end local v6    # "i":I
    :goto_4
    invoke-virtual {p0}, Lc8/Rv;->onExitLayoutOrScroll()V

    .line 3565
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lc8/Rv;->resumeRequestLayout(Z)V

    .line 3566
    iget-object v11, p0, Lc8/Rv;->mState:Lc8/Nv;

    const/4 v12, 0x2

    iput v12, v11, Lc8/Nv;->mLayoutStep:I

    .line 3567
    return-void

    .line 3562
    :cond_8
    invoke-virtual {p0}, Lc8/Rv;->clearOldPositions()V

    goto :goto_4
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3574
    invoke-virtual {p0}, Lc8/Rv;->eatRequestLayout()V

    .line 3575
    invoke-virtual {p0}, Lc8/Rv;->onEnterLayoutOrScroll()V

    .line 3576
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lc8/Nv;->assertLayoutStep(I)V

    .line 3577
    iget-object v0, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0}, Lc8/ms;->consumeUpdatesInOnePass()V

    .line 3578
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v2, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v2}, Lc8/iv;->getItemCount()I

    move-result v2

    iput v2, v0, Lc8/Nv;->mItemCount:I

    .line 3579
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput v1, v0, Lc8/Nv;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 3582
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput-boolean v1, v0, Lc8/Nv;->mInPreLayout:Z

    .line 3583
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v2, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    iget-object v3, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, v2, v3}, Lc8/xv;->onLayoutChildren(Lc8/Fv;Lc8/Nv;)V

    .line 3585
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput-boolean v1, v0, Lc8/Nv;->mStructureChanged:Z

    .line 3586
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Rv;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 3589
    iget-object v2, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v0, v0, Lc8/Nv;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lc8/Nv;->mRunSimpleAnimations:Z

    .line 3590
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    const/4 v2, 0x4

    iput v2, v0, Lc8/Nv;->mLayoutStep:I

    .line 3591
    invoke-virtual {p0}, Lc8/Rv;->onExitLayoutOrScroll()V

    .line 3592
    invoke-virtual {p0, v1}, Lc8/Rv;->resumeRequestLayout(Z)V

    .line 3593
    return-void

    :cond_0
    move v0, v1

    .line 3589
    goto :goto_0
.end method

.method private dispatchLayoutStep3()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3600
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lc8/Nv;->assertLayoutStep(I)V

    .line 3601
    invoke-virtual {p0}, Lc8/Rv;->eatRequestLayout()V

    .line 3602
    invoke-virtual {p0}, Lc8/Rv;->onEnterLayoutOrScroll()V

    .line 3603
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput v13, v0, Lc8/Nv;->mLayoutStep:I

    .line 3604
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v0, v0, Lc8/Nv;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_5

    .line 3608
    iget-object v0, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v0}, Lc8/ht;->getChildCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_4

    .line 3609
    iget-object v0, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v0, v8}, Lc8/ht;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v2

    .line 3610
    .local v2, "holder":Lc8/Qv;
    invoke-virtual {v2}, Lc8/Qv;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3613
    invoke-virtual {p0, v2}, Lc8/Rv;->getChangedHolderKey(Lc8/Qv;)J

    move-result-wide v10

    .line 3614
    .local v10, "key":J
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    iget-object v9, p0, Lc8/Rv;->mState:Lc8/Nv;

    .line 3615
    invoke-virtual {v0, v9, v2}, Lc8/qv;->recordPostLayoutInformation(Lc8/Nv;Lc8/Qv;)Lc8/pv;

    move-result-object v7

    .line 3616
    .local v7, "animationInfo":Lc8/pv;
    iget-object v0, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v0, v10, v11}, Lc8/vx;->getFromOldChangeHolders(J)Lc8/Qv;

    move-result-object v1

    .line 3617
    .local v1, "oldChangeViewHolder":Lc8/Qv;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lc8/Qv;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3628
    iget-object v0, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v0, v1}, Lc8/vx;->isDisappearing(Lc8/Qv;)Z

    move-result v5

    .line 3630
    .local v5, "oldDisappearing":Z
    iget-object v0, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v0, v2}, Lc8/vx;->isDisappearing(Lc8/Qv;)Z

    move-result v6

    .line 3631
    .local v6, "newDisappearing":Z
    if-eqz v5, :cond_1

    if-ne v1, v2, :cond_1

    .line 3633
    iget-object v0, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v0, v2, v7}, Lc8/vx;->addToPostLayout(Lc8/Qv;Lc8/pv;)V

    .line 3608
    .end local v1    # "oldChangeViewHolder":Lc8/Qv;
    .end local v5    # "oldDisappearing":Z
    .end local v6    # "newDisappearing":Z
    .end local v7    # "animationInfo":Lc8/pv;
    .end local v10    # "key":J
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3635
    .restart local v1    # "oldChangeViewHolder":Lc8/Qv;
    .restart local v5    # "oldDisappearing":Z
    .restart local v6    # "newDisappearing":Z
    .restart local v7    # "animationInfo":Lc8/pv;
    .restart local v10    # "key":J
    :cond_1
    iget-object v0, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v0, v1}, Lc8/vx;->popFromPreLayout(Lc8/Qv;)Lc8/pv;

    move-result-object v3

    .line 3638
    .local v3, "preInfo":Lc8/pv;
    iget-object v0, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v0, v2, v7}, Lc8/vx;->addToPostLayout(Lc8/Qv;Lc8/pv;)V

    .line 3639
    iget-object v0, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v0, v2}, Lc8/vx;->popFromPostLayout(Lc8/Qv;)Lc8/pv;

    move-result-object v4

    .line 3640
    .local v4, "postInfo":Lc8/pv;
    if-nez v3, :cond_2

    .line 3641
    invoke-direct {p0, v10, v11, v2, v1}, Lc8/Rv;->handleMissingPreInfoForChangeError(JLc8/Qv;Lc8/Qv;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    .line 3643
    invoke-direct/range {v0 .. v6}, Lc8/Rv;->animateChange(Lc8/Qv;Lc8/Qv;Lc8/pv;Lc8/pv;ZZ)V

    goto :goto_1

    .line 3648
    .end local v3    # "preInfo":Lc8/pv;
    .end local v4    # "postInfo":Lc8/pv;
    .end local v5    # "oldDisappearing":Z
    .end local v6    # "newDisappearing":Z
    :cond_3
    iget-object v0, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v0, v2, v7}, Lc8/vx;->addToPostLayout(Lc8/Qv;Lc8/pv;)V

    goto :goto_1

    .line 3653
    .end local v1    # "oldChangeViewHolder":Lc8/Qv;
    .end local v2    # "holder":Lc8/Qv;
    .end local v7    # "animationInfo":Lc8/pv;
    .end local v10    # "key":J
    :cond_4
    iget-object v0, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    iget-object v9, p0, Lc8/Rv;->mViewInfoProcessCallback:Lc8/ux;

    invoke-virtual {v0, v9}, Lc8/vx;->process(Lc8/ux;)V

    .line 3656
    .end local v8    # "i":I
    :cond_5
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v9, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, v9}, Lc8/xv;->removeAndRecycleScrapInt(Lc8/Fv;)V

    .line 3657
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v9, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget v9, v9, Lc8/Nv;->mItemCount:I

    iput v9, v0, Lc8/Nv;->mPreviousLayoutItemCount:I

    .line 3658
    iput-boolean v12, p0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    .line 3659
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput-boolean v12, v0, Lc8/Nv;->mRunSimpleAnimations:Z

    .line 3661
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput-boolean v12, v0, Lc8/Nv;->mRunPredictiveAnimations:Z

    .line 3662
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iput-boolean v12, v0, Lc8/xv;->mRequestedSimpleAnimations:Z

    .line 3663
    iget-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    iget-object v0, v0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 3664
    iget-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    iget-object v0, v0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3666
    :cond_6
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-boolean v0, v0, Lc8/xv;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v0, :cond_7

    .line 3669
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iput v12, v0, Lc8/xv;->mPrefetchMaxCountObserved:I

    .line 3670
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iput-boolean v12, v0, Lc8/xv;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 3671
    iget-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0}, Lc8/Fv;->updateViewCacheSize()V

    .line 3674
    :cond_7
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v9, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, v9}, Lc8/xv;->onLayoutCompleted(Lc8/Nv;)V

    .line 3675
    invoke-virtual {p0}, Lc8/Rv;->onExitLayoutOrScroll()V

    .line 3676
    invoke-virtual {p0, v12}, Lc8/Rv;->resumeRequestLayout(Z)V

    .line 3677
    iget-object v0, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v0}, Lc8/vx;->clear()V

    .line 3678
    iget-object v0, p0, Lc8/Rv;->mMinMaxLayoutPositions:[I

    aget v0, v0, v12

    iget-object v9, p0, Lc8/Rv;->mMinMaxLayoutPositions:[I

    aget v9, v9, v13

    invoke-direct {p0, v0, v9}, Lc8/Rv;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3679
    invoke-virtual {p0, v12, v12}, Lc8/Rv;->dispatchOnScrolled(II)V

    .line 3681
    :cond_8
    invoke-direct {p0}, Lc8/Rv;->recoverFocusFromState()V

    .line 3682
    invoke-direct {p0}, Lc8/Rv;->resetFocusInfo()V

    .line 3683
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2638
    .local v0, "action":I
    iget-object v5, p0, Lc8/Rv;->mActiveOnItemTouchListener:Lc8/Bv;

    if-eqz v5, :cond_0

    .line 2639
    if-nez v0, :cond_2

    .line 2641
    iput-object v6, p0, Lc8/Rv;->mActiveOnItemTouchListener:Lc8/Bv;

    .line 2654
    :cond_0
    if-eqz v0, :cond_5

    .line 2655
    iget-object v5, p0, Lc8/Rv;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2656
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 2657
    iget-object v5, p0, Lc8/Rv;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Bv;

    .line 2658
    .local v2, "listener":Lc8/Bv;
    invoke-interface {v2, p0, p1}, Lc8/Bv;->onInterceptTouchEvent(Lc8/Rv;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2659
    iput-object v2, p0, Lc8/Rv;->mActiveOnItemTouchListener:Lc8/Bv;

    .line 2664
    .end local v1    # "i":I
    .end local v2    # "listener":Lc8/Bv;
    .end local v3    # "listenerCount":I
    :cond_1
    :goto_1
    return v4

    .line 2643
    :cond_2
    iget-object v5, p0, Lc8/Rv;->mActiveOnItemTouchListener:Lc8/Bv;

    invoke-interface {v5, p0, p1}, Lc8/Bv;->onTouchEvent(Lc8/Rv;Landroid/view/MotionEvent;)V

    .line 2644
    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_1

    .line 2646
    :cond_3
    iput-object v6, p0, Lc8/Rv;->mActiveOnItemTouchListener:Lc8/Bv;

    goto :goto_1

    .line 2656
    .restart local v1    # "i":I
    .restart local v2    # "listener":Lc8/Bv;
    .restart local v3    # "listenerCount":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2664
    .end local v1    # "i":I
    .end local v2    # "listener":Lc8/Bv;
    .end local v3    # "listenerCount":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    .line 2620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2621
    .local v0, "action":I
    if-eq v0, v5, :cond_0

    if-nez v0, :cond_1

    .line 2622
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lc8/Rv;->mActiveOnItemTouchListener:Lc8/Bv;

    .line 2625
    :cond_1
    iget-object v4, p0, Lc8/Rv;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2626
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 2627
    iget-object v4, p0, Lc8/Rv;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Bv;

    .line 2628
    .local v2, "listener":Lc8/Bv;
    invoke-interface {v2, p0, p1}, Lc8/Bv;->onInterceptTouchEvent(Lc8/Rv;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v0, v5, :cond_2

    .line 2629
    iput-object v2, p0, Lc8/Rv;->mActiveOnItemTouchListener:Lc8/Bv;

    .line 2630
    const/4 v4, 0x1

    .line 2633
    .end local v2    # "listener":Lc8/Bv;
    :goto_1
    return v4

    .line 2626
    .restart local v2    # "listener":Lc8/Bv;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2633
    .end local v2    # "listener":Lc8/Bv;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 10
    .param p1, "into"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 3747
    iget-object v6, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v6}, Lc8/ht;->getChildCount()I

    move-result v0

    .line 3748
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 3749
    aput v7, p1, v8

    .line 3750
    aput v7, p1, v9

    .line 3770
    :goto_0
    return-void

    .line 3753
    :cond_0
    const v4, 0x7fffffff

    .line 3754
    .local v4, "minPositionPreLayout":I
    const/high16 v3, -0x80000000

    .line 3755
    .local v3, "maxPositionPreLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 3756
    iget-object v6, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v6, v2}, Lc8/ht;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    .line 3757
    .local v1, "holder":Lc8/Qv;
    invoke-virtual {v1}, Lc8/Qv;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3760
    invoke-virtual {v1}, Lc8/Qv;->getLayoutPosition()I

    move-result v5

    .line 3761
    .local v5, "pos":I
    if-ge v5, v4, :cond_1

    .line 3762
    move v4, v5

    .line 3764
    :cond_1
    if-le v5, v3, :cond_2

    .line 3765
    move v3, v5

    .line 3755
    .end local v5    # "pos":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3768
    .end local v1    # "holder":Lc8/Qv;
    :cond_3
    aput v4, p1, v8

    .line 3769
    aput v3, p1, v9

    goto :goto_0
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Lc8/Rv;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5154
    instance-of v6, p0, Landroid/view/ViewGroup;

    if-nez v6, :cond_0

    move-object p0, v5

    .line 5169
    .end local p0    # "view":Landroid/view/View;
    .local v1, "count":I
    .local v3, "i":I
    .local v4, "parent":Landroid/view/ViewGroup;
    :goto_0
    return-object p0

    .line 5157
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v4    # "parent":Landroid/view/ViewGroup;
    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    instance-of v6, p0, Lc8/Rv;

    if-eqz v6, :cond_1

    .line 5158
    check-cast p0, Lc8/Rv;

    goto :goto_0

    :cond_1
    move-object v4, p0

    .line 5160
    check-cast v4, Landroid/view/ViewGroup;

    .line 5161
    .restart local v4    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5162
    .restart local v1    # "count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 5163
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5164
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lc8/Rv;->findNestedRecyclerView(Landroid/view/View;)Lc8/Rv;

    move-result-object v2

    .line 5165
    .local v2, "descendant":Lc8/Rv;
    if-eqz v2, :cond_2

    move-object p0, v2

    .line 5166
    goto :goto_0

    .line 5162
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "descendant":Lc8/Rv;
    :cond_3
    move-object p0, v5

    .line 5169
    goto :goto_0
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3363
    iget-object v6, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget v6, v6, Lc8/Nv;->mFocusedItemPosition:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget v4, v6, Lc8/Nv;->mFocusedItemPosition:I

    .line 3366
    .local v4, "startFocusSearchIndex":I
    :goto_0
    iget-object v6, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v6}, Lc8/Nv;->getItemCount()I

    move-result v1

    .line 3367
    .local v1, "itemCount":I
    move v0, v4

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 3368
    invoke-virtual {p0, v0}, Lc8/Rv;->findViewHolderForAdapterPosition(I)Lc8/Qv;

    move-result-object v3

    .line 3369
    .local v3, "nextFocus":Lc8/Qv;
    if-eqz v3, :cond_3

    .line 3372
    iget-object v6, v3, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3373
    iget-object v5, v3, Lc8/Qv;->itemView:Landroid/view/View;

    .line 3386
    .end local v3    # "nextFocus":Lc8/Qv;
    :cond_0
    :goto_2
    return-object v5

    .line 3363
    .end local v0    # "i":I
    .end local v1    # "itemCount":I
    .end local v4    # "startFocusSearchIndex":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3367
    .restart local v0    # "i":I
    .restart local v1    # "itemCount":I
    .restart local v3    # "nextFocus":Lc8/Qv;
    .restart local v4    # "startFocusSearchIndex":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3376
    .end local v3    # "nextFocus":Lc8/Qv;
    :cond_3
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3377
    .local v2, "limit":I
    add-int/lit8 v0, v2, -0x1

    :goto_3
    if-ltz v0, :cond_0

    .line 3378
    invoke-virtual {p0, v0}, Lc8/Rv;->findViewHolderForAdapterPosition(I)Lc8/Qv;

    move-result-object v3

    .line 3379
    .restart local v3    # "nextFocus":Lc8/Qv;
    if-eqz v3, :cond_0

    .line 3382
    iget-object v6, v3, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3383
    iget-object v5, v3, Lc8/Qv;->itemView:Landroid/view/View;

    goto :goto_2

    .line 3377
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 4269
    if-nez p0, :cond_0

    .line 4270
    const/4 v0, 0x0

    .line 4272
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    iget-object v0, v0, Lc8/yv;->mViewHolder:Lc8/Qv;

    goto :goto_0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 4543
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lc8/yv;

    .line 4544
    .local v1, "lp":Lc8/yv;
    iget-object v0, v1, Lc8/yv;->mDecorInsets:Landroid/graphics/Rect;

    .line 4545
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Lc8/yv;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4546
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Lc8/yv;->topMargin:I

    sub-int/2addr v3, v4

    .line 4547
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v1, Lc8/yv;->rightMargin:I

    add-int/2addr v4, v5

    .line 4548
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v1, Lc8/yv;->bottomMargin:I

    add-int/2addr v5, v6

    .line 4545
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4549
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3464
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3465
    .local v1, "lastKnownId":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3466
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 3467
    .restart local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3468
    .local v0, "id":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 3469
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_0

    .line 3472
    .end local v0    # "id":I
    :cond_1
    return v1
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2e

    .line 690
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 696
    .end local p2    # "className":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 693
    .restart local p2    # "className":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lc8/Rv;

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getPackage(Ljava/lang/Class;)Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private getScrollFactor()F
    .locals 4

    .prologue
    .line 2990
    iget v1, p0, Lc8/Rv;->mScrollFactor:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2991
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2992
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lc8/Rv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2995
    invoke-virtual {p0}, Lc8/Rv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2994
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lc8/Rv;->mScrollFactor:F

    .line 3000
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iget v1, p0, Lc8/Rv;->mScrollFactor:F

    :goto_0
    return v1

    .line 2997
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;
    .locals 1

    .prologue
    .line 12568
    iget-object v0, p0, Lc8/Rv;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    .line 12569
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/Rv;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 12571
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLc8/Qv;Lc8/Qv;)V
    .locals 9
    .param p1, "key"    # J
    .param p3, "holder"    # Lc8/Qv;
    .param p4, "oldChangeViewHolder"    # Lc8/Qv;

    .prologue
    .line 3703
    iget-object v6, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v6}, Lc8/ht;->getChildCount()I

    move-result v0

    .line 3704
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3705
    iget-object v6, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v6, v1}, Lc8/ht;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3706
    .local v3, "view":Landroid/view/View;
    invoke-static {v3}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v2

    .line 3707
    .local v2, "other":Lc8/Qv;
    if-eq v2, p3, :cond_1

    .line 3710
    invoke-virtual {p0, v2}, Lc8/Rv;->getChangedHolderKey(Lc8/Qv;)J

    move-result-wide v4

    .line 3711
    .local v4, "otherKey":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_1

    .line 3712
    iget-object v6, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v6}, Lc8/iv;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3713
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3717
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3704
    .end local v4    # "otherKey":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3725
    .end local v2    # "other":Lc8/Qv;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    const-string/jumbo v6, "RecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " cannot be found but it is necessary for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    return-void
.end method

.method private hasUpdatedView()Z
    .locals 4

    .prologue
    .line 1657
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3}, Lc8/ht;->getChildCount()I

    move-result v0

    .line 1658
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1659
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3, v2}, Lc8/ht;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    .line 1660
    .local v1, "holder":Lc8/Qv;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc8/Qv;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1663
    invoke-virtual {v1}, Lc8/Qv;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1664
    const/4 v3, 0x1

    .line 1667
    .end local v1    # "holder":Lc8/Qv;
    :goto_1
    return v3

    .line 1658
    .restart local v1    # "holder":Lc8/Qv;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1667
    .end local v1    # "holder":Lc8/Qv;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initChildrenHelper()V
    .locals 2

    .prologue
    .line 700
    new-instance v0, Lc8/ht;

    new-instance v1, Lc8/gv;

    invoke-direct {v1, p0}, Lc8/gv;-><init>(Lc8/Rv;)V

    invoke-direct {v0, v1}, Lc8/ht;-><init>(Lc8/gt;)V

    iput-object v0, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    .line 809
    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2362
    if-eqz p2, :cond_0

    if-ne p2, p0, :cond_2

    :cond_0
    move v2, v3

    .line 2382
    :cond_1
    :goto_0
    return v2

    .line 2365
    :cond_2
    if-eqz p1, :cond_1

    .line 2369
    if-eq p3, v5, :cond_3

    if-ne p3, v2, :cond_8

    .line 2370
    :cond_3
    iget-object v4, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v4}, Lc8/xv;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    .line 2371
    .local v1, "rtl":Z
    :goto_1
    if-ne p3, v5, :cond_4

    move v3, v2

    :cond_4
    xor-int/2addr v3, v1

    if-eqz v3, :cond_6

    const/16 v0, 0x42

    .line 2373
    .local v0, "absHorizontal":I
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lc8/Rv;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2376
    if-ne p3, v5, :cond_7

    .line 2377
    const/16 v2, 0x82

    invoke-direct {p0, p1, p2, v2}, Lc8/Rv;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    goto :goto_0

    .end local v0    # "absHorizontal":I
    .end local v1    # "rtl":Z
    :cond_5
    move v1, v3

    .line 2370
    goto :goto_1

    .line 2371
    .restart local v1    # "rtl":Z
    :cond_6
    const/16 v0, 0x11

    goto :goto_2

    .line 2379
    .restart local v0    # "absHorizontal":I
    :cond_7
    const/16 v2, 0x21

    invoke-direct {p0, p1, p2, v2}, Lc8/Rv;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    goto :goto_0

    .line 2382
    .end local v0    # "absHorizontal":I
    .end local v1    # "rtl":Z
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lc8/Rv;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    goto :goto_0
.end method

.method private isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2391
    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2392
    iget-object v2, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2393
    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lc8/Rv;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2394
    iget-object v2, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lc8/Rv;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2395
    sparse-switch p3, :sswitch_data_0

    .line 2413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "direction must be absolute. received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2397
    :sswitch_0
    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_2

    .line 2409
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 2397
    goto :goto_0

    .line 2401
    :sswitch_1
    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    .line 2405
    :sswitch_2
    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_5

    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0

    .line 2409
    :sswitch_3
    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_7

    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lc8/Rv;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_1

    :cond_8
    move v0, v1

    goto :goto_0

    .line 2395
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 2940
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2941
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lc8/Rv;->mScrollPointerId:I

    if-ne v2, v3, :cond_0

    .line 2943
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 2944
    .local v1, "newIndex":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lc8/Rv;->mScrollPointerId:I

    .line 2945
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lc8/Rv;->mLastTouchX:I

    iput v2, p0, Lc8/Rv;->mInitialTouchX:I

    .line 2946
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lc8/Rv;->mLastTouchY:I

    iput v2, p0, Lc8/Rv;->mInitialTouchY:I

    .line 2948
    .end local v1    # "newIndex":I
    :cond_0
    return-void

    .line 2943
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .prologue
    .line 3234
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3244
    iget-boolean v3, p0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 3247
    iget-object v3, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v3}, Lc8/ms;->reset()V

    .line 3248
    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v3, p0}, Lc8/xv;->onItemsChanged(Lc8/Rv;)V

    .line 3253
    :cond_0
    invoke-direct {p0}, Lc8/Rv;->predictiveItemAnimationsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3254
    iget-object v3, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v3}, Lc8/ms;->preProcess()V

    .line 3258
    :goto_0
    iget-boolean v3, p0, Lc8/Rv;->mItemsAddedOrRemoved:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lc8/Rv;->mItemsChanged:Z

    if-eqz v3, :cond_5

    :cond_1
    move v0, v2

    .line 3259
    .local v0, "animationTypeSupported":Z
    :goto_1
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v3, p0, Lc8/Rv;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-boolean v3, v3, Lc8/xv;->mRequestedSimpleAnimations:Z

    if-eqz v3, :cond_6

    :cond_2
    iget-boolean v3, p0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    .line 3265
    invoke-virtual {v3}, Lc8/iv;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    move v3, v2

    :goto_2
    iput-boolean v3, v4, Lc8/Nv;->mRunSimpleAnimations:Z

    .line 3266
    iget-object v3, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v4, v4, Lc8/Nv;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v4, p0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_7

    .line 3269
    invoke-direct {p0}, Lc8/Rv;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    iput-boolean v2, v3, Lc8/Nv;->mRunPredictiveAnimations:Z

    .line 3270
    return-void

    .line 3256
    .end local v0    # "animationTypeSupported":Z
    :cond_4
    iget-object v3, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v3}, Lc8/ms;->consumeUpdatesInOnePass()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 3258
    goto :goto_1

    .restart local v0    # "animationTypeSupported":Z
    :cond_6
    move v3, v1

    .line 3265
    goto :goto_2

    :cond_7
    move v2, v1

    .line 3269
    goto :goto_3
.end method

.method private pullGlows(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "overscrollX"    # F
    .param p3, "y"    # F
    .param p4, "overscrollY"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 2105
    const/4 v0, 0x0

    .line 2106
    .local v0, "invalidate":Z
    cmpg-float v1, p2, v4

    if-gez v1, :cond_4

    .line 2107
    invoke-virtual {p0}, Lc8/Rv;->ensureLeftGlow()V

    .line 2108
    iget-object v1, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v2, p2

    invoke-virtual {p0}, Lc8/Rv;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lc8/Rv;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2109
    const/4 v0, 0x1

    .line 2118
    :cond_0
    :goto_0
    cmpg-float v1, p4, v4

    if-gez v1, :cond_5

    .line 2119
    invoke-virtual {p0}, Lc8/Rv;->ensureTopGlow()V

    .line 2120
    iget-object v1, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v2, p4

    invoke-virtual {p0}, Lc8/Rv;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lc8/Rv;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2121
    const/4 v0, 0x1

    .line 2130
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    cmpl-float v1, p2, v4

    if-nez v1, :cond_2

    cmpl-float v1, p4, v4

    if-eqz v1, :cond_3

    .line 2131
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2133
    :cond_3
    return-void

    .line 2111
    :cond_4
    cmpl-float v1, p2, v4

    if-lez v1, :cond_0

    .line 2112
    invoke-virtual {p0}, Lc8/Rv;->ensureRightGlow()V

    .line 2113
    iget-object v1, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {p0}, Lc8/Rv;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2114
    const/4 v0, 0x1

    goto :goto_0

    .line 2123
    :cond_5
    cmpl-float v1, p4, v4

    if-lez v1, :cond_1

    .line 2124
    invoke-virtual {p0}, Lc8/Rv;->ensureBottomGlow()V

    .line 2125
    iget-object v1, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    invoke-virtual {p0}, Lc8/Rv;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2126
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private recoverFocusFromState()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 3390
    iget-boolean v4, p0, Lc8/Rv;->mPreserveFocusAfterLayout:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lc8/Rv;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3391
    invoke-virtual {p0}, Lc8/Rv;->getDescendantFocusability()I

    move-result v4

    const/high16 v5, 0x60000

    if-eq v4, v5, :cond_0

    .line 3392
    invoke-virtual {p0}, Lc8/Rv;->getDescendantFocusability()I

    move-result v4

    const/high16 v5, 0x20000

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lc8/Rv;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3461
    :cond_0
    :goto_0
    return-void

    .line 3400
    :cond_1
    invoke-virtual {p0}, Lc8/Rv;->isFocused()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3401
    invoke-virtual {p0}, Lc8/Rv;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 3402
    .local v2, "focusedChild":Landroid/view/View;
    sget-boolean v4, Lc8/Rv;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v4, :cond_3

    .line 3403
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3415
    :cond_2
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4}, Lc8/ht;->getChildCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 3418
    invoke-virtual {p0}, Lc8/Rv;->requestFocus()Z

    goto :goto_0

    .line 3421
    :cond_3
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4, v2}, Lc8/ht;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3427
    .end local v2    # "focusedChild":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    .line 3431
    .local v1, "focusTarget":Lc8/Qv;
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-wide v4, v4, Lc8/Nv;->mFocusedItemId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    iget-object v4, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v4}, Lc8/iv;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3432
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-wide v4, v4, Lc8/Nv;->mFocusedItemId:J

    invoke-virtual {p0, v4, v5}, Lc8/Rv;->findViewHolderForItemId(J)Lc8/Qv;

    move-result-object v1

    .line 3434
    :cond_5
    const/4 v3, 0x0

    .line 3435
    .local v3, "viewToFocus":Landroid/view/View;
    if-eqz v1, :cond_6

    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    iget-object v5, v1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lc8/ht;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v1, Lc8/Qv;->itemView:Landroid/view/View;

    .line 3436
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3437
    :cond_6
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4}, Lc8/ht;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 3444
    invoke-direct {p0}, Lc8/Rv;->findNextViewToFocus()Landroid/view/View;

    move-result-object v3

    .line 3452
    :cond_7
    :goto_1
    if-eqz v3, :cond_0

    .line 3453
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget v4, v4, Lc8/Nv;->mFocusedSubChildId:I

    int-to-long v4, v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 3454
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget v4, v4, Lc8/Nv;->mFocusedSubChildId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3455
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3456
    move-object v3, v0

    .line 3459
    .end local v0    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 3449
    :cond_9
    iget-object v3, v1, Lc8/Qv;->itemView:Landroid/view/View;

    goto :goto_1
.end method

.method private releaseGlows()V
    .locals 2

    .prologue
    .line 2136
    const/4 v0, 0x0

    .line 2137
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 2138
    :cond_0
    iget-object v1, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2139
    :cond_1
    iget-object v1, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2140
    :cond_2
    iget-object v1, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2141
    :cond_3
    if-eqz v0, :cond_4

    .line 2142
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2144
    :cond_4
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "focused"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2434
    if-eqz p2, :cond_2

    move-object v9, p2

    .line 2435
    .local v9, "rectView":Landroid/view/View;
    :goto_0
    iget-object v0, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2440
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 2441
    .local v6, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v6, Lc8/yv;

    if-eqz v0, :cond_0

    move-object v8, v6

    .line 2443
    check-cast v8, Lc8/yv;

    .line 2444
    .local v8, "lp":Lc8/yv;
    iget-boolean v0, v8, Lc8/yv;->mInsetsDirty:Z

    if-nez v0, :cond_0

    .line 2445
    iget-object v7, v8, Lc8/yv;->mDecorInsets:Landroid/graphics/Rect;

    .line 2446
    .local v7, "insets":Landroid/graphics/Rect;
    iget-object v0, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2447
    iget-object v0, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2448
    iget-object v0, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2449
    iget-object v0, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2453
    .end local v7    # "insets":Landroid/graphics/Rect;
    .end local v8    # "lp":Lc8/yv;
    :cond_0
    if-eqz p2, :cond_1

    .line 2454
    iget-object v0, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Lc8/Rv;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2455
    iget-object v0, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lc8/Rv;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2457
    :cond_1
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v3, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v2, p0, Lc8/Rv;->mFirstLayoutComplete:Z

    if-nez v2, :cond_3

    move v4, v5

    :goto_1
    if-nez p2, :cond_4

    :goto_2
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lc8/xv;->requestChildRectangleOnScreen(Lc8/Rv;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 2459
    return-void

    .end local v6    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "rectView":Landroid/view/View;
    :cond_2
    move-object v9, p1

    .line 2434
    goto :goto_0

    .restart local v6    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v9    # "rectView":Landroid/view/View;
    :cond_3
    move v4, v1

    .line 2457
    goto :goto_1

    :cond_4
    move v5, v1

    goto :goto_2
.end method

.method private resetFocusInfo()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 3348
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lc8/Nv;->mFocusedItemId:J

    .line 3349
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput v1, v0, Lc8/Nv;->mFocusedItemPosition:I

    .line 3350
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput v1, v0, Lc8/Nv;->mFocusedSubChildId:I

    .line 3351
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .prologue
    .line 2927
    iget-object v0, p0, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2928
    iget-object v0, p0, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2930
    :cond_0
    invoke-virtual {p0}, Lc8/Rv;->stopNestedScroll()V

    .line 2931
    invoke-direct {p0}, Lc8/Rv;->releaseGlows()V

    .line 2932
    return-void
.end method

.method private saveFocusInfo()V
    .locals 5

    .prologue
    .line 3327
    const/4 v0, 0x0

    .line 3328
    .local v0, "child":Landroid/view/View;
    iget-boolean v2, p0, Lc8/Rv;->mPreserveFocusAfterLayout:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lc8/Rv;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v2, :cond_0

    .line 3329
    invoke-virtual {p0}, Lc8/Rv;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3332
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 3333
    .local v1, "focusedVh":Lc8/Qv;
    :goto_0
    if-nez v1, :cond_2

    .line 3334
    invoke-direct {p0}, Lc8/Rv;->resetFocusInfo()V

    .line 3345
    :goto_1
    return-void

    .line 3332
    .end local v1    # "focusedVh":Lc8/Qv;
    :cond_1
    invoke-virtual {p0, v0}, Lc8/Rv;->findContainingViewHolder(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    goto :goto_0

    .line 3336
    .restart local v1    # "focusedVh":Lc8/Qv;
    :cond_2
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v2, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v2}, Lc8/iv;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lc8/Qv;->getItemId()J

    move-result-wide v2

    :goto_2
    iput-wide v2, v4, Lc8/Nv;->mFocusedItemId:J

    .line 3340
    iget-object v3, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v2, p0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    .line 3342
    :goto_3
    iput v2, v3, Lc8/Nv;->mFocusedItemPosition:I

    .line 3343
    iget-object v2, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v3, v1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lc8/Rv;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lc8/Nv;->mFocusedSubChildId:I

    goto :goto_1

    .line 3336
    :cond_3
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 3341
    :cond_4
    invoke-virtual {v1}, Lc8/Qv;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Lc8/Qv;->mOldPosition:I

    goto :goto_3

    .line 3342
    :cond_5
    invoke-virtual {v1}, Lc8/Qv;->getAdapterPosition()I

    move-result v2

    goto :goto_3
.end method

.method private setAdapterInternal(Lc8/iv;ZZ)V
    .locals 3
    .param p1, "adapter"    # Lc8/iv;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .prologue
    .line 1038
    iget-object v1, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v1, :cond_0

    .line 1039
    iget-object v1, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    iget-object v2, p0, Lc8/Rv;->mObserver:Lc8/Hv;

    invoke-virtual {v1, v2}, Lc8/iv;->unregisterAdapterDataObserver(Lc8/kv;)V

    .line 1040
    iget-object v1, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v1, p0}, Lc8/iv;->onDetachedFromRecyclerView(Lc8/Rv;)V

    .line 1042
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    .line 1043
    :cond_1
    invoke-virtual {p0}, Lc8/Rv;->removeAndRecycleViews()V

    .line 1045
    :cond_2
    iget-object v1, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v1}, Lc8/ms;->reset()V

    .line 1046
    iget-object v0, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    .line 1047
    .local v0, "oldAdapter":Lc8/iv;
    iput-object p1, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    .line 1048
    if-eqz p1, :cond_3

    .line 1049
    iget-object v1, p0, Lc8/Rv;->mObserver:Lc8/Hv;

    invoke-virtual {p1, v1}, Lc8/iv;->registerAdapterDataObserver(Lc8/kv;)V

    .line 1050
    invoke-virtual {p1, p0}, Lc8/iv;->onAttachedToRecyclerView(Lc8/Rv;)V

    .line 1052
    :cond_3
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v1, :cond_4

    .line 1053
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v2, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v1, v0, v2}, Lc8/xv;->onAdapterChanged(Lc8/iv;Lc8/iv;)V

    .line 1055
    :cond_4
    iget-object v1, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    iget-object v2, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v1, v0, v2, p2}, Lc8/Fv;->onAdapterChanged(Lc8/iv;Lc8/iv;Z)V

    .line 1056
    iget-object v1, p0, Lc8/Rv;->mState:Lc8/Nv;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lc8/Nv;->mStructureChanged:Z

    .line 1057
    invoke-virtual {p0}, Lc8/Rv;->markKnownViewsInvalid()V

    .line 1058
    return-void
.end method

.method private stopScrollersInternal()V
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lc8/Rv;->mViewFlinger:Lc8/Pv;

    invoke-virtual {v0}, Lc8/Pv;->stop()V

    .line 2077
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v0, :cond_0

    .line 2078
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->stopSmoothScroller()V

    .line 2080
    :cond_0
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 2166
    if-gez p1, :cond_4

    .line 2167
    invoke-virtual {p0}, Lc8/Rv;->ensureLeftGlow()V

    .line 2168
    iget-object v0, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 2174
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 2175
    invoke-virtual {p0}, Lc8/Rv;->ensureTopGlow()V

    .line 2176
    iget-object v0, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 2182
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 2183
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2185
    :cond_3
    return-void

    .line 2169
    :cond_4
    if-lez p1, :cond_0

    .line 2170
    invoke-virtual {p0}, Lc8/Rv;->ensureRightGlow()V

    .line 2171
    iget-object v0, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_0

    .line 2177
    :cond_5
    if-lez p2, :cond_1

    .line 2178
    invoke-virtual {p0}, Lc8/Rv;->ensureBottomGlow()V

    .line 2179
    iget-object v0, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2468
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0, p0, p1, p2, p3}, Lc8/xv;->onAddFocusables(Lc8/Rv;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2469
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2471
    :cond_1
    return-void
.end method

.method public addItemDecoration(Lc8/sv;)V
    .locals 1
    .param p1, "decor"    # Lc8/sv;

    .prologue
    .line 1433
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lc8/Rv;->addItemDecoration(Lc8/sv;I)V

    .line 1434
    return-void
.end method

.method public addItemDecoration(Lc8/sv;I)V
    .locals 2
    .param p1, "decor"    # Lc8/sv;
    .param p2, "index"    # I

    .prologue
    .line 1404
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    const-string/jumbo v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lc8/xv;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1408
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Rv;->setWillNotDraw(Z)V

    .line 1411
    :cond_1
    if-gez p2, :cond_2

    .line 1412
    iget-object v0, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    :goto_0
    invoke-virtual {p0}, Lc8/Rv;->markItemDecorInsetsDirty()V

    .line 1417
    invoke-virtual {p0}, Lc8/Rv;->requestLayout()V

    .line 1418
    return-void

    .line 1414
    :cond_2
    iget-object v0, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnChildAttachStateChangeListener(Lc8/zv;)V
    .locals 1
    .param p1, "listener"    # Lc8/zv;

    .prologue
    .line 1113
    iget-object v0, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1116
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    return-void
.end method

.method public addOnItemTouchListener(Lc8/Bv;)V
    .locals 1
    .param p1, "listener"    # Lc8/Bv;

    .prologue
    .line 2604
    iget-object v0, p0, Lc8/Rv;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2605
    return-void
.end method

.method public addOnScrollListener(Lc8/Cv;)V
    .locals 1
    .param p1, "listener"    # Lc8/Cv;

    .prologue
    .line 1501
    iget-object v0, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    .line 1504
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1505
    return-void
.end method

.method animateAppearance(Lc8/Qv;Lc8/pv;Lc8/pv;)V
    .locals 1
    .param p1, "itemHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3803
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc8/Qv;->setIsRecyclable(Z)V

    .line 3804
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    invoke-virtual {v0, p1, p2, p3}, Lc8/qv;->animateAppearance(Lc8/Qv;Lc8/pv;Lc8/pv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3805
    invoke-virtual {p0}, Lc8/Rv;->postAnimationRunner()V

    .line 3807
    :cond_0
    return-void
.end method

.method animateDisappearance(Lc8/Qv;Lc8/pv;Lc8/pv;)V
    .locals 1
    .param p1, "holder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3811
    invoke-direct {p0, p1}, Lc8/Rv;->addAnimatingView(Lc8/Qv;)V

    .line 3812
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc8/Qv;->setIsRecyclable(Z)V

    .line 3813
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    invoke-virtual {v0, p1, p2, p3}, Lc8/qv;->animateDisappearance(Lc8/Qv;Lc8/pv;Lc8/pv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3814
    invoke-virtual {p0}, Lc8/Rv;->postAnimationRunner()V

    .line 3816
    :cond_0
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2555
    invoke-virtual {p0}, Lc8/Rv;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2556
    if-nez p1, :cond_0

    .line 2557
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2560
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2563
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2573
    invoke-virtual {p0}, Lc8/Rv;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2574
    if-nez p1, :cond_0

    .line 2575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2578
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2580
    :cond_1
    iget v0, p0, Lc8/Rv;->mDispatchScrollCounter:I

    if-lez v0, :cond_2

    .line 2581
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2588
    :cond_2
    return-void
.end method

.method canReuseUpdatedViewHolder(Lc8/Qv;)Z
    .locals 2
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 4114
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    .line 4115
    invoke-virtual {p1}, Lc8/Qv;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    .line 4114
    invoke-virtual {v0, p1, v1}, Lc8/qv;->canReuseUpdatedViewHolder(Lc8/Qv;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3940
    instance-of v0, p1, Lc8/yv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    check-cast p1, Lc8/yv;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Lc8/xv;->checkLayoutParams(Lc8/yv;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 4

    .prologue
    .line 3994
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v0

    .line 3995
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3996
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3, v2}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    .line 3997
    .local v1, "holder":Lc8/Qv;
    invoke-virtual {v1}, Lc8/Qv;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3998
    invoke-virtual {v1}, Lc8/Qv;->clearOldPosition()V

    .line 3995
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4001
    .end local v1    # "holder":Lc8/Qv;
    :cond_1
    iget-object v3, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v3}, Lc8/Fv;->clearOldPositions()V

    .line 4002
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1139
    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1525
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1776
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v1, :cond_1

    .line 1779
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v1}, Lc8/xv;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, v1}, Lc8/xv;->computeHorizontalScrollExtent(Lc8/Nv;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1751
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v1, :cond_1

    .line 1754
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v1}, Lc8/xv;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, v1}, Lc8/xv;->computeHorizontalScrollOffset(Lc8/Nv;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1799
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v1, :cond_1

    .line 1802
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v1}, Lc8/xv;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, v1}, Lc8/xv;->computeHorizontalScrollRange(Lc8/Nv;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1848
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v1, :cond_1

    .line 1851
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v1}, Lc8/xv;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, v1}, Lc8/xv;->computeVerticalScrollExtent(Lc8/Nv;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1824
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v1, :cond_1

    .line 1827
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v1}, Lc8/xv;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, v1}, Lc8/xv;->computeVerticalScrollOffset(Lc8/Nv;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1871
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v1, :cond_1

    .line 1874
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v1}, Lc8/xv;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, v1}, Lc8/xv;->computeVerticalScrollRange(Lc8/Nv;)I

    move-result v0

    goto :goto_0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 2147
    const/4 v0, 0x0

    .line 2148
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 2149
    iget-object v1, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 2151
    :cond_0
    iget-object v1, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 2152
    iget-object v1, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2154
    :cond_1
    iget-object v1, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 2155
    iget-object v1, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2157
    :cond_2
    iget-object v1, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 2158
    iget-object v1, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2160
    :cond_3
    if-eqz v0, :cond_4

    .line 2161
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2163
    :cond_4
    return-void
.end method

.method consumePendingUpdateOperations()V
    .locals 2

    .prologue
    .line 1616
    iget-boolean v0, p0, Lc8/Rv;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_2

    .line 1617
    :cond_0
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1618
    invoke-virtual {p0}, Lc8/Rv;->dispatchLayout()V

    .line 1619
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1651
    :cond_1
    :goto_0
    return-void

    .line 1622
    :cond_2
    iget-object v0, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0}, Lc8/ms;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    iget-object v0, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lc8/ms;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    const/16 v1, 0xb

    .line 1629
    invoke-virtual {v0, v1}, Lc8/ms;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1631
    const-string/jumbo v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {p0}, Lc8/Rv;->eatRequestLayout()V

    .line 1633
    invoke-virtual {p0}, Lc8/Rv;->onEnterLayoutOrScroll()V

    .line 1634
    iget-object v0, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0}, Lc8/ms;->preProcess()V

    .line 1635
    iget-boolean v0, p0, Lc8/Rv;->mLayoutRequestEaten:Z

    if-nez v0, :cond_3

    .line 1636
    invoke-direct {p0}, Lc8/Rv;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1637
    invoke-virtual {p0}, Lc8/Rv;->dispatchLayout()V

    .line 1643
    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Rv;->resumeRequestLayout(Z)V

    .line 1644
    invoke-virtual {p0}, Lc8/Rv;->onExitLayoutOrScroll()V

    .line 1645
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 1640
    :cond_4
    iget-object v0, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0}, Lc8/ms;->consumePostponedUpdates()V

    goto :goto_1

    .line 1646
    :cond_5
    iget-object v0, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0}, Lc8/ms;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1647
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {p0}, Lc8/Rv;->dispatchLayout()V

    .line 1649
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0
.end method

.method defaultOnMeasure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 3082
    .line 3083
    invoke-virtual {p0}, Lc8/Rv;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lc8/Rv;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 3084
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v3

    .line 3082
    invoke-static {p1, v2, v3}, Lc8/xv;->chooseSize(III)I

    move-result v1

    .line 3086
    .local v1, "width":I
    invoke-virtual {p0}, Lc8/Rv;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lc8/Rv;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 3087
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    .line 3085
    invoke-static {p2, v2, v3}, Lc8/xv;->chooseSize(III)I

    move-result v0

    .line 3089
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lc8/Rv;->setMeasuredDimension(II)V

    .line 3090
    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6832
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v2

    .line 6833
    .local v2, "viewHolder":Lc8/Qv;
    invoke-virtual {p0, p1}, Lc8/Rv;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 6834
    iget-object v3, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 6835
    iget-object v3, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v3, v2}, Lc8/iv;->onViewAttachedToWindow(Lc8/Qv;)V

    .line 6837
    :cond_0
    iget-object v3, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 6838
    iget-object v3, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 6839
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6840
    iget-object v3, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/zv;

    invoke-interface {v3, p1}, Lc8/zv;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 6839
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6843
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6818
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v2

    .line 6819
    .local v2, "viewHolder":Lc8/Qv;
    invoke-virtual {p0, p1}, Lc8/Rv;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 6820
    iget-object v3, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 6821
    iget-object v3, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v3, v2}, Lc8/iv;->onViewDetachedFromWindow(Lc8/Qv;)V

    .line 6823
    :cond_0
    iget-object v3, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 6824
    iget-object v3, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 6825
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6826
    iget-object v3, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/zv;

    invoke-interface {v3, p1}, Lc8/zv;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 6825
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6829
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method dispatchLayout()V
    .locals 2

    .prologue
    .line 3298
    iget-object v0, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-nez v0, :cond_0

    .line 3299
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    :goto_0
    return-void

    .line 3303
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v0, :cond_1

    .line 3304
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3308
    :cond_1
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc8/Nv;->mIsMeasuring:Z

    .line 3309
    iget-object v0, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget v0, v0, Lc8/Nv;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3310
    invoke-direct {p0}, Lc8/Rv;->dispatchLayoutStep1()V

    .line 3311
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0, p0}, Lc8/xv;->setExactMeasureSpecsFrom(Lc8/Rv;)V

    .line 3312
    invoke-direct {p0}, Lc8/Rv;->dispatchLayoutStep2()V

    .line 3323
    :goto_1
    invoke-direct {p0}, Lc8/Rv;->dispatchLayoutStep3()V

    goto :goto_0

    .line 3313
    :cond_2
    iget-object v0, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0}, Lc8/ms;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lc8/Rv;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    .line 3314
    invoke-virtual {v0}, Lc8/xv;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lc8/Rv;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 3317
    :cond_3
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0, p0}, Lc8/xv;->setExactMeasureSpecsFrom(Lc8/Rv;)V

    .line 3318
    invoke-direct {p0}, Lc8/Rv;->dispatchLayoutStep2()V

    goto :goto_1

    .line 3321
    :cond_4
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0, p0}, Lc8/xv;->setExactMeasureSpecsFrom(Lc8/Rv;)V

    goto :goto_1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 10762
    invoke-direct {p0}, Lc8/Rv;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 10767
    invoke-direct {p0}, Lc8/Rv;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 10757
    invoke-direct {p0}, Lc8/Rv;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 10751
    invoke-direct {p0}, Lc8/Rv;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 4641
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v1, :cond_0

    .line 4642
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->onScrollStateChanged(I)V

    .line 4647
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Rv;->onScrollStateChanged(I)V

    .line 4650
    iget-object v1, p0, Lc8/Rv;->mScrollListener:Lc8/Cv;

    if-eqz v1, :cond_1

    .line 4651
    iget-object v1, p0, Lc8/Rv;->mScrollListener:Lc8/Cv;

    invoke-virtual {v1, p0, p1}, Lc8/Cv;->onScrollStateChanged(Lc8/Rv;I)V

    .line 4653
    :cond_1
    iget-object v1, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 4654
    iget-object v1, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4655
    iget-object v1, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Cv;

    invoke-virtual {v1, p0, p1}, Lc8/Cv;->onScrollStateChanged(Lc8/Rv;I)V

    .line 4654
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4658
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4
    .param p1, "hresult"    # I
    .param p2, "vresult"    # I

    .prologue
    .line 4601
    iget v3, p0, Lc8/Rv;->mDispatchScrollCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lc8/Rv;->mDispatchScrollCounter:I

    .line 4604
    invoke-virtual {p0}, Lc8/Rv;->getScrollX()I

    move-result v1

    .line 4605
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lc8/Rv;->getScrollY()I

    move-result v2

    .line 4606
    .local v2, "scrollY":I
    invoke-virtual {p0, v1, v2, v1, v2}, Lc8/Rv;->onScrollChanged(IIII)V

    .line 4609
    invoke-virtual {p0, p1, p2}, Lc8/Rv;->onScrolled(II)V

    .line 4613
    iget-object v3, p0, Lc8/Rv;->mScrollListener:Lc8/Cv;

    if-eqz v3, :cond_0

    .line 4614
    iget-object v3, p0, Lc8/Rv;->mScrollListener:Lc8/Cv;

    invoke-virtual {v3, p0, p1, p2}, Lc8/Cv;->onScrolled(Lc8/Rv;II)V

    .line 4616
    :cond_0
    iget-object v3, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 4617
    iget-object v3, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4618
    iget-object v3, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Cv;

    invoke-virtual {v3, p0, p1, p2}, Lc8/Cv;->onScrolled(Lc8/Rv;II)V

    .line 4617
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4621
    .end local v0    # "i":I
    :cond_1
    iget v3, p0, Lc8/Rv;->mDispatchScrollCounter:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lc8/Rv;->mDispatchScrollCounter:I

    .line 4622
    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 10696
    iget-object v3, p0, Lc8/Rv;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 10697
    iget-object v3, p0, Lc8/Rv;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Qv;

    .line 10698
    .local v2, "viewHolder":Lc8/Qv;
    iget-object v3, v2, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v2}, Lc8/Qv;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 10701
    iget v1, v2, Lc8/Qv;->mPendingAccessibilityState:I

    .line 10702
    .local v1, "state":I
    if-eq v1, v4, :cond_0

    .line 10704
    iget-object v3, v2, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-static {v3, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 10705
    iput v4, v2, Lc8/Qv;->mPendingAccessibilityState:I

    .line 10696
    .end local v1    # "state":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10709
    .end local v2    # "viewHolder":Lc8/Qv;
    :cond_1
    iget-object v3, p0, Lc8/Rv;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 10710
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1257
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lc8/Rv;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1258
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1249
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lc8/Rv;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1250
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3869
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3871
    iget-object v6, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3872
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3873
    iget-object v6, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/sv;

    iget-object v9, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v6, p1, p0, v9}, Lc8/sv;->onDrawOver(Landroid/graphics/Canvas;Lc8/Rv;Lc8/Nv;)V

    .line 3872
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3877
    :cond_0
    const/4 v2, 0x0

    .line 3878
    .local v2, "needsInvalidate":Z
    iget-object v6, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3879
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3880
    .local v4, "restore":I
    iget-boolean v6, p0, Lc8/Rv;->mClipToPadding:Z

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lc8/Rv;->getPaddingBottom()I

    move-result v3

    .line 3881
    .local v3, "padding":I
    :goto_1
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3882
    invoke-virtual {p0}, Lc8/Rv;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3883
    iget-object v6, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v2, v8

    .line 3884
    :goto_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3886
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    :cond_1
    iget-object v6, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3887
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3888
    .restart local v4    # "restore":I
    iget-boolean v6, p0, Lc8/Rv;->mClipToPadding:Z

    if-eqz v6, :cond_2

    .line 3889
    invoke-virtual {p0}, Lc8/Rv;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lc8/Rv;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3891
    :cond_2
    iget-object v6, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v8

    :goto_3
    or-int/2addr v2, v6

    .line 3892
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3894
    .end local v4    # "restore":I
    :cond_3
    iget-object v6, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3895
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3896
    .restart local v4    # "restore":I
    invoke-virtual {p0}, Lc8/Rv;->getWidth()I

    move-result v5

    .line 3897
    .local v5, "width":I
    iget-boolean v6, p0, Lc8/Rv;->mClipToPadding:Z

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lc8/Rv;->getPaddingTop()I

    move-result v3

    .line 3898
    .restart local v3    # "padding":I
    :goto_4
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3899
    neg-int v6, v3

    int-to-float v6, v6

    neg-int v9, v5

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3900
    iget-object v6, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v8

    :goto_5
    or-int/2addr v2, v6

    .line 3901
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3903
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    .end local v5    # "width":I
    :cond_4
    iget-object v6, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3904
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3905
    .restart local v4    # "restore":I
    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3906
    iget-boolean v6, p0, Lc8/Rv;->mClipToPadding:Z

    if-eqz v6, :cond_d

    .line 3907
    invoke-virtual {p0}, Lc8/Rv;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lc8/Rv;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {p0}, Lc8/Rv;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {p0}, Lc8/Rv;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3911
    :goto_6
    iget-object v6, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_e

    :goto_7
    or-int/2addr v2, v8

    .line 3912
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3918
    .end local v4    # "restore":I
    :cond_5
    if-nez v2, :cond_6

    iget-object v6, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    .line 3919
    invoke-virtual {v6}, Lc8/qv;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3920
    const/4 v2, 0x1

    .line 3923
    :cond_6
    if-eqz v2, :cond_7

    .line 3924
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3926
    :cond_7
    return-void

    .restart local v4    # "restore":I
    :cond_8
    move v3, v7

    .line 3880
    goto/16 :goto_1

    .restart local v3    # "padding":I
    :cond_9
    move v2, v7

    .line 3883
    goto/16 :goto_2

    .end local v3    # "padding":I
    :cond_a
    move v6, v7

    .line 3891
    goto/16 :goto_3

    .restart local v5    # "width":I
    :cond_b
    move v3, v7

    .line 3897
    goto/16 :goto_4

    .restart local v3    # "padding":I
    :cond_c
    move v6, v7

    .line 3900
    goto :goto_5

    .line 3909
    .end local v3    # "padding":I
    .end local v5    # "width":I
    :cond_d
    invoke-virtual {p0}, Lc8/Rv;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lc8/Rv;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    :cond_e
    move v8, v7

    .line 3911
    goto :goto_7
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 4477
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .locals 2

    .prologue
    .line 1879
    iget v0, p0, Lc8/Rv;->mEatRequestLayout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Rv;->mEatRequestLayout:I

    .line 1880
    iget v0, p0, Lc8/Rv;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lc8/Rv;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Rv;->mLayoutRequestEaten:Z

    .line 1883
    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .prologue
    .line 2228
    iget-object v0, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2238
    :goto_0
    return-void

    .line 2231
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2232
    iget-boolean v0, p0, Lc8/Rv;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2233
    iget-object v0, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lc8/Rv;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lc8/Rv;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2234
    invoke-virtual {p0}, Lc8/Rv;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lc8/Rv;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lc8/Rv;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2233
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 2236
    :cond_1
    iget-object v0, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lc8/Rv;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method ensureLeftGlow()V
    .locals 4

    .prologue
    .line 2188
    iget-object v0, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2198
    :goto_0
    return-void

    .line 2191
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2192
    iget-boolean v0, p0, Lc8/Rv;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2193
    iget-object v0, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lc8/Rv;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lc8/Rv;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2194
    invoke-virtual {p0}, Lc8/Rv;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lc8/Rv;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lc8/Rv;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2193
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 2196
    :cond_1
    iget-object v0, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lc8/Rv;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method ensureRightGlow()V
    .locals 4

    .prologue
    .line 2201
    iget-object v0, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2211
    :goto_0
    return-void

    .line 2204
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2205
    iget-boolean v0, p0, Lc8/Rv;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2206
    iget-object v0, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lc8/Rv;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lc8/Rv;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2207
    invoke-virtual {p0}, Lc8/Rv;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lc8/Rv;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lc8/Rv;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2206
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 2209
    :cond_1
    iget-object v0, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lc8/Rv;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method ensureTopGlow()V
    .locals 4

    .prologue
    .line 2214
    iget-object v0, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2225
    :goto_0
    return-void

    .line 2217
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2218
    iget-boolean v0, p0, Lc8/Rv;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2219
    iget-object v0, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lc8/Rv;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lc8/Rv;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2220
    invoke-virtual {p0}, Lc8/Rv;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lc8/Rv;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lc8/Rv;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2219
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 2222
    :cond_1
    iget-object v0, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lc8/Rv;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lc8/Rv;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4460
    iget-object v5, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v5}, Lc8/ht;->getChildCount()I

    move-result v1

    .line 4461
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 4462
    iget-object v5, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v5, v2}, Lc8/ht;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4463
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    .line 4464
    .local v3, "translationX":F
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    .line 4465
    .local v4, "translationY":F
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    .line 4466
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 4467
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    .line 4468
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 4472
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :goto_1
    return-object v0

    .line 4461
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "translationX":F
    .restart local v4    # "translationY":F
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4472
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 4245
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4246
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 4247
    check-cast p1, Landroid/view/View;

    .line 4248
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 4250
    :cond_0
    if-ne v0, p0, :cond_1

    .end local p1    # "view":Landroid/view/View;
    :goto_1
    return-object p1

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Lc8/Qv;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 4263
    invoke-virtual {p0, p1}, Lc8/Rv;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4264
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lc8/Rv;->getChildViewHolder(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    goto :goto_0
.end method

.method public findViewHolderForAdapterPosition(I)Lc8/Qv;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 4374
    iget-boolean v4, p0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_1

    .line 4375
    const/4 v2, 0x0

    .line 4390
    :cond_0
    :goto_0
    return-object v2

    .line 4377
    :cond_1
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v0

    .line 4379
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4380
    .local v1, "hidden":Lc8/Qv;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 4381
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4, v3}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v2

    .line 4382
    .local v2, "holder":Lc8/Qv;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lc8/Qv;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v2}, Lc8/Rv;->getAdapterPositionFor(Lc8/Qv;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 4383
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    iget-object v5, v2, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lc8/ht;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4384
    move-object v1, v2

    .line 4380
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "holder":Lc8/Qv;
    :cond_3
    move-object v2, v1

    .line 4390
    goto :goto_0
.end method

.method public findViewHolderForItemId(J)Lc8/Qv;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 4434
    iget-object v4, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v4}, Lc8/iv;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4435
    :cond_0
    const/4 v2, 0x0

    .line 4449
    :cond_1
    :goto_0
    return-object v2

    .line 4437
    :cond_2
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v0

    .line 4438
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4439
    .local v1, "hidden":Lc8/Qv;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 4440
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4, v3}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v2

    .line 4441
    .local v2, "holder":Lc8/Qv;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lc8/Qv;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lc8/Qv;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 4442
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    iget-object v5, v2, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lc8/ht;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4443
    move-object v1, v2

    .line 4439
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "holder":Lc8/Qv;
    :cond_4
    move-object v2, v1

    .line 4449
    goto :goto_0
.end method

.method public findViewHolderForLayoutPosition(I)Lc8/Qv;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Rv;->findViewHolderForPosition(IZ)Lc8/Qv;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Lc8/Qv;
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Rv;->findViewHolderForPosition(IZ)Lc8/Qv;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Lc8/Qv;
    .locals 6
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .prologue
    .line 4394
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v0

    .line 4395
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4396
    .local v1, "hidden":Lc8/Qv;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 4397
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4, v3}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v2

    .line 4398
    .local v2, "holder":Lc8/Qv;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc8/Qv;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4399
    if-eqz p2, :cond_1

    .line 4400
    iget v4, v2, Lc8/Qv;->mPosition:I

    if-eq v4, p1, :cond_2

    .line 4396
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4403
    :cond_1
    invoke-virtual {v2}, Lc8/Qv;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 4406
    :cond_2
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    iget-object v5, v2, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lc8/ht;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4407
    move-object v1, v2

    goto :goto_1

    .end local v2    # "holder":Lc8/Qv;
    :cond_3
    move-object v2, v1

    .line 4416
    :cond_4
    return-object v2
.end method

.method public fling(II)Z
    .locals 7
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2022
    iget-object v5, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v5, :cond_1

    .line 2023
    const-string/jumbo v4, "RecyclerView"

    const-string/jumbo v5, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_0
    :goto_0
    return v3

    .line 2027
    :cond_1
    iget-boolean v5, p0, Lc8/Rv;->mLayoutFrozen:Z

    if-nez v5, :cond_0

    .line 2031
    iget-object v5, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v5}, Lc8/xv;->canScrollHorizontally()Z

    move-result v1

    .line 2032
    .local v1, "canScrollHorizontal":Z
    iget-object v5, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v5}, Lc8/xv;->canScrollVertically()Z

    move-result v2

    .line 2034
    .local v2, "canScrollVertical":Z
    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lc8/Rv;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_3

    .line 2035
    :cond_2
    const/4 p1, 0x0

    .line 2037
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lc8/Rv;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_5

    .line 2038
    :cond_4
    const/4 p2, 0x0

    .line 2040
    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_0

    .line 2045
    :cond_6
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6}, Lc8/Rv;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2046
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    move v0, v4

    .line 2047
    .local v0, "canScroll":Z
    :goto_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v0}, Lc8/Rv;->dispatchNestedFling(FFZ)Z

    .line 2049
    iget-object v5, p0, Lc8/Rv;->mOnFlingListener:Lc8/Av;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lc8/Rv;->mOnFlingListener:Lc8/Av;

    invoke-virtual {v5, p1, p2}, Lc8/Av;->onFling(II)Z

    move-result v5

    if-eqz v5, :cond_9

    move v3, v4

    .line 2050
    goto :goto_0

    .end local v0    # "canScroll":Z
    :cond_8
    move v0, v3

    .line 2046
    goto :goto_1

    .line 2053
    .restart local v0    # "canScroll":Z
    :cond_9
    if-eqz v0, :cond_0

    .line 2054
    iget v3, p0, Lc8/Rv;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lc8/Rv;->mMaxFlingVelocity:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2055
    iget v3, p0, Lc8/Rv;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lc8/Rv;->mMaxFlingVelocity:I

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2056
    iget-object v3, p0, Lc8/Rv;->mViewFlinger:Lc8/Pv;

    invoke-virtual {v3, p1, p2}, Lc8/Pv;->fling(II)V

    move v3, v4

    .line 2057
    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 13
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2276
    iget-object v11, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v11, p1, p2}, Lc8/xv;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 2277
    .local v6, "result":Landroid/view/View;
    if-eqz v6, :cond_0

    move-object p1, v6

    .line 2350
    .end local p1    # "focused":Landroid/view/View;
    :goto_0
    return-object p1

    .line 2280
    .restart local p1    # "focused":Landroid/view/View;
    :cond_0
    iget-object v11, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v11, :cond_4

    .line 2281
    invoke-virtual {p0}, Lc8/Rv;->isComputingLayout()Z

    move-result v11

    if-nez v11, :cond_4

    iget-boolean v11, p0, Lc8/Rv;->mLayoutFrozen:Z

    if-nez v11, :cond_4

    move v1, v8

    .line 2283
    .local v1, "canRunFocusFailure":Z
    :goto_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    .line 2284
    .local v2, "ff":Landroid/view/FocusFinder;
    if-eqz v1, :cond_e

    if-eq p2, v12, :cond_1

    if-ne p2, v8, :cond_e

    .line 2288
    :cond_1
    const/4 v5, 0x0

    .line 2289
    .local v5, "needsFocusFailureLayout":Z
    iget-object v11, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v11}, Lc8/xv;->canScrollVertically()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2290
    if-ne p2, v12, :cond_5

    const/16 v0, 0x82

    .line 2292
    .local v0, "absDir":I
    :goto_2
    invoke-virtual {v2, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2293
    .local v4, "found":Landroid/view/View;
    if-nez v4, :cond_6

    move v5, v8

    .line 2294
    :goto_3
    sget-boolean v11, Lc8/Rv;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v11, :cond_2

    .line 2296
    move p2, v0

    .line 2299
    .end local v0    # "absDir":I
    .end local v4    # "found":Landroid/view/View;
    :cond_2
    if-nez v5, :cond_3

    iget-object v11, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v11}, Lc8/xv;->canScrollHorizontally()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2300
    iget-object v11, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v11}, Lc8/xv;->getLayoutDirection()I

    move-result v11

    if-ne v11, v8, :cond_7

    move v7, v8

    .line 2301
    .local v7, "rtl":Z
    :goto_4
    if-ne p2, v12, :cond_8

    move v11, v8

    :goto_5
    xor-int/2addr v11, v7

    if-eqz v11, :cond_9

    const/16 v0, 0x42

    .line 2303
    .restart local v0    # "absDir":I
    :goto_6
    invoke-virtual {v2, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2304
    .restart local v4    # "found":Landroid/view/View;
    if-nez v4, :cond_a

    move v5, v8

    .line 2305
    :goto_7
    sget-boolean v8, Lc8/Rv;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v8, :cond_3

    .line 2307
    move p2, v0

    .line 2310
    .end local v0    # "absDir":I
    .end local v4    # "found":Landroid/view/View;
    .end local v7    # "rtl":Z
    :cond_3
    if-eqz v5, :cond_c

    .line 2311
    invoke-virtual {p0}, Lc8/Rv;->consumePendingUpdateOperations()V

    .line 2312
    invoke-virtual {p0, p1}, Lc8/Rv;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 2313
    .local v3, "focusedItemView":Landroid/view/View;
    if-nez v3, :cond_b

    move-object p1, v10

    .line 2315
    goto :goto_0

    .end local v1    # "canRunFocusFailure":Z
    .end local v2    # "ff":Landroid/view/FocusFinder;
    .end local v3    # "focusedItemView":Landroid/view/View;
    .end local v5    # "needsFocusFailureLayout":Z
    :cond_4
    move v1, v9

    .line 2281
    goto :goto_1

    .line 2290
    .restart local v1    # "canRunFocusFailure":Z
    .restart local v2    # "ff":Landroid/view/FocusFinder;
    .restart local v5    # "needsFocusFailureLayout":Z
    :cond_5
    const/16 v0, 0x21

    goto :goto_2

    .restart local v0    # "absDir":I
    .restart local v4    # "found":Landroid/view/View;
    :cond_6
    move v5, v9

    .line 2293
    goto :goto_3

    .end local v0    # "absDir":I
    .end local v4    # "found":Landroid/view/View;
    :cond_7
    move v7, v9

    .line 2300
    goto :goto_4

    .restart local v7    # "rtl":Z
    :cond_8
    move v11, v9

    .line 2301
    goto :goto_5

    :cond_9
    const/16 v0, 0x11

    goto :goto_6

    .restart local v0    # "absDir":I
    .restart local v4    # "found":Landroid/view/View;
    :cond_a
    move v5, v9

    .line 2304
    goto :goto_7

    .line 2317
    .end local v0    # "absDir":I
    .end local v4    # "found":Landroid/view/View;
    .end local v7    # "rtl":Z
    .restart local v3    # "focusedItemView":Landroid/view/View;
    :cond_b
    invoke-virtual {p0}, Lc8/Rv;->eatRequestLayout()V

    .line 2318
    iget-object v8, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v11, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    iget-object v12, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v8, p1, p2, v11, v12}, Lc8/xv;->onFocusSearchFailed(Landroid/view/View;ILc8/Fv;Lc8/Nv;)Landroid/view/View;

    .line 2319
    invoke-virtual {p0, v9}, Lc8/Rv;->resumeRequestLayout(Z)V

    .line 2321
    .end local v3    # "focusedItemView":Landroid/view/View;
    :cond_c
    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 2336
    .end local v5    # "needsFocusFailureLayout":Z
    :cond_d
    :goto_8
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-nez v8, :cond_11

    .line 2337
    invoke-virtual {p0}, Lc8/Rv;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_10

    .line 2340
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    .line 2323
    :cond_e
    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 2324
    if-nez v6, :cond_d

    if-eqz v1, :cond_d

    .line 2325
    invoke-virtual {p0}, Lc8/Rv;->consumePendingUpdateOperations()V

    .line 2326
    invoke-virtual {p0, p1}, Lc8/Rv;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 2327
    .restart local v3    # "focusedItemView":Landroid/view/View;
    if-nez v3, :cond_f

    move-object p1, v10

    .line 2329
    goto/16 :goto_0

    .line 2331
    :cond_f
    invoke-virtual {p0}, Lc8/Rv;->eatRequestLayout()V

    .line 2332
    iget-object v8, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v11, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    iget-object v12, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v8, p1, p2, v11, v12}, Lc8/xv;->onFocusSearchFailed(Landroid/view/View;ILc8/Fv;Lc8/Nv;)Landroid/view/View;

    move-result-object v6

    .line 2333
    invoke-virtual {p0, v9}, Lc8/Rv;->resumeRequestLayout(Z)V

    goto :goto_8

    .line 2346
    .end local v3    # "focusedItemView":Landroid/view/View;
    :cond_10
    invoke-direct {p0, v6, v10}, Lc8/Rv;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_0

    .line 2349
    :cond_11
    invoke-direct {p0, p1, v6, p2}, Lc8/Rv;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_12

    move-object p1, v6

    goto/16 :goto_0

    .line 2350
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3945
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v0, :cond_0

    .line 3946
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3948
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->generateDefaultLayoutParams()Lc8/yv;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3953
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v0, :cond_0

    .line 3954
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3956
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {p0}, Lc8/Rv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/xv;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lc8/yv;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3961
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v0, :cond_0

    .line 3962
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3964
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0, p1}, Lc8/xv;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lc8/yv;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lc8/iv;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    return-object v0
.end method

.method getAdapterPositionFor(Lc8/Qv;)I
    .locals 2
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 10713
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lc8/Qv;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10715
    invoke-virtual {p1}, Lc8/Qv;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10716
    :cond_0
    const/4 v0, -0x1

    .line 10718
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    iget v1, p1, Lc8/Qv;->mPosition:I

    invoke-virtual {v0, v1}, Lc8/ms;->applyPendingUpdatesToPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getBaseline()I

    move-result v0

    .line 1097
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method getChangedHolderKey(Lc8/Qv;)J
    .locals 2
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 3798
    iget-object v0, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v0}, Lc8/iv;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc8/Qv;->getItemId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Lc8/Qv;->mPosition:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4291
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v0

    .line 4292
    .local v0, "holder":Lc8/Qv;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/Qv;->getAdapterPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 12538
    iget-object v0, p0, Lc8/Rv;->mChildDrawingOrderCallback:Lc8/lv;

    if-nez v0, :cond_0

    .line 12539
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 12541
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/Rv;->mChildDrawingOrderCallback:Lc8/lv;

    invoke-interface {v0, p1, p2}, Lc8/lv;->onGetChildDrawingOrder(II)I

    move-result v0

    goto :goto_0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, -0x1

    .line 4317
    iget-object v1, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v1}, Lc8/iv;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4321
    :cond_0
    :goto_0
    return-wide v2

    .line 4320
    :cond_1
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v0

    .line 4321
    .local v0, "holder":Lc8/Qv;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/Qv;->getItemId()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4306
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v0

    .line 4307
    .local v0, "holder":Lc8/Qv;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/Qv;->getLayoutPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4281
    invoke-virtual {p0, p1}, Lc8/Rv;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lc8/Qv;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4222
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4223
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 4224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4227
    :cond_0
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    return-object v1
.end method

.method public getClipToPadding()Z
    .locals 1

    .prologue
    .line 941
    iget-boolean v0, p0, Lc8/Rv;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Lc8/Tv;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lc8/Rv;->mAccessibilityDelegate:Lc8/Tv;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 4539
    invoke-static {p1, p2}, Lc8/Rv;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4540
    return-void
.end method

.method public getItemAnimator()Lc8/qv;
    .locals 1

    .prologue
    .line 3219
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 4552
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lc8/yv;

    .line 4553
    .local v3, "lp":Lc8/yv;
    iget-boolean v4, v3, Lc8/yv;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 4554
    iget-object v2, v3, Lc8/yv;->mDecorInsets:Landroid/graphics/Rect;

    .line 4573
    :goto_0
    return-object v2

    .line 4557
    :cond_0
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v4}, Lc8/Nv;->isPreLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lc8/yv;->isItemChanged()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lc8/yv;->isViewInvalid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4559
    :cond_1
    iget-object v2, v3, Lc8/yv;->mDecorInsets:Landroid/graphics/Rect;

    goto :goto_0

    .line 4561
    :cond_2
    iget-object v2, v3, Lc8/yv;->mDecorInsets:Landroid/graphics/Rect;

    .line 4562
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4563
    iget-object v4, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4564
    .local v0, "decorCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 4565
    iget-object v4, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4566
    iget-object v4, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/sv;

    iget-object v5, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v4, v5, p1, p0, v6}, Lc8/sv;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lc8/Rv;Lc8/Nv;)V

    .line 4567
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 4568
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 4569
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 4570
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lc8/Rv;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 4564
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4572
    :cond_3
    iput-boolean v7, v3, Lc8/yv;->mInsetsDirty:Z

    goto :goto_0
.end method

.method public getLayoutManager()Lc8/xv;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 2098
    iget v0, p0, Lc8/Rv;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 2088
    iget v0, p0, Lc8/Rv;->mMinFlingVelocity:I

    return v0
.end method

.method getNanoTime()J
    .locals 2

    .prologue
    .line 5201
    sget-boolean v0, Lc8/Rv;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_0

    .line 5202
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 5204
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getOnFlingListener()Lc8/Av;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1213
    iget-object v0, p0, Lc8/Rv;->mOnFlingListener:Lc8/Av;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .prologue
    .line 4194
    iget-boolean v0, p0, Lc8/Rv;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Lc8/Ev;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0}, Lc8/Fv;->getRecycledViewPool()Lc8/Ev;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1371
    iget v0, p0, Lc8/Rv;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .prologue
    .line 912
    iget-boolean v0, p0, Lc8/Rv;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 10745
    invoke-direct {p0}, Lc8/Rv;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .prologue
    .line 4674
    iget-boolean v0, p0, Lc8/Rv;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    .line 4675
    invoke-virtual {v0}, Lc8/ms;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initAdapterManager()V
    .locals 2

    .prologue
    .line 812
    new-instance v0, Lc8/ms;

    new-instance v1, Lc8/hv;

    invoke-direct {v1, p0}, Lc8/hv;-><init>(Lc8/Rv;)V

    invoke-direct {v0, v1}, Lc8/ms;-><init>(Lc8/ks;)V

    iput-object v0, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    .line 890
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    .prologue
    .line 2241
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Rv;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lc8/Rv;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lc8/Rv;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lc8/Rv;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2242
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .prologue
    .line 4171
    iget-object v0, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4180
    :goto_0
    return-void

    .line 4174
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v0, :cond_1

    .line 4175
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    const-string/jumbo v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lc8/xv;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4178
    :cond_1
    invoke-virtual {p0}, Lc8/Rv;->markItemDecorInsetsDirty()V

    .line 4179
    invoke-virtual {p0}, Lc8/Rv;->requestLayout()V

    goto :goto_0
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 3141
    iget-object v0, p0, Lc8/Rv;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Rv;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 3976
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    invoke-virtual {v0}, Lc8/qv;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 2544
    iget-boolean v0, p0, Lc8/Rv;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    .prologue
    .line 3175
    iget v0, p0, Lc8/Rv;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutFrozen()Z
    .locals 1

    .prologue
    .line 1967
    iget-boolean v0, p0, Lc8/Rv;->mLayoutFrozen:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 10730
    invoke-direct {p0}, Lc8/Rv;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1550
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v0, :cond_0

    .line 1555
    :goto_0
    return-void

    .line 1553
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0, p1}, Lc8/xv;->scrollToPosition(I)V

    .line 1554
    invoke-virtual {p0}, Lc8/Rv;->awakenScrollBars()Z

    goto :goto_0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 3859
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v1

    .line 3860
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3861
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3, v2}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3862
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lc8/yv;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lc8/yv;->mInsetsDirty:Z

    .line 3860
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3864
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v3}, Lc8/Fv;->markItemDecorInsetsDirty()V

    .line 3865
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 4155
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v0

    .line 4156
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4157
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3, v2}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    .line 4158
    .local v1, "holder":Lc8/Qv;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc8/Qv;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4159
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lc8/Qv;->addFlags(I)V

    .line 4156
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4162
    .end local v1    # "holder":Lc8/Qv;
    :cond_1
    invoke-virtual {p0}, Lc8/Rv;->markItemDecorInsetsDirty()V

    .line 4163
    iget-object v3, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v3}, Lc8/Fv;->markKnownViewsInvalid()V

    .line 4164
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 4525
    iget-object v2, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v2}, Lc8/ht;->getChildCount()I

    move-result v0

    .line 4526
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4527
    iget-object v2, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v2, v1}, Lc8/ht;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4529
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3
    .param p1, "dy"    # I

    .prologue
    .line 4487
    iget-object v2, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v2}, Lc8/ht;->getChildCount()I

    move-result v0

    .line 4488
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4489
    iget-object v2, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v2, v1}, Lc8/ht;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4491
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 4039
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v0

    .line 4040
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4041
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3, v2}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    .line 4042
    .local v1, "holder":Lc8/Qv;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc8/Qv;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v1, Lc8/Qv;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 4047
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lc8/Qv;->offsetPosition(IZ)V

    .line 4048
    iget-object v3, p0, Lc8/Rv;->mState:Lc8/Nv;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lc8/Nv;->mStructureChanged:Z

    .line 4040
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4051
    .end local v1    # "holder":Lc8/Qv;
    :cond_1
    iget-object v3, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v3, p1, p2}, Lc8/Fv;->offsetPositionRecordsForInsert(II)V

    .line 4052
    invoke-virtual {p0}, Lc8/Rv;->requestLayout()V

    .line 4053
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v8, 0x0

    .line 4005
    iget-object v6, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v6}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v0

    .line 4007
    .local v0, "childCount":I
    if-ge p1, p2, :cond_1

    .line 4008
    move v5, p1

    .line 4009
    .local v5, "start":I
    move v1, p2

    .line 4010
    .local v1, "end":I
    const/4 v4, -0x1

    .line 4017
    .local v4, "inBetweenOffset":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 4018
    iget-object v6, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v6, v3}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v2

    .line 4019
    .local v2, "holder":Lc8/Qv;
    if-eqz v2, :cond_0

    iget v6, v2, Lc8/Qv;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Lc8/Qv;->mPosition:I

    if-gt v6, v1, :cond_0

    .line 4026
    iget v6, v2, Lc8/Qv;->mPosition:I

    if-ne v6, p1, :cond_2

    .line 4027
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v8}, Lc8/Qv;->offsetPosition(IZ)V

    .line 4032
    :goto_2
    iget-object v6, p0, Lc8/Rv;->mState:Lc8/Nv;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lc8/Nv;->mStructureChanged:Z

    .line 4017
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4012
    .end local v1    # "end":I
    .end local v2    # "holder":Lc8/Qv;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 4013
    .restart local v5    # "start":I
    move v1, p1

    .line 4014
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 4029
    .restart local v2    # "holder":Lc8/Qv;
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {v2, v4, v8}, Lc8/Qv;->offsetPosition(IZ)V

    goto :goto_2

    .line 4034
    .end local v2    # "holder":Lc8/Qv;
    :cond_3
    iget-object v6, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v6, p1, p2}, Lc8/Fv;->offsetPositionRecordsForMove(II)V

    .line 4035
    invoke-virtual {p0}, Lc8/Rv;->requestLayout()V

    .line 4036
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    const/4 v6, 0x1

    .line 4057
    add-int v3, p1, p2

    .line 4058
    .local v3, "positionEnd":I
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v0

    .line 4059
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4060
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4, v2}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    .line 4061
    .local v1, "holder":Lc8/Qv;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc8/Qv;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4062
    iget v4, v1, Lc8/Qv;->mPosition:I

    if-lt v4, v3, :cond_1

    .line 4068
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lc8/Qv;->offsetPosition(IZ)V

    .line 4069
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput-boolean v6, v4, Lc8/Nv;->mStructureChanged:Z

    .line 4059
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4070
    :cond_1
    iget v4, v1, Lc8/Qv;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 4075
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v1, v4, v5, p3}, Lc8/Qv;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4077
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput-boolean v6, v4, Lc8/Nv;->mStructureChanged:Z

    goto :goto_1

    .line 4081
    .end local v1    # "holder":Lc8/Qv;
    :cond_2
    iget-object v4, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v4, p1, p2, p3}, Lc8/Fv;->offsetPositionRecordsForRemove(IIZ)V

    .line 4082
    invoke-virtual {p0}, Lc8/Rv;->requestLayout()V

    .line 4083
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2485
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2486
    iput v4, p0, Lc8/Rv;->mLayoutOrScrollCounter:I

    .line 2487
    iput-boolean v3, p0, Lc8/Rv;->mIsAttached:Z

    .line 2488
    iget-boolean v5, p0, Lc8/Rv;->mFirstLayoutComplete:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lc8/Rv;->isLayoutRequested()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_0
    iput-boolean v3, p0, Lc8/Rv;->mFirstLayoutComplete:Z

    .line 2489
    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v3, :cond_0

    .line 2490
    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v3, p0}, Lc8/xv;->dispatchAttachedToWindow(Lc8/Rv;)V

    .line 2492
    :cond_0
    iput-boolean v4, p0, Lc8/Rv;->mPostedAnimatorRunner:Z

    .line 2494
    sget-boolean v3, Lc8/Rv;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_3

    .line 2496
    sget-object v3, Lc8/Ot;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Ot;

    iput-object v3, p0, Lc8/Rv;->mGapWorker:Lc8/Ot;

    .line 2497
    iget-object v3, p0, Lc8/Rv;->mGapWorker:Lc8/Ot;

    if-nez v3, :cond_2

    .line 2498
    new-instance v3, Lc8/Ot;

    invoke-direct {v3}, Lc8/Ot;-><init>()V

    iput-object v3, p0, Lc8/Rv;->mGapWorker:Lc8/Ot;

    .line 2502
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    .line 2503
    .local v0, "display":Landroid/view/Display;
    const/high16 v2, 0x42700000    # 60.0f

    .line 2504
    .local v2, "refreshRate":F
    invoke-virtual {p0}, Lc8/Rv;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 2505
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    .line 2506
    .local v1, "displayRefreshRate":F
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    .line 2507
    move v2, v1

    .line 2510
    .end local v1    # "displayRefreshRate":F
    :cond_1
    iget-object v3, p0, Lc8/Rv;->mGapWorker:Lc8/Ot;

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v4, v2

    float-to-long v4, v4

    iput-wide v4, v3, Lc8/Ot;->mFrameIntervalNs:J

    .line 2511
    sget-object v3, Lc8/Ot;->sGapWorker:Ljava/lang/ThreadLocal;

    iget-object v4, p0, Lc8/Rv;->mGapWorker:Lc8/Ot;

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2513
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "refreshRate":F
    :cond_2
    iget-object v3, p0, Lc8/Rv;->mGapWorker:Lc8/Ot;

    invoke-virtual {v3, p0}, Lc8/Ot;->add(Lc8/Rv;)V

    .line 2515
    :cond_3
    return-void

    :cond_4
    move v3, v4

    .line 2488
    goto :goto_0
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4504
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4516
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2519
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2520
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    if-eqz v0, :cond_0

    .line 2521
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    invoke-virtual {v0}, Lc8/qv;->endAnimations()V

    .line 2523
    :cond_0
    invoke-virtual {p0}, Lc8/Rv;->stopScroll()V

    .line 2524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Rv;->mIsAttached:Z

    .line 2525
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v0, :cond_1

    .line 2526
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, p0, v1}, Lc8/xv;->dispatchDetachedFromWindow(Lc8/Rv;Lc8/Fv;)V

    .line 2528
    :cond_1
    iget-object v0, p0, Lc8/Rv;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2529
    iget-object v0, p0, Lc8/Rv;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lc8/Rv;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2530
    iget-object v0, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v0}, Lc8/vx;->onDetach()V

    .line 2532
    sget-boolean v0, Lc8/Rv;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    .line 2534
    iget-object v0, p0, Lc8/Rv;->mGapWorker:Lc8/Ot;

    invoke-virtual {v0, p0}, Lc8/Ot;->remove(Lc8/Rv;)V

    .line 2535
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Rv;->mGapWorker:Lc8/Ot;

    .line 2537
    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 3930
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3932
    iget-object v2, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3933
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3934
    iget-object v2, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sv;

    iget-object v3, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v2, p1, p0, v3}, Lc8/sv;->onDraw(Landroid/graphics/Canvas;Lc8/Rv;Lc8/Nv;)V

    .line 3933
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3936
    :cond_0
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    .prologue
    .line 3124
    iget v0, p0, Lc8/Rv;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Rv;->mLayoutOrScrollCounter:I

    .line 3125
    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 1

    .prologue
    .line 3128
    iget v0, p0, Lc8/Rv;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/Rv;->mLayoutOrScrollCounter:I

    .line 3129
    iget v0, p0, Lc8/Rv;->mLayoutOrScrollCounter:I

    if-gtz v0, :cond_0

    .line 3134
    const/4 v0, 0x0

    iput v0, p0, Lc8/Rv;->mLayoutOrScrollCounter:I

    .line 3135
    invoke-direct {p0}, Lc8/Rv;->dispatchContentChangedIfNecessary()V

    .line 3136
    invoke-virtual {p0}, Lc8/Rv;->dispatchPendingImportantForAccessibilityChanges()V

    .line 3138
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2952
    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v3, :cond_1

    .line 2983
    :cond_0
    :goto_0
    return v5

    .line 2955
    :cond_1
    iget-boolean v3, p0, Lc8/Rv;->mLayoutFrozen:Z

    if-nez v3, :cond_0

    .line 2958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 2959
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 2961
    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v3}, Lc8/xv;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2964
    const/16 v3, 0x9

    .line 2965
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v3

    neg-float v2, v3

    .line 2969
    .local v2, "vScroll":F
    :goto_1
    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v3}, Lc8/xv;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2970
    const/16 v3, 0xa

    .line 2971
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 2976
    .local v0, "hScroll":F
    :goto_2
    cmpl-float v3, v2, v6

    if-nez v3, :cond_2

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_0

    .line 2977
    :cond_2
    invoke-direct {p0}, Lc8/Rv;->getScrollFactor()F

    move-result v1

    .line 2978
    .local v1, "scrollFactor":F
    mul-float v3, v0, v1

    float-to-int v3, v3

    mul-float v4, v2, v1

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4, p1}, Lc8/Rv;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2967
    .end local v0    # "hScroll":F
    .end local v1    # "scrollFactor":F
    .end local v2    # "vScroll":F
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "vScroll":F
    goto :goto_1

    .line 2973
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "hScroll":F
    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2669
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/Rv;->mLayoutFrozen:Z

    if-eqz v12, :cond_0

    .line 2672
    const/4 v12, 0x0

    .line 2768
    :goto_0
    return v12

    .line 2674
    :cond_0
    invoke-direct/range {p0 .. p1}, Lc8/Rv;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2675
    invoke-direct/range {p0 .. p0}, Lc8/Rv;->cancelTouch()V

    .line 2676
    const/4 v12, 0x1

    goto :goto_0

    .line 2679
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v12, :cond_2

    .line 2680
    const/4 v12, 0x0

    goto :goto_0

    .line 2683
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v12}, Lc8/xv;->canScrollHorizontally()Z

    move-result v3

    .line 2684
    .local v3, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v12}, Lc8/xv;->canScrollVertically()Z

    move-result v4

    .line 2686
    .local v4, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_3

    .line 2687
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2689
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2691
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 2692
    .local v1, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2694
    .local v2, "actionIndex":I
    packed-switch v1, :pswitch_data_0

    .line 2768
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v12, v0, Lc8/Rv;->mScrollState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    const/4 v12, 0x1

    goto :goto_0

    .line 2696
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/Rv;->mIgnoreMotionEventTillDown:Z

    if-eqz v12, :cond_5

    .line 2697
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/Rv;->mIgnoreMotionEventTillDown:Z

    .line 2699
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Rv;->mScrollPointerId:I

    .line 2700
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Rv;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Rv;->mInitialTouchX:I

    .line 2701
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Rv;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Rv;->mInitialTouchY:I

    .line 2703
    move-object/from16 v0, p0

    iget v12, v0, Lc8/Rv;->mScrollState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 2704
    invoke-virtual/range {p0 .. p0}, Lc8/Rv;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2705
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lc8/Rv;->setScrollState(I)V

    .line 2709
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Rv;->mNestedOffsets:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Rv;->mNestedOffsets:[I

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    aput v16, v12, v13

    .line 2711
    const/4 v8, 0x0

    .line 2712
    .local v8, "nestedScrollAxis":I
    if-eqz v3, :cond_7

    .line 2713
    or-int/lit8 v8, v8, 0x1

    .line 2715
    :cond_7
    if-eqz v4, :cond_8

    .line 2716
    or-int/lit8 v8, v8, 0x2

    .line 2718
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lc8/Rv;->startNestedScroll(I)Z

    goto :goto_1

    .line 2722
    .end local v8    # "nestedScrollAxis":I
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Rv;->mScrollPointerId:I

    .line 2723
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Rv;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Rv;->mInitialTouchX:I

    .line 2724
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Rv;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Rv;->mInitialTouchY:I

    goto/16 :goto_1

    .line 2728
    :pswitch_3
    move-object/from16 v0, p0

    iget v12, v0, Lc8/Rv;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 2729
    .local v7, "index":I
    if-gez v7, :cond_9

    .line 2730
    const-string/jumbo v12, "RecyclerView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Error processing scroll; pointer index for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lc8/Rv;->mScrollPointerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2735
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v10, v12

    .line 2736
    .local v10, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v11, v12

    .line 2737
    .local v11, "y":I
    move-object/from16 v0, p0

    iget v12, v0, Lc8/Rv;->mScrollState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_4

    .line 2738
    move-object/from16 v0, p0

    iget v12, v0, Lc8/Rv;->mInitialTouchX:I

    sub-int v5, v10, v12

    .line 2739
    .local v5, "dx":I
    move-object/from16 v0, p0

    iget v12, v0, Lc8/Rv;->mInitialTouchY:I

    sub-int v6, v11, v12

    .line 2740
    .local v6, "dy":I
    const/4 v9, 0x0

    .line 2741
    .local v9, "startScroll":Z
    if-eqz v3, :cond_a

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lc8/Rv;->mTouchSlop:I

    if-le v12, v13, :cond_a

    .line 2742
    move-object/from16 v0, p0

    iget v13, v0, Lc8/Rv;->mInitialTouchX:I

    move-object/from16 v0, p0

    iget v14, v0, Lc8/Rv;->mTouchSlop:I

    if-gez v5, :cond_c

    const/4 v12, -0x1

    :goto_2
    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Rv;->mLastTouchX:I

    .line 2743
    const/4 v9, 0x1

    .line 2745
    :cond_a
    if-eqz v4, :cond_b

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lc8/Rv;->mTouchSlop:I

    if-le v12, v13, :cond_b

    .line 2746
    move-object/from16 v0, p0

    iget v13, v0, Lc8/Rv;->mInitialTouchY:I

    move-object/from16 v0, p0

    iget v14, v0, Lc8/Rv;->mTouchSlop:I

    if-gez v6, :cond_d

    const/4 v12, -0x1

    :goto_3
    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Rv;->mLastTouchY:I

    .line 2747
    const/4 v9, 0x1

    .line 2749
    :cond_b
    if-eqz v9, :cond_4

    .line 2750
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lc8/Rv;->setScrollState(I)V

    goto/16 :goto_1

    .line 2742
    :cond_c
    const/4 v12, 0x1

    goto :goto_2

    .line 2746
    :cond_d
    const/4 v12, 0x1

    goto :goto_3

    .line 2756
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "index":I
    .end local v9    # "startScroll":Z
    .end local v10    # "x":I
    .end local v11    # "y":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lc8/Rv;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2760
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->clear()V

    .line 2761
    invoke-virtual/range {p0 .. p0}, Lc8/Rv;->stopNestedScroll()V

    goto/16 :goto_1

    .line 2765
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lc8/Rv;->cancelTouch()V

    goto/16 :goto_1

    .line 2768
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2694
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 3843
    const-string/jumbo v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3844
    invoke-virtual {p0}, Lc8/Rv;->dispatchLayout()V

    .line 3845
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 3846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Rv;->mFirstLayoutComplete:Z

    .line 3847
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3005
    iget-object v4, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v4, :cond_1

    .line 3006
    invoke-virtual {p0, p1, p2}, Lc8/Rv;->defaultOnMeasure(II)V

    .line 3074
    :cond_0
    :goto_0
    return-void

    .line 3009
    :cond_1
    iget-object v4, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-boolean v4, v4, Lc8/xv;->mAutoMeasure:Z

    if-eqz v4, :cond_4

    .line 3010
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 3011
    .local v2, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3012
    .local v0, "heightMode":I
    if-ne v2, v7, :cond_2

    if-ne v0, v7, :cond_2

    move v1, v3

    .line 3014
    .local v1, "skipMeasure":Z
    :cond_2
    iget-object v4, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v5, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    iget-object v6, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v4, v5, v6, p1, p2}, Lc8/xv;->onMeasure(Lc8/Fv;Lc8/Nv;II)V

    .line 3015
    if-nez v1, :cond_0

    iget-object v4, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v4, :cond_0

    .line 3018
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget v4, v4, Lc8/Nv;->mLayoutStep:I

    if-ne v4, v3, :cond_3

    .line 3019
    invoke-direct {p0}, Lc8/Rv;->dispatchLayoutStep1()V

    .line 3023
    :cond_3
    iget-object v4, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v4, p1, p2}, Lc8/xv;->setMeasureSpecs(II)V

    .line 3024
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput-boolean v3, v4, Lc8/Nv;->mIsMeasuring:Z

    .line 3025
    invoke-direct {p0}, Lc8/Rv;->dispatchLayoutStep2()V

    .line 3028
    iget-object v4, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v4, p1, p2}, Lc8/xv;->setMeasuredDimensionFromChildren(II)V

    .line 3032
    iget-object v4, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v4}, Lc8/xv;->shouldMeasureTwice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3033
    iget-object v4, p0, Lc8/Rv;->mLayout:Lc8/xv;

    .line 3034
    invoke-virtual {p0}, Lc8/Rv;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 3035
    invoke-virtual {p0}, Lc8/Rv;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 3033
    invoke-virtual {v4, v5, v6}, Lc8/xv;->setMeasureSpecs(II)V

    .line 3036
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput-boolean v3, v4, Lc8/Nv;->mIsMeasuring:Z

    .line 3037
    invoke-direct {p0}, Lc8/Rv;->dispatchLayoutStep2()V

    .line 3039
    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v3, p1, p2}, Lc8/xv;->setMeasuredDimensionFromChildren(II)V

    goto :goto_0

    .line 3042
    .end local v0    # "heightMode":I
    .end local v1    # "skipMeasure":Z
    .end local v2    # "widthMode":I
    :cond_4
    iget-boolean v4, p0, Lc8/Rv;->mHasFixedSize:Z

    if-eqz v4, :cond_5

    .line 3043
    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v4, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    iget-object v5, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v3, v4, v5, p1, p2}, Lc8/xv;->onMeasure(Lc8/Fv;Lc8/Nv;II)V

    goto :goto_0

    .line 3047
    :cond_5
    iget-boolean v4, p0, Lc8/Rv;->mAdapterUpdateDuringMeasure:Z

    if-eqz v4, :cond_6

    .line 3048
    invoke-virtual {p0}, Lc8/Rv;->eatRequestLayout()V

    .line 3049
    invoke-virtual {p0}, Lc8/Rv;->onEnterLayoutOrScroll()V

    .line 3050
    invoke-direct {p0}, Lc8/Rv;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3051
    invoke-virtual {p0}, Lc8/Rv;->onExitLayoutOrScroll()V

    .line 3053
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v4, v4, Lc8/Nv;->mRunPredictiveAnimations:Z

    if-eqz v4, :cond_7

    .line 3054
    iget-object v4, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput-boolean v3, v4, Lc8/Nv;->mInPreLayout:Z

    .line 3060
    :goto_1
    iput-boolean v1, p0, Lc8/Rv;->mAdapterUpdateDuringMeasure:Z

    .line 3061
    invoke-virtual {p0, v1}, Lc8/Rv;->resumeRequestLayout(Z)V

    .line 3064
    :cond_6
    iget-object v3, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v3, :cond_8

    .line 3065
    iget-object v3, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v4, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v4}, Lc8/iv;->getItemCount()I

    move-result v4

    iput v4, v3, Lc8/Nv;->mItemCount:I

    .line 3069
    :goto_2
    invoke-virtual {p0}, Lc8/Rv;->eatRequestLayout()V

    .line 3070
    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v4, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    iget-object v5, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v3, v4, v5, p1, p2}, Lc8/xv;->onMeasure(Lc8/Fv;Lc8/Nv;II)V

    .line 3071
    invoke-virtual {p0, v1}, Lc8/Rv;->resumeRequestLayout(Z)V

    .line 3072
    iget-object v3, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput-boolean v1, v3, Lc8/Nv;->mInPreLayout:Z

    goto/16 :goto_0

    .line 3057
    :cond_7
    iget-object v3, p0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v3}, Lc8/ms;->consumeUpdatesInOnePass()V

    .line 3058
    iget-object v3, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput-boolean v1, v3, Lc8/Nv;->mInPreLayout:Z

    goto :goto_1

    .line 3067
    :cond_8
    iget-object v3, p0, Lc8/Rv;->mState:Lc8/Nv;

    iput v1, v3, Lc8/Nv;->mItemCount:I

    goto :goto_2
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2475
    invoke-virtual {p0}, Lc8/Rv;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2478
    const/4 v0, 0x0

    .line 2480
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1232
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    if-nez v0, :cond_1

    .line 1233
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1242
    .end local p1    # "state":Landroid/os/Parcelable;
    :cond_0
    :goto_0
    return-void

    .line 1237
    .restart local p1    # "state":Landroid/os/Parcelable;
    :cond_1
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lc8/Rv;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1238
    iget-object v0, p0, Lc8/Rv;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1239
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Rv;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lc8/xv;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1218
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1219
    .local v0, "state":Landroid/support/v7/widget/RecyclerView$SavedState;
    iget-object v1, p0, Lc8/Rv;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, p0, Lc8/Rv;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->copyFrom(Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 1227
    :goto_0
    return-object v0

    .line 1221
    :cond_0
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v1, :cond_1

    .line 1222
    iget-object v1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v1}, Lc8/xv;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 1224
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 4636
    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 4598
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3094
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 3095
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 3096
    :cond_0
    invoke-virtual {p0}, Lc8/Rv;->invalidateGlows()V

    .line 3099
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2783
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Rv;->mLayoutFrozen:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Rv;->mIgnoreMotionEventTillDown:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2784
    :cond_0
    const/16 v18, 0x0

    .line 2923
    :goto_0
    return v18

    .line 2786
    :cond_1
    invoke-direct/range {p0 .. p1}, Lc8/Rv;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2787
    invoke-direct/range {p0 .. p0}, Lc8/Rv;->cancelTouch()V

    .line 2788
    const/16 v18, 0x1

    goto :goto_0

    .line 2791
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mLayout:Lc8/xv;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 2792
    const/16 v18, 0x0

    goto :goto_0

    .line 2795
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mLayout:Lc8/xv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/xv;->canScrollHorizontally()Z

    move-result v5

    .line 2796
    .local v5, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mLayout:Lc8/xv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lc8/xv;->canScrollVertically()Z

    move-result v6

    .line 2798
    .local v6, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 2799
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2801
    :cond_4
    const/4 v9, 0x0

    .line 2803
    .local v9, "eventAddedToVelocityTracker":Z
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .line 2804
    .local v13, "vtev":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 2805
    .local v3, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 2807
    .local v4, "actionIndex":I
    if-nez v3, :cond_5

    .line 2808
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mNestedOffsets:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    aput v22, v20, v21

    aput v22, v18, v19

    .line 2810
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mNestedOffsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2812
    packed-switch v3, :pswitch_data_0

    .line 2918
    :cond_6
    :goto_1
    :pswitch_0
    if-nez v9, :cond_7

    .line 2919
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2921
    :cond_7
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 2923
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 2814
    :pswitch_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Rv;->mScrollPointerId:I

    .line 2815
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Rv;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Rv;->mInitialTouchX:I

    .line 2816
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Rv;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Rv;->mInitialTouchY:I

    .line 2818
    const/4 v11, 0x0

    .line 2819
    .local v11, "nestedScrollAxis":I
    if-eqz v5, :cond_8

    .line 2820
    or-int/lit8 v11, v11, 0x1

    .line 2822
    :cond_8
    if-eqz v6, :cond_9

    .line 2823
    or-int/lit8 v11, v11, 0x2

    .line 2825
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lc8/Rv;->startNestedScroll(I)Z

    goto :goto_1

    .line 2829
    .end local v11    # "nestedScrollAxis":I
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Rv;->mScrollPointerId:I

    .line 2830
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Rv;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Rv;->mInitialTouchX:I

    .line 2831
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Rv;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Rv;->mInitialTouchY:I

    goto/16 :goto_1

    .line 2835
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mScrollPointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 2836
    .local v10, "index":I
    if-gez v10, :cond_a

    .line 2837
    const-string/jumbo v18, "RecyclerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mScrollPointerId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 2842
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    .line 2843
    .local v14, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2844
    .local v16, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mLastTouchX:I

    move/from16 v18, v0

    sub-int v7, v18, v14

    .line 2845
    .local v7, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mLastTouchY:I

    move/from16 v18, v0

    sub-int v8, v18, v16

    .line 2847
    .local v8, "dy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mScrollConsumed:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mScrollOffset:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v7, v8, v1, v2}, Lc8/Rv;->dispatchNestedPreScroll(II[I[I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2848
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v7, v7, v18

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v8, v8, v18

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    .line 2856
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 2857
    const/4 v12, 0x0

    .line 2858
    .local v12, "startScroll":Z
    if-eqz v5, :cond_c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 2859
    if-lez v7, :cond_11

    .line 2860
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v7, v7, v18

    .line 2864
    :goto_2
    const/4 v12, 0x1

    .line 2866
    :cond_c
    if-eqz v6, :cond_d

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    .line 2867
    if-lez v8, :cond_12

    .line 2868
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v8, v8, v18

    .line 2872
    :goto_3
    const/4 v12, 0x1

    .line 2874
    :cond_d
    if-eqz v12, :cond_e

    .line 2875
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/Rv;->setScrollState(I)V

    .line 2879
    .end local v12    # "startScroll":Z
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 2880
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Rv;->mLastTouchX:I

    .line 2881
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v18, v16, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Rv;->mLastTouchY:I

    .line 2883
    if-eqz v5, :cond_13

    move/from16 v19, v7

    :goto_4
    if-eqz v6, :cond_14

    move/from16 v18, v8

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lc8/Rv;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lc8/Rv;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2889
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mGapWorker:Lc8/Ot;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    if-nez v7, :cond_10

    if-eqz v8, :cond_6

    .line 2890
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mGapWorker:Lc8/Ot;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7, v8}, Lc8/Ot;->postFromTraversal(Lc8/Rv;II)V

    goto/16 :goto_1

    .line 2862
    .restart local v12    # "startScroll":Z
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mTouchSlop:I

    move/from16 v18, v0

    add-int v7, v7, v18

    goto/16 :goto_2

    .line 2870
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mTouchSlop:I

    move/from16 v18, v0

    add-int v8, v8, v18

    goto/16 :goto_3

    .line 2883
    .end local v12    # "startScroll":Z
    :cond_13
    const/16 v18, 0x0

    move/from16 v19, v18

    goto :goto_4

    :cond_14
    const/16 v18, 0x0

    goto :goto_5

    .line 2896
    .end local v7    # "dx":I
    .end local v8    # "dy":I
    .end local v10    # "index":I
    .end local v14    # "x":I
    .end local v16    # "y":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lc8/Rv;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2900
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2901
    const/4 v9, 0x1

    .line 2902
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mMaxFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2903
    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mScrollPointerId:I

    move/from16 v19, v0

    .line 2904
    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    neg-float v15, v0

    .line 2905
    .local v15, "xvel":F
    :goto_6
    if-eqz v6, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Rv;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Rv;->mScrollPointerId:I

    move/from16 v19, v0

    .line 2906
    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v17, v0

    .line 2907
    .local v17, "yvel":F
    :goto_7
    const/16 v18, 0x0

    cmpl-float v18, v15, v18

    if-nez v18, :cond_15

    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-eqz v18, :cond_16

    :cond_15
    float-to-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lc8/Rv;->fling(II)Z

    move-result v18

    if-nez v18, :cond_17

    .line 2908
    :cond_16
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/Rv;->setScrollState(I)V

    .line 2910
    :cond_17
    invoke-direct/range {p0 .. p0}, Lc8/Rv;->resetTouch()V

    goto/16 :goto_1

    .line 2904
    .end local v15    # "xvel":F
    .end local v17    # "yvel":F
    :cond_18
    const/4 v15, 0x0

    goto :goto_6

    .line 2906
    .restart local v15    # "xvel":F
    :cond_19
    const/16 v17, 0x0

    goto :goto_7

    .line 2914
    .end local v15    # "xvel":F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lc8/Rv;->cancelTouch()V

    goto/16 :goto_1

    .line 2812
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method postAnimationRunner()V
    .locals 1

    .prologue
    .line 3227
    iget-boolean v0, p0, Lc8/Rv;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Rv;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 3228
    iget-object v0, p0, Lc8/Rv;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Rv;->mPostedAnimatorRunner:Z

    .line 3231
    :cond_0
    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Lc8/Qv;Lc8/pv;)V
    .locals 4
    .param p1, "viewHolder"    # Lc8/Qv;
    .param p2, "animationInfo"    # Lc8/pv;

    .prologue
    .line 3737
    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {p1, v2, v3}, Lc8/Qv;->setFlags(II)V

    .line 3738
    iget-object v2, p0, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v2, v2, Lc8/Nv;->mTrackOldChangeHolders:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lc8/Qv;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3739
    invoke-virtual {p1}, Lc8/Qv;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lc8/Qv;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3740
    invoke-virtual {p0, p1}, Lc8/Rv;->getChangedHolderKey(Lc8/Qv;)J

    move-result-wide v0

    .line 3741
    .local v0, "key":J
    iget-object v2, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v2, v0, v1, p1}, Lc8/vx;->addToOldChangeHolders(JLc8/Qv;)V

    .line 3743
    .end local v0    # "key":J
    :cond_0
    iget-object v2, p0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v2, p1, p2}, Lc8/vx;->addToPreLayout(Lc8/Qv;Lc8/pv;)V

    .line 3744
    return-void
.end method

.method removeAndRecycleViews()V
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    invoke-virtual {v0}, Lc8/qv;->endAnimations()V

    .line 1019
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, v1}, Lc8/xv;->removeAndRecycleAllViews(Lc8/Fv;)V

    .line 1021
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, v1}, Lc8/xv;->removeAndRecycleScrapInt(Lc8/Fv;)V

    .line 1024
    :cond_1
    iget-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0}, Lc8/Fv;->clear()V

    .line 1025
    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1289
    invoke-virtual {p0}, Lc8/Rv;->eatRequestLayout()V

    .line 1290
    iget-object v2, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v2, p1}, Lc8/ht;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 1291
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 1292
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    .line 1293
    .local v1, "viewHolder":Lc8/Qv;
    iget-object v2, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v2, v1}, Lc8/Fv;->unscrapView(Lc8/Qv;)V

    .line 1294
    iget-object v2, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v2, v1}, Lc8/Fv;->recycleViewHolderInternal(Lc8/Qv;)V

    .line 1300
    .end local v1    # "viewHolder":Lc8/Qv;
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lc8/Rv;->resumeRequestLayout(Z)V

    .line 1301
    return v0

    .line 1300
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 3780
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v0

    .line 3781
    .local v0, "vh":Lc8/Qv;
    if-eqz v0, :cond_0

    .line 3782
    invoke-virtual {v0}, Lc8/Qv;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3783
    invoke-virtual {v0}, Lc8/Qv;->clearTmpDetachFlag()V

    .line 3789
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Rv;->dispatchChildDetached(Landroid/view/View;)V

    .line 3790
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3791
    return-void

    .line 3784
    :cond_1
    invoke-virtual {v0}, Lc8/Qv;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3785
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeItemDecoration(Lc8/sv;)V
    .locals 2
    .param p1, "decor"    # Lc8/sv;

    .prologue
    .line 1446
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    const-string/jumbo v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lc8/xv;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1450
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1451
    iget-object v0, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    invoke-virtual {p0}, Lc8/Rv;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lc8/Rv;->setWillNotDraw(Z)V

    .line 1454
    :cond_1
    invoke-virtual {p0}, Lc8/Rv;->markItemDecorInsetsDirty()V

    .line 1455
    invoke-virtual {p0}, Lc8/Rv;->requestLayout()V

    .line 1456
    return-void

    .line 1452
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOnChildAttachStateChangeListener(Lc8/zv;)V
    .locals 1
    .param p1, "listener"    # Lc8/zv;

    .prologue
    .line 1125
    iget-object v0, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1129
    :goto_0
    return-void

    .line 1128
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnItemTouchListener(Lc8/Bv;)V
    .locals 1
    .param p1, "listener"    # Lc8/Bv;

    .prologue
    .line 2613
    iget-object v0, p0, Lc8/Rv;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2614
    iget-object v0, p0, Lc8/Rv;->mActiveOnItemTouchListener:Lc8/Bv;

    if-ne v0, p1, :cond_0

    .line 2615
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Rv;->mActiveOnItemTouchListener:Lc8/Bv;

    .line 2617
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lc8/Cv;)V
    .locals 1
    .param p1, "listener"    # Lc8/Cv;

    .prologue
    .line 1513
    iget-object v0, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lc8/Rv;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1516
    :cond_0
    return-void
.end method

.method repositionShadowingViews()V
    .locals 9

    .prologue
    .line 4908
    iget-object v7, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v7}, Lc8/ht;->getChildCount()I

    move-result v0

    .line 4909
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4910
    iget-object v7, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v7, v2}, Lc8/ht;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4911
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lc8/Rv;->getChildViewHolder(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    .line 4912
    .local v1, "holder":Lc8/Qv;
    if-eqz v1, :cond_1

    iget-object v7, v1, Lc8/Qv;->mShadowingHolder:Lc8/Qv;

    if-eqz v7, :cond_1

    .line 4913
    iget-object v7, v1, Lc8/Qv;->mShadowingHolder:Lc8/Qv;

    iget-object v4, v7, Lc8/Qv;->itemView:Landroid/view/View;

    .line 4914
    .local v4, "shadowingView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 4915
    .local v3, "left":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4916
    .local v5, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v3, v7, :cond_0

    .line 4917
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v5, v7, :cond_1

    .line 4919
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    .line 4920
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v5

    .line 4918
    invoke-virtual {v4, v3, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 4909
    .end local v3    # "left":I
    .end local v4    # "shadowingView":Landroid/view/View;
    .end local v5    # "top":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4924
    .end local v1    # "holder":Lc8/Qv;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2418
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, p0, v1, p1, p2}, Lc8/xv;->onRequestChildFocus(Lc8/Rv;Lc8/Nv;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2419
    invoke-direct {p0, p1, p2}, Lc8/Rv;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 2421
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2422
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2463
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0, p0, p1, p2, p3}, Lc8/xv;->requestChildRectangleOnScreen(Lc8/Rv;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2773
    iget-object v3, p0, Lc8/Rv;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2774
    .local v2, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2775
    iget-object v3, p0, Lc8/Rv;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Bv;

    .line 2776
    .local v1, "listener":Lc8/Bv;
    invoke-interface {v1, p1}, Lc8/Bv;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2774
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2778
    .end local v1    # "listener":Lc8/Bv;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2779
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3851
    iget v0, p0, Lc8/Rv;->mEatRequestLayout:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Rv;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 3852
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3856
    :goto_0
    return-void

    .line 3854
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Rv;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 3
    .param p1, "performLayoutChildren"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1886
    iget v0, p0, Lc8/Rv;->mEatRequestLayout:I

    if-gtz v0, :cond_0

    .line 1891
    iput v2, p0, Lc8/Rv;->mEatRequestLayout:I

    .line 1893
    :cond_0
    if-nez p1, :cond_1

    .line 1902
    iput-boolean v1, p0, Lc8/Rv;->mLayoutRequestEaten:Z

    .line 1904
    :cond_1
    iget v0, p0, Lc8/Rv;->mEatRequestLayout:I

    if-ne v0, v2, :cond_3

    .line 1906
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lc8/Rv;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lc8/Rv;->mLayoutFrozen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_2

    .line 1908
    invoke-virtual {p0}, Lc8/Rv;->dispatchLayout()V

    .line 1910
    :cond_2
    iget-boolean v0, p0, Lc8/Rv;->mLayoutFrozen:Z

    if-nez v0, :cond_3

    .line 1911
    iput-boolean v1, p0, Lc8/Rv;->mLayoutRequestEaten:Z

    .line 1914
    :cond_3
    iget v0, p0, Lc8/Rv;->mEatRequestLayout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/Rv;->mEatRequestLayout:I

    .line 1915
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .prologue
    .line 3980
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v0

    .line 3981
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3982
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3, v2}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    .line 3987
    .local v1, "holder":Lc8/Qv;
    invoke-virtual {v1}, Lc8/Qv;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3988
    invoke-virtual {v1}, Lc8/Qv;->saveOldPosition()V

    .line 3981
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3991
    .end local v1    # "holder":Lc8/Qv;
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1592
    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v3, :cond_1

    .line 1593
    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    .end local p1    # "x":I
    .end local p2    # "y":I
    :cond_0
    :goto_0
    return-void

    .line 1597
    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_1
    iget-boolean v3, p0, Lc8/Rv;->mLayoutFrozen:Z

    if-nez v3, :cond_0

    .line 1600
    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v3}, Lc8/xv;->canScrollHorizontally()Z

    move-result v0

    .line 1601
    .local v0, "canScrollHorizontal":Z
    iget-object v3, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v3}, Lc8/xv;->canScrollVertically()Z

    move-result v1

    .line 1602
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 1603
    :cond_2
    if-eqz v0, :cond_3

    .end local p1    # "x":I
    :goto_1
    if-eqz v1, :cond_4

    .end local p2    # "y":I
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lc8/Rv;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_3
    move p1, v2

    goto :goto_1

    .end local p1    # "x":I
    :cond_4
    move p2, v2

    goto :goto_2
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1682
    const/4 v3, 0x0

    .local v3, "unconsumedX":I
    const/4 v4, 0x0

    .line 1683
    .local v4, "unconsumedY":I
    const/4 v1, 0x0

    .local v1, "consumedX":I
    const/4 v2, 0x0

    .line 1685
    .local v2, "consumedY":I
    invoke-virtual {p0}, Lc8/Rv;->consumePendingUpdateOperations()V

    .line 1686
    iget-object v0, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_2

    .line 1687
    invoke-virtual {p0}, Lc8/Rv;->eatRequestLayout()V

    .line 1688
    invoke-virtual {p0}, Lc8/Rv;->onEnterLayoutOrScroll()V

    .line 1689
    const-string/jumbo v0, "RV Scroll"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1690
    if-eqz p1, :cond_0

    .line 1691
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v5, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    iget-object v8, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, p1, v5, v8}, Lc8/xv;->scrollHorizontallyBy(ILc8/Fv;Lc8/Nv;)I

    move-result v1

    .line 1692
    sub-int v3, p1, v1

    .line 1694
    :cond_0
    if-eqz p2, :cond_1

    .line 1695
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v5, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    iget-object v8, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, p2, v5, v8}, Lc8/xv;->scrollVerticallyBy(ILc8/Fv;Lc8/Nv;)I

    move-result v2

    .line 1696
    sub-int v4, p2, v2

    .line 1698
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1699
    invoke-virtual {p0}, Lc8/Rv;->repositionShadowingViews()V

    .line 1700
    invoke-virtual {p0}, Lc8/Rv;->onExitLayoutOrScroll()V

    .line 1701
    invoke-virtual {p0, v6}, Lc8/Rv;->resumeRequestLayout(Z)V

    .line 1703
    :cond_2
    iget-object v0, p0, Lc8/Rv;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1704
    invoke-virtual {p0}, Lc8/Rv;->invalidate()V

    .line 1707
    :cond_3
    iget-object v5, p0, Lc8/Rv;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Rv;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1709
    iget v0, p0, Lc8/Rv;->mLastTouchX:I

    iget-object v5, p0, Lc8/Rv;->mScrollOffset:[I

    aget v5, v5, v6

    sub-int/2addr v0, v5

    iput v0, p0, Lc8/Rv;->mLastTouchX:I

    .line 1710
    iget v0, p0, Lc8/Rv;->mLastTouchY:I

    iget-object v5, p0, Lc8/Rv;->mScrollOffset:[I

    aget v5, v5, v7

    sub-int/2addr v0, v5

    iput v0, p0, Lc8/Rv;->mLastTouchY:I

    .line 1711
    if-eqz p3, :cond_4

    .line 1712
    iget-object v0, p0, Lc8/Rv;->mScrollOffset:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget-object v5, p0, Lc8/Rv;->mScrollOffset:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-virtual {p3, v0, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1714
    :cond_4
    iget-object v0, p0, Lc8/Rv;->mNestedOffsets:[I

    aget v5, v0, v6

    iget-object v8, p0, Lc8/Rv;->mScrollOffset:[I

    aget v8, v8, v6

    add-int/2addr v5, v8

    aput v5, v0, v6

    .line 1715
    iget-object v0, p0, Lc8/Rv;->mNestedOffsets:[I

    aget v5, v0, v7

    iget-object v8, p0, Lc8/Rv;->mScrollOffset:[I

    aget v8, v8, v7

    add-int/2addr v5, v8

    aput v5, v0, v7

    .line 1722
    :cond_5
    :goto_0
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 1723
    :cond_6
    invoke-virtual {p0, v1, v2}, Lc8/Rv;->dispatchOnScrolled(II)V

    .line 1725
    :cond_7
    invoke-virtual {p0}, Lc8/Rv;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1726
    invoke-virtual {p0}, Lc8/Rv;->invalidate()V

    .line 1728
    :cond_8
    if-nez v1, :cond_9

    if-eqz v2, :cond_c

    :cond_9
    move v0, v7

    :goto_1
    return v0

    .line 1716
    :cond_a
    invoke-virtual {p0}, Lc8/Rv;->getOverScrollMode()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    .line 1717
    if-eqz p3, :cond_b

    .line 1718
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v5, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    int-to-float v9, v4

    invoke-direct {p0, v0, v5, v8, v9}, Lc8/Rv;->pullGlows(FFFF)V

    .line 1720
    :cond_b
    invoke-virtual {p0, p1, p2}, Lc8/Rv;->considerReleasingGlowsOnScroll(II)V

    goto :goto_0

    :cond_c
    move v0, v6

    .line 1728
    goto :goto_1
.end method

.method public scrollTo(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1588
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1536
    iget-boolean v0, p0, Lc8/Rv;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1547
    :goto_0
    return-void

    .line 1539
    :cond_0
    invoke-virtual {p0}, Lc8/Rv;->stopScroll()V

    .line 1540
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v0, :cond_1

    .line 1541
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1545
    :cond_1
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0, p1}, Lc8/xv;->scrollToPosition(I)V

    .line 1546
    invoke-virtual {p0}, Lc8/Rv;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3203
    invoke-virtual {p0, p1}, Lc8/Rv;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3207
    :goto_0
    return-void

    .line 3206
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Lc8/Tv;)V
    .locals 1
    .param p1, "accessibilityDelegate"    # Lc8/Tv;

    .prologue
    .line 629
    iput-object p1, p0, Lc8/Rv;->mAccessibilityDelegate:Lc8/Tv;

    .line 630
    iget-object v0, p0, Lc8/Rv;->mAccessibilityDelegate:Lc8/Tv;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 631
    return-void
.end method

.method public setAdapter(Lc8/iv;)V
    .locals 2
    .param p1, "adapter"    # Lc8/iv;

    .prologue
    const/4 v1, 0x0

    .line 1002
    invoke-virtual {p0, v1}, Lc8/Rv;->setLayoutFrozen(Z)V

    .line 1003
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lc8/Rv;->setAdapterInternal(Lc8/iv;ZZ)V

    .line 1004
    invoke-virtual {p0}, Lc8/Rv;->requestLayout()V

    .line 1005
    return-void
.end method

.method public setChildDrawingOrderCallback(Lc8/lv;)V
    .locals 1
    .param p1, "childDrawingOrderCallback"    # Lc8/lv;

    .prologue
    .line 1471
    iget-object v0, p0, Lc8/Rv;->mChildDrawingOrderCallback:Lc8/lv;

    if-ne p1, v0, :cond_0

    .line 1476
    :goto_0
    return-void

    .line 1474
    :cond_0
    iput-object p1, p0, Lc8/Rv;->mChildDrawingOrderCallback:Lc8/lv;

    .line 1475
    iget-object v0, p0, Lc8/Rv;->mChildDrawingOrderCallback:Lc8/lv;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lc8/Rv;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setChildImportantForAccessibilityInternal(Lc8/Qv;I)Z
    .locals 1
    .param p1, "viewHolder"    # Lc8/Qv;
    .param p2, "importantForAccessibility"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 10686
    invoke-virtual {p0}, Lc8/Rv;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10687
    iput p2, p1, Lc8/Qv;->mPendingAccessibilityState:I

    .line 10688
    iget-object v0, p0, Lc8/Rv;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10689
    const/4 v0, 0x0

    .line 10692
    :goto_0
    return v0

    .line 10691
    :cond_0
    iget-object v0, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 10692
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 917
    iget-boolean v0, p0, Lc8/Rv;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 918
    invoke-virtual {p0}, Lc8/Rv;->invalidateGlows()V

    .line 920
    :cond_0
    iput-boolean p1, p0, Lc8/Rv;->mClipToPadding:Z

    .line 921
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 922
    iget-boolean v0, p0, Lc8/Rv;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {p0}, Lc8/Rv;->requestLayout()V

    .line 925
    :cond_1
    return-void
.end method

.method setDataSetChangedAfterLayout()V
    .locals 4

    .prologue
    .line 4132
    iget-boolean v3, p0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 4148
    :goto_0
    return-void

    .line 4135
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    .line 4136
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v0

    .line 4137
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 4138
    iget-object v3, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v3, v2}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    .line 4139
    .local v1, "holder":Lc8/Qv;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc8/Qv;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4140
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lc8/Qv;->addFlags(I)V

    .line 4137
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4143
    .end local v1    # "holder":Lc8/Qv;
    :cond_2
    iget-object v3, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v3}, Lc8/Fv;->setAdapterPositionsAsUnknown()V

    .line 4147
    invoke-virtual {p0}, Lc8/Rv;->markKnownViewsInvalid()V

    goto :goto_0
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .param p1, "hasFixedSize"    # Z

    .prologue
    .line 904
    iput-boolean p1, p0, Lc8/Rv;->mHasFixedSize:Z

    .line 905
    return-void
.end method

.method public setItemAnimator(Lc8/qv;)V
    .locals 2
    .param p1, "animator"    # Lc8/qv;

    .prologue
    .line 3113
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    if-eqz v0, :cond_0

    .line 3114
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    invoke-virtual {v0}, Lc8/qv;->endAnimations()V

    .line 3115
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/qv;->setListener(Lc8/ov;)V

    .line 3117
    :cond_0
    iput-object p1, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    .line 3118
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    if-eqz v0, :cond_1

    .line 3119
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    iget-object v1, p0, Lc8/Rv;->mItemAnimatorListener:Lc8/ov;

    invoke-virtual {v0, v1}, Lc8/qv;->setListener(Lc8/ov;)V

    .line 3121
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1361
    iget-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, p1}, Lc8/Fv;->setViewCacheSize(I)V

    .line 1362
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 10
    .param p1, "frozen"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1940
    iget-boolean v2, p0, Lc8/Rv;->mLayoutFrozen:Z

    if-eq p1, v2, :cond_1

    .line 1941
    const-string/jumbo v2, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v2}, Lc8/Rv;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1942
    if-nez p1, :cond_2

    .line 1943
    iput-boolean v7, p0, Lc8/Rv;->mLayoutFrozen:Z

    .line 1944
    iget-boolean v2, p0, Lc8/Rv;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v2, :cond_0

    .line 1945
    invoke-virtual {p0}, Lc8/Rv;->requestLayout()V

    .line 1947
    :cond_0
    iput-boolean v7, p0, Lc8/Rv;->mLayoutRequestEaten:Z

    .line 1958
    :cond_1
    :goto_0
    return-void

    .line 1949
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1950
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1952
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lc8/Rv;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1953
    iput-boolean v9, p0, Lc8/Rv;->mLayoutFrozen:Z

    .line 1954
    iput-boolean v9, p0, Lc8/Rv;->mIgnoreMotionEventTillDown:Z

    .line 1955
    invoke-virtual {p0}, Lc8/Rv;->stopScroll()V

    goto :goto_0
.end method

.method public setLayoutManager(Lc8/xv;)V
    .locals 3
    .param p1, "layout"    # Lc8/xv;

    .prologue
    const/4 v2, 0x0

    .line 1154
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-ne p1, v0, :cond_0

    .line 1192
    :goto_0
    return-void

    .line 1157
    :cond_0
    invoke-virtual {p0}, Lc8/Rv;->stopScroll()V

    .line 1160
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v0, :cond_3

    .line 1162
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lc8/Rv;->mItemAnimator:Lc8/qv;

    invoke-virtual {v0}, Lc8/qv;->endAnimations()V

    .line 1165
    :cond_1
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, v1}, Lc8/xv;->removeAndRecycleAllViews(Lc8/Fv;)V

    .line 1166
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, v1}, Lc8/xv;->removeAndRecycleScrapInt(Lc8/Fv;)V

    .line 1167
    iget-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0}, Lc8/Fv;->clear()V

    .line 1169
    iget-boolean v0, p0, Lc8/Rv;->mIsAttached:Z

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, p0, v1}, Lc8/xv;->dispatchDetachedFromWindow(Lc8/Rv;Lc8/Fv;)V

    .line 1172
    :cond_2
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0, v2}, Lc8/xv;->setRecyclerView(Lc8/Rv;)V

    .line 1173
    iput-object v2, p0, Lc8/Rv;->mLayout:Lc8/xv;

    .line 1178
    :goto_1
    iget-object v0, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v0}, Lc8/ht;->removeAllViewsUnfiltered()V

    .line 1179
    iput-object p1, p0, Lc8/Rv;->mLayout:Lc8/xv;

    .line 1180
    if-eqz p1, :cond_5

    .line 1181
    iget-object v0, p1, Lc8/xv;->mRecyclerView:Lc8/Rv;

    if-eqz v0, :cond_4

    .line 1182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lc8/xv;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1175
    :cond_3
    iget-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0}, Lc8/Fv;->clear()V

    goto :goto_1

    .line 1185
    :cond_4
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0, p0}, Lc8/xv;->setRecyclerView(Lc8/Rv;)V

    .line 1186
    iget-boolean v0, p0, Lc8/Rv;->mIsAttached:Z

    if-eqz v0, :cond_5

    .line 1187
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0, p0}, Lc8/xv;->dispatchAttachedToWindow(Lc8/Rv;)V

    .line 1190
    :cond_5
    iget-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0}, Lc8/Fv;->updateViewCacheSize()V

    .line 1191
    invoke-virtual {p0}, Lc8/Rv;->requestLayout()V

    goto/16 :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 10725
    invoke-direct {p0}, Lc8/Rv;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 10726
    return-void
.end method

.method public setOnFlingListener(Lc8/Av;)V
    .locals 0
    .param p1, "onFlingListener"    # Lc8/Av;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1203
    iput-object p1, p0, Lc8/Rv;->mOnFlingListener:Lc8/Av;

    .line 1204
    return-void
.end method

.method public setOnScrollListener(Lc8/Cv;)V
    .locals 0
    .param p1, "listener"    # Lc8/Cv;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1488
    iput-object p1, p0, Lc8/Rv;->mScrollListener:Lc8/Cv;

    .line 1489
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0
    .param p1, "preserveFocusAfterLayout"    # Z

    .prologue
    .line 4212
    iput-boolean p1, p0, Lc8/Rv;->mPreserveFocusAfterLayout:Z

    .line 4213
    return-void
.end method

.method public setRecycledViewPool(Lc8/Ev;)V
    .locals 1
    .param p1, "pool"    # Lc8/Ev;

    .prologue
    .line 1335
    iget-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, p1}, Lc8/Fv;->setRecycledViewPool(Lc8/Ev;)V

    .line 1336
    return-void
.end method

.method public setRecyclerListener(Lc8/Gv;)V
    .locals 0
    .param p1, "listener"    # Lc8/Gv;

    .prologue
    .line 1081
    iput-object p1, p0, Lc8/Rv;->mRecyclerListener:Lc8/Gv;

    .line 1082
    return-void
.end method

.method setScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1375
    iget v0, p0, Lc8/Rv;->mScrollState:I

    if-ne p1, v0, :cond_0

    .line 1387
    :goto_0
    return-void

    .line 1382
    :cond_0
    iput p1, p0, Lc8/Rv;->mScrollState:I

    .line 1383
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1384
    invoke-direct {p0}, Lc8/Rv;->stopScrollersInternal()V

    .line 1386
    :cond_1
    invoke-virtual {p0, p1}, Lc8/Rv;->dispatchOnScrollStateChanged(I)V

    goto :goto_0
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3
    .param p1, "slopConstant"    # I

    .prologue
    .line 954
    invoke-virtual {p0}, Lc8/Rv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 955
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_0

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; using default value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lc8/Rv;->mTouchSlop:I

    .line 968
    :goto_0
    return-void

    .line 965
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lc8/Rv;->mTouchSlop:I

    goto :goto_0

    .line 955
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Lc8/Ov;)V
    .locals 1
    .param p1, "extension"    # Lc8/Ov;

    .prologue
    .line 1346
    iget-object v0, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v0, p1}, Lc8/Fv;->setViewCacheExtension(Lc8/Ov;)V

    .line 1347
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3187
    invoke-virtual {p0}, Lc8/Rv;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3188
    const/4 v0, 0x0

    .line 3189
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 3190
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    .line 3192
    :cond_0
    if-nez v0, :cond_1

    .line 3193
    const/4 v0, 0x0

    .line 3195
    :cond_1
    iget v1, p0, Lc8/Rv;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lc8/Rv;->mEatenAccessibilityChangeFlags:I

    .line 3196
    const/4 v1, 0x1

    .line 3198
    .end local v0    # "type":I
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1977
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/Rv;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 1978
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1989
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v0, :cond_1

    .line 1990
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    :cond_0
    :goto_0
    return-void

    .line 1994
    :cond_1
    iget-boolean v0, p0, Lc8/Rv;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1997
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1998
    const/4 p1, 0x0

    .line 2000
    :cond_2
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2001
    const/4 p2, 0x0

    .line 2003
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_0

    .line 2004
    :cond_4
    iget-object v0, p0, Lc8/Rv;->mViewFlinger:Lc8/Pv;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Pv;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1573
    iget-boolean v0, p0, Lc8/Rv;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1582
    :goto_0
    return-void

    .line 1576
    :cond_0
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    if-nez v0, :cond_1

    .line 1577
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1581
    :cond_1
    iget-object v0, p0, Lc8/Rv;->mLayout:Lc8/xv;

    iget-object v1, p0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0, p0, v1, p1}, Lc8/xv;->smoothScrollToPosition(Lc8/Rv;Lc8/Nv;I)V

    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 10735
    invoke-direct {p0}, Lc8/Rv;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 10740
    invoke-direct {p0}, Lc8/Rv;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 10741
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 2068
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Rv;->setScrollState(I)V

    .line 2069
    invoke-direct {p0}, Lc8/Rv;->stopScrollersInternal()V

    .line 2070
    return-void
.end method

.method public swapAdapter(Lc8/iv;Z)V
    .locals 1
    .param p1, "adapter"    # Lc8/iv;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .prologue
    .line 986
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Rv;->setLayoutFrozen(Z)V

    .line 987
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lc8/Rv;->setAdapterInternal(Lc8/iv;ZZ)V

    .line 988
    invoke-virtual {p0}, Lc8/Rv;->setDataSetChangedAfterLayout()V

    .line 989
    invoke-virtual {p0}, Lc8/Rv;->requestLayout()V

    .line 990
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 4092
    iget-object v5, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v5}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v1

    .line 4093
    .local v1, "childCount":I
    add-int v4, p1, p2

    .line 4095
    .local v4, "positionEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 4096
    iget-object v5, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v5, v3}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4097
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v2

    .line 4098
    .local v2, "holder":Lc8/Qv;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc8/Qv;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4101
    iget v5, v2, Lc8/Qv;->mPosition:I

    if-lt v5, p1, :cond_0

    iget v5, v2, Lc8/Qv;->mPosition:I

    if-ge v5, v4, :cond_0

    .line 4104
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lc8/Qv;->addFlags(I)V

    .line 4105
    invoke-virtual {v2, p3}, Lc8/Qv;->addChangePayload(Ljava/lang/Object;)V

    .line 4107
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lc8/yv;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lc8/yv;->mInsetsDirty:Z

    .line 4095
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4110
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "holder":Lc8/Qv;
    :cond_1
    iget-object v5, p0, Lc8/Rv;->mRecycler:Lc8/Fv;

    invoke-virtual {v5, p1, p2}, Lc8/Fv;->viewRangeUpdate(II)V

    .line 4111
    return-void
.end method
