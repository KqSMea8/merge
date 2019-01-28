.class public Lc8/seb;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/teb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static newInstance()Lc8/teb;
    .locals 9

    .prologue
    .line 87
    new-instance v1, Lc8/beb;

    invoke-direct {v1}, Lc8/beb;-><init>()V

    .line 88
    .local v1, "anchorPoint":Lc8/beb;
    new-instance v2, Lc8/beb;

    invoke-direct {v2}, Lc8/beb;-><init>()V

    .line 89
    .local v2, "position":Lc8/veb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    invoke-static {}, Lc8/geb;->newInstance()Lc8/heb;

    move-result-object v3

    .line 90
    .local v3, "scale":Lc8/heb;
    invoke-static {}, Lc8/Pdb;->newInstance()Lc8/Rdb;

    move-result-object v4

    .line 91
    .local v4, "rotation":Lc8/Rdb;
    invoke-static {}, Lc8/Xdb;->newInstance()Lc8/Zdb;

    move-result-object v5

    .line 92
    .local v5, "opacity":Lc8/Zdb;
    invoke-static {}, Lc8/Pdb;->newInstance()Lc8/Rdb;

    move-result-object v6

    .line 93
    .local v6, "startOpacity":Lc8/Rdb;
    invoke-static {}, Lc8/Pdb;->newInstance()Lc8/Rdb;

    move-result-object v7

    .line 94
    .local v7, "endOpacity":Lc8/Rdb;
    new-instance v0, Lc8/teb;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lc8/teb;-><init>(Lc8/beb;Lc8/veb;Lc8/heb;Lc8/Rdb;Lc8/Zdb;Lc8/Rdb;Lc8/Rdb;Lc8/reb;)V

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/teb;
    .locals 18
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 100
    const/4 v4, 0x0

    .line 102
    .local v4, "position":Lc8/veb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v6, 0x0

    .line 104
    .local v6, "rotation":Lc8/Rdb;
    const/4 v8, 0x0

    .line 105
    .local v8, "startOpacity":Lc8/Rdb;
    const/4 v9, 0x0

    .line 106
    .local v9, "endOpacity":Lc8/Rdb;
    const-string/jumbo v2, "a"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 107
    .local v11, "anchorJson":Lorg/json/JSONObject;
    if-eqz v11, :cond_3

    .line 108
    new-instance v3, Lc8/beb;

    const-string/jumbo v2, "k"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v3, v2, v0}, Lc8/beb;-><init>(Ljava/lang/Object;Lc8/kcb;)V

    .line 117
    .local v3, "anchorPoint":Lc8/beb;
    :goto_0
    const-string/jumbo v2, "p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 118
    .local v14, "positionJson":Lorg/json/JSONObject;
    if-eqz v14, :cond_4

    .line 120
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lc8/beb;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lc8/kcb;)Lc8/veb;

    move-result-object v4

    .line 125
    :goto_1
    const-string/jumbo v2, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 126
    .local v16, "scaleJson":Lorg/json/JSONObject;
    if-eqz v16, :cond_5

    .line 127
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lc8/geb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/heb;

    move-result-object v5

    .line 133
    .local v5, "scale":Lc8/heb;
    :goto_2
    const-string/jumbo v2, "r"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 134
    .local v15, "rotationJson":Lorg/json/JSONObject;
    if-nez v15, :cond_0

    .line 135
    const-string/jumbo v2, "rz"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 137
    :cond_0
    if-eqz v15, :cond_6

    .line 138
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v15, v0, v2}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v6

    .line 143
    :goto_3
    const-string/jumbo v2, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 144
    .local v13, "opacityJson":Lorg/json/JSONObject;
    if-eqz v13, :cond_7

    .line 145
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lc8/Xdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Zdb;

    move-result-object v7

    .line 151
    .local v7, "opacity":Lc8/Zdb;
    :goto_4
    const-string/jumbo v2, "so"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 152
    .local v17, "startOpacityJson":Lorg/json/JSONObject;
    if-eqz v17, :cond_1

    .line 153
    const/4 v2, 0x0

    .line 154
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v8

    .line 157
    :cond_1
    const-string/jumbo v2, "eo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 158
    .local v12, "endOpacityJson":Lorg/json/JSONObject;
    if-eqz v12, :cond_2

    .line 159
    const/4 v2, 0x0

    .line 160
    move-object/from16 v0, p1

    invoke-static {v12, v0, v2}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v9

    .line 163
    :cond_2
    new-instance v2, Lc8/teb;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lc8/teb;-><init>(Lc8/beb;Lc8/veb;Lc8/heb;Lc8/Rdb;Lc8/Zdb;Lc8/Rdb;Lc8/Rdb;Lc8/reb;)V

    return-object v2

    .line 114
    .end local v3    # "anchorPoint":Lc8/beb;
    .end local v5    # "scale":Lc8/heb;
    .end local v7    # "opacity":Lc8/Zdb;
    .end local v12    # "endOpacityJson":Lorg/json/JSONObject;
    .end local v13    # "opacityJson":Lorg/json/JSONObject;
    .end local v14    # "positionJson":Lorg/json/JSONObject;
    .end local v15    # "rotationJson":Lorg/json/JSONObject;
    .end local v16    # "scaleJson":Lorg/json/JSONObject;
    .end local v17    # "startOpacityJson":Lorg/json/JSONObject;
    :cond_3
    new-instance v3, Lc8/beb;

    invoke-direct {v3}, Lc8/beb;-><init>()V

    .restart local v3    # "anchorPoint":Lc8/beb;
    goto/16 :goto_0

    .line 122
    .restart local v14    # "positionJson":Lorg/json/JSONObject;
    :cond_4
    const-string/jumbo v2, "position"

    invoke-static {v2}, Lc8/seb;->throwMissingTransform(Ljava/lang/String;)V

    goto :goto_1

    .line 130
    .restart local v16    # "scaleJson":Lorg/json/JSONObject;
    :cond_5
    new-instance v5, Lc8/heb;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v10, Lc8/Kdb;

    invoke-direct {v10}, Lc8/Kdb;-><init>()V

    invoke-direct {v5, v2, v10}, Lc8/heb;-><init>(Ljava/util/List;Lc8/Kdb;)V

    .restart local v5    # "scale":Lc8/heb;
    goto :goto_2

    .line 140
    .restart local v15    # "rotationJson":Lorg/json/JSONObject;
    :cond_6
    const-string/jumbo v2, "rotation"

    invoke-static {v2}, Lc8/seb;->throwMissingTransform(Ljava/lang/String;)V

    goto :goto_3

    .line 148
    .restart local v13    # "opacityJson":Lorg/json/JSONObject;
    :cond_7
    new-instance v7, Lc8/Zdb;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v7, v2, v10}, Lc8/Zdb;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    .restart local v7    # "opacity":Lc8/Zdb;
    goto :goto_4
.end method

.method private static throwMissingTransform(Ljava/lang/String;)V
    .locals 3
    .param p0, "missingProperty"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing transform for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
