.class public final Lc8/Mdb;
.super Ljava/lang/Object;
.source "AnimatableColorValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ndb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Ndb;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 35
    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lc8/wdb;->INSTANCE:Lc8/wdb;

    .line 36
    invoke-static {p0, v1, p1, v2}, Lc8/xeb;->newInstance(Lorg/json/JSONObject;FLc8/kcb;Lc8/ueb;)Lc8/xeb;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lc8/xeb;->parseJson()Lc8/web;

    move-result-object v0

    .line 38
    .local v0, "result":Lc8/web;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Ljava/lang/Integer;>;"
    new-instance v2, Lc8/Ndb;

    iget-object v3, v0, Lc8/web;->keyframes:Ljava/util/List;

    iget-object v1, v0, Lc8/web;->initialValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lc8/Ndb;-><init>(Ljava/util/List;Ljava/lang/Integer;Lc8/Ldb;)V

    return-object v2
.end method
