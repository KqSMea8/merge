.class public Lc8/eeb;
.super Lc8/yeb;
.source "AnimatablePointValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/deb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/yeb",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/graphics/PointF;)V
    .locals 0
    .param p2, "initialValue"    # Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;",
            "Landroid/graphics/PointF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Landroid/graphics/PointF;>;>;"
    invoke-direct {p0, p1, p2}, Lc8/yeb;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/graphics/PointF;Lc8/ceb;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Landroid/graphics/PointF;
    .param p3, "x2"    # Lc8/ceb;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lc8/eeb;-><init>(Ljava/util/List;Landroid/graphics/PointF;)V

    return-void
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
    .line 22
    invoke-virtual {p0}, Lc8/eeb;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lc8/rdb;

    iget-object v1, p0, Lc8/eeb;->initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lc8/rdb;-><init>(Ljava/lang/Object;)V

    .line 25
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/ndb;

    iget-object v1, p0, Lc8/eeb;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lc8/ndb;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
