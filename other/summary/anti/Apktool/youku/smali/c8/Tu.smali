.class public Lc8/Tu;
.super Lc8/Hw;
.source "PagerSnapHelper.java"


# static fields
.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64


# instance fields
.field private mHorizontalHelper:Lc8/Ru;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Lc8/Ru;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lc8/Hw;-><init>()V

    return-void
.end method

.method private distanceToCenter(Lc8/xv;Landroid/view/View;Lc8/Ru;)I
    .locals 4
    .param p1, "layoutManager"    # Lc8/xv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "helper"    # Lc8/Ru;

    .prologue
    .line 153
    invoke-virtual {p3, p2}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 154
    invoke-virtual {p3, p2}, Lc8/Ru;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 156
    .local v0, "childCenter":I
    invoke-virtual {p1}, Lc8/xv;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {p3}, Lc8/Ru;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p3}, Lc8/Ru;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 161
    .local v1, "containerCenter":I
    :goto_0
    sub-int v2, v0, v1

    return v2

    .line 159
    .end local v1    # "containerCenter":I
    :cond_0
    invoke-virtual {p3}, Lc8/Ru;->getEnd()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1    # "containerCenter":I
    goto :goto_0
.end method

.method private findCenterView(Lc8/xv;Lc8/Ru;)Landroid/view/View;
    .locals 10
    .param p1, "layoutManager"    # Lc8/xv;
    .param p2, "helper"    # Lc8/Ru;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Lc8/xv;->getChildCount()I

    move-result v5

    .line 177
    .local v5, "childCount":I
    if-nez v5, :cond_1

    .line 178
    const/4 v6, 0x0

    .line 202
    :cond_0
    return-object v6

    .line 181
    :cond_1
    const/4 v6, 0x0

    .line 183
    .local v6, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Lc8/xv;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 184
    invoke-virtual {p2}, Lc8/Ru;->getStartAfterPadding()I

    move-result v8

    invoke-virtual {p2}, Lc8/Ru;->getTotalSpace()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v2, v8, v9

    .line 188
    .local v2, "center":I
    :goto_0
    const v0, 0x7fffffff

    .line 190
    .local v0, "absClosest":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_0

    .line 191
    invoke-virtual {p1, v7}, Lc8/xv;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 192
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p2, v3}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    .line 193
    invoke-virtual {p2, v3}, Lc8/Ru;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 194
    .local v4, "childCenter":I
    sub-int v8, v4, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 197
    .local v1, "absDistance":I
    if-ge v1, v0, :cond_2

    .line 198
    move v0, v1

    .line 199
    move-object v6, v3

    .line 190
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "absClosest":I
    .end local v1    # "absDistance":I
    .end local v2    # "center":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCenter":I
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {p2}, Lc8/Ru;->getEnd()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .restart local v2    # "center":I
    goto :goto_0
.end method

.method private findStartView(Lc8/xv;Lc8/Ru;)Landroid/view/View;
    .locals 6
    .param p1, "layoutManager"    # Lc8/xv;
    .param p2, "helper"    # Lc8/Ru;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p1}, Lc8/xv;->getChildCount()I

    move-result v1

    .line 218
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 219
    const/4 v3, 0x0

    .line 235
    :cond_0
    return-object v3

    .line 222
    :cond_1
    const/4 v3, 0x0

    .line 223
    .local v3, "closestChild":Landroid/view/View;
    const v5, 0x7fffffff

    .line 225
    .local v5, "startest":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 226
    invoke-virtual {p1, v4}, Lc8/xv;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p2, v0}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 230
    .local v2, "childStart":I
    if-ge v2, v5, :cond_2

    .line 231
    move v5, v2

    .line 232
    move-object v3, v0

    .line 225
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getHorizontalHelper(Lc8/xv;)Lc8/Ru;
    .locals 1
    .param p1, "layoutManager"    # Lc8/xv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lc8/Tu;->mHorizontalHelper:Lc8/Ru;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Tu;->mHorizontalHelper:Lc8/Ru;

    iget-object v0, v0, Lc8/Ru;->mLayoutManager:Lc8/xv;

    if-eq v0, p1, :cond_1

    .line 250
    :cond_0
    invoke-static {p1}, Lc8/Ru;->createHorizontalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v0

    iput-object v0, p0, Lc8/Tu;->mHorizontalHelper:Lc8/Ru;

    .line 252
    :cond_1
    iget-object v0, p0, Lc8/Tu;->mHorizontalHelper:Lc8/Ru;

    return-object v0
.end method

.method private getVerticalHelper(Lc8/xv;)Lc8/Ru;
    .locals 1
    .param p1, "layoutManager"    # Lc8/xv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lc8/Tu;->mVerticalHelper:Lc8/Ru;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Tu;->mVerticalHelper:Lc8/Ru;

    iget-object v0, v0, Lc8/Ru;->mLayoutManager:Lc8/xv;

    if-eq v0, p1, :cond_1

    .line 241
    :cond_0
    invoke-static {p1}, Lc8/Ru;->createVerticalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v0

    iput-object v0, p0, Lc8/Tu;->mVerticalHelper:Lc8/Ru;

    .line 243
    :cond_1
    iget-object v0, p0, Lc8/Tu;->mVerticalHelper:Lc8/Ru;

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Lc8/xv;Landroid/view/View;)[I
    .locals 4
    .param p1, "layoutManager"    # Lc8/xv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 51
    .local v0, "out":[I
    invoke-virtual {p1}, Lc8/xv;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lc8/Tu;->getHorizontalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v1

    .line 52
    invoke-direct {p0, p1, p2, v1}, Lc8/Tu;->distanceToCenter(Lc8/xv;Landroid/view/View;Lc8/Ru;)I

    move-result v1

    aput v1, v0, v2

    .line 58
    :goto_0
    invoke-virtual {p1}, Lc8/xv;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-direct {p0, p1}, Lc8/Tu;->getVerticalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v1

    .line 59
    invoke-direct {p0, p1, p2, v1}, Lc8/Tu;->distanceToCenter(Lc8/xv;Landroid/view/View;Lc8/Ru;)I

    move-result v1

    aput v1, v0, v3

    .line 64
    :goto_1
    return-object v0

    .line 55
    :cond_0
    aput v2, v0, v2

    goto :goto_0

    .line 62
    :cond_1
    aput v2, v0, v3

    goto :goto_1
.end method

.method protected createSnapScroller(Lc8/xv;)Lc8/xu;
    .locals 2
    .param p1, "layoutManager"    # Lc8/xv;

    .prologue
    .line 123
    instance-of v0, p1, Lc8/Lv;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Su;

    iget-object v1, p0, Lc8/Tu;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v1}, Lc8/Rv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/Su;-><init>(Lc8/Tu;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public findSnapView(Lc8/xv;)Landroid/view/View;
    .locals 1
    .param p1, "layoutManager"    # Lc8/xv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Lc8/xv;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lc8/Tu;->getVerticalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lc8/Tu;->findCenterView(Lc8/xv;Lc8/Ru;)Landroid/view/View;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lc8/xv;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-direct {p0, p1}, Lc8/Tu;->getHorizontalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lc8/Tu;->findCenterView(Lc8/xv;Lc8/Ru;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findTargetSnapPosition(Lc8/xv;II)I
    .locals 12
    .param p1, "layoutManager"    # Lc8/xv;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 81
    invoke-virtual {p1}, Lc8/xv;->getItemCount()I

    move-result v2

    .line 82
    .local v2, "itemCount":I
    if-nez v2, :cond_1

    move v0, v9

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    const/4 v3, 0x0

    .line 87
    .local v3, "mStartMostChildView":Landroid/view/View;
    invoke-virtual {p1}, Lc8/xv;->canScrollVertically()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 88
    invoke-direct {p0, p1}, Lc8/Tu;->getVerticalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lc8/Tu;->findStartView(Lc8/xv;Lc8/Ru;)Landroid/view/View;

    move-result-object v3

    .line 93
    :cond_2
    :goto_1
    if-nez v3, :cond_4

    move v0, v9

    .line 94
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p1}, Lc8/xv;->canScrollHorizontally()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 90
    invoke-direct {p0, p1}, Lc8/Tu;->getHorizontalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lc8/Tu;->findStartView(Lc8/xv;Lc8/Ru;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {p1, v3}, Lc8/xv;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 97
    .local v0, "centerPosition":I
    if-ne v0, v9, :cond_5

    move v0, v9

    .line 98
    goto :goto_0

    .line 102
    :cond_5
    invoke-virtual {p1}, Lc8/xv;->canScrollHorizontally()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 103
    if-lez p2, :cond_8

    move v1, v7

    .line 107
    .local v1, "forwardDirection":Z
    :goto_2
    const/4 v4, 0x0

    .line 108
    .local v4, "reverseLayout":Z
    instance-of v9, p1, Lc8/Lv;

    if-eqz v9, :cond_7

    move-object v6, p1

    .line 109
    check-cast v6, Lc8/Lv;

    .line 111
    .local v6, "vectorProvider":Lc8/Lv;
    add-int/lit8 v9, v2, -0x1

    invoke-interface {v6, v9}, Lc8/Lv;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v5

    .line 112
    .local v5, "vectorForEnd":Landroid/graphics/PointF;
    if-eqz v5, :cond_7

    .line 113
    iget v9, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v9, v11

    if-ltz v9, :cond_6

    iget v9, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v9, v11

    if-gez v9, :cond_b

    :cond_6
    move v4, v7

    .line 116
    .end local v5    # "vectorForEnd":Landroid/graphics/PointF;
    .end local v6    # "vectorProvider":Lc8/Lv;
    :cond_7
    :goto_3
    if-eqz v4, :cond_c

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "forwardDirection":Z
    .end local v4    # "reverseLayout":Z
    :cond_8
    move v1, v8

    .line 103
    goto :goto_2

    .line 105
    :cond_9
    if-lez p3, :cond_a

    move v1, v7

    .restart local v1    # "forwardDirection":Z
    :goto_4
    goto :goto_2

    .end local v1    # "forwardDirection":Z
    :cond_a
    move v1, v8

    goto :goto_4

    .restart local v1    # "forwardDirection":Z
    .restart local v4    # "reverseLayout":Z
    .restart local v5    # "vectorForEnd":Landroid/graphics/PointF;
    .restart local v6    # "vectorProvider":Lc8/Lv;
    :cond_b
    move v4, v8

    .line 113
    goto :goto_3

    .line 116
    .end local v5    # "vectorForEnd":Landroid/graphics/PointF;
    .end local v6    # "vectorProvider":Lc8/Lv;
    :cond_c
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
