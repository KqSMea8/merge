.class public final Lc8/Xdb;
.super Ljava/lang/Object;
.source "AnimatableIntegerValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static newInstance()Lc8/Zdb;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lc8/Zdb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Zdb;-><init>(Lc8/Wdb;)V

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Zdb;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 46
    if-eqz p0, :cond_0

    const-string/jumbo v2, "x"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-string/jumbo v2, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v2}, Lc8/kcb;->addWarning(Ljava/lang/String;)V

    .line 49
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    invoke-static {}, Lc8/Ydb;->access$100()Lc8/Ydb;

    move-result-object v3

    invoke-static {p0, v2, p1, v3}, Lc8/xeb;->newInstance(Lorg/json/JSONObject;FLc8/kcb;Lc8/ueb;)Lc8/xeb;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lc8/xeb;->parseJson()Lc8/web;

    move-result-object v1

    .line 52
    .local v1, "result":Lc8/web;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Ljava/lang/Integer;>;"
    iget-object v0, v1, Lc8/web;->initialValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 53
    .local v0, "initialValue":Ljava/lang/Integer;
    new-instance v2, Lc8/Zdb;

    iget-object v3, v1, Lc8/web;->keyframes:Ljava/util/List;

    invoke-direct {v2, v3, v0}, Lc8/Zdb;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    return-object v2
.end method
