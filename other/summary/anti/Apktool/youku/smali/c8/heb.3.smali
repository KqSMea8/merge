.class public Lc8/heb;
.super Lc8/yeb;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/geb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/yeb",
        "<",
        "Lc8/Kdb;",
        "Lc8/Kdb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lc8/Kdb;

    invoke-direct {v0}, Lc8/Kdb;-><init>()V

    invoke-direct {p0, v0}, Lc8/yeb;-><init>(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lc8/feb;)V
    .locals 0
    .param p1, "x0"    # Lc8/feb;

    .prologue
    .line 14
    invoke-direct {p0}, Lc8/heb;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lc8/Kdb;)V
    .locals 0
    .param p2, "initialValue"    # Lc8/Kdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Lc8/Kdb;",
            ">;>;",
            "Lc8/Kdb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/ScaleXY;>;>;"
    invoke-direct {p0, p1, p2}, Lc8/yeb;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 21
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
            "Lc8/Kdb;",
            "Lc8/Kdb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lc8/heb;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lc8/rdb;

    iget-object v1, p0, Lc8/heb;->initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lc8/rdb;-><init>(Ljava/lang/Object;)V

    .line 27
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/odb;

    iget-object v1, p0, Lc8/heb;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lc8/odb;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
