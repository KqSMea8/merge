.class public Lc8/tfb;
.super Lc8/rfb;
.source "CompositionLayer.java"


# instance fields
.field private hasMasks:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private hasMatte:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/rfb;",
            ">;"
        }
    .end annotation
.end field

.field private final newClipRect:Landroid/graphics/RectF;

.field private final rect:Landroid/graphics/RectF;

.field private final timeRemapping:Lc8/cdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/tcb;Lc8/xfb;Ljava/util/List;Lc8/kcb;)V
    .locals 14
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layerModel"    # Lc8/xfb;
    .param p4, "composition"    # Lc8/kcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tcb;",
            "Lc8/xfb;",
            "Ljava/util/List",
            "<",
            "Lc8/xfb;",
            ">;",
            "Lc8/kcb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, "layerModels":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    invoke-direct/range {p0 .. p2}, Lc8/rfb;-><init>(Lc8/tcb;Lc8/xfb;)V

    .line 22
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lc8/tfb;->layers:Ljava/util/List;

    .line 23
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, p0, Lc8/tfb;->rect:Landroid/graphics/RectF;

    .line 24
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, p0, Lc8/tfb;->newClipRect:Landroid/graphics/RectF;

    .line 33
    invoke-virtual/range {p2 .. p2}, Lc8/xfb;->getTimeRemapping()Lc8/Rdb;

    move-result-object v11

    .line 34
    .local v11, "timeRemapping":Lc8/Rdb;
    if-eqz v11, :cond_1

    .line 35
    invoke-virtual {v11}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v12

    iput-object v12, p0, Lc8/tfb;->timeRemapping:Lc8/cdb;

    .line 36
    iget-object v12, p0, Lc8/tfb;->timeRemapping:Lc8/cdb;

    invoke-virtual {p0, v12}, Lc8/tfb;->addAnimation(Lc8/cdb;)V

    .line 37
    iget-object v12, p0, Lc8/tfb;->timeRemapping:Lc8/cdb;

    invoke-virtual {v12, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 42
    :goto_0
    new-instance v6, Landroid/support/v4/util/LongSparseArray;

    .line 43
    invoke-virtual/range {p4 .. p4}, Lc8/kcb;->getLayers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v6, v12}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 45
    .local v6, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/BaseLayer;>;"
    const/4 v9, 0x0

    .line 46
    .local v9, "mattedLayer":Lc8/rfb;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 47
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/xfb;

    .line 48
    .local v8, "lm":Lc8/xfb;
    move-object/from16 v0, p4

    invoke-static {v8, p1, v0}, Lc8/rfb;->forModel(Lc8/xfb;Lc8/tcb;Lc8/kcb;)Lc8/rfb;

    move-result-object v3

    .line 49
    .local v3, "layer":Lc8/rfb;
    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v3}, Lc8/rfb;->getLayerModel()Lc8/xfb;

    move-result-object v12

    invoke-virtual {v12}, Lc8/xfb;->getId()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 53
    if-eqz v9, :cond_2

    .line 54
    invoke-virtual {v9, v3}, Lc8/rfb;->setMatteLayer(Lc8/rfb;)V

    .line 55
    const/4 v9, 0x0

    .line 46
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 39
    .end local v2    # "i":I
    .end local v3    # "layer":Lc8/rfb;
    .end local v6    # "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/BaseLayer;>;"
    .end local v8    # "lm":Lc8/xfb;
    .end local v9    # "mattedLayer":Lc8/rfb;
    :cond_1
    const/4 v12, 0x0

    iput-object v12, p0, Lc8/tfb;->timeRemapping:Lc8/cdb;

    goto :goto_0

    .line 57
    .restart local v2    # "i":I
    .restart local v3    # "layer":Lc8/rfb;
    .restart local v6    # "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/BaseLayer;>;"
    .restart local v8    # "lm":Lc8/xfb;
    .restart local v9    # "mattedLayer":Lc8/rfb;
    :cond_2
    iget-object v12, p0, Lc8/tfb;->layers:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 58
    sget-object v12, Lc8/sfb;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType:[I

    invoke-virtual {v8}, Lc8/xfb;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto :goto_2

    .line 61
    :pswitch_0
    move-object v9, v3

    goto :goto_2

    .line 67
    .end local v3    # "layer":Lc8/rfb;
    .end local v8    # "lm":Lc8/xfb;
    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v6}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v12

    if-ge v2, v12, :cond_5

    .line 68
    invoke-virtual {v6, v2}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 69
    .local v4, "key":J
    invoke-virtual {v6, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/rfb;

    .line 70
    .local v7, "layerView":Lc8/rfb;
    invoke-virtual {v7}, Lc8/rfb;->getLayerModel()Lc8/xfb;

    move-result-object v12

    invoke-virtual {v12}, Lc8/xfb;->getParentId()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc8/rfb;

    .line 71
    .local v10, "parentLayer":Lc8/rfb;
    if-eqz v10, :cond_4

    .line 72
    invoke-virtual {v7, v10}, Lc8/rfb;->setParentLayer(Lc8/rfb;)V

    .line 67
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 75
    .end local v4    # "key":J
    .end local v7    # "layerView":Lc8/rfb;
    .end local v10    # "parentLayer":Lc8/rfb;
    :cond_5
    return-void

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 5
    .param p1, "layerName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lc8/tfb;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 173
    iget-object v3, p0, Lc8/tfb;->layers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/rfb;

    .line 174
    .local v1, "layer":Lc8/rfb;
    invoke-virtual {v1}, Lc8/rfb;->getLayerModel()Lc8/xfb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/xfb;->getName()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "name":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 176
    invoke-virtual {v1, v4, v4, p3}, Lc8/rfb;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 172
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {v1, p1, p2, p3}, Lc8/rfb;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 181
    .end local v1    # "layer":Lc8/rfb;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .prologue
    const/4 v6, 0x0

    .line 78
    const-string/jumbo v3, "CompositionLayer#draw"

    invoke-static {v3}, Lc8/ccb;->beginSection(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    iget-object v3, p0, Lc8/tfb;->newClipRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lc8/tfb;->layerModel:Lc8/xfb;

    invoke-virtual {v4}, Lc8/xfb;->getPreCompWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lc8/tfb;->layerModel:Lc8/xfb;

    invoke-virtual {v5}, Lc8/xfb;->getPreCompHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 81
    iget-object v3, p0, Lc8/tfb;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 83
    iget-object v3, p0, Lc8/tfb;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 84
    const/4 v2, 0x1

    .line 85
    .local v2, "nonEmptyClip":Z
    iget-object v3, p0, Lc8/tfb;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    iget-object v3, p0, Lc8/tfb;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    .line 88
    :cond_0
    if-eqz v2, :cond_1

    .line 89
    iget-object v3, p0, Lc8/tfb;->layers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/rfb;

    .line 90
    .local v1, "layer":Lc8/rfb;
    invoke-virtual {v1, p1, p2, p3}, Lc8/rfb;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 83
    .end local v1    # "layer":Lc8/rfb;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 93
    .end local v2    # "nonEmptyClip":Z
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    const-string/jumbo v3, "CompositionLayer#draw"

    invoke-static {v3}, Lc8/ccb;->endSection(Ljava/lang/String;)F

    .line 95
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 7
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-super {p0, p1, p2}, Lc8/rfb;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 99
    iget-object v2, p0, Lc8/tfb;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 100
    iget-object v2, p0, Lc8/tfb;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 101
    iget-object v2, p0, Lc8/tfb;->layers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/rfb;

    .line 102
    .local v0, "content":Lc8/rfb;
    iget-object v2, p0, Lc8/tfb;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lc8/tfb;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Lc8/rfb;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lc8/tfb;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 100
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 106
    :cond_0
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lc8/tfb;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 107
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lc8/tfb;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 108
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lc8/tfb;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 109
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lc8/tfb;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 110
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 106
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 114
    .end local v0    # "content":Lc8/rfb;
    :cond_1
    return-void
.end method

.method public hasMasks()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 134
    iget-object v3, p0, Lc8/tfb;->hasMasks:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    .line 135
    iget-object v3, p0, Lc8/tfb;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 136
    iget-object v3, p0, Lc8/tfb;->layers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/rfb;

    .line 137
    .local v1, "layer":Lc8/rfb;
    instance-of v3, v1, Lc8/zfb;

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v1}, Lc8/rfb;->hasMasksOnThisLayer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lc8/tfb;->hasMasks:Ljava/lang/Boolean;

    .line 149
    .end local v0    # "i":I
    .end local v1    # "layer":Lc8/rfb;
    :goto_1
    return v2

    .line 142
    .restart local v0    # "i":I
    .restart local v1    # "layer":Lc8/rfb;
    :cond_0
    instance-of v3, v1, Lc8/tfb;

    if-eqz v3, :cond_1

    check-cast v1, Lc8/tfb;

    .end local v1    # "layer":Lc8/rfb;
    invoke-virtual {v1}, Lc8/tfb;->hasMasks()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lc8/tfb;->hasMasks:Ljava/lang/Boolean;

    goto :goto_1

    .line 135
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 147
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lc8/tfb;->hasMasks:Ljava/lang/Boolean;

    .line 149
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lc8/tfb;->hasMasks:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1
.end method

.method public hasMatte()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 153
    iget-object v1, p0, Lc8/tfb;->hasMatte:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 154
    invoke-virtual {p0}, Lc8/tfb;->hasMatteOnThisLayer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lc8/tfb;->hasMatte:Ljava/lang/Boolean;

    move v1, v2

    .line 167
    :goto_0
    return v1

    .line 159
    :cond_0
    iget-object v1, p0, Lc8/tfb;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 160
    iget-object v1, p0, Lc8/tfb;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/rfb;

    invoke-virtual {v1}, Lc8/rfb;->hasMatteOnThisLayer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lc8/tfb;->hasMatte:Ljava/lang/Boolean;

    move v1, v2

    .line 162
    goto :goto_0

    .line 159
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 165
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lc8/tfb;->hasMatte:Ljava/lang/Boolean;

    .line 167
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lc8/tfb;->hasMatte:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public setProgress(F)V
    .locals 7
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 117
    invoke-super {p0, p1}, Lc8/rfb;->setProgress(F)V

    .line 118
    iget-object v3, p0, Lc8/tfb;->timeRemapping:Lc8/cdb;

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lc8/tfb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v3}, Lc8/tcb;->getComposition()Lc8/kcb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/kcb;->getDuration()J

    move-result-wide v0

    .line 120
    .local v0, "duration":J
    iget-object v3, p0, Lc8/tfb;->timeRemapping:Lc8/cdb;

    invoke-virtual {v3}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v6

    float-to-long v4, v3

    .line 121
    .local v4, "remappedTime":J
    long-to-float v3, v4

    long-to-float v6, v0

    div-float p1, v3, v6

    .line 123
    .end local v0    # "duration":J
    .end local v4    # "remappedTime":J
    :cond_0
    iget-object v3, p0, Lc8/tfb;->layerModel:Lc8/xfb;

    invoke-virtual {v3}, Lc8/xfb;->getTimeStretch()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_1

    .line 124
    iget-object v3, p0, Lc8/tfb;->layerModel:Lc8/xfb;

    invoke-virtual {v3}, Lc8/xfb;->getTimeStretch()F

    move-result v3

    div-float/2addr p1, v3

    .line 127
    :cond_1
    iget-object v3, p0, Lc8/tfb;->layerModel:Lc8/xfb;

    invoke-virtual {v3}, Lc8/xfb;->getStartProgress()F

    move-result v3

    sub-float/2addr p1, v3

    .line 128
    iget-object v3, p0, Lc8/tfb;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 129
    iget-object v3, p0, Lc8/tfb;->layers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/rfb;

    invoke-virtual {v3, p1}, Lc8/rfb;->setProgress(F)V

    .line 128
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 131
    :cond_2
    return-void
.end method
