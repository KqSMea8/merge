.class public final Lc8/jeb;
.super Ljava/lang/Object;
.source "AnimatableShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/keb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/keb;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 43
    .line 44
    invoke-virtual {p1}, Lc8/kcb;->getDpScale()F

    move-result v1

    sget-object v2, Lc8/Zeb;->INSTANCE:Lc8/Zeb;

    invoke-static {p0, v1, p1, v2}, Lc8/xeb;->newInstance(Lorg/json/JSONObject;FLc8/kcb;Lc8/ueb;)Lc8/xeb;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lc8/xeb;->parseJson()Lc8/web;

    move-result-object v0

    .line 46
    .local v0, "result":Lc8/web;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Lcom/airbnb/lottie/model/content/ShapeData;>;"
    new-instance v2, Lc8/keb;

    iget-object v3, v0, Lc8/web;->keyframes:Ljava/util/List;

    iget-object v1, v0, Lc8/web;->initialValue:Ljava/lang/Object;

    check-cast v1, Lc8/afb;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lc8/keb;-><init>(Ljava/util/List;Lc8/afb;Lc8/ieb;)V

    return-object v2
.end method
