.class public Lc8/beb;
.super Ljava/lang/Object;
.source "AnimatablePathValue.java"

# interfaces
.implements Lc8/veb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aeb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/veb",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private initialPoint:Landroid/graphics/PointF;

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/ldb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/beb;->keyframes:Ljava/util/List;

    .line 38
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lc8/beb;->initialPoint:Landroid/graphics/PointF;

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lc8/kcb;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/Object;
    .param p2, "composition"    # Lc8/kcb;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lc8/beb;->keyframes:Ljava/util/List;

    .line 42
    invoke-direct {p0, p1}, Lc8/beb;->hasKeyframes(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 43
    check-cast v1, Lorg/json/JSONArray;

    .line 44
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 45
    .local v4, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 46
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 48
    .local v2, "jsonKeyframe":Lorg/json/JSONObject;
    invoke-static {}, Lc8/aeb;->access$000()Lc8/ueb;

    move-result-object v5

    .line 47
    invoke-static {v2, p2, v5}, Lc8/kdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Lc8/ueb;)Lc8/ldb;

    move-result-object v3

    .line 49
    .local v3, "keyframe":Lc8/ldb;
    iget-object v5, p0, Lc8/beb;->keyframes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "jsonKeyframe":Lorg/json/JSONObject;
    .end local v3    # "keyframe":Lc8/ldb;
    :cond_0
    iget-object v5, p0, Lc8/beb;->keyframes:Ljava/util/List;

    invoke-static {v5}, Lc8/Ecb;->setEndFrames(Ljava/util/List;)V

    .line 55
    .end local v0    # "i":I
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "length":I
    .end local p1    # "json":Ljava/lang/Object;
    :goto_1
    return-void

    .line 53
    .restart local p1    # "json":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-virtual {p2}, Lc8/kcb;->getDpScale()F

    move-result v5

    invoke-static {p1, v5}, Lc8/Ffb;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v5

    iput-object v5, p0, Lc8/beb;->initialPoint:Landroid/graphics/PointF;

    goto :goto_1
.end method

.method public static createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lc8/kcb;)Lc8/veb;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lc8/kcb;",
            ")",
            "Lc8/veb",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    const-string/jumbo v0, "k"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lc8/beb;

    const-string/jumbo v1, "k"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc8/beb;-><init>(Ljava/lang/Object;Lc8/kcb;)V

    .line 25
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/leb;

    const-string/jumbo v1, "x"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v1

    const-string/jumbo v2, "y"

    .line 27
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Rdb;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/leb;-><init>(Lc8/Rdb;Lc8/Rdb;)V

    goto :goto_0
.end method

.method private hasKeyframes(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "json"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 58
    instance-of v2, p1, Lorg/json/JSONArray;

    if-nez v2, :cond_1

    .line 63
    .end local p1    # "json":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 62
    .restart local p1    # "json":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "json":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "firstObject":Ljava/lang/Object;
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "firstObject":Ljava/lang/Object;
    const-string/jumbo v2, "t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createAnimation()Lc8/cdb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/cdb",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lc8/beb;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lc8/rdb;

    iget-object v1, p0, Lc8/beb;->initialPoint:Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Lc8/rdb;-><init>(Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/mdb;

    iget-object v1, p0, Lc8/beb;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lc8/mdb;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public hasAnimation()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lc8/beb;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initialPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/beb;->initialPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
