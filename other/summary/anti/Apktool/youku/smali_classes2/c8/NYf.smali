.class public Lc8/NYf;
.super Lc8/HYf;
.source "WXRecyclerDomObject.java"


# instance fields
.field private cellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/zYf;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableWidth:F

.field private mColumnCount:I

.field private mColumnGap:F

.field private mColumnWidth:F

.field private mIsPreCalculateCellWidth:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lc8/HYf;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lc8/NYf;->mColumnCount:I

    .line 43
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lc8/NYf;->mColumnWidth:F

    .line 44
    const/high16 v0, 0x42000000    # 32.0f

    iput v0, p0, Lc8/NYf;->mColumnGap:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lc8/NYf;->mAvailableWidth:F

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/NYf;->mIsPreCalculateCellWidth:Z

    return-void
.end method


# virtual methods
.method public add(Lc8/HYf;I)V
    .locals 3
    .param p1, "child"    # Lc8/HYf;
    .param p2, "index"    # I

    .prologue
    .line 73
    const-string/jumbo v0, "cell-slot"

    invoke-virtual {p1}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p1, Lc8/zYf;

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lc8/NYf;->cellList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/NYf;->cellList:Ljava/util/List;

    .line 78
    :cond_0
    iget-object v1, p0, Lc8/NYf;->cellList:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lc8/zYf;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_0
    const-string/jumbo v0, "cell"

    invoke-virtual {p1}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "cell-slot"

    invoke-virtual {p1}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    :cond_1
    iget-boolean v0, p0, Lc8/NYf;->mIsPreCalculateCellWidth:Z

    if-nez v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lc8/NYf;->preCalculateCellWidth()V

    .line 88
    :cond_2
    iget v0, p0, Lc8/NYf;->mColumnWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lc8/NYf;->mColumnWidth:F

    const/high16 v1, 0x7fc00000    # NaNf

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {p1}, Lc8/HYf;->getStyles()Lc8/PYf;

    move-result-object v0

    const-string/jumbo v1, "width"

    iget v2, p0, Lc8/NYf;->mColumnWidth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/PYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_3
    return-void

    .line 80
    :cond_4
    invoke-super {p0, p1, p2}, Lc8/HYf;->add(Lc8/HYf;I)V

    goto :goto_0
.end method

.method public clone()Lc8/HYf;
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lc8/NYf;->isCloneThis()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    .end local p0    # "this":Lc8/NYf;
    :goto_0
    return-object p0

    .line 231
    .restart local p0    # "this":Lc8/NYf;
    :cond_0
    invoke-super {p0}, Lc8/HYf;->clone()Lc8/HYf;

    move-result-object v0

    check-cast v0, Lc8/NYf;

    .line 232
    .local v0, "domObject":Lc8/NYf;
    iget-object v1, p0, Lc8/NYf;->cellList:Ljava/util/List;

    iput-object v1, v0, Lc8/NYf;->cellList:Ljava/util/List;

    move-object p0, v0

    .line 233
    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lc8/NYf;->clone()Lc8/HYf;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableWidth()F
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lc8/NYf;->mAvailableWidth:F

    invoke-virtual {p0}, Lc8/NYf;->getViewPortWidth()I

    move-result v1

    invoke-static {v0, v1}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v0

    return v0
.end method

.method public getCellList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/zYf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lc8/NYf;->cellList:Ljava/util/List;

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lc8/NYf;->mColumnCount:I

    return v0
.end method

.method public getColumnGap()F
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lc8/NYf;->mColumnGap:F

    invoke-virtual {p0}, Lc8/NYf;->getViewPortWidth()I

    move-result v1

    invoke-static {v0, v1}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v0

    return v0
.end method

.method public getColumnWidth()F
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lc8/NYf;->mColumnWidth:F

    invoke-virtual {p0}, Lc8/NYf;->getViewPortWidth()I

    move-result v1

    invoke-static {v0, v1}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v0

    return v0
.end method

.method protected getDefaultStyle()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 195
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 196
    .local v0, "isVertical":Z
    iget-object v3, p0, Lc8/NYf;->parent:Lc8/HYf;

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Lc8/NYf;->parent:Lc8/HYf;

    invoke-virtual {v3}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lc8/NYf;->parent:Lc8/HYf;

    invoke-virtual {v3}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hlist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    const/4 v0, 0x0

    .line 208
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    const-string/jumbo v2, "height"

    .line 209
    .local v2, "prop":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lc8/NYf;->getStyles()Lc8/PYf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lc8/NYf;->getStyles()Lc8/PYf;

    move-result-object v3

    const-string/jumbo v4, "flex"

    invoke-virtual {v3, v4}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 211
    const-string/jumbo v3, "flex"

    const-string/jumbo v4, "1"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_1
    return-object v1

    .line 201
    .end local v2    # "prop":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lc8/NYf;->getOrientation()I

    move-result v3

    if-nez v3, :cond_0

    .line 202
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_3
    const-string/jumbo v2, "width"

    goto :goto_1
.end method

.method public getLayoutType()I
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lc8/NYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/xYf;->getLayoutType()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lc8/NYf;->getAttrs()Lc8/xYf;

    move-result-object v1

    const-string/jumbo v2, "scrollDirection"

    invoke-virtual {v1, v2}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    .local v0, "direction":Ljava/lang/String;
    const-string/jumbo v1, "horizontal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v1, 0x0

    .line 223
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getStyleWidth()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0}, Lc8/NYf;->getLayoutWidth()F

    move-result v0

    .line 113
    .local v0, "width":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_3

    .line 114
    :cond_0
    invoke-virtual {p0}, Lc8/NYf;->getParent()Lc8/CZf;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lc8/NYf;->getParent()Lc8/CZf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/CZf;->getLayoutWidth()F

    move-result v0

    .line 117
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_3

    .line 118
    :cond_2
    invoke-super {p0}, Lc8/HYf;->getStyleWidth()F

    move-result v0

    .line 121
    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_4

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_5

    .line 122
    :cond_4
    invoke-virtual {p0}, Lc8/NYf;->getViewPortWidth()I

    move-result v1

    int-to-float v0, v1

    .line 124
    :cond_5
    return v0
.end method

.method public hasPreCalculateCellWidth()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lc8/NYf;->mIsPreCalculateCellWidth:Z

    return v0
.end method

.method public preCalculateCellWidth()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v2, 0x1

    .line 129
    invoke-virtual {p0}, Lc8/NYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 130
    invoke-virtual {p0}, Lc8/NYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/xYf;->getColumnCount()I

    move-result v3

    iput v3, p0, Lc8/NYf;->mColumnCount:I

    .line 131
    invoke-virtual {p0}, Lc8/NYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/xYf;->getColumnWidth()F

    move-result v3

    iput v3, p0, Lc8/NYf;->mColumnWidth:F

    .line 132
    invoke-virtual {p0}, Lc8/NYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/xYf;->getColumnGap()F

    move-result v3

    iput v3, p0, Lc8/NYf;->mColumnGap:F

    .line 134
    invoke-virtual {p0}, Lc8/NYf;->getStyleWidth()F

    move-result v3

    invoke-virtual {p0}, Lc8/NYf;->getPadding()Lc8/IZf;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lc8/IZf;->get(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lc8/NYf;->getPadding()Lc8/IZf;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lc8/IZf;->get(I)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lc8/NYf;->mAvailableWidth:F

    .line 135
    iget v3, p0, Lc8/NYf;->mAvailableWidth:F

    invoke-virtual {p0}, Lc8/NYf;->getViewPortWidth()I

    move-result v4

    invoke-static {v3, v4}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v3

    iput v3, p0, Lc8/NYf;->mAvailableWidth:F

    .line 137
    iget v3, p0, Lc8/NYf;->mColumnCount:I

    if-ne v7, v3, :cond_2

    iget v3, p0, Lc8/NYf;->mColumnWidth:F

    cmpl-float v3, v6, v3

    if-nez v3, :cond_2

    .line 138
    iput v2, p0, Lc8/NYf;->mColumnCount:I

    .line 155
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lc8/NYf;->mIsPreCalculateCellWidth:Z

    .line 156
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preCalculateCellWidth mColumnGap :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/NYf;->mColumnGap:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mColumnWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/NYf;->mColumnWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mColumnCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/NYf;->mColumnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 160
    :cond_1
    return-void

    .line 139
    :cond_2
    iget v3, p0, Lc8/NYf;->mColumnWidth:F

    cmpl-float v3, v6, v3

    if-nez v3, :cond_4

    iget v3, p0, Lc8/NYf;->mColumnCount:I

    if-eq v7, v3, :cond_4

    .line 140
    iget v3, p0, Lc8/NYf;->mAvailableWidth:F

    iget v4, p0, Lc8/NYf;->mColumnCount:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, p0, Lc8/NYf;->mColumnGap:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lc8/NYf;->mColumnCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lc8/NYf;->mColumnWidth:F

    .line 141
    iget v3, p0, Lc8/NYf;->mColumnWidth:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_3

    iget v1, p0, Lc8/NYf;->mColumnWidth:F

    :cond_3
    iput v1, p0, Lc8/NYf;->mColumnWidth:F

    goto :goto_0

    .line 142
    :cond_4
    iget v1, p0, Lc8/NYf;->mColumnWidth:F

    cmpl-float v1, v6, v1

    if-eqz v1, :cond_7

    iget v1, p0, Lc8/NYf;->mColumnCount:I

    if-ne v7, v1, :cond_7

    .line 143
    iget v1, p0, Lc8/NYf;->mAvailableWidth:F

    iget v3, p0, Lc8/NYf;->mColumnGap:F

    add-float/2addr v1, v3

    iget v3, p0, Lc8/NYf;->mColumnWidth:F

    iget v4, p0, Lc8/NYf;->mColumnGap:F

    add-float/2addr v3, v4

    div-float/2addr v1, v3

    sub-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lc8/NYf;->mColumnCount:I

    .line 144
    iget v1, p0, Lc8/NYf;->mColumnCount:I

    if-lez v1, :cond_6

    iget v1, p0, Lc8/NYf;->mColumnCount:I

    :goto_1
    iput v1, p0, Lc8/NYf;->mColumnCount:I

    .line 145
    iget v1, p0, Lc8/NYf;->mColumnCount:I

    if-gtz v1, :cond_5

    .line 146
    iput v2, p0, Lc8/NYf;->mColumnCount:I

    .line 147
    :cond_5
    iget v1, p0, Lc8/NYf;->mAvailableWidth:F

    iget v3, p0, Lc8/NYf;->mColumnGap:F

    add-float/2addr v1, v3

    iget v3, p0, Lc8/NYf;->mColumnCount:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p0, Lc8/NYf;->mColumnGap:F

    sub-float/2addr v1, v3

    iput v1, p0, Lc8/NYf;->mColumnWidth:F

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 144
    goto :goto_1

    .line 148
    :cond_7
    iget v1, p0, Lc8/NYf;->mColumnWidth:F

    cmpl-float v1, v6, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lc8/NYf;->mColumnCount:I

    if-eq v7, v1, :cond_0

    .line 149
    iget v1, p0, Lc8/NYf;->mAvailableWidth:F

    iget v3, p0, Lc8/NYf;->mColumnGap:F

    add-float/2addr v1, v3

    iget v3, p0, Lc8/NYf;->mColumnWidth:F

    iget v4, p0, Lc8/NYf;->mColumnGap:F

    add-float/2addr v3, v4

    div-float/2addr v1, v3

    sub-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 150
    .local v0, "columnCount":I
    iget v1, p0, Lc8/NYf;->mColumnCount:I

    if-le v0, v1, :cond_8

    iget v0, p0, Lc8/NYf;->mColumnCount:I

    .end local v0    # "columnCount":I
    :cond_8
    iput v0, p0, Lc8/NYf;->mColumnCount:I

    .line 151
    iget v1, p0, Lc8/NYf;->mColumnCount:I

    if-gtz v1, :cond_9

    .line 152
    iput v2, p0, Lc8/NYf;->mColumnCount:I

    .line 153
    :cond_9
    iget v1, p0, Lc8/NYf;->mAvailableWidth:F

    iget v3, p0, Lc8/NYf;->mColumnGap:F

    add-float/2addr v1, v3

    iget v3, p0, Lc8/NYf;->mColumnCount:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p0, Lc8/NYf;->mColumnGap:F

    sub-float/2addr v1, v3

    iput v1, p0, Lc8/NYf;->mColumnWidth:F

    goto/16 :goto_0
.end method

.method public remove(Lc8/HYf;)V
    .locals 1
    .param p1, "child"    # Lc8/HYf;

    .prologue
    .line 96
    iget-object v0, p0, Lc8/NYf;->cellList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lc8/NYf;->cellList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    invoke-super {p0, p1}, Lc8/HYf;->remove(Lc8/HYf;)V

    .line 100
    return-void
.end method

.method public removeFromDom(Lc8/HYf;)V
    .locals 1
    .param p1, "child"    # Lc8/HYf;

    .prologue
    .line 104
    iget-object v0, p0, Lc8/NYf;->cellList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lc8/NYf;->cellList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lc8/HYf;->removeFromDom(Lc8/HYf;)V

    .line 108
    return-void
.end method

.method public updateAttr(Ljava/util/Map;)V
    .locals 1
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
    .line 183
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lc8/HYf;->updateAttr(Ljava/util/Map;)V

    .line 184
    const-string/jumbo v0, "columnCount"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "columnGap"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "columnWidth"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    invoke-virtual {p0}, Lc8/NYf;->updateRecyclerAttr()V

    .line 189
    :cond_1
    return-void
.end method

.method public updateRecyclerAttr()V
    .locals 6

    .prologue
    .line 167
    invoke-virtual {p0}, Lc8/NYf;->preCalculateCellWidth()V

    .line 168
    iget v3, p0, Lc8/NYf;->mColumnWidth:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lc8/NYf;->mColumnWidth:F

    const/high16 v4, 0x7fc00000    # NaNf

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preCalculateCellWidth mColumnGap :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/NYf;->mColumnGap:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mColumnWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/NYf;->mColumnWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mColumnCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/NYf;->mColumnCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/xgg;->w(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lc8/NYf;->getChildCount()I

    move-result v0

    .line 173
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 174
    invoke-virtual {p0, v2}, Lc8/NYf;->getChild(I)Lc8/HYf;

    move-result-object v1

    .line 175
    .local v1, "domObject":Lc8/HYf;
    const-string/jumbo v3, "cell"

    invoke-virtual {v1}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    invoke-virtual {p0, v2}, Lc8/NYf;->getChild(I)Lc8/HYf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/HYf;->getStyles()Lc8/PYf;

    move-result-object v3

    const-string/jumbo v4, "width"

    iget v5, p0, Lc8/NYf;->mColumnWidth:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc8/PYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
