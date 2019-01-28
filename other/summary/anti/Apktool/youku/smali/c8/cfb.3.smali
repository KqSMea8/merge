.class public Lc8/cfb;
.super Ljava/lang/Object;
.source "ShapeFill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dfb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/dfb;
    .locals 10
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    const/4 v6, 0x1

    .line 37
    const/4 v4, 0x0

    .line 39
    .local v4, "color":Lc8/Ndb;
    const/4 v5, 0x0

    .line 40
    .local v5, "opacity":Lc8/Zdb;
    const-string/jumbo v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v0, "c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 43
    .local v8, "jsonColor":Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 44
    invoke-static {v8, p1}, Lc8/Mdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Ndb;

    move-result-object v4

    .line 47
    :cond_0
    const-string/jumbo v0, "o"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 48
    .local v9, "jsonOpacity":Lorg/json/JSONObject;
    if-eqz v9, :cond_1

    .line 49
    invoke-static {v9, p1}, Lc8/Xdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Zdb;

    move-result-object v5

    .line 51
    :cond_1
    const-string/jumbo v0, "fillEnabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 53
    .local v2, "fillEnabled":Z
    const-string/jumbo v0, "r"

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 54
    .local v7, "fillTypeInt":I
    if-ne v7, v6, :cond_2

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 56
    .local v3, "fillType":Landroid/graphics/Path$FillType;
    :goto_0
    new-instance v0, Lc8/dfb;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lc8/dfb;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lc8/Ndb;Lc8/Zdb;Lc8/bfb;)V

    return-object v0

    .line 54
    .end local v3    # "fillType":Landroid/graphics/Path$FillType;
    :cond_2
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_0
.end method
