.class public final Lc8/meb;
.super Ljava/lang/Object;
.source "AnimatableTextFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/oeb;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    const-string/jumbo v1, "x"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string/jumbo v1, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v1}, Lc8/kcb;->addWarning(Ljava/lang/String;)V

    .line 30
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    invoke-static {}, Lc8/neb;->access$000()Lc8/neb;

    move-result-object v2

    invoke-static {p0, v1, p1, v2}, Lc8/xeb;->newInstance(Lorg/json/JSONObject;FLc8/kcb;Lc8/ueb;)Lc8/xeb;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lc8/xeb;->parseJson()Lc8/web;

    move-result-object v0

    .line 33
    .local v0, "result":Lc8/web;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Lcom/airbnb/lottie/model/DocumentData;>;"
    new-instance v2, Lc8/oeb;

    iget-object v3, v0, Lc8/web;->keyframes:Ljava/util/List;

    iget-object v1, v0, Lc8/web;->initialValue:Ljava/lang/Object;

    check-cast v1, Lc8/Adb;

    invoke-direct {v2, v3, v1}, Lc8/oeb;-><init>(Ljava/util/List;Lc8/Adb;)V

    return-object v2
.end method
