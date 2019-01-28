.class public final Lc8/Pdb;
.super Ljava/lang/Object;
.source "AnimatableFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static newInstance()Lc8/Rdb;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lc8/Rdb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Rdb;-><init>(Lc8/Odb;)V

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;
    .param p2, "isDp"    # Z

    .prologue
    .line 61
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lc8/kcb;->getDpScale()F

    move-result v1

    .line 62
    .local v1, "scale":F
    :goto_0
    if-eqz p0, :cond_0

    const-string/jumbo v2, "x"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const-string/jumbo v2, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v2}, Lc8/kcb;->addWarning(Ljava/lang/String;)V

    .line 65
    :cond_0
    sget-object v2, Lc8/Qdb;->INSTANCE:Lc8/Qdb;

    .line 66
    invoke-static {p0, v1, p1, v2}, Lc8/xeb;->newInstance(Lorg/json/JSONObject;FLc8/kcb;Lc8/ueb;)Lc8/xeb;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lc8/xeb;->parseJson()Lc8/web;

    move-result-object v0

    .line 68
    .local v0, "result":Lc8/web;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Ljava/lang/Float;>;"
    new-instance v3, Lc8/Rdb;

    iget-object v4, v0, Lc8/web;->keyframes:Ljava/util/List;

    iget-object v2, v0, Lc8/web;->initialValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lc8/Rdb;-><init>(Ljava/util/List;Ljava/lang/Float;Lc8/Odb;)V

    return-object v3

    .line 61
    .end local v0    # "result":Lc8/web;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Ljava/lang/Float;>;"
    .end local v1    # "scale":F
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method
