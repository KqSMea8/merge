.class public Lc8/qPf;
.super Lc8/Rv;
.source "TRecyclerView.java"

# interfaces
.implements Lc8/wPf;
.implements Lc8/xPf;
.implements Lc8/zPf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/mPf;,
        Lc8/nPf;,
        Lc8/oPf;,
        Lc8/pPf;,
        Lc8/iPf;,
        Lc8/jPf;,
        Lc8/lPf;,
        Lc8/kPf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Rv;",
        "Lc8/wPf;",
        "Lc8/xPf;",
        "Lc8/zPf",
        "<",
        "Lc8/Rv;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID_FOOTER:J = 0x2000000000000000L

.field public static final ID_HEADER:J = 0x1000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_FOOTER:I = -0x80000000


# instance fields
.field private mFeatureList:Lcom/taobao/uikit/utils/FeatureList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/uikit/utils/FeatureList",
            "<",
            "Lc8/Rv;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemClickListener:Lc8/nPf;

.field private mItemLongClickListener:Lc8/oPf;

.field private mOnScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Cv;",
            ">;"
        }
    .end annotation
.end field

.field private mRawAdapter:Lc8/iv;

.field private mRecyclerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Gv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/qPf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/qPf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lc8/Rv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Lcom/taobao/uikit/utils/FeatureList;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/utils/FeatureList;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/qPf;->mOnScrollListeners:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/qPf;->mRecyclerListeners:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lc8/kPf;

    invoke-direct {v0, p0}, Lc8/kPf;-><init>(Lc8/qPf;)V

    invoke-super {p0, v0}, Lc8/Rv;->setOnScrollListener(Lc8/Cv;)V

    .line 65
    new-instance v0, Lc8/lPf;

    invoke-direct {v0, p0}, Lc8/lPf;-><init>(Lc8/qPf;)V

    invoke-super {p0, v0}, Lc8/Rv;->setRecyclerListener(Lc8/Gv;)V

    .line 66
    iget-object v0, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lc8/qPf;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/qPf;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/qPf;->mOnScrollListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lc8/qPf;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/qPf;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/qPf;->mRecyclerListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lc8/qPf;I)Z
    .locals 1
    .param p0, "x0"    # Lc8/qPf;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lc8/qPf;->isHeaderOrFooter(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lc8/qPf;)Lc8/nPf;
    .locals 1
    .param p0, "x0"    # Lc8/qPf;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/qPf;->mItemClickListener:Lc8/nPf;

    return-object v0
.end method

.method static synthetic access$400(Lc8/qPf;)Lc8/oPf;
    .locals 1
    .param p0, "x0"    # Lc8/qPf;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/qPf;->mItemLongClickListener:Lc8/oPf;

    return-object v0
.end method

.method private addGestureDetectorIfNeed()V
    .locals 3

    .prologue
    .line 1177
    iget-object v0, p0, Lc8/qPf;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 1179
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lc8/qPf;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lc8/hPf;

    invoke-direct {v2, p0, p0}, Lc8/hPf;-><init>(Lc8/qPf;Lc8/qPf;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lc8/qPf;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1198
    :cond_0
    return-void
.end method

.method private isHeaderOrFooter(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1049
    invoke-virtual {p0}, Lc8/qPf;->getHeaderViewsCount()I

    move-result v1

    .line 1050
    .local v1, "numHeaders":I
    invoke-virtual {p0}, Lc8/qPf;->getFooterViewsCount()I

    move-result v0

    .line 1051
    .local v0, "numFooters":I
    invoke-virtual {p0}, Lc8/qPf;->getAdapter()Lc8/iv;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1053
    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Lc8/qPf;->getAdapter()Lc8/iv;

    move-result-object v2

    invoke-virtual {v2}, Lc8/iv;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_0

    .line 1055
    const/4 v2, 0x0

    .line 1059
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 944
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 946
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 947
    .local v2, "view":Landroid/view/View;
    if-ne v2, p1, :cond_1

    .line 949
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 953
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 944
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addFeature(Lc8/SOf;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/SOf",
            "<-",
            "Lc8/Rv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    iget-object v0, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->addFeature(Lc8/SOf;)Z

    move-result v0

    return v0
.end method

.method public addFooterView(ILandroid/view/View;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 885
    iget-object v2, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 887
    invoke-virtual {p0}, Lc8/qPf;->getAdapter()Lc8/iv;

    move-result-object v0

    .line 888
    .local v0, "adapter":Lc8/iv;
    if-eqz v0, :cond_0

    .line 890
    instance-of v2, v0, Lc8/iPf;

    if-nez v2, :cond_2

    .line 892
    new-instance v2, Lc8/iPf;

    iget-object v3, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v0, p0}, Lc8/iPf;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lc8/iv;Lc8/qPf;)V

    invoke-virtual {p0, v2}, Lc8/qPf;->setAdapter(Lc8/iv;)V

    .line 900
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lc8/qPf;->getLayoutManager()Lc8/xv;

    move-result-object v1

    .line 901
    .local v1, "lm":Lc8/xv;
    if-eqz v1, :cond_1

    .line 903
    invoke-virtual {p0, v1}, Lc8/qPf;->setLayoutManager(Lc8/xv;)V

    .line 905
    :cond_1
    return-void

    .line 896
    .end local v1    # "lm":Lc8/xv;
    :cond_2
    invoke-virtual {v0}, Lc8/iv;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 880
    iget-object v0, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lc8/qPf;->addFooterView(ILandroid/view/View;)V

    .line 881
    return-void
.end method

.method public addHeaderView(ILandroid/view/View;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 856
    iget-object v2, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 858
    invoke-virtual {p0}, Lc8/qPf;->getAdapter()Lc8/iv;

    move-result-object v0

    .line 859
    .local v0, "adapter":Lc8/iv;
    if-eqz v0, :cond_0

    .line 861
    instance-of v2, v0, Lc8/iPf;

    if-nez v2, :cond_2

    .line 863
    new-instance v2, Lc8/iPf;

    iget-object v3, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v0, p0}, Lc8/iPf;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lc8/iv;Lc8/qPf;)V

    invoke-virtual {p0, v2}, Lc8/qPf;->setAdapter(Lc8/iv;)V

    .line 871
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lc8/qPf;->getLayoutManager()Lc8/xv;

    move-result-object v1

    .line 872
    .local v1, "lm":Lc8/xv;
    if-eqz v1, :cond_1

    .line 874
    invoke-virtual {p0, v1}, Lc8/qPf;->setLayoutManager(Lc8/xv;)V

    .line 876
    :cond_1
    return-void

    .line 867
    .end local v1    # "lm":Lc8/xv;
    :cond_2
    invoke-virtual {v0}, Lc8/iv;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 851
    iget-object v0, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lc8/qPf;->addHeaderView(ILandroid/view/View;)V

    .line 852
    return-void
.end method

.method public addOnScrollListener(Lc8/Cv;)V
    .locals 0
    .param p1, "listener"    # Lc8/Cv;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lc8/Rv;->addOnScrollListener(Lc8/Cv;)V

    .line 97
    return-void
.end method

.method public clearFeatures()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->clearFeatures()V

    .line 416
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 376
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 377
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 378
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 379
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/POf;

    if-eqz v3, :cond_0

    .line 381
    check-cast v0, Lc8/POf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0}, Lc8/POf;->beforeComputeScroll()V

    .line 377
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_1
    invoke-super {p0}, Lc8/Rv;->computeScroll()V

    .line 385
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 386
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 387
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/POf;

    if-eqz v3, :cond_2

    .line 389
    check-cast v0, Lc8/POf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0}, Lc8/POf;->afterComputeScroll()V

    .line 385
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 392
    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 196
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 197
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 198
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 199
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 201
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeDispatchDraw(Landroid/graphics/Canvas;)V

    .line 197
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-super {p0, p1}, Lc8/Rv;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 205
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 206
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 207
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 209
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterDispatchDraw(Landroid/graphics/Canvas;)V

    .line 205
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 212
    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 271
    iget-object v4, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 272
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 273
    iget-object v4, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 274
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_0

    .line 276
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 272
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-super {p0, p1}, Lc8/Rv;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 281
    .local v2, "result":Z
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 282
    iget-object v4, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 283
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_2

    .line 285
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->afterDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 281
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 288
    :cond_3
    return v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 172
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 173
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 174
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 175
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 177
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeDraw(Landroid/graphics/Canvas;)V

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-super {p0, p1}, Lc8/Rv;->draw(Landroid/graphics/Canvas;)V

    .line 182
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 183
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 184
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 186
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterDraw(Landroid/graphics/Canvas;)V

    .line 182
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 190
    :cond_3
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;JI)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J
    .param p5, "reserve"    # I

    .prologue
    .line 352
    invoke-super {p0, p1, p2, p3, p4}, Lc8/Rv;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public findFeature(Ljava/lang/Class;)Lc8/SOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/SOf",
            "<-",
            "Lc8/Rv;",
            ">;>;)",
            "Lc8/SOf",
            "<-",
            "Lc8/Rv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;>;"
    iget-object v0, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->findFeature(Ljava/lang/Class;)Lc8/SOf;

    move-result-object v0

    return-object v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 1313
    invoke-super {p0}, Lc8/Rv;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 967
    invoke-virtual {p0}, Lc8/qPf;->getTotalCount()I

    move-result v0

    invoke-virtual {p0}, Lc8/qPf;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lc8/qPf;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lc8/qPf;->getLayoutManager()Lc8/xv;

    move-result-object v0

    .line 432
    .local v0, "lm":Lc8/xv;
    instance-of v1, v0, Lc8/wu;

    if-eqz v1, :cond_0

    .line 434
    check-cast v0, Lc8/wu;

    .end local v0    # "lm":Lc8/xv;
    invoke-virtual {v0}, Lc8/wu;->getOrientation()I

    move-result v1

    .line 443
    :goto_0
    return v1

    .line 436
    .restart local v0    # "lm":Lc8/xv;
    :cond_0
    instance-of v1, v0, Lc8/Qw;

    if-eqz v1, :cond_1

    .line 438
    check-cast v0, Lc8/Qw;

    .end local v0    # "lm":Lc8/xv;
    invoke-virtual {v0}, Lc8/Qw;->getOrientation()I

    move-result v1

    goto :goto_0

    .line 443
    .restart local v0    # "lm":Lc8/xv;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getRawAdapter()Lc8/iv;
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lc8/qPf;->mRawAdapter:Lc8/iv;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 2

    .prologue
    .line 972
    invoke-virtual {p0}, Lc8/qPf;->getAdapter()Lc8/iv;

    move-result-object v0

    .line 973
    .local v0, "adapter":Lc8/iv;
    if-nez v0, :cond_0

    .line 975
    const/4 v1, 0x0

    .line 979
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lc8/iv;->getItemCount()I

    move-result v1

    goto :goto_0
.end method

.method public getVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1309
    invoke-super {p0}, Lc8/Rv;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 422
    return-void
.end method

.method public measureChild(Landroid/view/View;III)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "reserve"    # I

    .prologue
    .line 346
    invoke-super {p0, p1, p2, p3}, Lc8/Rv;->measureChild(Landroid/view/View;II)V

    .line 347
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1202
    invoke-super {p0}, Lc8/Rv;->onDetachedFromWindow()V

    .line 1203
    iget-object v0, p0, Lc8/qPf;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 1205
    iput-object v1, p0, Lc8/qPf;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1208
    :cond_0
    iput-object v1, p0, Lc8/qPf;->mItemClickListener:Lc8/nPf;

    .line 1209
    iput-object v1, p0, Lc8/qPf;->mItemLongClickListener:Lc8/oPf;

    .line 1210
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 218
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 219
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 220
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 221
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 223
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeOnDraw(Landroid/graphics/Canvas;)V

    .line 219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_1
    invoke-super {p0, p1}, Lc8/Rv;->onDraw(Landroid/graphics/Canvas;)V

    .line 229
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 230
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 231
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 233
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterOnDraw(Landroid/graphics/Canvas;)V

    .line 229
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 236
    :cond_3
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 295
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 296
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 297
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 298
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_0

    .line 300
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1, p2, p3}, Lc8/IOf;->beforeOnFocusChanged(ZILandroid/graphics/Rect;)V

    .line 296
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lc8/Rv;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 305
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 306
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 307
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_2

    .line 309
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1, p2, p3}, Lc8/IOf;->afterOnFocusChanged(ZILandroid/graphics/Rect;)V

    .line 305
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 312
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 358
    invoke-super {p0, p1}, Lc8/Rv;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 360
    .local v2, "ret":Z
    iget-object v4, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 361
    .local v3, "size":I
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 363
    iget-object v4, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 364
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v4, v0, Lc8/LOf;

    if-eqz v4, :cond_0

    .line 366
    check-cast v0, Lc8/LOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/LOf;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 361
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 369
    :cond_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v8

    .line 150
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 151
    iget-object v0, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, v7}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/SOf;

    .line 152
    .local v6, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v0, v6, Lc8/MOf;

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 154
    check-cast v0, Lc8/MOf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/MOf;->beforeOnLayout(ZIIII)V

    .line 150
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 157
    .end local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    :cond_1
    invoke-super/range {p0 .. p5}, Lc8/Rv;->onLayout(ZIIII)V

    .line 159
    add-int/lit8 v7, v8, -0x1

    :goto_1
    if-ltz v7, :cond_3

    .line 160
    iget-object v0, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, v7}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/SOf;

    .line 161
    .restart local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v0, v6, Lc8/MOf;

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 163
    check-cast v0, Lc8/MOf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/MOf;->afterOnLayout(ZIIII)V

    .line 159
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 166
    .end local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 126
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 127
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 128
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 129
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/NOf;

    if-eqz v3, :cond_0

    .line 131
    check-cast v0, Lc8/NOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1, p2}, Lc8/NOf;->beforeOnMeasure(II)V

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    invoke-super {p0, p1, p2}, Lc8/Rv;->onMeasure(II)V

    .line 136
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 137
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 138
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/NOf;

    if-eqz v3, :cond_2

    .line 140
    check-cast v0, Lc8/NOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1, p2}, Lc8/NOf;->afterOnMeasure(II)V

    .line 136
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 143
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 242
    iget-object v4, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 243
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 244
    iget-object v4, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 245
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_0

    .line 247
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->beforeOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_1
    invoke-super {p0, p1}, Lc8/Rv;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 252
    .local v2, "result":Z
    iget-object v4, p0, Lc8/qPf;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v4, :cond_2

    .line 254
    iget-object v4, p0, Lc8/qPf;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 257
    :cond_2
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 258
    iget-object v4, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 259
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_3

    .line 261
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->afterOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 257
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 264
    :cond_4
    return v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 318
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 319
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 320
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 321
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_0

    .line 323
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/IOf;->beforeOnWindowFocusChanged(Z)V

    .line 319
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_1
    invoke-super {p0, p1}, Lc8/Rv;->onWindowFocusChanged(Z)V

    .line 328
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 329
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 330
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_2

    .line 332
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/IOf;->afterOnWindowFocusChanged(Z)V

    .line 328
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 335
    :cond_3
    return-void
.end method

.method public removeFeature(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/SOf",
            "<-",
            "Lc8/Rv;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;>;"
    iget-object v0, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->removeFeature(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final removeFooterView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 926
    iget-object v2, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 928
    const/4 v1, 0x0

    .line 929
    .local v1, "result":Z
    invoke-virtual {p0}, Lc8/qPf;->getAdapter()Lc8/iv;

    move-result-object v0

    .line 930
    .local v0, "adapter":Lc8/iv;
    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Lc8/iPf;

    invoke-virtual {v2, p1}, Lc8/iPf;->removeFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 932
    invoke-virtual {v0}, Lc8/iv;->notifyDataSetChanged()V

    .line 933
    const/4 v1, 0x1

    .line 935
    :cond_0
    iget-object v2, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lc8/qPf;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 938
    .end local v0    # "adapter":Lc8/iv;
    .end local v1    # "result":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 909
    iget-object v2, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 911
    const/4 v1, 0x0

    .line 912
    .local v1, "result":Z
    invoke-virtual {p0}, Lc8/qPf;->getAdapter()Lc8/iv;

    move-result-object v0

    .line 913
    .local v0, "adapter":Lc8/iv;
    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Lc8/iPf;

    invoke-virtual {v2, p1}, Lc8/iPf;->removeHeader(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 915
    invoke-virtual {v0}, Lc8/iv;->notifyDataSetChanged()V

    .line 916
    const/4 v1, 0x1

    .line 918
    :cond_0
    iget-object v2, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lc8/qPf;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 921
    .end local v0    # "adapter":Lc8/iv;
    .end local v1    # "result":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeOnScrollListener(Lc8/Cv;)V
    .locals 1
    .param p1, "l"    # Lc8/Cv;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lc8/qPf;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeRecyclerListener(Lc8/Gv;)V
    .locals 1
    .param p1, "l"    # Lc8/Gv;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lc8/qPf;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAdapter(Lc8/iv;)V
    .locals 6
    .param p1, "adapter"    # Lc8/iv;

    .prologue
    .line 985
    instance-of v3, p1, Lc8/iPf;

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 986
    check-cast v3, Lc8/iPf;

    invoke-virtual {v3}, Lc8/iPf;->getWrappedAdapter()Lc8/iv;

    move-result-object v3

    iput-object v3, p0, Lc8/qPf;->mRawAdapter:Lc8/iv;

    .line 992
    :cond_0
    :goto_0
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 993
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 994
    iget-object v3, p0, Lc8/qPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 995
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    instance-of v3, v0, Lc8/OOf;

    if-eqz v3, :cond_1

    .line 997
    instance-of v3, p1, Lc8/iPf;

    if-eqz v3, :cond_3

    .line 999
    check-cast v0, Lc8/OOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    check-cast p1, Lc8/iPf;

    .end local p1    # "adapter":Lc8/iv;
    invoke-virtual {p1}, Lc8/iPf;->getWrappedAdapter()Lc8/iv;

    move-result-object v3

    invoke-interface {v0, v3}, Lc8/OOf;->wrapAdapter(Lc8/iv;)Lc8/iv;

    move-result-object p1

    .line 993
    .restart local p1    # "adapter":Lc8/iv;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 987
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    iget-object v3, p0, Lc8/qPf;->mRawAdapter:Lc8/iv;

    if-nez v3, :cond_0

    .line 988
    iput-object p1, p0, Lc8/qPf;->mRawAdapter:Lc8/iv;

    goto :goto_0

    .line 1003
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_3
    check-cast v0, Lc8/OOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/support/v7/widget/RecyclerView;>;"
    invoke-interface {v0, p1}, Lc8/OOf;->wrapAdapter(Lc8/iv;)Lc8/iv;

    move-result-object p1

    goto :goto_2

    .line 1008
    :cond_4
    if-eqz p1, :cond_6

    instance-of v3, p1, Lc8/iPf;

    if-nez v3, :cond_6

    iget-object v3, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_5

    iget-object v3, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 1010
    :cond_5
    new-instance v3, Lc8/iPf;

    iget-object v4, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5, p1, p0}, Lc8/iPf;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lc8/iv;Lc8/qPf;)V

    invoke-super {p0, v3}, Lc8/Rv;->setAdapter(Lc8/iv;)V

    .line 1016
    :goto_3
    return-void

    .line 1014
    :cond_6
    invoke-super {p0, p1}, Lc8/Rv;->setAdapter(Lc8/iv;)V

    goto :goto_3
.end method

.method public setLayoutManager(Lc8/xv;)V
    .locals 3
    .param p1, "layout"    # Lc8/xv;

    .prologue
    .line 1033
    instance-of v1, p1, Lc8/mu;

    if-eqz v1, :cond_2

    .line 1035
    iget-object v1, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    move-object v1, p1

    .line 1037
    check-cast v1, Lc8/mu;

    invoke-virtual {v1}, Lc8/mu;->getSpanSizeLookup()Lc8/lu;

    move-result-object v0

    .line 1038
    .local v0, "ssl":Lc8/lu;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lc8/pPf;

    if-nez v1, :cond_2

    :cond_1
    move-object v1, p1

    .line 1040
    check-cast v1, Lc8/mu;

    new-instance v2, Lc8/pPf;

    invoke-direct {v2, p0, v0}, Lc8/pPf;-><init>(Lc8/qPf;Lc8/lu;)V

    invoke-virtual {v1, v2}, Lc8/mu;->setSpanSizeLookup(Lc8/lu;)V

    .line 1044
    .end local v0    # "ssl":Lc8/lu;
    :cond_2
    invoke-super {p0, p1}, Lc8/Rv;->setLayoutManager(Lc8/xv;)V

    .line 1045
    return-void
.end method

.method public setMeasuredDimension(JJ)V
    .locals 3
    .param p1, "width"    # J
    .param p3, "height"    # J

    .prologue
    .line 340
    long-to-int v0, p1

    long-to-int v1, p3

    invoke-super {p0, v0, v1}, Lc8/Rv;->setMeasuredDimension(II)V

    .line 341
    return-void
.end method

.method public setOnItemClickListener(Lc8/nPf;)V
    .locals 0
    .param p1, "listener"    # Lc8/nPf;

    .prologue
    .line 1152
    iput-object p1, p0, Lc8/qPf;->mItemClickListener:Lc8/nPf;

    .line 1153
    if-eqz p1, :cond_0

    .line 1155
    invoke-direct {p0}, Lc8/qPf;->addGestureDetectorIfNeed()V

    .line 1157
    :cond_0
    return-void
.end method

.method public setOnItemLongClickListener(Lc8/oPf;)V
    .locals 1
    .param p1, "listener"    # Lc8/oPf;

    .prologue
    .line 1161
    invoke-virtual {p0}, Lc8/qPf;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/qPf;->setLongClickable(Z)V

    .line 1166
    :cond_0
    iput-object p1, p0, Lc8/qPf;->mItemLongClickListener:Lc8/oPf;

    .line 1167
    if-eqz p1, :cond_1

    .line 1169
    invoke-direct {p0}, Lc8/qPf;->addGestureDetectorIfNeed()V

    .line 1171
    :cond_1
    return-void
.end method

.method public setOnScrollListener(Lc8/Cv;)V
    .locals 1
    .param p1, "l"    # Lc8/Cv;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lc8/qPf;->mOnScrollListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/qPf;->mOnScrollListeners:Ljava/util/List;

    .line 91
    :cond_1
    iget-object v0, p0, Lc8/qPf;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setRecyclerListener(Lc8/Gv;)V
    .locals 1
    .param p1, "l"    # Lc8/Gv;

    .prologue
    .line 110
    iget-object v0, p0, Lc8/qPf;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public swapAdapter(Lc8/iv;Z)V
    .locals 3
    .param p1, "adapter"    # Lc8/iv;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .prologue
    .line 1020
    if-eqz p1, :cond_1

    instance-of v0, p1, Lc8/iPf;

    if-nez v0, :cond_1

    .line 1022
    iget-object v0, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1024
    :cond_0
    new-instance v0, Lc8/iPf;

    iget-object v1, p0, Lc8/qPf;->mHeaderViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lc8/qPf;->mFooterViews:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1, p0}, Lc8/iPf;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lc8/iv;Lc8/qPf;)V

    invoke-super {p0, v0, p2}, Lc8/Rv;->swapAdapter(Lc8/iv;Z)V

    .line 1029
    :goto_0
    return-void

    .line 1028
    :cond_1
    invoke-super {p0, p1, p2}, Lc8/Rv;->swapAdapter(Lc8/iv;Z)V

    goto :goto_0
.end method
