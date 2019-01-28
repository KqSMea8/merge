.class public Lc8/Aeb;
.super Ljava/lang/Object;
.source "CircleShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Beb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Beb;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 39
    new-instance v0, Lc8/Beb;

    const-string/jumbo v1, "nm"

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "p"

    .line 42
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lc8/beb;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lc8/kcb;)Lc8/veb;

    move-result-object v2

    const-string/jumbo v3, "s"

    .line 43
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lc8/deb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/eeb;

    move-result-object v3

    const-string/jumbo v4, "d"

    const/4 v5, 0x2

    .line 45
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lc8/Beb;-><init>(Ljava/lang/String;Lc8/veb;Lc8/eeb;ZLc8/zeb;)V

    .line 39
    return-object v0

    .line 45
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
