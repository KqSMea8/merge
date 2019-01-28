.class public final Lc8/Web;
.super Ljava/lang/Object;
.source "Repeater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Xeb;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    const/4 v5, 0x0

    .line 55
    const-string/jumbo v4, "nm"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "c"

    .line 57
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1, v5}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v0

    .line 58
    .local v0, "copies":Lc8/Rdb;
    const-string/jumbo v4, "o"

    .line 59
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1, v5}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v2

    .line 60
    .local v2, "offset":Lc8/Rdb;
    const-string/jumbo v4, "tr"

    .line 61
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1}, Lc8/seb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/teb;

    move-result-object v3

    .line 63
    .local v3, "transform":Lc8/teb;
    new-instance v4, Lc8/Xeb;

    invoke-direct {v4, v1, v0, v2, v3}, Lc8/Xeb;-><init>(Ljava/lang/String;Lc8/Rdb;Lc8/Rdb;Lc8/teb;)V

    return-object v4
.end method
