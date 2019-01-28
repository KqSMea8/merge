.class public Lc8/Cd;
.super Lc8/qd;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/qd",
        "<",
        "Lc8/Gd;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DEFAULT:Z = true


# instance fields
.field private mAutoHideEnabled:Z

.field private mInternalAutoHideListener:Lc8/Dd;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 558
    invoke-direct {p0}, Lc8/qd;-><init>()V

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Cd;->mAutoHideEnabled:Z

    .line 560
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 563
    invoke-direct {p0, p1, p2}, Lc8/qd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 564
    sget-object v1, Lcom/youku/phone/R$styleable;->FloatingActionButton_Behavior_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 566
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/youku/phone/R$styleable;->FloatingActionButton_Behavior_Layout_behavior_autoHide:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lc8/Cd;->mAutoHideEnabled:Z

    .line 569
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 570
    return-void
.end method

.method private static isBottomSheet(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 618
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 619
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lc8/ud;

    if-eqz v1, :cond_0

    .line 620
    check-cast v0, Lc8/ud;

    .line 621
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Lc8/ud;->getBehavior()Lc8/qd;

    move-result-object v1

    instance-of v1, v1, Lc8/Zc;

    .line 623
    :goto_0
    return v1

    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private offsetIfNeeded(Lc8/yd;Lc8/Gd;)V
    .locals 7
    .param p1, "parent"    # Lc8/yd;
    .param p2, "fab"    # Lc8/Gd;

    .prologue
    .line 736
    iget-object v3, p2, Lc8/Gd;->mShadowPadding:Landroid/graphics/Rect;

    .line 738
    .local v3, "padding":Landroid/graphics/Rect;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    if-lez v4, :cond_3

    .line 740
    invoke-virtual {p2}, Lc8/Gd;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/ud;

    .line 742
    .local v0, "lp":Lc8/ud;
    const/4 v2, 0x0

    .local v2, "offsetTB":I
    const/4 v1, 0x0

    .line 744
    .local v1, "offsetLR":I
    invoke-virtual {p2}, Lc8/Gd;->getRight()I

    move-result v4

    invoke-virtual {p1}, Lc8/yd;->getWidth()I

    move-result v5

    iget v6, v0, Lc8/ud;->rightMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_4

    .line 746
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 751
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lc8/Gd;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Lc8/yd;->getHeight()I

    move-result v5

    iget v6, v0, Lc8/ud;->bottomMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_5

    .line 753
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 759
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 760
    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 762
    :cond_2
    if-eqz v1, :cond_3

    .line 763
    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 766
    .end local v0    # "lp":Lc8/ud;
    .end local v1    # "offsetLR":I
    .end local v2    # "offsetTB":I
    :cond_3
    return-void

    .line 747
    .restart local v0    # "lp":Lc8/ud;
    .restart local v1    # "offsetLR":I
    .restart local v2    # "offsetTB":I
    :cond_4
    invoke-virtual {p2}, Lc8/Gd;->getLeft()I

    move-result v4

    iget v5, v0, Lc8/ud;->leftMargin:I

    if-gt v4, v5, :cond_0

    .line 749
    iget v4, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v4

    goto :goto_0

    .line 754
    :cond_5
    invoke-virtual {p2}, Lc8/Gd;->getTop()I

    move-result v4

    iget v5, v0, Lc8/ud;->topMargin:I

    if-gt v4, v5, :cond_1

    .line 756
    iget v4, v3, Landroid/graphics/Rect;->top:I

    neg-int v2, v4

    goto :goto_1
.end method

.method private shouldUpdateVisibility(Landroid/view/View;Lc8/Gd;)Z
    .locals 4
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Lc8/Gd;

    .prologue
    const/4 v1, 0x0

    .line 632
    .line 633
    invoke-virtual {p2}, Lc8/Gd;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/ud;

    .line 634
    .local v0, "lp":Lc8/ud;
    iget-boolean v2, p0, Lc8/Cd;->mAutoHideEnabled:Z

    if-nez v2, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v1

    .line 638
    :cond_1
    invoke-virtual {v0}, Lc8/ud;->getAnchorId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 645
    invoke-virtual {p2}, Lc8/Gd;->getUserSetVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 650
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateFabVisibilityForAppBarLayout(Lc8/yd;Lc8/tc;Lc8/Gd;)Z
    .locals 4
    .param p1, "parent"    # Lc8/yd;
    .param p2, "appBarLayout"    # Lc8/tc;
    .param p3, "child"    # Lc8/Gd;

    .prologue
    const/4 v1, 0x0

    .line 655
    invoke-direct {p0, p2, p3}, Lc8/Cd;->shouldUpdateVisibility(Landroid/view/View;Lc8/Gd;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 674
    :goto_0
    return v1

    .line 659
    :cond_0
    iget-object v2, p0, Lc8/Cd;->mTmpRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 660
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lc8/Cd;->mTmpRect:Landroid/graphics/Rect;

    .line 664
    :cond_1
    iget-object v0, p0, Lc8/Cd;->mTmpRect:Landroid/graphics/Rect;

    .line 665
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-static {p1, p2, v0}, Lc8/nf;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 667
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Lc8/tc;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 669
    iget-object v2, p0, Lc8/Cd;->mInternalAutoHideListener:Lc8/Dd;

    invoke-virtual {p3, v2, v1}, Lc8/Gd;->hide(Lc8/Dd;Z)V

    .line 674
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 672
    :cond_2
    iget-object v2, p0, Lc8/Cd;->mInternalAutoHideListener:Lc8/Dd;

    invoke-virtual {p3, v2, v1}, Lc8/Gd;->show(Lc8/Dd;Z)V

    goto :goto_1
.end method

.method private updateFabVisibilityForBottomSheet(Landroid/view/View;Lc8/Gd;)Z
    .locals 5
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "child"    # Lc8/Gd;

    .prologue
    const/4 v1, 0x0

    .line 679
    invoke-direct {p0, p1, p2}, Lc8/Cd;->shouldUpdateVisibility(Landroid/view/View;Lc8/Gd;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 689
    :goto_0
    return v1

    .line 683
    :cond_0
    invoke-virtual {p2}, Lc8/Gd;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/ud;

    .line 684
    .local v0, "lp":Lc8/ud;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Lc8/Gd;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Lc8/ud;->topMargin:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 685
    iget-object v2, p0, Lc8/Cd;->mInternalAutoHideListener:Lc8/Dd;

    invoke-virtual {p2, v2, v1}, Lc8/Gd;->hide(Lc8/Dd;Z)V

    .line 689
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 687
    :cond_1
    iget-object v2, p0, Lc8/Cd;->mInternalAutoHideListener:Lc8/Dd;

    invoke-virtual {p2, v2, v1}, Lc8/Gd;->show(Lc8/Dd;Z)V

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic getInsetDodgeRect(Lc8/yd;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1    # Lc8/yd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 550
    check-cast p2, Lc8/Gd;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Cd;->getInsetDodgeRect(Lc8/yd;Lc8/Gd;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getInsetDodgeRect(Lc8/yd;Lc8/Gd;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "parent"    # Lc8/yd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "child"    # Lc8/Gd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 722
    iget-object v0, p2, Lc8/Gd;->mShadowPadding:Landroid/graphics/Rect;

    .line 723
    .local v0, "shadowPadding":Landroid/graphics/Rect;
    invoke-virtual {p2}, Lc8/Gd;->getLeft()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 724
    invoke-virtual {p2}, Lc8/Gd;->getTop()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 725
    invoke-virtual {p2}, Lc8/Gd;->getRight()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 726
    invoke-virtual {p2}, Lc8/Gd;->getBottom()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 723
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 727
    const/4 v1, 0x1

    return v1
.end method

.method public isAutoHideEnabled()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lc8/Cd;->mAutoHideEnabled:Z

    return v0
.end method

.method public onAttachedToLayoutParams(Lc8/ud;)V
    .locals 1
    .param p1, "lp"    # Lc8/ud;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 597
    iget v0, p1, Lc8/ud;->dodgeInsetEdges:I

    if-nez v0, :cond_0

    .line 600
    const/16 v0, 0x50

    iput v0, p1, Lc8/ud;->dodgeInsetEdges:I

    .line 602
    :cond_0
    return-void
.end method

.method public bridge synthetic onDependentViewChanged(Lc8/yd;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 550
    check-cast p2, Lc8/Gd;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Cd;->onDependentViewChanged(Lc8/yd;Lc8/Gd;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewChanged(Lc8/yd;Lc8/Gd;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lc8/yd;
    .param p2, "child"    # Lc8/Gd;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 607
    instance-of v0, p3, Lc8/tc;

    if-eqz v0, :cond_1

    .line 610
    check-cast p3, Lc8/tc;

    .end local p3    # "dependency":Landroid/view/View;
    invoke-direct {p0, p1, p3, p2}, Lc8/Cd;->updateFabVisibilityForAppBarLayout(Lc8/yd;Lc8/tc;Lc8/Gd;)Z

    .line 614
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 611
    .restart local p3    # "dependency":Landroid/view/View;
    :cond_1
    invoke-static {p3}, Lc8/Cd;->isBottomSheet(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-direct {p0, p3, p2}, Lc8/Cd;->updateFabVisibilityForBottomSheet(Landroid/view/View;Lc8/Gd;)Z

    goto :goto_0
.end method

.method public bridge synthetic onLayoutChild(Lc8/yd;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 550
    check-cast p2, Lc8/Gd;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Cd;->onLayoutChild(Lc8/yd;Lc8/Gd;I)Z

    move-result v0

    return v0
.end method

.method public onLayoutChild(Lc8/yd;Lc8/Gd;I)Z
    .locals 5
    .param p1, "parent"    # Lc8/yd;
    .param p2, "child"    # Lc8/Gd;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 696
    invoke-virtual {p1, p2}, Lc8/yd;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 697
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 698
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 699
    .local v2, "dependency":Landroid/view/View;
    instance-of v4, v2, Lc8/tc;

    if-eqz v4, :cond_1

    .line 700
    check-cast v2, Lc8/tc;

    .end local v2    # "dependency":Landroid/view/View;
    invoke-direct {p0, p1, v2, p2}, Lc8/Cd;->updateFabVisibilityForAppBarLayout(Lc8/yd;Lc8/tc;Lc8/Gd;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 711
    :cond_0
    invoke-virtual {p1, p2, p3}, Lc8/yd;->onLayoutChild(Landroid/view/View;I)V

    .line 713
    invoke-direct {p0, p1, p2}, Lc8/Cd;->offsetIfNeeded(Lc8/yd;Lc8/Gd;)V

    .line 714
    const/4 v4, 0x1

    return v4

    .line 704
    .restart local v2    # "dependency":Landroid/view/View;
    :cond_1
    invoke-static {v2}, Lc8/Cd;->isBottomSheet(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 705
    invoke-direct {p0, v2, p2}, Lc8/Cd;->updateFabVisibilityForBottomSheet(Landroid/view/View;Lc8/Gd;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 697
    .end local v2    # "dependency":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setAutoHideEnabled(Z)V
    .locals 0
    .param p1, "autoHide"    # Z

    .prologue
    .line 581
    iput-boolean p1, p0, Lc8/Cd;->mAutoHideEnabled:Z

    .line 582
    return-void
.end method

.method setInternalAutoHideListener(Lc8/Dd;)V
    .locals 0
    .param p1, "listener"    # Lc8/Dd;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 628
    iput-object p1, p0, Lc8/Cd;->mInternalAutoHideListener:Lc8/Dd;

    .line 629
    return-void
.end method
