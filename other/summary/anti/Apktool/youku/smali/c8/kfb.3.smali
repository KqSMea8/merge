.class public Lc8/kfb;
.super Ljava/lang/Object;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lfb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/lfb;
    .locals 16
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 90
    const-string/jumbo v1, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v4, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    const-string/jumbo v1, "c"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lc8/Mdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Ndb;

    move-result-object v5

    .line 94
    .local v5, "color":Lc8/Ndb;
    const-string/jumbo v1, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v7

    .line 96
    .local v7, "width":Lc8/Rdb;
    const-string/jumbo v1, "o"

    .line 97
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 96
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lc8/Xdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Zdb;

    move-result-object v6

    .line 98
    .local v6, "opacity":Lc8/Zdb;
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v1

    const-string/jumbo v10, "lc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    aget-object v8, v1, v10

    .line 99
    .local v8, "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v1

    const-string/jumbo v10, "lj"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v1, v10

    .line 100
    .local v9, "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    const/4 v3, 0x0

    .line 102
    .local v3, "offset":Lc8/Rdb;
    const-string/jumbo v1, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    const-string/jumbo v1, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 104
    .local v12, "dashesJson":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v13, v1, :cond_3

    .line 105
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 106
    .local v11, "dashJson":Lorg/json/JSONObject;
    const-string/jumbo v1, "n"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 107
    .local v14, "n":Ljava/lang/String;
    const-string/jumbo v1, "o"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string/jumbo v1, "v"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 109
    .local v15, "value":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v3

    .line 104
    .end local v15    # "value":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const-string/jumbo v1, "d"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "g"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :cond_2
    const-string/jumbo v1, "v"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 112
    .restart local v15    # "value":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    .end local v11    # "dashJson":Lorg/json/JSONObject;
    .end local v14    # "n":Ljava/lang/String;
    .end local v15    # "value":Lorg/json/JSONObject;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    if-ne v1, v10, :cond_4

    .line 117
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v12    # "dashesJson":Lorg/json/JSONArray;
    .end local v13    # "i":I
    :cond_4
    new-instance v1, Lc8/lfb;

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lc8/lfb;-><init>(Ljava/lang/String;Lc8/Rdb;Ljava/util/List;Lc8/Ndb;Lc8/Zdb;Lc8/Rdb;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;Lc8/jfb;)V

    return-object v1
.end method
