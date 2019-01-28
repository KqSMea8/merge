.class public final Lc8/Fv;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Qv;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Qv;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Qv;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerPool:Lc8/Ev;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Qv;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lc8/Ov;

.field mViewCacheMax:I

.field final synthetic this$0:Lc8/Rv;


# direct methods
.method public constructor <init>(Lc8/Rv;)V
    .locals 2
    .param p1, "this$0"    # Lc8/Rv;

    .prologue
    const/4 v1, 0x2

    .line 5221
    iput-object p1, p0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5223
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    .line 5225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    .line 5227
    iget-object v0, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5228
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/Fv;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 5230
    iput v1, p0, Lc8/Fv;->mRequestedCacheMax:I

    .line 5231
    iput v1, p0, Lc8/Fv;->mViewCacheMax:I

    return-void
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 5618
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5619
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 5621
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 5624
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5625
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mAccessibilityDelegate:Lc8/Tv;

    .line 5626
    invoke-virtual {v0}, Lc8/Tv;->getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object v0

    .line 5625
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 5629
    :cond_1
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "invalidateThis"    # Z

    .prologue
    const/4 v4, 0x4

    .line 5638
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5639
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5640
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 5641
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lc8/Fv;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5638
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5644
    :cond_1
    if-nez p2, :cond_2

    .line 5656
    :goto_1
    return-void

    .line 5648
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 5649
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5650
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 5652
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    .line 5653
    .local v2, "visibility":I
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5654
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private invalidateDisplayListInt(Lc8/Qv;)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 5632
    iget-object v0, p1, Lc8/Qv;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 5633
    iget-object v0, p1, Lc8/Qv;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc8/Fv;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5635
    :cond_0
    return-void
.end method

.method private tryBindViewHolderByDeadline(Lc8/Qv;IIJ)Z
    .locals 10
    .param p1, "holder"    # Lc8/Qv;
    .param p2, "offsetPosition"    # I
    .param p3, "position"    # I
    .param p4, "deadlineNs"    # J

    .prologue
    .line 5327
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iput-object v0, p1, Lc8/Qv;->mOwnerRecyclerView:Lc8/Rv;

    .line 5328
    invoke-virtual {p1}, Lc8/Qv;->getItemViewType()I

    move-result v1

    .line 5329
    .local v1, "viewType":I
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->getNanoTime()J

    move-result-wide v2

    .line 5330
    .local v2, "startBindNs":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p4, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Fv;->mRecyclerPool:Lc8/Ev;

    move-wide v4, p4

    .line 5331
    invoke-virtual/range {v0 .. v5}, Lc8/Ev;->willBindInTime(IJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5333
    const/4 v0, 0x0

    .line 5342
    :goto_0
    return v0

    .line 5335
    :cond_0
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1, p2}, Lc8/iv;->bindViewHolder(Lc8/Qv;I)V

    .line 5336
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->getNanoTime()J

    move-result-wide v6

    .line 5337
    .local v6, "endBindNs":J
    iget-object v0, p0, Lc8/Fv;->mRecyclerPool:Lc8/Ev;

    invoke-virtual {p1}, Lc8/Qv;->getItemViewType()I

    move-result v4

    sub-long v8, v6, v2

    invoke-virtual {v0, v4, v8, v9}, Lc8/Ev;->factorInBindTime(IJ)V

    .line 5338
    iget-object v0, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lc8/Fv;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 5339
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0}, Lc8/Nv;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5340
    iput p3, p1, Lc8/Qv;->mPreLayoutPosition:I

    .line 5342
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lc8/Qv;Z)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;
    .param p2, "dispatchRecycled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5824
    invoke-static {p1}, Lc8/Rv;->clearNestedRecyclerViewIfNotNested(Lc8/Qv;)V

    .line 5825
    iget-object v0, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 5826
    if-eqz p2, :cond_0

    .line 5827
    invoke-virtual {p0, p1}, Lc8/Fv;->dispatchViewRecycled(Lc8/Qv;)V

    .line 5829
    :cond_0
    iput-object v1, p1, Lc8/Qv;->mOwnerRecyclerView:Lc8/Rv;

    .line 5830
    invoke-virtual {p0}, Lc8/Fv;->getRecycledViewPool()Lc8/Ev;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Ev;->putRecycledView(Lc8/Qv;)V

    .line 5831
    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x1

    .line 5361
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v1

    .line 5362
    .local v1, "holder":Lc8/Qv;
    if-nez v1, :cond_0

    .line 5363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5367
    :cond_0
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0, p2}, Lc8/ms;->findPositionOffset(I)I

    move-result v2

    .line 5368
    .local v2, "offsetPosition":I
    if-ltz v2, :cond_1

    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v0}, Lc8/iv;->getItemCount()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 5369
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Inconsistency detected. Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v4, v4, Lc8/Rv;->mState:Lc8/Nv;

    .line 5371
    invoke-virtual {v4}, Lc8/Nv;->getItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5373
    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lc8/Fv;->tryBindViewHolderByDeadline(Lc8/Qv;IIJ)Z

    .line 5375
    iget-object v0, v1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 5377
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_3

    .line 5378
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-virtual {v0}, Lc8/Rv;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lc8/yv;

    .line 5379
    .local v7, "rvLayoutParams":Lc8/yv;
    iget-object v0, v1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5387
    :goto_0
    iput-boolean v8, v7, Lc8/yv;->mInsetsDirty:Z

    .line 5388
    iput-object v1, v7, Lc8/yv;->mViewHolder:Lc8/Qv;

    .line 5389
    iget-object v0, v1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v8

    :goto_1
    iput-boolean v0, v7, Lc8/yv;->mPendingInvalidate:Z

    .line 5390
    return-void

    .line 5380
    .end local v7    # "rvLayoutParams":Lc8/yv;
    :cond_3
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-virtual {v0, v6}, Lc8/Rv;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5381
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-virtual {v0, v6}, Lc8/Rv;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lc8/yv;

    .line 5382
    .restart local v7    # "rvLayoutParams":Lc8/yv;
    iget-object v0, v1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v7    # "rvLayoutParams":Lc8/yv;
    :cond_4
    move-object v7, v6

    .line 5384
    check-cast v7, Lc8/yv;

    .restart local v7    # "rvLayoutParams":Lc8/yv;
    goto :goto_0

    .line 5389
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 5244
    iget-object v0, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5245
    invoke-virtual {p0}, Lc8/Fv;->recycleAndClearCachedViews()V

    .line 5246
    return-void
.end method

.method clearOldPositions()V
    .locals 6

    .prologue
    .line 6208
    iget-object v5, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6209
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 6210
    iget-object v5, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Qv;

    .line 6211
    .local v2, "holder":Lc8/Qv;
    invoke-virtual {v2}, Lc8/Qv;->clearOldPosition()V

    .line 6209
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6213
    .end local v2    # "holder":Lc8/Qv;
    :cond_0
    iget-object v5, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6214
    .local v4, "scrapCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    .line 6215
    iget-object v5, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Qv;

    invoke-virtual {v5}, Lc8/Qv;->clearOldPosition()V

    .line 6214
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6217
    :cond_1
    iget-object v5, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 6218
    iget-object v5, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6219
    .local v1, "changedScrapCount":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    .line 6220
    iget-object v5, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Qv;

    invoke-virtual {v5}, Lc8/Qv;->clearOldPosition()V

    .line 6219
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6223
    .end local v1    # "changedScrapCount":I
    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    .prologue
    .line 5901
    iget-object v0, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5902
    iget-object v0, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5903
    iget-object v0, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5905
    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 5411
    if-ltz p1, :cond_0

    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0}, Lc8/Nv;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 5412
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mState:Lc8/Nv;

    .line 5413
    invoke-virtual {v2}, Lc8/Nv;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5415
    :cond_1
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v0}, Lc8/Nv;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5418
    .end local p1    # "position":I
    :goto_0
    return p1

    .restart local p1    # "position":I
    :cond_2
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v0, p1}, Lc8/ms;->findPositionOffset(I)I

    move-result p1

    goto :goto_0
.end method

.method dispatchViewRecycled(Lc8/Qv;)V
    .locals 1
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 6052
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mRecyclerListener:Lc8/Gv;

    if-eqz v0, :cond_0

    .line 6053
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mRecyclerListener:Lc8/Gv;

    invoke-interface {v0, p1}, Lc8/Gv;->onViewRecycled(Lc8/Qv;)V

    .line 6055
    :cond_0
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_1

    .line 6056
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->onViewRecycled(Lc8/Qv;)V

    .line 6058
    :cond_1
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mState:Lc8/Nv;

    if-eqz v0, :cond_2

    .line 6059
    iget-object v0, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v0, p1}, Lc8/vx;->removeViewHolder(Lc8/Qv;)V

    .line 6062
    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lc8/Qv;
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x20

    .line 5910
    iget-object v7, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "changedScrapSize":I
    if-nez v0, :cond_1

    .end local v0    # "changedScrapSize":I
    :cond_0
    move-object v1, v6

    .line 5935
    :goto_0
    return-object v1

    .line 5914
    .restart local v0    # "changedScrapSize":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 5915
    iget-object v7, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qv;

    .line 5916
    .local v1, "holder":Lc8/Qv;
    invoke-virtual {v1}, Lc8/Qv;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lc8/Qv;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 5917
    invoke-virtual {v1, v10}, Lc8/Qv;->addFlags(I)V

    goto :goto_0

    .line 5914
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5922
    .end local v1    # "holder":Lc8/Qv;
    :cond_3
    iget-object v7, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v7, v7, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v7}, Lc8/iv;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5923
    iget-object v7, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v7, v7, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    invoke-virtual {v7, p1}, Lc8/ms;->findPositionOffset(I)I

    move-result v3

    .line 5924
    .local v3, "offsetPosition":I
    if-lez v3, :cond_5

    iget-object v7, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v7, v7, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v7}, Lc8/iv;->getItemCount()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 5925
    iget-object v7, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v7, v7, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v7, v3}, Lc8/iv;->getItemId(I)J

    move-result-wide v4

    .line 5926
    .local v4, "id":J
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 5927
    iget-object v7, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qv;

    .line 5928
    .restart local v1    # "holder":Lc8/Qv;
    invoke-virtual {v1}, Lc8/Qv;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lc8/Qv;->getItemId()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-nez v7, :cond_4

    .line 5929
    invoke-virtual {v1, v10}, Lc8/Qv;->addFlags(I)V

    goto :goto_0

    .line 5926
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "holder":Lc8/Qv;
    .end local v3    # "offsetPosition":I
    .end local v4    # "id":J
    :cond_5
    move-object v1, v6

    .line 5935
    goto :goto_0
.end method

.method getRecycledViewPool()Lc8/Ev;
    .locals 1

    .prologue
    .line 6156
    iget-object v0, p0, Lc8/Fv;->mRecyclerPool:Lc8/Ev;

    if-nez v0, :cond_0

    .line 6157
    new-instance v0, Lc8/Ev;

    invoke-direct {v0}, Lc8/Ev;-><init>()V

    iput-object v0, p0, Lc8/Fv;->mRecyclerPool:Lc8/Ev;

    .line 6159
    :cond_0
    iget-object v0, p0, Lc8/Fv;->mRecyclerPool:Lc8/Ev;

    return-object v0
.end method

.method getScrapCount()I
    .locals 1

    .prologue
    .line 5893
    iget-object v0, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Qv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5275
    iget-object v0, p0, Lc8/Fv;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapOrCachedViewForId(JIZ)Lc8/Qv;
    .locals 9
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "dryRun"    # Z

    .prologue
    const/4 v4, 0x0

    .line 6000
    iget-object v5, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6001
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 6002
    iget-object v5, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Qv;

    .line 6003
    .local v2, "holder":Lc8/Qv;
    invoke-virtual {v2}, Lc8/Qv;->getItemId()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lc8/Qv;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_2

    .line 6004
    invoke-virtual {v2}, Lc8/Qv;->getItemViewType()I

    move-result v5

    if-ne p3, v5, :cond_1

    .line 6005
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lc8/Qv;->addFlags(I)V

    .line 6006
    invoke-virtual {v2}, Lc8/Qv;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6015
    iget-object v4, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v4, v4, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v4}, Lc8/Nv;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6016
    const/4 v4, 0x2

    const/16 v5, 0xe

    invoke-virtual {v2, v4, v5}, Lc8/Qv;->setFlags(II)V

    .line 6048
    .end local v2    # "holder":Lc8/Qv;
    :cond_0
    :goto_1
    return-object v2

    .line 6021
    .restart local v2    # "holder":Lc8/Qv;
    :cond_1
    if-nez p4, :cond_2

    .line 6025
    iget-object v5, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6026
    iget-object v5, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v6, v2, Lc8/Qv;->itemView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lc8/Rv;->removeDetachedView(Landroid/view/View;Z)V

    .line 6027
    iget-object v5, v2, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lc8/Fv;->quickRecycleScrapView(Landroid/view/View;)V

    .line 6001
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 6033
    .end local v2    # "holder":Lc8/Qv;
    :cond_3
    iget-object v5, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6034
    .local v0, "cacheSize":I
    add-int/lit8 v3, v0, -0x1

    :goto_2
    if-ltz v3, :cond_6

    .line 6035
    iget-object v5, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Qv;

    .line 6036
    .restart local v2    # "holder":Lc8/Qv;
    invoke-virtual {v2}, Lc8/Qv;->getItemId()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-nez v5, :cond_5

    .line 6037
    invoke-virtual {v2}, Lc8/Qv;->getItemViewType()I

    move-result v5

    if-ne p3, v5, :cond_4

    .line 6038
    if-nez p4, :cond_0

    .line 6039
    iget-object v4, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 6042
    :cond_4
    if-nez p4, :cond_5

    .line 6043
    invoke-virtual {p0, v3}, Lc8/Fv;->recycleCachedViewAt(I)V

    move-object v2, v4

    .line 6044
    goto :goto_1

    .line 6034
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v2    # "holder":Lc8/Qv;
    :cond_6
    move-object v2, v4

    .line 6048
    goto :goto_1
.end method

.method getScrapOrHiddenOrCachedHolderForPosition(IZ)Lc8/Qv;
    .locals 10
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .prologue
    .line 5946
    iget-object v7, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5949
    .local v4, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 5950
    iget-object v7, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qv;

    .line 5951
    .local v1, "holder":Lc8/Qv;
    invoke-virtual {v1}, Lc8/Qv;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lc8/Qv;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 5952
    invoke-virtual {v1}, Lc8/Qv;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v7, v7, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v7, v7, Lc8/Nv;->mInPreLayout:Z

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lc8/Qv;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_2

    .line 5953
    :cond_0
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Lc8/Qv;->addFlags(I)V

    .line 5995
    .end local v1    # "holder":Lc8/Qv;
    :cond_1
    :goto_1
    return-object v1

    .line 5949
    .restart local v1    # "holder":Lc8/Qv;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5958
    .end local v1    # "holder":Lc8/Qv;
    :cond_3
    if-nez p2, :cond_5

    .line 5959
    iget-object v7, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v7, v7, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v7, p1}, Lc8/ht;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v6

    .line 5960
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_5

    .line 5963
    invoke-static {v6}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v5

    .line 5964
    .local v5, "vh":Lc8/Qv;
    iget-object v7, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v7, v7, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v7, v6}, Lc8/ht;->unhide(Landroid/view/View;)V

    .line 5965
    iget-object v7, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v7, v7, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v7, v6}, Lc8/ht;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 5966
    .local v3, "layoutIndex":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_4

    .line 5967
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 5970
    :cond_4
    iget-object v7, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v7, v7, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v7, v3}, Lc8/ht;->detachViewFromParent(I)V

    .line 5971
    invoke-virtual {p0, v6}, Lc8/Fv;->scrapView(Landroid/view/View;)V

    .line 5972
    const/16 v7, 0x2020

    invoke-virtual {v5, v7}, Lc8/Qv;->addFlags(I)V

    move-object v1, v5

    .line 5974
    goto :goto_1

    .line 5979
    .end local v3    # "layoutIndex":I
    .end local v5    # "vh":Lc8/Qv;
    .end local v6    # "view":Landroid/view/View;
    :cond_5
    iget-object v7, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5980
    .local v0, "cacheSize":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_7

    .line 5981
    iget-object v7, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qv;

    .line 5984
    .restart local v1    # "holder":Lc8/Qv;
    invoke-virtual {v1}, Lc8/Qv;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v1}, Lc8/Qv;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_6

    .line 5985
    if-nez p2, :cond_1

    .line 5986
    iget-object v7, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 5980
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5995
    .end local v1    # "holder":Lc8/Qv;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5897
    iget-object v0, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Qv;

    iget-object v0, v0, Lc8/Qv;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5436
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Fv;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .prologue
    .line 5440
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lc8/Fv;->tryGetViewHolderForPositionByDeadline(IZJ)Lc8/Qv;

    move-result-object v0

    iget-object v0, v0, Lc8/Qv;->itemView:Landroid/view/View;

    return-object v0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 6226
    iget-object v4, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6227
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6228
    iget-object v4, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qv;

    .line 6229
    .local v1, "holder":Lc8/Qv;
    iget-object v4, v1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lc8/yv;

    .line 6230
    .local v3, "layoutParams":Lc8/yv;
    if-eqz v3, :cond_0

    .line 6231
    const/4 v4, 0x1

    iput-boolean v4, v3, Lc8/yv;->mInsetsDirty:Z

    .line 6227
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6234
    .end local v1    # "holder":Lc8/Qv;
    .end local v3    # "layoutParams":Lc8/yv;
    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 6192
    iget-object v3, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v3, v3, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v3, v3, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v3}, Lc8/iv;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6193
    iget-object v3, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6194
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6195
    iget-object v3, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qv;

    .line 6196
    .local v1, "holder":Lc8/Qv;
    if-eqz v1, :cond_0

    .line 6197
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lc8/Qv;->addFlags(I)V

    .line 6198
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lc8/Qv;->addChangePayload(Ljava/lang/Object;)V

    .line 6194
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6203
    .end local v0    # "cachedCount":I
    .end local v1    # "holder":Lc8/Qv;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lc8/Fv;->recycleAndClearCachedViews()V

    .line 6205
    :cond_2
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4
    .param p1, "insertedAt"    # I
    .param p2, "count"    # I

    .prologue
    .line 6100
    iget-object v3, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6101
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6102
    iget-object v3, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qv;

    .line 6103
    .local v1, "holder":Lc8/Qv;
    if-eqz v1, :cond_0

    iget v3, v1, Lc8/Qv;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 6108
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3}, Lc8/Qv;->offsetPosition(IZ)V

    .line 6101
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6111
    .end local v1    # "holder":Lc8/Qv;
    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v7, 0x0

    .line 6072
    if-ge p1, p2, :cond_1

    .line 6073
    move v5, p1

    .line 6074
    .local v5, "start":I
    move v1, p2

    .line 6075
    .local v1, "end":I
    const/4 v4, -0x1

    .line 6081
    .local v4, "inBetweenOffset":I
    :goto_0
    iget-object v6, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6082
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 6083
    iget-object v6, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Qv;

    .line 6084
    .local v2, "holder":Lc8/Qv;
    if-eqz v2, :cond_0

    iget v6, v2, Lc8/Qv;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Lc8/Qv;->mPosition:I

    if-gt v6, v1, :cond_0

    .line 6087
    iget v6, v2, Lc8/Qv;->mPosition:I

    if-ne v6, p1, :cond_2

    .line 6088
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v7}, Lc8/Qv;->offsetPosition(IZ)V

    .line 6082
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6077
    .end local v0    # "cachedCount":I
    .end local v1    # "end":I
    .end local v2    # "holder":Lc8/Qv;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 6078
    .restart local v5    # "start":I
    move v1, p1

    .line 6079
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 6090
    .restart local v0    # "cachedCount":I
    .restart local v2    # "holder":Lc8/Qv;
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {v2, v4, v7}, Lc8/Qv;->offsetPosition(IZ)V

    goto :goto_2

    .line 6097
    .end local v2    # "holder":Lc8/Qv;
    :cond_3
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 5
    .param p1, "removedFrom"    # I
    .param p2, "count"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    .line 6120
    add-int v3, p1, p2

    .line 6121
    .local v3, "removedEnd":I
    iget-object v4, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6122
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 6123
    iget-object v4, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qv;

    .line 6124
    .local v1, "holder":Lc8/Qv;
    if-eqz v1, :cond_0

    .line 6125
    iget v4, v1, Lc8/Qv;->mPosition:I

    if-lt v4, v3, :cond_1

    .line 6131
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lc8/Qv;->offsetPosition(IZ)V

    .line 6122
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6132
    :cond_1
    iget v4, v1, Lc8/Qv;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 6134
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lc8/Qv;->addFlags(I)V

    .line 6135
    invoke-virtual {p0, v2}, Lc8/Fv;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 6139
    .end local v1    # "holder":Lc8/Qv;
    :cond_2
    return-void
.end method

.method onAdapterChanged(Lc8/iv;Lc8/iv;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lc8/iv;
    .param p2, "newAdapter"    # Lc8/iv;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 6066
    invoke-virtual {p0}, Lc8/Fv;->clear()V

    .line 6067
    invoke-virtual {p0}, Lc8/Fv;->getRecycledViewPool()Lc8/Ev;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/Ev;->onAdapterChanged(Lc8/iv;Lc8/iv;Z)V

    .line 6068
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5839
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v0

    .line 5840
    .local v0, "holder":Lc8/Qv;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Qv;->access$802(Lc8/Qv;Lc8/Fv;)Lc8/Fv;

    .line 5841
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Qv;->access$902(Lc8/Qv;Z)Z

    .line 5842
    invoke-virtual {v0}, Lc8/Qv;->clearReturnedFromScrapFlag()V

    .line 5843
    invoke-virtual {p0, v0}, Lc8/Fv;->recycleViewHolderInternal(Lc8/Qv;)V

    .line 5844
    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 3

    .prologue
    .line 5693
    iget-object v2, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5694
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 5695
    invoke-virtual {p0, v1}, Lc8/Fv;->recycleCachedViewAt(I)V

    .line 5694
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5697
    :cond_0
    iget-object v2, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5698
    invoke-static {}, Lc8/Rv;->access$600()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5699
    iget-object v2, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mPrefetchRegistry:Lc8/Mt;

    invoke-virtual {v2}, Lc8/Mt;->clearPrefetchPositions()V

    .line 5701
    :cond_1
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 2
    .param p1, "cachedViewIndex"    # I

    .prologue
    .line 5718
    iget-object v1, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Qv;

    .line 5722
    .local v0, "viewHolder":Lc8/Qv;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lc8/Fv;->addViewHolderToRecycledViewPool(Lc8/Qv;Z)V

    .line 5723
    iget-object v1, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5724
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5671
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v0

    .line 5672
    .local v0, "holder":Lc8/Qv;
    invoke-virtual {v0}, Lc8/Qv;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5673
    iget-object v1, p0, Lc8/Fv;->this$0:Lc8/Rv;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lc8/Rv;->removeDetachedView(Landroid/view/View;Z)V

    .line 5675
    :cond_0
    invoke-virtual {v0}, Lc8/Qv;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5676
    invoke-virtual {v0}, Lc8/Qv;->unScrap()V

    .line 5680
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lc8/Fv;->recycleViewHolderInternal(Lc8/Qv;)V

    .line 5681
    return-void

    .line 5677
    :cond_2
    invoke-virtual {v0}, Lc8/Qv;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5678
    invoke-virtual {v0}, Lc8/Qv;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method recycleViewHolderInternal(Lc8/Qv;)V
    .locals 13
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5732
    invoke-virtual {p1}, Lc8/Qv;->isScrap()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 5733
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 5735
    invoke-virtual {p1}, Lc8/Qv;->isScrap()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " isAttached:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lc8/Qv;->itemView:Landroid/view/View;

    .line 5736
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 5739
    :cond_2
    invoke-virtual {p1}, Lc8/Qv;->isTmpDetached()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5740
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5744
    :cond_3
    invoke-virtual {p1}, Lc8/Qv;->shouldIgnore()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5745
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5750
    :cond_4
    invoke-static {p1}, Lc8/Qv;->access$700(Lc8/Qv;)Z

    move-result v7

    .line 5751
    .local v7, "transientStatePreventsRecycling":Z
    iget-object v10, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v10, v10, Lc8/Rv;->mAdapter:Lc8/iv;

    if-eqz v10, :cond_7

    if-eqz v7, :cond_7

    iget-object v10, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v10, v10, Lc8/Rv;->mAdapter:Lc8/iv;

    .line 5753
    invoke-virtual {v10, p1}, Lc8/iv;->onFailedToRecycleView(Lc8/Qv;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v4, v9

    .line 5754
    .local v4, "forceRecycle":Z
    :goto_0
    const/4 v1, 0x0

    .line 5755
    .local v1, "cached":Z
    const/4 v5, 0x0

    .line 5760
    .local v5, "recycled":Z
    if-nez v4, :cond_5

    invoke-virtual {p1}, Lc8/Qv;->isRecyclable()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 5761
    :cond_5
    iget v10, p0, Lc8/Fv;->mViewCacheMax:I

    if-lez v10, :cond_a

    const/16 v10, 0x20e

    .line 5762
    invoke-virtual {p1, v10}, Lc8/Qv;->hasAnyOfTheFlags(I)Z

    move-result v10

    if-nez v10, :cond_a

    .line 5767
    iget-object v10, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5768
    .local v3, "cachedViewSize":I
    iget v10, p0, Lc8/Fv;->mViewCacheMax:I

    if-lt v3, v10, :cond_6

    if-lez v3, :cond_6

    .line 5769
    invoke-virtual {p0, v8}, Lc8/Fv;->recycleCachedViewAt(I)V

    .line 5770
    add-int/lit8 v3, v3, -0x1

    .line 5773
    :cond_6
    move v6, v3

    .line 5774
    .local v6, "targetCacheIndex":I
    invoke-static {}, Lc8/Rv;->access$600()Z

    move-result v8

    if-eqz v8, :cond_9

    if-lez v3, :cond_9

    iget-object v8, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v8, v8, Lc8/Rv;->mPrefetchRegistry:Lc8/Mt;

    iget v10, p1, Lc8/Qv;->mPosition:I

    .line 5776
    invoke-virtual {v8, v10}, Lc8/Mt;->lastPrefetchIncludedPosition(I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 5778
    add-int/lit8 v0, v3, -0x1

    .line 5779
    .local v0, "cacheIndex":I
    :goto_1
    if-ltz v0, :cond_8

    .line 5780
    iget-object v8, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/Qv;

    iget v2, v8, Lc8/Qv;->mPosition:I

    .line 5781
    .local v2, "cachedPos":I
    iget-object v8, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v8, v8, Lc8/Rv;->mPrefetchRegistry:Lc8/Mt;

    invoke-virtual {v8, v2}, Lc8/Mt;->lastPrefetchIncludedPosition(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 5784
    add-int/lit8 v0, v0, -0x1

    .line 5785
    goto :goto_1

    .end local v0    # "cacheIndex":I
    .end local v1    # "cached":Z
    .end local v2    # "cachedPos":I
    .end local v3    # "cachedViewSize":I
    .end local v4    # "forceRecycle":Z
    .end local v5    # "recycled":Z
    .end local v6    # "targetCacheIndex":I
    :cond_7
    move v4, v8

    .line 5753
    goto :goto_0

    .line 5786
    .restart local v0    # "cacheIndex":I
    .restart local v1    # "cached":Z
    .restart local v3    # "cachedViewSize":I
    .restart local v4    # "forceRecycle":Z
    .restart local v5    # "recycled":Z
    .restart local v6    # "targetCacheIndex":I
    :cond_8
    add-int/lit8 v6, v0, 0x1

    .line 5788
    .end local v0    # "cacheIndex":I
    :cond_9
    iget-object v8, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5789
    const/4 v1, 0x1

    .line 5791
    .end local v3    # "cachedViewSize":I
    .end local v6    # "targetCacheIndex":I
    :cond_a
    if-nez v1, :cond_b

    .line 5792
    invoke-virtual {p0, p1, v9}, Lc8/Fv;->addViewHolderToRecycledViewPool(Lc8/Qv;Z)V

    .line 5793
    const/4 v5, 0x1

    .line 5809
    :cond_b
    iget-object v8, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v8, v8, Lc8/Rv;->mViewInfoStore:Lc8/vx;

    invoke-virtual {v8, p1}, Lc8/vx;->removeViewHolder(Lc8/Qv;)V

    .line 5810
    if-nez v1, :cond_c

    if-nez v5, :cond_c

    if-eqz v7, :cond_c

    .line 5811
    const/4 v8, 0x0

    iput-object v8, p1, Lc8/Qv;->mOwnerRecyclerView:Lc8/Rv;

    .line 5813
    :cond_c
    return-void
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5689
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Fv;->recycleViewHolderInternal(Lc8/Qv;)V

    .line 5690
    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5856
    invoke-static {p1}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v0

    .line 5857
    .local v0, "holder":Lc8/Qv;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lc8/Qv;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5858
    invoke-virtual {v0}, Lc8/Qv;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-virtual {v1, v0}, Lc8/Rv;->canReuseUpdatedViewHolder(Lc8/Qv;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5859
    :cond_0
    invoke-virtual {v0}, Lc8/Qv;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lc8/Qv;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v1, v1, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v1}, Lc8/iv;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5860
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5864
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lc8/Qv;->setScrapContainer(Lc8/Fv;Z)V

    .line 5865
    iget-object v1, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5873
    :goto_0
    return-void

    .line 5867
    :cond_2
    iget-object v1, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 5868
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    .line 5870
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lc8/Qv;->setScrapContainer(Lc8/Fv;Z)V

    .line 5871
    iget-object v1, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method setAdapterPositionsAsUnknown()V
    .locals 4

    .prologue
    .line 6182
    iget-object v3, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6183
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6184
    iget-object v3, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qv;

    .line 6185
    .local v1, "holder":Lc8/Qv;
    if-eqz v1, :cond_0

    .line 6186
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lc8/Qv;->addFlags(I)V

    .line 6183
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6189
    .end local v1    # "holder":Lc8/Qv;
    :cond_1
    return-void
.end method

.method setRecycledViewPool(Lc8/Ev;)V
    .locals 2
    .param p1, "pool"    # Lc8/Ev;

    .prologue
    .line 6146
    iget-object v0, p0, Lc8/Fv;->mRecyclerPool:Lc8/Ev;

    if-eqz v0, :cond_0

    .line 6147
    iget-object v0, p0, Lc8/Fv;->mRecyclerPool:Lc8/Ev;

    invoke-virtual {v0}, Lc8/Ev;->detach()V

    .line 6149
    :cond_0
    iput-object p1, p0, Lc8/Fv;->mRecyclerPool:Lc8/Ev;

    .line 6150
    if-eqz p1, :cond_1

    .line 6151
    iget-object v0, p0, Lc8/Fv;->mRecyclerPool:Lc8/Ev;

    iget-object v1, p0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-virtual {v1}, Lc8/Rv;->getAdapter()Lc8/iv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Ev;->attach(Lc8/iv;)V

    .line 6153
    :cond_1
    return-void
.end method

.method setViewCacheExtension(Lc8/Ov;)V
    .locals 0
    .param p1, "extension"    # Lc8/Ov;

    .prologue
    .line 6142
    iput-object p1, p0, Lc8/Fv;->mViewCacheExtension:Lc8/Ov;

    .line 6143
    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 0
    .param p1, "viewCount"    # I

    .prologue
    .line 5254
    iput p1, p0, Lc8/Fv;->mRequestedCacheMax:I

    .line 5255
    invoke-virtual {p0}, Lc8/Fv;->updateViewCacheSize()V

    .line 5256
    return-void
.end method

.method tryGetViewHolderForPositionByDeadline(IZJ)Lc8/Qv;
    .locals 23
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z
    .param p3, "deadlineNs"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 5464
    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v2}, Lc8/Nv;->getItemCount()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_1

    .line 5465
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid item position "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "). Item count:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v9, v9, Lc8/Rv;->mState:Lc8/Nv;

    .line 5466
    invoke-virtual {v9}, Lc8/Nv;->getItemCount()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5468
    :cond_1
    const/16 v16, 0x0

    .line 5469
    .local v16, "fromScrapOrHiddenOrCache":Z
    const/4 v7, 0x0

    .line 5471
    .local v7, "holder":Lc8/Qv;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v2}, Lc8/Nv;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5472
    invoke-virtual/range {p0 .. p1}, Lc8/Fv;->getChangedScrapViewForPosition(I)Lc8/Qv;

    move-result-object v7

    .line 5473
    if-eqz v7, :cond_7

    const/16 v16, 0x1

    .line 5476
    :cond_2
    :goto_0
    if-nez v7, :cond_5

    .line 5477
    invoke-virtual/range {p0 .. p2}, Lc8/Fv;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Lc8/Qv;

    move-result-object v7

    .line 5478
    if-eqz v7, :cond_5

    .line 5479
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lc8/Fv;->validateViewHolderForOffsetPosition(Lc8/Qv;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5481
    if-nez p2, :cond_4

    .line 5484
    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Lc8/Qv;->addFlags(I)V

    .line 5485
    invoke-virtual {v7}, Lc8/Qv;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5486
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v6, v7, Lc8/Qv;->itemView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Lc8/Rv;->removeDetachedView(Landroid/view/View;Z)V

    .line 5487
    invoke-virtual {v7}, Lc8/Qv;->unScrap()V

    .line 5491
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lc8/Fv;->recycleViewHolderInternal(Lc8/Qv;)V

    .line 5493
    :cond_4
    const/4 v7, 0x0

    .line 5499
    :cond_5
    :goto_2
    if-nez v7, :cond_11

    .line 5500
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lc8/ms;->findPositionOffset(I)I

    move-result v8

    .line 5501
    .local v8, "offsetPosition":I
    if-ltz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v2}, Lc8/iv;->getItemCount()I

    move-result v2

    if-lt v8, v2, :cond_a

    .line 5502
    :cond_6
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Inconsistency detected. Invalid item position "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "(offset:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ")."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "state:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v9, v9, Lc8/Rv;->mState:Lc8/Nv;

    .line 5504
    invoke-virtual {v9}, Lc8/Nv;->getItemCount()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5473
    .end local v8    # "offsetPosition":I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 5488
    :cond_8
    invoke-virtual {v7}, Lc8/Qv;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5489
    invoke-virtual {v7}, Lc8/Qv;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 5495
    :cond_9
    const/16 v16, 0x1

    goto :goto_2

    .line 5507
    .restart local v8    # "offsetPosition":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v2, v8}, Lc8/iv;->getItemViewType(I)I

    move-result v3

    .line 5509
    .local v3, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v2}, Lc8/iv;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5510
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v2, v8}, Lc8/iv;->getItemId(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v10, v11, v3, v1}, Lc8/Fv;->getScrapOrCachedViewForId(JIZ)Lc8/Qv;

    move-result-object v7

    .line 5512
    if-eqz v7, :cond_b

    .line 5514
    iput v8, v7, Lc8/Qv;->mPosition:I

    .line 5515
    const/16 v16, 0x1

    .line 5518
    :cond_b
    if-nez v7, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->mViewCacheExtension:Lc8/Ov;

    if-eqz v2, :cond_d

    .line 5521
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->mViewCacheExtension:Lc8/Ov;

    .line 5522
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3}, Lc8/Ov;->getViewForPositionAndType(Lc8/Fv;II)Landroid/view/View;

    move-result-object v22

    .line 5523
    .local v22, "view":Landroid/view/View;
    if-eqz v22, :cond_d

    .line 5524
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lc8/Rv;->getChildViewHolder(Landroid/view/View;)Lc8/Qv;

    move-result-object v7

    .line 5525
    if-nez v7, :cond_c

    .line 5526
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5528
    :cond_c
    invoke-virtual {v7}, Lc8/Qv;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5529
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5535
    .end local v22    # "view":Landroid/view/View;
    :cond_d
    if-nez v7, :cond_e

    .line 5540
    invoke-virtual/range {p0 .. p0}, Lc8/Fv;->getRecycledViewPool()Lc8/Ev;

    move-result-object v2

    invoke-virtual {v2, v3}, Lc8/Ev;->getRecycledView(I)Lc8/Qv;

    move-result-object v7

    .line 5541
    if-eqz v7, :cond_e

    .line 5542
    invoke-virtual {v7}, Lc8/Qv;->resetInternal()V

    .line 5543
    sget-boolean v2, Lc8/Rv;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v2, :cond_e

    .line 5544
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lc8/Fv;->invalidateDisplayListInt(Lc8/Qv;)V

    :cond_e
    move-object/from16 v17, v7

    .line 5548
    .end local v7    # "holder":Lc8/Qv;
    .local v17, "holder":Lc8/Qv;
    if-nez v17, :cond_19

    .line 5549
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-virtual {v2}, Lc8/Rv;->getNanoTime()J

    move-result-wide v4

    .line 5550
    .local v4, "start":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v2, p3, v10

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->mRecyclerPool:Lc8/Ev;

    move-wide/from16 v6, p3

    .line 5551
    invoke-virtual/range {v2 .. v7}, Lc8/Ev;->willCreateInTime(IJJ)Z

    move-result v2

    if-nez v2, :cond_f

    .line 5553
    const/4 v7, 0x0

    move-object v2, v7

    move-object/from16 v7, v17

    .line 5614
    .end local v3    # "type":I
    .end local v4    # "start":J
    .end local v8    # "offsetPosition":I
    .end local v17    # "holder":Lc8/Qv;
    .restart local v7    # "holder":Lc8/Qv;
    :goto_3
    return-object v2

    .line 5555
    .end local v7    # "holder":Lc8/Qv;
    .restart local v3    # "type":I
    .restart local v4    # "start":J
    .restart local v8    # "offsetPosition":I
    .restart local v17    # "holder":Lc8/Qv;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mAdapter:Lc8/iv;

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-virtual {v2, v6, v3}, Lc8/iv;->createViewHolder(Landroid/view/ViewGroup;I)Lc8/Qv;

    move-result-object v7

    .line 5556
    .end local v17    # "holder":Lc8/Qv;
    .restart local v7    # "holder":Lc8/Qv;
    invoke-static {}, Lc8/Rv;->access$600()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5558
    iget-object v2, v7, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-static {v2}, Lc8/Rv;->findNestedRecyclerView(Landroid/view/View;)Lc8/Rv;

    move-result-object v19

    .line 5559
    .local v19, "innerView":Lc8/Rv;
    if-eqz v19, :cond_10

    .line 5560
    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v7, Lc8/Qv;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5564
    .end local v19    # "innerView":Lc8/Rv;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-virtual {v2}, Lc8/Rv;->getNanoTime()J

    move-result-wide v14

    .line 5565
    .local v14, "end":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->mRecyclerPool:Lc8/Ev;

    sub-long v10, v14, v4

    invoke-virtual {v2, v3, v10, v11}, Lc8/Ev;->factorInCreateTime(IJ)V

    .line 5575
    .end local v3    # "type":I
    .end local v4    # "start":J
    .end local v8    # "offsetPosition":I
    .end local v14    # "end":J
    :cond_11
    :goto_4
    if-eqz v16, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v2}, Lc8/Nv;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, 0x2000

    .line 5576
    invoke-virtual {v7, v2}, Lc8/Qv;->hasAnyOfTheFlags(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5577
    const/4 v2, 0x0

    const/16 v6, 0x2000

    invoke-virtual {v7, v2, v6}, Lc8/Qv;->setFlags(II)V

    .line 5578
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mState:Lc8/Nv;

    iget-boolean v2, v2, Lc8/Nv;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_12

    .line 5580
    invoke-static {v7}, Lc8/qv;->buildAdapterChangeFlagsForAnimations(Lc8/Qv;)I

    move-result v13

    .line 5581
    .local v13, "changeFlags":I
    or-int/lit16 v13, v13, 0x1000

    .line 5582
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mItemAnimator:Lc8/qv;

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v6, v6, Lc8/Rv;->mState:Lc8/Nv;

    .line 5583
    invoke-virtual {v7}, Lc8/Qv;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v9

    .line 5582
    invoke-virtual {v2, v6, v7, v13, v9}, Lc8/qv;->recordPreLayoutInformation(Lc8/Nv;Lc8/Qv;ILjava/util/List;)Lc8/pv;

    move-result-object v18

    .line 5584
    .local v18, "info":Lc8/pv;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    move-object/from16 v0, v18

    invoke-virtual {v2, v7, v0}, Lc8/Rv;->recordAnimationInfoIfBouncedHiddenView(Lc8/Qv;Lc8/pv;)V

    .line 5588
    .end local v13    # "changeFlags":I
    .end local v18    # "info":Lc8/pv;
    :cond_12
    const/4 v12, 0x0

    .line 5589
    .local v12, "bound":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v2}, Lc8/Nv;->isPreLayout()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v7}, Lc8/Qv;->isBound()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5591
    move/from16 v0, p1

    iput v0, v7, Lc8/Qv;->mPreLayoutPosition:I

    .line 5601
    :cond_13
    :goto_5
    iget-object v2, v7, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 5603
    .local v20, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v20, :cond_16

    .line 5604
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    invoke-virtual {v2}, Lc8/Rv;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lc8/yv;

    .line 5605
    .local v21, "rvLayoutParams":Lc8/yv;
    iget-object v2, v7, Lc8/Qv;->itemView:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5612
    :goto_6
    move-object/from16 v0, v21

    iput-object v7, v0, Lc8/yv;->mViewHolder:Lc8/Qv;

    .line 5613
    if-eqz v16, :cond_18

    if-eqz v12, :cond_18

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, v21

    iput-boolean v2, v0, Lc8/yv;->mPendingInvalidate:Z

    move-object v2, v7

    .line 5614
    goto/16 :goto_3

    .line 5592
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "rvLayoutParams":Lc8/yv;
    :cond_14
    invoke-virtual {v7}, Lc8/Qv;->isBound()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v7}, Lc8/Qv;->needsUpdate()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v7}, Lc8/Qv;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5597
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mAdapterHelper:Lc8/ms;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lc8/ms;->findPositionOffset(I)I

    move-result v8

    .restart local v8    # "offsetPosition":I
    move-object/from16 v6, p0

    move/from16 v9, p1

    move-wide/from16 v10, p3

    .line 5598
    invoke-direct/range {v6 .. v11}, Lc8/Fv;->tryBindViewHolderByDeadline(Lc8/Qv;IIJ)Z

    move-result v12

    goto :goto_5

    .line 5606
    .end local v8    # "offsetPosition":I
    .restart local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lc8/Rv;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 5607
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fv;->this$0:Lc8/Rv;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lc8/Rv;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lc8/yv;

    .line 5608
    .restart local v21    # "rvLayoutParams":Lc8/yv;
    iget-object v2, v7, Lc8/Qv;->itemView:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .end local v21    # "rvLayoutParams":Lc8/yv;
    :cond_17
    move-object/from16 v21, v20

    .line 5610
    check-cast v21, Lc8/yv;

    .restart local v21    # "rvLayoutParams":Lc8/yv;
    goto :goto_6

    .line 5613
    :cond_18
    const/4 v2, 0x0

    goto :goto_7

    .end local v7    # "holder":Lc8/Qv;
    .end local v12    # "bound":Z
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "rvLayoutParams":Lc8/yv;
    .restart local v3    # "type":I
    .restart local v8    # "offsetPosition":I
    .restart local v17    # "holder":Lc8/Qv;
    :cond_19
    move-object/from16 v7, v17

    .end local v17    # "holder":Lc8/Qv;
    .restart local v7    # "holder":Lc8/Qv;
    goto/16 :goto_4
.end method

.method unscrapView(Lc8/Qv;)V
    .locals 1
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 5882
    invoke-static {p1}, Lc8/Qv;->access$900(Lc8/Qv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5883
    iget-object v0, p0, Lc8/Fv;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5887
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc8/Qv;->access$802(Lc8/Qv;Lc8/Fv;)Lc8/Fv;

    .line 5888
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc8/Qv;->access$902(Lc8/Qv;Z)Z

    .line 5889
    invoke-virtual {p1}, Lc8/Qv;->clearReturnedFromScrapFlag()V

    .line 5890
    return-void

    .line 5885
    :cond_0
    iget-object v0, p0, Lc8/Fv;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method updateViewCacheSize()V
    .locals 4

    .prologue
    .line 5259
    iget-object v2, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mLayout:Lc8/xv;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v2, v2, Lc8/Rv;->mLayout:Lc8/xv;

    iget v0, v2, Lc8/xv;->mPrefetchMaxCountObserved:I

    .line 5260
    .local v0, "extraCache":I
    :goto_0
    iget v2, p0, Lc8/Fv;->mRequestedCacheMax:I

    add-int/2addr v2, v0

    iput v2, p0, Lc8/Fv;->mViewCacheMax:I

    .line 5263
    iget-object v2, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 5264
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lc8/Fv;->mViewCacheMax:I

    if-le v2, v3, :cond_1

    .line 5265
    invoke-virtual {p0, v1}, Lc8/Fv;->recycleCachedViewAt(I)V

    .line 5264
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 5259
    .end local v0    # "extraCache":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5267
    .restart local v0    # "extraCache":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method validateViewHolderForOffsetPosition(Lc8/Qv;)Z
    .locals 8
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5289
    invoke-virtual {p1}, Lc8/Qv;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5294
    iget-object v1, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v1, v1, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v1}, Lc8/Nv;->isPreLayout()Z

    move-result v1

    .line 5310
    :cond_0
    :goto_0
    return v1

    .line 5296
    :cond_1
    iget v3, p1, Lc8/Qv;->mPosition:I

    if-ltz v3, :cond_2

    iget v3, p1, Lc8/Qv;->mPosition:I

    iget-object v4, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v4, v4, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v4}, Lc8/iv;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 5297
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5300
    :cond_3
    iget-object v3, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v3, v3, Lc8/Rv;->mState:Lc8/Nv;

    invoke-virtual {v3}, Lc8/Nv;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_4

    .line 5302
    iget-object v3, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v3, v3, Lc8/Rv;->mAdapter:Lc8/iv;

    iget v4, p1, Lc8/Qv;->mPosition:I

    invoke-virtual {v3, v4}, Lc8/iv;->getItemViewType(I)I

    move-result v0

    .line 5303
    .local v0, "type":I
    invoke-virtual {p1}, Lc8/Qv;->getItemViewType()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 5307
    .end local v0    # "type":I
    :cond_4
    iget-object v3, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v3, v3, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v3}, Lc8/iv;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5308
    invoke-virtual {p1}, Lc8/Qv;->getItemId()J

    move-result-wide v4

    iget-object v3, p0, Lc8/Fv;->this$0:Lc8/Rv;

    iget-object v3, v3, Lc8/Rv;->mAdapter:Lc8/iv;

    iget v6, p1, Lc8/Qv;->mPosition:I

    invoke-virtual {v3, v6}, Lc8/iv;->getItemId(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v2

    .line 5310
    goto :goto_0
.end method

.method viewRangeUpdate(II)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 6163
    add-int v4, p1, p2

    .line 6164
    .local v4, "positionEnd":I
    iget-object v5, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6165
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 6166
    iget-object v5, p0, Lc8/Fv;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Qv;

    .line 6167
    .local v1, "holder":Lc8/Qv;
    if-eqz v1, :cond_0

    .line 6171
    iget v3, v1, Lc8/Qv;->mPosition:I

    .line 6172
    .local v3, "pos":I
    if-lt v3, p1, :cond_0

    if-ge v3, v4, :cond_0

    .line 6173
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lc8/Qv;->addFlags(I)V

    .line 6174
    invoke-virtual {p0, v2}, Lc8/Fv;->recycleCachedViewAt(I)V

    .line 6165
    .end local v3    # "pos":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6179
    .end local v1    # "holder":Lc8/Qv;
    :cond_1
    return-void
.end method
