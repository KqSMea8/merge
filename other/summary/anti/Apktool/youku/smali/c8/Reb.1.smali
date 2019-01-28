.class public Lc8/Reb;
.super Ljava/lang/Object;
.source "PolystarShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Seb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Seb;
    .locals 11
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    const/4 v10, 0x0

    .line 108
    const-string/jumbo v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v0, "sy"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v2

    .line 110
    .local v2, "type":Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    const-string/jumbo v0, "pt"

    .line 111
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v10}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v3

    .line 112
    .local v3, "points":Lc8/Rdb;
    const-string/jumbo v0, "p"

    .line 113
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/beb;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lc8/kcb;)Lc8/veb;

    move-result-object v4

    .line 114
    .local v4, "position":Lc8/veb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const-string/jumbo v0, "r"

    .line 115
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v10}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v5

    .line 116
    .local v5, "rotation":Lc8/Rdb;
    const-string/jumbo v0, "or"

    .line 117
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v7

    .line 118
    .local v7, "outerRadius":Lc8/Rdb;
    const-string/jumbo v0, "os"

    .line 119
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v10}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v9

    .line 123
    .local v9, "outerRoundedness":Lc8/Rdb;
    sget-object v0, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->Star:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v2, v0, :cond_0

    .line 124
    const-string/jumbo v0, "ir"

    .line 125
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v6

    .line 126
    .local v6, "innerRadius":Lc8/Rdb;
    const-string/jumbo v0, "is"

    .line 127
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v10}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v8

    .line 132
    .local v8, "innerRoundedness":Lc8/Rdb;
    :goto_0
    new-instance v0, Lc8/Seb;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lc8/Seb;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lc8/Rdb;Lc8/veb;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;Lc8/Qeb;)V

    return-object v0

    .line 129
    .end local v6    # "innerRadius":Lc8/Rdb;
    .end local v8    # "innerRoundedness":Lc8/Rdb;
    :cond_0
    const/4 v6, 0x0

    .line 130
    .restart local v6    # "innerRadius":Lc8/Rdb;
    const/4 v8, 0x0

    .restart local v8    # "innerRoundedness":Lc8/Rdb;
    goto :goto_0
.end method
