.class public abstract Lc8/kbo;
.super Landroid/support/v4/view/PagerAdapter;
.source "RecycleViewPagerAdapter.java"


# instance fields
.field private mPageViewPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mPageViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/kbo;->mPageViews:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/kbo;->mPageViewPool:Ljava/util/List;

    .line 23
    return-void
.end method

.method private pushViewToPool(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lc8/kbo;->mPageViewPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lc8/kbo;->mPageViewPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 57
    iget-object v1, p0, Lc8/kbo;->mPageViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 59
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lc8/kbo;->pushViewToPool(Landroid/view/View;)V

    .line 60
    iget-object v1, p0, Lc8/kbo;->mPageViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 36
    const/4 v0, -0x2

    return v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    if-ltz p1, :cond_0

    iget-object v0, p0, Lc8/kbo;->mPageViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lc8/kbo;->mPageViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getView(Landroid/view/View;I)Landroid/view/View;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 47
    invoke-virtual {p0}, Lc8/kbo;->pullViewFromPool()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lc8/kbo;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lc8/kbo;->mPageViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 41
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected pullViewFromPool()Landroid/view/View;
    .locals 4

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lc8/kbo;->mPageViewPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 86
    .local v0, "v":Landroid/view/View;
    move-object v1, v0

    .line 89
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    if-eqz v1, :cond_1

    .line 90
    iget-object v2, p0, Lc8/kbo;->mPageViewPool:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    return-object v1
.end method
