.class public Lc8/efb;
.super Ljava/lang/Object;
.source "ShapeGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ffb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;Lc8/kcb;)Lc8/ffb;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;
    .param p1, "x1"    # Lc8/kcb;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lc8/efb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/ffb;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/ffb;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 72
    const-string/jumbo v5, "it"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 73
    .local v2, "jsonItems":Lorg/json/JSONArray;
    const-string/jumbo v5, "nm"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "name":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 77
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, p1}, Lc8/ffb;->shapeItemWithJson(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Ceb;

    move-result-object v4

    .line 78
    .local v4, "newItem":Lc8/Ceb;
    if-eqz v4, :cond_0

    .line 79
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v4    # "newItem":Lc8/Ceb;
    :cond_1
    new-instance v5, Lc8/ffb;

    invoke-direct {v5, v3, v1}, Lc8/ffb;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v5
.end method
