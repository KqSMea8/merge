.class public Lc8/Bdg;
.super Lc8/scg;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Lc8/ebg;
.implements Lc8/ffg;
.implements Lc8/gfg;


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/scg",
        "<",
        "Lc8/Ifg;",
        ">;",
        "Lc8/ebg;",
        "Lc8/ffg;",
        "Lc8/gfg",
        "<",
        "Lc8/sdg;",
        ">;"
    }
.end annotation


# static fields
.field private static final NAME_HAS_FIXED_SIZE:Ljava/lang/String; = "hasFixedSize"

.field private static final NAME_ITEM_VIEW_CACHE_SIZE:Ljava/lang/String; = "itemViewCacheSize"

.field private static final NAME_TEMPLATE_CACHE_SIZE:Ljava/lang/String; = "templateCacheSize"

.field public static final TAG:Ljava/lang/String; = "WXRecyclerTemplateList"


# instance fields
.field private bindIngMapContext:Ljava/util/Map;

.field private bindIngStackContext:Lc8/RZf;

.field private isScrollable:Z

.field private listData:Lcom/alibaba/fastjson/JSONArray;

.field private listDataIndexKey:Ljava/lang/String;

.field private listDataItemKey:Ljava/lang/String;

.field private listDataKey:Ljava/lang/String;

.field private listDataTemplateKey:Ljava/lang/String;

.field private listUpdateRunnable:Ljava/lang/Runnable;

.field private mAppearHelpers:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lc8/bbg;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mColumnCount:I

.field protected mColumnGap:F

.field protected mColumnWidth:F

.field private mDisAppearWatchList:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private mDomObject:Lc8/NYf;

.field private mForceLoadmoreNextTime:Z

.field private mHasAddScrollEvent:Z

.field private mItemAnimator:Lc8/qv;

.field private mLastReport:Landroid/graphics/Point;

.field protected mLayoutType:I

.field private mListCellCount:I

.field private mOffsetAccuracy:I

.field private mPaddingLeft:F

.field private mPaddingRight:F

.field private mScrollStartEndHelper:Lc8/Gcg;

.field private mStickyHelper:Lc8/rdg;

.field private mTemplateSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/jdg;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/qdg;",
            ">;"
        }
    .end annotation
.end field

.field private mViewOnScrollListener:Lc8/kfg;

.field private orientation:I

.field private templateCacheSize:I


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 5
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 110
    iput v1, p0, Lc8/Bdg;->mLayoutType:I

    .line 111
    iput v1, p0, Lc8/Bdg;->mColumnCount:I

    .line 112
    iput v0, p0, Lc8/Bdg;->mColumnGap:F

    .line 113
    iput v0, p0, Lc8/Bdg;->mColumnWidth:F

    .line 117
    new-instance v0, Lc8/kfg;

    invoke-direct {v0, p0}, Lc8/kfg;-><init>(Lc8/ffg;)V

    iput-object v0, p0, Lc8/Bdg;->mViewOnScrollListener:Lc8/kfg;

    .line 118
    iput v2, p0, Lc8/Bdg;->mListCellCount:I

    .line 119
    iput-boolean v2, p0, Lc8/Bdg;->mForceLoadmoreNextTime:Z

    .line 125
    iput v1, p0, Lc8/Bdg;->orientation:I

    .line 130
    iput-boolean v1, p0, Lc8/Bdg;->isScrollable:Z

    .line 131
    const/16 v0, 0xa

    iput v0, p0, Lc8/Bdg;->mOffsetAccuracy:I

    .line 132
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lc8/Bdg;->mLastReport:Landroid/graphics/Point;

    .line 133
    iput-boolean v2, p0, Lc8/Bdg;->mHasAddScrollEvent:Z

    .line 136
    const-string/jumbo v0, "listData"

    iput-object v0, p0, Lc8/Bdg;->listDataKey:Ljava/lang/String;

    .line 137
    iput-object v4, p0, Lc8/Bdg;->listDataItemKey:Ljava/lang/String;

    .line 138
    iput-object v4, p0, Lc8/Bdg;->listDataIndexKey:Ljava/lang/String;

    .line 144
    const-string/jumbo v0, "templateType"

    iput-object v0, p0, Lc8/Bdg;->listDataTemplateKey:Ljava/lang/String;

    .line 147
    const/4 v0, 0x2

    iput v0, p0, Lc8/Bdg;->templateCacheSize:I

    .line 166
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/Bdg;->mAppearHelpers:Landroid/support/v4/util/ArrayMap;

    .line 174
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/Bdg;->mDisAppearWatchList:Landroid/support/v4/util/ArrayMap;

    .line 176
    new-instance v0, Lc8/RZf;

    invoke-direct {v0}, Lc8/RZf;-><init>()V

    iput-object v0, p0, Lc8/Bdg;->bindIngStackContext:Lc8/RZf;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Bdg;->bindIngMapContext:Ljava/util/Map;

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lc8/Bdg;->initRecyclerTemplateList(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 182
    return-void
.end method

.method static synthetic access$000(Lc8/Bdg;)Lc8/kfg;
    .locals 1
    .param p0, "x0"    # Lc8/Bdg;

    .prologue
    .line 100
    iget-object v0, p0, Lc8/Bdg;->mViewOnScrollListener:Lc8/kfg;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Bdg;)Lc8/rdg;
    .locals 1
    .param p0, "x0"    # Lc8/Bdg;

    .prologue
    .line 100
    iget-object v0, p0, Lc8/Bdg;->mStickyHelper:Lc8/rdg;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Bdg;)Lcom/alibaba/fastjson/JSONArray;
    .locals 1
    .param p0, "x0"    # Lc8/Bdg;

    .prologue
    .line 100
    iget-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method static synthetic access$300(Lc8/Bdg;II)Z
    .locals 1
    .param p0, "x0"    # Lc8/Bdg;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lc8/Bdg;->shouldReport(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lc8/Bdg;Lc8/Rv;II)V
    .locals 0
    .param p0, "x0"    # Lc8/Bdg;
    .param p1, "x1"    # Lc8/Rv;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lc8/Bdg;->fireScrollEvent(Lc8/Rv;II)V

    return-void
.end method

.method static synthetic access$500(Lc8/Bdg;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lc8/Bdg;

    .prologue
    .line 100
    iget-object v0, p0, Lc8/Bdg;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Bdg;)I
    .locals 1
    .param p0, "x0"    # Lc8/Bdg;

    .prologue
    .line 100
    iget v0, p0, Lc8/Bdg;->templateCacheSize:I

    return v0
.end method

.method static synthetic access$700(Lc8/Bdg;Lc8/jdg;)Lc8/tbg;
    .locals 1
    .param p0, "x0"    # Lc8/Bdg;
    .param p1, "x1"    # Lc8/jdg;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lc8/Bdg;->copyCell(Lc8/jdg;)Lc8/tbg;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lc8/jdg;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/jdg;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 100
    invoke-static {p0, p1, p2}, Lc8/Bdg;->doInitLazyCell(Lc8/jdg;Ljava/lang/String;Z)V

    return-void
.end method

.method private asyncLoadTemplateCache(Ljava/lang/String;)V
    .locals 8
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1558
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    if-eq v5, v6, :cond_3

    .line 1559
    iget-object v5, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1645
    :cond_0
    :goto_0
    return-void

    .line 1562
    :cond_1
    const/4 v1, 0x0

    .line 1563
    .local v1, "firstScreenContains":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1564
    invoke-virtual {p0, v2}, Lc8/Bdg;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1565
    const/4 v1, 0x1

    .line 1569
    :cond_2
    if-eqz v1, :cond_0

    .line 1573
    .end local v1    # "firstScreenContains":Z
    .end local v2    # "i":I
    :cond_3
    iget-object v5, p0, Lc8/Bdg;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/jdg;

    .line 1574
    .local v4, "source":Lc8/jdg;
    if-eqz v4, :cond_0

    .line 1577
    iget-object v5, p0, Lc8/Bdg;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/qdg;

    .line 1578
    .local v0, "cellCache":Lc8/qdg;
    if-nez v0, :cond_4

    .line 1579
    new-instance v0, Lc8/qdg;

    .end local v0    # "cellCache":Lc8/qdg;
    invoke-direct {v0}, Lc8/qdg;-><init>()V

    .line 1580
    .restart local v0    # "cellCache":Lc8/qdg;
    iget-object v5, p0, Lc8/Bdg;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    :cond_4
    iget-object v5, v0, Lc8/qdg;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 1583
    iput-boolean v7, v0, Lc8/qdg;->isLoadIng:Z

    goto :goto_0

    .line 1563
    .end local v0    # "cellCache":Lc8/qdg;
    .end local v4    # "source":Lc8/jdg;
    .restart local v1    # "firstScreenContains":Z
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1586
    .end local v1    # "firstScreenContains":Z
    .end local v2    # "i":I
    .restart local v0    # "cellCache":Lc8/qdg;
    .restart local v4    # "source":Lc8/jdg;
    :cond_6
    iget-boolean v5, v0, Lc8/qdg;->isLoadIng:Z

    if-nez v5, :cond_0

    .line 1589
    const/4 v5, 0x1

    iput-boolean v5, v0, Lc8/qdg;->isLoadIng:Z

    .line 1590
    new-instance v3, Lc8/Adg;

    invoke-direct {v3, p0, p1, v4}, Lc8/Adg;-><init>(Lc8/Bdg;Ljava/lang/String;Lc8/jdg;)V

    .line 1644
    .local v3, "preloadTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v7, [Ljava/lang/Void;

    invoke-virtual {v3, v5, v6}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private calcContentOffset(Lc8/Rv;)I
    .locals 9
    .param p1, "recyclerView"    # Lc8/Rv;

    .prologue
    .line 1454
    invoke-virtual {p1}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v4

    .line 1455
    .local v4, "layoutManager":Lc8/xv;
    instance-of v7, v4, Lc8/wu;

    if-eqz v7, :cond_4

    move-object v7, v4

    .line 1456
    check-cast v7, Lc8/wu;

    invoke-virtual {v7}, Lc8/wu;->findFirstVisibleItemPosition()I

    move-result v1

    .line 1457
    .local v1, "firstVisibleItemPosition":I
    const/4 v5, 0x0

    .line 1458
    .local v5, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1459
    invoke-virtual {p0, v3}, Lc8/Bdg;->getSourceTemplate(I)Lc8/jdg;

    move-result-object v0

    .line 1460
    .local v0, "cell":Lc8/jdg;
    if-eqz v0, :cond_0

    .line 1463
    int-to-float v7, v5

    invoke-virtual {v0}, Lc8/jdg;->getLayoutHeight()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 1458
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1466
    .end local v0    # "cell":Lc8/jdg;
    :cond_1
    instance-of v7, v4, Lc8/mu;

    if-eqz v7, :cond_2

    move-object v7, v4

    .line 1467
    check-cast v7, Lc8/mu;

    invoke-virtual {v7}, Lc8/mu;->getSpanCount()I

    move-result v6

    .line 1468
    .local v6, "spanCount":I
    div-int/2addr v5, v6

    .line 1470
    .end local v6    # "spanCount":I
    :cond_2
    invoke-virtual {v4, v1}, Lc8/xv;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1471
    .local v2, "firstVisibleView":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 1472
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v5, v7

    .line 1494
    .end local v1    # "firstVisibleItemPosition":I
    .end local v2    # "firstVisibleView":Landroid/view/View;
    .end local v3    # "i":I
    .end local v5    # "offset":I
    :cond_3
    :goto_1
    return v5

    .line 1475
    :cond_4
    instance-of v7, v4, Lc8/Qw;

    if-eqz v7, :cond_7

    move-object v7, v4

    .line 1476
    check-cast v7, Lc8/Qw;

    invoke-virtual {v7}, Lc8/Qw;->getSpanCount()I

    move-result v6

    .restart local v6    # "spanCount":I
    move-object v7, v4

    .line 1477
    check-cast v7, Lc8/Qw;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lc8/Qw;->findFirstVisibleItemPositions([I)[I

    move-result-object v7

    const/4 v8, 0x0

    aget v1, v7, v8

    .line 1478
    .restart local v1    # "firstVisibleItemPosition":I
    const/4 v5, 0x0

    .line 1479
    .restart local v5    # "offset":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_6

    .line 1480
    invoke-virtual {p0, v3}, Lc8/Bdg;->getSourceTemplate(I)Lc8/jdg;

    move-result-object v0

    .line 1481
    .restart local v0    # "cell":Lc8/jdg;
    if-eqz v0, :cond_5

    .line 1484
    int-to-float v7, v5

    invoke-virtual {v0}, Lc8/jdg;->getLayoutHeight()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 1479
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1486
    .end local v0    # "cell":Lc8/jdg;
    :cond_6
    div-int/2addr v5, v6

    .line 1488
    invoke-virtual {v4, v1}, Lc8/xv;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1489
    .restart local v2    # "firstVisibleView":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 1490
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_1

    .line 1494
    .end local v1    # "firstVisibleItemPosition":I
    .end local v2    # "firstVisibleView":Landroid/view/View;
    .end local v3    # "i":I
    .end local v5    # "offset":I
    .end local v6    # "spanCount":I
    :cond_7
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private calcContentSize()I
    .locals 6

    .prologue
    .line 1440
    const/4 v2, 0x0

    .line 1441
    .local v2, "totalHeight":I
    iget-object v4, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-nez v4, :cond_0

    move v3, v2

    .line 1450
    .end local v2    # "totalHeight":I
    .local v3, "totalHeight":I
    :goto_0
    return v3

    .line 1444
    .end local v3    # "totalHeight":I
    .restart local v2    # "totalHeight":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1445
    invoke-virtual {p0, v1}, Lc8/Bdg;->getSourceTemplate(I)Lc8/jdg;

    move-result-object v0

    .line 1446
    .local v0, "child":Lc8/jdg;
    if-eqz v0, :cond_1

    .line 1447
    int-to-float v4, v2

    invoke-virtual {v0}, Lc8/jdg;->getLayoutHeight()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 1444
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "child":Lc8/jdg;
    :cond_2
    move v3, v2

    .line 1450
    .end local v2    # "totalHeight":I
    .restart local v3    # "totalHeight":I
    goto :goto_0
.end method

.method private copyCell(Lc8/jdg;)Lc8/tbg;
    .locals 3
    .param p1, "cell"    # Lc8/jdg;

    .prologue
    .line 1111
    invoke-direct {p0, p1}, Lc8/Bdg;->ensureSourceCellRenderWithData(Lc8/jdg;)V

    .line 1112
    invoke-static {p1}, Lc8/Fcg;->copyComponentTree(Lc8/tbg;)Lc8/tbg;

    move-result-object v0

    check-cast v0, Lc8/jdg;

    .line 1113
    .local v0, "component":Lc8/jdg;
    invoke-virtual {v0}, Lc8/jdg;->getDomObject()Lc8/qYf;

    move-result-object v2

    instance-of v2, v2, Lc8/zYf;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v2

    instance-of v2, v2, Lc8/NYf;

    if-eqz v2, :cond_0

    .line 1115
    invoke-virtual {v0}, Lc8/jdg;->getDomObject()Lc8/qYf;

    move-result-object v1

    check-cast v1, Lc8/zYf;

    .line 1116
    .local v1, "domObject":Lc8/zYf;
    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v2

    check-cast v2, Lc8/NYf;

    invoke-virtual {v1, v2}, Lc8/zYf;->setRecyclerDomObject(Lc8/NYf;)V

    .line 1118
    .end local v1    # "domObject":Lc8/zYf;
    :cond_0
    invoke-virtual {p1}, Lc8/jdg;->getRenderData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc8/jdg;->setRenderData(Ljava/lang/Object;)V

    .line 1119
    return-object v0
.end method

.method private static doInitLazyCell(Lc8/jdg;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "component"    # Lc8/jdg;
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "inPreload"    # Z

    .prologue
    .line 1648
    invoke-virtual {p0}, Lc8/jdg;->isLazy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1650
    .local v0, "start":J
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lc8/jdg;->lazy(Z)V

    .line 1651
    invoke-virtual {p0}, Lc8/jdg;->createView()V

    .line 1652
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1653
    const-string/jumbo v2, "WXRecyclerTemplateList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doInitLazyCell idle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " createView used "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    :cond_0
    invoke-virtual {p0, p0}, Lc8/jdg;->applyLayoutAndEvent(Lc8/tbg;)V

    .line 1656
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1657
    const-string/jumbo v2, "WXRecyclerTemplateList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doInitLazyCell idle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " apply layout used "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    :cond_1
    invoke-virtual {p0, p0}, Lc8/jdg;->bindData(Lc8/tbg;)V

    .line 1660
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1661
    const-string/jumbo v2, "WXRecyclerTemplateList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doInitLazyCell idle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bindData used "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    .end local v0    # "start":J
    :cond_2
    return-void
.end method

.method private ensureSourceCellRenderWithData(Lc8/jdg;)V
    .locals 3
    .param p1, "cell"    # Lc8/jdg;

    .prologue
    .line 1123
    invoke-virtual {p1}, Lc8/jdg;->getRenderData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1124
    iget-object v2, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1125
    monitor-enter p0

    .line 1126
    :try_start_0
    invoke-virtual {p1}, Lc8/jdg;->getRenderData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1128
    invoke-virtual {p0, v1}, Lc8/Bdg;->getSourceTemplate(I)Lc8/jdg;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 1129
    iget-object v2, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1130
    .local v0, "data":Ljava/lang/Object;
    invoke-direct {p0, v1, v0}, Lc8/Bdg;->getStackContextForPosition(ILjava/lang/Object;)Lc8/RZf;

    move-result-object v2

    invoke-static {p1, v2}, Lc8/Fcg;->doRender(Lc8/tbg;Lc8/RZf;)Ljava/util/List;

    .line 1131
    new-instance v2, Lc8/AZf;

    invoke-direct {v2}, Lc8/AZf;-><init>()V

    invoke-static {p1, v2}, Lc8/Ecg;->doSafeLayout(Lc8/tbg;Lc8/AZf;)V

    .line 1132
    invoke-virtual {p1, v0}, Lc8/jdg;->setRenderData(Ljava/lang/Object;)V

    .line 1137
    .end local v0    # "data":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    monitor-exit p0

    .line 1140
    :cond_1
    return-void

    .line 1127
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1137
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private findCell(Lc8/tbg;)Lc8/jdg;
    .locals 2
    .param p1, "component"    # Lc8/tbg;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 401
    instance-of v1, p1, Lc8/jdg;

    if-eqz v1, :cond_0

    .line 402
    check-cast p1, Lc8/jdg;

    .line 408
    .end local p1    # "component":Lc8/tbg;
    :goto_0
    return-object p1

    .line 405
    .restart local p1    # "component":Lc8/tbg;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v0

    .local v0, "parent":Lc8/tbg;
    if-nez v0, :cond_2

    .line 406
    .end local v0    # "parent":Lc8/tbg;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 408
    .restart local v0    # "parent":Lc8/tbg;
    :cond_2
    invoke-direct {p0, v0}, Lc8/Bdg;->findCell(Lc8/tbg;)Lc8/jdg;

    move-result-object p1

    goto :goto_0
.end method

.method private fireScrollEvent(Lc8/Rv;II)V
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 889
    const-string/jumbo v0, "scroll"

    invoke-virtual {p0, p1, p2, p3}, Lc8/Bdg;->getScrollEvent(Lc8/Rv;II)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/Bdg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 890
    return-void
.end method

.method private getCellItemType(Lc8/tbg;)I
    .locals 6
    .param p1, "cell"    # Lc8/tbg;

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1216
    if-nez p1, :cond_1

    move v2, v3

    .line 1231
    :cond_0
    :goto_0
    return v2

    .line 1219
    :cond_1
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1220
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "templateType"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1221
    .local v1, "templateId":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, "template":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1225
    iget-object v4, p0, Lc8/Bdg;->mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 1226
    .local v2, "type":I
    if-gez v2, :cond_0

    move v2, v3

    .line 1227
    goto :goto_0
.end method

.method private getStackContextForPosition(ILjava/lang/Object;)Lc8/RZf;
    .locals 4
    .param p1, "position"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 1166
    iget-object v2, p0, Lc8/Bdg;->bindIngStackContext:Lc8/RZf;

    invoke-virtual {v2}, Lc8/RZf;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1167
    iget-object v2, p0, Lc8/Bdg;->bindIngStackContext:Lc8/RZf;

    invoke-virtual {v2}, Lc8/RZf;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1169
    :cond_0
    iget-object v2, p0, Lc8/Bdg;->bindIngMapContext:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1170
    iget-object v2, p0, Lc8/Bdg;->bindIngMapContext:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1172
    :cond_1
    iget-object v1, p0, Lc8/Bdg;->bindIngStackContext:Lc8/RZf;

    .line 1173
    .local v1, "stack":Lc8/RZf;
    iget-object v0, p0, Lc8/Bdg;->bindIngMapContext:Ljava/util/Map;

    .line 1174
    .local v0, "map":Ljava/util/Map;
    iget-object v2, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_3

    .line 1175
    iget-object v2, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, v2}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 1176
    invoke-virtual {v1, v0}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 1177
    iget-object v2, p0, Lc8/Bdg;->listDataKey:Ljava/lang/String;

    iget-object v3, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object v2, p0, Lc8/Bdg;->listDataIndexKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1179
    iget-object v2, p0, Lc8/Bdg;->listDataIndexKey:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    :cond_2
    iget-object v2, p0, Lc8/Bdg;->listDataItemKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1182
    iget-object v2, p0, Lc8/Bdg;->listDataItemKey:Ljava/lang/String;

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    :cond_3
    :goto_0
    return-object v1

    .line 1184
    :cond_4
    invoke-virtual {v1, p2}, Lc8/RZf;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private initRecyclerTemplateList(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 8
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 185
    if-eqz p2, :cond_0

    instance-of v4, p2, Lc8/NYf;

    if-eqz v4, :cond_0

    .line 186
    check-cast p2, Lc8/NYf;

    .end local p2    # "node":Lc8/HYf;
    iput-object p2, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    .line 187
    iget-object v4, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v4}, Lc8/NYf;->preCalculateCellWidth()V

    .line 188
    iget-object v4, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v4}, Lc8/NYf;->getLayoutType()I

    move-result v4

    iput v4, p0, Lc8/Bdg;->mLayoutType:I

    .line 189
    invoke-direct {p0}, Lc8/Bdg;->updateRecyclerAttr()V

    .line 191
    :cond_0
    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lc8/Bdg;->mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;

    .line 192
    iget-object v4, p0, Lc8/Bdg;->mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lc8/Bdg;->mTemplateSources:Ljava/util/Map;

    .line 194
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lc8/Bdg;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 195
    new-instance v4, Lc8/rdg;

    invoke-direct {v4, p0}, Lc8/rdg;-><init>(Lc8/Bdg;)V

    iput-object v4, p0, Lc8/Bdg;->mStickyHelper:Lc8/rdg;

    .line 196
    iget-object v4, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v4}, Lc8/NYf;->getOrientation()I

    move-result v4

    iput v4, p0, Lc8/Bdg;->orientation:I

    .line 197
    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "templateKey"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "templateType"

    invoke-static {v4, v5}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/Bdg;->listDataTemplateKey:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "alias"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lc8/Bdg;->listDataItemKey:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/Bdg;->listDataItemKey:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "index"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lc8/Bdg;->listDataIndexKey:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/Bdg;->listDataIndexKey:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "listData"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_1

    .line 201
    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "listData"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 202
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 203
    iput-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 206
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 207
    .local v2, "start":J
    iget-object v4, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v4}, Lc8/NYf;->getCellList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v4}, Lc8/NYf;->getCellList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 209
    iget-object v4, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v4}, Lc8/NYf;->getCellList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/HYf;

    invoke-static {v4, p0}, Lc8/pdg;->buildTree(Lc8/HYf;Lc8/scg;)Lc8/tbg;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/Bdg;->addChild(Lc8/tbg;)V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "i":I
    :cond_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    const-string/jumbo v4, "WXRecyclerTemplateList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TemplateList BuildDomTree Used "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_3
    return-void
.end method

.method private notifyUpdateList()V
    .locals 4

    .prologue
    .line 1426
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Bdg;->listUpdateRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1432
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    iget-object v1, p0, Lc8/Bdg;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lc8/Ifg;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1433
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    iget-object v1, p0, Lc8/Bdg;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lc8/Ifg;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1435
    :cond_2
    iget-object v0, p0, Lc8/Bdg;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private removeFooterOrHeader(Lc8/tbg;)V
    .locals 1
    .param p1, "child"    # Lc8/tbg;

    .prologue
    .line 965
    instance-of v0, p1, Lc8/Obg;

    if-eqz v0, :cond_1

    .line 966
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    invoke-virtual {v0, p1}, Lc8/Ifg;->removeFooterView(Lc8/tbg;)V

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    instance-of v0, p1, Lc8/Qbg;

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    invoke-virtual {v0, p1}, Lc8/Ifg;->removeHeaderView(Lc8/tbg;)V

    goto :goto_0
.end method

.method private safeGetListData(I)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1421
    :try_start_0
    iget-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1422
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "{}"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private setAppearanceWatch(Lc8/tbg;IZ)V
    .locals 8
    .param p1, "component"    # Lc8/tbg;
    .param p2, "event"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 412
    iget-object v6, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lc8/Bdg;->mAppearHelpers:Landroid/support/v4/util/ArrayMap;

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-direct {p0, p1}, Lc8/Bdg;->findCell(Lc8/tbg;)Lc8/jdg;

    move-result-object v0

    .line 418
    .local v0, "cell":Lc8/tbg;
    invoke-direct {p0, v0}, Lc8/Bdg;->getCellItemType(Lc8/tbg;)I

    move-result v5

    .line 419
    .local v5, "type":I
    if-lez v5, :cond_0

    .line 422
    iget-object v6, p0, Lc8/Bdg;->mAppearHelpers:Landroid/support/v4/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 423
    .local v4, "mAppearListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    if-nez v4, :cond_2

    .line 424
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "mAppearListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .restart local v4    # "mAppearListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    iget-object v6, p0, Lc8/Bdg;->mAppearHelpers:Landroid/support/v4/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_2
    const/4 v2, 0x0

    .line 428
    .local v2, "item":Lc8/bbg;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/bbg;

    .line 429
    .local v3, "mAppearListener":Lc8/bbg;
    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lc8/bbg;->getAwareChild()Lc8/tbg;

    move-result-object v7

    invoke-virtual {v7}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 430
    move-object v2, v3

    .line 434
    .end local v3    # "mAppearListener":Lc8/bbg;
    :cond_4
    if-eqz v2, :cond_5

    .line 435
    invoke-virtual {v2, p2, p3}, Lc8/bbg;->setWatchEvent(IZ)V

    goto :goto_0

    .line 437
    :cond_5
    new-instance v2, Lc8/bbg;

    .end local v2    # "item":Lc8/bbg;
    invoke-direct {v2, p1, v5}, Lc8/bbg;-><init>(Lc8/tbg;I)V

    .line 438
    .restart local v2    # "item":Lc8/bbg;
    invoke-virtual {v2, p2, p3}, Lc8/bbg;->setWatchEvent(IZ)V

    .line 439
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setRefreshOrLoading(Lc8/tbg;)Z
    .locals 6
    .param p1, "child"    # Lc8/tbg;

    .prologue
    const-wide/16 v4, 0x64

    const/4 v2, 0x1

    .line 939
    instance-of v0, p1, Lc8/Qbg;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    move-object v1, p1

    check-cast v1, Lc8/Qbg;

    invoke-virtual {v0, v1}, Lc8/Ifg;->setOnRefreshListener(Lc8/Efg;)V

    .line 941
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    new-instance v1, Lc8/xdg;

    invoke-direct {v1, p0, p1}, Lc8/xdg;-><init>(Lc8/Bdg;Lc8/tbg;)V

    invoke-virtual {v0, v1, v4, v5}, Lc8/Ifg;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v2

    .line 960
    :goto_0
    return v0

    .line 950
    :cond_0
    instance-of v0, p1, Lc8/Obg;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 951
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    move-object v1, p1

    check-cast v1, Lc8/Obg;

    invoke-virtual {v0, v1}, Lc8/Ifg;->setOnLoadingListener(Lc8/Dfg;)V

    .line 952
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    new-instance v1, Lc8/ydg;

    invoke-direct {v1, p0, p1}, Lc8/ydg;-><init>(Lc8/Bdg;Lc8/tbg;)V

    invoke-virtual {v0, v1, v4, v5}, Lc8/Ifg;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v2

    .line 958
    goto :goto_0

    .line 960
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldReport(II)Z
    .locals 5
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    .line 914
    iget-object v3, p0, Lc8/Bdg;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lc8/Bdg;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v3, v4, :cond_0

    .line 915
    iget-object v3, p0, Lc8/Bdg;->mLastReport:Landroid/graphics/Point;

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 916
    iget-object v3, p0, Lc8/Bdg;->mLastReport:Landroid/graphics/Point;

    iput p2, v3, Landroid/graphics/Point;->y:I

    .line 929
    :goto_0
    return v2

    .line 920
    :cond_0
    iget-object v3, p0, Lc8/Bdg;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 921
    .local v0, "gapX":I
    iget-object v3, p0, Lc8/Bdg;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 923
    .local v1, "gapY":I
    iget v3, p0, Lc8/Bdg;->mOffsetAccuracy:I

    if-ge v0, v3, :cond_1

    iget v3, p0, Lc8/Bdg;->mOffsetAccuracy:I

    if-lt v1, v3, :cond_2

    .line 924
    :cond_1
    iget-object v3, p0, Lc8/Bdg;->mLastReport:Landroid/graphics/Point;

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 925
    iget-object v3, p0, Lc8/Bdg;->mLastReport:Landroid/graphics/Point;

    iput p2, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 929
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateRecyclerAttr()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v0}, Lc8/NYf;->getColumnCount()I

    move-result v0

    iput v0, p0, Lc8/Bdg;->mColumnCount:I

    .line 695
    iget-object v0, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v0}, Lc8/NYf;->getColumnGap()F

    move-result v0

    iput v0, p0, Lc8/Bdg;->mColumnGap:F

    .line 696
    iget-object v0, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v0}, Lc8/NYf;->getColumnWidth()F

    move-result v0

    iput v0, p0, Lc8/Bdg;->mColumnWidth:F

    .line 697
    iget-object v0, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v0}, Lc8/NYf;->getPadding()Lc8/IZf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/IZf;->get(I)F

    move-result v0

    iput v0, p0, Lc8/Bdg;->mPaddingLeft:F

    .line 698
    iget-object v0, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v0}, Lc8/NYf;->getPadding()Lc8/IZf;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/IZf;->get(I)F

    move-result v0

    iput v0, p0, Lc8/Bdg;->mPaddingRight:F

    .line 699
    return-void
.end method


# virtual methods
.method public addChild(Lc8/tbg;)V
    .locals 1
    .param p1, "child"    # Lc8/tbg;

    .prologue
    .line 562
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lc8/Bdg;->addChild(Lc8/tbg;I)V

    .line 563
    return-void
.end method

.method public addChild(Lc8/tbg;I)V
    .locals 5
    .param p1, "child"    # Lc8/tbg;
    .param p2, "index"    # I

    .prologue
    .line 572
    instance-of v3, p1, Lc8/jdg;

    if-nez v3, :cond_0

    .line 573
    invoke-super {p0, p1, p2}, Lc8/scg;->addChild(Lc8/tbg;I)V

    .line 575
    :cond_0
    instance-of v3, p1, Lc8/ibg;

    if-eqz v3, :cond_2

    .line 597
    .end local p1    # "child":Lc8/tbg;
    :cond_1
    :goto_0
    return-void

    .line 578
    .restart local p1    # "child":Lc8/tbg;
    :cond_2
    instance-of v3, p1, Lc8/jdg;

    if-eqz v3, :cond_1

    .line 579
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 580
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    const-string/jumbo v4, "templateType"

    invoke-virtual {v3, v4}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 581
    .local v2, "templateId":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 583
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    instance-of v3, v3, Lc8/zYf;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v3

    instance-of v3, v3, Lc8/NYf;

    if-eqz v3, :cond_3

    .line 585
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    check-cast v0, Lc8/zYf;

    .line 586
    .local v0, "domObject":Lc8/zYf;
    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v3

    check-cast v3, Lc8/NYf;

    invoke-virtual {v0, v3}, Lc8/zYf;->setRecyclerDomObject(Lc8/NYf;)V

    .line 588
    .end local v0    # "domObject":Lc8/zYf;
    :cond_3
    iget-object v4, p0, Lc8/Bdg;->mTemplateSources:Ljava/util/Map;

    move-object v3, p1

    check-cast v3, Lc8/jdg;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    check-cast p1, Lc8/jdg;

    .end local p1    # "child":Lc8/tbg;
    invoke-direct {p0, p1}, Lc8/Bdg;->ensureSourceCellRenderWithData(Lc8/jdg;)V

    .line 590
    iget-object v3, p0, Lc8/Bdg;->mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 591
    iget-object v3, p0, Lc8/Bdg;->mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;

    iget-object v4, p0, Lc8/Bdg;->mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "templateId":Ljava/lang/Object;
    :cond_4
    invoke-direct {p0}, Lc8/Bdg;->notifyUpdateList()V

    goto :goto_0
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 840
    invoke-super {p0, p1}, Lc8/scg;->addEvent(Ljava/lang/String;)V

    .line 841
    invoke-static {p1}, Lc8/Gcg;->isScrollEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc8/Bdg;->mHasAddScrollEvent:Z

    if-nez v1, :cond_0

    .line 845
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Bdg;->mHasAddScrollEvent:Z

    .line 846
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    .line 847
    .local v0, "innerView":Lc8/efg;
    new-instance v1, Lc8/wdg;

    invoke-direct {v1, p0}, Lc8/wdg;-><init>(Lc8/Bdg;)V

    invoke-virtual {v0, v1}, Lc8/efg;->addOnScrollListener(Lc8/Cv;)V

    .line 886
    .end local v0    # "innerView":Lc8/efg;
    :cond_0
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 609
    return-void
.end method

.method public appendData(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 1
    .param p1, "arrayObject"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 759
    iget-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 762
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 765
    :cond_1
    invoke-direct {p0}, Lc8/Bdg;->notifyUpdateList()V

    .line 766
    return-void
.end method

.method public bindAppearEvent(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 445
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lc8/Bdg;->setAppearanceWatch(Lc8/tbg;IZ)V

    .line 446
    return-void
.end method

.method public bindDisappearEvent(Lc8/tbg;)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    const/4 v0, 0x1

    .line 450
    invoke-direct {p0, p1, v0, v0}, Lc8/Bdg;->setAppearanceWatch(Lc8/tbg;IZ)V

    .line 451
    return-void
.end method

.method public bindStickStyle(Lc8/tbg;)V
    .locals 3
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 373
    const-class v1, Lc8/jdg;

    invoke-virtual {p0, p1, v1}, Lc8/Bdg;->findParentType(Lc8/tbg;Ljava/lang/Class;)Lc8/tbg;

    move-result-object v0

    .line 374
    .local v0, "template":Lc8/tbg;
    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v1, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Bdg;->mStickyHelper:Lc8/rdg;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lc8/Bdg;->mStickyHelper:Lc8/rdg;

    invoke-virtual {v1}, Lc8/rdg;->getStickyTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    iget-object v1, p0, Lc8/Bdg;->mStickyHelper:Lc8/rdg;

    invoke-virtual {v1}, Lc8/rdg;->getStickyTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-direct {p0}, Lc8/Bdg;->notifyUpdateList()V

    goto :goto_0
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "pointF"    # Landroid/graphics/PointF;

    .prologue
    .line 641
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Rv;

    .line 642
    .local v0, "view":Lc8/Rv;
    invoke-virtual {v0}, Lc8/Rv;->computeHorizontalScrollOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lc8/Rv;->computeVerticalScrollOffset()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 643
    return-void
.end method

.method public createChildViewAt(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 617
    .line 618
    move v1, p1

    .local v1, "indexToCreate":I
    if-gez p1, :cond_1

    .line 619
    invoke-virtual {p0}, Lc8/Bdg;->childCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 620
    if-gez v1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    invoke-virtual {p0, v1}, Lc8/Bdg;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 625
    .local v0, "child":Lc8/tbg;
    instance-of v2, v0, Lc8/ibg;

    if-eqz v2, :cond_0

    .line 626
    invoke-virtual {v0}, Lc8/tbg;->createView()V

    .line 627
    invoke-direct {p0, v0}, Lc8/Bdg;->setRefreshOrLoading(Lc8/tbg;)Z

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 990
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    iget-object v1, p0, Lc8/Bdg;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lc8/Ifg;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 992
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    invoke-virtual {v0, v2}, Lc8/efg;->setAdapter(Lc8/iv;)V

    .line 996
    :cond_0
    iget-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_1

    .line 997
    iput-object v2, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 999
    :cond_1
    iget-object v0, p0, Lc8/Bdg;->mStickyHelper:Lc8/rdg;

    if-eqz v0, :cond_2

    .line 1000
    iput-object v2, p0, Lc8/Bdg;->mStickyHelper:Lc8/rdg;

    .line 1002
    :cond_2
    iget-object v0, p0, Lc8/Bdg;->mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_3

    .line 1003
    iget-object v0, p0, Lc8/Bdg;->mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1005
    :cond_3
    iget-object v0, p0, Lc8/Bdg;->mTemplateSources:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 1006
    iget-object v0, p0, Lc8/Bdg;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1008
    :cond_4
    iget-object v0, p0, Lc8/Bdg;->mAppearHelpers:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_5

    .line 1009
    iget-object v0, p0, Lc8/Bdg;->mAppearHelpers:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1011
    :cond_5
    iget-object v0, p0, Lc8/Bdg;->mDisAppearWatchList:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_6

    .line 1012
    iget-object v0, p0, Lc8/Bdg;->mDisAppearWatchList:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1014
    :cond_6
    invoke-super {p0}, Lc8/scg;->destroy()V

    .line 1015
    return-void
.end method

.method public findChildByRef(Lc8/tbg;Ljava/lang/String;)Lc8/tbg;
    .locals 4
    .param p1, "component"    # Lc8/tbg;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    .line 1515
    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1527
    .end local p1    # "component":Lc8/tbg;
    :goto_0
    return-object p1

    .line 1518
    .restart local p1    # "component":Lc8/tbg;
    :cond_0
    instance-of v3, p1, Lc8/scg;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 1519
    check-cast v1, Lc8/scg;

    .line 1520
    .local v1, "container":Lc8/scg;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lc8/scg;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1521
    invoke-virtual {v1, v2}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lc8/Bdg;->findChildByRef(Lc8/tbg;Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 1522
    .local v0, "child":Lc8/tbg;
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 1523
    goto :goto_0

    .line 1520
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1527
    .end local v0    # "child":Lc8/tbg;
    .end local v1    # "container":Lc8/scg;
    .end local v2    # "i":I
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public findChildListByRef(Lc8/tbg;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "component"    # Lc8/tbg;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/tbg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1534
    invoke-virtual {p0, p1, p2}, Lc8/Bdg;->findChildByRef(Lc8/tbg;Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 1535
    .local v0, "child":Lc8/tbg;
    if-nez v0, :cond_1

    .line 1536
    const/4 v1, 0x0

    .line 1550
    :cond_0
    :goto_0
    return-object v1

    .line 1538
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1539
    .local v1, "componentList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-virtual {v0}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v2

    .line 1540
    .local v2, "container":Lc8/scg;
    if-eqz v2, :cond_3

    instance-of v5, v2, Lc8/Bdg;

    if-nez v5, :cond_3

    .line 1541
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v2}, Lc8/scg;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1542
    invoke-virtual {v2, v4}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v3

    .line 1543
    .local v3, "element":Lc8/tbg;
    invoke-virtual {v3}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1544
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1541
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1548
    .end local v3    # "element":Lc8/tbg;
    .end local v4    # "i":I
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public findParentType(Lc8/tbg;Ljava/lang/Class;)Lc8/tbg;
    .locals 1
    .param p1, "component"    # Lc8/tbg;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 1501
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1507
    .end local p1    # "component":Lc8/tbg;
    :goto_0
    return-object p1

    .line 1504
    .restart local p1    # "component":Lc8/tbg;
    :cond_0
    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1505
    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lc8/Bdg;->findTypeParent(Lc8/tbg;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1507
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getChildLayoutParams(Lc8/tbg;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "child"    # Lc8/tbg;
    .param p2, "hostView"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I
    .param p7, "top"    # I
    .param p8, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 974
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 975
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    instance-of v1, p1, Lc8/ibg;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 976
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 984
    .restart local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return-object v0

    .line 977
    :cond_0
    if-nez v0, :cond_1

    .line 978
    new-instance v0, Lc8/yv;

    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, p3, p4}, Lc8/yv;-><init>(II)V

    .restart local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_0

    .line 980
    :cond_1
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 981
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 982
    invoke-virtual {v0, p5, v2, p6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected getChildrenLayoutTopOffset()I
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1236
    iget-object v1, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-nez v1, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return v0

    .line 1239
    :cond_1
    iget-object v1, p0, Lc8/Bdg;->mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Bdg;->mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1242
    iget-object v1, p0, Lc8/Bdg;->mTemplateSources:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Bdg;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1245
    iget-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1261
    invoke-virtual {p0, p1}, Lc8/Bdg;->getItemViewType(I)I

    move-result v2

    if-gtz v2, :cond_0

    .line 1262
    const-wide/16 v2, -0x1

    .line 1272
    :goto_0
    return-wide v2

    .line 1264
    :cond_0
    invoke-direct {p0, p1}, Lc8/Bdg;->safeGetListData(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1265
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "itemId"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1266
    const-string/jumbo v2, "itemId"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1267
    .local v1, "itemKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1268
    int-to-long v2, p1

    goto :goto_0

    .line 1270
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    .line 1272
    .end local v1    # "itemKey":Ljava/lang/String;
    :cond_2
    int-to-long v2, p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Lc8/Bdg;->safeGetListData(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1150
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    iget-object v3, p0, Lc8/Bdg;->listDataTemplateKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1151
    .local v1, "template":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1152
    const-string/jumbo v1, ""

    .line 1154
    :cond_0
    iget-object v3, p0, Lc8/Bdg;->mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 1155
    .local v2, "type":I
    if-gez v2, :cond_1

    .line 1156
    const/4 v2, 0x0

    .line 1158
    :cond_1
    return v2
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lc8/Bdg;->orientation:I

    return v0
.end method

.method public getScrollEvent(Lc8/Rv;II)Ljava/util/Map;
    .locals 8
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rv;",
            "II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 893
    invoke-direct {p0, p1}, Lc8/Bdg;->calcContentOffset(Lc8/Rv;)I

    move-result v5

    neg-int p3, v5

    .line 894
    invoke-virtual {p1}, Lc8/Rv;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Lc8/Rv;->computeHorizontalScrollRange()I

    move-result v6

    add-int v3, v5, v6

    .line 895
    .local v3, "contentWidth":I
    invoke-direct {p0}, Lc8/Bdg;->calcContentSize()I

    move-result v0

    .line 897
    .local v0, "contentHeight":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 898
    .local v4, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 899
    .local v2, "contentSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 901
    .local v1, "contentOffset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "width"

    int-to-float v6, v3

    invoke-virtual {p0}, Lc8/Bdg;->getInstance()Lc8/nVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const-string/jumbo v5, "height"

    int-to-float v6, v0

    invoke-virtual {p0}, Lc8/Bdg;->getInstance()Lc8/nVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    const-string/jumbo v5, "x"

    int-to-float v6, p2

    invoke-virtual {p0}, Lc8/Bdg;->getInstance()Lc8/nVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v6

    neg-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    const-string/jumbo v5, "y"

    int-to-float v6, p3

    invoke-virtual {p0}, Lc8/Bdg;->getInstance()Lc8/nVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v7

    invoke-static {v6, v7}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v6

    neg-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string/jumbo v5, "contentSize"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string/jumbo v5, "contentOffset"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    return-object v4
.end method

.method public getScrollStartEndHelper()Lc8/Gcg;
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lc8/Bdg;->mScrollStartEndHelper:Lc8/Gcg;

    if-nez v0, :cond_0

    .line 1668
    new-instance v0, Lc8/Gcg;

    invoke-direct {v0, p0}, Lc8/Gcg;-><init>(Lc8/tbg;)V

    iput-object v0, p0, Lc8/Bdg;->mScrollStartEndHelper:Lc8/Gcg;

    .line 1670
    :cond_0
    iget-object v0, p0, Lc8/Bdg;->mScrollStartEndHelper:Lc8/Gcg;

    return-object v0
.end method

.method public getScrollX()I
    .locals 2

    .prologue
    .line 545
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    .line 546
    .local v0, "bounceRecyclerView":Lc8/Ifg;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    invoke-virtual {v1}, Lc8/efg;->getScrollX()I

    move-result v1

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    .line 540
    .local v0, "bounceRecyclerView":Lc8/Ifg;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    invoke-virtual {v1}, Lc8/efg;->getScrollY()I

    move-result v1

    goto :goto_0
.end method

.method public getSourceTemplate(I)Lc8/jdg;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1206
    invoke-virtual {p0, p1}, Lc8/Bdg;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "template":Ljava/lang/String;
    iget-object v1, p0, Lc8/Bdg;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/jdg;

    return-object v1
.end method

.method public getTemplateKey(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1194
    invoke-direct {p0, p1}, Lc8/Bdg;->safeGetListData(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1195
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    iget-object v2, p0, Lc8/Bdg;->listDataTemplateKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "template":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    const-string/jumbo v1, ""

    .line 1199
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lc8/Bdg;->initComponentHostView(Landroid/content/Context;)Lc8/Ifg;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/Ifg;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 219
    new-instance v0, Lc8/Ifg;

    iget v2, p0, Lc8/Bdg;->mLayoutType:I

    iget v3, p0, Lc8/Bdg;->mColumnCount:I

    iget v4, p0, Lc8/Bdg;->mColumnGap:F

    invoke-virtual {p0}, Lc8/Bdg;->getOrientation()I

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lc8/Ifg;-><init>(Landroid/content/Context;IIFI)V

    .line 220
    .local v0, "bounceRecyclerView":Lc8/Ifg;
    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v6

    .line 221
    .local v6, "attrs":Lc8/xYf;
    const-string/jumbo v1, "transform"

    invoke-virtual {v6, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 222
    .local v10, "transforms":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 223
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    invoke-virtual {p0}, Lc8/Bdg;->getOrientation()I

    move-result v2

    invoke-static {v2, v10}, Lc8/edg;->parseTransforms(ILjava/lang/String;)Lc8/sv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/efg;->addItemDecoration(Lc8/sv;)V

    .line 225
    :cond_0
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    invoke-virtual {v1}, Lc8/efg;->getItemAnimator()Lc8/qv;

    move-result-object v1

    iput-object v1, p0, Lc8/Bdg;->mItemAnimator:Lc8/qv;

    .line 227
    const-string/jumbo v1, "templateCacheSize"

    invoke-virtual {v6, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 228
    const-string/jumbo v1, "templateCacheSize"

    invoke-virtual {v6, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lc8/Bdg;->templateCacheSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Dgg;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lc8/Bdg;->templateCacheSize:I

    .line 231
    :cond_1
    const/4 v7, 0x0

    .line 232
    .local v7, "hasFixedSize":Z
    const/4 v8, 0x2

    .line 233
    .local v8, "itemViewCacheSize":I
    const-string/jumbo v1, "itemViewCacheSize"

    invoke-virtual {v6, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 234
    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v1

    const-string/jumbo v2, "itemViewCacheSize"

    invoke-virtual {v1, v2}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v8}, Lc8/Dgg;->getNumberInt(Ljava/lang/Object;I)I

    move-result v8

    .line 236
    :cond_2
    const-string/jumbo v1, "hasFixedSize"

    invoke-virtual {v6, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 237
    const-string/jumbo v1, "hasFixedSize"

    invoke-virtual {v6, v1}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 239
    :cond_3
    new-instance v9, Lc8/ifg;

    invoke-direct {v9, p0}, Lc8/ifg;-><init>(Lc8/gfg;)V

    .line 240
    .local v9, "recyclerViewBaseAdapter":Lc8/ifg;
    invoke-virtual {v9, v11}, Lc8/ifg;->setHasStableIds(Z)V

    .line 241
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/efg;->setItemAnimator(Lc8/qv;)V

    .line 242
    if-eq v8, v12, :cond_4

    .line 243
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    invoke-virtual {v1, v8}, Lc8/efg;->setItemViewCacheSize(I)V

    .line 245
    :cond_4
    invoke-virtual {v0}, Lc8/Ifg;->getSwipeLayout()Lc8/Gfg;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 246
    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v1

    const-string/jumbo v2, "nestedScrollingEnabled"

    invoke-virtual {v1, v2}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 247
    invoke-virtual {v0}, Lc8/Ifg;->getSwipeLayout()Lc8/Gfg;

    move-result-object v1

    invoke-virtual {v1, v11}, Lc8/Gfg;->setNestedScrollingEnabled(Z)V

    .line 250
    :cond_5
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    invoke-virtual {v1, v7}, Lc8/efg;->setHasFixedSize(Z)V

    .line 251
    invoke-virtual {v0, v9}, Lc8/Ifg;->setRecyclerViewBaseAdapter(Lc8/ifg;)V

    .line 252
    invoke-virtual {v0, v12}, Lc8/Ifg;->setOverScrollMode(I)V

    .line 253
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    invoke-virtual {v1}, Lc8/efg;->clearOnScrollListeners()V

    .line 254
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    iget-object v2, p0, Lc8/Bdg;->mViewOnScrollListener:Lc8/kfg;

    invoke-virtual {v1, v2}, Lc8/efg;->addOnScrollListener(Lc8/Cv;)V

    .line 255
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    new-instance v2, Lc8/tdg;

    invoke-direct {v2, p0}, Lc8/tdg;-><init>(Lc8/Bdg;)V

    invoke-virtual {v1, v2}, Lc8/efg;->addOnScrollListener(Lc8/Cv;)V

    .line 296
    invoke-virtual {v0}, Lc8/Ifg;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lc8/udg;

    invoke-direct {v2, p0}, Lc8/udg;-><init>(Lc8/Bdg;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 311
    new-instance v1, Lc8/vdg;

    invoke-direct {v1, p0}, Lc8/vdg;-><init>(Lc8/Bdg;)V

    iput-object v1, p0, Lc8/Bdg;->listUpdateRunnable:Ljava/lang/Runnable;

    .line 339
    return-object v0
.end method

.method public insertData(Lcom/alibaba/fastjson/JSONObject;I)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "index"    # I
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 770
    if-nez p1, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 776
    iget-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONArray;->add(ILjava/lang/Object;)V

    .line 777
    invoke-direct {p0}, Lc8/Bdg;->notifyUpdateList()V

    goto :goto_0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lc8/Bdg;->isScrollable:Z

    return v0
.end method

.method protected measure(II)Lc8/pbg;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 364
    sget-object v3, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-static {v3}, Lc8/Jgg;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 365
    .local v1, "screenH":I
    invoke-virtual {p0}, Lc8/Bdg;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Jgg;->getWeexHeight(Ljava/lang/String;)I

    move-result v2

    .line 366
    .local v2, "weexH":I
    if-lt v2, v1, :cond_0

    .end local v1    # "screenH":I
    :goto_0
    if-le p2, v1, :cond_1

    invoke-virtual {p0}, Lc8/Bdg;->getAbsoluteY()I

    move-result v3

    sub-int v0, v2, v3

    .line 367
    .local v0, "outHeight":I
    :goto_1
    int-to-float v3, p1

    iget v4, p0, Lc8/Bdg;->mColumnGap:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-super {p0, v3, v0}, Lc8/scg;->measure(II)Lc8/pbg;

    move-result-object v3

    return-object v3

    .end local v0    # "outHeight":I
    .restart local v1    # "screenH":I
    :cond_0
    move v1, v2

    .line 366
    goto :goto_0

    .end local v1    # "screenH":I
    :cond_1
    move v0, p2

    goto :goto_1
.end method

.method public notifyAppearStateChange(IIII)V
    .locals 33
    .param p1, "firstVisible"    # I
    .param p2, "lastVisible"    # I
    .param p3, "directionX"    # I
    .param p4, "directionY"    # I

    .prologue
    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bdg;->mAppearHelpers:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bdg;->mAppearHelpers:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v31

    if-gtz v31, :cond_1

    .line 1416
    :cond_0
    return-void

    .line 1315
    :cond_1
    if-lez p4, :cond_8

    const-string/jumbo v11, "up"

    .line 1317
    .local v11, "direction":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lc8/Bdg;->getOrientation()I

    move-result v31

    if-nez v31, :cond_2

    if-eqz p3, :cond_2

    .line 1318
    if-lez p3, :cond_a

    const-string/jumbo v11, "left"

    .line 1320
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v31

    check-cast v31, Lc8/Ifg;

    invoke-virtual/range {v31 .. v31}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v27

    check-cast v27, Lc8/Rv;

    .line 1321
    .local v27, "recyclerView":Lc8/Rv;
    move/from16 v26, p1

    .local v26, "position":I
    :goto_2
    move/from16 v0, v26

    move/from16 v1, p2

    if-gt v0, v1, :cond_d

    .line 1322
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lc8/Bdg;->getItemViewType(I)I

    move-result v30

    .line 1323
    .local v30, "type":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bdg;->mAppearHelpers:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 1324
    .local v19, "helpers":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    if-eqz v19, :cond_c

    .line 1327
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lc8/bbg;

    .line 1328
    .local v18, "helper":Lc8/bbg;
    invoke-virtual/range {v18 .. v18}, Lc8/bbg;->isWatch()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 1331
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lc8/Rv;->findViewHolderForAdapterPosition(I)Lc8/Qv;

    move-result-object v22

    check-cast v22, Lc8/sdg;

    .line 1332
    .local v22, "itemHolder":Lc8/sdg;
    if-eqz v22, :cond_c

    invoke-virtual/range {v22 .. v22}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v31

    if-eqz v31, :cond_c

    .line 1335
    invoke-virtual/range {v22 .. v22}, Lc8/sdg;->getComponent()Lc8/tbg;

    move-result-object v31

    invoke-virtual/range {v18 .. v18}, Lc8/bbg;->getAwareChild()Lc8/tbg;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lc8/Bdg;->findChildListByRef(Lc8/tbg;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1336
    .local v7, "childListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-eqz v7, :cond_c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v31

    if-eqz v31, :cond_c

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bdg;->mDisAppearWatchList:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 1341
    .local v12, "disAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    if-nez v12, :cond_4

    .line 1342
    new-instance v12, Landroid/support/v4/util/ArrayMap;

    .end local v12    # "disAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    invoke-direct {v12}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1343
    .restart local v12    # "disAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bdg;->mDisAppearWatchList:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lc8/bbg;->getAwareChild()Lc8/tbg;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 1347
    .local v9, "componentDisAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    if-nez v9, :cond_5

    .line 1348
    new-instance v9, Landroid/support/v4/util/ArrayMap;

    .end local v9    # "componentDisAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-direct {v9}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1349
    .restart local v9    # "componentDisAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual/range {v18 .. v18}, Lc8/bbg;->getAwareChild()Lc8/tbg;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v12, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    :cond_5
    const/16 v24, 0x0

    .local v24, "m":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v24

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    .line 1353
    move/from16 v0, v24

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/tbg;

    .line 1354
    .local v6, "childLisener":Lc8/tbg;
    invoke-virtual {v6}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v31

    if-eqz v31, :cond_7

    .line 1357
    invoke-virtual {v6}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lc8/bbg;->isViewVisible(Landroid/view/View;)Z

    move-result v3

    .line 1358
    .local v3, "appear":Z
    invoke-virtual {v6}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->hashCode()I

    move-result v23

    .line 1359
    .local v23, "key":I
    if-eqz v3, :cond_b

    .line 1360
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_7

    .line 1361
    const-string/jumbo v31, "appear"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0, v11}, Lc8/tbg;->notifyWatchAppearDisappearEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const/4 v13, 0x0

    .line 1363
    .local v13, "eventArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v31

    if-eqz v31, :cond_6

    invoke-virtual {v6}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Landroid/support/v4/util/ArrayMap;

    move-result-object v31

    if-eqz v31, :cond_6

    invoke-virtual {v6}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Landroid/support/v4/util/ArrayMap;

    move-result-object v31

    const-string/jumbo v32, "disappear"

    invoke-virtual/range {v31 .. v32}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    if-eqz v31, :cond_6

    .line 1366
    invoke-virtual {v6}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Landroid/support/v4/util/ArrayMap;

    move-result-object v31

    const-string/jumbo v32, "disappear"

    invoke-virtual/range {v31 .. v32}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "eventArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v13, Ljava/util/List;

    .line 1368
    .restart local v13    # "eventArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v9, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    .end local v3    # "appear":Z
    .end local v13    # "eventArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v23    # "key":I
    :cond_7
    :goto_4
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    .line 1315
    .end local v6    # "childLisener":Lc8/tbg;
    .end local v7    # "childListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    .end local v9    # "componentDisAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v11    # "direction":Ljava/lang/String;
    .end local v12    # "disAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    .end local v18    # "helper":Lc8/bbg;
    .end local v19    # "helpers":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "itemHolder":Lc8/sdg;
    .end local v24    # "m":I
    .end local v26    # "position":I
    .end local v27    # "recyclerView":Lc8/Rv;
    .end local v30    # "type":I
    :cond_8
    if-gez p4, :cond_9

    const-string/jumbo v11, "down"

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1318
    .restart local v11    # "direction":Ljava/lang/String;
    :cond_a
    const-string/jumbo v11, "right"

    goto/16 :goto_1

    .line 1371
    .restart local v3    # "appear":Z
    .restart local v6    # "childLisener":Lc8/tbg;
    .restart local v7    # "childListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    .restart local v9    # "componentDisAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    .restart local v12    # "disAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    .restart local v18    # "helper":Lc8/bbg;
    .restart local v19    # "helpers":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v22    # "itemHolder":Lc8/sdg;
    .restart local v23    # "key":I
    .restart local v24    # "m":I
    .restart local v26    # "position":I
    .restart local v27    # "recyclerView":Lc8/Rv;
    .restart local v30    # "type":I
    :cond_b
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 1372
    const-string/jumbo v31, "disappear"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0, v11}, Lc8/tbg;->notifyWatchAppearDisappearEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1321
    .end local v3    # "appear":Z
    .end local v6    # "childLisener":Lc8/tbg;
    .end local v7    # "childListeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    .end local v9    # "componentDisAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v12    # "disAppearList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    .end local v18    # "helper":Lc8/bbg;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "itemHolder":Lc8/sdg;
    .end local v23    # "key":I
    .end local v24    # "m":I
    :cond_c
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2

    .line 1381
    .end local v19    # "helpers":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .end local v30    # "type":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lc8/Bdg;->getItemCount()I

    move-result v10

    .line 1382
    .local v10, "count":I
    const/16 v26, 0x0

    :goto_5
    move/from16 v0, v26

    if-ge v0, v10, :cond_0

    .line 1383
    move/from16 v0, v26

    move/from16 v1, p1

    if-lt v0, v1, :cond_f

    move/from16 v0, v26

    move/from16 v1, p2

    if-gt v0, v1, :cond_f

    .line 1384
    add-int/lit8 v26, p2, 0x1

    .line 1382
    :cond_e
    :goto_6
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 1387
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bdg;->mDisAppearWatchList:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map;

    .line 1388
    .local v25, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    if-eqz v25, :cond_e

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bdg;->mTemplateSources:Ljava/util/Map;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lc8/Bdg;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lc8/jdg;

    .line 1392
    .local v29, "template":Lc8/jdg;
    if-eqz v29, :cond_0

    .line 1395
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 1396
    .local v4, "cellWatcherEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_10
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1397
    .local v5, "cellWatcherEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 1398
    .local v28, "ref":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lc8/Bdg;->findChildByRef(Lc8/tbg;Ljava/lang/String;)Lc8/tbg;

    move-result-object v8

    .line 1399
    .local v8, "component":Lc8/tbg;
    if-eqz v8, :cond_10

    .line 1402
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    .line 1403
    .local v16, "eventWatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz v16, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v31

    if-eqz v31, :cond_10

    .line 1406
    invoke-virtual {v8}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v17

    .line 1407
    .local v17, "events":Lcom/taobao/weex/dom/WXEvent;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 1408
    .local v14, "eventWatcherEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_11

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1409
    .local v15, "eventWatcherEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    const-string/jumbo v32, "disappear"

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/List;

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/WXEvent;->putEventBindingArgsValue(Ljava/lang/String;Ljava/util/List;)V

    .line 1410
    const-string/jumbo v31, "disappear"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0, v11}, Lc8/tbg;->notifyWatchAppearDisappearEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1412
    .end local v15    # "eventWatcherEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    :cond_11
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->clear()V

    goto :goto_7

    .line 1414
    .end local v5    # "cellWatcherEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    .end local v8    # "component":Lc8/tbg;
    .end local v14    # "eventWatcherEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;>;"
    .end local v16    # "eventWatchers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v17    # "events":Lcom/taobao/weex/dom/WXEvent;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v28    # "ref":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Bdg;->mDisAppearWatchList:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v31, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6
.end method

.method public onBeforeScroll(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1277
    iget-object v0, p0, Lc8/Bdg;->mStickyHelper:Lc8/rdg;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lc8/Bdg;->mStickyHelper:Lc8/rdg;

    invoke-virtual {v0, p1, p2}, Lc8/rdg;->onBeforeScroll(II)V

    .line 1280
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lc8/Qv;I)V
    .locals 0
    .param p1, "x0"    # Lc8/Qv;
    .param p2, "x1"    # I

    .prologue
    .line 99
    check-cast p1, Lc8/sdg;

    .end local p1    # "x0":Lc8/Qv;
    invoke-virtual {p0, p1, p2}, Lc8/Bdg;->onBindViewHolder(Lc8/sdg;I)V

    return-void
.end method

.method public onBindViewHolder(Lc8/sdg;I)V
    .locals 12
    .param p1, "templateViewHolder"    # Lc8/sdg;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    .line 1024
    if-nez p1, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    invoke-virtual {p1}, Lc8/sdg;->getTemplate()Lc8/jdg;

    move-result-object v0

    .line 1028
    .local v0, "component":Lc8/jdg;
    if-eqz v0, :cond_0

    .line 1031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1032
    .local v4, "start":J
    invoke-virtual {p1}, Lc8/sdg;->getHolderPosition()I

    move-result v7

    if-ltz v7, :cond_2

    move v2, v6

    .line 1033
    .local v2, "resuse":Z
    :goto_1
    invoke-virtual {p1, p2}, Lc8/sdg;->setHolderPosition(I)V

    .line 1034
    iget-object v7, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v7, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1035
    .local v1, "data":Ljava/lang/Object;
    invoke-virtual {v0}, Lc8/jdg;->getRenderData()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_3

    .line 1036
    invoke-virtual {v0, v6}, Lc8/jdg;->setHasLayout(Z)V

    goto :goto_0

    .line 1032
    .end local v1    # "data":Ljava/lang/Object;
    .end local v2    # "resuse":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1038
    .restart local v1    # "data":Ljava/lang/Object;
    .restart local v2    # "resuse":Z
    :cond_3
    invoke-direct {p0, p2, v1}, Lc8/Bdg;->getStackContextForPosition(ILjava/lang/Object;)Lc8/RZf;

    move-result-object v7

    invoke-static {v0, v7}, Lc8/Fcg;->doRender(Lc8/tbg;Lc8/RZf;)Ljava/util/List;

    move-result-object v3

    .line 1039
    .local v3, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-static {v3}, Lc8/Fcg;->doInitCompontent(Ljava/util/List;)V

    .line 1040
    invoke-virtual {v0, v1}, Lc8/jdg;->setRenderData(Ljava/lang/Object;)V

    .line 1041
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1042
    const-string/jumbo v7, "WXRecyclerTemplateList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p2}, Lc8/Bdg;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " onBindViewHolder render used "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :cond_4
    invoke-virtual {v0}, Lc8/jdg;->isHasLayout()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1045
    const/4 v2, 0x1

    .line 1047
    :cond_5
    invoke-static {p1, v6}, Lc8/Ecg;->doLayoutAsync(Lc8/sdg;Z)V

    .line 1048
    invoke-virtual {v0, v6}, Lc8/jdg;->setHasLayout(Z)V

    .line 1049
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1050
    const-string/jumbo v6, "WXRecyclerTemplateList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p2}, Lc8/Bdg;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " onBindViewHolder layout used "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/Qv;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lc8/Bdg;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/sdg;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/sdg;
    .locals 16
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1057
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/Bdg;->mTemplateViewTypes:Landroid/support/v4/util/ArrayMap;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1058
    .local v8, "template":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/Bdg;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/jdg;

    .line 1059
    .local v5, "source":Lc8/jdg;
    if-nez v5, :cond_0

    .line 1060
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lc8/Bdg;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1061
    .local v10, "view":Landroid/widget/FrameLayout;
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    new-instance v9, Lc8/sdg;

    move/from16 v0, p2

    invoke-direct {v9, v10, v0}, Lc8/sdg;-><init>(Landroid/view/View;I)V

    .line 1102
    .end local v10    # "view":Landroid/widget/FrameLayout;
    :goto_0
    return-object v9

    .line 1064
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/Bdg;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/qdg;

    .line 1065
    .local v2, "cache":Lc8/qdg;
    const/4 v4, 0x0

    .line 1066
    .local v4, "component":Lc8/jdg;
    const/4 v3, 0x1

    .line 1067
    .local v3, "cacheHit":Z
    if-eqz v2, :cond_1

    iget-object v11, v2, Lc8/qdg;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v11, :cond_1

    iget-object v11, v2, Lc8/qdg;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 1068
    iget-object v11, v2, Lc8/qdg;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "component":Lc8/jdg;
    check-cast v4, Lc8/jdg;

    .line 1070
    .restart local v4    # "component":Lc8/jdg;
    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v11, v2, Lc8/qdg;->isLoadIng:Z

    if-nez v11, :cond_3

    .line 1071
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lc8/Bdg;->asyncLoadTemplateCache(Ljava/lang/String;)V

    .line 1073
    :cond_3
    if-nez v4, :cond_4

    .line 1074
    const/4 v3, 0x0

    .line 1075
    invoke-virtual {v5}, Lc8/jdg;->isSourceUsed()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1076
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lc8/jdg;->setSourceUsed(Z)V

    .line 1077
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lc8/Bdg;->ensureSourceCellRenderWithData(Lc8/jdg;)V

    .line 1078
    move-object v4, v5

    .line 1079
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1080
    const-string/jumbo v11, "WXRecyclerTemplateList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " onCreateViewHolder source"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_4
    if-nez v4, :cond_5

    .line 1085
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1086
    .local v6, "start":J
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lc8/Bdg;->copyCell(Lc8/jdg;)Lc8/tbg;

    move-result-object v4

    .end local v4    # "component":Lc8/jdg;
    check-cast v4, Lc8/jdg;

    .line 1087
    .restart local v4    # "component":Lc8/jdg;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1088
    const-string/jumbo v11, "WXRecyclerTemplateList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " onCreateViewHolder copy used "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v6

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    .end local v6    # "start":J
    :cond_5
    invoke-virtual {v4}, Lc8/jdg;->isLazy()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1092
    const/4 v11, 0x0

    invoke-static {v4, v8, v11}, Lc8/Bdg;->doInitLazyCell(Lc8/jdg;Ljava/lang/String;Z)V

    .line 1093
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1094
    const-string/jumbo v11, "WXRecyclerTemplateList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " onCreateViewHolder  cache hit "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " idle init false "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_6
    :goto_1
    new-instance v9, Lc8/sdg;

    move/from16 v0, p2

    invoke-direct {v9, v4, v0}, Lc8/sdg;-><init>(Lc8/jdg;I)V

    .line 1102
    .local v9, "templateViewHolder":Lc8/sdg;
    goto/16 :goto_0

    .line 1097
    .end local v9    # "templateViewHolder":Lc8/sdg;
    :cond_7
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1098
    const-string/jumbo v11, "WXRecyclerTemplateList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " onCreateViewHolder  cache hit "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " idle init true"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onFailedToRecycleView(Lc8/Qv;)Z
    .locals 1
    .param p1, "x0"    # Lc8/Qv;

    .prologue
    .line 99
    check-cast p1, Lc8/sdg;

    .end local p1    # "x0":Lc8/Qv;
    invoke-virtual {p0, p1}, Lc8/Bdg;->onFailedToRecycleView(Lc8/sdg;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lc8/sdg;)Z
    .locals 1
    .param p1, "holder"    # Lc8/sdg;

    .prologue
    .line 1250
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 99
    check-cast p1, Lc8/Ifg;

    .end local p1    # "x0":Landroid/view/View;
    invoke-virtual {p0, p1}, Lc8/Bdg;->onHostViewInitialized(Lc8/Ifg;)V

    return-void
.end method

.method protected onHostViewInitialized(Lc8/Ifg;)V
    .locals 3
    .param p1, "host"    # Lc8/Ifg;

    .prologue
    .line 347
    invoke-super {p0, p1}, Lc8/scg;->onHostViewInitialized(Landroid/view/View;)V

    .line 348
    invoke-virtual {p1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    .line 349
    .local v0, "recyclerView":Lc8/efg;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/efg;->getAdapter()Lc8/iv;

    move-result-object v1

    if-nez v1, :cond_1

    .line 350
    :cond_0
    const-string/jumbo v1, "WXRecyclerTemplateList"

    const-string/jumbo v2, "RecyclerView is not found or Adapter is not bound"

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_1
    return-void
.end method

.method public onLoadMore(I)V
    .locals 5
    .param p1, "offScreenY"    # I

    .prologue
    .line 1285
    :try_start_0
    invoke-virtual {p0}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/xYf;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v1

    .line 1287
    .local v1, "offset":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1288
    const-string/jumbo v1, "0"

    .line 1290
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lc8/Bdg;->getInstance()Lc8/nVf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v4

    invoke-static {v3, v4}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v2

    .line 1292
    .local v2, "offsetParsed":F
    int-to-float v3, p1

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_2

    iget-object v3, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v3, :cond_2

    .line 1293
    iget v3, p0, Lc8/Bdg;->mListCellCount:I

    iget-object v4, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lc8/Bdg;->mForceLoadmoreNextTime:Z

    if-eqz v3, :cond_2

    .line 1295
    :cond_1
    const-string/jumbo v3, "loadmore"

    invoke-virtual {p0, v3}, Lc8/Bdg;->fireEvent(Ljava/lang/String;)V

    .line 1296
    iget-object v3, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    iput v3, p0, Lc8/Bdg;->mListCellCount:I

    .line 1297
    const/4 v3, 0x0

    iput-boolean v3, p0, Lc8/Bdg;->mForceLoadmoreNextTime:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    .end local v1    # "offset":Ljava/lang/String;
    .end local v2    # "offsetParsed":F
    :cond_2
    :goto_0
    return-void

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WXRecyclerTemplateListonLoadMore :"

    invoke-static {v3, v0}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic onViewRecycled(Lc8/Qv;)V
    .locals 0
    .param p1, "x0"    # Lc8/Qv;

    .prologue
    .line 99
    check-cast p1, Lc8/sdg;

    .end local p1    # "x0":Lc8/Qv;
    invoke-virtual {p0, p1}, Lc8/Bdg;->onViewRecycled(Lc8/sdg;)V

    return-void
.end method

.method public onViewRecycled(Lc8/sdg;)V
    .locals 0
    .param p1, "holder"    # Lc8/sdg;

    .prologue
    .line 1020
    return-void
.end method

.method public remove(Lc8/tbg;Z)V
    .locals 0
    .param p1, "child"    # Lc8/tbg;
    .param p2, "destroy"    # Z

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lc8/Bdg;->removeFooterOrHeader(Lc8/tbg;)V

    .line 634
    invoke-super {p0, p1, p2}, Lc8/scg;->remove(Lc8/tbg;Z)V

    .line 635
    return-void
.end method

.method public removeData(Ljava/util/List;)V
    .locals 5
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    .local p1, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    const/4 v2, 0x0

    .line 798
    .local v2, "offset":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 799
    .local v1, "index":Ljava/lang/Integer;
    iget-object v3, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 803
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 804
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 805
    iget-object v3, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    .line 806
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 809
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_3
    invoke-direct {p0}, Lc8/Bdg;->notifyUpdateList()V

    goto :goto_0
.end method

.method public resetLoadmore()V
    .locals 1
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Bdg;->mForceLoadmoreNextTime:Z

    .line 816
    const/4 v0, 0x0

    iput v0, p0, Lc8/Bdg;->mListCellCount:I

    .line 817
    return-void
.end method

.method public scrollTo(ILjava/util/Map;)V
    .locals 6
    .param p1, "position"    # I
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-ltz p1, :cond_1

    .line 467
    const/4 v2, 0x1

    .line 468
    .local v2, "smooth":Z
    if-eqz p2, :cond_0

    .line 469
    const-string/jumbo v4, "animated"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 472
    :cond_0
    move v1, p1

    .line 473
    .local v1, "pos":I
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    .line 474
    .local v0, "bounceRecyclerView":Lc8/Ifg;
    if-nez v0, :cond_2

    .line 480
    .end local v0    # "bounceRecyclerView":Lc8/Ifg;
    .end local v1    # "pos":I
    .end local v2    # "smooth":Z
    :cond_1
    :goto_0
    return-void

    .line 477
    .restart local v0    # "bounceRecyclerView":Lc8/Ifg;
    .restart local v1    # "pos":I
    .restart local v2    # "smooth":Z
    :cond_2
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lc8/efg;

    .line 478
    .local v3, "view":Lc8/efg;
    const/4 v4, 0x0

    invoke-virtual {p0}, Lc8/Bdg;->getOrientation()I

    move-result v5

    invoke-virtual {v3, v2, v1, v4, v5}, Lc8/efg;->scrollTo(ZIII)V

    goto :goto_0
.end method

.method public scrollTo(Lc8/tbg;Ljava/util/Map;)V
    .locals 17
    .param p1, "component"    # Lc8/tbg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 486
    .local v6, "offsetFloat":F
    const/4 v10, 0x1

    .line 487
    .local v10, "smooth":Z
    const/4 v9, -0x1

    .line 488
    .local v9, "position":I
    const/4 v12, -0x1

    .line 489
    .local v12, "typeIndex":I
    if-eqz p2, :cond_1

    .line 490
    const-string/jumbo v15, "offset"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_6

    const-string/jumbo v7, "0"

    .line 491
    .local v7, "offsetStr":Ljava/lang/String;
    :goto_0
    const-string/jumbo v15, "animated"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 492
    if-eqz v7, :cond_0

    .line 494
    :try_start_0
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lc8/Bdg;->getInstance()Lc8/nVf;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lc8/Jgg;->getRealPxByWidth(FI)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 499
    :cond_0
    :goto_1
    const-string/jumbo v15, "cellIndex"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v15 .. v16}, Lc8/Dgg;->getNumberInt(Ljava/lang/Object;I)I

    move-result v9

    .line 500
    const-string/jumbo v15, "typeIndex"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v15 .. v16}, Lc8/Dgg;->getNumberInt(Ljava/lang/Object;I)I

    move-result v12

    .line 502
    .end local v7    # "offsetStr":Ljava/lang/String;
    :cond_1
    invoke-direct/range {p0 .. p1}, Lc8/Bdg;->findCell(Lc8/tbg;)Lc8/jdg;

    move-result-object v2

    .line 503
    .local v2, "cell":Lc8/jdg;
    if-ltz v12, :cond_4

    .line 504
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v15, :cond_4

    invoke-virtual/range {p1 .. p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 505
    const/4 v13, 0x0

    .line 506
    .local v13, "typePosition":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v15

    if-ge v4, v15, :cond_3

    .line 507
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/Bdg;->getSourceTemplate(I)Lc8/jdg;

    move-result-object v11

    .line 508
    .local v11, "template":Lc8/jdg;
    if-eqz v11, :cond_7

    .line 511
    invoke-virtual {v2}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lc8/jdg;->getRef()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 512
    add-int/lit8 v13, v13, 0x1

    .line 514
    :cond_2
    if-le v13, v12, :cond_7

    .line 515
    move v9, v4

    .line 519
    .end local v11    # "template":Lc8/jdg;
    :cond_3
    if-gez v9, :cond_4

    .line 520
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    .line 525
    .end local v4    # "i":I
    .end local v13    # "typePosition":I
    :cond_4
    float-to-int v5, v6

    .line 526
    .local v5, "offset":I
    invoke-virtual/range {p0 .. p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    .line 527
    .local v1, "bounceRecyclerView":Lc8/Ifg;
    if-nez v1, :cond_8

    .line 535
    :cond_5
    :goto_3
    return-void

    .line 490
    .end local v1    # "bounceRecyclerView":Lc8/Ifg;
    .end local v2    # "cell":Lc8/jdg;
    .end local v5    # "offset":I
    :cond_6
    const-string/jumbo v15, "offset"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 495
    .restart local v7    # "offsetStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 496
    .local v3, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Float parseFloat error :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 506
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "offsetStr":Ljava/lang/String;
    .restart local v2    # "cell":Lc8/jdg;
    .restart local v4    # "i":I
    .restart local v11    # "template":Lc8/jdg;
    .restart local v13    # "typePosition":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 530
    .end local v4    # "i":I
    .end local v11    # "template":Lc8/jdg;
    .end local v13    # "typePosition":I
    .restart local v1    # "bounceRecyclerView":Lc8/Ifg;
    .restart local v5    # "offset":I
    :cond_8
    if-ltz v9, :cond_5

    .line 531
    move v8, v9

    .line 532
    .local v8, "pos":I
    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v14

    check-cast v14, Lc8/efg;

    .line 533
    .local v14, "view":Lc8/efg;
    invoke-virtual/range {p0 .. p0}, Lc8/Bdg;->getOrientation()I

    move-result v15

    invoke-virtual {v14, v10, v8, v5, v15}, Lc8/efg;->scrollTo(ZIII)V

    goto :goto_3
.end method

.method public setColumnCount(I)V
    .locals 6
    .param p1, "columnCount"    # I
    .annotation runtime Lc8/vbg;
        name = "columnCount"
    .end annotation

    .prologue
    .line 724
    iget-object v1, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v1}, Lc8/NYf;->getColumnCount()I

    move-result v1

    iget v2, p0, Lc8/Bdg;->mColumnCount:I

    if-eq v1, v2, :cond_0

    .line 725
    invoke-direct {p0}, Lc8/Bdg;->updateRecyclerAttr()V

    .line 726
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    .line 727
    .local v0, "wxRecyclerView":Lc8/efg;
    invoke-virtual {p0}, Lc8/Bdg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lc8/Bdg;->mLayoutType:I

    iget v3, p0, Lc8/Bdg;->mColumnCount:I

    iget v4, p0, Lc8/Bdg;->mColumnGap:F

    invoke-virtual {p0}, Lc8/Bdg;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lc8/efg;->initView(Landroid/content/Context;IIFI)V

    .line 729
    .end local v0    # "wxRecyclerView":Lc8/efg;
    :cond_0
    return-void
.end method

.method public setColumnGap(F)V
    .locals 6
    .param p1, "columnGap"    # F
    .annotation runtime Lc8/vbg;
        name = "columnGap"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 733
    iget-object v1, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v1}, Lc8/NYf;->getColumnGap()F

    move-result v1

    iget v2, p0, Lc8/Bdg;->mColumnGap:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 734
    invoke-direct {p0}, Lc8/Bdg;->updateRecyclerAttr()V

    .line 735
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    .line 736
    .local v0, "wxRecyclerView":Lc8/efg;
    invoke-virtual {p0}, Lc8/Bdg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lc8/Bdg;->mLayoutType:I

    iget v3, p0, Lc8/Bdg;->mColumnCount:I

    iget v4, p0, Lc8/Bdg;->mColumnGap:F

    invoke-virtual {p0}, Lc8/Bdg;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lc8/efg;->initView(Landroid/content/Context;IIFI)V

    .line 738
    .end local v0    # "wxRecyclerView":Lc8/efg;
    :cond_0
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 6
    .param p1, "columnCount"    # I
    .annotation runtime Lc8/vbg;
        name = "columnWidth"
    .end annotation

    .prologue
    .line 703
    iget-object v1, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v1}, Lc8/NYf;->getColumnWidth()F

    move-result v1

    iget v2, p0, Lc8/Bdg;->mColumnWidth:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 704
    invoke-direct {p0}, Lc8/Bdg;->updateRecyclerAttr()V

    .line 705
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    .line 706
    .local v0, "wxRecyclerView":Lc8/efg;
    invoke-virtual {p0}, Lc8/Bdg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lc8/Bdg;->mLayoutType:I

    iget v3, p0, Lc8/Bdg;->mColumnCount:I

    iget v4, p0, Lc8/Bdg;->mColumnGap:F

    invoke-virtual {p0}, Lc8/Bdg;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lc8/efg;->initView(Landroid/content/Context;IIFI)V

    .line 708
    .end local v0    # "wxRecyclerView":Lc8/efg;
    :cond_0
    return-void
.end method

.method public setListData(Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Object;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 748
    iget-object v1, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 749
    .local v0, "update":Z
    :goto_0
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    .line 750
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    .end local p1    # "param":Ljava/lang/Object;
    iput-object p1, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 752
    :cond_0
    if-eqz v0, :cond_1

    .line 753
    invoke-direct {p0}, Lc8/Bdg;->notifyUpdateList()V

    .line 755
    :cond_1
    return-void

    .line 748
    .end local v0    # "update":Z
    .restart local p1    # "param":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOffsetAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I
    .annotation runtime Lc8/vbg;
        name = "offsetAccuracy"
    .end annotation

    .prologue
    .line 688
    int-to-float v1, p1

    invoke-virtual {p0}, Lc8/Bdg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v0

    .line 689
    .local v0, "real":F
    float-to-int v1, v0

    iput v1, p0, Lc8/Bdg;->mOffsetAccuracy:I

    .line 690
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/16 v5, 0xa

    const/4 v3, 0x1

    .line 647
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 682
    invoke-super {p0, p1, p2}, Lc8/scg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    :cond_1
    :goto_1
    :pswitch_0
    return v3

    .line 647
    :sswitch_0
    const-string/jumbo v6, "listData"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "alias"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "index"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "templateKey"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "templateType"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "loadmoreoffset"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v6, "scrollable"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v6, "showScrollbar"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v6, "itemViewCacheSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v6, "hasFixedSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v6, "offsetAccuracy"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto/16 :goto_0

    .line 649
    :pswitch_1
    invoke-virtual {p0, p2}, Lc8/Bdg;->setListData(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 653
    :pswitch_2
    iget-object v4, p0, Lc8/Bdg;->listDataItemKey:Ljava/lang/String;

    invoke-static {p2, v4}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/Bdg;->listDataItemKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 656
    :pswitch_3
    iget-object v4, p0, Lc8/Bdg;->listDataIndexKey:Ljava/lang/String;

    invoke-static {p2, v4}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/Bdg;->listDataIndexKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 660
    :pswitch_4
    const-string/jumbo v4, "templateType"

    invoke-static {p2, v4}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/Bdg;->listDataTemplateKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 665
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2, v4}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 666
    .local v2, "scrollable":Z
    invoke-virtual {p0, v2}, Lc8/Bdg;->setScrollable(Z)V

    goto/16 :goto_1

    .line 669
    .end local v2    # "scrollable":Z
    :pswitch_6
    const/4 v4, 0x0

    invoke-static {p2, v4}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 670
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 671
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lc8/Bdg;->setShowScrollbar(Z)V

    goto/16 :goto_1

    .line 678
    .end local v1    # "result":Ljava/lang/Boolean;
    :pswitch_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v4}, Lc8/Dgg;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 679
    .local v0, "accuracy":I
    invoke-virtual {p0, v0}, Lc8/Bdg;->setOffsetAccuracy(I)V

    goto/16 :goto_1

    .line 647
    :sswitch_data_0
    .sparse-switch
        -0x3a2bfd2c -> :sswitch_4
        -0x2a89f2d5 -> :sswitch_8
        -0x142fc3e5 -> :sswitch_9
        -0xd52a857 -> :sswitch_7
        -0x6b59672 -> :sswitch_5
        -0x55c154 -> :sswitch_a
        0x3f94da7 -> :sswitch_6
        0x5899650 -> :sswitch_1
        0x5fb28d2 -> :sswitch_2
        0x502d9568 -> :sswitch_0
        0x697a4f85 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public setScrollable(Z)V
    .locals 2
    .param p1, "scrollable"    # Z
    .annotation runtime Lc8/vbg;
        name = "scrollable"
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    .line 743
    .local v0, "inner":Lc8/efg;
    invoke-virtual {v0, p1}, Lc8/efg;->setScrollable(Z)V

    .line 744
    return-void
.end method

.method public setShowScrollbar(Z)V
    .locals 2
    .param p1, "show"    # Z
    .annotation runtime Lc8/vbg;
        name = "showScrollbar"
    .end annotation

    .prologue
    .line 712
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    invoke-virtual {p0}, Lc8/Bdg;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 716
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    invoke-virtual {v0, p1}, Lc8/efg;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 718
    :cond_2
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    invoke-virtual {v0, p1}, Lc8/efg;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public unbindAppearEvent(Lc8/tbg;)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    const/4 v0, 0x0

    .line 455
    invoke-direct {p0, p1, v0, v0}, Lc8/Bdg;->setAppearanceWatch(Lc8/tbg;IZ)V

    .line 456
    return-void
.end method

.method public unbindDisappearEvent(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 460
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lc8/Bdg;->setAppearanceWatch(Lc8/tbg;IZ)V

    .line 461
    return-void
.end method

.method public unbindStickStyle(Lc8/tbg;)V
    .locals 3
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 388
    const-class v1, Lc8/jdg;

    invoke-virtual {p0, p1, v1}, Lc8/Bdg;->findParentType(Lc8/tbg;Ljava/lang/Class;)Lc8/tbg;

    move-result-object v0

    .line 389
    .local v0, "template":Lc8/tbg;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Bdg;->mStickyHelper:Lc8/rdg;

    if-nez v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v1, p0, Lc8/Bdg;->mStickyHelper:Lc8/rdg;

    invoke-virtual {v1}, Lc8/rdg;->getStickyTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lc8/Bdg;->mStickyHelper:Lc8/rdg;

    invoke-virtual {v1}, Lc8/rdg;->getStickyTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 396
    invoke-direct {p0}, Lc8/Bdg;->notifyUpdateList()V

    goto :goto_0
.end method

.method public updateData(Lcom/alibaba/fastjson/JSONObject;I)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "index"    # I
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 782
    if-nez p1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 788
    iget-object v0, p0, Lc8/Bdg;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-direct {p0}, Lc8/Bdg;->notifyUpdateList()V

    goto :goto_0
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lc8/scg;->updateProperties(Ljava/util/Map;)V

    .line 823
    const-string/jumbo v1, "padding"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "paddingLeft"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "paddingRight"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 827
    :cond_0
    iget v1, p0, Lc8/Bdg;->mPaddingLeft:F

    iget-object v2, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v2}, Lc8/NYf;->getPadding()Lc8/IZf;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/IZf;->get(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lc8/Bdg;->mPaddingRight:F

    iget-object v2, p0, Lc8/Bdg;->mDomObject:Lc8/NYf;

    invoke-virtual {v2}, Lc8/NYf;->getPadding()Lc8/IZf;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lc8/IZf;->get(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 829
    :cond_1
    invoke-direct {p0}, Lc8/Bdg;->updateRecyclerAttr()V

    .line 830
    invoke-virtual {p0}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    .line 831
    .local v0, "wxRecyclerView":Lc8/efg;
    invoke-virtual {p0}, Lc8/Bdg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lc8/Bdg;->mLayoutType:I

    iget v3, p0, Lc8/Bdg;->mColumnCount:I

    iget v4, p0, Lc8/Bdg;->mColumnGap:F

    invoke-virtual {p0}, Lc8/Bdg;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lc8/efg;->initView(Landroid/content/Context;IIFI)V

    .line 834
    .end local v0    # "wxRecyclerView":Lc8/efg;
    :cond_2
    return-void
.end method
