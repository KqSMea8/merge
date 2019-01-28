.class public Lc8/Ieb;
.super Ljava/lang/Object;
.source "GradientStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Jeb;
    .locals 25
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 107
    const-string/jumbo v2, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v2, "g"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 109
    .local v19, "jsonColor":Lorg/json/JSONObject;
    if-eqz v19, :cond_0

    const-string/jumbo v2, "k"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string/jumbo v2, "k"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 112
    :cond_0
    const/4 v5, 0x0

    .line 113
    .local v5, "color":Lc8/Vdb;
    if-eqz v19, :cond_1

    .line 114
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lc8/Tdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Vdb;

    move-result-object v5

    .line 117
    :cond_1
    const-string/jumbo v2, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 118
    .local v21, "jsonOpacity":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 119
    .local v6, "opacity":Lc8/Zdb;
    if-eqz v21, :cond_2

    .line 120
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lc8/Xdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Zdb;

    move-result-object v6

    .line 123
    :cond_2
    const-string/jumbo v2, "t"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 124
    .local v17, "gradientTypeInt":I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->Linear:Lcom/airbnb/lottie/model/content/GradientType;

    .line 126
    .local v4, "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    :goto_0
    const-string/jumbo v2, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 127
    .local v22, "jsonStartPoint":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 128
    .local v7, "startPoint":Lc8/eeb;
    if-eqz v22, :cond_3

    .line 129
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lc8/deb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/eeb;

    move-result-object v7

    .line 132
    :cond_3
    const-string/jumbo v2, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 133
    .local v20, "jsonEndPoint":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 134
    .local v8, "endPoint":Lc8/eeb;
    if-eqz v20, :cond_4

    .line 135
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lc8/deb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/eeb;

    move-result-object v8

    .line 137
    :cond_4
    const-string/jumbo v2, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v9

    .line 141
    .local v9, "width":Lc8/Rdb;
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v2

    const-string/jumbo v14, "lc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    aget-object v10, v2, v14

    .line 142
    .local v10, "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v2

    const-string/jumbo v14, "lj"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    aget-object v11, v2, v14

    .line 144
    .local v11, "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    const/4 v13, 0x0

    .line 145
    .local v13, "offset":Lc8/Rdb;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v12, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    const-string/jumbo v2, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 147
    const-string/jumbo v2, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 148
    .local v16, "dashesJson":Lorg/json/JSONArray;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_9

    .line 149
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 150
    .local v15, "dashJson":Lorg/json/JSONObject;
    const-string/jumbo v2, "n"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 151
    .local v23, "n":Ljava/lang/String;
    const-string/jumbo v2, "o"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 152
    const-string/jumbo v2, "v"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 153
    .local v24, "value":Lorg/json/JSONObject;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v13

    .line 148
    .end local v24    # "value":Lorg/json/JSONObject;
    :cond_5
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 124
    .end local v4    # "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    .end local v7    # "startPoint":Lc8/eeb;
    .end local v8    # "endPoint":Lc8/eeb;
    .end local v9    # "width":Lc8/Rdb;
    .end local v10    # "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .end local v11    # "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .end local v12    # "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    .end local v13    # "offset":Lc8/Rdb;
    .end local v15    # "dashJson":Lorg/json/JSONObject;
    .end local v16    # "dashesJson":Lorg/json/JSONArray;
    .end local v18    # "i":I
    .end local v20    # "jsonEndPoint":Lorg/json/JSONObject;
    .end local v22    # "jsonStartPoint":Lorg/json/JSONObject;
    .end local v23    # "n":Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->Radial:Lcom/airbnb/lottie/model/content/GradientType;

    goto/16 :goto_0

    .line 154
    .restart local v4    # "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    .restart local v7    # "startPoint":Lc8/eeb;
    .restart local v8    # "endPoint":Lc8/eeb;
    .restart local v9    # "width":Lc8/Rdb;
    .restart local v10    # "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .restart local v11    # "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .restart local v12    # "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    .restart local v13    # "offset":Lc8/Rdb;
    .restart local v15    # "dashJson":Lorg/json/JSONObject;
    .restart local v16    # "dashesJson":Lorg/json/JSONArray;
    .restart local v18    # "i":I
    .restart local v20    # "jsonEndPoint":Lorg/json/JSONObject;
    .restart local v22    # "jsonStartPoint":Lorg/json/JSONObject;
    .restart local v23    # "n":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "d"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "g"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 155
    :cond_8
    const-string/jumbo v2, "v"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 156
    .restart local v24    # "value":Lorg/json/JSONObject;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 159
    .end local v15    # "dashJson":Lorg/json/JSONObject;
    .end local v23    # "n":Ljava/lang/String;
    .end local v24    # "value":Lorg/json/JSONObject;
    :cond_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v14, 0x1

    if-ne v2, v14, :cond_a

    .line 161
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v16    # "dashesJson":Lorg/json/JSONArray;
    .end local v18    # "i":I
    :cond_a
    new-instance v2, Lc8/Jeb;

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lc8/Jeb;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lc8/Vdb;Lc8/Zdb;Lc8/eeb;Lc8/eeb;Lc8/Rdb;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;Ljava/util/List;Lc8/Rdb;Lc8/Heb;)V

    return-object v2
.end method
