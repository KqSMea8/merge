.class public Lc8/Vdb;
.super Lc8/yeb;
.source "AnimatableGradientColorValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Udb;,
        Lc8/Tdb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/yeb",
        "<",
        "Lc8/Deb;",
        "Lc8/Deb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;Lc8/Deb;)V
    .locals 0
    .param p2, "initialValue"    # Lc8/Deb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Lc8/Deb;",
            ">;>;",
            "Lc8/Deb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/content/GradientColor;>;>;"
    invoke-direct {p0, p1, p2}, Lc8/yeb;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lc8/Deb;Lc8/Sdb;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lc8/Deb;
    .param p3, "x2"    # Lc8/Sdb;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lc8/Vdb;-><init>(Ljava/util/List;Lc8/Deb;)V

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
            "Lc8/Deb;",
            "Lc8/Deb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lc8/Vdb;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lc8/rdb;

    iget-object v1, p0, Lc8/Vdb;->initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lc8/rdb;-><init>(Ljava/lang/Object;)V

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/fdb;

    iget-object v1, p0, Lc8/Vdb;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lc8/fdb;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
