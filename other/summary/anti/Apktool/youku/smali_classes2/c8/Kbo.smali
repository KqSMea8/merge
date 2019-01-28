.class public abstract Lc8/Kbo;
.super Lc8/kbo;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CoverImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/kbo;"
    }
.end annotation


# instance fields
.field protected dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lc8/Kbo;, "Lcom/youku/us/baseuikit/view/BannerView$CoverImageAdapter<TT;>;"
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Lc8/kbo;-><init>()V

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Kbo;->dataList:Ljava/util/List;

    .line 353
    iput-object p1, p0, Lc8/Kbo;->dataList:Ljava/util/List;

    .line 354
    return-void
.end method


# virtual methods
.method public getActualCount()I
    .locals 1

    .prologue
    .line 362
    .local p0, "this":Lc8/Kbo;, "Lcom/youku/us/baseuikit/view/BannerView$CoverImageAdapter<TT;>;"
    iget-object v0, p0, Lc8/Kbo;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Kbo;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 367
    .local p0, "this":Lc8/Kbo;, "Lcom/youku/us/baseuikit/view/BannerView$CoverImageAdapter<TT;>;"
    iget-object v0, p0, Lc8/Kbo;->dataList:Ljava/util/List;

    invoke-static {v0}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lc8/Kbo;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 370
    :goto_0
    return v0

    .line 368
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    .line 370
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lc8/Kbo;, "Lcom/youku/us/baseuikit/view/BannerView$CoverImageAdapter<TT;>;"
    iget-object v0, p0, Lc8/Kbo;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Kbo;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 381
    iget-object v0, p0, Lc8/Kbo;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 394
    .local p0, "this":Lc8/Kbo;, "Lcom/youku/us/baseuikit/view/BannerView$CoverImageAdapter<TT;>;"
    iget-object v2, p0, Lc8/Kbo;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v0, p2, v2

    .line 396
    .local v0, "realPosition":I
    invoke-virtual {p0}, Lc8/Kbo;->pullViewFromPool()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lc8/Kbo;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 398
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lc8/Kbo;->mPageViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 401
    return-object v1
.end method
