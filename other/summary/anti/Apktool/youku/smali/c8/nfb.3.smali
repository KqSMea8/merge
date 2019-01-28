.class public Lc8/nfb;
.super Ljava/lang/Object;
.source "ShapeTrimPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ofb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/ofb;
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    const/4 v6, 0x0

    .line 78
    new-instance v0, Lc8/ofb;

    const-string/jumbo v1, "nm"

    .line 79
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "m"

    const/4 v3, 0x1

    .line 80
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->forId(I)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    const-string/jumbo v3, "s"

    .line 81
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, v6}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v3

    const-string/jumbo v4, "e"

    .line 82
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1, v6}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v4

    const-string/jumbo v5, "o"

    .line 83
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, p1, v6}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lc8/ofb;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;Lc8/mfb;)V

    .line 78
    return-object v0
.end method
