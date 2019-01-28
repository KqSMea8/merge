.class public Lc8/hfb;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ifb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/ifb;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 47
    const-string/jumbo v1, "ks"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/jeb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/keb;

    move-result-object v0

    .line 49
    .local v0, "animatableShapeValue":Lc8/keb;
    new-instance v1, Lc8/ifb;

    const-string/jumbo v2, "nm"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ind"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lc8/ifb;-><init>(Ljava/lang/String;ILc8/keb;Lc8/gfb;)V

    return-object v1
.end method
