.class public Lc8/gdb;
.super Lc8/hdb;
.source "IntegerKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/hdb",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, p1}, Lc8/hdb;-><init>(Ljava/util/List;)V

    .line 12
    return-void
.end method


# virtual methods
.method getValue(Lc8/Ecb;F)Ljava/lang/Integer;
    .locals 2
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Ecb",
            "<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Integer;>;"
    iget-object v0, p1, Lc8/Ecb;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lc8/Ecb;->endValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing values for keyframe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    iget-object v0, p1, Lc8/Ecb;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p1, Lc8/Ecb;->endValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p2}, Lc8/Jfb;->lerp(IIF)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getValue(Lc8/Ecb;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2}, Lc8/gdb;->getValue(Lc8/Ecb;F)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
