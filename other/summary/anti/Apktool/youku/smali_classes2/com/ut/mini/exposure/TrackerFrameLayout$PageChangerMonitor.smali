.class public Lcom/ut/mini/exposure/TrackerFrameLayout$PageChangerMonitor;
.super Ljava/lang/Object;
.source "TrackerFrameLayout.java"

# interfaces
.implements Lcom/ut/mini/UTPageHitHelper$PageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/exposure/TrackerFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageChangerMonitor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageAppear(Ljava/lang/Object;)V
    .locals 10
    .param p1, "pageObject"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 663
    invoke-static {}, Lcom/ut/mini/exposure/TrackerFrameLayout;->access$100()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 664
    if-eqz p1, :cond_0

    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 665
    check-cast v0, Landroid/app/Activity;

    .line 666
    .local v0, "activity":Landroid/app/Activity;
    const v5, 0x1020002

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 667
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_2

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object v4, v1

    .line 668
    check-cast v4, Landroid/view/ViewGroup;

    .line 669
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 670
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    instance-of v5, v3, Lcom/ut/mini/exposure/TrackerFrameLayout;

    if-eqz v5, :cond_1

    move-object v2, v3

    .line 671
    check-cast v2, Lcom/ut/mini/exposure/TrackerFrameLayout;

    .line 672
    .local v2, "tfl":Lcom/ut/mini/exposure/TrackerFrameLayout;
    invoke-static {v2, v7, v7}, Lcom/ut/mini/exposure/TrackerFrameLayout;->access$000(Lcom/ut/mini/exposure/TrackerFrameLayout;IZ)V

    .line 680
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "tfl":Lcom/ut/mini/exposure/TrackerFrameLayout;
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 674
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "contentView":Landroid/view/View;
    .restart local v3    # "v":Landroid/view/View;
    .restart local v4    # "vg":Landroid/view/ViewGroup;
    :cond_1
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "cannot found the trace view "

    aput-object v6, v5, v8

    aput-object v3, v5, v7

    invoke-static {v9, v5}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 677
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_2
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "contentView"

    aput-object v6, v5, v8

    aput-object v1, v5, v7

    invoke-static {v9, v5}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPageDisAppear(Ljava/lang/Object;)V
    .locals 10
    .param p1, "pageObject"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 684
    invoke-static {}, Lc8/NBb;->d()V

    .line 685
    if-eqz p1, :cond_0

    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 686
    check-cast v0, Landroid/app/Activity;

    .line 687
    .local v0, "activity":Landroid/app/Activity;
    const v5, 0x1020002

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 688
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_2

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object v4, v1

    .line 689
    check-cast v4, Landroid/view/ViewGroup;

    .line 690
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 691
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    instance-of v5, v3, Lcom/ut/mini/exposure/TrackerFrameLayout;

    if-eqz v5, :cond_1

    move-object v2, v3

    .line 692
    check-cast v2, Lcom/ut/mini/exposure/TrackerFrameLayout;

    .line 693
    .local v2, "tfl":Lcom/ut/mini/exposure/TrackerFrameLayout;
    invoke-virtual {v2}, Lcom/ut/mini/exposure/TrackerFrameLayout;->onPageDisAppear()V

    .line 701
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "tfl":Lcom/ut/mini/exposure/TrackerFrameLayout;
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 695
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "contentView":Landroid/view/View;
    .restart local v3    # "v":Landroid/view/View;
    .restart local v4    # "vg":Landroid/view/ViewGroup;
    :cond_1
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "cannot found the trace view "

    aput-object v6, v5, v7

    aput-object v3, v5, v8

    invoke-static {v9, v5}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 698
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_2
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "contentView"

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-static {v9, v5}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
