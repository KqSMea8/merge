.class public Lc8/sWo;
.super Lc8/odg;
.source "WXListComponentExt.java"

# interfaces
.implements Lc8/xWo;


# static fields
.field private static final EVENT_TYPE_SCROLL_STATE_DRAGGING:Ljava/lang/String; = "scrollstatedragging"

.field private static final EVENT_TYPE_SCROLL_STATE_IDLE:Ljava/lang/String; = "scrollstateidle"

.field private static final EVENT_TYPE_SCROLL_STATE_SETTLING:Ljava/lang/String; = "scrollstatesettling"


# instance fields
.field private mEventDragging:Z

.field private mEventIdle:Z

.field private mEventSettling:Z

.field private mMinShrink:F

.field private mOffset:I

.field private mOffsetAccuracy:I

.field private mYKOnScrollListener:Lc8/Cv;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "lazy"    # Z

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/odg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 45
    iput-boolean v1, p0, Lc8/sWo;->mEventIdle:Z

    iput-boolean v1, p0, Lc8/sWo;->mEventDragging:Z

    iput-boolean v1, p0, Lc8/sWo;->mEventSettling:Z

    .line 47
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lc8/sWo;->mMinShrink:F

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lc8/sWo;->mOffsetAccuracy:I

    .line 51
    new-instance v0, Lc8/qWo;

    invoke-direct {v0, p0}, Lc8/qWo;-><init>(Lc8/sWo;)V

    iput-object v0, p0, Lc8/sWo;->mYKOnScrollListener:Lc8/Cv;

    .line 65
    iput v1, p0, Lc8/sWo;->mOffset:I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lc8/sWo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/sWo;

    .prologue
    .line 31
    iget-boolean v0, p0, Lc8/sWo;->mEventIdle:Z

    return v0
.end method

.method static synthetic access$100(Lc8/sWo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/sWo;

    .prologue
    .line 31
    iget-boolean v0, p0, Lc8/sWo;->mEventDragging:Z

    return v0
.end method

.method static synthetic access$200(Lc8/sWo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/sWo;

    .prologue
    .line 31
    iget-boolean v0, p0, Lc8/sWo;->mEventSettling:Z

    return v0
.end method

.method static synthetic access$300(Lc8/sWo;)I
    .locals 1
    .param p0, "x0"    # Lc8/sWo;

    .prologue
    .line 31
    iget v0, p0, Lc8/sWo;->mOffset:I

    return v0
.end method

.method static synthetic access$302(Lc8/sWo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/sWo;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lc8/sWo;->mOffset:I

    return p1
.end method

.method static synthetic access$400(Lc8/sWo;Lc8/Rv;)I
    .locals 1
    .param p0, "x0"    # Lc8/sWo;
    .param p1, "x1"    # Lc8/Rv;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lc8/sWo;->calcContentOffset(Lc8/Rv;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lc8/sWo;)I
    .locals 1
    .param p0, "x0"    # Lc8/sWo;

    .prologue
    .line 31
    iget v0, p0, Lc8/sWo;->mOffsetAccuracy:I

    return v0
.end method

.method static synthetic access$600(Lc8/sWo;Lc8/Rv;II)V
    .locals 0
    .param p0, "x0"    # Lc8/sWo;
    .param p1, "x1"    # Lc8/Rv;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lc8/sWo;->fireScrollEvent(Lc8/Rv;II)V

    return-void
.end method

.method private calcContentOffset(Lc8/Rv;)I
    .locals 11
    .param p1, "recyclerView"    # Lc8/Rv;

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 148
    invoke-virtual {p1}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v5

    .line 149
    .local v5, "layoutManager":Lc8/xv;
    instance-of v8, v5, Lc8/wu;

    if-eqz v8, :cond_6

    move-object v8, v5

    .line 150
    check-cast v8, Lc8/wu;

    invoke-virtual {v8}, Lc8/wu;->findFirstVisibleItemPosition()I

    move-result v1

    .line 151
    .local v1, "firstVisibleItemPosition":I
    if-ne v1, v9, :cond_1

    .line 202
    .end local v1    # "firstVisibleItemPosition":I
    .end local v5    # "layoutManager":Lc8/xv;
    :cond_0
    :goto_0
    return v6

    .line 155
    .restart local v1    # "firstVisibleItemPosition":I
    .restart local v5    # "layoutManager":Lc8/xv;
    :cond_1
    invoke-virtual {v5, v1}, Lc8/xv;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 156
    .local v2, "firstVisibleView":Landroid/view/View;
    const/4 v3, 0x0

    .line 157
    .local v3, "firstVisibleViewOffset":I
    if-eqz v2, :cond_2

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 161
    :cond_2
    const/4 v6, 0x0

    .line 162
    .local v6, "offset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 163
    invoke-virtual {p0, v4}, Lc8/sWo;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 164
    .local v0, "child":Lc8/tbg;
    if-eqz v0, :cond_3

    instance-of v8, v0, Lc8/Qbg;

    if-nez v8, :cond_3

    .line 165
    int-to-float v8, v6

    invoke-virtual {v0}, Lc8/tbg;->getLayoutHeight()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 162
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 169
    .end local v0    # "child":Lc8/tbg;
    :cond_4
    instance-of v8, v5, Lc8/mu;

    if-eqz v8, :cond_5

    .line 170
    check-cast v5, Lc8/mu;

    .end local v5    # "layoutManager":Lc8/xv;
    invoke-virtual {v5}, Lc8/mu;->getSpanCount()I

    move-result v7

    .line 171
    .local v7, "spanCount":I
    div-int/2addr v6, v7

    .line 174
    .end local v7    # "spanCount":I
    :cond_5
    add-int/2addr v6, v3

    .line 175
    goto :goto_0

    .line 176
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

    .line 177
    check-cast v8, Lc8/Qw;

    invoke-virtual {v8}, Lc8/Qw;->getSpanCount()I

    move-result v7

    .restart local v7    # "spanCount":I
    move-object v8, v5

    .line 178
    check-cast v8, Lc8/Qw;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lc8/Qw;->findFirstVisibleItemPositions([I)[I

    move-result-object v8

    aget v1, v8, v6

    .line 179
    .restart local v1    # "firstVisibleItemPosition":I
    if-eq v1, v9, :cond_0

    .line 183
    invoke-virtual {v5, v1}, Lc8/xv;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 184
    .restart local v2    # "firstVisibleView":Landroid/view/View;
    const/4 v3, 0x0

    .line 185
    .restart local v3    # "firstVisibleViewOffset":I
    if-eqz v2, :cond_7

    .line 186
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 189
    :cond_7
    const/4 v6, 0x0

    .line 190
    .restart local v6    # "offset":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_9

    .line 191
    invoke-virtual {p0, v4}, Lc8/sWo;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 192
    .restart local v0    # "child":Lc8/tbg;
    if-eqz v0, :cond_8

    .line 193
    int-to-float v8, v6

    invoke-virtual {v0}, Lc8/tbg;->getLayoutHeight()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 190
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 197
    .end local v0    # "child":Lc8/tbg;
    :cond_9
    div-int/2addr v6, v7

    .line 198
    add-int/2addr v6, v3

    .line 199
    goto :goto_0

    .end local v1    # "firstVisibleItemPosition":I
    .end local v2    # "firstVisibleView":Landroid/view/View;
    .end local v3    # "firstVisibleViewOffset":I
    .end local v4    # "i":I
    .end local v6    # "offset":I
    .end local v7    # "spanCount":I
    :cond_a
    move v6, v9

    .line 202
    goto :goto_0
.end method

.method private fireScrollEvent(Lc8/Rv;II)V
    .locals 10
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    const/4 v9, 0x2

    .line 120
    invoke-virtual {p0}, Lc8/sWo;->getOrientation()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lc8/sWo;->calcContentOffset(Lc8/Rv;)I

    move-result v7

    neg-int p3, v7

    .line 123
    :cond_0
    invoke-virtual {p1}, Lc8/Rv;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Lc8/Rv;->computeHorizontalScrollRange()I

    move-result v8

    add-int v4, v7, v8

    .line 124
    .local v4, "contentWidth":I
    const/4 v1, 0x0

    .line 125
    .local v1, "contentHeight":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Lc8/sWo;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 126
    invoke-virtual {p0, v6}, Lc8/sWo;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 127
    .local v0, "child":Lc8/tbg;
    if-eqz v0, :cond_1

    .line 128
    int-to-float v7, v1

    invoke-virtual {v0}, Lc8/tbg;->getLayoutHeight()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v1, v7

    .line 125
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "child":Lc8/tbg;
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 133
    .local v5, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 134
    .local v3, "contentSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 136
    .local v2, "contentOffset":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "width"

    int-to-float v8, v4

    invoke-virtual {p0}, Lc8/sWo;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v7, "height"

    int-to-float v8, v1

    invoke-virtual {p0}, Lc8/sWo;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v7, "x"

    int-to-float v8, p2

    invoke-virtual {p0}, Lc8/sWo;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v8

    neg-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v7, "y"

    int-to-float v8, p3

    invoke-virtual {p0}, Lc8/sWo;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v8

    neg-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v7, "contentSize"

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v7, "contentOffset"

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v7, "scroll"

    invoke-virtual {p0, v7, v5}, Lc8/sWo;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 234
    invoke-super {p0, p1}, Lc8/odg;->addEvent(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v0, "scrollstateidle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iput-boolean v1, p0, Lc8/sWo;->mEventIdle:Z

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const-string/jumbo v0, "scrollstatedragging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iput-boolean v1, p0, Lc8/sWo;->mEventDragging:Z

    goto :goto_0

    .line 239
    :cond_2
    const-string/jumbo v0, "scrollstatesettling"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iput-boolean v1, p0, Lc8/sWo;->mEventSettling:Z

    goto :goto_0
.end method

.method public getMinShrink()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lc8/sWo;->mMinShrink:F

    return v0
.end method

.method public getScrollOffsetY()F
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lc8/sWo;->mOffset:I

    int-to-float v0, v0

    return v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/sWo;->initComponentHostView(Landroid/content/Context;)Lc8/Ifg;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/sWo;->initComponentHostView(Landroid/content/Context;)Lc8/Ifg;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/Ifg;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-super {p0, p1}, Lc8/odg;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    .line 74
    .local v0, "recyclerView":Lc8/Ifg;
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    iget-object v2, p0, Lc8/sWo;->mYKOnScrollListener:Lc8/Cv;

    invoke-virtual {v1, v2}, Lc8/efg;->addOnScrollListener(Lc8/Cv;)V

    .line 75
    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/efg;

    new-instance v2, Lc8/rWo;

    invoke-direct {v2, p0}, Lc8/rWo;-><init>(Lc8/sWo;)V

    invoke-virtual {v1, v2}, Lc8/efg;->addOnScrollListener(Lc8/Cv;)V

    .line 108
    return-object v0
.end method

.method public scrollTo(Lc8/tbg;Ljava/util/Map;)V
    .locals 5
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
    .line 207
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Lc8/odg;->scrollTo(Lc8/tbg;Ljava/util/Map;)V

    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, "offsetFloat":F
    if-eqz p2, :cond_0

    .line 211
    const-string/jumbo v3, "offset"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v2, "0"

    .line 212
    .local v2, "offsetStr":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 214
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0}, Lc8/sWo;->getInstance()Lc8/nVf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v4

    invoke-static {v3, v4}, Lc8/Jgg;->getRealPxByWidth(FI)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 220
    .end local v2    # "offsetStr":Ljava/lang/String;
    :cond_0
    :goto_1
    float-to-int v3, v1

    iput v3, p0, Lc8/sWo;->mOffset:I

    .line 221
    return-void

    .line 211
    :cond_1
    const-string/jumbo v3, "offset"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 215
    .restart local v2    # "offsetStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Float parseFloat error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setMinShrink(I)V
    .locals 1
    .param p1, "minShrink"    # I
    .annotation runtime Lc8/vbg;
        name = "minShrink"
    .end annotation

    .prologue
    .line 225
    int-to-float v0, p1

    invoke-static {v0}, Lc8/Jgg;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lc8/sWo;->mMinShrink:F

    .line 226
    return-void
.end method

.method public setOffsetAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I
    .annotation runtime Lc8/vbg;
        name = "offsetAccuracy"
    .end annotation

    .prologue
    .line 114
    invoke-super {p0, p1}, Lc8/odg;->setOffsetAccuracy(I)V

    .line 115
    int-to-float v1, p1

    invoke-virtual {p0}, Lc8/sWo;->getInstance()Lc8/nVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v0

    .line 116
    .local v0, "real":F
    float-to-int v1, v0

    iput v1, p0, Lc8/sWo;->mOffsetAccuracy:I

    .line 117
    return-void
.end method
