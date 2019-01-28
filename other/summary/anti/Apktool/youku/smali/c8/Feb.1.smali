.class public Lc8/Feb;
.super Ljava/lang/Object;
.source "GradientFill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Geb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Geb;
    .locals 20
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 92
    const-string/jumbo v2, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v2, "g"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 95
    .local v15, "jsonColor":Lorg/json/JSONObject;
    if-eqz v15, :cond_0

    const-string/jumbo v2, "k"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string/jumbo v2, "p"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    .line 99
    .local v19, "points":I
    const-string/jumbo v2, "k"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 101
    :try_start_0
    const-string/jumbo v2, "p"

    move/from16 v0, v19

    invoke-virtual {v15, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v19    # "points":I
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 107
    .local v6, "color":Lc8/Vdb;
    if-eqz v15, :cond_1

    .line 108
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lc8/Tdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Vdb;

    move-result-object v6

    .line 111
    :cond_1
    const-string/jumbo v2, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 112
    .local v17, "jsonOpacity":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 113
    .local v7, "opacity":Lc8/Zdb;
    if-eqz v17, :cond_2

    .line 114
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lc8/Xdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Zdb;

    move-result-object v7

    .line 117
    :cond_2
    const-string/jumbo v2, "r"

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 118
    .local v13, "fillTypeInt":I
    const/4 v2, 0x1

    if-ne v13, v2, :cond_5

    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 120
    .local v5, "fillType":Landroid/graphics/Path$FillType;
    :goto_1
    const-string/jumbo v2, "t"

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 121
    .local v14, "gradientTypeInt":I
    const/4 v2, 0x1

    if-ne v14, v2, :cond_6

    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->Linear:Lcom/airbnb/lottie/model/content/GradientType;

    .line 123
    .local v4, "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    :goto_2
    const-string/jumbo v2, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 124
    .local v18, "jsonStartPoint":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 125
    .local v8, "startPoint":Lc8/eeb;
    if-eqz v18, :cond_3

    .line 126
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lc8/deb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/eeb;

    move-result-object v8

    .line 129
    :cond_3
    const-string/jumbo v2, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 130
    .local v16, "jsonEndPoint":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 131
    .local v9, "endPoint":Lc8/eeb;
    if-eqz v16, :cond_4

    .line 132
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lc8/deb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/eeb;

    move-result-object v9

    .line 135
    :cond_4
    new-instance v2, Lc8/Geb;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lc8/Geb;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lc8/Vdb;Lc8/Zdb;Lc8/eeb;Lc8/eeb;Lc8/Rdb;Lc8/Rdb;Lc8/Eeb;)V

    return-object v2

    .line 118
    .end local v4    # "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    .end local v5    # "fillType":Landroid/graphics/Path$FillType;
    .end local v8    # "startPoint":Lc8/eeb;
    .end local v9    # "endPoint":Lc8/eeb;
    .end local v14    # "gradientTypeInt":I
    .end local v16    # "jsonEndPoint":Lorg/json/JSONObject;
    .end local v18    # "jsonStartPoint":Lorg/json/JSONObject;
    :cond_5
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_1

    .line 121
    .restart local v5    # "fillType":Landroid/graphics/Path$FillType;
    .restart local v14    # "gradientTypeInt":I
    :cond_6
    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->Radial:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_2

    .end local v5    # "fillType":Landroid/graphics/Path$FillType;
    .end local v6    # "color":Lc8/Vdb;
    .end local v7    # "opacity":Lc8/Zdb;
    .end local v13    # "fillTypeInt":I
    .end local v14    # "gradientTypeInt":I
    .end local v17    # "jsonOpacity":Lorg/json/JSONObject;
    .restart local v19    # "points":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method
