.class public Lc8/zOf;
.super Lc8/SOf;
.source "SmoothScrollFeature.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lc8/GOf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yOf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/SOf",
        "<",
        "Landroid/widget/ListView;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lc8/GOf;"
    }
.end annotation


# instance fields
.field private mLastVisibleItem:I

.field private mScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lc8/SOf;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lc8/zOf;->mScrollState:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lc8/zOf;->mLastVisibleItem:I

    .line 92
    return-void
.end method

.method static synthetic access$000(Lc8/zOf;)I
    .locals 1
    .param p0, "x0"    # Lc8/zOf;

    .prologue
    .line 22
    iget v0, p0, Lc8/zOf;->mScrollState:I

    return v0
.end method

.method static synthetic access$100(Lc8/zOf;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lc8/zOf;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lc8/zOf;->resume(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lc8/zOf;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lc8/zOf;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lc8/zOf;->pause(Landroid/view/View;)V

    return-void
.end method

.method private getImageLoadFeature(Lc8/ePf;)Lc8/tOf;
    .locals 1
    .param p1, "view"    # Lc8/ePf;

    .prologue
    .line 206
    const-class v0, Lc8/tOf;

    invoke-virtual {p1, v0}, Lc8/ePf;->findFeature(Ljava/lang/Class;)Lc8/SOf;

    move-result-object v0

    check-cast v0, Lc8/tOf;

    return-object v0
.end method

.method private pause(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 237
    check-cast v3, Landroid/view/ViewGroup;

    .line 238
    .local v3, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 239
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 241
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/zOf;->pause(Landroid/view/View;)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lc8/ePf;

    if-eqz v4, :cond_1

    .line 248
    check-cast p1, Lc8/ePf;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lc8/zOf;->getImageLoadFeature(Lc8/ePf;)Lc8/tOf;

    move-result-object v2

    .line 249
    .local v2, "imageLoad":Lc8/tOf;
    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {v2}, Lc8/tOf;->pause()V

    .line 255
    .end local v2    # "imageLoad":Lc8/tOf;
    :cond_1
    return-void
.end method

.method private resume(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 213
    check-cast v3, Landroid/view/ViewGroup;

    .line 214
    .local v3, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 215
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 217
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/zOf;->resume(Landroid/view/View;)V

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Lc8/ePf;

    if-eqz v4, :cond_1

    .line 224
    check-cast p1, Lc8/ePf;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lc8/zOf;->getImageLoadFeature(Lc8/ePf;)Lc8/tOf;

    move-result-object v2

    .line 225
    .local v2, "imageLoad":Lc8/tOf;
    if-eqz v2, :cond_1

    .line 227
    invoke-virtual {v2}, Lc8/tOf;->resume()V

    .line 231
    .end local v2    # "imageLoad":Lc8/tOf;
    :cond_1
    return-void
.end method


# virtual methods
.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    return-void
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lc8/zOf;->mScrollState:I

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 68
    iget v1, p0, Lc8/zOf;->mLastVisibleItem:I

    if-eq v1, p2, :cond_2

    .line 70
    if-nez p2, :cond_3

    .line 72
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lc8/zOf;->resume(Landroid/view/View;)V

    .line 82
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    iput p2, p0, Lc8/zOf;->mLastVisibleItem:I

    .line 84
    :cond_2
    return-void

    .line 78
    :cond_3
    add-int v1, p2, p3

    if-ne p4, v1, :cond_1

    .line 80
    invoke-direct {p0, p1}, Lc8/zOf;->resume(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 55
    iput p2, p0, Lc8/zOf;->mScrollState:I

    .line 56
    if-nez p2, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lc8/zOf;->resume(Landroid/view/View;)V

    .line 60
    :cond_0
    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lc8/zOf;->setHost(Landroid/widget/ListView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "host"    # Landroid/widget/ListView;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lc8/SOf;->setHost(Landroid/view/View;)V

    .line 40
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 41
    return-void
.end method

.method public setImageViewTag(Landroid/widget/ImageView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    return-void
.end method

.method public wrapAdapter(Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    instance-of v0, p1, Lc8/yOf;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lc8/yOf;

    invoke-direct {v0, p0, p1}, Lc8/yOf;-><init>(Lc8/zOf;Landroid/widget/ListAdapter;)V

    move-object p1, v0

    .line 49
    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-object p1
.end method
