.class public Lc8/xb;
.super Lc8/ob;
.source "WidgetContainer.java"


# instance fields
.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/ob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/ob;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lc8/ob;-><init>(II)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/ob;-><init>(IIII)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public static getBounds(Ljava/util/ArrayList;)Lc8/ub;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/ob;",
            ">;)",
            "Lc8/ub;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    new-instance v0, Lc8/ub;

    invoke-direct {v0}, Lc8/ub;-><init>()V

    .line 194
    .local v0, "bounds":Lc8/ub;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 217
    :goto_0
    return-object v0

    .line 197
    :cond_0
    const v4, 0x7fffffff

    .line 198
    .local v4, "minX":I
    const/4 v2, 0x0

    .line 199
    .local v2, "maxX":I
    const v5, 0x7fffffff

    .line 200
    .local v5, "minY":I
    const/4 v3, 0x0

    .line 201
    .local v3, "maxY":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "widgetsSize":I
    :goto_1
    if-ge v1, v7, :cond_5

    .line 202
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/ob;

    .line 203
    .local v6, "widget":Lc8/ob;
    invoke-virtual {v6}, Lc8/ob;->getX()I

    move-result v8

    if-ge v8, v4, :cond_1

    .line 204
    invoke-virtual {v6}, Lc8/ob;->getX()I

    move-result v4

    .line 206
    :cond_1
    invoke-virtual {v6}, Lc8/ob;->getY()I

    move-result v8

    if-ge v8, v5, :cond_2

    .line 207
    invoke-virtual {v6}, Lc8/ob;->getY()I

    move-result v5

    .line 209
    :cond_2
    invoke-virtual {v6}, Lc8/ob;->getRight()I

    move-result v8

    if-le v8, v2, :cond_3

    .line 210
    invoke-virtual {v6}, Lc8/ob;->getRight()I

    move-result v2

    .line 212
    :cond_3
    invoke-virtual {v6}, Lc8/ob;->getBottom()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 213
    invoke-virtual {v6}, Lc8/ob;->getBottom()I

    move-result v3

    .line 201
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    .end local v6    # "widget":Lc8/ob;
    :cond_5
    sub-int v8, v2, v4

    sub-int v9, v3, v5

    invoke-virtual {v0, v4, v5, v8, v9}, Lc8/ub;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lc8/ob;)V
    .locals 2
    .param p1, "widget"    # Lc8/ob;

    .prologue
    .line 72
    iget-object v1, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1}, Lc8/ob;->getParent()Lc8/ob;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lc8/ob;->getParent()Lc8/ob;

    move-result-object v0

    check-cast v0, Lc8/xb;

    .line 75
    .local v0, "container":Lc8/xb;
    invoke-virtual {v0, p1}, Lc8/xb;->remove(Lc8/ob;)V

    .line 77
    .end local v0    # "container":Lc8/xb;
    :cond_0
    invoke-virtual {p1, p0}, Lc8/ob;->setParent(Lc8/ob;)V

    .line 78
    return-void
.end method

.method public findWidget(FF)Lc8/ob;
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "found":Lc8/ob;
    invoke-virtual {p0}, Lc8/xb;->getDrawX()I

    move-result v4

    .line 135
    .local v4, "l":I
    invoke-virtual {p0}, Lc8/xb;->getDrawY()I

    move-result v7

    .line 136
    .local v7, "t":I
    invoke-virtual {p0}, Lc8/xb;->getWidth()I

    move-result v9

    add-int v6, v4, v9

    .line 137
    .local v6, "r":I
    invoke-virtual {p0}, Lc8/xb;->getHeight()I

    move-result v9

    add-int v0, v7, v9

    .line 138
    .local v0, "b":I
    int-to-float v9, v4

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_0

    int-to-float v9, v6

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_0

    int-to-float v9, v7

    cmpl-float v9, p2, v9

    if-ltz v9, :cond_0

    int-to-float v9, v0

    cmpg-float v9, p2, v9

    if-gtz v9, :cond_0

    .line 139
    move-object v2, p0

    .line 141
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v9, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "mChildrenSize":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 142
    iget-object v9, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/ob;

    .line 143
    .local v8, "widget":Lc8/ob;
    instance-of v9, v8, Lc8/xb;

    if-eqz v9, :cond_2

    .line 144
    check-cast v8, Lc8/xb;

    .end local v8    # "widget":Lc8/ob;
    invoke-virtual {v8, p1, p2}, Lc8/xb;->findWidget(FF)Lc8/ob;

    move-result-object v1

    .line 145
    .local v1, "f":Lc8/ob;
    if-eqz v1, :cond_1

    .line 146
    move-object v2, v1

    .line 141
    .end local v1    # "f":Lc8/ob;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    .restart local v8    # "widget":Lc8/ob;
    :cond_2
    invoke-virtual {v8}, Lc8/ob;->getDrawX()I

    move-result v4

    .line 150
    invoke-virtual {v8}, Lc8/ob;->getDrawY()I

    move-result v7

    .line 151
    invoke-virtual {v8}, Lc8/ob;->getWidth()I

    move-result v9

    add-int v6, v4, v9

    .line 152
    invoke-virtual {v8}, Lc8/ob;->getHeight()I

    move-result v9

    add-int v0, v7, v9

    .line 153
    int-to-float v9, v4

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_1

    int-to-float v9, v6

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_1

    int-to-float v9, v7

    cmpl-float v9, p2, v9

    if-ltz v9, :cond_1

    int-to-float v9, v0

    cmpg-float v9, p2, v9

    if-gtz v9, :cond_1

    .line 154
    move-object v2, v8

    goto :goto_1

    .line 158
    .end local v8    # "widget":Lc8/ob;
    :cond_3
    return-object v2
.end method

.method public findWidgets(IIII)Ljava/util/ArrayList;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/ob;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    new-instance v0, Lc8/ub;

    invoke-direct {v0}, Lc8/ub;-><init>()V

    .line 173
    .local v0, "area":Lc8/ub;
    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/ub;->setBounds(IIII)V

    .line 174
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "mChildrenSize":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 175
    iget-object v6, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/ob;

    .line 176
    .local v5, "widget":Lc8/ob;
    new-instance v1, Lc8/ub;

    invoke-direct {v1}, Lc8/ub;-><init>()V

    .line 177
    .local v1, "bounds":Lc8/ub;
    invoke-virtual {v5}, Lc8/ob;->getDrawX()I

    move-result v6

    invoke-virtual {v5}, Lc8/ob;->getDrawY()I

    move-result v7

    .line 178
    invoke-virtual {v5}, Lc8/ob;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Lc8/ob;->getHeight()I

    move-result v9

    .line 177
    invoke-virtual {v1, v6, v7, v8, v9}, Lc8/ub;->setBounds(IIII)V

    .line 179
    invoke-virtual {v0, v1}, Lc8/ub;->intersects(Lc8/ub;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "bounds":Lc8/ub;
    .end local v5    # "widget":Lc8/ob;
    :cond_1
    return-object v2
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/ob;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRootConstraintContainer()Lc8/qb;
    .locals 4

    .prologue
    .line 105
    .line 106
    move-object v1, p0

    .local v1, "item":Lc8/ob;
    invoke-virtual {p0}, Lc8/ob;->getParent()Lc8/ob;

    move-result-object v2

    .line 107
    .local v2, "parent":Lc8/ob;
    const/4 v0, 0x0

    .line 108
    .local v0, "container":Lc8/qb;
    instance-of v3, v1, Lc8/qb;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 109
    check-cast v0, Lc8/qb;

    .line 111
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 113
    move-object v1, v2

    invoke-virtual {v2}, Lc8/ob;->getParent()Lc8/ob;

    move-result-object v2

    .line 114
    instance-of v3, v1, Lc8/qb;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 115
    check-cast v0, Lc8/qb;

    goto :goto_0

    .line 118
    :cond_1
    return-object v0
.end method

.method public layout()V
    .locals 4

    .prologue
    .line 265
    invoke-virtual {p0}, Lc8/xb;->updateDrawPosition()V

    .line 266
    iget-object v3, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 276
    :cond_0
    return-void

    .line 269
    :cond_1
    iget-object v3, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 270
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 271
    iget-object v3, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/ob;

    .line 272
    .local v2, "widget":Lc8/ob;
    instance-of v3, v2, Lc8/xb;

    if-eqz v3, :cond_2

    .line 273
    check-cast v2, Lc8/xb;

    .end local v2    # "widget":Lc8/ob;
    invoke-virtual {v2}, Lc8/xb;->layout()V

    .line 270
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Lc8/ob;)V
    .locals 1
    .param p1, "widget"    # Lc8/ob;

    .prologue
    .line 86
    iget-object v0, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc8/ob;->setParent(Lc8/ob;)V

    .line 88
    return-void
.end method

.method public removeAllChildren()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-super {p0}, Lc8/ob;->reset()V

    .line 64
    return-void
.end method

.method public resetGroups()V
    .locals 4

    .prologue
    .line 290
    invoke-super {p0}, Lc8/ob;->resetGroups()V

    .line 291
    iget-object v3, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 292
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 293
    iget-object v3, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/ob;

    .line 294
    .local v2, "widget":Lc8/ob;
    invoke-virtual {v2}, Lc8/ob;->resetGroups()V

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v2    # "widget":Lc8/ob;
    :cond_0
    return-void
.end method

.method public resetSolverVariables(Lc8/Z;)V
    .locals 4
    .param p1, "cache"    # Lc8/Z;

    .prologue
    .line 280
    invoke-super {p0, p1}, Lc8/ob;->resetSolverVariables(Lc8/Z;)V

    .line 281
    iget-object v3, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 282
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 283
    iget-object v3, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/ob;

    .line 284
    .local v2, "widget":Lc8/ob;
    invoke-virtual {v2, p1}, Lc8/ob;->resetSolverVariables(Lc8/Z;)V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v2    # "widget":Lc8/ob;
    :cond_0
    return-void
.end method

.method public setOffset(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Lc8/ob;->setOffset(II)V

    .line 234
    iget-object v3, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 235
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 236
    iget-object v3, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/ob;

    .line 237
    .local v2, "widget":Lc8/ob;
    invoke-virtual {p0}, Lc8/xb;->getRootX()I

    move-result v3

    invoke-virtual {p0}, Lc8/xb;->getRootY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lc8/ob;->setOffset(II)V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v2    # "widget":Lc8/ob;
    :cond_0
    return-void
.end method

.method public updateDrawPosition()V
    .locals 5

    .prologue
    .line 247
    invoke-super {p0}, Lc8/ob;->updateDrawPosition()V

    .line 248
    iget-object v3, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 259
    :cond_0
    return-void

    .line 251
    :cond_1
    iget-object v3, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 252
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 253
    iget-object v3, p0, Lc8/xb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/ob;

    .line 254
    .local v2, "widget":Lc8/ob;
    invoke-virtual {p0}, Lc8/xb;->getDrawX()I

    move-result v3

    invoke-virtual {p0}, Lc8/xb;->getDrawY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lc8/ob;->setOffset(II)V

    .line 255
    instance-of v3, v2, Lc8/qb;

    if-nez v3, :cond_2

    .line 256
    invoke-virtual {v2}, Lc8/ob;->updateDrawPosition()V

    .line 252
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
