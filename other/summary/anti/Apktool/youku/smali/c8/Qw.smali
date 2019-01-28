.class public Lc8/Qw;
.super Lc8/xv;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Lc8/Lv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Kw;,
        Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;,
        Lc8/Nw;,
        Lc8/Pw;,
        Lc8/Lw;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "StaggeredGridLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Lc8/Kw;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Lc8/nu;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mLazySpanLookup:Lc8/Nw;

.field private mOrientation:I

.field private mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mPrefetchDistances:[I

.field mPrimaryOrientation:Lc8/Ru;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Lc8/Ru;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Lc8/Pw;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "spanCount"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0}, Lc8/xv;-><init>()V

    .line 112
    iput v2, p0, Lc8/Qw;->mSpanCount:I

    .line 135
    iput-boolean v1, p0, Lc8/Qw;->mReverseLayout:Z

    .line 140
    iput-boolean v1, p0, Lc8/Qw;->mShouldReverseLayout:Z

    .line 151
    iput v2, p0, Lc8/Qw;->mPendingScrollPosition:I

    .line 157
    const/high16 v2, -0x80000000

    iput v2, p0, Lc8/Qw;->mPendingScrollPositionOffset:I

    .line 163
    new-instance v2, Lc8/Nw;

    invoke-direct {v2}, Lc8/Nw;-><init>()V

    iput-object v2, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    .line 168
    const/4 v2, 0x2

    iput v2, p0, Lc8/Qw;->mGapStrategy:I

    .line 194
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lc8/Qw;->mTmpRect:Landroid/graphics/Rect;

    .line 199
    new-instance v2, Lc8/Kw;

    invoke-direct {v2, p0}, Lc8/Kw;-><init>(Lc8/Qw;)V

    iput-object v2, p0, Lc8/Qw;->mAnchorInfo:Lc8/Kw;

    .line 207
    iput-boolean v1, p0, Lc8/Qw;->mLaidOutInvalidFullSpan:Z

    .line 213
    iput-boolean v0, p0, Lc8/Qw;->mSmoothScrollbarEnabled:Z

    .line 221
    new-instance v2, Lc8/Jw;

    invoke-direct {v2, p0}, Lc8/Jw;-><init>(Lc8/Qw;)V

    iput-object v2, p0, Lc8/Qw;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 252
    iput p2, p0, Lc8/Qw;->mOrientation:I

    .line 253
    invoke-virtual {p0, p1}, Lc8/Qw;->setSpanCount(I)V

    .line 254
    iget v2, p0, Lc8/Qw;->mGapStrategy:I

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lc8/Qw;->setAutoMeasureEnabled(Z)V

    .line 255
    new-instance v0, Lc8/nu;

    invoke-direct {v0}, Lc8/nu;-><init>()V

    iput-object v0, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    .line 256
    invoke-direct {p0}, Lc8/Qw;->createOrientationHelpers()V

    .line 257
    return-void

    :cond_0
    move v0, v1

    .line 254
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 234
    invoke-direct {p0}, Lc8/xv;-><init>()V

    .line 112
    iput v3, p0, Lc8/Qw;->mSpanCount:I

    .line 135
    iput-boolean v2, p0, Lc8/Qw;->mReverseLayout:Z

    .line 140
    iput-boolean v2, p0, Lc8/Qw;->mShouldReverseLayout:Z

    .line 151
    iput v3, p0, Lc8/Qw;->mPendingScrollPosition:I

    .line 157
    const/high16 v3, -0x80000000

    iput v3, p0, Lc8/Qw;->mPendingScrollPositionOffset:I

    .line 163
    new-instance v3, Lc8/Nw;

    invoke-direct {v3}, Lc8/Nw;-><init>()V

    iput-object v3, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    .line 168
    const/4 v3, 0x2

    iput v3, p0, Lc8/Qw;->mGapStrategy:I

    .line 194
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lc8/Qw;->mTmpRect:Landroid/graphics/Rect;

    .line 199
    new-instance v3, Lc8/Kw;

    invoke-direct {v3, p0}, Lc8/Kw;-><init>(Lc8/Qw;)V

    iput-object v3, p0, Lc8/Qw;->mAnchorInfo:Lc8/Kw;

    .line 207
    iput-boolean v2, p0, Lc8/Qw;->mLaidOutInvalidFullSpan:Z

    .line 213
    iput-boolean v1, p0, Lc8/Qw;->mSmoothScrollbarEnabled:Z

    .line 221
    new-instance v3, Lc8/Jw;

    invoke-direct {v3, p0}, Lc8/Jw;-><init>(Lc8/Qw;)V

    iput-object v3, p0, Lc8/Qw;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 235
    invoke-static {p1, p2, p3, p4}, Lc8/Qw;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lc8/wv;

    move-result-object v0

    .line 236
    .local v0, "properties":Lc8/wv;
    iget v3, v0, Lc8/wv;->orientation:I

    invoke-virtual {p0, v3}, Lc8/Qw;->setOrientation(I)V

    .line 237
    iget v3, v0, Lc8/wv;->spanCount:I

    invoke-virtual {p0, v3}, Lc8/Qw;->setSpanCount(I)V

    .line 238
    iget-boolean v3, v0, Lc8/wv;->reverseLayout:Z

    invoke-virtual {p0, v3}, Lc8/Qw;->setReverseLayout(Z)V

    .line 239
    iget v3, p0, Lc8/Qw;->mGapStrategy:I

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lc8/Qw;->setAutoMeasureEnabled(Z)V

    .line 240
    new-instance v1, Lc8/nu;

    invoke-direct {v1}, Lc8/nu;-><init>()V

    iput-object v1, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    .line 241
    invoke-direct {p0}, Lc8/Qw;->createOrientationHelpers()V

    .line 242
    return-void

    :cond_0
    move v1, v2

    .line 239
    goto :goto_0
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1773
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1774
    iget-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lc8/Pw;->appendToSpan(Landroid/view/View;)V

    .line 1773
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1776
    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Lc8/Kw;)V
    .locals 4
    .param p1, "anchorInfo"    # Lc8/Kw;

    .prologue
    .line 787
    iget-object v2, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v2, :cond_3

    .line 788
    iget-object v2, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v3, p0, Lc8/Qw;->mSpanCount:I

    if-ne v2, v3, :cond_2

    .line 789
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v2, :cond_3

    .line 790
    iget-object v2, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lc8/Pw;->clear()V

    .line 791
    iget-object v2, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v1, v2, v0

    .line 792
    .local v1, "line":I
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 793
    iget-object v2, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v2, :cond_1

    .line 794
    iget-object v2, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v2}, Lc8/Ru;->getEndAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 799
    :cond_0
    :goto_1
    iget-object v2, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lc8/Pw;->setLine(I)V

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 796
    :cond_1
    iget-object v2, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v2}, Lc8/Ru;->getStartAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 802
    .end local v0    # "i":I
    .end local v1    # "line":I
    :cond_2
    iget-object v2, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 803
    iget-object v2, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 806
    :cond_3
    iget-object v2, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v2, p0, Lc8/Qw;->mLastLayoutRTL:Z

    .line 807
    iget-object v2, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v2}, Lc8/Qw;->setReverseLayout(Z)V

    .line 808
    invoke-direct {p0}, Lc8/Qw;->resolveShouldLayoutReverse()V

    .line 810
    iget-object v2, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 811
    iget-object v2, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v2, p0, Lc8/Qw;->mPendingScrollPosition:I

    .line 812
    iget-object v2, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v2, p1, Lc8/Kw;->mLayoutFromEnd:Z

    .line 816
    :goto_2
    iget-object v2, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 817
    iget-object v2, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    iget-object v3, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v3, v2, Lc8/Nw;->mData:[I

    .line 818
    iget-object v2, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    iget-object v3, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v3, v2, Lc8/Nw;->mFullSpanItems:Ljava/util/List;

    .line 820
    :cond_4
    return-void

    .line 814
    :cond_5
    iget-boolean v2, p0, Lc8/Qw;->mShouldReverseLayout:Z

    iput-boolean v2, p1, Lc8/Kw;->mLayoutFromEnd:Z

    goto :goto_2
.end method

.method private attachViewToSpans(Landroid/view/View;Lc8/Lw;Lc8/nu;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Lc8/Lw;
    .param p3, "layoutState"    # Lc8/nu;

    .prologue
    .line 1717
    iget v0, p3, Lc8/nu;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1718
    iget-boolean v0, p2, Lc8/Lw;->mFullSpan:Z

    if-eqz v0, :cond_0

    .line 1719
    invoke-direct {p0, p1}, Lc8/Qw;->appendViewToAllSpans(Landroid/view/View;)V

    .line 1730
    :goto_0
    return-void

    .line 1721
    :cond_0
    iget-object v0, p2, Lc8/Lw;->mSpan:Lc8/Pw;

    invoke-virtual {v0, p1}, Lc8/Pw;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    .line 1724
    :cond_1
    iget-boolean v0, p2, Lc8/Lw;->mFullSpan:Z

    if-eqz v0, :cond_2

    .line 1725
    invoke-direct {p0, p1}, Lc8/Qw;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1727
    :cond_2
    iget-object v0, p2, Lc8/Lw;->mSpan:Lc8/Pw;

    invoke-virtual {v0, p1}, Lc8/Pw;->prependToSpan(Landroid/view/View;)V

    goto :goto_0
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 2010
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2011
    iget-boolean v1, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-eqz v1, :cond_1

    .line 2014
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 2011
    goto :goto_0

    .line 2013
    :cond_2
    invoke-virtual {p0}, Lc8/Qw;->getFirstChildPosition()I

    move-result v0

    .line 2014
    .local v0, "firstChildPos":I
    if-ge p1, v0, :cond_3

    move v1, v2

    :goto_1
    iget-boolean v4, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-eq v1, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private checkSpanForGap(Lc8/Pw;)Z
    .locals 7
    .param p1, "span"    # Lc8/Pw;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 403
    iget-boolean v5, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-eqz v5, :cond_2

    .line 404
    invoke-virtual {p1}, Lc8/Pw;->getEndLine()I

    move-result v5

    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v6}, Lc8/Ru;->getEndAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 406
    iget-object v5, p1, Lc8/Pw;->mViews:Ljava/util/ArrayList;

    iget-object v6, p1, Lc8/Pw;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 407
    .local v0, "endView":Landroid/view/View;
    invoke-virtual {p1, v0}, Lc8/Pw;->getLayoutParams(Landroid/view/View;)Lc8/Lw;

    move-result-object v1

    .line 408
    .local v1, "lp":Lc8/Lw;
    iget-boolean v5, v1, Lc8/Lw;->mFullSpan:Z

    if-nez v5, :cond_1

    .line 416
    .end local v0    # "endView":Landroid/view/View;
    .end local v1    # "lp":Lc8/Lw;
    :cond_0
    :goto_0
    return v3

    .restart local v0    # "endView":Landroid/view/View;
    .restart local v1    # "lp":Lc8/Lw;
    :cond_1
    move v3, v4

    .line 408
    goto :goto_0

    .line 410
    .end local v0    # "endView":Landroid/view/View;
    .end local v1    # "lp":Lc8/Lw;
    :cond_2
    invoke-virtual {p1}, Lc8/Pw;->getStartLine()I

    move-result v5

    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v6}, Lc8/Ru;->getStartAfterPadding()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 412
    iget-object v5, p1, Lc8/Pw;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 413
    .local v2, "startView":Landroid/view/View;
    invoke-virtual {p1, v2}, Lc8/Pw;->getLayoutParams(Landroid/view/View;)Lc8/Lw;

    move-result-object v1

    .line 414
    .restart local v1    # "lp":Lc8/Lw;
    iget-boolean v5, v1, Lc8/Lw;->mFullSpan:Z

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .end local v1    # "lp":Lc8/Lw;
    .end local v2    # "startView":Landroid/view/View;
    :cond_3
    move v3, v4

    .line 416
    goto :goto_0
.end method

.method private computeScrollExtent(Lc8/Nv;)I
    .locals 6
    .param p1, "state"    # Lc8/Nv;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1093
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    iget-boolean v0, p0, Lc8/Qw;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1097
    :goto_1
    invoke-virtual {p0, v0}, Lc8/Qw;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lc8/Qw;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    .line 1098
    :goto_2
    invoke-virtual {p0, v3}, Lc8/Qw;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lc8/Qw;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1096
    invoke-static/range {v0 .. v5}, Lc8/Zv;->computeScrollExtent(Lc8/Nv;Lc8/Ru;Landroid/view/View;Landroid/view/View;Lc8/xv;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1097
    goto :goto_2
.end method

.method private computeScrollOffset(Lc8/Nv;)I
    .locals 7
    .param p1, "state"    # Lc8/Nv;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1073
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    iget-boolean v0, p0, Lc8/Qw;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1077
    :goto_1
    invoke-virtual {p0, v0}, Lc8/Qw;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lc8/Qw;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    .line 1078
    :goto_2
    invoke-virtual {p0, v3}, Lc8/Qw;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lc8/Qw;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lc8/Qw;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 1076
    invoke-static/range {v0 .. v6}, Lc8/Zv;->computeScrollOffset(Lc8/Nv;Lc8/Ru;Landroid/view/View;Landroid/view/View;Lc8/xv;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1077
    goto :goto_2
.end method

.method private computeScrollRange(Lc8/Nv;)I
    .locals 6
    .param p1, "state"    # Lc8/Nv;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1113
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    iget-boolean v0, p0, Lc8/Qw;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1117
    :goto_1
    invoke-virtual {p0, v0}, Lc8/Qw;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lc8/Qw;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    .line 1118
    :goto_2
    invoke-virtual {p0, v3}, Lc8/Qw;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lc8/Qw;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1116
    invoke-static/range {v0 .. v5}, Lc8/Zv;->computeScrollRange(Lc8/Nv;Lc8/Ru;Landroid/view/View;Landroid/view/View;Lc8/xv;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1117
    goto :goto_2
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4
    .param p1, "focusDirection"    # I

    .prologue
    const/4 v0, -0x1

    const/high16 v2, -0x80000000

    const/4 v1, 0x1

    .line 2357
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    .line 2390
    :cond_0
    :goto_0
    return v0

    .line 2359
    :sswitch_0
    iget v2, p0, Lc8/Qw;->mOrientation:I

    if-eq v2, v1, :cond_0

    .line 2361
    invoke-virtual {p0}, Lc8/Qw;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2362
    goto :goto_0

    .line 2367
    :sswitch_1
    iget v2, p0, Lc8/Qw;->mOrientation:I

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 2368
    goto :goto_0

    .line 2369
    :cond_1
    invoke-virtual {p0}, Lc8/Qw;->isLayoutRTL()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2372
    goto :goto_0

    .line 2375
    :sswitch_2
    iget v3, p0, Lc8/Qw;->mOrientation:I

    if-eq v3, v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 2378
    :sswitch_3
    iget v0, p0, Lc8/Qw;->mOrientation:I

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 2381
    :sswitch_4
    iget v1, p0, Lc8/Qw;->mOrientation:I

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 2384
    :sswitch_5
    iget v0, p0, Lc8/Qw;->mOrientation:I

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 2357
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private createFullSpanItemFromEnd(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .param p1, "newItemTop"    # I

    .prologue
    .line 1699
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1700
    .local v0, "fsi":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, p0, Lc8/Qw;->mSpanCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1701
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lc8/Qw;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1702
    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lc8/Pw;->getEndLine(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    .line 1701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1704
    :cond_0
    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .param p1, "newItemBottom"    # I

    .prologue
    .line 1708
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1709
    .local v0, "fsi":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, p0, Lc8/Qw;->mSpanCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1710
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lc8/Qw;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1711
    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lc8/Pw;->getStartLine(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    .line 1710
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1713
    :cond_0
    return-object v0
.end method

.method private createOrientationHelpers()V
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lc8/Qw;->mOrientation:I

    invoke-static {p0, v0}, Lc8/Ru;->createOrientationHelper(Lc8/xv;I)Lc8/Ru;

    move-result-object v0

    iput-object v0, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 261
    iget v0, p0, Lc8/Qw;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    .line 262
    invoke-static {p0, v0}, Lc8/Ru;->createOrientationHelper(Lc8/xv;I)Lc8/Ru;

    move-result-object v0

    iput-object v0, p0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    .line 263
    return-void
.end method

.method private fill(Lc8/Fv;Lc8/nu;Lc8/Nv;)I
    .locals 28
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "layoutState"    # Lc8/nu;
    .param p3, "state"    # Lc8/Nv;

    .prologue
    .line 1542
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mRemainingSpans:Ljava/util/BitSet;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lc8/Qw;->mSpanCount:I

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Ljava/util/BitSet;->set(IIZ)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget-boolean v3, v3, Lc8/nu;->mInfinite:Z

    if-eqz v3, :cond_5

    .line 1548
    move-object/from16 v0, p2

    iget v3, v0, Lc8/nu;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_4

    .line 1549
    const v27, 0x7fffffff

    .line 1561
    .local v27, "targetLine":I
    :goto_0
    move-object/from16 v0, p2

    iget v3, v0, Lc8/nu;->mLayoutDirection:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lc8/Qw;->updateAllRemainingSpans(II)V

    .line 1568
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc8/Qw;->mShouldReverseLayout:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 1569
    invoke-virtual {v3}, Lc8/Ru;->getEndAfterPadding()I

    move-result v18

    .line 1571
    .local v18, "defaultNewViewLine":I
    :goto_1
    const/4 v15, 0x0

    .line 1572
    .local v15, "added":Z
    :goto_2
    invoke-virtual/range {p2 .. p3}, Lc8/nu;->hasMore(Lc8/Nv;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget-boolean v3, v3, Lc8/nu;->mInfinite:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mRemainingSpans:Ljava/util/BitSet;

    .line 1573
    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1574
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lc8/nu;->next(Lc8/Fv;)Landroid/view/View;

    move-result-object v4

    .line 1575
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lc8/Lw;

    .line 1576
    .local v22, "lp":Lc8/Lw;
    invoke-virtual/range {v22 .. v22}, Lc8/Lw;->getViewLayoutPosition()I

    move-result v25

    .line 1577
    .local v25, "position":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lc8/Nw;->getSpan(I)I

    move-result v26

    .line 1579
    .local v26, "spanIndex":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_8

    const/16 v16, 0x1

    .line 1580
    .local v16, "assignSpan":Z
    :goto_3
    if-eqz v16, :cond_a

    .line 1581
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lc8/Lw;->mFullSpan:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mSpans:[Lc8/Pw;

    const/4 v9, 0x0

    aget-object v17, v3, v9

    .line 1582
    .local v17, "currentSpan":Lc8/Pw;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    move/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lc8/Nw;->setSpan(ILc8/Pw;)V

    .line 1593
    :goto_5
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    iput-object v0, v1, Lc8/Lw;->mSpan:Lc8/Pw;

    .line 1594
    move-object/from16 v0, p2

    iget v3, v0, Lc8/nu;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_b

    .line 1595
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/Qw;->addView(Landroid/view/View;)V

    .line 1599
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1, v3}, Lc8/Qw;->measureChildWithDecorationsAndMargin(Landroid/view/View;Lc8/Lw;Z)V

    .line 1603
    move-object/from16 v0, p2

    iget v3, v0, Lc8/nu;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_d

    .line 1604
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lc8/Lw;->mFullSpan:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lc8/Qw;->getMaxEnd(I)I

    move-result v6

    .line 1606
    .local v6, "start":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v3, v4}, Lc8/Ru;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int v8, v6, v3

    .line 1607
    .local v8, "end":I
    if-eqz v16, :cond_1

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lc8/Lw;->mFullSpan:Z

    if-eqz v3, :cond_1

    .line 1609
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lc8/Qw;->createFullSpanItemFromEnd(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    .line 1610
    .local v20, "fullSpanItem":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    const/4 v3, -0x1

    move-object/from16 v0, v20

    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1611
    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1612
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lc8/Nw;->addFullSpanItem(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1628
    .end local v20    # "fullSpanItem":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_1
    :goto_8
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lc8/Lw;->mFullSpan:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Lc8/nu;->mItemDirection:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    .line 1629
    if-eqz v16, :cond_f

    .line 1630
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lc8/Qw;->mLaidOutInvalidFullSpan:Z

    .line 1648
    :cond_2
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lc8/Qw;->attachViewToSpans(Landroid/view/View;Lc8/Lw;Lc8/nu;)V

    .line 1651
    invoke-virtual/range {p0 .. p0}, Lc8/Qw;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lc8/Qw;->mOrientation:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_15

    .line 1652
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lc8/Lw;->mFullSpan:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    invoke-virtual {v3}, Lc8/Ru;->getEndAfterPadding()I

    move-result v7

    .line 1655
    .local v7, "otherEnd":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    invoke-virtual {v3, v4}, Lc8/Ru;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int v5, v7, v3

    .line 1663
    .local v5, "otherStart":I
    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Lc8/Qw;->mOrientation:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_17

    move-object/from16 v3, p0

    .line 1664
    invoke-virtual/range {v3 .. v8}, Lc8/Qw;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1669
    :goto_c
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lc8/Lw;->mFullSpan:Z

    if-eqz v3, :cond_18

    .line 1670
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v3, v3, Lc8/nu;->mLayoutDirection:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lc8/Qw;->updateAllRemainingSpans(II)V

    .line 1674
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLayoutState:Lc8/nu;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lc8/Qw;->recycle(Lc8/Fv;Lc8/nu;)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget-boolean v3, v3, Lc8/nu;->mStopInFocusable:Z

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1676
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lc8/Lw;->mFullSpan:Z

    if-eqz v3, :cond_19

    .line 1677
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 1682
    :cond_3
    :goto_e
    const/4 v15, 0x1

    .line 1683
    goto/16 :goto_2

    .line 1551
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "otherStart":I
    .end local v6    # "start":I
    .end local v7    # "otherEnd":I
    .end local v8    # "end":I
    .end local v15    # "added":Z
    .end local v16    # "assignSpan":Z
    .end local v17    # "currentSpan":Lc8/Pw;
    .end local v18    # "defaultNewViewLine":I
    .end local v22    # "lp":Lc8/Lw;
    .end local v25    # "position":I
    .end local v26    # "spanIndex":I
    .end local v27    # "targetLine":I
    :cond_4
    const/high16 v27, -0x80000000

    .restart local v27    # "targetLine":I
    goto/16 :goto_0

    .line 1554
    .end local v27    # "targetLine":I
    :cond_5
    move-object/from16 v0, p2

    iget v3, v0, Lc8/nu;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_6

    .line 1555
    move-object/from16 v0, p2

    iget v3, v0, Lc8/nu;->mEndLine:I

    move-object/from16 v0, p2

    iget v9, v0, Lc8/nu;->mAvailable:I

    add-int v27, v3, v9

    .restart local v27    # "targetLine":I
    goto/16 :goto_0

    .line 1557
    .end local v27    # "targetLine":I
    :cond_6
    move-object/from16 v0, p2

    iget v3, v0, Lc8/nu;->mStartLine:I

    move-object/from16 v0, p2

    iget v9, v0, Lc8/nu;->mAvailable:I

    sub-int v27, v3, v9

    .restart local v27    # "targetLine":I
    goto/16 :goto_0

    .line 1569
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 1570
    invoke-virtual {v3}, Lc8/Ru;->getStartAfterPadding()I

    move-result v18

    goto/16 :goto_1

    .line 1579
    .restart local v4    # "view":Landroid/view/View;
    .restart local v15    # "added":Z
    .restart local v18    # "defaultNewViewLine":I
    .restart local v22    # "lp":Lc8/Lw;
    .restart local v25    # "position":I
    .restart local v26    # "spanIndex":I
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1581
    .restart local v16    # "assignSpan":Z
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lc8/Qw;->getNextSpan(Lc8/nu;)Lc8/Pw;

    move-result-object v17

    goto/16 :goto_4

    .line 1590
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v17, v3, v26

    .restart local v17    # "currentSpan":Lc8/Pw;
    goto/16 :goto_5

    .line 1597
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lc8/Qw;->addView(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 1605
    :cond_c
    invoke-virtual/range {v17 .. v18}, Lc8/Pw;->getEndLine(I)I

    move-result v6

    goto/16 :goto_7

    .line 1615
    :cond_d
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lc8/Lw;->mFullSpan:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lc8/Qw;->getMinStart(I)I

    move-result v8

    .line 1617
    .restart local v8    # "end":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v3, v4}, Lc8/Ru;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int v6, v8, v3

    .line 1618
    .restart local v6    # "start":I
    if-eqz v16, :cond_1

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lc8/Lw;->mFullSpan:Z

    if-eqz v3, :cond_1

    .line 1620
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lc8/Qw;->createFullSpanItemFromStart(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    .line 1621
    .restart local v20    # "fullSpanItem":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1622
    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1623
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lc8/Nw;->addFullSpanItem(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    goto/16 :goto_8

    .line 1616
    .end local v6    # "start":I
    .end local v8    # "end":I
    .end local v20    # "fullSpanItem":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_e
    invoke-virtual/range {v17 .. v18}, Lc8/Pw;->getStartLine(I)I

    move-result v8

    goto :goto_f

    .line 1633
    .restart local v6    # "start":I
    .restart local v8    # "end":I
    :cond_f
    move-object/from16 v0, p2

    iget v3, v0, Lc8/nu;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_12

    .line 1634
    invoke-virtual/range {p0 .. p0}, Lc8/Qw;->areAllEndsEqual()Z

    move-result v3

    if-nez v3, :cond_11

    const/16 v21, 0x1

    .line 1638
    .local v21, "hasInvalidGap":Z
    :goto_10
    if-eqz v21, :cond_2

    .line 1639
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    .line 1640
    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lc8/Nw;->getFullSpanItem(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    .line 1641
    .restart local v20    # "fullSpanItem":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v20, :cond_10

    .line 1642
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1644
    :cond_10
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lc8/Qw;->mLaidOutInvalidFullSpan:Z

    goto/16 :goto_9

    .line 1634
    .end local v20    # "fullSpanItem":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v21    # "hasInvalidGap":Z
    :cond_11
    const/16 v21, 0x0

    goto :goto_10

    .line 1636
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lc8/Qw;->areAllStartsEqual()Z

    move-result v3

    if-nez v3, :cond_13

    const/16 v21, 0x1

    .restart local v21    # "hasInvalidGap":Z
    :goto_11
    goto :goto_10

    .end local v21    # "hasInvalidGap":Z
    :cond_13
    const/16 v21, 0x0

    goto :goto_11

    .line 1652
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    .line 1653
    invoke-virtual {v3}, Lc8/Ru;->getEndAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    iget v9, v0, Lc8/Qw;->mSpanCount:I

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v17

    iget v10, v0, Lc8/Pw;->mIndex:I

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lc8/Qw;->mSizePerSpan:I

    mul-int/2addr v9, v10

    sub-int v7, v3, v9

    goto/16 :goto_a

    .line 1657
    :cond_15
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lc8/Lw;->mFullSpan:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    invoke-virtual {v3}, Lc8/Ru;->getStartAfterPadding()I

    move-result v5

    .line 1660
    .restart local v5    # "otherStart":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    invoke-virtual {v3, v4}, Lc8/Ru;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int v7, v5, v3

    .restart local v7    # "otherEnd":I
    goto/16 :goto_b

    .line 1657
    .end local v5    # "otherStart":I
    .end local v7    # "otherEnd":I
    :cond_16
    move-object/from16 v0, v17

    iget v3, v0, Lc8/Pw;->mIndex:I

    move-object/from16 v0, p0

    iget v9, v0, Lc8/Qw;->mSizePerSpan:I

    mul-int/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    .line 1659
    invoke-virtual {v9}, Lc8/Ru;->getStartAfterPadding()I

    move-result v9

    add-int v5, v3, v9

    goto :goto_12

    .restart local v5    # "otherStart":I
    .restart local v7    # "otherEnd":I
    :cond_17
    move-object/from16 v9, p0

    move-object v10, v4

    move v11, v6

    move v12, v5

    move v13, v8

    move v14, v7

    .line 1666
    invoke-virtual/range {v9 .. v14}, Lc8/Qw;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_c

    .line 1672
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v3, v3, Lc8/nu;->mLayoutDirection:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v27

    invoke-direct {v0, v1, v3, v2}, Lc8/Qw;->updateRemainingSpans(Lc8/Pw;II)V

    goto/16 :goto_d

    .line 1679
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v0, v17

    iget v9, v0, Lc8/Pw;->mIndex:I

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_e

    .line 1684
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "otherStart":I
    .end local v6    # "start":I
    .end local v7    # "otherEnd":I
    .end local v8    # "end":I
    .end local v16    # "assignSpan":Z
    .end local v17    # "currentSpan":Lc8/Pw;
    .end local v22    # "lp":Lc8/Lw;
    .end local v25    # "position":I
    .end local v26    # "spanIndex":I
    :cond_1a
    if-nez v15, :cond_1b

    .line 1685
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLayoutState:Lc8/nu;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lc8/Qw;->recycle(Lc8/Fv;Lc8/nu;)V

    .line 1688
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v3, v3, Lc8/nu;->mLayoutDirection:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_1c

    .line 1689
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v3}, Lc8/Ru;->getStartAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc8/Qw;->getMinStart(I)I

    move-result v24

    .line 1690
    .local v24, "minStart":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v3}, Lc8/Ru;->getStartAfterPadding()I

    move-result v3

    sub-int v19, v3, v24

    .line 1695
    .end local v24    # "minStart":I
    .local v19, "diff":I
    :goto_13
    if-lez v19, :cond_1d

    move-object/from16 v0, p2

    iget v3, v0, Lc8/nu;->mAvailable:I

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_14
    return v3

    .line 1692
    .end local v19    # "diff":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v3}, Lc8/Ru;->getEndAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc8/Qw;->getMaxEnd(I)I

    move-result v23

    .line 1693
    .local v23, "maxEnd":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v3}, Lc8/Ru;->getEndAfterPadding()I

    move-result v3

    sub-int v19, v23, v3

    .restart local v19    # "diff":I
    goto :goto_13

    .line 1695
    .end local v23    # "maxEnd":I
    :cond_1d
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 4
    .param p1, "itemCount"    # I

    .prologue
    .line 2183
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v1

    .line 2184
    .local v1, "limit":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2185
    invoke-virtual {p0, v0}, Lc8/Qw;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2186
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Lc8/Qw;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 2187
    .local v2, "position":I
    if-ltz v2, :cond_0

    if-ge v2, p1, :cond_0

    .line 2191
    .end local v2    # "position":I
    .end local v3    # "view":Landroid/view/View;
    :goto_1
    return v2

    .line 2184
    .restart local v2    # "position":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2191
    .end local v2    # "position":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 4
    .param p1, "itemCount"    # I

    .prologue
    .line 2200
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2201
    invoke-virtual {p0, v0}, Lc8/Qw;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2202
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lc8/Qw;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 2203
    .local v1, "position":I
    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    .line 2207
    .end local v1    # "position":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return v1

    .line 2200
    .restart local v1    # "position":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2207
    .end local v1    # "position":I
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private fixEndGap(Lc8/Fv;Lc8/Nv;Z)V
    .locals 4
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "state"    # Lc8/Nv;
    .param p3, "canOffsetChildren"    # Z

    .prologue
    const/high16 v3, -0x80000000

    .line 1378
    invoke-direct {p0, v3}, Lc8/Qw;->getMaxEnd(I)I

    move-result v2

    .line 1379
    .local v2, "maxEndLine":I
    if-ne v2, v3, :cond_1

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    iget-object v3, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v3}, Lc8/Ru;->getEndAfterPadding()I

    move-result v3

    sub-int v1, v3, v2

    .line 1384
    .local v1, "gap":I
    if-lez v1, :cond_0

    .line 1385
    neg-int v3, v1

    invoke-virtual {p0, v3, p1, p2}, Lc8/Qw;->scrollBy(ILc8/Fv;Lc8/Nv;)I

    move-result v3

    neg-int v0, v3

    .line 1389
    .local v0, "fixOffset":I
    sub-int/2addr v1, v0

    .line 1390
    if-eqz p3, :cond_0

    if-lez v1, :cond_0

    .line 1391
    iget-object v3, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v3, v1}, Lc8/Ru;->offsetChildren(I)V

    goto :goto_0
.end method

.method private fixStartGap(Lc8/Fv;Lc8/Nv;Z)V
    .locals 5
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "state"    # Lc8/Nv;
    .param p3, "canOffsetChildren"    # Z

    .prologue
    const v3, 0x7fffffff

    .line 1397
    invoke-direct {p0, v3}, Lc8/Qw;->getMinStart(I)I

    move-result v2

    .line 1398
    .local v2, "minStartLine":I
    if-ne v2, v3, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return-void

    .line 1401
    :cond_1
    iget-object v3, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v3}, Lc8/Ru;->getStartAfterPadding()I

    move-result v3

    sub-int v1, v2, v3

    .line 1403
    .local v1, "gap":I
    if-lez v1, :cond_0

    .line 1404
    invoke-virtual {p0, v1, p1, p2}, Lc8/Qw;->scrollBy(ILc8/Fv;Lc8/Nv;)I

    move-result v0

    .line 1408
    .local v0, "fixOffset":I
    sub-int/2addr v1, v0

    .line 1409
    if-eqz p3, :cond_0

    if-lez v1, :cond_0

    .line 1410
    iget-object v3, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lc8/Ru;->offsetChildren(I)V

    goto :goto_0
.end method

.method private getMaxEnd(I)I
    .locals 5
    .param p1, "def"    # I

    .prologue
    .line 1852
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lc8/Pw;->getEndLine(I)I

    move-result v1

    .line 1853
    .local v1, "maxEnd":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1854
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lc8/Pw;->getEndLine(I)I

    move-result v2

    .line 1855
    .local v2, "spanEnd":I
    if-le v2, v1, :cond_0

    .line 1856
    move v1, v2

    .line 1853
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1859
    .end local v2    # "spanEnd":I
    :cond_1
    return v1
.end method

.method private getMaxStart(I)I
    .locals 5
    .param p1, "def"    # I

    .prologue
    .line 1810
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lc8/Pw;->getStartLine(I)I

    move-result v1

    .line 1811
    .local v1, "maxStart":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1812
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lc8/Pw;->getStartLine(I)I

    move-result v2

    .line 1813
    .local v2, "spanStart":I
    if-le v2, v1, :cond_0

    .line 1814
    move v1, v2

    .line 1811
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1817
    .end local v2    # "spanStart":I
    :cond_1
    return v1
.end method

.method private getMinEnd(I)I
    .locals 5
    .param p1, "def"    # I

    .prologue
    .line 1863
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lc8/Pw;->getEndLine(I)I

    move-result v1

    .line 1864
    .local v1, "minEnd":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1865
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lc8/Pw;->getEndLine(I)I

    move-result v2

    .line 1866
    .local v2, "spanEnd":I
    if-ge v2, v1, :cond_0

    .line 1867
    move v1, v2

    .line 1864
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1870
    .end local v2    # "spanEnd":I
    :cond_1
    return v1
.end method

.method private getMinStart(I)I
    .locals 5
    .param p1, "def"    # I

    .prologue
    .line 1821
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lc8/Pw;->getStartLine(I)I

    move-result v1

    .line 1822
    .local v1, "minStart":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1823
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lc8/Pw;->getStartLine(I)I

    move-result v2

    .line 1824
    .local v2, "spanStart":I
    if-ge v2, v1, :cond_0

    .line 1825
    move v1, v2

    .line 1822
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1828
    .end local v2    # "spanStart":I
    :cond_1
    return v1
.end method

.method private getNextSpan(Lc8/nu;)Lc8/Pw;
    .locals 14
    .param p1, "layoutState"    # Lc8/nu;

    .prologue
    .line 1947
    iget v12, p1, Lc8/nu;->mLayoutDirection:I

    invoke-direct {p0, v12}, Lc8/Qw;->preferLastSpan(I)Z

    move-result v10

    .line 1949
    .local v10, "preferLastSpan":Z
    if-eqz v10, :cond_1

    .line 1950
    iget v12, p0, Lc8/Qw;->mSpanCount:I

    add-int/lit8 v11, v12, -0x1

    .line 1951
    .local v11, "startIndex":I
    const/4 v2, -0x1

    .line 1952
    .local v2, "endIndex":I
    const/4 v1, -0x1

    .line 1958
    .local v1, "diff":I
    :goto_0
    iget v12, p1, Lc8/nu;->mLayoutDirection:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 1959
    const/4 v6, 0x0

    .line 1960
    .local v6, "min":Lc8/Pw;
    const v7, 0x7fffffff

    .line 1961
    .local v7, "minLine":I
    iget-object v12, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v12}, Lc8/Ru;->getStartAfterPadding()I

    move-result v0

    .line 1962
    .local v0, "defaultLine":I
    move v3, v11

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_5

    .line 1963
    iget-object v12, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v8, v12, v3

    .line 1964
    .local v8, "other":Lc8/Pw;
    invoke-virtual {v8, v0}, Lc8/Pw;->getEndLine(I)I

    move-result v9

    .line 1965
    .local v9, "otherLine":I
    if-ge v9, v7, :cond_0

    .line 1966
    move-object v6, v8

    .line 1967
    move v7, v9

    .line 1962
    :cond_0
    add-int/2addr v3, v1

    goto :goto_1

    .line 1954
    .end local v0    # "defaultLine":I
    .end local v1    # "diff":I
    .end local v2    # "endIndex":I
    .end local v3    # "i":I
    .end local v6    # "min":Lc8/Pw;
    .end local v7    # "minLine":I
    .end local v8    # "other":Lc8/Pw;
    .end local v9    # "otherLine":I
    .end local v11    # "startIndex":I
    :cond_1
    const/4 v11, 0x0

    .line 1955
    .restart local v11    # "startIndex":I
    iget v2, p0, Lc8/Qw;->mSpanCount:I

    .line 1956
    .restart local v2    # "endIndex":I
    const/4 v1, 0x1

    .restart local v1    # "diff":I
    goto :goto_0

    .line 1972
    :cond_2
    const/4 v4, 0x0

    .line 1973
    .local v4, "max":Lc8/Pw;
    const/high16 v5, -0x80000000

    .line 1974
    .local v5, "maxLine":I
    iget-object v12, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v12}, Lc8/Ru;->getEndAfterPadding()I

    move-result v0

    .line 1975
    .restart local v0    # "defaultLine":I
    move v3, v11

    .restart local v3    # "i":I
    :goto_2
    if-eq v3, v2, :cond_4

    .line 1976
    iget-object v12, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v8, v12, v3

    .line 1977
    .restart local v8    # "other":Lc8/Pw;
    invoke-virtual {v8, v0}, Lc8/Pw;->getStartLine(I)I

    move-result v9

    .line 1978
    .restart local v9    # "otherLine":I
    if-le v9, v5, :cond_3

    .line 1979
    move-object v4, v8

    .line 1980
    move v5, v9

    .line 1975
    :cond_3
    add-int/2addr v3, v1

    goto :goto_2

    .end local v8    # "other":Lc8/Pw;
    .end local v9    # "otherLine":I
    :cond_4
    move-object v6, v4

    .line 1983
    .end local v4    # "max":Lc8/Pw;
    .end local v5    # "maxLine":I
    :cond_5
    return-object v6
.end method

.method private handleUpdate(III)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCountOrToPosition"    # I
    .param p3, "cmd"    # I

    .prologue
    const/4 v5, 0x1

    .line 1498
    iget-boolean v4, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lc8/Qw;->getLastChildPosition()I

    move-result v3

    .line 1502
    .local v3, "minPosition":I
    :goto_0
    const/16 v4, 0x8

    if-ne p3, v4, :cond_3

    .line 1503
    if-ge p1, p2, :cond_2

    .line 1504
    add-int/lit8 v0, p2, 0x1

    .line 1505
    .local v0, "affectedRangeEnd":I
    move v1, p1

    .line 1515
    .local v1, "affectedRangeStart":I
    :goto_1
    iget-object v4, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    invoke-virtual {v4, v1}, Lc8/Nw;->invalidateAfter(I)I

    .line 1516
    sparse-switch p3, :sswitch_data_0

    .line 1530
    :goto_2
    if-gt v0, v3, :cond_4

    .line 1538
    :cond_0
    :goto_3
    return-void

    .line 1498
    .end local v0    # "affectedRangeEnd":I
    .end local v1    # "affectedRangeStart":I
    .end local v3    # "minPosition":I
    :cond_1
    invoke-virtual {p0}, Lc8/Qw;->getFirstChildPosition()I

    move-result v3

    goto :goto_0

    .line 1507
    .restart local v3    # "minPosition":I
    :cond_2
    add-int/lit8 v0, p1, 0x1

    .line 1508
    .restart local v0    # "affectedRangeEnd":I
    move v1, p2

    .restart local v1    # "affectedRangeStart":I
    goto :goto_1

    .line 1511
    .end local v0    # "affectedRangeEnd":I
    .end local v1    # "affectedRangeStart":I
    :cond_3
    move v1, p1

    .line 1512
    .restart local v1    # "affectedRangeStart":I
    add-int v0, p1, p2

    .restart local v0    # "affectedRangeEnd":I
    goto :goto_1

    .line 1518
    :sswitch_0
    iget-object v4, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    invoke-virtual {v4, p1, p2}, Lc8/Nw;->offsetForAddition(II)V

    goto :goto_2

    .line 1521
    :sswitch_1
    iget-object v4, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    invoke-virtual {v4, p1, p2}, Lc8/Nw;->offsetForRemoval(II)V

    goto :goto_2

    .line 1525
    :sswitch_2
    iget-object v4, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    invoke-virtual {v4, p1, v5}, Lc8/Nw;->offsetForRemoval(II)V

    .line 1526
    iget-object v4, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    invoke-virtual {v4, p2, v5}, Lc8/Nw;->offsetForAddition(II)V

    goto :goto_2

    .line 1534
    :cond_4
    iget-boolean v4, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lc8/Qw;->getFirstChildPosition()I

    move-result v2

    .line 1535
    .local v2, "maxPosition":I
    :goto_4
    if-gt v1, v2, :cond_0

    .line 1536
    invoke-virtual {p0}, Lc8/Qw;->requestLayout()V

    goto :goto_3

    .line 1534
    .end local v2    # "maxPosition":I
    :cond_5
    invoke-virtual {p0}, Lc8/Qw;->getLastChildPosition()I

    move-result v2

    goto :goto_4

    .line 1516
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "alreadyMeasured"    # Z

    .prologue
    .line 1156
    iget-object v2, p0, Lc8/Qw;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lc8/Qw;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1157
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/Lw;

    .line 1158
    .local v0, "lp":Lc8/Lw;
    iget v2, v0, Lc8/Lw;->leftMargin:I

    iget-object v3, p0, Lc8/Qw;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Lc8/Lw;->rightMargin:I

    iget-object v4, p0, Lc8/Qw;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-direct {p0, p2, v2, v3}, Lc8/Qw;->updateSpecWithExtra(III)I

    move-result p2

    .line 1160
    iget v2, v0, Lc8/Lw;->topMargin:I

    iget-object v3, p0, Lc8/Qw;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Lc8/Lw;->bottomMargin:I

    iget-object v4, p0, Lc8/Qw;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-direct {p0, p3, v2, v3}, Lc8/Qw;->updateSpecWithExtra(III)I

    move-result p3

    .line 1162
    if-eqz p4, :cond_1

    .line 1163
    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Qw;->shouldReMeasureChild(Landroid/view/View;IILc8/yv;)Z

    move-result v1

    .line 1165
    .local v1, "measure":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1166
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1169
    :cond_0
    return-void

    .line 1164
    .end local v1    # "measure":Z
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Qw;->shouldMeasureChild(Landroid/view/View;IILc8/yv;)Z

    move-result v1

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Lc8/Lw;Z)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Lc8/Lw;
    .param p3, "alreadyMeasured"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1129
    iget-boolean v0, p2, Lc8/Lw;->mFullSpan:Z

    if-eqz v0, :cond_1

    .line 1130
    iget v0, p0, Lc8/Qw;->mOrientation:I

    if-ne v0, v5, :cond_0

    .line 1131
    iget v0, p0, Lc8/Qw;->mFullSizeSpec:I

    .line 1132
    invoke-virtual {p0}, Lc8/Qw;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lc8/Qw;->getHeightMode()I

    move-result v2

    iget v3, p2, Lc8/Lw;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Lc8/Qw;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 1131
    invoke-direct {p0, p1, v0, v1, p3}, Lc8/Qw;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 1152
    :goto_0
    return-void

    .line 1136
    :cond_0
    invoke-virtual {p0}, Lc8/Qw;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lc8/Qw;->getWidthMode()I

    move-result v1

    iget v2, p2, Lc8/Lw;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Lc8/Qw;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Lc8/Qw;->mFullSizeSpec:I

    .line 1135
    invoke-direct {p0, p1, v0, v1, p3}, Lc8/Qw;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1140
    :cond_1
    iget v0, p0, Lc8/Qw;->mOrientation:I

    if-ne v0, v5, :cond_2

    .line 1141
    iget v0, p0, Lc8/Qw;->mSizePerSpan:I

    .line 1142
    invoke-virtual {p0}, Lc8/Qw;->getWidthMode()I

    move-result v1

    iget v2, p2, Lc8/Lw;->width:I

    invoke-static {v0, v1, v4, v2, v4}, Lc8/Qw;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 1143
    invoke-virtual {p0}, Lc8/Qw;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lc8/Qw;->getHeightMode()I

    move-result v2

    iget v3, p2, Lc8/Lw;->height:I

    invoke-static {v1, v2, v4, v3, v5}, Lc8/Qw;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 1141
    invoke-direct {p0, p1, v0, v1, p3}, Lc8/Qw;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1147
    :cond_2
    invoke-virtual {p0}, Lc8/Qw;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lc8/Qw;->getWidthMode()I

    move-result v1

    iget v2, p2, Lc8/Lw;->width:I

    invoke-static {v0, v1, v4, v2, v5}, Lc8/Qw;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Lc8/Qw;->mSizePerSpan:I

    .line 1148
    invoke-virtual {p0}, Lc8/Qw;->getHeightMode()I

    move-result v2

    iget v3, p2, Lc8/Lw;->height:I

    invoke-static {v1, v2, v4, v3, v4}, Lc8/Qw;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 1146
    invoke-direct {p0, p1, v0, v1, p3}, Lc8/Qw;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0
.end method

.method private onLayoutChildren(Lc8/Fv;Lc8/Nv;Z)V
    .locals 11
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "state"    # Lc8/Nv;
    .param p3, "shouldCheckForGaps"    # Z

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 612
    iget-object v0, p0, Lc8/Qw;->mAnchorInfo:Lc8/Kw;

    .line 613
    .local v0, "anchorInfo":Lc8/Kw;
    iget-object v7, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v7, :cond_0

    iget v7, p0, Lc8/Qw;->mPendingScrollPosition:I

    if-eq v7, v10, :cond_2

    .line 614
    :cond_0
    invoke-virtual {p2}, Lc8/Nv;->getItemCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 615
    invoke-virtual {p0, p1}, Lc8/Qw;->removeAndRecycleAllViews(Lc8/Fv;)V

    .line 616
    invoke-virtual {v0}, Lc8/Kw;->reset()V

    .line 723
    :cond_1
    :goto_0
    return-void

    .line 621
    :cond_2
    iget-boolean v7, v0, Lc8/Kw;->mValid:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lc8/Qw;->mPendingScrollPosition:I

    if-ne v7, v10, :cond_3

    iget-object v7, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_9

    :cond_3
    move v4, v3

    .line 623
    .local v4, "recalculateAnchor":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 624
    invoke-virtual {v0}, Lc8/Kw;->reset()V

    .line 625
    iget-object v7, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_a

    .line 626
    invoke-direct {p0, v0}, Lc8/Qw;->applyPendingSavedState(Lc8/Kw;)V

    .line 631
    :goto_2
    invoke-virtual {p0, p2, v0}, Lc8/Qw;->updateAnchorInfoForLayout(Lc8/Nv;Lc8/Kw;)V

    .line 632
    iput-boolean v3, v0, Lc8/Kw;->mValid:Z

    .line 634
    :cond_4
    iget-object v7, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v7, :cond_6

    iget v7, p0, Lc8/Qw;->mPendingScrollPosition:I

    if-ne v7, v10, :cond_6

    .line 635
    iget-boolean v7, v0, Lc8/Kw;->mLayoutFromEnd:Z

    iget-boolean v8, p0, Lc8/Qw;->mLastLayoutFromEnd:Z

    if-ne v7, v8, :cond_5

    .line 636
    invoke-virtual {p0}, Lc8/Qw;->isLayoutRTL()Z

    move-result v7

    iget-boolean v8, p0, Lc8/Qw;->mLastLayoutRTL:Z

    if-eq v7, v8, :cond_6

    .line 637
    :cond_5
    iget-object v7, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    invoke-virtual {v7}, Lc8/Nw;->clear()V

    .line 638
    iput-boolean v3, v0, Lc8/Kw;->mInvalidateOffsets:Z

    .line 642
    :cond_6
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v7

    if-lez v7, :cond_e

    iget-object v7, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-gtz v7, :cond_e

    .line 644
    :cond_7
    iget-boolean v7, v0, Lc8/Kw;->mInvalidateOffsets:Z

    if-eqz v7, :cond_b

    .line 645
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v7, p0, Lc8/Qw;->mSpanCount:I

    if-ge v2, v7, :cond_e

    .line 647
    iget-object v7, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lc8/Pw;->clear()V

    .line 648
    iget v7, v0, Lc8/Kw;->mOffset:I

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_8

    .line 649
    iget-object v7, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v7, v7, v2

    iget v8, v0, Lc8/Kw;->mOffset:I

    invoke-virtual {v7, v8}, Lc8/Pw;->setLine(I)V

    .line 645
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    .end local v4    # "recalculateAnchor":Z
    :cond_9
    move v4, v6

    .line 621
    goto :goto_1

    .line 628
    .restart local v4    # "recalculateAnchor":Z
    :cond_a
    invoke-direct {p0}, Lc8/Qw;->resolveShouldLayoutReverse()V

    .line 629
    iget-boolean v7, p0, Lc8/Qw;->mShouldReverseLayout:Z

    iput-boolean v7, v0, Lc8/Kw;->mLayoutFromEnd:Z

    goto :goto_2

    .line 653
    :cond_b
    if-nez v4, :cond_c

    iget-object v7, p0, Lc8/Qw;->mAnchorInfo:Lc8/Kw;

    iget-object v7, v7, Lc8/Kw;->mSpanReferenceLines:[I

    if-nez v7, :cond_13

    .line 654
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget v7, p0, Lc8/Qw;->mSpanCount:I

    if-ge v2, v7, :cond_d

    .line 655
    iget-object v7, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v7, v7, v2

    iget-boolean v8, p0, Lc8/Qw;->mShouldReverseLayout:Z

    iget v9, v0, Lc8/Kw;->mOffset:I

    invoke-virtual {v7, v8, v9}, Lc8/Pw;->cacheReferenceLineAndClear(ZI)V

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 658
    :cond_d
    iget-object v7, p0, Lc8/Qw;->mAnchorInfo:Lc8/Kw;

    iget-object v8, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    invoke-virtual {v7, v8}, Lc8/Kw;->saveSpanReferenceLines([Lc8/Pw;)V

    .line 668
    .end local v2    # "i":I
    :cond_e
    invoke-virtual {p0, p1}, Lc8/Qw;->detachAndScrapAttachedViews(Lc8/Fv;)V

    .line 669
    iget-object v7, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iput-boolean v6, v7, Lc8/nu;->mRecycle:Z

    .line 670
    iput-boolean v6, p0, Lc8/Qw;->mLaidOutInvalidFullSpan:Z

    .line 671
    iget-object v7, p0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    invoke-virtual {v7}, Lc8/Ru;->getTotalSpace()I

    move-result v7

    invoke-virtual {p0, v7}, Lc8/Qw;->updateMeasureSpecs(I)V

    .line 672
    iget v7, v0, Lc8/Kw;->mPosition:I

    invoke-direct {p0, v7, p2}, Lc8/Qw;->updateLayoutState(ILc8/Nv;)V

    .line 673
    iget-boolean v7, v0, Lc8/Kw;->mLayoutFromEnd:Z

    if-eqz v7, :cond_14

    .line 675
    invoke-direct {p0, v10}, Lc8/Qw;->setLayoutStateDirection(I)V

    .line 676
    iget-object v7, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    invoke-direct {p0, p1, v7, p2}, Lc8/Qw;->fill(Lc8/Fv;Lc8/nu;Lc8/Nv;)I

    .line 678
    invoke-direct {p0, v3}, Lc8/Qw;->setLayoutStateDirection(I)V

    .line 679
    iget-object v7, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v8, v0, Lc8/Kw;->mPosition:I

    iget-object v9, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v9, v9, Lc8/nu;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Lc8/nu;->mCurrentPosition:I

    .line 680
    iget-object v7, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    invoke-direct {p0, p1, v7, p2}, Lc8/Qw;->fill(Lc8/Fv;Lc8/nu;Lc8/Nv;)I

    .line 691
    :goto_5
    invoke-direct {p0}, Lc8/Qw;->repositionToWrapContentIfNecessary()V

    .line 693
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v7

    if-lez v7, :cond_f

    .line 694
    iget-boolean v7, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-eqz v7, :cond_15

    .line 695
    invoke-direct {p0, p1, p2, v3}, Lc8/Qw;->fixEndGap(Lc8/Fv;Lc8/Nv;Z)V

    .line 696
    invoke-direct {p0, p1, p2, v6}, Lc8/Qw;->fixStartGap(Lc8/Fv;Lc8/Nv;Z)V

    .line 702
    :cond_f
    :goto_6
    const/4 v1, 0x0

    .line 703
    .local v1, "hasGaps":Z
    if-eqz p3, :cond_11

    invoke-virtual {p2}, Lc8/Nv;->isPreLayout()Z

    move-result v7

    if-nez v7, :cond_11

    .line 704
    iget v7, p0, Lc8/Qw;->mGapStrategy:I

    if-eqz v7, :cond_16

    .line 705
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v7

    if-lez v7, :cond_16

    iget-boolean v7, p0, Lc8/Qw;->mLaidOutInvalidFullSpan:Z

    if-nez v7, :cond_10

    .line 706
    invoke-virtual {p0}, Lc8/Qw;->hasGapsToFix()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 707
    .local v3, "needToCheckForGaps":Z
    :cond_10
    :goto_7
    if-eqz v3, :cond_11

    .line 708
    iget-object v7, p0, Lc8/Qw;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lc8/Qw;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 709
    invoke-virtual {p0}, Lc8/Qw;->checkForGaps()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 710
    const/4 v1, 0x1

    .line 714
    .end local v3    # "needToCheckForGaps":Z
    :cond_11
    invoke-virtual {p2}, Lc8/Nv;->isPreLayout()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 715
    iget-object v7, p0, Lc8/Qw;->mAnchorInfo:Lc8/Kw;

    invoke-virtual {v7}, Lc8/Kw;->reset()V

    .line 717
    :cond_12
    iget-boolean v7, v0, Lc8/Kw;->mLayoutFromEnd:Z

    iput-boolean v7, p0, Lc8/Qw;->mLastLayoutFromEnd:Z

    .line 718
    invoke-virtual {p0}, Lc8/Qw;->isLayoutRTL()Z

    move-result v7

    iput-boolean v7, p0, Lc8/Qw;->mLastLayoutRTL:Z

    .line 719
    if-eqz v1, :cond_1

    .line 720
    iget-object v7, p0, Lc8/Qw;->mAnchorInfo:Lc8/Kw;

    invoke-virtual {v7}, Lc8/Kw;->reset()V

    .line 721
    invoke-direct {p0, p1, p2, v6}, Lc8/Qw;->onLayoutChildren(Lc8/Fv;Lc8/Nv;Z)V

    goto/16 :goto_0

    .line 660
    .end local v1    # "hasGaps":Z
    :cond_13
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    iget v7, p0, Lc8/Qw;->mSpanCount:I

    if-ge v2, v7, :cond_e

    .line 661
    iget-object v7, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v5, v7, v2

    .line 662
    .local v5, "span":Lc8/Pw;
    invoke-virtual {v5}, Lc8/Pw;->clear()V

    .line 663
    iget-object v7, p0, Lc8/Qw;->mAnchorInfo:Lc8/Kw;

    iget-object v7, v7, Lc8/Kw;->mSpanReferenceLines:[I

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Lc8/Pw;->setLine(I)V

    .line 660
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 683
    .end local v2    # "i":I
    .end local v5    # "span":Lc8/Pw;
    :cond_14
    invoke-direct {p0, v3}, Lc8/Qw;->setLayoutStateDirection(I)V

    .line 684
    iget-object v7, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    invoke-direct {p0, p1, v7, p2}, Lc8/Qw;->fill(Lc8/Fv;Lc8/nu;Lc8/Nv;)I

    .line 686
    invoke-direct {p0, v10}, Lc8/Qw;->setLayoutStateDirection(I)V

    .line 687
    iget-object v7, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v8, v0, Lc8/Kw;->mPosition:I

    iget-object v9, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v9, v9, Lc8/nu;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v7, Lc8/nu;->mCurrentPosition:I

    .line 688
    iget-object v7, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    invoke-direct {p0, p1, v7, p2}, Lc8/Qw;->fill(Lc8/Fv;Lc8/nu;Lc8/Nv;)I

    goto/16 :goto_5

    .line 698
    :cond_15
    invoke-direct {p0, p1, p2, v3}, Lc8/Qw;->fixStartGap(Lc8/Fv;Lc8/Nv;Z)V

    .line 699
    invoke-direct {p0, p1, p2, v6}, Lc8/Qw;->fixEndGap(Lc8/Fv;Lc8/Nv;Z)V

    goto/16 :goto_6

    .restart local v1    # "hasGaps":Z
    :cond_16
    move v3, v6

    .line 706
    goto :goto_7
.end method

.method private preferLastSpan(I)Z
    .locals 4
    .param p1, "layoutDir"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1937
    iget v0, p0, Lc8/Qw;->mOrientation:I

    if-nez v0, :cond_3

    .line 1938
    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_2

    .line 1940
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 1938
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1940
    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lc8/Qw;->isLayoutRTL()Z

    move-result v3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1780
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1781
    iget-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lc8/Pw;->prependToSpan(Landroid/view/View;)V

    .line 1780
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1783
    :cond_0
    return-void
.end method

.method private recycle(Lc8/Fv;Lc8/nu;)V
    .locals 4
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "layoutState"    # Lc8/nu;

    .prologue
    const/4 v3, -0x1

    .line 1733
    iget-boolean v2, p2, Lc8/nu;->mRecycle:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p2, Lc8/nu;->mInfinite:Z

    if-eqz v2, :cond_1

    .line 1769
    :cond_0
    :goto_0
    return-void

    .line 1736
    :cond_1
    iget v2, p2, Lc8/nu;->mAvailable:I

    if-nez v2, :cond_3

    .line 1738
    iget v2, p2, Lc8/nu;->mLayoutDirection:I

    if-ne v2, v3, :cond_2

    .line 1739
    iget v2, p2, Lc8/nu;->mEndLine:I

    invoke-direct {p0, p1, v2}, Lc8/Qw;->recycleFromEnd(Lc8/Fv;I)V

    goto :goto_0

    .line 1741
    :cond_2
    iget v2, p2, Lc8/nu;->mStartLine:I

    invoke-direct {p0, p1, v2}, Lc8/Qw;->recycleFromStart(Lc8/Fv;I)V

    goto :goto_0

    .line 1746
    :cond_3
    iget v2, p2, Lc8/nu;->mLayoutDirection:I

    if-ne v2, v3, :cond_5

    .line 1748
    iget v2, p2, Lc8/nu;->mStartLine:I

    iget v3, p2, Lc8/nu;->mStartLine:I

    invoke-direct {p0, v3}, Lc8/Qw;->getMaxStart(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 1750
    .local v1, "scrolled":I
    if-gez v1, :cond_4

    .line 1751
    iget v0, p2, Lc8/nu;->mEndLine:I

    .line 1755
    .local v0, "line":I
    :goto_1
    invoke-direct {p0, p1, v0}, Lc8/Qw;->recycleFromEnd(Lc8/Fv;I)V

    goto :goto_0

    .line 1753
    .end local v0    # "line":I
    :cond_4
    iget v2, p2, Lc8/nu;->mEndLine:I

    iget v3, p2, Lc8/nu;->mAvailable:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v0, v2, v3

    .restart local v0    # "line":I
    goto :goto_1

    .line 1758
    .end local v0    # "line":I
    .end local v1    # "scrolled":I
    :cond_5
    iget v2, p2, Lc8/nu;->mEndLine:I

    invoke-direct {p0, v2}, Lc8/Qw;->getMinEnd(I)I

    move-result v2

    iget v3, p2, Lc8/nu;->mEndLine:I

    sub-int v1, v2, v3

    .line 1760
    .restart local v1    # "scrolled":I
    if-gez v1, :cond_6

    .line 1761
    iget v0, p2, Lc8/nu;->mStartLine:I

    .line 1765
    .restart local v0    # "line":I
    :goto_2
    invoke-direct {p0, p1, v0}, Lc8/Qw;->recycleFromStart(Lc8/Fv;I)V

    goto :goto_0

    .line 1763
    .end local v0    # "line":I
    :cond_6
    iget v2, p2, Lc8/nu;->mStartLine:I

    iget v3, p2, Lc8/nu;->mAvailable:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v0, v2, v3

    .restart local v0    # "line":I
    goto :goto_2
.end method

.method private recycleFromEnd(Lc8/Fv;I)V
    .locals 7
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "line"    # I

    .prologue
    const/4 v6, 0x1

    .line 1903
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v1

    .line 1905
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1906
    invoke-virtual {p0, v2}, Lc8/Qw;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1907
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v5, v0}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    if-lt v5, p2, :cond_0

    iget-object v5, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 1908
    invoke-virtual {v5, v0}, Lc8/Ru;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v5

    if-lt v5, p2, :cond_0

    .line 1909
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lc8/Lw;

    .line 1911
    .local v4, "lp":Lc8/Lw;
    iget-boolean v5, v4, Lc8/Lw;->mFullSpan:Z

    if-eqz v5, :cond_3

    .line 1912
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v5, p0, Lc8/Qw;->mSpanCount:I

    if-ge v3, v5, :cond_2

    .line 1913
    iget-object v5, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v5, v5, v3

    iget-object v5, v5, Lc8/Pw;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 1931
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "j":I
    .end local v4    # "lp":Lc8/Lw;
    :cond_0
    return-void

    .line 1912
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "j":I
    .restart local v4    # "lp":Lc8/Lw;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1917
    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget v5, p0, Lc8/Qw;->mSpanCount:I

    if-ge v3, v5, :cond_4

    .line 1918
    iget-object v5, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lc8/Pw;->popEnd()V

    .line 1917
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1921
    .end local v3    # "j":I
    :cond_3
    iget-object v5, v4, Lc8/Lw;->mSpan:Lc8/Pw;

    iget-object v5, v5, Lc8/Pw;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 1924
    iget-object v5, v4, Lc8/Lw;->mSpan:Lc8/Pw;

    invoke-virtual {v5}, Lc8/Pw;->popEnd()V

    .line 1926
    :cond_4
    invoke-virtual {p0, v0, p1}, Lc8/Qw;->removeAndRecycleView(Landroid/view/View;Lc8/Fv;)V

    .line 1905
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private recycleFromStart(Lc8/Fv;I)V
    .locals 5
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "line"    # I

    .prologue
    const/4 v4, 0x1

    .line 1874
    :goto_0
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1875
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lc8/Qw;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1876
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v3, v0}, Lc8/Ru;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_0

    iget-object v3, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 1877
    invoke-virtual {v3, v0}, Lc8/Ru;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_0

    .line 1878
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lc8/Lw;

    .line 1880
    .local v2, "lp":Lc8/Lw;
    iget-boolean v3, v2, Lc8/Lw;->mFullSpan:Z

    if-eqz v3, :cond_3

    .line 1881
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lc8/Qw;->mSpanCount:I

    if-ge v1, v3, :cond_2

    .line 1882
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v1

    iget-object v3, v3, Lc8/Pw;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1900
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "j":I
    .end local v2    # "lp":Lc8/Lw;
    :cond_0
    return-void

    .line 1881
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "j":I
    .restart local v2    # "lp":Lc8/Lw;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1886
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lc8/Qw;->mSpanCount:I

    if-ge v1, v3, :cond_4

    .line 1887
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lc8/Pw;->popStart()V

    .line 1886
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1890
    .end local v1    # "j":I
    :cond_3
    iget-object v3, v2, Lc8/Lw;->mSpan:Lc8/Pw;

    iget-object v3, v3, Lc8/Pw;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1893
    iget-object v3, v2, Lc8/Lw;->mSpan:Lc8/Pw;

    invoke-virtual {v3}, Lc8/Pw;->popStart()V

    .line 1895
    :cond_4
    invoke-virtual {p0, v0, p1}, Lc8/Qw;->removeAndRecycleView(Landroid/view/View;Lc8/Fv;)V

    goto :goto_0
.end method

.method private repositionToWrapContentIfNecessary()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 735
    iget-object v11, p0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    invoke-virtual {v11}, Lc8/Ru;->getMode()I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v11, v12, :cond_1

    .line 781
    :cond_0
    return-void

    .line 738
    :cond_1
    const/4 v7, 0x0

    .line 739
    .local v7, "maxSize":F
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v2

    .line 740
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 741
    invoke-virtual {p0, v4}, Lc8/Qw;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 742
    .local v1, "child":Landroid/view/View;
    iget-object v11, p0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    invoke-virtual {v11, v1}, Lc8/Ru;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    int-to-float v10, v11

    .line 743
    .local v10, "size":F
    cmpg-float v11, v10, v7

    if-ltz v11, :cond_3

    .line 746
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lc8/Lw;

    .line 747
    .local v5, "layoutParams":Lc8/Lw;
    invoke-virtual {v5}, Lc8/Lw;->isFullSpan()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 748
    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v11, v10

    iget v12, p0, Lc8/Qw;->mSpanCount:I

    int-to-float v12, v12

    div-float v10, v11, v12

    .line 750
    :cond_2
    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 740
    .end local v5    # "layoutParams":Lc8/Lw;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 752
    .end local v1    # "child":Landroid/view/View;
    .end local v10    # "size":F
    :cond_4
    iget v0, p0, Lc8/Qw;->mSizePerSpan:I

    .line 753
    .local v0, "before":I
    iget v11, p0, Lc8/Qw;->mSpanCount:I

    int-to-float v11, v11

    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 754
    .local v3, "desired":I
    iget-object v11, p0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    invoke-virtual {v11}, Lc8/Ru;->getMode()I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_5

    .line 755
    iget-object v11, p0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    invoke-virtual {v11}, Lc8/Ru;->getTotalSpace()I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 757
    :cond_5
    invoke-virtual {p0, v3}, Lc8/Qw;->updateMeasureSpecs(I)V

    .line 758
    iget v11, p0, Lc8/Qw;->mSizePerSpan:I

    if-eq v11, v0, :cond_0

    .line 761
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    .line 762
    invoke-virtual {p0, v4}, Lc8/Qw;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 763
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lc8/Lw;

    .line 764
    .local v6, "lp":Lc8/Lw;
    iget-boolean v11, v6, Lc8/Lw;->mFullSpan:Z

    if-nez v11, :cond_6

    .line 767
    invoke-virtual {p0}, Lc8/Qw;->isLayoutRTL()Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, p0, Lc8/Qw;->mOrientation:I

    if-ne v11, v13, :cond_7

    .line 768
    iget v11, p0, Lc8/Qw;->mSpanCount:I

    add-int/lit8 v11, v11, -0x1

    iget-object v12, v6, Lc8/Lw;->mSpan:Lc8/Pw;

    iget v12, v12, Lc8/Pw;->mIndex:I

    sub-int/2addr v11, v12

    neg-int v11, v11

    iget v12, p0, Lc8/Qw;->mSizePerSpan:I

    mul-int v8, v11, v12

    .line 769
    .local v8, "newOffset":I
    iget v11, p0, Lc8/Qw;->mSpanCount:I

    add-int/lit8 v11, v11, -0x1

    iget-object v12, v6, Lc8/Lw;->mSpan:Lc8/Pw;

    iget v12, v12, Lc8/Pw;->mIndex:I

    sub-int/2addr v11, v12

    neg-int v11, v11

    mul-int v9, v11, v0

    .line 770
    .local v9, "prevOffset":I
    sub-int v11, v8, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 761
    .end local v8    # "newOffset":I
    .end local v9    # "prevOffset":I
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 772
    :cond_7
    iget-object v11, v6, Lc8/Lw;->mSpan:Lc8/Pw;

    iget v11, v11, Lc8/Pw;->mIndex:I

    iget v12, p0, Lc8/Qw;->mSizePerSpan:I

    mul-int v8, v11, v12

    .line 773
    .restart local v8    # "newOffset":I
    iget-object v11, v6, Lc8/Lw;->mSpan:Lc8/Pw;

    iget v11, v11, Lc8/Pw;->mIndex:I

    mul-int v9, v11, v0

    .line 774
    .restart local v9    # "prevOffset":I
    iget v11, p0, Lc8/Qw;->mOrientation:I

    if-ne v11, v13, :cond_8

    .line 775
    sub-int v11, v8, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2

    .line 777
    :cond_8
    sub-int v11, v8, v9

    invoke-virtual {v1, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 561
    iget v1, p0, Lc8/Qw;->mOrientation:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lc8/Qw;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 562
    :cond_0
    iget-boolean v0, p0, Lc8/Qw;->mReverseLayout:Z

    iput-boolean v0, p0, Lc8/Qw;->mShouldReverseLayout:Z

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-boolean v1, p0, Lc8/Qw;->mReverseLayout:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lc8/Qw;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setLayoutStateDirection(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1446
    iget-object v2, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iput p1, v2, Lc8/nu;->mLayoutDirection:I

    .line 1447
    iget-object v3, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget-boolean v4, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Lc8/nu;->mItemDirection:I

    .line 1449
    return-void

    .line 1447
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private updateAllRemainingSpans(II)V
    .locals 2
    .param p1, "layoutDir"    # I
    .param p2, "targetLine"    # I

    .prologue
    .line 1786
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 1787
    iget-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v1, v1, v0

    iget-object v1, v1, Lc8/Pw;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1790
    iget-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Lc8/Qw;->updateRemainingSpans(Lc8/Pw;II)V

    .line 1786
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1792
    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Lc8/Nv;Lc8/Kw;)Z
    .locals 1
    .param p1, "state"    # Lc8/Nv;
    .param p2, "anchorInfo"    # Lc8/Kw;

    .prologue
    .line 841
    iget-boolean v0, p0, Lc8/Qw;->mLastLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p1}, Lc8/Nv;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lc8/Qw;->findLastReferenceChildPosition(I)I

    move-result v0

    .line 843
    :goto_0
    iput v0, p2, Lc8/Kw;->mPosition:I

    .line 844
    const/high16 v0, -0x80000000

    iput v0, p2, Lc8/Kw;->mOffset:I

    .line 845
    const/4 v0, 0x1

    return v0

    .line 843
    :cond_0
    invoke-virtual {p1}, Lc8/Nv;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lc8/Qw;->findFirstReferenceChildPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method private updateLayoutState(ILc8/Nv;)V
    .locals 8
    .param p1, "anchorPosition"    # I
    .param p2, "state"    # Lc8/Nv;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1415
    iget-object v6, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iput v5, v6, Lc8/nu;->mAvailable:I

    .line 1416
    iget-object v6, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iput p1, v6, Lc8/nu;->mCurrentPosition:I

    .line 1417
    const/4 v2, 0x0

    .line 1418
    .local v2, "startExtra":I
    const/4 v1, 0x0

    .line 1419
    .local v1, "endExtra":I
    invoke-virtual {p0}, Lc8/Qw;->isSmoothScrolling()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1420
    invoke-virtual {p2}, Lc8/Nv;->getTargetScrollPosition()I

    move-result v3

    .line 1421
    .local v3, "targetPos":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 1422
    iget-boolean v7, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-ge v3, p1, :cond_1

    move v6, v4

    :goto_0
    if-ne v7, v6, :cond_2

    .line 1423
    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v6}, Lc8/Ru;->getTotalSpace()I

    move-result v1

    .line 1431
    .end local v3    # "targetPos":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lc8/Qw;->getClipToPadding()Z

    move-result v0

    .line 1432
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_3

    .line 1433
    iget-object v6, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget-object v7, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v7}, Lc8/Ru;->getStartAfterPadding()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Lc8/nu;->mStartLine:I

    .line 1434
    iget-object v6, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget-object v7, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v7}, Lc8/Ru;->getEndAfterPadding()I

    move-result v7

    add-int/2addr v7, v1

    iput v7, v6, Lc8/nu;->mEndLine:I

    .line 1439
    :goto_2
    iget-object v6, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iput-boolean v5, v6, Lc8/nu;->mStopInFocusable:Z

    .line 1440
    iget-object v6, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iput-boolean v4, v6, Lc8/nu;->mRecycle:Z

    .line 1441
    iget-object v6, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget-object v7, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v7}, Lc8/Ru;->getMode()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 1442
    invoke-virtual {v7}, Lc8/Ru;->getEnd()I

    move-result v7

    if-nez v7, :cond_4

    :goto_3
    iput-boolean v4, v6, Lc8/nu;->mInfinite:Z

    .line 1443
    return-void

    .end local v0    # "clipToPadding":Z
    .restart local v3    # "targetPos":I
    :cond_1
    move v6, v5

    .line 1422
    goto :goto_0

    .line 1425
    :cond_2
    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v6}, Lc8/Ru;->getTotalSpace()I

    move-result v2

    goto :goto_1

    .line 1436
    .end local v3    # "targetPos":I
    .restart local v0    # "clipToPadding":Z
    :cond_3
    iget-object v6, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget-object v7, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v7}, Lc8/Ru;->getEnd()I

    move-result v7

    add-int/2addr v7, v1

    iput v7, v6, Lc8/nu;->mEndLine:I

    .line 1437
    iget-object v6, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    neg-int v7, v2

    iput v7, v6, Lc8/nu;->mStartLine:I

    goto :goto_2

    :cond_4
    move v4, v5

    .line 1442
    goto :goto_3
.end method

.method private updateRemainingSpans(Lc8/Pw;II)V
    .locals 5
    .param p1, "span"    # Lc8/Pw;
    .param p2, "layoutDir"    # I
    .param p3, "targetLine"    # I

    .prologue
    const/4 v4, 0x0

    .line 1795
    invoke-virtual {p1}, Lc8/Pw;->getDeletedSize()I

    move-result v0

    .line 1796
    .local v0, "deletedSize":I
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 1797
    invoke-virtual {p1}, Lc8/Pw;->getStartLine()I

    move-result v1

    .line 1798
    .local v1, "line":I
    add-int v2, v1, v0

    if-gt v2, p3, :cond_0

    .line 1799
    iget-object v2, p0, Lc8/Qw;->mRemainingSpans:Ljava/util/BitSet;

    iget v3, p1, Lc8/Pw;->mIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 1807
    :cond_0
    :goto_0
    return-void

    .line 1802
    .end local v1    # "line":I
    :cond_1
    invoke-virtual {p1}, Lc8/Pw;->getEndLine()I

    move-result v1

    .line 1803
    .restart local v1    # "line":I
    sub-int v2, v1, v0

    if-lt v2, p3, :cond_0

    .line 1804
    iget-object v2, p0, Lc8/Qw;->mRemainingSpans:Ljava/util/BitSet;

    iget v3, p1, Lc8/Pw;->mIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private updateSpecWithExtra(III)I
    .locals 3
    .param p1, "spec"    # I
    .param p2, "startInset"    # I
    .param p3, "endInset"    # I

    .prologue
    .line 1172
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1180
    .end local p1    # "spec":I
    :cond_0
    :goto_0
    return p1

    .line 1175
    .restart local p1    # "spec":I
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1176
    .local v0, "mode":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 1177
    :cond_2
    const/4 v1, 0x0

    .line 1178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1177
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, -0x80000000

    .line 1832
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Lc8/Pw;->getEndLine(I)I

    move-result v0

    .line 1833
    .local v0, "end":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lc8/Qw;->mSpanCount:I

    if-ge v1, v3, :cond_1

    .line 1834
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Lc8/Pw;->getEndLine(I)I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 1838
    :goto_1
    return v2

    .line 1833
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1838
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method areAllStartsEqual()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, -0x80000000

    .line 1842
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Lc8/Pw;->getStartLine(I)I

    move-result v1

    .line 1843
    .local v1, "start":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1844
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lc8/Pw;->getStartLine(I)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 1848
    :goto_1
    return v2

    .line 1843
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1848
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 529
    iget-object v0, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 530
    invoke-super {p0, p1}, Lc8/xv;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 532
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 1994
    iget v0, p0, Lc8/Qw;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1989
    iget v1, p0, Lc8/Qw;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkForGaps()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 272
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lc8/Qw;->mGapStrategy:I

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lc8/Qw;->isAttachedToWindow()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v6, v7

    .line 313
    :goto_0
    return v6

    .line 276
    :cond_1
    iget-boolean v8, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-eqz v8, :cond_2

    .line 277
    invoke-virtual {p0}, Lc8/Qw;->getLastChildPosition()I

    move-result v4

    .line 278
    .local v4, "minPos":I
    invoke-virtual {p0}, Lc8/Qw;->getFirstChildPosition()I

    move-result v3

    .line 283
    .local v3, "maxPos":I
    :goto_1
    if-nez v4, :cond_3

    .line 284
    invoke-virtual {p0}, Lc8/Qw;->hasGapsToFix()Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, "gapView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 286
    iget-object v7, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    invoke-virtual {v7}, Lc8/Nw;->clear()V

    .line 287
    invoke-virtual {p0}, Lc8/Qw;->requestSimpleAnimationsInNextLayout()V

    .line 288
    invoke-virtual {p0}, Lc8/Qw;->requestLayout()V

    goto :goto_0

    .line 280
    .end local v0    # "gapView":Landroid/view/View;
    .end local v3    # "maxPos":I
    .end local v4    # "minPos":I
    :cond_2
    invoke-virtual {p0}, Lc8/Qw;->getFirstChildPosition()I

    move-result v4

    .line 281
    .restart local v4    # "minPos":I
    invoke-virtual {p0}, Lc8/Qw;->getLastChildPosition()I

    move-result v3

    .restart local v3    # "maxPos":I
    goto :goto_1

    .line 292
    :cond_3
    iget-boolean v8, p0, Lc8/Qw;->mLaidOutInvalidFullSpan:Z

    if-nez v8, :cond_4

    move v6, v7

    .line 293
    goto :goto_0

    .line 295
    :cond_4
    iget-boolean v8, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    const/4 v2, -0x1

    .line 296
    .local v2, "invalidGapDir":I
    :goto_2
    iget-object v8, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    add-int/lit8 v9, v3, 0x1

    .line 297
    invoke-virtual {v8, v4, v9, v2, v6}, Lc8/Nw;->getFirstFullSpanItemInRange(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    .line 298
    .local v1, "invalidFsi":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-nez v1, :cond_6

    .line 299
    iput-boolean v7, p0, Lc8/Qw;->mLaidOutInvalidFullSpan:Z

    .line 300
    iget-object v6, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v8}, Lc8/Nw;->forceInvalidateAfter(I)I

    move v6, v7

    .line 301
    goto :goto_0

    .end local v1    # "invalidFsi":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v2    # "invalidGapDir":I
    :cond_5
    move v2, v6

    .line 295
    goto :goto_2

    .line 303
    .restart local v1    # "invalidFsi":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .restart local v2    # "invalidGapDir":I
    :cond_6
    iget-object v7, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    iget v8, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    neg-int v9, v2

    .line 304
    invoke-virtual {v7, v4, v8, v9, v6}, Lc8/Nw;->getFirstFullSpanItemInRange(IIIZ)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 306
    .local v5, "validFsi":Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-nez v5, :cond_7

    .line 307
    iget-object v7, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    iget v8, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v7, v8}, Lc8/Nw;->forceInvalidateAfter(I)I

    .line 311
    :goto_3
    invoke-virtual {p0}, Lc8/Qw;->requestSimpleAnimationsInNextLayout()V

    .line 312
    invoke-virtual {p0}, Lc8/Qw;->requestLayout()V

    goto :goto_0

    .line 309
    :cond_7
    iget-object v7, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    iget v8, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lc8/Nw;->forceInvalidateAfter(I)I

    goto :goto_3
.end method

.method public checkLayoutParams(Lc8/yv;)Z
    .locals 1
    .param p1, "lp"    # Lc8/yv;

    .prologue
    .line 2238
    instance-of v0, p1, Lc8/Lw;

    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILc8/Nv;Lc8/vv;)V
    .locals 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lc8/Nv;
    .param p4, "layoutPrefetchRegistry"    # Lc8/vv;

    .prologue
    .line 2089
    iget v4, p0, Lc8/Qw;->mOrientation:I

    if-nez v4, :cond_1

    move v0, p1

    .line 2090
    .local v0, "delta":I
    :goto_0
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_2

    .line 2120
    :cond_0
    return-void

    .end local v0    # "delta":I
    :cond_1
    move v0, p2

    .line 2089
    goto :goto_0

    .line 2094
    .restart local v0    # "delta":I
    :cond_2
    invoke-virtual {p0, v0, p3}, Lc8/Qw;->prepareLayoutStateForDelta(ILc8/Nv;)V

    .line 2097
    iget-object v4, p0, Lc8/Qw;->mPrefetchDistances:[I

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc8/Qw;->mPrefetchDistances:[I

    array-length v4, v4

    iget v5, p0, Lc8/Qw;->mSpanCount:I

    if-ge v4, v5, :cond_4

    .line 2098
    :cond_3
    iget v4, p0, Lc8/Qw;->mSpanCount:I

    new-array v4, v4, [I

    iput-object v4, p0, Lc8/Qw;->mPrefetchDistances:[I

    .line 2101
    :cond_4
    const/4 v3, 0x0

    .line 2102
    .local v3, "itemPrefetchCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lc8/Qw;->mSpanCount:I

    if-ge v2, v4, :cond_7

    .line 2104
    iget-object v4, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v4, v4, Lc8/nu;->mItemDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v4, v4, Lc8/nu;->mStartLine:I

    iget-object v5, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v5, v5, v2

    iget-object v6, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v6, v6, Lc8/nu;->mStartLine:I

    .line 2105
    invoke-virtual {v5, v6}, Lc8/Pw;->getStartLine(I)I

    move-result v5

    sub-int v1, v4, v5

    .line 2107
    .local v1, "distance":I
    :goto_2
    if-ltz v1, :cond_5

    .line 2109
    iget-object v4, p0, Lc8/Qw;->mPrefetchDistances:[I

    aput v1, v4, v3

    .line 2110
    add-int/lit8 v3, v3, 0x1

    .line 2102
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2105
    .end local v1    # "distance":I
    :cond_6
    iget-object v4, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v4, v4, v2

    iget-object v5, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v5, v5, Lc8/nu;->mEndLine:I

    .line 2106
    invoke-virtual {v4, v5}, Lc8/Pw;->getEndLine(I)I

    move-result v4

    iget-object v5, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v5, v5, Lc8/nu;->mEndLine:I

    sub-int v1, v4, v5

    goto :goto_2

    .line 2113
    :cond_7
    iget-object v4, p0, Lc8/Qw;->mPrefetchDistances:[I

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Ljava/util/Arrays;->sort([III)V

    .line 2116
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    invoke-virtual {v4, p3}, Lc8/nu;->hasMore(Lc8/Nv;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2117
    iget-object v4, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v4, v4, Lc8/nu;->mCurrentPosition:I

    iget-object v5, p0, Lc8/Qw;->mPrefetchDistances:[I

    aget v5, v5, v2

    invoke-interface {p4, v4, v5}, Lc8/vv;->addPosition(II)V

    .line 2118
    iget-object v4, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v5, v4, Lc8/nu;->mCurrentPosition:I

    iget-object v6, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v6, v6, Lc8/nu;->mItemDirection:I

    add-int/2addr v5, v6

    iput v5, v4, Lc8/nu;->mCurrentPosition:I

    .line 2116
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public computeHorizontalScrollExtent(Lc8/Nv;)I
    .locals 1
    .param p1, "state"    # Lc8/Nv;

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Lc8/Qw;->computeScrollExtent(Lc8/Nv;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lc8/Nv;)I
    .locals 1
    .param p1, "state"    # Lc8/Nv;

    .prologue
    .line 1069
    invoke-direct {p0, p1}, Lc8/Qw;->computeScrollOffset(Lc8/Nv;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lc8/Nv;)I
    .locals 1
    .param p1, "state"    # Lc8/Nv;

    .prologue
    .line 1109
    invoke-direct {p0, p1}, Lc8/Qw;->computeScrollRange(Lc8/Nv;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 2019
    invoke-direct {p0, p1}, Lc8/Qw;->calculateScrollDirectionForPosition(I)I

    move-result v0

    .line 2020
    .local v0, "direction":I
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 2021
    .local v1, "outVector":Landroid/graphics/PointF;
    if-nez v0, :cond_0

    .line 2022
    const/4 v1, 0x0

    .line 2031
    .end local v1    # "outVector":Landroid/graphics/PointF;
    :goto_0
    return-object v1

    .line 2024
    .restart local v1    # "outVector":Landroid/graphics/PointF;
    :cond_0
    iget v2, p0, Lc8/Qw;->mOrientation:I

    if-nez v2, :cond_1

    .line 2025
    int-to-float v2, v0

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 2026
    iput v3, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 2028
    :cond_1
    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 2029
    int-to-float v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Lc8/Nv;)I
    .locals 1
    .param p1, "state"    # Lc8/Nv;

    .prologue
    .line 1104
    invoke-direct {p0, p1}, Lc8/Qw;->computeScrollExtent(Lc8/Nv;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lc8/Nv;)I
    .locals 1
    .param p1, "state"    # Lc8/Nv;

    .prologue
    .line 1084
    invoke-direct {p0, p1}, Lc8/Qw;->computeScrollOffset(Lc8/Nv;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lc8/Nv;)I
    .locals 1
    .param p1, "state"    # Lc8/Nv;

    .prologue
    .line 1124
    invoke-direct {p0, p1}, Lc8/Qw;->computeScrollRange(Lc8/Nv;)I

    move-result v0

    return v0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 4
    .param p1, "into"    # [I

    .prologue
    .line 991
    if-nez p1, :cond_1

    .line 992
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    new-array p1, v1, [I

    .line 997
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 998
    iget-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lc8/Pw;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 993
    .end local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lc8/Qw;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 994
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/Qw;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1000
    .restart local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;
    .locals 8
    .param p1, "fullyVisible"    # Z

    .prologue
    .line 1354
    iget-object v7, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v7}, Lc8/Ru;->getStartAfterPadding()I

    move-result v1

    .line 1355
    .local v1, "boundsStart":I
    iget-object v7, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v7}, Lc8/Ru;->getEndAfterPadding()I

    move-result v0

    .line 1356
    .local v0, "boundsEnd":I
    const/4 v6, 0x0

    .line 1357
    .local v6, "partiallyVisible":Landroid/view/View;
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_3

    .line 1358
    invoke-virtual {p0, v5}, Lc8/Qw;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1359
    .local v2, "child":Landroid/view/View;
    iget-object v7, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v7, v2}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 1360
    .local v4, "childStart":I
    iget-object v7, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v7, v2}, Lc8/Ru;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 1361
    .local v3, "childEnd":I
    if-le v3, v1, :cond_2

    if-ge v4, v0, :cond_2

    .line 1364
    if-le v3, v0, :cond_0

    if-nez p1, :cond_1

    .line 1373
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_0
    :goto_1
    return-object v2

    .line 1369
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "childEnd":I
    .restart local v4    # "childStart":I
    :cond_1
    if-nez v6, :cond_2

    .line 1370
    move-object v6, v2

    .line 1357
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_3
    move-object v2, v6

    .line 1373
    goto :goto_1
.end method

.method findFirstVisibleItemClosestToStart(Z)Landroid/view/View;
    .locals 9
    .param p1, "fullyVisible"    # Z

    .prologue
    .line 1324
    iget-object v8, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v8}, Lc8/Ru;->getStartAfterPadding()I

    move-result v1

    .line 1325
    .local v1, "boundsStart":I
    iget-object v8, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v8}, Lc8/Ru;->getEndAfterPadding()I

    move-result v0

    .line 1326
    .local v0, "boundsEnd":I
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v6

    .line 1327
    .local v6, "limit":I
    const/4 v7, 0x0

    .line 1328
    .local v7, "partiallyVisible":Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 1329
    invoke-virtual {p0, v5}, Lc8/Qw;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1330
    .local v2, "child":Landroid/view/View;
    iget-object v8, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v8, v2}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 1331
    .local v4, "childStart":I
    iget-object v8, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v8, v2}, Lc8/Ru;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 1332
    .local v3, "childEnd":I
    if-le v3, v1, :cond_2

    if-ge v4, v0, :cond_2

    .line 1335
    if-ge v4, v1, :cond_0

    if-nez p1, :cond_1

    .line 1344
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_0
    :goto_1
    return-object v2

    .line 1340
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "childEnd":I
    .restart local v4    # "childStart":I
    :cond_1
    if-nez v7, :cond_2

    .line 1341
    move-object v7, v2

    .line 1328
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_3
    move-object v2, v7

    .line 1344
    goto :goto_1
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1294
    iget-boolean v1, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lc8/Qw;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    .line 1296
    .local v0, "first":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_1
    return v1

    .line 1295
    .end local v0    # "first":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, v2}, Lc8/Qw;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1296
    .restart local v0    # "first":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v0}, Lc8/Qw;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_1
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 4
    .param p1, "into"    # [I

    .prologue
    .line 959
    if-nez p1, :cond_1

    .line 960
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    new-array p1, v1, [I

    .line 965
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 966
    iget-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lc8/Pw;->findFirstVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 961
    .end local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lc8/Qw;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 962
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/Qw;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 968
    .restart local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 4
    .param p1, "into"    # [I

    .prologue
    .line 1055
    if-nez p1, :cond_1

    .line 1056
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    new-array p1, v1, [I

    .line 1061
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 1062
    iget-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lc8/Pw;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 1061
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    .end local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lc8/Qw;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1058
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/Qw;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1064
    .restart local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 4
    .param p1, "into"    # [I

    .prologue
    .line 1023
    if-nez p1, :cond_1

    .line 1024
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    new-array p1, v1, [I

    .line 1029
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 1030
    iget-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lc8/Pw;->findLastVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 1029
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1025
    .end local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lc8/Qw;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1026
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/Qw;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", array size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1032
    .restart local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method public generateDefaultLayoutParams()Lc8/yv;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 2213
    iget v0, p0, Lc8/Qw;->mOrientation:I

    if-nez v0, :cond_0

    .line 2214
    new-instance v0, Lc8/Lw;

    invoke-direct {v0, v1, v2}, Lc8/Lw;-><init>(II)V

    .line 2217
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Lw;

    invoke-direct {v0, v2, v1}, Lc8/Lw;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lc8/yv;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2224
    new-instance v0, Lc8/Lw;

    invoke-direct {v0, p1, p2}, Lc8/Lw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lc8/yv;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2229
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2230
    new-instance v0, Lc8/Lw;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lc8/Lw;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2232
    :goto_0
    return-object v0

    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lc8/Lw;

    invoke-direct {v0, p1}, Lc8/Lw;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lc8/Fv;Lc8/Nv;)I
    .locals 2
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "state"    # Lc8/Nv;

    .prologue
    .line 1311
    iget v0, p0, Lc8/Qw;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1312
    iget v0, p0, Lc8/Qw;->mSpanCount:I

    .line 1314
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lc8/xv;->getColumnCountForAccessibility(Lc8/Fv;Lc8/Nv;)I

    move-result v0

    goto :goto_0
.end method

.method getFirstChildPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2173
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v0

    .line 2174
    .local v0, "childCount":I
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lc8/Qw;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/Qw;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public getGapStrategy()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lc8/Qw;->mGapStrategy:I

    return v0
.end method

.method getLastChildPosition()I
    .locals 2

    .prologue
    .line 2168
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v0

    .line 2169
    .local v0, "childCount":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lc8/Qw;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/Qw;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 2242
    iget v0, p0, Lc8/Qw;->mOrientation:I

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lc8/Qw;->mReverseLayout:Z

    return v0
.end method

.method public getRowCountForAccessibility(Lc8/Fv;Lc8/Nv;)I
    .locals 1
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "state"    # Lc8/Nv;

    .prologue
    .line 1302
    iget v0, p0, Lc8/Qw;->mOrientation:I

    if-nez v0, :cond_0

    .line 1303
    iget v0, p0, Lc8/Qw;->mSpanCount:I

    .line 1305
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lc8/xv;->getRowCountForAccessibility(Lc8/Fv;Lc8/Nv;)I

    move-result v0

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lc8/Qw;->mSpanCount:I

    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 23

    .prologue
    .line 339
    const/16 v19, 0x0

    .line 340
    .local v19, "startChildIndex":I
    invoke-virtual/range {p0 .. p0}, Lc8/Qw;->getChildCount()I

    move-result v20

    add-int/lit8 v6, v20, -0x1

    .line 341
    .local v6, "endChildIndex":I
    new-instance v10, Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Qw;->mSpanCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 342
    .local v10, "mSpansToCheck":Ljava/util/BitSet;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Qw;->mSpanCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Ljava/util/BitSet;->set(IIZ)V

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Qw;->mOrientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lc8/Qw;->isLayoutRTL()Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v18, 0x1

    .line 347
    .local v18, "preferredSpanDir":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Qw;->mShouldReverseLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 348
    move v7, v6

    .line 349
    .local v7, "firstChildIndex":I
    add-int/lit8 v4, v19, -0x1

    .line 354
    .local v4, "childLimit":I
    :goto_1
    if-ge v7, v4, :cond_3

    const/4 v14, 0x1

    .line 355
    .local v14, "nextChildDiff":I
    :goto_2
    move v8, v7

    .local v8, "i":I
    :goto_3
    if-eq v8, v4, :cond_b

    .line 356
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lc8/Qw;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 357
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lc8/Lw;

    .line 358
    .local v9, "lp":Lc8/Lw;
    iget-object v0, v9, Lc8/Lw;->mSpan:Lc8/Pw;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lc8/Pw;->mIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 359
    iget-object v0, v9, Lc8/Lw;->mSpan:Lc8/Pw;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lc8/Qw;->checkSpanForGap(Lc8/Pw;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 399
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "lp":Lc8/Lw;
    :cond_0
    :goto_4
    return-object v3

    .line 345
    .end local v4    # "childLimit":I
    .end local v7    # "firstChildIndex":I
    .end local v8    # "i":I
    .end local v14    # "nextChildDiff":I
    .end local v18    # "preferredSpanDir":I
    :cond_1
    const/16 v18, -0x1

    goto :goto_0

    .line 351
    .restart local v18    # "preferredSpanDir":I
    :cond_2
    move/from16 v7, v19

    .line 352
    .restart local v7    # "firstChildIndex":I
    add-int/lit8 v4, v6, 0x1

    .restart local v4    # "childLimit":I
    goto :goto_1

    .line 354
    :cond_3
    const/4 v14, -0x1

    goto :goto_2

    .line 362
    .restart local v3    # "child":Landroid/view/View;
    .restart local v8    # "i":I
    .restart local v9    # "lp":Lc8/Lw;
    .restart local v14    # "nextChildDiff":I
    :cond_4
    iget-object v0, v9, Lc8/Lw;->mSpan:Lc8/Pw;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lc8/Pw;->mIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->clear(I)V

    .line 364
    :cond_5
    iget-boolean v0, v9, Lc8/Lw;->mFullSpan:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    .line 368
    add-int v20, v8, v14

    move/from16 v0, v20

    if-eq v0, v4, :cond_7

    .line 369
    add-int v20, v8, v14

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lc8/Qw;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 370
    .local v13, "nextChild":Landroid/view/View;
    const/4 v5, 0x0

    .line 371
    .local v5, "compareSpans":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Qw;->mShouldReverseLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lc8/Ru;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    .line 374
    .local v11, "myEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lc8/Ru;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    .line 375
    .local v15, "nextEnd":I
    if-lt v11, v15, :cond_0

    .line 377
    if-ne v11, v15, :cond_6

    .line 378
    const/4 v5, 0x1

    .line 389
    .end local v11    # "myEnd":I
    .end local v15    # "nextEnd":I
    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 391
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lc8/Lw;

    .line 392
    .local v16, "nextLp":Lc8/Lw;
    iget-object v0, v9, Lc8/Lw;->mSpan:Lc8/Pw;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lc8/Pw;->mIndex:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/Lw;->mSpan:Lc8/Pw;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lc8/Pw;->mIndex:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    if-gez v20, :cond_9

    const/16 v20, 0x1

    move/from16 v21, v20

    :goto_6
    if-gez v18, :cond_a

    const/16 v20, 0x1

    :goto_7
    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 355
    .end local v5    # "compareSpans":Z
    .end local v13    # "nextChild":Landroid/view/View;
    .end local v16    # "nextLp":Lc8/Lw;
    :cond_7
    add-int/2addr v8, v14

    goto/16 :goto_3

    .line 381
    .restart local v5    # "compareSpans":Z
    .restart local v13    # "nextChild":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    .line 382
    .local v12, "myStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    .line 383
    .local v17, "nextStart":I
    move/from16 v0, v17

    if-gt v12, v0, :cond_0

    .line 385
    move/from16 v0, v17

    if-ne v12, v0, :cond_6

    .line 386
    const/4 v5, 0x1

    goto :goto_5

    .line 392
    .end local v12    # "myStart":I
    .end local v17    # "nextStart":I
    .restart local v16    # "nextLp":Lc8/Lw;
    :cond_9
    const/16 v20, 0x0

    move/from16 v21, v20

    goto :goto_6

    :cond_a
    const/16 v20, 0x0

    goto :goto_7

    .line 399
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "compareSpans":Z
    .end local v9    # "lp":Lc8/Lw;
    .end local v13    # "nextChild":Landroid/view/View;
    .end local v16    # "nextLp":Lc8/Lw;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4
.end method

.method public invalidateSpanAssignments()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    invoke-virtual {v0}, Lc8/Nw;->clear()V

    .line 551
    invoke-virtual {p0}, Lc8/Qw;->requestLayout()V

    .line 552
    return-void
.end method

.method isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 569
    invoke-virtual {p0}, Lc8/Qw;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 2
    .param p1, "dx"    # I

    .prologue
    .line 1453
    invoke-super {p0, p1}, Lc8/xv;->offsetChildrenHorizontal(I)V

    .line 1454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1455
    iget-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lc8/Pw;->onOffset(I)V

    .line 1454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1457
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2
    .param p1, "dy"    # I

    .prologue
    .line 1461
    invoke-super {p0, p1}, Lc8/xv;->offsetChildrenVertical(I)V

    .line 1462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1463
    iget-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lc8/Pw;->onOffset(I)V

    .line 1462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1465
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Lc8/Rv;Lc8/Fv;)V
    .locals 2
    .param p1, "view"    # Lc8/Rv;
    .param p2, "recycler"    # Lc8/Fv;

    .prologue
    .line 325
    iget-object v1, p0, Lc8/Qw;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lc8/Qw;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 327
    iget-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lc8/Pw;->clear()V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p1}, Lc8/Rv;->requestLayout()V

    .line 331
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILc8/Fv;Lc8/Nv;)Landroid/view/View;
    .locals 15
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Lc8/Fv;
    .param p4, "state"    # Lc8/Nv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2249
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v12

    if-nez v12, :cond_1

    .line 2250
    const/4 v11, 0x0

    .line 2343
    :cond_0
    :goto_0
    return-object v11

    .line 2253
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lc8/Qw;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 2254
    .local v2, "directChild":Landroid/view/View;
    if-nez v2, :cond_2

    .line 2255
    const/4 v11, 0x0

    goto :goto_0

    .line 2258
    :cond_2
    invoke-direct {p0}, Lc8/Qw;->resolveShouldLayoutReverse()V

    .line 2259
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lc8/Qw;->convertFocusDirectionToLayoutDirection(I)I

    move-result v4

    .line 2260
    .local v4, "layoutDir":I
    const/high16 v12, -0x80000000

    if-ne v4, v12, :cond_3

    .line 2261
    const/4 v11, 0x0

    goto :goto_0

    .line 2263
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lc8/Lw;

    .line 2264
    .local v6, "prevFocusLayoutParams":Lc8/Lw;
    iget-boolean v5, v6, Lc8/Lw;->mFullSpan:Z

    .line 2265
    .local v5, "prevFocusFullSpan":Z
    iget-object v7, v6, Lc8/Lw;->mSpan:Lc8/Pw;

    .line 2267
    .local v7, "prevFocusSpan":Lc8/Pw;
    const/4 v12, 0x1

    if-ne v4, v12, :cond_6

    .line 2268
    invoke-virtual {p0}, Lc8/Qw;->getLastChildPosition()I

    move-result v8

    .line 2272
    .local v8, "referenceChildPosition":I
    :goto_1
    move-object/from16 v0, p4

    invoke-direct {p0, v8, v0}, Lc8/Qw;->updateLayoutState(ILc8/Nv;)V

    .line 2273
    invoke-direct {p0, v4}, Lc8/Qw;->setLayoutStateDirection(I)V

    .line 2275
    iget-object v12, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget-object v13, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v13, v13, Lc8/nu;->mItemDirection:I

    add-int/2addr v13, v8

    iput v13, v12, Lc8/nu;->mCurrentPosition:I

    .line 2276
    iget-object v12, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    const v13, 0x3eaaaaab

    iget-object v14, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v14}, Lc8/Ru;->getTotalSpace()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v12, Lc8/nu;->mAvailable:I

    .line 2277
    iget-object v12, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lc8/nu;->mStopInFocusable:Z

    .line 2278
    iget-object v12, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lc8/nu;->mRecycle:Z

    .line 2279
    iget-object v12, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v12, v1}, Lc8/Qw;->fill(Lc8/Fv;Lc8/nu;Lc8/Nv;)I

    .line 2280
    iget-boolean v12, p0, Lc8/Qw;->mShouldReverseLayout:Z

    iput-boolean v12, p0, Lc8/Qw;->mLastLayoutFromEnd:Z

    .line 2281
    if-nez v5, :cond_4

    .line 2282
    invoke-virtual {v7, v8, v4}, Lc8/Pw;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v11

    .line 2283
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_4

    if-ne v11, v2, :cond_0

    .line 2290
    .end local v11    # "view":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v4}, Lc8/Qw;->preferLastSpan(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2291
    iget v12, p0, Lc8/Qw;->mSpanCount:I

    add-int/lit8 v3, v12, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_9

    .line 2292
    iget-object v12, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v12, v12, v3

    invoke-virtual {v12, v8, v4}, Lc8/Pw;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v11

    .line 2293
    .restart local v11    # "view":Landroid/view/View;
    if-eqz v11, :cond_5

    if-ne v11, v2, :cond_0

    .line 2291
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 2270
    .end local v3    # "i":I
    .end local v8    # "referenceChildPosition":I
    .end local v11    # "view":Landroid/view/View;
    :cond_6
    invoke-virtual {p0}, Lc8/Qw;->getFirstChildPosition()I

    move-result v8

    .restart local v8    # "referenceChildPosition":I
    goto :goto_1

    .line 2298
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget v12, p0, Lc8/Qw;->mSpanCount:I

    if-ge v3, v12, :cond_9

    .line 2299
    iget-object v12, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v12, v12, v3

    invoke-virtual {v12, v8, v4}, Lc8/Pw;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object v11

    .line 2300
    .restart local v11    # "view":Landroid/view/View;
    if-eqz v11, :cond_8

    if-ne v11, v2, :cond_0

    .line 2298
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2310
    .end local v11    # "view":Landroid/view/View;
    :cond_9
    iget-boolean v12, p0, Lc8/Qw;->mReverseLayout:Z

    if-nez v12, :cond_a

    const/4 v12, 0x1

    move v13, v12

    :goto_4
    const/4 v12, -0x1

    if-ne v4, v12, :cond_b

    const/4 v12, 0x1

    :goto_5
    if-ne v13, v12, :cond_c

    const/4 v9, 0x1

    .line 2312
    .local v9, "shouldSearchFromStart":Z
    :goto_6
    if-nez v5, :cond_e

    .line 2313
    if-eqz v9, :cond_d

    .line 2314
    invoke-virtual {v7}, Lc8/Pw;->findFirstPartiallyVisibleItemPosition()I

    move-result v12

    .line 2313
    :goto_7
    invoke-virtual {p0, v12}, Lc8/Qw;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 2316
    .local v10, "unfocusableCandidate":Landroid/view/View;
    if-eqz v10, :cond_e

    if-eq v10, v2, :cond_e

    move-object v11, v10

    .line 2317
    goto/16 :goto_0

    .line 2310
    .end local v9    # "shouldSearchFromStart":Z
    .end local v10    # "unfocusableCandidate":Landroid/view/View;
    :cond_a
    const/4 v12, 0x0

    move v13, v12

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    goto :goto_6

    .line 2315
    .restart local v9    # "shouldSearchFromStart":Z
    :cond_d
    invoke-virtual {v7}, Lc8/Pw;->findLastPartiallyVisibleItemPosition()I

    move-result v12

    goto :goto_7

    .line 2321
    :cond_e
    invoke-direct {p0, v4}, Lc8/Qw;->preferLastSpan(I)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2322
    iget v12, p0, Lc8/Qw;->mSpanCount:I

    add-int/lit8 v3, v12, -0x1

    :goto_8
    if-ltz v3, :cond_14

    .line 2323
    iget v12, v7, Lc8/Pw;->mIndex:I

    if-eq v3, v12, :cond_10

    .line 2326
    if-eqz v9, :cond_f

    iget-object v12, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v12, v12, v3

    .line 2327
    invoke-virtual {v12}, Lc8/Pw;->findFirstPartiallyVisibleItemPosition()I

    move-result v12

    .line 2326
    :goto_9
    invoke-virtual {p0, v12}, Lc8/Qw;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 2329
    .restart local v10    # "unfocusableCandidate":Landroid/view/View;
    if-eqz v10, :cond_10

    if-eq v10, v2, :cond_10

    move-object v11, v10

    .line 2330
    goto/16 :goto_0

    .line 2327
    .end local v10    # "unfocusableCandidate":Landroid/view/View;
    :cond_f
    iget-object v12, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v12, v12, v3

    .line 2328
    invoke-virtual {v12}, Lc8/Pw;->findLastPartiallyVisibleItemPosition()I

    move-result v12

    goto :goto_9

    .line 2322
    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 2334
    :cond_11
    const/4 v3, 0x0

    :goto_a
    iget v12, p0, Lc8/Qw;->mSpanCount:I

    if-ge v3, v12, :cond_14

    .line 2335
    if-eqz v9, :cond_12

    iget-object v12, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v12, v12, v3

    .line 2336
    invoke-virtual {v12}, Lc8/Pw;->findFirstPartiallyVisibleItemPosition()I

    move-result v12

    .line 2335
    :goto_b
    invoke-virtual {p0, v12}, Lc8/Qw;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 2338
    .restart local v10    # "unfocusableCandidate":Landroid/view/View;
    if-eqz v10, :cond_13

    if-eq v10, v2, :cond_13

    move-object v11, v10

    .line 2339
    goto/16 :goto_0

    .line 2336
    .end local v10    # "unfocusableCandidate":Landroid/view/View;
    :cond_12
    iget-object v12, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v12, v12, v3

    .line 2337
    invoke-virtual {v12}, Lc8/Pw;->findLastPartiallyVisibleItemPosition()I

    move-result v12

    goto :goto_b

    .line 2334
    .restart local v10    # "unfocusableCandidate":Landroid/view/View;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2343
    .end local v10    # "unfocusableCandidate":Landroid/view/View;
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v6, 0x0

    .line 1267
    invoke-super {p0, p1}, Lc8/xv;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1268
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1270
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v2

    .line 1271
    .local v2, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {p0, v6}, Lc8/Qw;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v3

    .line 1272
    .local v3, "start":Landroid/view/View;
    invoke-virtual {p0, v6}, Lc8/Qw;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    .line 1273
    .local v0, "end":Landroid/view/View;
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 1286
    .end local v0    # "end":Landroid/view/View;
    .end local v2    # "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .end local v3    # "start":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1276
    .restart local v0    # "end":Landroid/view/View;
    .restart local v2    # "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .restart local v3    # "start":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v3}, Lc8/Qw;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1277
    .local v4, "startPos":I
    invoke-virtual {p0, v0}, Lc8/Qw;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1278
    .local v1, "endPos":I
    if-ge v4, v1, :cond_2

    .line 1279
    invoke-virtual {v2, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1280
    invoke-virtual {v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_0

    .line 1282
    :cond_2
    invoke-virtual {v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1283
    invoke-virtual {v2, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lc8/Fv;Lc8/Nv;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "state"    # Lc8/Nv;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 1246
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1247
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v6, Lc8/Lw;

    if-nez v0, :cond_0

    .line 1248
    invoke-super {p0, p3, p4}, Lc8/xv;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1263
    :goto_0
    return-void

    :cond_0
    move-object v7, v6

    .line 1251
    check-cast v7, Lc8/Lw;

    .line 1252
    .local v7, "sglp":Lc8/Lw;
    iget v0, p0, Lc8/Qw;->mOrientation:I

    if-nez v0, :cond_2

    .line 1254
    invoke-virtual {v7}, Lc8/Lw;->getSpanIndex()I

    move-result v0

    iget-boolean v1, v7, Lc8/Lw;->mFullSpan:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lc8/Qw;->mSpanCount:I

    :goto_1
    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-boolean v4, v7, Lc8/Lw;->mFullSpan:Z

    const/4 v5, 0x0

    .line 1253
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 1254
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1258
    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    .line 1260
    invoke-virtual {v7}, Lc8/Lw;->getSpanIndex()I

    move-result v2

    iget-boolean v3, v7, Lc8/Lw;->mFullSpan:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lc8/Qw;->mSpanCount:I

    :goto_2
    iget-boolean v4, v7, Lc8/Lw;->mFullSpan:Z

    const/4 v5, 0x0

    .line 1258
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 1260
    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public onItemsAdded(Lc8/Rv;II)V
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 1474
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lc8/Qw;->handleUpdate(III)V

    .line 1475
    return-void
.end method

.method public onItemsChanged(Lc8/Rv;)V
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;

    .prologue
    .line 1479
    iget-object v0, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    invoke-virtual {v0}, Lc8/Nw;->clear()V

    .line 1480
    invoke-virtual {p0}, Lc8/Qw;->requestLayout()V

    .line 1481
    return-void
.end method

.method public onItemsMoved(Lc8/Rv;III)V
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 1485
    const/16 v0, 0x8

    invoke-direct {p0, p2, p3, v0}, Lc8/Qw;->handleUpdate(III)V

    .line 1486
    return-void
.end method

.method public onItemsRemoved(Lc8/Rv;II)V
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 1469
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lc8/Qw;->handleUpdate(III)V

    .line 1470
    return-void
.end method

.method public onItemsUpdated(Lc8/Rv;IILjava/lang/Object;)V
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 1491
    const/4 v0, 0x4

    invoke-direct {p0, p2, p3, v0}, Lc8/Qw;->handleUpdate(III)V

    .line 1492
    return-void
.end method

.method public onLayoutChildren(Lc8/Fv;Lc8/Nv;)V
    .locals 1
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "state"    # Lc8/Nv;

    .prologue
    .line 606
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lc8/Qw;->onLayoutChildren(Lc8/Fv;Lc8/Nv;Z)V

    .line 607
    return-void
.end method

.method public onLayoutCompleted(Lc8/Nv;)V
    .locals 1
    .param p1, "state"    # Lc8/Nv;

    .prologue
    .line 727
    invoke-super {p0, p1}, Lc8/xv;->onLayoutCompleted(Lc8/Nv;)V

    .line 728
    const/4 v0, -0x1

    iput v0, p0, Lc8/Qw;->mPendingScrollPosition:I

    .line 729
    const/high16 v0, -0x80000000

    iput v0, p0, Lc8/Qw;->mPendingScrollPositionOffset:I

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 731
    iget-object v0, p0, Lc8/Qw;->mAnchorInfo:Lc8/Kw;

    invoke-virtual {v0}, Lc8/Kw;->reset()V

    .line 732
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1185
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1186
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1187
    invoke-virtual {p0}, Lc8/Qw;->requestLayout()V

    .line 1191
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    .line 1195
    iget-object v3, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v3, :cond_1

    .line 1196
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 1240
    :cond_0
    :goto_0
    return-object v2

    .line 1198
    :cond_1
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1199
    .local v2, "state":Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
    iget-boolean v3, p0, Lc8/Qw;->mReverseLayout:Z

    iput-boolean v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1200
    iget-boolean v3, p0, Lc8/Qw;->mLastLayoutFromEnd:Z

    iput-boolean v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1201
    iget-boolean v3, p0, Lc8/Qw;->mLastLayoutRTL:Z

    iput-boolean v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1203
    iget-object v3, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    iget-object v3, v3, Lc8/Nw;->mData:[I

    if-eqz v3, :cond_3

    .line 1204
    iget-object v3, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    iget-object v3, v3, Lc8/Nw;->mData:[I

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1205
    iget-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v3, v3

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1206
    iget-object v3, p0, Lc8/Qw;->mLazySpanLookup:Lc8/Nw;

    iget-object v3, v3, Lc8/Nw;->mFullSpanItems:Ljava/util/List;

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 1211
    :goto_1
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 1212
    iget-boolean v3, p0, Lc8/Qw;->mLastLayoutFromEnd:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lc8/Qw;->getLastChildPosition()I

    move-result v3

    .line 1213
    :goto_2
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1214
    invoke-virtual {p0}, Lc8/Qw;->findFirstVisibleItemPositionInt()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1215
    iget v3, p0, Lc8/Qw;->mSpanCount:I

    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1216
    iget v3, p0, Lc8/Qw;->mSpanCount:I

    new-array v3, v3, [I

    iput-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 1217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v3, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v3, :cond_0

    .line 1219
    iget-boolean v3, p0, Lc8/Qw;->mLastLayoutFromEnd:Z

    if-eqz v3, :cond_5

    .line 1220
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lc8/Pw;->getEndLine(I)I

    move-result v1

    .line 1221
    .local v1, "line":I
    if-eq v1, v4, :cond_2

    .line 1222
    iget-object v3, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v3}, Lc8/Ru;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1230
    :cond_2
    :goto_4
    iget-object v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v0

    .line 1217
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1208
    .end local v0    # "i":I
    .end local v1    # "line":I
    :cond_3
    iput v6, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    goto :goto_1

    .line 1213
    :cond_4
    invoke-virtual {p0}, Lc8/Qw;->getFirstChildPosition()I

    move-result v3

    goto :goto_2

    .line 1225
    .restart local v0    # "i":I
    :cond_5
    iget-object v3, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lc8/Pw;->getStartLine(I)I

    move-result v1

    .line 1226
    .restart local v1    # "line":I
    if-eq v1, v4, :cond_2

    .line 1227
    iget-object v3, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v3}, Lc8/Ru;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_4

    .line 1233
    .end local v0    # "i":I
    .end local v1    # "line":I
    :cond_6
    iput v5, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1234
    iput v5, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1235
    iput v6, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    invoke-virtual {p0}, Lc8/Qw;->checkForGaps()Z

    .line 321
    :cond_0
    return-void
.end method

.method prepareLayoutStateForDelta(ILc8/Nv;)V
    .locals 4
    .param p1, "delta"    # I
    .param p2, "state"    # Lc8/Nv;

    .prologue
    .line 2125
    if-lez p1, :cond_0

    .line 2126
    const/4 v0, 0x1

    .line 2127
    .local v0, "layoutDir":I
    invoke-virtual {p0}, Lc8/Qw;->getLastChildPosition()I

    move-result v1

    .line 2132
    .local v1, "referenceChildPosition":I
    :goto_0
    iget-object v2, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lc8/nu;->mRecycle:Z

    .line 2133
    invoke-direct {p0, v1, p2}, Lc8/Qw;->updateLayoutState(ILc8/Nv;)V

    .line 2134
    invoke-direct {p0, v0}, Lc8/Qw;->setLayoutStateDirection(I)V

    .line 2135
    iget-object v2, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget-object v3, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v3, v3, Lc8/nu;->mItemDirection:I

    add-int/2addr v3, v1

    iput v3, v2, Lc8/nu;->mCurrentPosition:I

    .line 2136
    iget-object v2, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v2, Lc8/nu;->mAvailable:I

    .line 2137
    return-void

    .line 2129
    .end local v0    # "layoutDir":I
    .end local v1    # "referenceChildPosition":I
    :cond_0
    const/4 v0, -0x1

    .line 2130
    .restart local v0    # "layoutDir":I
    invoke-virtual {p0}, Lc8/Qw;->getFirstChildPosition()I

    move-result v1

    .restart local v1    # "referenceChildPosition":I
    goto :goto_0
.end method

.method scrollBy(ILc8/Fv;Lc8/Nv;)I
    .locals 6
    .param p1, "dt"    # I
    .param p2, "recycler"    # Lc8/Fv;
    .param p3, "state"    # Lc8/Nv;

    .prologue
    const/4 v3, 0x0

    .line 2140
    invoke-virtual {p0}, Lc8/Qw;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v3

    .line 2164
    :goto_0
    return v2

    .line 2144
    :cond_1
    invoke-virtual {p0, p1, p3}, Lc8/Qw;->prepareLayoutStateForDelta(ILc8/Nv;)V

    .line 2145
    iget-object v4, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    invoke-direct {p0, p2, v4, p3}, Lc8/Qw;->fill(Lc8/Fv;Lc8/nu;Lc8/Nv;)I

    move-result v1

    .line 2146
    .local v1, "consumed":I
    iget-object v4, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iget v0, v4, Lc8/nu;->mAvailable:I

    .line 2148
    .local v0, "available":I
    if-ge v0, v1, :cond_2

    .line 2149
    move v2, p1

    .line 2159
    .local v2, "totalScroll":I
    :goto_1
    iget-object v4, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    neg-int v5, v2

    invoke-virtual {v4, v5}, Lc8/Ru;->offsetChildren(I)V

    .line 2161
    iget-boolean v4, p0, Lc8/Qw;->mShouldReverseLayout:Z

    iput-boolean v4, p0, Lc8/Qw;->mLastLayoutFromEnd:Z

    .line 2162
    iget-object v4, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    iput v3, v4, Lc8/nu;->mAvailable:I

    .line 2163
    iget-object v3, p0, Lc8/Qw;->mLayoutState:Lc8/nu;

    invoke-direct {p0, p2, v3}, Lc8/Qw;->recycle(Lc8/Fv;Lc8/nu;)V

    goto :goto_0

    .line 2150
    .end local v2    # "totalScroll":I
    :cond_2
    if-gez p1, :cond_3

    .line 2151
    neg-int v2, v1

    .restart local v2    # "totalScroll":I
    goto :goto_1

    .line 2153
    .end local v2    # "totalScroll":I
    :cond_3
    move v2, v1

    .restart local v2    # "totalScroll":I
    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILc8/Fv;Lc8/Nv;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lc8/Fv;
    .param p3, "state"    # Lc8/Nv;

    .prologue
    .line 2000
    invoke-virtual {p0, p1, p2, p3}, Lc8/Qw;->scrollBy(ILc8/Fv;Lc8/Nv;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2044
    iget-object v0, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, p1, :cond_0

    .line 2045
    iget-object v0, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2047
    :cond_0
    iput p1, p0, Lc8/Qw;->mPendingScrollPosition:I

    .line 2048
    const/high16 v0, -0x80000000

    iput v0, p0, Lc8/Qw;->mPendingScrollPositionOffset:I

    .line 2049
    invoke-virtual {p0}, Lc8/Qw;->requestLayout()V

    .line 2050
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 2066
    iget-object v0, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2069
    :cond_0
    iput p1, p0, Lc8/Qw;->mPendingScrollPosition:I

    .line 2070
    iput p2, p0, Lc8/Qw;->mPendingScrollPositionOffset:I

    .line 2071
    invoke-virtual {p0}, Lc8/Qw;->requestLayout()V

    .line 2072
    return-void
.end method

.method public scrollVerticallyBy(ILc8/Fv;Lc8/Nv;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lc8/Fv;
    .param p3, "state"    # Lc8/Nv;

    .prologue
    .line 2006
    invoke-virtual {p0, p1, p2, p3}, Lc8/Qw;->scrollBy(ILc8/Fv;Lc8/Nv;)I

    move-result v0

    return v0
.end method

.method public setGapStrategy(I)V
    .locals 2
    .param p1, "gapStrategy"    # I

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Qw;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 514
    iget v0, p0, Lc8/Qw;->mGapStrategy:I

    if-ne p1, v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 517
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_1
    iput p1, p0, Lc8/Qw;->mGapStrategy:I

    .line 523
    iget v0, p0, Lc8/Qw;->mGapStrategy:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lc8/Qw;->setAutoMeasureEnabled(Z)V

    .line 524
    invoke-virtual {p0}, Lc8/Qw;->requestLayout()V

    goto :goto_0

    .line 523
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 8
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 588
    invoke-virtual {p0}, Lc8/Qw;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lc8/Qw;->getPaddingRight()I

    move-result v7

    add-int v1, v6, v7

    .line 589
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Lc8/Qw;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lc8/Qw;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 590
    .local v4, "verticalPadding":I
    iget v6, p0, Lc8/Qw;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 591
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v2, v6, v4

    .line 592
    .local v2, "usedHeight":I
    invoke-virtual {p0}, Lc8/Qw;->getMinimumHeight()I

    move-result v6

    invoke-static {p3, v2, v6}, Lc8/Qw;->chooseSize(III)I

    move-result v0

    .line 593
    .local v0, "height":I
    iget v6, p0, Lc8/Qw;->mSizePerSpan:I

    iget v7, p0, Lc8/Qw;->mSpanCount:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v1

    .line 594
    invoke-virtual {p0}, Lc8/Qw;->getMinimumWidth()I

    move-result v7

    .line 593
    invoke-static {p2, v6, v7}, Lc8/Qw;->chooseSize(III)I

    move-result v5

    .line 601
    .end local v2    # "usedHeight":I
    .local v5, "width":I
    :goto_0
    invoke-virtual {p0, v5, v0}, Lc8/Qw;->setMeasuredDimension(II)V

    .line 602
    return-void

    .line 596
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v6, v1

    .line 597
    .local v3, "usedWidth":I
    invoke-virtual {p0}, Lc8/Qw;->getMinimumWidth()I

    move-result v6

    invoke-static {p2, v3, v6}, Lc8/Qw;->chooseSize(III)I

    move-result v5

    .line 598
    .restart local v5    # "width":I
    iget v6, p0, Lc8/Qw;->mSizePerSpan:I

    iget v7, p0, Lc8/Qw;->mSpanCount:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v4

    .line 599
    invoke-virtual {p0}, Lc8/Qw;->getMinimumHeight()I

    move-result v7

    .line 598
    invoke-static {p3, v6, v7}, Lc8/Qw;->chooseSize(III)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 449
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid orientation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc8/Qw;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 453
    iget v1, p0, Lc8/Qw;->mOrientation:I

    if-ne p1, v1, :cond_1

    .line 461
    :goto_0
    return-void

    .line 456
    :cond_1
    iput p1, p0, Lc8/Qw;->mOrientation:I

    .line 457
    iget-object v0, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 458
    .local v0, "tmp":Lc8/Ru;
    iget-object v1, p0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    iput-object v1, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 459
    iput-object v0, p0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    .line 460
    invoke-virtual {p0}, Lc8/Qw;->requestLayout()V

    goto :goto_0
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Qw;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    .line 479
    iget-object v0, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 481
    :cond_0
    iput-boolean p1, p0, Lc8/Qw;->mReverseLayout:Z

    .line 482
    invoke-virtual {p0}, Lc8/Qw;->requestLayout()V

    .line 483
    return-void
.end method

.method public setSpanCount(I)V
    .locals 3
    .param p1, "spanCount"    # I

    .prologue
    .line 429
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc8/Qw;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 430
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    if-eq p1, v1, :cond_1

    .line 431
    invoke-virtual {p0}, Lc8/Qw;->invalidateSpanAssignments()V

    .line 432
    iput p1, p0, Lc8/Qw;->mSpanCount:I

    .line 433
    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lc8/Qw;->mSpanCount:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lc8/Qw;->mRemainingSpans:Ljava/util/BitSet;

    .line 434
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    new-array v1, v1, [Lc8/Pw;

    iput-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lc8/Qw;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 436
    iget-object v1, p0, Lc8/Qw;->mSpans:[Lc8/Pw;

    new-instance v2, Lc8/Pw;

    invoke-direct {v2, p0, v0}, Lc8/Pw;-><init>(Lc8/Qw;I)V

    aput-object v2, v1, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p0}, Lc8/Qw;->requestLayout()V

    .line 440
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Lc8/Rv;Lc8/Nv;I)V
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "state"    # Lc8/Nv;
    .param p3, "position"    # I

    .prologue
    .line 2037
    new-instance v0, Lc8/xu;

    invoke-virtual {p1}, Lc8/Rv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/xu;-><init>(Landroid/content/Context;)V

    .line 2038
    .local v0, "scroller":Lc8/xu;
    invoke-virtual {v0, p3}, Lc8/xu;->setTargetPosition(I)V

    .line 2039
    invoke-virtual {p0, v0}, Lc8/Qw;->startSmoothScroll(Lc8/Mv;)V

    .line 2040
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateAnchorFromPendingData(Lc8/Nv;Lc8/Kw;)Z
    .locals 12
    .param p1, "state"    # Lc8/Nv;
    .param p2, "anchorInfo"    # Lc8/Kw;

    .prologue
    const/4 v6, 0x0

    const/4 v11, -0x1

    const/high16 v10, -0x80000000

    const/4 v7, 0x1

    .line 850
    invoke-virtual {p1}, Lc8/Nv;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, p0, Lc8/Qw;->mPendingScrollPosition:I

    if-ne v8, v11, :cond_1

    :cond_0
    move v7, v6

    .line 924
    :goto_0
    return v7

    .line 854
    :cond_1
    iget v8, p0, Lc8/Qw;->mPendingScrollPosition:I

    if-ltz v8, :cond_2

    iget v8, p0, Lc8/Qw;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lc8/Nv;->getItemCount()I

    move-result v9

    if-lt v8, v9, :cond_3

    .line 855
    :cond_2
    iput v11, p0, Lc8/Qw;->mPendingScrollPosition:I

    .line 856
    iput v10, p0, Lc8/Qw;->mPendingScrollPositionOffset:I

    move v7, v6

    .line 857
    goto :goto_0

    .line 860
    :cond_3
    iget-object v8, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v8, v11, :cond_4

    iget-object v8, p0, Lc8/Qw;->mPendingSavedState:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-gtz v8, :cond_f

    .line 863
    :cond_4
    iget v8, p0, Lc8/Qw;->mPendingScrollPosition:I

    invoke-virtual {p0, v8}, Lc8/Qw;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 864
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_c

    .line 867
    iget-boolean v6, p0, Lc8/Qw;->mShouldReverseLayout:Z

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lc8/Qw;->getLastChildPosition()I

    move-result v6

    .line 868
    :goto_1
    iput v6, p2, Lc8/Kw;->mPosition:I

    .line 869
    iget v6, p0, Lc8/Qw;->mPendingScrollPositionOffset:I

    if-eq v6, v10, :cond_7

    .line 870
    iget-boolean v6, p2, Lc8/Kw;->mLayoutFromEnd:Z

    if-eqz v6, :cond_6

    .line 871
    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v6}, Lc8/Ru;->getEndAfterPadding()I

    move-result v6

    iget v8, p0, Lc8/Qw;->mPendingScrollPositionOffset:I

    sub-int v5, v6, v8

    .line 873
    .local v5, "target":I
    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v6, v0}, Lc8/Ru;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p2, Lc8/Kw;->mOffset:I

    goto :goto_0

    .line 868
    .end local v5    # "target":I
    :cond_5
    invoke-virtual {p0}, Lc8/Qw;->getFirstChildPosition()I

    move-result v6

    goto :goto_1

    .line 875
    :cond_6
    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v6}, Lc8/Ru;->getStartAfterPadding()I

    move-result v6

    iget v8, p0, Lc8/Qw;->mPendingScrollPositionOffset:I

    add-int v5, v6, v8

    .line 877
    .restart local v5    # "target":I
    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v6, v0}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p2, Lc8/Kw;->mOffset:I

    goto :goto_0

    .line 883
    .end local v5    # "target":I
    :cond_7
    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v6, v0}, Lc8/Ru;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 884
    .local v1, "childSize":I
    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v6}, Lc8/Ru;->getTotalSpace()I

    move-result v6

    if-le v1, v6, :cond_9

    .line 886
    iget-boolean v6, p2, Lc8/Kw;->mLayoutFromEnd:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 887
    invoke-virtual {v6}, Lc8/Ru;->getEndAfterPadding()I

    move-result v6

    .line 888
    :goto_2
    iput v6, p2, Lc8/Kw;->mOffset:I

    goto/16 :goto_0

    .line 887
    :cond_8
    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 888
    invoke-virtual {v6}, Lc8/Ru;->getStartAfterPadding()I

    move-result v6

    goto :goto_2

    .line 892
    :cond_9
    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v6, v0}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 893
    invoke-virtual {v8}, Lc8/Ru;->getStartAfterPadding()I

    move-result v8

    sub-int v4, v6, v8

    .line 894
    .local v4, "startGap":I
    if-gez v4, :cond_a

    .line 895
    neg-int v6, v4

    iput v6, p2, Lc8/Kw;->mOffset:I

    goto/16 :goto_0

    .line 898
    :cond_a
    iget-object v6, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v6}, Lc8/Ru;->getEndAfterPadding()I

    move-result v6

    iget-object v8, p0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 899
    invoke-virtual {v8, v0}, Lc8/Ru;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    sub-int v2, v6, v8

    .line 900
    .local v2, "endGap":I
    if-gez v2, :cond_b

    .line 901
    iput v2, p2, Lc8/Kw;->mOffset:I

    goto/16 :goto_0

    .line 905
    :cond_b
    iput v10, p2, Lc8/Kw;->mOffset:I

    goto/16 :goto_0

    .line 909
    .end local v1    # "childSize":I
    .end local v2    # "endGap":I
    .end local v4    # "startGap":I
    :cond_c
    iget v8, p0, Lc8/Qw;->mPendingScrollPosition:I

    iput v8, p2, Lc8/Kw;->mPosition:I

    .line 910
    iget v8, p0, Lc8/Qw;->mPendingScrollPositionOffset:I

    if-ne v8, v10, :cond_e

    .line 911
    iget v8, p2, Lc8/Kw;->mPosition:I

    invoke-direct {p0, v8}, Lc8/Qw;->calculateScrollDirectionForPosition(I)I

    move-result v3

    .line 913
    .local v3, "position":I
    if-ne v3, v7, :cond_d

    move v6, v7

    :cond_d
    iput-boolean v6, p2, Lc8/Kw;->mLayoutFromEnd:Z

    .line 914
    invoke-virtual {p2}, Lc8/Kw;->assignCoordinateFromPadding()V

    .line 918
    .end local v3    # "position":I
    :goto_3
    iput-boolean v7, p2, Lc8/Kw;->mInvalidateOffsets:Z

    goto/16 :goto_0

    .line 916
    :cond_e
    iget v6, p0, Lc8/Qw;->mPendingScrollPositionOffset:I

    invoke-virtual {p2, v6}, Lc8/Kw;->assignCoordinateFromPadding(I)V

    goto :goto_3

    .line 921
    .end local v0    # "child":Landroid/view/View;
    :cond_f
    iput v10, p2, Lc8/Kw;->mOffset:I

    .line 922
    iget v6, p0, Lc8/Qw;->mPendingScrollPosition:I

    iput v6, p2, Lc8/Kw;->mPosition:I

    goto/16 :goto_0
.end method

.method updateAnchorInfoForLayout(Lc8/Nv;Lc8/Kw;)V
    .locals 1
    .param p1, "state"    # Lc8/Nv;
    .param p2, "anchorInfo"    # Lc8/Kw;

    .prologue
    .line 823
    invoke-virtual {p0, p1, p2}, Lc8/Qw;->updateAnchorFromPendingData(Lc8/Nv;Lc8/Kw;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-direct {p0, p1, p2}, Lc8/Qw;->updateAnchorFromChildren(Lc8/Nv;Lc8/Kw;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    invoke-virtual {p2}, Lc8/Kw;->assignCoordinateFromPadding()V

    .line 833
    const/4 v0, 0x0

    iput v0, p2, Lc8/Kw;->mPosition:I

    goto :goto_0
.end method

.method updateMeasureSpecs(I)V
    .locals 1
    .param p1, "totalSpace"    # I

    .prologue
    .line 928
    iget v0, p0, Lc8/Qw;->mSpanCount:I

    div-int v0, p1, v0

    iput v0, p0, Lc8/Qw;->mSizePerSpan:I

    .line 930
    iget-object v0, p0, Lc8/Qw;->mSecondaryOrientation:Lc8/Ru;

    .line 931
    invoke-virtual {v0}, Lc8/Ru;->getMode()I

    move-result v0

    .line 930
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lc8/Qw;->mFullSizeSpec:I

    .line 932
    return-void
.end method
