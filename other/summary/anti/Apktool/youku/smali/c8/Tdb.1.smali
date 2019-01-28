.class public final Lc8/Tdb;
.super Ljava/lang/Object;
.source "AnimatableGradientColorValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Vdb;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    const/4 v5, 0x0

    .line 41
    const-string/jumbo v3, "p"

    const-string/jumbo v4, "k"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 42
    .local v1, "points":I
    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v4, Lc8/Udb;

    invoke-direct {v4, v1, v5}, Lc8/Udb;-><init>(ILc8/Sdb;)V

    .line 43
    invoke-static {p0, v3, p1, v4}, Lc8/xeb;->newInstance(Lorg/json/JSONObject;FLc8/kcb;Lc8/ueb;)Lc8/xeb;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lc8/xeb;->parseJson()Lc8/web;

    move-result-object v2

    .line 45
    .local v2, "result":Lc8/web;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Lcom/airbnb/lottie/model/content/GradientColor;>;"
    iget-object v0, v2, Lc8/web;->initialValue:Ljava/lang/Object;

    check-cast v0, Lc8/Deb;

    .line 46
    .local v0, "initialValue":Lc8/Deb;
    new-instance v3, Lc8/Vdb;

    iget-object v4, v2, Lc8/web;->keyframes:Ljava/util/List;

    invoke-direct {v3, v4, v0, v5}, Lc8/Vdb;-><init>(Ljava/util/List;Lc8/Deb;Lc8/Sdb;)V

    return-object v3
.end method
