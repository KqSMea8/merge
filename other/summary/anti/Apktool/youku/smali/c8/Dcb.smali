.class public Lc8/Dcb;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ecb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .locals 2
    .param p0, "hash"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    const-class v1, Lc8/Dcb;

    monitor-enter v1

    .line 128
    :try_start_0
    invoke-static {}, Lc8/Dcb;->pathInterpolatorCache()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;FLc8/ueb;)Lc8/Ecb;
    .locals 23
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lc8/kcb;",
            "F",
            "Lc8/ueb",
            "<TT;>;)",
            "Lc8/Ecb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, "valueFactory":Lc8/ueb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<TT;>;"
    const/4 v11, 0x0

    .line 146
    .local v11, "cp1":Landroid/graphics/PointF;
    const/4 v13, 0x0

    .line 147
    .local v13, "cp2":Landroid/graphics/PointF;
    const/4 v9, 0x0

    .line 148
    .local v9, "startFrame":F
    const/16 v21, 0x0

    .line 149
    .local v21, "startValue":Ljava/lang/Object;, "TT;"
    const/4 v15, 0x0

    .line 150
    .local v15, "endValue":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    .line 152
    .local v8, "interpolator":Landroid/view/animation/Interpolator;
    const-string/jumbo v4, "t"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 153
    const-string/jumbo v4, "t"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v9, v4

    .line 154
    const-string/jumbo v4, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 155
    .local v22, "startValueJson":Ljava/lang/Object;
    if-eqz v22, :cond_9

    .line 156
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lc8/ueb;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v16, v21

    .line 159
    .end local v21    # "startValue":Ljava/lang/Object;, "TT;"
    .local v16, "startValue":Ljava/lang/Object;, "TT;"
    :goto_0
    const-string/jumbo v4, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 160
    .local v17, "endValueJson":Ljava/lang/Object;
    if-eqz v17, :cond_0

    .line 161
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lc8/ueb;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v15

    .line 164
    .end local v15    # "endValue":Ljava/lang/Object;, "TT;"
    :cond_0
    const-string/jumbo v4, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 165
    .local v12, "cp1Json":Lorg/json/JSONObject;
    const-string/jumbo v4, "i"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 166
    .local v14, "cp2Json":Lorg/json/JSONObject;
    if-eqz v12, :cond_1

    if-eqz v14, :cond_1

    .line 167
    move/from16 v0, p2

    invoke-static {v12, v0}, Lc8/Ffb;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v11

    .line 168
    move/from16 v0, p2

    invoke-static {v14, v0}, Lc8/Ffb;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v13

    .line 171
    :cond_1
    const-string/jumbo v4, "h"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/16 v19, 0x1

    .line 173
    .local v19, "hold":Z
    :goto_1
    if-eqz v19, :cond_3

    .line 176
    .local v16, "endValue":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lc8/Ecb;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v8

    move-object/from16 v7, v16

    move-object/from16 v6, v16

    .line 207
    .end local v12    # "cp1Json":Lorg/json/JSONObject;
    .end local v14    # "cp2Json":Lorg/json/JSONObject;
    .end local v16    # "endValue":Ljava/lang/Object;, "TT;"
    .end local v17    # "endValueJson":Ljava/lang/Object;
    .end local v19    # "hold":Z
    .end local v22    # "startValueJson":Ljava/lang/Object;
    :goto_2
    new-instance v4, Lc8/Ecb;

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lc8/Ecb;-><init>(Lc8/kcb;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-object v4

    .line 171
    .restart local v12    # "cp1Json":Lorg/json/JSONObject;
    .restart local v14    # "cp2Json":Lorg/json/JSONObject;
    .local v16, "startValue":Ljava/lang/Object;, "TT;"
    .restart local v17    # "endValueJson":Ljava/lang/Object;
    .restart local v22    # "startValueJson":Ljava/lang/Object;
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 177
    .restart local v19    # "hold":Z
    :cond_3
    if-eqz v11, :cond_7

    .line 178
    iget v4, v11, Landroid/graphics/PointF;->x:F

    move/from16 v0, p2

    neg-float v5, v0

    move/from16 v0, p2

    invoke-static {v4, v5, v0}, Lc8/Jfb;->clamp(FFF)F

    move-result v4

    iput v4, v11, Landroid/graphics/PointF;->x:F

    .line 179
    iget v4, v11, Landroid/graphics/PointF;->y:F

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v4, v5, v6}, Lc8/Jfb;->clamp(FFF)F

    move-result v4

    iput v4, v11, Landroid/graphics/PointF;->y:F

    .line 180
    iget v4, v13, Landroid/graphics/PointF;->x:F

    move/from16 v0, p2

    neg-float v5, v0

    move/from16 v0, p2

    invoke-static {v4, v5, v0}, Lc8/Jfb;->clamp(FFF)F

    move-result v4

    iput v4, v13, Landroid/graphics/PointF;->x:F

    .line 181
    iget v4, v13, Landroid/graphics/PointF;->y:F

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v4, v5, v6}, Lc8/Jfb;->clamp(FFF)F

    move-result v4

    iput v4, v13, Landroid/graphics/PointF;->y:F

    .line 182
    iget v4, v11, Landroid/graphics/PointF;->x:F

    iget v5, v11, Landroid/graphics/PointF;->y:F

    iget v6, v13, Landroid/graphics/PointF;->x:F

    iget v7, v13, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5, v6, v7}, Lc8/Kfb;->hashFor(FFFF)I

    move-result v18

    .line 183
    .local v18, "hash":I
    invoke-static/range {v18 .. v18}, Lc8/Dcb;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    move-result-object v20

    .line 184
    .local v20, "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    if-eqz v20, :cond_4

    .line 185
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    check-cast v8, Landroid/view/animation/Interpolator;

    .line 187
    .restart local v8    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_4
    if-eqz v20, :cond_5

    if-nez v8, :cond_6

    .line 188
    :cond_5
    iget v4, v11, Landroid/graphics/PointF;->x:F

    div-float v4, v4, p2

    iget v5, v11, Landroid/graphics/PointF;->y:F

    div-float v5, v5, p2

    iget v6, v13, Landroid/graphics/PointF;->x:F

    div-float v6, v6, p2

    iget v7, v13, Landroid/graphics/PointF;->y:F

    div-float v7, v7, p2

    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 191
    :try_start_0
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move/from16 v0, v18

    invoke-static {v0, v4}, Lc8/Dcb;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v18    # "hash":I
    .end local v20    # "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    :goto_3
    move-object v7, v15

    move-object/from16 v6, v16

    .line 203
    goto :goto_2

    .restart local v18    # "hash":I
    .restart local v20    # "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    :catch_0
    move-exception v4

    :cond_6
    move-object v7, v15

    move-object/from16 v6, v16

    .line 200
    goto/16 :goto_2

    .line 201
    .end local v18    # "hash":I
    .end local v20    # "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    :cond_7
    invoke-static {}, Lc8/Ecb;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v8

    goto :goto_3

    .line 204
    .end local v12    # "cp1Json":Lorg/json/JSONObject;
    .end local v14    # "cp2Json":Lorg/json/JSONObject;
    .end local v16    # "startValue":Ljava/lang/Object;, "TT;"
    .end local v17    # "endValueJson":Ljava/lang/Object;
    .end local v19    # "hold":Z
    .end local v22    # "startValueJson":Ljava/lang/Object;
    .restart local v15    # "endValue":Ljava/lang/Object;, "TT;"
    .restart local v21    # "startValue":Ljava/lang/Object;, "TT;"
    :cond_8
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lc8/ueb;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v21

    .line 205
    move-object/from16 v15, v21

    move-object v7, v15

    move-object/from16 v6, v21

    goto/16 :goto_2

    .restart local v22    # "startValueJson":Ljava/lang/Object;
    :cond_9
    move-object/from16 v16, v21

    .end local v21    # "startValue":Ljava/lang/Object;, "TT;"
    .restart local v16    # "startValue":Ljava/lang/Object;, "TT;"
    goto/16 :goto_0
.end method

.method public static parseKeyframes(Lorg/json/JSONArray;Lc8/kcb;FLc8/ueb;)Ljava/util/List;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONArray;
    .param p1, "composition"    # Lc8/kcb;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lc8/kcb;",
            "F",
            "Lc8/ueb",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p3, "valueFactory":Lc8/ueb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<TT;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 214
    .local v2, "length":I
    if-nez v2, :cond_0

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 224
    :goto_0
    return-object v1

    .line 217
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<TT;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 219
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lc8/Dcb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;FLc8/ueb;)Lc8/Ecb;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    :cond_1
    invoke-static {v1}, Lc8/Ecb;->setEndFrames(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static pathInterpolatorCache()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lc8/Dcb;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    sput-object v0, Lc8/Dcb;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    .line 120
    :cond_0
    sget-object v0, Lc8/Dcb;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .locals 2
    .param p0, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "interpolator":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    const-class v1, Lc8/Dcb;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-object v0, Lc8/Dcb;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 137
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
