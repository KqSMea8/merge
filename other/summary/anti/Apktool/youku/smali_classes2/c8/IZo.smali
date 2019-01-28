.class public Lc8/IZo;
.super Ljava/lang/Object;
.source "HeaderGridView.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/JZo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewGridAdapter"
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/GZo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 2
    .param p2, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/GZo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/HeaderGridView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lc8/IZo;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 264
    const/4 v0, 0x1

    iput v0, p0, Lc8/IZo;->mNumColumns:I

    .line 270
    iput-object p2, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    .line 271
    instance-of v0, p2, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lc8/IZo;->mIsFilterable:Z

    .line 272
    if-nez p1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "headerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iput-object p1, p0, Lc8/IZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 276
    iget-object v0, p0, Lc8/IZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lc8/IZo;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/IZo;->mAreAllFixedViewsSelectable:Z

    .line 277
    return-void
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/GZo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/HeaderGridView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 296
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/GZo;

    .line 297
    .local v0, "info":Lc8/GZo;
    iget-boolean v2, v0, Lc8/GZo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 298
    const/4 v1, 0x0

    .line 302
    .end local v0    # "info":Lc8/GZo;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 326
    iget-object v1, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 327
    iget-boolean v1, p0, Lc8/IZo;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lc8/IZo;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lc8/IZo;->mNumColumns:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lc8/IZo;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lc8/IZo;->mNumColumns:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lc8/IZo;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lc8/IZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 354
    invoke-virtual {p0}, Lc8/IZo;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lc8/IZo;->mNumColumns:I

    mul-int v2, v3, v4

    .line 355
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1

    .line 356
    iget v3, p0, Lc8/IZo;->mNumColumns:I

    rem-int v3, p1, v3

    if-nez v3, :cond_0

    .line 357
    iget-object v3, p0, Lc8/IZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v4, p0, Lc8/IZo;->mNumColumns:I

    div-int v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/GZo;

    iget-object v3, v3, Lc8/GZo;->data:Ljava/lang/Object;

    .line 367
    :goto_0
    return-object v3

    .line 359
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 362
    :cond_1
    sub-int v1, p1, v2

    .line 364
    .local v1, "adjPosition":I
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    .line 365
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 366
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_2

    .line 367
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 370
    .end local v0    # "adapterCount":I
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 374
    invoke-virtual {p0}, Lc8/IZo;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lc8/IZo;->mNumColumns:I

    mul-int v2, v3, v4

    .line 375
    .local v2, "numHeadersAndPlaceholders":I
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 376
    sub-int v1, p1, v2

    .line 377
    .local v1, "adjPosition":I
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 378
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 379
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 382
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 424
    invoke-virtual {p0}, Lc8/IZo;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lc8/IZo;->mNumColumns:I

    mul-int v2, v3, v4

    .line 425
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1

    iget v3, p0, Lc8/IZo;->mNumColumns:I

    rem-int v3, p1, v3

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 436
    :goto_0
    return v3

    .line 427
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 429
    :cond_1
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    if-lt p1, v2, :cond_2

    .line 430
    sub-int v1, p1, v2

    .line 431
    .local v1, "adjPosition":I
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 432
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_2

    .line 433
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    goto :goto_0

    .line 436
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 394
    invoke-virtual {p0}, Lc8/IZo;->getHeadersCount()I

    move-result v4

    iget v5, p0, Lc8/IZo;->mNumColumns:I

    mul-int v3, v4, v5

    .line 395
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_2

    .line 396
    iget-object v4, p0, Lc8/IZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v5, p0, Lc8/IZo;->mNumColumns:I

    div-int v5, p1, v5

    .line 397
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/GZo;

    iget-object v2, v4, Lc8/GZo;->viewContainer:Landroid/view/ViewGroup;

    .line 398
    .local v2, "headerViewContainer":Landroid/view/View;
    iget v4, p0, Lc8/IZo;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_0

    .line 417
    .end local v2    # "headerViewContainer":Landroid/view/View;
    :goto_0
    return-object v2

    .line 401
    .restart local v2    # "headerViewContainer":Landroid/view/View;
    :cond_0
    if-nez p2, :cond_1

    .line 402
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 406
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 407
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v2, p2

    .line 408
    goto :goto_0

    .line 412
    .end local v2    # "headerViewContainer":Landroid/view/View;
    :cond_2
    sub-int v1, p1, v3

    .line 414
    .local v1, "adjPosition":I
    iget-object v4, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    .line 415
    iget-object v4, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 416
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_3

    .line 417
    iget-object v4, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 420
    .end local v0    # "adapterCount":I
    :cond_3
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lc8/IZo;->getHeadersCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 335
    invoke-virtual {p0}, Lc8/IZo;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lc8/IZo;->mNumColumns:I

    mul-int v2, v3, v4

    .line 336
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1

    .line 337
    iget v3, p0, Lc8/IZo;->mNumColumns:I

    rem-int v3, p1, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lc8/IZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v4, p0, Lc8/IZo;->mNumColumns:I

    div-int v4, p1, v4

    .line 338
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/GZo;

    iget-boolean v3, v3, Lc8/GZo;->isSelectable:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 346
    :goto_0
    return v3

    .line 338
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 341
    :cond_1
    sub-int v1, p1, v2

    .line 343
    .local v1, "adjPosition":I
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    .line 344
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 345
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_2

    .line 346
    iget-object v3, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 349
    .end local v0    # "adapterCount":I
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lc8/IZo;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 472
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 447
    iget-object v0, p0, Lc8/IZo;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 451
    :cond_0
    return-void
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lc8/IZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 306
    iget-object v2, p0, Lc8/IZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/GZo;

    .line 307
    .local v1, "info":Lc8/GZo;
    iget-object v2, v1, Lc8/GZo;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 308
    iget-object v2, p0, Lc8/IZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lc8/IZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lc8/IZo;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    iput-boolean v2, p0, Lc8/IZo;->mAreAllFixedViewsSelectable:Z

    .line 310
    iget-object v2, p0, Lc8/IZo;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 311
    const/4 v2, 0x1

    .line 314
    .end local v1    # "info":Lc8/GZo;
    :goto_1
    return v2

    .line 305
    .restart local v1    # "info":Lc8/GZo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "info":Lc8/GZo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setNumColumns(I)V
    .locals 2
    .param p1, "numColumns"    # I

    .prologue
    .line 286
    if-gtz p1, :cond_0

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number of columns must be 1 or more"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    iget v0, p0, Lc8/IZo;->mNumColumns:I

    if-eq v0, p1, :cond_1

    .line 290
    iput p1, p0, Lc8/IZo;->mNumColumns:I

    .line 291
    invoke-virtual {p0}, Lc8/IZo;->notifyDataSetChanged()V

    .line 293
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 454
    iget-object v0, p0, Lc8/IZo;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lc8/IZo;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 458
    :cond_0
    return-void
.end method
