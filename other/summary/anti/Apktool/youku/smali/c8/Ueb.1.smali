.class public Lc8/Ueb;
.super Ljava/lang/Object;
.source "RectangleShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Veb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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

.method static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Veb;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 36
    new-instance v0, Lc8/Veb;

    const-string/jumbo v1, "nm"

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "p"

    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 38
    invoke-static {v2, p1}, Lc8/beb;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lc8/kcb;)Lc8/veb;

    move-result-object v2

    const-string/jumbo v3, "s"

    .line 40
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lc8/deb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/eeb;

    move-result-object v3

    const-string/jumbo v4, "r"

    .line 41
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lc8/Veb;-><init>(Ljava/lang/String;Lc8/veb;Lc8/eeb;Lc8/Rdb;Lc8/Teb;)V

    .line 36
    return-object v0
.end method
