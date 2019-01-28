.class public Lc8/ueo;
.super Lc8/iv;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/veo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrapAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/teo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/iv",
        "<",
        "Lc8/Qv;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lc8/iv;

.field private headerPosition:I

.field private mCurrentPosition:I

.field final synthetic this$0:Lc8/veo;


# direct methods
.method public constructor <init>(Lc8/veo;Lc8/iv;)V
    .locals 1
    .param p2, "adapter"    # Lc8/iv;

    .prologue
    .line 520
    iput-object p1, p0, Lc8/ueo;->this$0:Lc8/veo;

    invoke-direct {p0}, Lc8/iv;-><init>()V

    .line 518
    const/4 v0, 0x1

    iput v0, p0, Lc8/ueo;->headerPosition:I

    .line 521
    iput-object p2, p0, Lc8/ueo;->adapter:Lc8/iv;

    .line 522
    return-void
.end method


# virtual methods
.method public getDataCount()I
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lc8/ueo;->adapter:Lc8/iv;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lc8/ueo;->adapter:Lc8/iv;

    invoke-virtual {v0}, Lc8/iv;->getItemCount()I

    move-result v0

    .line 639
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lc8/ueo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$700(Lc8/veo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lc8/ueo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$800(Lc8/veo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 583
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lc8/ueo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$600(Lc8/veo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lc8/ueo;->adapter:Lc8/iv;

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lc8/ueo;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lc8/ueo;->getFootersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lc8/ueo;->adapter:Lc8/iv;

    invoke-virtual {v1}, Lc8/iv;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 626
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lc8/ueo;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lc8/ueo;->getFootersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 671
    iget-object v2, p0, Lc8/ueo;->adapter:Lc8/iv;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lc8/ueo;->getHeadersCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 672
    invoke-virtual {p0}, Lc8/ueo;->getHeadersCount()I

    move-result v2

    sub-int v1, p1, v2

    .line 673
    .local v1, "adjPosition":I
    iget-object v2, p0, Lc8/ueo;->adapter:Lc8/iv;

    invoke-virtual {v2}, Lc8/iv;->getItemCount()I

    move-result v0

    .line 674
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 675
    iget-object v2, p0, Lc8/ueo;->adapter:Lc8/iv;

    invoke-virtual {v2, v1}, Lc8/iv;->getItemId(I)J

    move-result-wide v2

    .line 678
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Lc8/ueo;->isRefreshHeader(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    const/4 v2, -0x5

    .line 666
    :goto_0
    return v2

    .line 649
    :cond_0
    invoke-virtual {p0, p1}, Lc8/ueo;->isHeader(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 650
    add-int/lit8 p1, p1, -0x1

    .line 651
    invoke-static {}, Lc8/veo;->access$900()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {p0, p1}, Lc8/ueo;->isFooter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 654
    const/4 v2, -0x3

    goto :goto_0

    .line 656
    :cond_2
    invoke-virtual {p0}, Lc8/ueo;->getHeadersCount()I

    move-result v2

    sub-int v1, p1, v2

    .line 658
    .local v1, "adjPosition":I
    iget-object v2, p0, Lc8/ueo;->adapter:Lc8/iv;

    if-eqz v2, :cond_3

    .line 661
    iget-object v2, p0, Lc8/ueo;->adapter:Lc8/iv;

    invoke-virtual {v2}, Lc8/iv;->getItemCount()I

    move-result v0

    .line 662
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_3

    .line 663
    iget-object v2, p0, Lc8/ueo;->adapter:Lc8/iv;

    invoke-virtual {v2, v1}, Lc8/iv;->getItemViewType(I)I

    move-result v2

    goto :goto_0

    .line 666
    .end local v0    # "adapterCount":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isContentHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 560
    if-lez p1, :cond_0

    iget-object v0, p0, Lc8/ueo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$600(Lc8/veo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFooter(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 564
    iget-object v1, p0, Lc8/ueo;->this$0:Lc8/veo;

    invoke-static {v1}, Lc8/veo;->access$700(Lc8/veo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {p0}, Lc8/ueo;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lc8/ueo;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lc8/ueo;->this$0:Lc8/veo;

    invoke-static {v2}, Lc8/veo;->access$800(Lc8/veo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 567
    :cond_0
    return v0
.end method

.method public isHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 556
    if-ltz p1, :cond_0

    iget-object v0, p0, Lc8/ueo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$600(Lc8/veo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRefreshHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 572
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Lc8/Rv;)V
    .locals 3
    .param p1, "recyclerView"    # Lc8/Rv;

    .prologue
    .line 526
    invoke-super {p0, p1}, Lc8/iv;->onAttachedToRecyclerView(Lc8/Rv;)V

    .line 527
    invoke-virtual {p1}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v1

    .line 528
    .local v1, "manager":Lc8/xv;
    instance-of v2, v1, Lc8/mu;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 529
    check-cast v0, Lc8/mu;

    .line 530
    .local v0, "gridManager":Lc8/mu;
    new-instance v2, Lc8/seo;

    invoke-direct {v2, p0, v0}, Lc8/seo;-><init>(Lc8/ueo;Lc8/mu;)V

    invoke-virtual {v0, v2}, Lc8/mu;->setSpanSizeLookup(Lc8/lu;)V

    .line 538
    .end local v0    # "gridManager":Lc8/mu;
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Lc8/Qv;I)V
    .locals 3
    .param p1, "holder"    # Lc8/Qv;
    .param p2, "position"    # I

    .prologue
    .line 607
    invoke-virtual {p0, p2}, Lc8/ueo;->isHeader(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-virtual {p0}, Lc8/ueo;->getHeadersCount()I

    move-result v2

    sub-int v1, p2, v2

    .line 612
    .local v1, "adjPosition":I
    iget-object v2, p0, Lc8/ueo;->adapter:Lc8/iv;

    if-eqz v2, :cond_0

    .line 613
    iget-object v2, p0, Lc8/ueo;->adapter:Lc8/iv;

    invoke-virtual {v2}, Lc8/iv;->getItemCount()I

    move-result v0

    .line 614
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 615
    iget-object v2, p0, Lc8/ueo;->adapter:Lc8/iv;

    invoke-virtual {v2, p1, v1}, Lc8/iv;->onBindViewHolder(Lc8/Qv;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/Qv;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v2, 0x0

    .line 589
    const/4 v0, -0x5

    if-ne p2, v0, :cond_0

    .line 590
    iget v0, p0, Lc8/ueo;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/ueo;->mCurrentPosition:I

    .line 591
    new-instance v1, Lc8/teo;

    iget-object v0, p0, Lc8/ueo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$600(Lc8/veo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {v1, p0, v0}, Lc8/teo;-><init>(Lc8/ueo;Landroid/view/View;)V

    move-object v0, v1

    .line 600
    :goto_0
    return-object v0

    .line 592
    :cond_0
    iget v0, p0, Lc8/ueo;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Lc8/ueo;->isContentHeader(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    invoke-static {}, Lc8/veo;->access$900()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lc8/ueo;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 594
    iget v0, p0, Lc8/ueo;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/ueo;->mCurrentPosition:I

    .line 595
    new-instance v1, Lc8/teo;

    iget-object v0, p0, Lc8/ueo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$600(Lc8/veo;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lc8/ueo;->headerPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc8/ueo;->headerPosition:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {v1, p0, v0}, Lc8/teo;-><init>(Lc8/ueo;Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0

    .line 597
    :cond_1
    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    .line 598
    new-instance v1, Lc8/teo;

    iget-object v0, p0, Lc8/ueo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$800(Lc8/veo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {v1, p0, v0}, Lc8/teo;-><init>(Lc8/ueo;Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0

    .line 600
    :cond_2
    iget-object v0, p0, Lc8/ueo;->adapter:Lc8/iv;

    invoke-virtual {v0, p1, p2}, Lc8/iv;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/Qv;

    move-result-object v0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Lc8/Qv;)V
    .locals 3
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 542
    invoke-super {p0, p1}, Lc8/iv;->onViewAttachedToWindow(Lc8/Qv;)V

    .line 543
    iget-object v2, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 544
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lc8/Lw;

    if-eqz v2, :cond_1

    .line 546
    invoke-virtual {p1}, Lc8/Qv;->getLayoutPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lc8/ueo;->isHeader(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lc8/Qv;->getLayoutPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lc8/ueo;->isFooter(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 547
    check-cast v1, Lc8/Lw;

    .line 548
    .local v1, "p":Lc8/Lw;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lc8/Lw;->setFullSpan(Z)V

    .line 550
    .end local v1    # "p":Lc8/Lw;
    :cond_1
    iget-object v2, p0, Lc8/ueo;->adapter:Lc8/iv;

    if-eqz v2, :cond_2

    .line 551
    iget-object v2, p0, Lc8/ueo;->adapter:Lc8/iv;

    invoke-virtual {v2, p1}, Lc8/iv;->onViewAttachedToWindow(Lc8/Qv;)V

    .line 553
    :cond_2
    return-void
.end method

.method public registerAdapterDataObserver(Lc8/kv;)V
    .locals 1
    .param p1, "observer"    # Lc8/kv;

    .prologue
    .line 690
    iget-object v0, p0, Lc8/ueo;->adapter:Lc8/iv;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lc8/ueo;->adapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->registerAdapterDataObserver(Lc8/kv;)V

    .line 693
    :cond_0
    return-void
.end method

.method public unregisterAdapterDataObserver(Lc8/kv;)V
    .locals 1
    .param p1, "observer"    # Lc8/kv;

    .prologue
    .line 683
    iget-object v0, p0, Lc8/ueo;->adapter:Lc8/iv;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lc8/ueo;->adapter:Lc8/iv;

    invoke-virtual {v0, p1}, Lc8/iv;->unregisterAdapterDataObserver(Lc8/kv;)V

    .line 686
    :cond_0
    return-void
.end method
