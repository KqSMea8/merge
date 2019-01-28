.class public Lc8/lcg;
.super Lc8/gcg;
.source "WXSliderNeighbor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/kcg;,
        Lc8/jcg;
    }
.end annotation


# static fields
.field public static final CURRENT_ITEM_SCALE:Ljava/lang/String; = "currentItemScale"

.field private static final DEFAULT_CURRENT_ITEM_SCALE:F = 0.9f

.field private static final DEFAULT_NEIGHBOR_ALPHA:F = 0.6f

.field private static final DEFAULT_NEIGHBOR_SCALE:F = 0.8f

.field private static final DEFAULT_NEIGHBOR_SPACE:I = 0x19

.field public static final NEIGHBOR_ALPHA:Ljava/lang/String; = "neighborAlpha"

.field public static final NEIGHBOR_SCALE:Ljava/lang/String; = "neighborScale"

.field public static final NEIGHBOR_SPACE:Ljava/lang/String; = "neighborSpace"


# instance fields
.field private mCachedTransformer:Lc8/kcg;

.field private mCurrentItemScale:F

.field private mNeighborAlpha:F

.field private mNeighborScale:F

.field private mNeighborSpace:F


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lc8/gcg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 59
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lc8/lcg;->mNeighborScale:F

    .line 60
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lc8/lcg;->mNeighborAlpha:F

    .line 61
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lc8/lcg;->mNeighborSpace:F

    .line 62
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lc8/lcg;->mCurrentItemScale:F

    .line 68
    return-void
.end method

.method static synthetic access$000(Lc8/lcg;Landroid/view/View;FF)V
    .locals 0
    .param p0, "x0"    # Lc8/lcg;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lc8/lcg;->updateNeighbor(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$100(Lc8/lcg;)F
    .locals 1
    .param p0, "x0"    # Lc8/lcg;

    .prologue
    .line 48
    iget v0, p0, Lc8/lcg;->mNeighborScale:F

    return v0
.end method

.method static synthetic access$200(Lc8/lcg;)F
    .locals 1
    .param p0, "x0"    # Lc8/lcg;

    .prologue
    .line 48
    iget v0, p0, Lc8/lcg;->mCurrentItemScale:F

    return v0
.end method

.method static synthetic access$300(Lc8/lcg;)F
    .locals 1
    .param p0, "x0"    # Lc8/lcg;

    .prologue
    .line 48
    iget v0, p0, Lc8/lcg;->mNeighborAlpha:F

    return v0
.end method

.method static synthetic access$400(Lc8/lcg;Landroid/view/View;)F
    .locals 1
    .param p0, "x0"    # Lc8/lcg;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lc8/lcg;->calculateTranslation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lc8/lcg;FF)V
    .locals 0
    .param p0, "x0"    # Lc8/lcg;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lc8/lcg;->updateAdapterScaleAndAlpha(FF)V

    return-void
.end method

.method private calculateTranslation(Landroid/view/View;)F
    .locals 6
    .param p1, "hostPage"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 335
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 336
    const/4 v1, 0x0

    .line 341
    :goto_0
    return v1

    :cond_0
    move-object v2, p1

    .line 338
    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, "realView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lc8/lcg;->mNeighborScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float v1, v2, v3

    .line 340
    .local v1, "translation":F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lc8/lcg;->mCurrentItemScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iget v3, p0, Lc8/lcg;->mNeighborSpace:F

    invoke-virtual {p0}, Lc8/lcg;->getInstance()Lc8/nVf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v4

    invoke-static {v3, v4}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 341
    goto :goto_0
.end method

.method private moveLeft(Landroid/view/View;FFF)V
    .locals 2
    .param p1, "page"    # Landroid/view/View;
    .param p2, "translation"    # F
    .param p3, "alpha"    # F
    .param p4, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 224
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lc8/lcg;->updateScaleAndAlpha(Landroid/view/View;FF)V

    .line 225
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 226
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "page":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 227
    return-void
.end method

.method private moveRight(Landroid/view/View;FFF)V
    .locals 1
    .param p1, "page"    # Landroid/view/View;
    .param p2, "translation"    # F
    .param p3, "alpha"    # F
    .param p4, "scale"    # F

    .prologue
    .line 229
    neg-float v0, p2

    invoke-direct {p0, p1, v0, p3, p4}, Lc8/lcg;->moveLeft(Landroid/view/View;FFF)V

    .line 230
    return-void
.end method

.method private updateAdapterScaleAndAlpha(FF)V
    .locals 10
    .param p1, "alpha"    # F
    .param p2, "scale"    # F

    .prologue
    const/4 v7, 0x0

    .line 170
    iget-object v6, p0, Lc8/lcg;->mAdapter:Lc8/leg;

    invoke-virtual {v6}, Lc8/leg;->getViews()Ljava/util/List;

    move-result-object v4

    .line 171
    .local v4, "pageViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v6, p0, Lc8/lcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v6}, Lc8/oeg;->getCurrentItem()I

    move-result v0

    .line 173
    .local v0, "curPos":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 174
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .local v1, "currentPage":Landroid/view/View;
    move-object v6, v1

    .line 175
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Lc8/lcg;->mCurrentItemScale:F

    invoke-direct {p0, v6, v8, v9}, Lc8/lcg;->updateScaleAndAlpha(Landroid/view/View;FF)V

    .line 177
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ge v6, v8, :cond_1

    .line 199
    .end local v1    # "currentPage":Landroid/view/View;
    :cond_0
    return-void

    .line 181
    .restart local v1    # "currentPage":Landroid/view/View;
    :cond_1
    new-instance v6, Lc8/icg;

    invoke-direct {v6, p0, v1, p1, p2}, Lc8/icg;-><init>(Lc8/lcg;Landroid/view/View;FF)V

    invoke-static {v6}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x11

    invoke-virtual {v1, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    if-nez v0, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 192
    .local v3, "left":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_4

    move v5, v7

    .line 193
    .local v5, "right":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lc8/lcg;->mAdapter:Lc8/leg;

    invoke-virtual {v6}, Lc8/leg;->getRealCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 194
    if-eq v2, v3, :cond_2

    if-eq v2, v0, :cond_2

    if-eq v2, v5, :cond_2

    .line 195
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/View;->setAlpha(F)V

    .line 193
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 191
    .end local v2    # "i":I
    .end local v3    # "left":I
    .end local v5    # "right":I
    :cond_3
    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    .line 192
    .restart local v3    # "left":I
    :cond_4
    add-int/lit8 v5, v0, 0x1

    goto :goto_1
.end method

.method private updateNeighbor(Landroid/view/View;FF)V
    .locals 9
    .param p1, "currentPage"    # Landroid/view/View;
    .param p2, "alpha"    # F
    .param p3, "scale"    # F

    .prologue
    .line 202
    iget-object v7, p0, Lc8/lcg;->mAdapter:Lc8/leg;

    invoke-virtual {v7}, Lc8/leg;->getViews()Ljava/util/List;

    move-result-object v3

    .line 203
    .local v3, "pageViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v7, p0, Lc8/lcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v7}, Lc8/oeg;->getCurrentItem()I

    move-result v0

    .line 205
    .local v0, "curPos":I
    invoke-direct {p0, p1}, Lc8/lcg;->calculateTranslation(Landroid/view/View;)F

    move-result v6

    .line 206
    .local v6, "translation":F
    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 207
    .local v1, "left":I
    :goto_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 208
    .local v2, "leftPage":Landroid/view/View;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v0, v7, :cond_2

    const/4 v4, 0x0

    .line 209
    .local v4, "right":I
    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 211
    .local v5, "rightPage":Landroid/view/View;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 212
    if-nez v0, :cond_3

    .line 213
    invoke-direct {p0, v5, v6, p2, p3}, Lc8/lcg;->moveRight(Landroid/view/View;FFF)V

    .line 221
    :cond_0
    :goto_2
    return-void

    .line 206
    .end local v1    # "left":I
    .end local v2    # "leftPage":Landroid/view/View;
    .end local v4    # "right":I
    .end local v5    # "rightPage":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 208
    .restart local v1    # "left":I
    .restart local v2    # "leftPage":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v0, 0x1

    goto :goto_1

    .line 214
    .restart local v4    # "right":I
    .restart local v5    # "rightPage":Landroid/view/View;
    :cond_3
    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    .line 215
    invoke-direct {p0, v2, v6, p2, p3}, Lc8/lcg;->moveLeft(Landroid/view/View;FFF)V

    goto :goto_2

    .line 218
    :cond_4
    invoke-direct {p0, v2, v6, p2, p3}, Lc8/lcg;->moveLeft(Landroid/view/View;FFF)V

    .line 219
    invoke-direct {p0, v5, v6, p2, p3}, Lc8/lcg;->moveRight(Landroid/view/View;FFF)V

    goto :goto_2
.end method

.method private updateScaleAndAlpha(Landroid/view/View;FF)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F
    .param p3, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 157
    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 163
    :cond_2
    cmpl-float v0, p3, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 165
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0
.end method


# virtual methods
.method public addSubView(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v3, -0x2

    .line 117
    if-eqz p1, :cond_0

    iget-object v2, p0, Lc8/lcg;->mAdapter:Lc8/leg;

    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    instance-of v2, p1, Lc8/keg;

    if-nez v2, :cond_0

    .line 125
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lc8/lcg;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 126
    .local v1, "wrapper":Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-super {p0, v1, p2}, Lc8/gcg;->addSubView(Landroid/view/View;I)V

    .line 132
    iget v2, p0, Lc8/lcg;->mNeighborAlpha:F

    iget v3, p0, Lc8/lcg;->mNeighborScale:F

    invoke-direct {p0, v2, v3}, Lc8/lcg;->updateAdapterScaleAndAlpha(FF)V

    .line 134
    iget-object v2, p0, Lc8/lcg;->mViewPager:Lc8/oeg;

    new-instance v3, Lc8/hcg;

    invoke-direct {v3, p0, p2}, Lc8/hcg;-><init>(Lc8/lcg;I)V

    invoke-static {v3}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lc8/oeg;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public bindData(Lc8/tbg;)V
    .locals 0
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lc8/gcg;->bindData(Lc8/tbg;)V

    .line 79
    return-void
.end method

.method createTransformer()Lc8/kcg;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lc8/lcg;->mCachedTransformer:Lc8/kcg;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lc8/kcg;

    invoke-direct {v0, p0}, Lc8/kcg;-><init>(Lc8/lcg;)V

    iput-object v0, p0, Lc8/lcg;->mCachedTransformer:Lc8/kcg;

    .line 112
    :cond_0
    iget-object v0, p0, Lc8/lcg;->mCachedTransformer:Lc8/kcg;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lc8/lcg;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 83
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, "view":Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v0, "pagerParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    new-instance v2, Lc8/oeg;

    invoke-virtual {p0}, Lc8/lcg;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/oeg;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/lcg;->mViewPager:Lc8/oeg;

    .line 90
    iget-object v2, p0, Lc8/lcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v2, v0}, Lc8/oeg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v2, Lc8/leg;

    invoke-direct {v2}, Lc8/leg;-><init>()V

    iput-object v2, p0, Lc8/lcg;->mAdapter:Lc8/leg;

    .line 94
    iget-object v2, p0, Lc8/lcg;->mViewPager:Lc8/oeg;

    iget-object v3, p0, Lc8/lcg;->mAdapter:Lc8/leg;

    invoke-virtual {v2, v3}, Lc8/oeg;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 97
    iget-object v2, p0, Lc8/lcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 98
    iget-object v2, p0, Lc8/lcg;->mViewPager:Lc8/oeg;

    iget-object v3, p0, Lc8/lcg;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Lc8/oeg;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 100
    iget-object v2, p0, Lc8/lcg;->mViewPager:Lc8/oeg;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lc8/oeg;->setOverScrollMode(I)V

    .line 101
    invoke-virtual {p0}, Lc8/lcg;->registerActivityStateListener()V

    .line 103
    iget-object v2, p0, Lc8/lcg;->mViewPager:Lc8/oeg;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lc8/lcg;->createTransformer()Lc8/kcg;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/oeg;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 105
    return-object v1
.end method

.method public setCurrentItemScale(Ljava/lang/String;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "currentItemScale"
    .end annotation

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 285
    const v0, 0x3f666666    # 0.9f

    .line 286
    .local v0, "currentItemScale":F
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 293
    :cond_0
    :goto_0
    iget v1, p0, Lc8/lcg;->mCurrentItemScale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 294
    iput v0, p0, Lc8/lcg;->mCurrentItemScale:F

    .line 295
    invoke-direct {p0, v2, v2}, Lc8/lcg;->updateAdapterScaleAndAlpha(FF)V

    .line 297
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setNeighborAlpha(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "neighborAlpha"
    .end annotation

    .prologue
    .line 251
    const v0, 0x3f19999a    # 0.6f

    .line 252
    .local v0, "neighborAlpha":F
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 260
    :cond_0
    :goto_0
    iget v1, p0, Lc8/lcg;->mNeighborAlpha:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 261
    iput v0, p0, Lc8/lcg;->mNeighborAlpha:F

    .line 262
    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1}, Lc8/lcg;->updateAdapterScaleAndAlpha(FF)V

    .line 264
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setNeighborScale(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "neighborScale"
    .end annotation

    .prologue
    .line 234
    const v0, 0x3f4ccccd    # 0.8f

    .line 235
    .local v0, "neighborScale":F
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 243
    :cond_0
    :goto_0
    iget v1, p0, Lc8/lcg;->mNeighborScale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 244
    iput v0, p0, Lc8/lcg;->mNeighborScale:F

    .line 245
    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, v1, v0}, Lc8/lcg;->updateAdapterScaleAndAlpha(FF)V

    .line 247
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setNeighborSpace(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "neighborSpace"
    .end annotation

    .prologue
    .line 269
    const/high16 v0, 0x41c80000    # 25.0f

    .line 270
    .local v0, "neighborSpace":F
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 277
    :cond_0
    :goto_0
    iget v1, p0, Lc8/lcg;->mNeighborSpace:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 278
    iput v0, p0, Lc8/lcg;->mNeighborSpace:F

    .line 280
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 302
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 328
    invoke-super {p0, p1, p2}, Lc8/gcg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 302
    :sswitch_0
    const-string/jumbo v3, "neighborScale"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "neighborAlpha"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "neighborSpace"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "currentItemScale"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    .line 304
    :pswitch_0
    invoke-static {p2, v4}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "input":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p0, v0}, Lc8/lcg;->setNeighborScale(Ljava/lang/String;)V

    goto :goto_1

    .line 310
    .end local v0    # "input":Ljava/lang/String;
    :pswitch_1
    invoke-static {p2, v4}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0    # "input":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0, v0}, Lc8/lcg;->setNeighborAlpha(Ljava/lang/String;)V

    goto :goto_1

    .line 316
    .end local v0    # "input":Ljava/lang/String;
    :pswitch_2
    invoke-static {p2, v4}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .restart local v0    # "input":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p0, v0}, Lc8/lcg;->setNeighborSpace(Ljava/lang/String;)V

    goto :goto_1

    .line 322
    .end local v0    # "input":Ljava/lang/String;
    :pswitch_3
    invoke-static {p2, v4}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .restart local v0    # "input":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p0, v0}, Lc8/lcg;->setCurrentItemScale(Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :sswitch_data_0
    .sparse-switch
        -0x691ff274 -> :sswitch_1
        -0x68269a88 -> :sswitch_0
        -0x6820b2cc -> :sswitch_2
        -0x3c6ef382 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
