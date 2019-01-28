.class public Lc8/iPf;
.super Lc8/iv;
.source "TRecyclerView.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qPf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewAdapter"
.end annotation


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Lc8/iv;

.field mFooterViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private final mRecyclerView:Lc8/qPf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/iPf;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lc8/iv;Lc8/qPf;)V
    .locals 1
    .param p3, "adapter"    # Lc8/iv;
    .param p4, "recyclerView"    # Lc8/qPf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lc8/iv;",
            "Lc8/qPf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "headerViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p2, "footerViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0}, Lc8/iv;-><init>()V

    .line 519
    iput-object p3, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    .line 520
    iput-object p4, p0, Lc8/iPf;->mRecyclerView:Lc8/qPf;

    .line 521
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lc8/iPf;->mIsFilterable:Z

    .line 523
    if-nez p1, :cond_1

    .line 525
    sget-object v0, Lc8/iPf;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lc8/iPf;->mHeaderViews:Ljava/util/ArrayList;

    .line 532
    :goto_0
    if-nez p2, :cond_2

    .line 534
    sget-object v0, Lc8/iPf;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lc8/iPf;->mFooterViews:Ljava/util/ArrayList;

    .line 541
    :goto_1
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v0}, Lc8/iv;->hasStableIds()Z

    move-result v0

    invoke-super {p0, v0}, Lc8/iv;->setHasStableIds(Z)V

    .line 545
    :cond_0
    return-void

    .line 529
    :cond_1
    iput-object p1, p0, Lc8/iPf;->mHeaderViews:Ljava/util/ArrayList;

    goto :goto_0

    .line 538
    :cond_2
    iput-object p2, p0, Lc8/iPf;->mFooterViews:Ljava/util/ArrayList;

    goto :goto_1
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lc8/iPf;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 758
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lc8/iPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lc8/iPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lc8/iPf;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lc8/iPf;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v1}, Lc8/iv;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 635
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lc8/iPf;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lc8/iPf;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 596
    invoke-virtual {p0}, Lc8/iPf;->getHeadersCount()I

    move-result v3

    .line 597
    .local v3, "numHeaders":I
    invoke-virtual {p0}, Lc8/iPf;->getFootersCount()I

    move-result v2

    .line 598
    .local v2, "numFooters":I
    if-ge p1, v3, :cond_0

    .line 600
    const-wide/high16 v4, 0x1000000000000000L

    int-to-long v6, p1

    add-long/2addr v4, v6

    .line 623
    :goto_0
    return-wide v4

    .line 602
    :cond_0
    invoke-virtual {p0}, Lc8/iPf;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-lt p1, v4, :cond_2

    .line 604
    sub-int v1, p1, v3

    .line 605
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 606
    .local v0, "adapterCount":I
    iget-object v4, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v4, :cond_1

    .line 608
    iget-object v4, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v4}, Lc8/iv;->getItemCount()I

    move-result v0

    .line 610
    :cond_1
    const-wide/high16 v4, 0x2000000000000000L

    int-to-long v6, v1

    add-long/2addr v4, v6

    int-to-long v6, v0

    sub-long/2addr v4, v6

    goto :goto_0

    .line 613
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    iget-object v4, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v4, :cond_3

    if-lt p1, v3, :cond_3

    .line 615
    sub-int v1, p1, v3

    .line 616
    .restart local v1    # "adjPosition":I
    iget-object v4, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v4}, Lc8/iv;->getItemCount()I

    move-result v0

    .line 617
    .restart local v0    # "adapterCount":I
    if-ge v1, v0, :cond_3

    .line 619
    iget-object v4, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v4, v1}, Lc8/iv;->getItemId(I)J

    move-result-wide v4

    goto :goto_0

    .line 623
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_3
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 718
    invoke-virtual {p0}, Lc8/iPf;->getHeadersCount()I

    move-result v2

    .line 719
    .local v2, "numHeaders":I
    iget-object v3, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 721
    sub-int v1, p1, v2

    .line 722
    .local v1, "adjPosition":I
    iget-object v3, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v3}, Lc8/iv;->getItemCount()I

    move-result v0

    .line 723
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 725
    iget-object v3, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v3, v1}, Lc8/iv;->getItemViewType(I)I

    move-result v3

    .line 729
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return v3

    :cond_0
    const/high16 v3, -0x80000000

    goto :goto_0
.end method

.method public getWrappedAdapter()Lc8/iv;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v0}, Lc8/iv;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedHeaderOrFooter(Lc8/Qv;)V
    .locals 0
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 808
    return-void
.end method

.method public onAttachedToRecyclerView(Lc8/Rv;)V
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;

    .prologue
    .line 828
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->onAttachedToRecyclerView(Lc8/Rv;)V

    .line 832
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Lc8/Qv;I)V
    .locals 11
    .param p1, "holder"    # Lc8/Qv;
    .param p2, "position"    # I

    .prologue
    .line 658
    invoke-virtual {p0}, Lc8/iPf;->getHeadersCount()I

    move-result v7

    .line 659
    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lc8/iPf;->getFootersCount()I

    move-result v6

    .line 660
    .local v6, "numFooters":I
    if-lt p2, v7, :cond_0

    invoke-virtual {p0}, Lc8/iPf;->getItemCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p2, v9, :cond_a

    :cond_0
    move-object v4, p1

    .line 662
    check-cast v4, Lc8/jPf;

    .line 663
    .local v4, "hvd":Lc8/jPf;
    iget-object v9, v4, Lc8/jPf;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 664
    if-ge p2, v7, :cond_4

    .line 666
    iget-object v9, p0, Lc8/iPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 667
    .local v3, "header":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 669
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 671
    :cond_1
    iget-object v9, v4, Lc8/jPf;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 689
    .end local v3    # "header":Landroid/view/View;
    :goto_0
    iget-object v9, v4, Lc8/jPf;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 690
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_2

    .line 691
    iget-object v9, p0, Lc8/iPf;->mRecyclerView:Lc8/qPf;

    invoke-virtual {v9}, Lc8/qPf;->getLayoutManager()Lc8/xv;

    move-result-object v9

    invoke-virtual {v9}, Lc8/xv;->generateDefaultLayoutParams()Lc8/yv;

    move-result-object v5

    .line 692
    iget-object v9, v4, Lc8/jPf;->itemView:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    :cond_2
    instance-of v9, v5, Lc8/Lw;

    if-eqz v9, :cond_7

    .line 696
    check-cast v5, Lc8/Lw;

    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lc8/Lw;->setFullSpan(Z)V

    .line 713
    .end local v4    # "hvd":Lc8/jPf;
    :cond_3
    :goto_1
    return-void

    .line 675
    .restart local v4    # "hvd":Lc8/jPf;
    :cond_4
    sub-int v1, p2, v7

    .line 676
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 677
    .local v0, "adapterCount":I
    iget-object v9, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v9, :cond_5

    .line 679
    iget-object v9, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v9}, Lc8/iv;->getItemCount()I

    move-result v0

    .line 681
    :cond_5
    iget-object v9, p0, Lc8/iPf;->mFooterViews:Ljava/util/ArrayList;

    sub-int v10, v1, v0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 682
    .local v2, "footer":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 684
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 686
    :cond_6
    iget-object v9, v4, Lc8/jPf;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 698
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    .end local v2    # "footer":Landroid/view/View;
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    instance-of v9, v5, Lc8/yv;

    if-eqz v9, :cond_3

    .line 700
    iget-object v9, p0, Lc8/iPf;->mRecyclerView:Lc8/qPf;

    invoke-virtual {v9}, Lc8/qPf;->getOrientation()I

    move-result v8

    .line 701
    .local v8, "orientation":I
    const/4 v9, 0x1

    if-ne v9, v8, :cond_8

    const/4 v9, -0x1

    :goto_2
    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 702
    const/4 v9, 0x1

    if-ne v9, v8, :cond_9

    const/4 v9, -0x2

    :goto_3
    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 701
    :cond_8
    const/4 v9, -0x2

    goto :goto_2

    .line 702
    :cond_9
    const/4 v9, -0x1

    goto :goto_3

    .line 707
    .end local v4    # "hvd":Lc8/jPf;
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "orientation":I
    :cond_a
    sub-int v1, p2, v7

    .line 708
    .restart local v1    # "adjPosition":I
    iget-object v9, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v9, :cond_3

    .line 710
    iget-object v9, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v9, p1, v1}, Lc8/iv;->onBindViewHolder(Lc8/Qv;I)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/Qv;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 641
    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_0

    .line 643
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1, p2}, Lc8/iv;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/Qv;

    move-result-object v0

    .line 653
    :goto_0
    return-object v0

    .line 650
    :cond_0
    new-instance v0, Lc8/jPf;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lc8/iPf;->mRecyclerView:Lc8/qPf;

    invoke-virtual {v2}, Lc8/qPf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lc8/jPf;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 653
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromRecyclerView(Lc8/Rv;)V
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;

    .prologue
    .line 837
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->onDetachedFromRecyclerView(Lc8/Rv;)V

    .line 841
    :cond_0
    return-void
.end method

.method public onDetachedHeaderOrFooter(Lc8/Qv;)V
    .locals 0
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 824
    return-void
.end method

.method public onFailedHeaderOrFooter(Lc8/Qv;)Z
    .locals 1
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public onFailedToRecycleView(Lc8/Qv;)Z
    .locals 2
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 780
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 782
    invoke-virtual {p1}, Lc8/Qv;->getItemViewType()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 783
    invoke-virtual {p0, p1}, Lc8/iPf;->onFailedHeaderOrFooter(Lc8/Qv;)Z

    move-result v0

    .line 788
    :goto_0
    return v0

    .line 785
    :cond_0
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->onFailedToRecycleView(Lc8/Qv;)Z

    move-result v0

    goto :goto_0

    .line 788
    :cond_1
    invoke-super {p0, p1}, Lc8/iv;->onFailedToRecycleView(Lc8/Qv;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRecycledHeaderOrFooter(Lc8/Qv;)V
    .locals 0
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 775
    return-void
.end method

.method public onViewAttachedToWindow(Lc8/Qv;)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 797
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 799
    invoke-virtual {p1}, Lc8/Qv;->getItemViewType()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 800
    invoke-virtual {p0, p1}, Lc8/iPf;->onAttachedHeaderOrFooter(Lc8/Qv;)V

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->onViewAttachedToWindow(Lc8/Qv;)V

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Lc8/Qv;)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 813
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 815
    invoke-virtual {p1}, Lc8/Qv;->getItemViewType()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 816
    invoke-virtual {p0, p1}, Lc8/iPf;->onDetachedHeaderOrFooter(Lc8/Qv;)V

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->onViewDetachedFromWindow(Lc8/Qv;)V

    goto :goto_0
.end method

.method public onViewRecycled(Lc8/Qv;)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 764
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 766
    invoke-virtual {p1}, Lc8/Qv;->getItemViewType()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 767
    invoke-virtual {p0, p1}, Lc8/iPf;->onRecycledHeaderOrFooter(Lc8/Qv;)V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->onViewRecycled(Lc8/Qv;)V

    goto :goto_0
.end method

.method public registerAdapterDataObserver(Lc8/kv;)V
    .locals 1
    .param p1, "observer"    # Lc8/kv;

    .prologue
    .line 735
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->registerAdapterDataObserver(Lc8/kv;)V

    .line 739
    :cond_0
    invoke-super {p0, p1}, Lc8/iv;->registerAdapterDataObserver(Lc8/kv;)V

    .line 740
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 580
    iget-object v3, p0, Lc8/iPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 581
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 583
    iget-object v3, p0, Lc8/iPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 584
    .local v2, "view":Landroid/view/View;
    if-ne v2, p1, :cond_0

    .line 586
    iget-object v3, p0, Lc8/iPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 587
    const/4 v3, 0x1

    .line 590
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return v3

    .line 581
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 564
    iget-object v3, p0, Lc8/iPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 565
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 567
    iget-object v3, p0, Lc8/iPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 568
    .local v2, "view":Landroid/view/View;
    if-ne v2, p1, :cond_0

    .line 570
    iget-object v3, p0, Lc8/iPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 571
    const/4 v3, 0x1

    .line 575
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return v3

    .line 565
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public unregisterAdapterDataObserver(Lc8/kv;)V
    .locals 1
    .param p1, "observer"    # Lc8/kv;

    .prologue
    .line 745
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lc8/iPf;->mAdapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->unregisterAdapterDataObserver(Lc8/kv;)V

    .line 749
    :cond_0
    invoke-super {p0, p1}, Lc8/iv;->unregisterAdapterDataObserver(Lc8/kv;)V

    .line 750
    return-void
.end method
