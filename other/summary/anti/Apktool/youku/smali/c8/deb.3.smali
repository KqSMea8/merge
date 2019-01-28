.class public final Lc8/deb;
.super Ljava/lang/Object;
.source "AnimatablePointValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/eeb;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 34
    .line 35
    invoke-virtual {p1}, Lc8/kcb;->getDpScale()F

    move-result v1

    sget-object v2, Lc8/Idb;->INSTANCE:Lc8/Idb;

    invoke-static {p0, v1, p1, v2}, Lc8/xeb;->newInstance(Lorg/json/JSONObject;FLc8/kcb;Lc8/ueb;)Lc8/xeb;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lc8/xeb;->parseJson()Lc8/web;

    move-result-object v0

    .line 37
    .local v0, "result":Lc8/web;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Landroid/graphics/PointF;>;"
    new-instance v2, Lc8/eeb;

    iget-object v3, v0, Lc8/web;->keyframes:Ljava/util/List;

    iget-object v1, v0, Lc8/web;->initialValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lc8/eeb;-><init>(Ljava/util/List;Landroid/graphics/PointF;Lc8/ceb;)V

    return-object v2
.end method
