.class public Lc8/xeb;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/web;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final composition:Lc8/kcb;

.field private final json:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final scale:F

.field private final valueFactory:Lc8/ueb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/ueb",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;FLc8/kcb;Lc8/ueb;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "scale"    # F
    .param p3, "composition"    # Lc8/kcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "F",
            "Lc8/kcb;",
            "Lc8/ueb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lc8/xeb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser<TT;>;"
    .local p4, "valueFactory":Lc8/ueb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lc8/xeb;->json:Lorg/json/JSONObject;

    .line 23
    iput p2, p0, Lc8/xeb;->scale:F

    .line 24
    iput-object p3, p0, Lc8/xeb;->composition:Lc8/kcb;

    .line 25
    iput-object p4, p0, Lc8/xeb;->valueFactory:Lc8/ueb;

    .line 26
    return-void
.end method

.method private static hasKeyframes(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "json"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 65
    instance-of v2, p0, Lorg/json/JSONArray;

    if-nez v2, :cond_1

    .line 69
    .end local p0    # "json":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 68
    .restart local p0    # "json":Ljava/lang/Object;
    :cond_1
    check-cast p0, Lorg/json/JSONArray;

    .end local p0    # "json":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "firstObject":Ljava/lang/Object;
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "firstObject":Ljava/lang/Object;
    const-string/jumbo v2, "t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static newInstance(Lorg/json/JSONObject;FLc8/kcb;Lc8/ueb;)Lc8/xeb;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "scale"    # F
    .param p2, "composition"    # Lc8/kcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "F",
            "Lc8/kcb;",
            "Lc8/ueb",
            "<TT;>;)",
            "Lc8/xeb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "valueFactory":Lc8/ueb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<TT;>;"
    new-instance v0, Lc8/xeb;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/xeb;-><init>(Lorg/json/JSONObject;FLc8/kcb;Lc8/ueb;)V

    return-object v0
.end method

.method private parseInitialValue(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lc8/xeb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser<TT;>;"
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<TT;>;>;"
    iget-object v0, p0, Lc8/xeb;->json:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 54
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Ecb;

    iget-object v0, v0, Lc8/Ecb;->startValue:Ljava/lang/Object;

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lc8/xeb;->valueFactory:Lc8/ueb;

    iget-object v1, p0, Lc8/xeb;->json:Lorg/json/JSONObject;

    const-string/jumbo v2, "k"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lc8/xeb;->scale:F

    invoke-interface {v0, v1, v2}, Lc8/ueb;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseKeyframes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lc8/xeb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser<TT;>;"
    iget-object v1, p0, Lc8/xeb;->json:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lc8/xeb;->json:Lorg/json/JSONObject;

    const-string/jumbo v2, "k"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "k":Ljava/lang/Object;
    invoke-static {v0}, Lc8/xeb;->hasKeyframes(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "k":Ljava/lang/Object;
    iget-object v1, p0, Lc8/xeb;->composition:Lc8/kcb;

    iget v2, p0, Lc8/xeb;->scale:F

    iget-object v3, p0, Lc8/xeb;->valueFactory:Lc8/ueb;

    invoke-static {v0, v1, v2, v3}, Lc8/Dcb;->parseKeyframes(Lorg/json/JSONArray;Lc8/kcb;FLc8/ueb;)Ljava/util/List;

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    .line 45
    .restart local v0    # "k":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 48
    .end local v0    # "k":Ljava/lang/Object;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method parseJson()Lc8/web;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/web",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lc8/xeb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser<TT;>;"
    invoke-direct {p0}, Lc8/xeb;->parseKeyframes()Ljava/util/List;

    move-result-object v1

    .line 35
    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<TT;>;>;"
    invoke-direct {p0, v1}, Lc8/xeb;->parseInitialValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    .local v0, "initialValue":Ljava/lang/Object;, "TT;"
    new-instance v2, Lc8/web;

    invoke-direct {v2, v1, v0}, Lc8/web;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    return-object v2
.end method
