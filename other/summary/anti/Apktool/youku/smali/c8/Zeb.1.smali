.class public Lc8/Zeb;
.super Ljava/lang/Object;
.source "ShapeData.java"

# interfaces
.implements Lc8/ueb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/afb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/ueb",
        "<",
        "Lc8/afb;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lc8/Zeb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lc8/Zeb;

    invoke-direct {v0}, Lc8/Zeb;-><init>()V

    sput-object v0, Lc8/Zeb;->INSTANCE:Lc8/Zeb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method private static vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;
    .locals 6
    .param p0, "idx"    # I
    .param p1, "points"    # Lorg/json/JSONArray;

    .prologue
    .line 189
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt p0, v3, :cond_0

    .line 190
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". There are only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 191
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " points."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 194
    :cond_0
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 195
    .local v0, "pointArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 196
    .local v1, "x":Ljava/lang/Object;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    .line 197
    .local v2, "y":Ljava/lang/Object;
    new-instance v5, Landroid/graphics/PointF;

    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/Double;

    .line 198
    .end local v1    # "x":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_0
    instance-of v4, v2, Ljava/lang/Double;

    if-eqz v4, :cond_2

    check-cast v2, Ljava/lang/Double;

    .line 199
    .end local v2    # "y":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v4

    :goto_1
    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 197
    return-object v5

    .line 198
    .restart local v1    # "x":Ljava/lang/Object;
    .restart local v2    # "y":Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "x":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    goto :goto_0

    .line 199
    :cond_2
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "y":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Lc8/afb;
    .locals 25
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .prologue
    .line 112
    const/4 v15, 0x0

    .line 113
    .local v15, "pointsData":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 114
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "object":Ljava/lang/Object;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v8

    .line 115
    .local v8, "firstObject":Ljava/lang/Object;
    instance-of v0, v8, Lorg/json/JSONObject;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v20, v8

    check-cast v20, Lorg/json/JSONObject;

    const-string/jumbo v21, "v"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object v15, v8

    .line 116
    check-cast v15, Lorg/json/JSONObject;

    .line 122
    .end local v8    # "firstObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v15, :cond_2

    .line 123
    const/16 v20, 0x0

    .line 185
    :goto_1
    return-object v20

    .line 118
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v20, p1

    check-cast v20, Lorg/json/JSONObject;

    const-string/jumbo v21, "v"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v15, p1

    .line 119
    check-cast v15, Lorg/json/JSONObject;

    goto :goto_0

    .line 126
    .end local p1    # "object":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v20, "v"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 127
    .local v14, "pointsArray":Lorg/json/JSONArray;
    const-string/jumbo v20, "i"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 128
    .local v10, "inTangents":Lorg/json/JSONArray;
    const-string/jumbo v20, "o"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 129
    .local v13, "outTangents":Lorg/json/JSONArray;
    const-string/jumbo v20, "c"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 131
    .local v4, "closed":Z
    if-eqz v14, :cond_3

    if-eqz v10, :cond_3

    if-eqz v13, :cond_3

    .line 132
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v20

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 133
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v20

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 134
    :cond_3
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Unable to process points array or tangents. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 136
    :cond_4
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-nez v20, :cond_5

    .line 137
    new-instance v20, Lc8/afb;

    new-instance v21, Landroid/graphics/PointF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/PointF;-><init>()V

    const/16 v22, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Lc8/afb;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lc8/Yeb;)V

    goto/16 :goto_1

    .line 140
    :cond_5
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 141
    .local v12, "length":I
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v14}, Lc8/Zeb;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v19

    .line 142
    .local v19, "vertex":Landroid/graphics/PointF;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 143
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 144
    move-object/from16 v11, v19

    .line 145
    .local v11, "initialPoint":Landroid/graphics/PointF;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v7, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_2
    if-ge v9, v12, :cond_6

    .line 148
    invoke-static {v9, v14}, Lc8/Zeb;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v19

    .line 149
    add-int/lit8 v20, v9, -0x1

    move/from16 v0, v20

    invoke-static {v0, v14}, Lc8/Zeb;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v16

    .line 150
    .local v16, "previousVertex":Landroid/graphics/PointF;
    add-int/lit8 v20, v9, -0x1

    move/from16 v0, v20

    invoke-static {v0, v13}, Lc8/Zeb;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v5

    .line 151
    .local v5, "cp1":Landroid/graphics/PointF;
    invoke-static {v9, v10}, Lc8/Zeb;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v6

    .line 152
    .local v6, "cp2":Landroid/graphics/PointF;
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lc8/Jfb;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v17

    .line 153
    .local v17, "shapeCp1":Landroid/graphics/PointF;
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lc8/Jfb;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v18

    .line 155
    .local v18, "shapeCp2":Landroid/graphics/PointF;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 156
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 157
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 158
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 159
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 160
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 162
    new-instance v20, Lc8/ydb;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lc8/ydb;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 165
    .end local v5    # "cp1":Landroid/graphics/PointF;
    .end local v6    # "cp2":Landroid/graphics/PointF;
    .end local v16    # "previousVertex":Landroid/graphics/PointF;
    .end local v17    # "shapeCp1":Landroid/graphics/PointF;
    .end local v18    # "shapeCp2":Landroid/graphics/PointF;
    :cond_6
    if-eqz v4, :cond_8

    .line 166
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v14}, Lc8/Zeb;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v19

    .line 167
    add-int/lit8 v20, v12, -0x1

    move/from16 v0, v20

    invoke-static {v0, v14}, Lc8/Zeb;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v16

    .line 168
    .restart local v16    # "previousVertex":Landroid/graphics/PointF;
    add-int/lit8 v20, v12, -0x1

    move/from16 v0, v20

    invoke-static {v0, v13}, Lc8/Zeb;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v5

    .line 169
    .restart local v5    # "cp1":Landroid/graphics/PointF;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v10}, Lc8/Zeb;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v6

    .line 171
    .restart local v6    # "cp2":Landroid/graphics/PointF;
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lc8/Jfb;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v17

    .line 172
    .restart local v17    # "shapeCp1":Landroid/graphics/PointF;
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lc8/Jfb;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v18

    .line 174
    .restart local v18    # "shapeCp2":Landroid/graphics/PointF;
    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v20, p2, v20

    if-eqz v20, :cond_7

    .line 175
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 176
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 177
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 178
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 179
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 180
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    mul-float v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 183
    :cond_7
    new-instance v20, Lc8/ydb;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lc8/ydb;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v5    # "cp1":Landroid/graphics/PointF;
    .end local v6    # "cp2":Landroid/graphics/PointF;
    .end local v16    # "previousVertex":Landroid/graphics/PointF;
    .end local v17    # "shapeCp1":Landroid/graphics/PointF;
    .end local v18    # "shapeCp2":Landroid/graphics/PointF;
    :cond_8
    new-instance v20, Lc8/afb;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v4, v7, v1}, Lc8/afb;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lc8/Yeb;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lc8/Zeb;->valueFromObject(Ljava/lang/Object;F)Lc8/afb;

    move-result-object v0

    return-object v0
.end method
