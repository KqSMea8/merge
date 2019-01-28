.class public final Lc8/geb;
.super Ljava/lang/Object;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/heb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static newInstance()Lc8/heb;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lc8/heb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/heb;-><init>(Lc8/feb;)V

    return-object v0
.end method

.method static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/heb;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lc8/Jdb;->INSTANCE:Lc8/Jdb;

    .line 38
    invoke-static {p0, v1, p1, v2}, Lc8/xeb;->newInstance(Lorg/json/JSONObject;FLc8/kcb;Lc8/ueb;)Lc8/xeb;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lc8/xeb;->parseJson()Lc8/web;

    move-result-object v0

    .line 40
    .local v0, "result":Lc8/web;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Lcom/airbnb/lottie/model/ScaleXY;>;"
    new-instance v2, Lc8/heb;

    iget-object v3, v0, Lc8/web;->keyframes:Ljava/util/List;

    iget-object v1, v0, Lc8/web;->initialValue:Ljava/lang/Object;

    check-cast v1, Lc8/Kdb;

    invoke-direct {v2, v3, v1}, Lc8/heb;-><init>(Ljava/util/List;Lc8/Kdb;)V

    return-object v2
.end method
