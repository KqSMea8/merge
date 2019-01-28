.class public final Lc8/peb;
.super Ljava/lang/Object;
.source "AnimatableTextProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/qeb;
    .locals 11
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    const/4 v10, 0x0

    .line 32
    if-eqz p0, :cond_0

    const-string/jumbo v9, "a"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 33
    :cond_0
    new-instance v9, Lc8/qeb;

    invoke-direct {v9, v10, v10, v10, v10}, Lc8/qeb;-><init>(Lc8/Ndb;Lc8/Ndb;Lc8/Rdb;Lc8/Rdb;)V

    .line 60
    :goto_0
    return-object v9

    .line 35
    :cond_1
    const-string/jumbo v9, "a"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 36
    .local v0, "animatablePropertiesJson":Lorg/json/JSONObject;
    const-string/jumbo v9, "fc"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 37
    .local v2, "colorJson":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 38
    .local v1, "color":Lc8/Ndb;
    if-eqz v2, :cond_2

    .line 39
    invoke-static {v2, p1}, Lc8/Mdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Ndb;

    move-result-object v1

    .line 42
    :cond_2
    const-string/jumbo v9, "sc"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 43
    .local v4, "strokeJson":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 44
    .local v3, "stroke":Lc8/Ndb;
    if-eqz v4, :cond_3

    .line 45
    invoke-static {v4, p1}, Lc8/Mdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Ndb;

    move-result-object v3

    .line 48
    :cond_3
    const-string/jumbo v9, "sw"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 49
    .local v6, "strokeWidthJson":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 50
    .local v5, "strokeWidth":Lc8/Rdb;
    if-eqz v6, :cond_4

    .line 51
    invoke-static {v6, p1}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v5

    .line 54
    :cond_4
    const-string/jumbo v9, "t"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 55
    .local v8, "trackingJson":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 56
    .local v7, "tracking":Lc8/Rdb;
    if-eqz v8, :cond_5

    .line 57
    invoke-static {v8, p1}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v7

    .line 60
    :cond_5
    new-instance v9, Lc8/qeb;

    invoke-direct {v9, v1, v3, v5, v7}, Lc8/qeb;-><init>(Lc8/Ndb;Lc8/Ndb;Lc8/Rdb;Lc8/Rdb;)V

    goto :goto_0
.end method
