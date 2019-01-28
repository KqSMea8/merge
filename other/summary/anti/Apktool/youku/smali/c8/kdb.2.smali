.class public Lc8/kdb;
.super Ljava/lang/Object;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ldb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;Lc8/ueb;)Lc8/ldb;
    .locals 17
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lc8/kcb;",
            "Lc8/ueb",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Lc8/ldb;"
        }
    .end annotation

    .prologue
    .line 32
    .line 33
    .local p2, "valueFactory":Lc8/ueb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<Landroid/graphics/PointF;>;"
    invoke-virtual/range {p1 .. p1}, Lc8/kcb;->getDpScale()F

    move-result v4

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v4, v2}, Lc8/Dcb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;FLc8/ueb;)Lc8/Ecb;

    move-result-object v14

    .line 34
    .local v14, "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Landroid/graphics/PointF;>;"
    const/4 v11, 0x0

    .line 35
    .local v11, "cp1":Landroid/graphics/PointF;
    const/4 v12, 0x0

    .line 36
    .local v12, "cp2":Landroid/graphics/PointF;
    const-string/jumbo v4, "ti"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 37
    .local v15, "tiJson":Lorg/json/JSONArray;
    const-string/jumbo v4, "to"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 38
    .local v16, "toJson":Lorg/json/JSONArray;
    if-eqz v15, :cond_0

    if-eqz v16, :cond_0

    .line 39
    invoke-virtual/range {p1 .. p1}, Lc8/kcb;->getDpScale()F

    move-result v4

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lc8/Ffb;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v11

    .line 40
    invoke-virtual/range {p1 .. p1}, Lc8/kcb;->getDpScale()F

    move-result v4

    invoke-static {v15, v4}, Lc8/Ffb;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v12

    .line 43
    :cond_0
    new-instance v3, Lc8/ldb;

    iget-object v5, v14, Lc8/Ecb;->startValue:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    iget-object v6, v14, Lc8/Ecb;->endValue:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    iget-object v7, v14, Lc8/Ecb;->interpolator:Landroid/view/animation/Interpolator;

    iget v8, v14, Lc8/Ecb;->startFrame:F

    iget-object v9, v14, Lc8/Ecb;->endFrame:Ljava/lang/Float;

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lc8/ldb;-><init>(Lc8/kcb;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lc8/jdb;)V

    .line 48
    .local v3, "pathKeyframe":Lc8/ldb;
    iget-object v4, v14, Lc8/Ecb;->endValue:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, v14, Lc8/Ecb;->startValue:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, v14, Lc8/Ecb;->startValue:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    iget-object v5, v14, Lc8/Ecb;->endValue:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget-object v5, v14, Lc8/Ecb;->endValue:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 49
    invoke-virtual {v4, v6, v5}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v13, 0x1

    .line 51
    .local v13, "equals":Z
    :goto_0
    iget-object v4, v3, Lc8/ldb;->endValue:Ljava/lang/Object;

    if-eqz v4, :cond_1

    if-nez v13, :cond_1

    .line 52
    iget-object v4, v14, Lc8/Ecb;->startValue:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    iget-object v5, v14, Lc8/Ecb;->endValue:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    invoke-static {v4, v5, v11, v12}, Lc8/Kfb;->createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ldb;->access$102(Lc8/ldb;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 54
    :cond_1
    return-object v3

    .line 49
    .end local v13    # "equals":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_0
.end method
