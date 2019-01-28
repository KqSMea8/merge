.class public abstract Lc8/Xcg;
.super Lc8/scg;
.source "BasicListComponent.java"

# interfaces
.implements Lc8/ebg;
.implements Lc8/ffg;
.implements Lc8/gfg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Wcg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ":",
        "Lc8/ddg;",
        ">",
        "Lc8/scg",
        "<TT;>;",
        "Lc8/ebg;",
        "Lc8/ffg;",
        "Lc8/gfg",
        "<",
        "Lc8/hfg;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXCLUDED:Z = false

.field private static final DEFAULT_TRIGGER_TYPE:Ljava/lang/String; = "longpress"

.field private static final DRAG_ANCHOR:Ljava/lang/String; = "dragAnchor"

.field private static final DRAG_TRIGGER_TYPE:Ljava/lang/String; = "dragTriggerType"

.field private static final EXCLUDED:Ljava/lang/String; = "dragExcluded"

.field public static final LOADMOREOFFSET:Ljava/lang/String; = "loadmoreoffset"

.field private static final MAX_VIEWTYPE_ALLOW_CACHE:I = 0x9

.field public static final TRANSFORM:Ljava/lang/String; = "transform"

.field private static mAllowCacheViewHolder:Z

.field private static mDownForBidCacheViewHolder:Z

.field private static final transformPattern:Ljava/util/regex/Pattern;


# instance fields
.field private TAG:Ljava/lang/String;

.field private isScrollable:Z

.field private keepPositionCell:Lc8/tbg;

.field private keepPositionCellRunnable:Ljava/lang/Runnable;

.field private keepPositionLayoutDelay:J

.field private mAppearComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/bbg;",
            ">;"
        }
    .end annotation
.end field

.field protected mColumnCount:I

.field protected mColumnGap:F

.field protected mColumnWidth:F

.field private mDragHelper:Lc8/Zcg;

.field private mForceLoadmoreNextTime:Z

.field private mHasAddScrollEvent:Z

.field private mItemAnimator:Lc8/qv;

.field private mLastReport:Landroid/graphics/Point;

.field protected mLayoutType:I

.field private mListCellCount:I

.field private mOffsetAccuracy:I

.field private mRefToViewType:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStartEndHelper:Lc8/Gcg;

.field private mStickyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/tbg;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTriggerType:Ljava/lang/String;

.field private mViewOnScrollListener:Lc8/kfg;

.field private mViewTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/tbg;",
            ">;>;"
        }
    .end annotation
.end field

.field private stickyHelper:Lc8/Mcg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string/jumbo v0, "([a-z]+)\\(([0-9\\.]+),?([0-9\\.]+)?\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/Xcg;->transformPattern:Ljava/util/regex/Pattern;

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Xcg;->mAllowCacheViewHolder:Z

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Xcg;->mDownForBidCacheViewHolder:Z

    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 6
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 91
    const-string/jumbo v0, "BasicListComponent"

    iput-object v0, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    .line 92
    iput v1, p0, Lc8/Xcg;->mListCellCount:I

    .line 93
    iput-boolean v1, p0, Lc8/Xcg;->mForceLoadmoreNextTime:Z

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Xcg;->mAppearComponents:Ljava/util/Map;

    .line 98
    iput-boolean v2, p0, Lc8/Xcg;->isScrollable:Z

    .line 101
    new-instance v0, Lc8/kfg;

    invoke-direct {v0, p0}, Lc8/kfg;-><init>(Lc8/ffg;)V

    iput-object v0, p0, Lc8/Xcg;->mViewOnScrollListener:Lc8/kfg;

    .line 108
    iput v2, p0, Lc8/Xcg;->mLayoutType:I

    .line 109
    iput v2, p0, Lc8/Xcg;->mColumnCount:I

    .line 110
    iput v3, p0, Lc8/Xcg;->mColumnGap:F

    .line 111
    iput v3, p0, Lc8/Xcg;->mColumnWidth:F

    .line 113
    const/16 v0, 0xa

    iput v0, p0, Lc8/Xcg;->mOffsetAccuracy:I

    .line 114
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lc8/Xcg;->mLastReport:Landroid/graphics/Point;

    .line 115
    iput-boolean v1, p0, Lc8/Xcg;->mHasAddScrollEvent:Z

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Xcg;->mStickyMap:Ljava/util/Map;

    .line 163
    iput-object v5, p0, Lc8/Xcg;->keepPositionCell:Lc8/tbg;

    .line 164
    iput-object v5, p0, Lc8/Xcg;->keepPositionCellRunnable:Ljava/lang/Runnable;

    .line 165
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lc8/Xcg;->keepPositionLayoutDelay:J

    .line 170
    new-instance v0, Lc8/Mcg;

    invoke-direct {v0, p0}, Lc8/Mcg;-><init>(Lc8/ebg;)V

    iput-object v0, p0, Lc8/Xcg;->stickyHelper:Lc8/Mcg;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lc8/Xcg;)Lc8/kfg;
    .locals 1
    .param p0, "x0"    # Lc8/Xcg;

    .prologue
    .line 87
    iget-object v0, p0, Lc8/Xcg;->mViewOnScrollListener:Lc8/kfg;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Xcg;)Lc8/tbg;
    .locals 1
    .param p0, "x0"    # Lc8/Xcg;

    .prologue
    .line 87
    iget-object v0, p0, Lc8/Xcg;->keepPositionCell:Lc8/tbg;

    return-object v0
.end method

.method static synthetic access$102(Lc8/Xcg;Lc8/tbg;)Lc8/tbg;
    .locals 0
    .param p0, "x0"    # Lc8/Xcg;
    .param p1, "x1"    # Lc8/tbg;

    .prologue
    .line 87
    iput-object p1, p0, Lc8/Xcg;->keepPositionCell:Lc8/tbg;

    return-object p1
.end method

.method static synthetic access$202(Lc8/Xcg;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lc8/Xcg;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 87
    iput-object p1, p0, Lc8/Xcg;->keepPositionCellRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lc8/Xcg;)Lc8/Zcg;
    .locals 1
    .param p0, "x0"    # Lc8/Xcg;

    .prologue
    .line 87
    iget-object v0, p0, Lc8/Xcg;->mDragHelper:Lc8/Zcg;

    return-object v0
.end method

.method static synthetic access$400(Lc8/Xcg;II)Z
    .locals 1
    .param p0, "x0"    # Lc8/Xcg;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lc8/Xcg;->shouldReport(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lc8/Xcg;Lc8/Rv;II)V
    .locals 0
    .param p0, "x0"    # Lc8/Xcg;
    .param p1, "x1"    # Lc8/Rv;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lc8/Xcg;->fireScrollEvent(Lc8/Rv;II)V

    return-void
.end method

.method private bindViewType(Lc8/tbg;)V
    .locals 3
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 1040
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-direct {p0, p1}, Lc8/Xcg;->generateViewType(Lc8/tbg;)I

    move-result v0

    .line 1042
    .local v0, "id":I
    iget-object v2, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 1043
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    .line 1046
    :cond_0
    iget-object v2, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1048
    .local v1, "mTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-nez v1, :cond_1

    .line 1049
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "mTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    .restart local v1    # "mTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    iget-object v2, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1052
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    return-void
.end method

.method private calcContentOffset(Lc8/Rv;)I
    .locals 11
    .param p1, "recyclerView"    # Lc8/Rv;

    .prologue
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 1319
    invoke-virtual {p1}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v5

    .line 1320
    .local v5, "layoutManager":Lc8/xv;
    instance-of v8, v5, Lc8/wu;

    if-eqz v8, :cond_6

    move-object v8, v5

    .line 1321
    check-cast v8, Lc8/wu;

    invoke-virtual {v8}, Lc8/wu;->findFirstVisibleItemPosition()I

    move-result v1

    .line 1322
    .local v1, "firstVisibleItemPosition":I
    if-ne v1, v9, :cond_1

    .line 1373
    .end local v1    # "firstVisibleItemPosition":I
    .end local v5    # "layoutManager":Lc8/xv;
    :cond_0
    :goto_0
    return v6

    .line 1326
    .restart local v1    # "firstVisibleItemPosition":I
    .restart local v5    # "layoutManager":Lc8/xv;
    :cond_1
    invoke-virtual {v5, v1}, Lc8/xv;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1327
    .local v2, "firstVisibleView":Landroid/view/View;
    const/4 v3, 0x0

    .line 1328
    .local v3, "firstVisibleViewOffset":I
    if-eqz v2, :cond_2

    .line 1329
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1332
    :cond_2
    const/4 v6, 0x0

    .line 1333
    .local v6, "offset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 1334
    invoke-virtual {p0, v4}, Lc8/Xcg;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 1335
    .local v0, "child":Lc8/tbg;
    if-eqz v0, :cond_3

    .line 1336
    int-to-float v8, v6

    invoke-virtual {v0}, Lc8/tbg;->getLayoutHeight()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 1333
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1340
    .end local v0    # "child":Lc8/tbg;
    :cond_4
    instance-of v8, v5, Lc8/mu;

    if-eqz v8, :cond_5

    .line 1341
    check-cast v5, Lc8/mu;

    .end local v5    # "layoutManager":Lc8/xv;
    invoke-virtual {v5}, Lc8/mu;->getSpanCount()I

    move-result v7

    .line 1342
    .local v7, "spanCount":I
    div-int/2addr v6, v7

    .line 1345
    .end local v7    # "spanCount":I
    :cond_5
    add-int/2addr v6, v3

    .line 1346
    goto :goto_0

    .line 1347
    .end local v1    # "firstVisibleItemPosition":I
    .end local v2    # "firstVisibleView":Landroid/view/View;
    .end local v3    # "firstVisibleViewOffset":I
    .end local v4    # "i":I
    .end local v6    # "offset":I
    .restart local v5    # "layoutManager":Lc8/xv;
    :cond_6
    instance-of v8, v5, Lc8/Qw;

    if-eqz v8, :cond_a

    move-object v8, v5

    .line 1348
    check-cast v8, Lc8/Qw;

    invoke-virtual {v8}, Lc8/Qw;->getSpanCount()I

    move-result v7

    .restart local v7    # "spanCount":I
    move-object v8, v5

    .line 1349
    check-cast v8, Lc8/Qw;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lc8/Qw;->findFirstVisibleItemPositions([I)[I

    move-result-object v8

    aget v1, v8, v6

    .line 1350
    .restart local v1    # "firstVisibleItemPosition":I
    if-eq v1, v9, :cond_0

    .line 1354
    invoke-virtual {v5, v1}, Lc8/xv;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1355
    .restart local v2    # "firstVisibleView":Landroid/view/View;
    const/4 v3, 0x0

    .line 1356
    .restart local v3    # "firstVisibleViewOffset":I
    if-eqz v2, :cond_7

    .line 1357
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1360
    :cond_7
    const/4 v6, 0x0

    .line 1361
    .restart local v6    # "offset":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_9

    .line 1362
    invoke-virtual {p0, v4}, Lc8/Xcg;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 1363
    .restart local v0    # "child":Lc8/tbg;
    if-eqz v0, :cond_8

    .line 1364
    int-to-float v8, v6

    invoke-virtual {v0}, Lc8/tbg;->getLayoutHeight()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 1361
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1368
    .end local v0    # "child":Lc8/tbg;
    :cond_9
    div-int/2addr v6, v7

    .line 1369
    add-int/2addr v6, v3

    .line 1370
    goto :goto_0

    .end local v1    # "firstVisibleItemPosition":I
    .end local v2    # "firstVisibleView":Landroid/view/View;
    .end local v3    # "firstVisibleViewOffset":I
    .end local v4    # "i":I
    .end local v6    # "offset":I
    .end local v7    # "spanCount":I
    :cond_a
    move v6, v9

    .line 1373
    goto :goto_0
.end method

.method private checkRecycledViewPool(I)V
    .locals 4
    .param p1, "viewType"    # I

    .prologue
    .line 944
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    :try_start_0
    iget-object v1, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    .line 945
    const/4 v1, 0x0

    sput-boolean v1, Lc8/Xcg;->mAllowCacheViewHolder:Z

    .line 947
    :cond_0
    sget-boolean v1, Lc8/Xcg;->mDownForBidCacheViewHolder:Z

    if-eqz v1, :cond_1

    .line 948
    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lc8/ddg;

    invoke-interface {v1}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 949
    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lc8/ddg;

    invoke-interface {v1}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/efg;->getRecycledViewPool()Lc8/Ev;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lc8/Ev;->setMaxRecycledViews(II)V

    .line 951
    :cond_1
    sget-boolean v1, Lc8/Xcg;->mDownForBidCacheViewHolder:Z

    if-nez v1, :cond_3

    .line 952
    sget-boolean v1, Lc8/Xcg;->mAllowCacheViewHolder:Z

    if-nez v1, :cond_3

    .line 953
    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lc8/ddg;

    invoke-interface {v1}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 954
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 955
    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lc8/ddg;

    invoke-interface {v1}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/efg;->getRecycledViewPool()Lc8/Ev;

    move-result-object v1

    iget-object v2, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lc8/Ev;->setMaxRecycledViews(II)V

    .line 954
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lc8/Xcg;->mDownForBidCacheViewHolder:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    .end local v0    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 962
    :catch_0
    move-exception v1

    iget-object v1, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Clear recycledViewPool error!"

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createVHForFakeComponent(I)Lc8/hfg;
    .locals 3
    .param p1, "viewType"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v2, 0x0

    .line 1191
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lc8/Xcg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1192
    .local v0, "view":Landroid/widget/FrameLayout;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1193
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    new-instance v1, Lc8/hfg;

    invoke-direct {v1, v0, p1}, Lc8/hfg;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method private createVHForRefreshComponent(I)Lc8/hfg;
    .locals 4
    .param p1, "viewType"    # I

    .prologue
    .line 1199
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lc8/Xcg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1200
    .local v0, "view":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1201
    new-instance v1, Lc8/hfg;

    invoke-direct {v1, v0, p1}, Lc8/hfg;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method private findComponentByAnchorName(Lc8/tbg;Ljava/lang/String;)Lc8/tbg;
    .locals 16
    .param p1, "root"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anchorName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 979
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const-wide/16 v10, 0x0

    .line 980
    .local v10, "start":J
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 984
    :cond_0
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 985
    .local v5, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/taobao/weex/ui/component/WXComponent;>;"
    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 986
    :cond_1
    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 987
    invoke-interface {v5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/tbg;

    .line 988
    .local v4, "curComponent":Lc8/tbg;
    invoke-virtual {v4}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v9

    .line 989
    .local v9, "object":Lc8/qYf;
    if-eqz v9, :cond_3

    .line 990
    invoke-interface {v9}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 993
    .local v7, "isAnchorSet":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string/jumbo v12, "true"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 994
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 995
    const-string/jumbo v12, "dragPerf"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "findComponentByAnchorName time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .end local v4    # "curComponent":Lc8/tbg;
    .end local v7    # "isAnchorSet":Ljava/lang/String;
    .end local v9    # "object":Lc8/qYf;
    :cond_2
    :goto_0
    return-object v4

    .line 1000
    .restart local v4    # "curComponent":Lc8/tbg;
    .restart local v9    # "object":Lc8/qYf;
    :cond_3
    instance-of v12, v4, Lc8/scg;

    if-eqz v12, :cond_1

    move-object v3, v4

    .line 1001
    check-cast v3, Lc8/scg;

    .line 1002
    .local v3, "container":Lc8/scg;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v3}, Lc8/scg;->childCount()I

    move-result v8

    .local v8, "len":I
    :goto_1
    if-ge v6, v8, :cond_1

    .line 1003
    invoke-virtual {v3, v6}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    .line 1004
    .local v2, "child":Lc8/tbg;
    invoke-interface {v5, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1002
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1009
    .end local v2    # "child":Lc8/tbg;
    .end local v3    # "container":Lc8/scg;
    .end local v4    # "curComponent":Lc8/tbg;
    .end local v6    # "i":I
    .end local v8    # "len":I
    .end local v9    # "object":Lc8/qYf;
    :cond_4
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1010
    const-string/jumbo v12, "dragPerf"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "findComponentByAnchorName elapsed time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findDirectListChild(Lc8/tbg;)Lc8/tbg;
    .locals 2
    .param p1, "comp"    # Lc8/tbg;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v0

    .local v0, "parent":Lc8/tbg;
    if-nez v0, :cond_2

    .line 345
    .end local v0    # "parent":Lc8/tbg;
    :cond_0
    const/4 p1, 0x0

    .line 352
    .end local p1    # "comp":Lc8/tbg;
    :cond_1
    :goto_0
    return-object p1

    .line 348
    .restart local v0    # "parent":Lc8/tbg;
    .restart local p1    # "comp":Lc8/tbg;
    :cond_2
    instance-of v1, v0, Lc8/Xcg;

    if-nez v1, :cond_1

    .line 352
    invoke-direct {p0, v0}, Lc8/Xcg;->findDirectListChild(Lc8/tbg;)Lc8/tbg;

    move-result-object p1

    goto :goto_0
.end method

.method private fireScrollEvent(Lc8/Rv;II)V
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 1267
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const-string/jumbo v0, "scroll"

    invoke-virtual {p0, p1, p2, p3}, Lc8/Xcg;->getScrollEvent(Lc8/Rv;II)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/Xcg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1268
    return-void
.end method

.method private generateViewType(Lc8/tbg;)I
    .locals 6
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 1076
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v2, v4

    .line 1077
    .local v2, "id":J
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/xYf;->getScope()Ljava/lang/String;

    move-result-object v1

    .line 1079
    .local v1, "type":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1080
    iget-object v4, p0, Lc8/Xcg;->mRefToViewType:Landroid/support/v4/util/ArrayMap;

    if-nez v4, :cond_0

    .line 1081
    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lc8/Xcg;->mRefToViewType:Landroid/support/v4/util/ArrayMap;

    .line 1083
    :cond_0
    iget-object v4, p0, Lc8/Xcg;->mRefToViewType:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1084
    iget-object v4, p0, Lc8/Xcg;->mRefToViewType:Landroid/support/v4/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    :cond_1
    iget-object v4, p0, Lc8/Xcg;->mRefToViewType:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1094
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    :goto_0
    long-to-int v4, v2

    return v4

    .line 1089
    .end local v2    # "id":J
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lc8/xgg;->eTag(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1091
    const-wide/16 v2, -0x1

    .line 1092
    .restart local v2    # "id":J
    iget-object v4, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getItemViewType: NO ID, this will crash the whole render system of WXListRecyclerView"

    invoke-static {v4, v5}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTriggerType(Lc8/qYf;)Ljava/lang/String;
    .locals 5
    .param p1, "domObject"    # Lc8/qYf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1017
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const-string/jumbo v0, "longpress"

    .line 1018
    .local v0, "triggerType":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1030
    .end local v0    # "triggerType":Ljava/lang/String;
    .local v1, "triggerType":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1021
    .end local v1    # "triggerType":Ljava/lang/String;
    .restart local v0    # "triggerType":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v2

    const-string/jumbo v3, "dragTriggerType"

    invoke-virtual {v2, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "longpress"

    invoke-static {v2, v3}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    const-string/jumbo v2, "longpress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "pan"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1023
    const-string/jumbo v0, "longpress"

    .line 1026
    :cond_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1027
    iget-object v2, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trigger type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v1, v0

    .line 1030
    .end local v0    # "triggerType":Ljava/lang/String;
    .restart local v1    # "triggerType":Ljava/lang/String;
    goto :goto_0
.end method

.method private relocateAppearanceHelper()V
    .locals 6

    .prologue
    .line 698
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v5, p0, Lc8/Xcg;->mAppearComponents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 699
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 700
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 701
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/bbg;

    .line 702
    .local v4, "value":Lc8/bbg;
    invoke-virtual {v4}, Lc8/bbg;->getAwareChild()Lc8/tbg;

    move-result-object v5

    invoke-direct {p0, v5}, Lc8/Xcg;->findDirectListChild(Lc8/tbg;)Lc8/tbg;

    move-result-object v0

    .line 703
    .local v0, "dChild":Lc8/tbg;
    iget-object v5, p0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 704
    .local v1, "index":I
    invoke-virtual {v4, v1}, Lc8/bbg;->setCellPosition(I)V

    goto :goto_0

    .line 706
    .end local v0    # "dChild":Lc8/tbg;
    .end local v1    # "index":I
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    .end local v4    # "value":Lc8/bbg;
    :cond_0
    return-void
.end method

.method private setAppearanceWatch(Lc8/tbg;IZ)V
    .locals 5
    .param p1, "component"    # Lc8/tbg;
    .param p2, "event"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 408
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v3, p0, Lc8/Xcg;->mAppearComponents:Ljava/util/Map;

    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/bbg;

    .line 409
    .local v2, "item":Lc8/bbg;
    if-eqz v2, :cond_1

    .line 410
    invoke-virtual {v2, p2, p3}, Lc8/bbg;->setWatchEvent(IZ)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    if-eqz p3, :cond_0

    .line 414
    invoke-direct {p0, p1}, Lc8/Xcg;->findDirectListChild(Lc8/tbg;)Lc8/tbg;

    move-result-object v0

    .line 415
    .local v0, "dChild":Lc8/tbg;
    iget-object v3, p0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 416
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 417
    new-instance v2, Lc8/bbg;

    .end local v2    # "item":Lc8/bbg;
    invoke-direct {v2, p1, v1}, Lc8/bbg;-><init>(Lc8/tbg;I)V

    .line 418
    .restart local v2    # "item":Lc8/bbg;
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lc8/bbg;->setWatchEvent(IZ)V

    .line 419
    iget-object v3, p0, Lc8/Xcg;->mAppearComponents:Ljava/util/Map;

    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private shouldReport(II)Z
    .locals 5
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v2, 0x1

    const/4 v4, -0x1

    .line 1298
    iget-object v3, p0, Lc8/Xcg;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lc8/Xcg;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v3, v4, :cond_0

    .line 1299
    iget-object v3, p0, Lc8/Xcg;->mLastReport:Landroid/graphics/Point;

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 1300
    iget-object v3, p0, Lc8/Xcg;->mLastReport:Landroid/graphics/Point;

    iput p2, v3, Landroid/graphics/Point;->y:I

    .line 1313
    :goto_0
    return v2

    .line 1304
    :cond_0
    iget-object v3, p0, Lc8/Xcg;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1305
    .local v0, "gapX":I
    iget-object v3, p0, Lc8/Xcg;->mLastReport:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1307
    .local v1, "gapY":I
    iget v3, p0, Lc8/Xcg;->mOffsetAccuracy:I

    if-ge v0, v3, :cond_1

    iget v3, p0, Lc8/Xcg;->mOffsetAccuracy:I

    if-lt v1, v3, :cond_2

    .line 1308
    :cond_1
    iget-object v3, p0, Lc8/Xcg;->mLastReport:Landroid/graphics/Point;

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 1309
    iget-object v3, p0, Lc8/Xcg;->mLastReport:Landroid/graphics/Point;

    iput p2, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 1313
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unBindViewType(Lc8/tbg;)V
    .locals 3
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 1056
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-direct {p0, p1}, Lc8/Xcg;->generateViewType(Lc8/tbg;)I

    move-result v0

    .line 1058
    .local v0, "id":I
    iget-object v2, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget-object v2, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1061
    .local v1, "mTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-eqz v1, :cond_0

    .line 1064
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lc8/tbg;)V
    .locals 1
    .param p1, "child"    # Lc8/tbg;

    .prologue
    .line 594
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lc8/Xcg;->addChild(Lc8/tbg;I)V

    .line 595
    return-void
.end method

.method public addChild(Lc8/tbg;I)V
    .locals 12
    .param p1, "child"    # Lc8/tbg;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v9, -0x1

    .line 609
    invoke-super {p0, p1, p2}, Lc8/scg;->addChild(Lc8/tbg;I)V

    .line 610
    if-eqz p1, :cond_0

    if-ge p2, v9, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v10, p0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 614
    .local v2, "count":I
    if-lt p2, v2, :cond_2

    move p2, v9

    .line 615
    :cond_2
    invoke-direct {p0, p1}, Lc8/Xcg;->bindViewType(Lc8/tbg;)V

    .line 617
    if-ne p2, v9, :cond_b

    iget-object v9, p0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 618
    .local v0, "adapterPosition":I
    :goto_1
    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 619
    .local v8, "view":Landroid/view/ViewGroup;, "TT;"
    if-eqz v8, :cond_a

    .line 620
    const/4 v5, 0x0

    .line 621
    .local v5, "isAddAnimation":Z
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    .line 622
    .local v3, "domObject":Lc8/qYf;
    if-eqz v3, :cond_3

    .line 623
    invoke-interface {v3}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v9

    const-string/jumbo v10, "insertAnimation"

    invoke-virtual {v9, v10}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 624
    .local v1, "attr":Ljava/lang/Object;
    const-string/jumbo v9, "default"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 625
    const/4 v5, 0x1

    .line 628
    .end local v1    # "attr":Ljava/lang/Object;
    :cond_3
    if-eqz v5, :cond_c

    move-object v9, v8

    .line 629
    check-cast v9, Lc8/ddg;

    invoke-interface {v9}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v9

    iget-object v10, p0, Lc8/Xcg;->mItemAnimator:Lc8/qv;

    invoke-virtual {v9, v10}, Lc8/efg;->setItemAnimator(Lc8/qv;)V

    .line 633
    :goto_2
    const/4 v6, 0x0

    .line 634
    .local v6, "isKeepScrollPosition":Z
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 635
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v9

    invoke-interface {v9}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v9

    const-string/jumbo v10, "keepScrollPosition"

    invoke-virtual {v9, v10}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 636
    .restart local v1    # "attr":Ljava/lang/Object;
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v1, v9}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lc8/Xcg;->getChildCount()I

    move-result v9

    if-gt p2, v9, :cond_4

    if-ltz p2, :cond_4

    .line 637
    const/4 v6, 0x1

    .line 640
    .end local v1    # "attr":Ljava/lang/Object;
    :cond_4
    if-eqz v6, :cond_d

    move-object v9, v8

    .line 641
    check-cast v9, Lc8/ddg;

    invoke-interface {v9}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v9

    invoke-virtual {v9}, Lc8/efg;->getLayoutManager()Lc8/xv;

    move-result-object v9

    instance-of v9, v9, Lc8/wu;

    if-eqz v9, :cond_9

    move-object v9, v8

    .line 642
    check-cast v9, Lc8/ddg;

    invoke-interface {v9}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v9

    invoke-virtual {v9}, Lc8/efg;->isLayoutFrozen()Z

    move-result v9

    if-nez v9, :cond_5

    move-object v9, v8

    .line 643
    check-cast v9, Lc8/ddg;

    invoke-interface {v9}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lc8/efg;->setLayoutFrozen(Z)V

    .line 645
    :cond_5
    iget-object v9, p0, Lc8/Xcg;->keepPositionCell:Lc8/tbg;

    if-nez v9, :cond_8

    move-object v9, v8

    .line 646
    check-cast v9, Lc8/ddg;

    invoke-interface {v9}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v9

    invoke-virtual {v9}, Lc8/efg;->getLayoutManager()Lc8/xv;

    move-result-object v9

    check-cast v9, Lc8/wu;

    invoke-virtual {v9}, Lc8/wu;->findLastCompletelyVisibleItemPosition()I

    move-result v7

    .local v7, "last":I
    move-object v9, v8

    .line 647
    check-cast v9, Lc8/ddg;

    invoke-interface {v9}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v9

    invoke-virtual {v9, v7}, Lc8/efg;->findViewHolderForAdapterPosition(I)Lc8/Qv;

    move-result-object v4

    check-cast v4, Lc8/hfg;

    .line 648
    .local v4, "holder":Lc8/hfg;
    if-eqz v4, :cond_6

    .line 649
    invoke-virtual {v4}, Lc8/hfg;->getComponent()Lc8/tbg;

    move-result-object v9

    iput-object v9, p0, Lc8/Xcg;->keepPositionCell:Lc8/tbg;

    .line 651
    :cond_6
    iget-object v9, p0, Lc8/Xcg;->keepPositionCell:Lc8/tbg;

    if-eqz v9, :cond_8

    .line 652
    iget-object v9, p0, Lc8/Xcg;->keepPositionCellRunnable:Ljava/lang/Runnable;

    if-eqz v9, :cond_7

    .line 653
    iget-object v9, p0, Lc8/Xcg;->keepPositionCellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 655
    :cond_7
    new-instance v9, Lc8/Tcg;

    invoke-direct {v9, p0, v8}, Lc8/Tcg;-><init>(Lc8/Xcg;Landroid/view/ViewGroup;)V

    iput-object v9, p0, Lc8/Xcg;->keepPositionCellRunnable:Ljava/lang/Runnable;

    .line 678
    .end local v4    # "holder":Lc8/hfg;
    .end local v7    # "last":I
    :cond_8
    iget-object v9, p0, Lc8/Xcg;->keepPositionCellRunnable:Ljava/lang/Runnable;

    if-nez v9, :cond_9

    move-object v9, v8

    .line 679
    check-cast v9, Lc8/ddg;

    invoke-interface {v9}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v10

    move-object v9, v8

    check-cast v9, Lc8/ddg;

    invoke-interface {v9}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v9

    invoke-virtual {v9}, Lc8/efg;->getLayoutManager()Lc8/xv;

    move-result-object v9

    check-cast v9, Lc8/wu;

    invoke-virtual {v9}, Lc8/wu;->findLastVisibleItemPosition()I

    move-result v9

    invoke-virtual {v10, v9}, Lc8/efg;->scrollToPosition(I)V

    :cond_9
    move-object v9, v8

    .line 682
    check-cast v9, Lc8/ddg;

    invoke-interface {v9}, Lc8/ddg;->getRecyclerViewBaseAdapter()Lc8/ifg;

    move-result-object v9

    invoke-virtual {v9, v0}, Lc8/ifg;->notifyItemInserted(I)V

    .line 683
    iget-object v9, p0, Lc8/Xcg;->keepPositionCellRunnable:Ljava/lang/Runnable;

    if-eqz v9, :cond_a

    .line 684
    iget-object v9, p0, Lc8/Xcg;->keepPositionCellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 685
    iget-object v9, p0, Lc8/Xcg;->keepPositionCellRunnable:Ljava/lang/Runnable;

    iget-wide v10, p0, Lc8/Xcg;->keepPositionLayoutDelay:J

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
    .end local v3    # "domObject":Lc8/qYf;
    .end local v5    # "isAddAnimation":Z
    .end local v6    # "isKeepScrollPosition":Z
    .end local v8    # "view":Landroid/view/ViewGroup;, "TT;"
    :cond_a
    :goto_3
    invoke-direct {p0}, Lc8/Xcg;->relocateAppearanceHelper()V

    goto/16 :goto_0

    .end local v0    # "adapterPosition":I
    :cond_b
    move v0, p2

    .line 617
    goto/16 :goto_1

    .restart local v0    # "adapterPosition":I
    .restart local v3    # "domObject":Lc8/qYf;
    .restart local v5    # "isAddAnimation":Z
    .restart local v8    # "view":Landroid/view/ViewGroup;, "TT;"
    :cond_c
    move-object v9, v8

    .line 631
    check-cast v9, Lc8/ddg;

    invoke-interface {v9}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lc8/efg;->setItemAnimator(Lc8/qv;)V

    goto/16 :goto_2

    .line 688
    .restart local v6    # "isKeepScrollPosition":Z
    :cond_d
    check-cast v8, Lc8/ddg;

    .end local v8    # "view":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {v8}, Lc8/ddg;->getRecyclerViewBaseAdapter()Lc8/ifg;

    move-result-object v9

    invoke-virtual {v9, v0}, Lc8/ifg;->notifyItemChanged(I)V

    goto :goto_3
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1212
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-super {p0, p1}, Lc8/scg;->addEvent(Ljava/lang/String;)V

    .line 1213
    invoke-static {p1}, Lc8/Gcg;->isScrollEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lc8/ddg;

    invoke-interface {v1}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc8/Xcg;->mHasAddScrollEvent:Z

    if-nez v1, :cond_0

    .line 1217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Xcg;->mHasAddScrollEvent:Z

    .line 1218
    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lc8/ddg;

    invoke-interface {v1}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v0

    .line 1219
    .local v0, "innerView":Lc8/efg;
    new-instance v1, Lc8/Vcg;

    invoke-direct {v1, p0}, Lc8/Vcg;-><init>(Lc8/Xcg;)V

    invoke-virtual {v0, v1}, Lc8/efg;->addOnScrollListener(Lc8/Cv;)V

    .line 1264
    .end local v0    # "innerView":Lc8/efg;
    :cond_0
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 717
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    return-void
.end method

.method public bindAppearEvent(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 426
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lc8/Xcg;->setAppearanceWatch(Lc8/tbg;IZ)V

    .line 427
    return-void
.end method

.method public bindDisappearEvent(Lc8/tbg;)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x1

    .line 431
    invoke-direct {p0, p1, v0, v0}, Lc8/Xcg;->setAppearanceWatch(Lc8/tbg;IZ)V

    .line 432
    return-void
.end method

.method public bindStickStyle(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 332
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v0, p0, Lc8/Xcg;->stickyHelper:Lc8/Mcg;

    iget-object v1, p0, Lc8/Xcg;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lc8/Mcg;->bindStickStyle(Lc8/tbg;Ljava/util/Map;)V

    .line 333
    return-void
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "pointF"    # Landroid/graphics/PointF;

    .prologue
    .line 766
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lc8/ddg;

    invoke-interface {v1}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v0

    .line 767
    .local v0, "view":Lc8/Rv;
    invoke-virtual {v0}, Lc8/Rv;->computeHorizontalScrollOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lc8/Rv;->computeVerticalScrollOffset()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 768
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-super {p0}, Lc8/scg;->destroy()V

    .line 220
    iget-object v0, p0, Lc8/Xcg;->mStickyMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lc8/Xcg;->mStickyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 222
    :cond_0
    iget-object v0, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 224
    :cond_1
    iget-object v0, p0, Lc8/Xcg;->mRefToViewType:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lc8/Xcg;->mRefToViewType:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 226
    :cond_2
    return-void
.end method

.method abstract generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)TT;"
        }
    .end annotation
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
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v2, 0x0

    .line 230
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 231
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    instance-of v1, p1, Lc8/ibg;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 240
    .restart local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return-object v0

    .line 233
    :cond_0
    if-nez v0, :cond_1

    .line 234
    new-instance v0, Lc8/yv;

    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, p3, p4}, Lc8/yv;-><init>(II)V

    .restart local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_0

    .line 236
    :cond_1
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 237
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 238
    invoke-virtual {v0, p5, v2, p6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected getChildrenLayoutTopOffset()I
    .locals 1

    .prologue
    .line 599
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1104
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0}, Lc8/Xcg;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 1119
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lc8/Xcg;->getChild(I)Lc8/tbg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-interface {v1}, Lc8/qYf;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1124
    .local v2, "id":J
    :goto_0
    return-wide v2

    .line 1120
    .end local v2    # "id":J
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-wide/16 v2, -0x1

    .restart local v2    # "id":J
    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 974
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0, p1}, Lc8/Xcg;->getChild(I)Lc8/tbg;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Xcg;->generateViewType(Lc8/tbg;)I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getScrollEvent(Lc8/Rv;II)Ljava/util/Map;
    .locals 10
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
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v9, 0x2

    .line 1271
    invoke-virtual {p0}, Lc8/Xcg;->getOrientation()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1272
    invoke-direct {p0, p1}, Lc8/Xcg;->calcContentOffset(Lc8/Rv;)I

    move-result v7

    neg-int p3, v7

    .line 1274
    :cond_0
    invoke-virtual {p1}, Lc8/Rv;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Lc8/Rv;->computeHorizontalScrollRange()I

    move-result v8

    add-int v4, v7, v8

    .line 1275
    .local v4, "contentWidth":I
    const/4 v1, 0x0

    .line 1276
    .local v1, "contentHeight":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Lc8/Xcg;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1277
    invoke-virtual {p0, v6}, Lc8/Xcg;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 1278
    .local v0, "child":Lc8/tbg;
    if-eqz v0, :cond_1

    .line 1279
    int-to-float v7, v1

    invoke-virtual {v0}, Lc8/tbg;->getLayoutHeight()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v1, v7

    .line 1276
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1283
    .end local v0    # "child":Lc8/tbg;
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 1284
    .local v5, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 1285
    .local v3, "contentSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 1287
    .local v2, "contentOffset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "width"

    int-to-float v8, v4

    invoke-virtual {p0}, Lc8/Xcg;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    const-string/jumbo v7, "height"

    int-to-float v8, v1

    invoke-virtual {p0}, Lc8/Xcg;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    const-string/jumbo v7, "x"

    int-to-float v8, p2

    invoke-virtual {p0}, Lc8/Xcg;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v8

    neg-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const-string/jumbo v7, "y"

    int-to-float v8, p3

    invoke-virtual {p0}, Lc8/Xcg;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v8

    neg-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    const-string/jumbo v7, "contentSize"

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    const-string/jumbo v7, "contentOffset"

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    return-object v5
.end method

.method public getScrollStartEndHelper()Lc8/Gcg;
    .locals 1

    .prologue
    .line 1377
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v0, p0, Lc8/Xcg;->mScrollStartEndHelper:Lc8/Gcg;

    if-nez v0, :cond_0

    .line 1378
    new-instance v0, Lc8/Gcg;

    invoke-direct {v0, p0}, Lc8/Gcg;-><init>(Lc8/tbg;)V

    iput-object v0, p0, Lc8/Xcg;->mScrollStartEndHelper:Lc8/Gcg;

    .line 1380
    :cond_0
    iget-object v0, p0, Lc8/Xcg;->mScrollStartEndHelper:Lc8/Gcg;

    return-object v0
.end method

.method public getScrollX()I
    .locals 2

    .prologue
    .line 580
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 581
    .local v0, "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .end local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :goto_0
    return v1

    .restart local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_0
    check-cast v0, Lc8/ddg;

    .end local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {v0}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/efg;->getScrollX()I

    move-result v1

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 2

    .prologue
    .line 574
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 575
    .local v0, "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .end local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :goto_0
    return v1

    .restart local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_0
    check-cast v0, Lc8/ddg;

    .end local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {v0}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/efg;->getScrollY()I

    move-result v1

    goto :goto_0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 87
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0, p1}, Lc8/Xcg;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0}, Lc8/Xcg;->getOrientation()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lc8/Xcg;->generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 250
    .local v0, "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    invoke-virtual {p0}, Lc8/Xcg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "transform"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 251
    .local v3, "transforms":Ljava/lang/String;
    if-eqz v3, :cond_0

    move-object v4, v0

    .line 252
    check-cast v4, Lc8/ddg;

    invoke-interface {v4}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v4

    invoke-virtual {p0}, Lc8/Xcg;->getOrientation()I

    move-result v5

    invoke-static {v5, v3}, Lc8/edg;->parseTransforms(ILjava/lang/String;)Lc8/sv;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/efg;->addItemDecoration(Lc8/sv;)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lc8/Xcg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "keepPositionLayoutDelay"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 255
    invoke-virtual {p0}, Lc8/Xcg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "keepPositionLayoutDelay"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v6, p0, Lc8/Xcg;->keepPositionLayoutDelay:J

    long-to-int v5, v6

    invoke-static {v4, v5}, Lc8/Dgg;->getNumberInt(Ljava/lang/Object;I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lc8/Xcg;->keepPositionLayoutDelay:J

    :cond_1
    move-object v4, v0

    .line 258
    check-cast v4, Lc8/ddg;

    invoke-interface {v4}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v4

    invoke-virtual {v4}, Lc8/efg;->getItemAnimator()Lc8/qv;

    move-result-object v4

    iput-object v4, p0, Lc8/Xcg;->mItemAnimator:Lc8/qv;

    .line 260
    new-instance v2, Lc8/ifg;

    invoke-direct {v2, p0}, Lc8/ifg;-><init>(Lc8/gfg;)V

    .line 261
    .local v2, "recyclerViewBaseAdapter":Lc8/ifg;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lc8/ifg;->setHasStableIds(Z)V

    move-object v4, v0

    .line 262
    check-cast v4, Lc8/ddg;

    invoke-interface {v4, v2}, Lc8/ddg;->setRecyclerViewBaseAdapter(Lc8/ifg;)V

    .line 263
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    move-object v4, v0

    .line 264
    check-cast v4, Lc8/ddg;

    invoke-interface {v4}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v4

    invoke-virtual {v4}, Lc8/efg;->clearOnScrollListeners()V

    move-object v4, v0

    .line 265
    check-cast v4, Lc8/ddg;

    invoke-interface {v4}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v4

    iget-object v5, p0, Lc8/Xcg;->mViewOnScrollListener:Lc8/kfg;

    invoke-virtual {v4, v5}, Lc8/efg;->addOnScrollListener(Lc8/Cv;)V

    .line 266
    invoke-virtual {p0}, Lc8/Xcg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "hasFixedSize"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 267
    invoke-virtual {p0}, Lc8/Xcg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "hasFixedSize"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "hasFixedSize":Z
    move-object v4, v0

    .line 268
    check-cast v4, Lc8/ddg;

    invoke-interface {v4}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v4

    invoke-virtual {v4, v1}, Lc8/efg;->setHasFixedSize(Z)V

    .end local v1    # "hasFixedSize":Z
    :cond_2
    move-object v4, v0

    .line 270
    check-cast v4, Lc8/ddg;

    invoke-interface {v4}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v4

    new-instance v5, Lc8/Rcg;

    invoke-direct {v5, p0}, Lc8/Rcg;-><init>(Lc8/Xcg;)V

    invoke-virtual {v4, v5}, Lc8/efg;->addOnScrollListener(Lc8/Cv;)V

    .line 312
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lc8/Scg;

    invoke-direct {v5, p0}, Lc8/Scg;-><init>(Lc8/Xcg;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 327
    return-object v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-boolean v0, p0, Lc8/Xcg;->isScrollable:Z

    return v0
.end method

.method protected markComponentUsable()V
    .locals 3

    .prologue
    .line 881
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v2, p0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    .line 882
    .local v0, "component":Lc8/tbg;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lc8/tbg;->setUsing(Z)V

    goto :goto_0

    .line 884
    .end local v0    # "component":Lc8/tbg;
    :cond_0
    return-void
.end method

.method protected measure(II)Lc8/pbg;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 207
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    sget-object v3, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-static {v3}, Lc8/Jgg;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 208
    .local v1, "screenH":I
    invoke-virtual {p0}, Lc8/Xcg;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Jgg;->getWeexHeight(Ljava/lang/String;)I

    move-result v2

    .line 209
    .local v2, "weexH":I
    if-lt v2, v1, :cond_0

    .end local v1    # "screenH":I
    :goto_0
    if-le p2, v1, :cond_1

    invoke-virtual {p0}, Lc8/Xcg;->getAbsoluteY()I

    move-result v3

    sub-int v0, v2, v3

    .line 210
    .local v0, "outHeight":I
    :goto_1
    int-to-float v3, p1

    iget v4, p0, Lc8/Xcg;->mColumnGap:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-super {p0, v3, v0}, Lc8/scg;->measure(II)Lc8/pbg;

    move-result-object v3

    return-object v3

    .end local v0    # "outHeight":I
    .restart local v1    # "screenH":I
    :cond_0
    move v1, v2

    .line 209
    goto :goto_0

    .end local v1    # "screenH":I
    :cond_1
    move v0, p2

    goto :goto_1
.end method

.method public notifyAppearStateChange(IIII)V
    .locals 11
    .param p1, "firstVisible"    # I
    .param p2, "lastVisible"    # I
    .param p3, "directionX"    # I
    .param p4, "directionY"    # I

    .prologue
    .line 1154
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v8, p0, Lc8/Xcg;->mAppearComponents:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1155
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/taobao/weex/ui/component/AppearanceHelper;>;"
    if-lez p4, :cond_3

    const-string/jumbo v1, "up"

    .line 1157
    .local v1, "direction":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lc8/Xcg;->getOrientation()I

    move-result v8

    if-nez v8, :cond_0

    if-eqz p3, :cond_0

    .line 1158
    if-lez p3, :cond_5

    const-string/jumbo v1, "left"

    .line 1161
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/bbg;

    .line 1163
    .local v3, "item":Lc8/bbg;
    invoke-virtual {v3}, Lc8/bbg;->getAwareChild()Lc8/tbg;

    move-result-object v0

    .line 1165
    .local v0, "component":Lc8/tbg;
    invoke-virtual {v3}, Lc8/bbg;->isWatch()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1169
    invoke-virtual {v3}, Lc8/bbg;->getCellPositionINScollable()I

    move-result v8

    if-lt v8, p1, :cond_1

    invoke-virtual {v3}, Lc8/bbg;->getCellPositionINScollable()I

    move-result v8

    if-le v8, p2, :cond_6

    :cond_1
    const/4 v4, 0x1

    .line 1171
    .local v4, "outOfVisibleRange":Z
    :goto_2
    invoke-virtual {v0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v6

    .line 1172
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 1176
    if-nez v4, :cond_7

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lc8/bbg;->isViewVisible(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v7, 0x1

    .line 1178
    .local v7, "visible":Z
    :goto_3
    invoke-virtual {v3, v7}, Lc8/bbg;->setAppearStatus(Z)I

    move-result v5

    .line 1179
    .local v5, "result":I
    if-eqz v5, :cond_0

    .line 1182
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1183
    const-string/jumbo v8, "appear"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "item "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lc8/bbg;->getCellPositionINScollable()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " result "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_2
    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    const-string/jumbo v8, "appear"

    :goto_4
    invoke-virtual {v0, v8, v1}, Lc8/tbg;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1155
    .end local v0    # "component":Lc8/tbg;
    .end local v1    # "direction":Ljava/lang/String;
    .end local v3    # "item":Lc8/bbg;
    .end local v4    # "outOfVisibleRange":Z
    .end local v5    # "result":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "visible":Z
    :cond_3
    if-gez p4, :cond_4

    const-string/jumbo v1, "down"

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1158
    .restart local v1    # "direction":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "right"

    goto/16 :goto_1

    .line 1169
    .restart local v0    # "component":Lc8/tbg;
    .restart local v3    # "item":Lc8/bbg;
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 1176
    .restart local v4    # "outOfVisibleRange":Z
    .restart local v6    # "view":Landroid/view/View;
    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    .line 1185
    .restart local v5    # "result":I
    .restart local v7    # "visible":Z
    :cond_8
    const-string/jumbo v8, "disappear"

    goto :goto_4

    .line 1187
    .end local v0    # "component":Lc8/tbg;
    .end local v3    # "item":Lc8/bbg;
    .end local v4    # "outOfVisibleRange":Z
    .end local v5    # "result":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "visible":Z
    :cond_9
    return-void
.end method

.method public onBeforeScroll(II)V
    .locals 23
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 491
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 492
    .local v3, "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Xcg;->mStickyMap:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    if-nez v3, :cond_1

    .line 570
    .end local v3    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_0
    :goto_0
    return-void

    .line 495
    .restart local v3    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Xcg;->mStickyMap:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lc8/Xcg;->getRef()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map;

    .line 496
    .local v19, "stickyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-eqz v19, :cond_0

    .line 499
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 502
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;>;"
    const/4 v5, -0x1

    .line 503
    .local v5, "currentStickyPos":I
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 504
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 505
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lc8/tbg;

    .line 507
    .local v18, "stickyComponent":Lc8/tbg;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v21

    if-eqz v21, :cond_2

    move-object/from16 v0, v18

    instance-of v0, v0, Lc8/jdg;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v4, v18

    .line 510
    check-cast v4, Lc8/jdg;

    .line 511
    .local v4, "cell":Lc8/jdg;
    invoke-virtual {v4}, Lc8/jdg;->getHostView()Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 515
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v12, v0, [I

    .line 516
    .local v12, "location":[I
    invoke-virtual/range {v18 .. v18}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 517
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v13, v0, [I

    .line 518
    .local v13, "parentLocation":[I
    invoke-virtual/range {v18 .. v18}, Lc8/tbg;->getParentScroller()Lc8/ebg;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lc8/ebg;->getView()Landroid/view/ViewGroup;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 519
    const/16 v21, 0x1

    aget v21, v12, v21

    const/16 v22, 0x1

    aget v22, v13, v22

    sub-int v20, v21, v22

    .line 523
    .local v20, "top":I
    const/4 v2, 0x0

    .line 524
    .local v2, "beforeFirstVisibleItem":Z
    const/4 v15, 0x0

    .line 525
    .local v15, "removeOldSticky":Z
    invoke-virtual/range {p0 .. p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    check-cast v21, Lc8/ddg;

    invoke-interface/range {v21 .. v21}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lc8/efg;->getLayoutManager()Lc8/xv;

    move-result-object v11

    .line 526
    .local v11, "layoutManager":Lc8/xv;
    instance-of v0, v11, Lc8/wu;

    move/from16 v21, v0

    if-nez v21, :cond_3

    instance-of v0, v11, Lc8/mu;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    :cond_3
    move-object/from16 v21, v11

    .line 527
    check-cast v21, Lc8/wu;

    invoke-virtual/range {v21 .. v21}, Lc8/wu;->findFirstVisibleItemPosition()I

    move-result v8

    .line 528
    .local v8, "firstVisiblePosition":I
    check-cast v11, Lc8/wu;

    .end local v11    # "layoutManager":Lc8/xv;
    invoke-virtual {v11}, Lc8/wu;->findLastVisibleItemPosition()I

    move-result v10

    .line 529
    .local v10, "lastVisiblePosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 530
    .local v14, "pos":I
    invoke-virtual {v4, v14}, Lc8/jdg;->setScrollPositon(I)V

    .line 531
    if-le v14, v8, :cond_4

    invoke-virtual {v4}, Lc8/jdg;->getStickyOffset()I

    move-result v21

    if-lez v21, :cond_7

    if-ge v8, v14, :cond_7

    if-gt v14, v10, :cond_7

    invoke-virtual {v4}, Lc8/jdg;->getStickyOffset()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_7

    .line 534
    :cond_4
    const/4 v2, 0x1

    .line 535
    if-le v14, v5, :cond_5

    .line 536
    move v5, v14

    .line 556
    .end local v8    # "firstVisiblePosition":I
    .end local v10    # "lastVisiblePosition":I
    .end local v14    # "pos":I
    :cond_5
    :goto_2
    if-eqz v2, :cond_b

    invoke-virtual {v4}, Lc8/jdg;->getLocationFromStart()I

    move-result v21

    if-ltz v21, :cond_b

    invoke-virtual {v4}, Lc8/jdg;->getStickyOffset()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    if-ltz p2, :cond_b

    const/16 v17, 0x1

    .line 557
    .local v17, "showSticky":Z
    :goto_3
    invoke-virtual {v4}, Lc8/jdg;->getLocationFromStart()I

    move-result v21

    invoke-virtual {v4}, Lc8/jdg;->getStickyOffset()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_c

    invoke-virtual {v4}, Lc8/jdg;->getStickyOffset()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    if-gtz p2, :cond_c

    const/16 v16, 0x1

    .line 558
    .local v16, "removeSticky":Z
    :goto_4
    if-eqz v17, :cond_d

    move-object/from16 v21, v3

    .line 559
    check-cast v21, Lc8/ddg;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lc8/ddg;->notifyStickyShow(Lc8/jdg;)V

    .line 563
    :cond_6
    :goto_5
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lc8/jdg;->setLocationFromStart(I)V

    goto/16 :goto_1

    .line 539
    .end local v16    # "removeSticky":Z
    .end local v17    # "showSticky":Z
    .restart local v8    # "firstVisiblePosition":I
    .restart local v10    # "lastVisiblePosition":I
    .restart local v14    # "pos":I
    :cond_7
    const/4 v15, 0x1

    goto :goto_2

    .line 541
    .end local v8    # "firstVisiblePosition":I
    .end local v10    # "lastVisiblePosition":I
    .end local v14    # "pos":I
    .restart local v11    # "layoutManager":Lc8/xv;
    :cond_8
    instance-of v0, v11, Lc8/Qw;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 542
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v7, v0, [I

    .local v7, "firstItems":[I
    move-object/from16 v21, v11

    .line 543
    check-cast v21, Lc8/Qw;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lc8/Qw;->findFirstVisibleItemPositions([I)[I

    move-result-object v21

    const/16 v22, 0x0

    aget v8, v21, v22

    .line 544
    .restart local v8    # "firstVisiblePosition":I
    check-cast v11, Lc8/Qw;

    .end local v11    # "layoutManager":Lc8/xv;
    invoke-virtual {v11, v7}, Lc8/Qw;->findLastVisibleItemPositions([I)[I

    move-result-object v21

    const/16 v22, 0x0

    aget v10, v21, v22

    .line 545
    .restart local v10    # "lastVisiblePosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 547
    .restart local v14    # "pos":I
    if-le v14, v8, :cond_9

    invoke-virtual {v4}, Lc8/jdg;->getStickyOffset()I

    move-result v21

    if-lez v21, :cond_a

    if-ge v8, v14, :cond_a

    if-gt v14, v10, :cond_a

    invoke-virtual {v4}, Lc8/jdg;->getStickyOffset()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_a

    .line 549
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 551
    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 556
    .end local v7    # "firstItems":[I
    .end local v8    # "firstVisiblePosition":I
    .end local v10    # "lastVisiblePosition":I
    .end local v14    # "pos":I
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 557
    .restart local v17    # "showSticky":Z
    :cond_c
    const/16 v16, 0x0

    goto :goto_4

    .line 560
    .restart local v16    # "removeSticky":Z
    :cond_d
    if-nez v16, :cond_e

    if-eqz v15, :cond_6

    :cond_e
    move-object/from16 v21, v3

    .line 561
    check-cast v21, Lc8/ddg;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lc8/ddg;->notifyStickyRemove(Lc8/jdg;)V

    goto :goto_5

    .line 567
    .end local v2    # "beforeFirstVisibleItem":Z
    .end local v4    # "cell":Lc8/jdg;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    .end local v12    # "location":[I
    .end local v13    # "parentLocation":[I
    .end local v15    # "removeOldSticky":Z
    .end local v16    # "removeSticky":Z
    .end local v17    # "showSticky":Z
    .end local v18    # "stickyComponent":Lc8/tbg;
    .end local v20    # "top":I
    :cond_f
    if-ltz v5, :cond_0

    .line 568
    check-cast v3, Lc8/ddg;

    .end local v3    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {v3, v5}, Lc8/ddg;->updateStickyView(I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Lc8/Qv;I)V
    .locals 0
    .param p1, "x0"    # Lc8/Qv;
    .param p2, "x1"    # I

    .prologue
    .line 87
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    check-cast p1, Lc8/hfg;

    .end local p1    # "x0":Lc8/Qv;
    invoke-virtual {p0, p1, p2}, Lc8/Xcg;->onBindViewHolder(Lc8/hfg;I)V

    return-void
.end method

.method public onBindViewHolder(Lc8/hfg;I)V
    .locals 12
    .param p1, "holder"    # Lc8/hfg;
    .param p2, "position"    # I

    .prologue
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 803
    if-nez p1, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    invoke-virtual {p1, v10}, Lc8/hfg;->setComponentUsing(Z)V

    .line 805
    invoke-virtual {p0, p2}, Lc8/Xcg;->getChild(I)Lc8/tbg;

    move-result-object v5

    .line 806
    .local v5, "component":Lc8/tbg;
    if-eqz v5, :cond_2

    instance-of v8, v5, Lc8/Qbg;

    if-nez v8, :cond_2

    instance-of v8, v5, Lc8/Obg;

    if-nez v8, :cond_2

    invoke-virtual {v5}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v8

    invoke-interface {v8}, Lc8/qYf;->isFixed()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 811
    :cond_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 812
    iget-object v8, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bind WXRefresh & WXLoading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_3
    instance-of v8, v5, Lc8/ibg;

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lc8/hfg;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v8

    invoke-interface {v8}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v8

    const-string/jumbo v9, "holderBackground"

    invoke-virtual {v8, v9}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 818
    invoke-virtual {v5}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v8

    invoke-interface {v8}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v8

    const-string/jumbo v9, "holderBackground"

    invoke-virtual {v8, v9}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 819
    .local v6, "holderBackground":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lc8/Bgg;->getColor(Ljava/lang/String;I)I

    move-result v4

    .line 820
    .local v4, "color":I
    invoke-virtual {p1}, Lc8/hfg;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 821
    invoke-virtual {p1}, Lc8/hfg;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 822
    invoke-virtual {p1}, Lc8/hfg;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_0

    .line 827
    .end local v4    # "color":I
    .end local v6    # "holderBackground":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Lc8/hfg;->getComponent()Lc8/tbg;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lc8/hfg;->getComponent()Lc8/tbg;

    move-result-object v8

    instance-of v8, v8, Lc8/jdg;

    if-eqz v8, :cond_0

    .line 828
    invoke-virtual {p1}, Lc8/hfg;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 829
    invoke-virtual {p1, v5}, Lc8/hfg;->bindData(Lc8/tbg;)V

    .line 830
    invoke-virtual {v5, v10}, Lc8/tbg;->onRenderFinish(I)V

    .line 832
    :cond_5
    iget-object v8, p0, Lc8/Xcg;->mDragHelper:Lc8/Zcg;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lc8/Xcg;->mDragHelper:Lc8/Zcg;

    invoke-interface {v8}, Lc8/Zcg;->isDraggable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 835
    iget-object v8, p0, Lc8/Xcg;->mTriggerType:Ljava/lang/String;

    if-nez v8, :cond_7

    const-string/jumbo v8, "longpress"

    :goto_1
    iput-object v8, p0, Lc8/Xcg;->mTriggerType:Ljava/lang/String;

    .line 837
    invoke-virtual {p1}, Lc8/hfg;->getComponent()Lc8/tbg;

    move-result-object v2

    check-cast v2, Lc8/jdg;

    .line 838
    .local v2, "cell":Lc8/jdg;
    const/4 v7, 0x0

    .line 839
    .local v7, "isExcluded":Z
    invoke-virtual {v2}, Lc8/jdg;->getDomObject()Lc8/qYf;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 840
    invoke-virtual {v2}, Lc8/jdg;->getDomObject()Lc8/qYf;

    move-result-object v8

    invoke-interface {v8}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    .line 841
    .local v3, "cellAttrs":Lc8/xYf;
    const-string/jumbo v8, "dragExcluded"

    invoke-virtual {v3, v8}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 844
    .end local v3    # "cellAttrs":Lc8/xYf;
    :cond_6
    iget-object v8, p0, Lc8/Xcg;->mDragHelper:Lc8/Zcg;

    invoke-interface {v8, p1, v7}, Lc8/Zcg;->setDragExcluded(Lc8/Qv;Z)V

    .line 847
    const-string/jumbo v8, "pan"

    iget-object v9, p0, Lc8/Xcg;->mTriggerType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 848
    iget-object v8, p0, Lc8/Xcg;->mDragHelper:Lc8/Zcg;

    invoke-interface {v8, v11}, Lc8/Zcg;->setLongPressDragEnabled(Z)V

    .line 850
    const-string/jumbo v8, "dragAnchor"

    invoke-direct {p0, v2, v8}, Lc8/Xcg;->findComponentByAnchorName(Lc8/tbg;Ljava/lang/String;)Lc8/tbg;

    move-result-object v1

    .line 852
    .local v1, "anchorComponent":Lc8/tbg;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8

    if-nez v7, :cond_8

    .line 853
    invoke-virtual {v1}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 854
    .local v0, "anchor":Landroid/view/View;
    new-instance v8, Lc8/Ucg;

    invoke-direct {v8, p0, p1}, Lc8/Ucg;-><init>(Lc8/Xcg;Lc8/hfg;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 835
    .end local v0    # "anchor":Landroid/view/View;
    .end local v1    # "anchorComponent":Lc8/tbg;
    .end local v2    # "cell":Lc8/jdg;
    .end local v7    # "isExcluded":Z
    :cond_7
    iget-object v8, p0, Lc8/Xcg;->mTriggerType:Ljava/lang/String;

    goto :goto_1

    .line 864
    .restart local v1    # "anchorComponent":Lc8/tbg;
    .restart local v2    # "cell":Lc8/jdg;
    .restart local v7    # "isExcluded":Z
    :cond_8
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 865
    if-nez v7, :cond_9

    .line 866
    iget-object v8, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "[error] onBindViewHolder: the anchor component or view is not found"

    invoke-static {v8, v9}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 868
    :cond_9
    iget-object v8, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onBindViewHolder: position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is drag excluded"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 873
    .end local v1    # "anchorComponent":Lc8/tbg;
    :cond_a
    const-string/jumbo v8, "longpress"

    iget-object v9, p0, Lc8/Xcg;->mTriggerType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 874
    iget-object v8, p0, Lc8/Xcg;->mDragHelper:Lc8/Zcg;

    invoke-interface {v8, v10}, Lc8/Zcg;->setLongPressDragEnabled(Z)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/Qv;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 87
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/Xcg;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/hfg;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/hfg;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 896
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v3, p0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 897
    iget-object v3, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    .line 898
    invoke-direct {p0, p2}, Lc8/Xcg;->createVHForFakeComponent(I)Lc8/hfg;

    move-result-object v3

    .line 934
    :goto_0
    return-object v3

    .line 899
    :cond_0
    iget-object v3, p0, Lc8/Xcg;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 900
    .local v2, "mTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-direct {p0, p2}, Lc8/Xcg;->checkRecycledViewPool(I)V

    .line 901
    if-nez v2, :cond_1

    .line 902
    invoke-direct {p0, p2}, Lc8/Xcg;->createVHForFakeComponent(I)Lc8/hfg;

    move-result-object v3

    goto :goto_0

    .line 904
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 905
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    .line 906
    .local v0, "component":Lc8/tbg;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lc8/tbg;->isUsing()Z

    move-result v3

    if-nez v3, :cond_6

    .line 910
    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->isFixed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 911
    invoke-direct {p0, p2}, Lc8/Xcg;->createVHForFakeComponent(I)Lc8/hfg;

    move-result-object v3

    goto :goto_0

    .line 913
    :cond_2
    instance-of v3, v0, Lc8/jdg;

    if-eqz v3, :cond_4

    .line 914
    invoke-virtual {v0}, Lc8/tbg;->getRealView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 915
    new-instance v3, Lc8/hfg;

    invoke-direct {v3, v0, p2}, Lc8/hfg;-><init>(Lc8/tbg;I)V

    goto :goto_0

    :cond_3
    move-object v3, v0

    .line 917
    check-cast v3, Lc8/jdg;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lc8/jdg;->lazy(Z)V

    .line 918
    invoke-virtual {v0}, Lc8/tbg;->createView()V

    .line 919
    invoke-virtual {v0, v0}, Lc8/tbg;->applyLayoutAndEvent(Lc8/tbg;)V

    .line 920
    new-instance v3, Lc8/hfg;

    invoke-direct {v3, v0, p2}, Lc8/hfg;-><init>(Lc8/tbg;I)V

    goto :goto_0

    .line 922
    :cond_4
    instance-of v3, v0, Lc8/ibg;

    if-eqz v3, :cond_5

    .line 923
    invoke-direct {p0, p2}, Lc8/Xcg;->createVHForRefreshComponent(I)Lc8/hfg;

    move-result-object v3

    goto :goto_0

    .line 925
    :cond_5
    iget-object v3, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "List cannot include element except cell\u3001header\u3001fixed\u3001refresh and loading"

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-direct {p0, p2}, Lc8/Xcg;->createVHForFakeComponent(I)Lc8/hfg;

    move-result-object v3

    goto :goto_0

    .line 904
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 931
    .end local v0    # "component":Lc8/tbg;
    .end local v1    # "i":I
    .end local v2    # "mTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    :cond_7
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 932
    iget-object v3, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot find request viewType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :cond_8
    invoke-direct {p0, p2}, Lc8/Xcg;->createVHForFakeComponent(I)Lc8/hfg;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public bridge synthetic onFailedToRecycleView(Lc8/Qv;)Z
    .locals 1
    .param p1, "x0"    # Lc8/Qv;

    .prologue
    .line 87
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    check-cast p1, Lc8/hfg;

    .end local p1    # "x0":Lc8/Qv;
    invoke-virtual {p0, p1}, Lc8/Xcg;->onFailedToRecycleView(Lc8/hfg;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lc8/hfg;)Z
    .locals 3
    .param p1, "holder"    # Lc8/hfg;

    .prologue
    .line 1109
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to recycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 87
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "x0":Landroid/view/View;
    invoke-virtual {p0, p1}, Lc8/Xcg;->onHostViewInitialized(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onHostViewInitialized(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    .local p1, "host":Landroid/view/ViewGroup;, "TT;"
    invoke-super {p0, p1}, Lc8/scg;->onHostViewInitialized(Landroid/view/View;)V

    .line 177
    check-cast p1, Lc8/ddg;

    .end local p1    # "host":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {p1}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v0

    .line 178
    .local v0, "recyclerView":Lc8/efg;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/efg;->getAdapter()Lc8/iv;

    move-result-object v1

    if-nez v1, :cond_1

    .line 179
    :cond_0
    iget-object v1, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "RecyclerView is not found or Adapter is not bound"

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 184
    iget-object v1, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "children is null"

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_2
    new-instance v1, Lc8/Ycg;

    iget-object v2, p0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    new-instance v3, Lc8/Qcg;

    invoke-direct {v3, p0}, Lc8/Qcg;-><init>(Lc8/Xcg;)V

    invoke-direct {v1, v2, v0, v3}, Lc8/Ycg;-><init>(Ljava/util/List;Lc8/Rv;Lc8/bdg;)V

    iput-object v1, p0, Lc8/Xcg;->mDragHelper:Lc8/Zcg;

    .line 195
    invoke-virtual {p0}, Lc8/Xcg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/Xcg;->getTriggerType(Lc8/qYf;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/Xcg;->mTriggerType:Ljava/lang/String;

    goto :goto_0
.end method

.method public onLoadMore(I)V
    .locals 5
    .param p1, "offScreenY"    # I

    .prologue
    .line 1130
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lc8/Xcg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/xYf;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "offset":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1133
    const-string/jumbo v1, "0"

    .line 1135
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lc8/Xcg;->getInstance()Lc8/nVf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v4

    invoke-static {v3, v4}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v2

    .line 1137
    .local v2, "offsetParsed":F
    int-to-float v3, p1

    cmpg-float v3, v3, v2

    if-gtz v3, :cond_2

    .line 1139
    iget v3, p0, Lc8/Xcg;->mListCellCount:I

    iget-object v4, p0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lc8/Xcg;->mForceLoadmoreNextTime:Z

    if-eqz v3, :cond_2

    .line 1141
    :cond_1
    const-string/jumbo v3, "loadmore"

    invoke-virtual {p0, v3}, Lc8/Xcg;->fireEvent(Ljava/lang/String;)V

    .line 1142
    iget-object v3, p0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lc8/Xcg;->mListCellCount:I

    .line 1143
    const/4 v3, 0x0

    iput-boolean v3, p0, Lc8/Xcg;->mForceLoadmoreNextTime:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    .end local v1    # "offset":Ljava/lang/String;
    .end local v2    # "offsetParsed":F
    :cond_2
    :goto_0
    return-void

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "onLoadMore :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic onViewRecycled(Lc8/Qv;)V
    .locals 0
    .param p1, "x0"    # Lc8/Qv;

    .prologue
    .line 87
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    check-cast p1, Lc8/hfg;

    .end local p1    # "x0":Lc8/Qv;
    invoke-virtual {p0, p1}, Lc8/Xcg;->onViewRecycled(Lc8/hfg;)V

    return-void
.end method

.method public onViewRecycled(Lc8/hfg;)V
    .locals 6
    .param p1, "holder"    # Lc8/hfg;

    .prologue
    .line 778
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 780
    .local v0, "begin":J
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lc8/hfg;->setComponentUsing(Z)V

    .line 781
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc8/hfg;->canRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lc8/hfg;->getComponent()Lc8/tbg;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lc8/hfg;->getComponent()Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tbg;->isUsing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 785
    invoke-virtual {p1}, Lc8/hfg;->recycled()V

    .line 790
    :goto_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    iget-object v2, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycle holder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  Thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_0
    return-void

    .line 788
    :cond_1
    iget-object v2, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "this holder can not be allowed to  recycled"

    invoke-static {v2, v3}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Lc8/tbg;Z)V
    .locals 8
    .param p1, "child"    # Lc8/tbg;
    .param p2, "destroy"    # Z

    .prologue
    .line 729
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v5, p0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 730
    .local v2, "index":I
    if-eqz p2, :cond_0

    .line 731
    invoke-virtual {p1}, Lc8/tbg;->detachViewAndClearPreInfo()Landroid/view/View;

    .line 733
    :cond_0
    invoke-direct {p0, p1}, Lc8/Xcg;->unBindViewType(Lc8/tbg;)V

    .line 735
    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 736
    .local v4, "view":Landroid/view/ViewGroup;, "TT;"
    if-nez v4, :cond_1

    .line 759
    .end local v4    # "view":Landroid/view/ViewGroup;, "TT;"
    :goto_0
    return-void

    .line 740
    .restart local v4    # "view":Landroid/view/ViewGroup;, "TT;"
    :cond_1
    const/4 v3, 0x0

    .line 741
    .local v3, "isRemoveAnimation":Z
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v1

    .line 742
    .local v1, "domObject":Lc8/qYf;
    if-eqz v1, :cond_2

    .line 743
    invoke-interface {v1}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v5

    const-string/jumbo v6, "deleteAnimation"

    invoke-virtual {v5, v6}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 744
    .local v0, "attr":Ljava/lang/Object;
    const-string/jumbo v5, "default"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 745
    const/4 v3, 0x1

    .line 748
    .end local v0    # "attr":Ljava/lang/Object;
    :cond_2
    if-eqz v3, :cond_4

    move-object v5, v4

    .line 749
    check-cast v5, Lc8/ddg;

    invoke-interface {v5}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v5

    iget-object v6, p0, Lc8/Xcg;->mItemAnimator:Lc8/qv;

    invoke-virtual {v5, v6}, Lc8/efg;->setItemAnimator(Lc8/qv;)V

    .line 754
    :goto_1
    check-cast v4, Lc8/ddg;

    .end local v4    # "view":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {v4}, Lc8/ddg;->getRecyclerViewBaseAdapter()Lc8/ifg;

    move-result-object v5

    invoke-virtual {v5, v2}, Lc8/ifg;->notifyItemRemoved(I)V

    .line 755
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 756
    iget-object v5, p0, Lc8/Xcg;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeChild child at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_3
    invoke-super {p0, p1, p2}, Lc8/scg;->remove(Lc8/tbg;Z)V

    goto :goto_0

    .restart local v4    # "view":Landroid/view/ViewGroup;, "TT;"
    :cond_4
    move-object v5, v4

    .line 751
    check-cast v5, Lc8/ddg;

    invoke-interface {v5}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lc8/efg;->setItemAnimator(Lc8/qv;)V

    goto :goto_1
.end method

.method public resetLoadmore()V
    .locals 1
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 1206
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Xcg;->mForceLoadmoreNextTime:Z

    .line 1207
    const/4 v0, 0x0

    iput v0, p0, Lc8/Xcg;->mListCellCount:I

    .line 1208
    return-void
.end method

.method public scrollTo(Lc8/tbg;Ljava/util/Map;)V
    .locals 12
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
    .line 446
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 447
    .local v4, "offsetFloat":F
    const/4 v8, 0x1

    .line 449
    .local v8, "smooth":Z
    if-eqz p2, :cond_0

    .line 450
    const-string/jumbo v10, "offset"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    const-string/jumbo v5, "0"

    .line 451
    .local v5, "offsetStr":Ljava/lang/String;
    :goto_0
    const-string/jumbo v10, "animated"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 452
    if-eqz v5, :cond_0

    .line 454
    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {p0}, Lc8/Xcg;->getInstance()Lc8/nVf;

    move-result-object v11

    invoke-virtual {v11}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v11

    invoke-static {v10, v11}, Lc8/Jgg;->getRealPxByWidth(FI)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 461
    .end local v5    # "offsetStr":Ljava/lang/String;
    :cond_0
    :goto_1
    float-to-int v3, v4

    .line 463
    .local v3, "offset":I
    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 464
    .local v0, "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    if-nez v0, :cond_3

    .line 487
    .end local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_1
    :goto_2
    return-void

    .line 450
    .end local v3    # "offset":I
    :cond_2
    const-string/jumbo v10, "offset"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 455
    .restart local v5    # "offsetStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 456
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Float parseFloat error :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 468
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "offsetStr":Ljava/lang/String;
    .restart local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    .restart local v3    # "offset":I
    :cond_3
    move-object v6, p1

    .line 469
    .local v6, "parent":Lc8/tbg;
    const/4 v1, 0x0

    .line 470
    .local v1, "cell":Lc8/jdg;
    :goto_3
    if-eqz v6, :cond_4

    .line 471
    instance-of v10, v6, Lc8/jdg;

    if-eqz v10, :cond_5

    move-object v1, v6

    .line 472
    check-cast v1, Lc8/jdg;

    .line 478
    :cond_4
    if-eqz v1, :cond_1

    .line 479
    iget-object v10, p0, Lc8/Xcg;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 480
    .local v7, "pos":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    .line 484
    check-cast v0, Lc8/ddg;

    .end local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    invoke-interface {v0}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v9

    .line 485
    .local v9, "view":Lc8/efg;
    invoke-virtual {p0}, Lc8/Xcg;->getOrientation()I

    move-result v10

    invoke-virtual {v9, v8, v7, v3, v10}, Lc8/efg;->scrollTo(ZIII)V

    goto :goto_2

    .line 475
    .end local v7    # "pos":I
    .end local v9    # "view":Lc8/efg;
    .restart local v0    # "bounceRecyclerView":Landroid/view/ViewGroup;, "TT;"
    :cond_5
    invoke-virtual {v6}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v6

    goto :goto_3
.end method

.method public setDraggable(Z)V
    .locals 2
    .param p1, "isDraggable"    # Z
    .annotation runtime Lc8/vbg;
        name = "draggable"
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v0, p0, Lc8/Xcg;->mDragHelper:Lc8/Zcg;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lc8/Xcg;->mDragHelper:Lc8/Zcg;

    invoke-interface {v0, p1}, Lc8/Zcg;->setDraggable(Z)V

    .line 396
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set draggable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 399
    :cond_1
    return-void
.end method

.method public setOffsetAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I
    .annotation runtime Lc8/vbg;
        name = "offsetAccuracy"
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    int-to-float v1, p1

    invoke-virtual {p0}, Lc8/Xcg;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v0

    .line 388
    .local v0, "real":F
    float-to-int v1, v0

    iput v1, p0, Lc8/Xcg;->mOffsetAccuracy:I

    .line 389
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 357
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 373
    invoke-super {p0, p1, p2}, Lc8/scg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    :pswitch_0
    return v3

    .line 357
    :sswitch_0
    const-string/jumbo v6, "loadmoreoffset"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "scrollable"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "offsetAccuracy"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "draggable"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    .line 361
    :pswitch_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2, v4}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 362
    .local v2, "scrollable":Z
    invoke-virtual {p0, v2}, Lc8/Xcg;->setScrollable(Z)V

    goto :goto_1

    .line 365
    .end local v2    # "scrollable":Z
    :pswitch_2
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v4}, Lc8/Dgg;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 366
    .local v0, "accuracy":I
    invoke-virtual {p0, v0}, Lc8/Xcg;->setOffsetAccuracy(I)V

    goto :goto_1

    .line 369
    .end local v0    # "accuracy":I
    :pswitch_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2, v4}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 370
    .local v1, "draggable":Z
    invoke-virtual {p0, v1}, Lc8/Xcg;->setDraggable(Z)V

    goto :goto_1

    .line 357
    :sswitch_data_0
    .sparse-switch
        -0x12260273 -> :sswitch_3
        -0x6b59672 -> :sswitch_0
        -0x55c154 -> :sswitch_2
        0x3f94da7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setScrollable(Z)V
    .locals 2
    .param p1, "scrollable"    # Z
    .annotation runtime Lc8/vbg;
        name = "scrollable"
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iput-boolean p1, p0, Lc8/Xcg;->isScrollable:Z

    .line 379
    invoke-virtual {p0}, Lc8/Xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Lc8/ddg;

    invoke-interface {v1}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v0

    .line 380
    .local v0, "inner":Lc8/efg;
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0, p1}, Lc8/efg;->setScrollable(Z)V

    .line 383
    :cond_0
    return-void
.end method

.method public unbindAppearEvent(Lc8/tbg;)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x0

    .line 436
    invoke-direct {p0, p1, v0, v0}, Lc8/Xcg;->setAppearanceWatch(Lc8/tbg;IZ)V

    .line 437
    return-void
.end method

.method public unbindDisappearEvent(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 441
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lc8/Xcg;->setAppearanceWatch(Lc8/tbg;IZ)V

    .line 442
    return-void
.end method

.method public unbindStickStyle(Lc8/tbg;)V
    .locals 2
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 337
    .local p0, "this":Lc8/Xcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent<TT;>;"
    iget-object v0, p0, Lc8/Xcg;->stickyHelper:Lc8/Mcg;

    iget-object v1, p0, Lc8/Xcg;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lc8/Mcg;->unbindStickStyle(Lc8/tbg;Ljava/util/Map;)V

    .line 338
    return-void
.end method
