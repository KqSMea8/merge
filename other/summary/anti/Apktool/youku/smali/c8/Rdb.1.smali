.class public Lc8/Rdb;
.super Lc8/yeb;
.source "AnimatableFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Pdb;,
        Lc8/Qdb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/yeb",
        "<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/yeb;-><init>(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lc8/Odb;)V
    .locals 0
    .param p1, "x0"    # Lc8/Odb;

    .prologue
    .line 14
    invoke-direct {p0}, Lc8/Rdb;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/Float;)V
    .locals 0
    .param p2, "initialValue"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;>;"
    invoke-direct {p0, p1, p2}, Lc8/yeb;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/Float;Lc8/Odb;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/lang/Float;
    .param p3, "x2"    # Lc8/Odb;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lc8/Rdb;-><init>(Ljava/util/List;Ljava/lang/Float;)V

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
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lc8/Rdb;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lc8/rdb;

    iget-object v1, p0, Lc8/Rdb;->initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lc8/rdb;-><init>(Ljava/lang/Object;)V

    .line 28
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/edb;

    iget-object v1, p0, Lc8/Rdb;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lc8/edb;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getInitialValue()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lc8/Rdb;->initialValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public bridge synthetic getInitialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lc8/Rdb;->getInitialValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
