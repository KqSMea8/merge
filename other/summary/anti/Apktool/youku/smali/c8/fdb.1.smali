.class public Lc8/fdb;
.super Lc8/hdb;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/hdb",
        "<",
        "Lc8/Deb;",
        ">;"
    }
.end annotation


# instance fields
.field private final gradientColor:Lc8/Deb;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lc8/Ecb",
            "<",
            "Lc8/Deb;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/content/GradientColor;>;>;"
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1}, Lc8/hdb;-><init>(Ljava/util/List;)V

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Ecb;

    iget-object v1, v2, Lc8/Ecb;->startValue:Ljava/lang/Object;

    check-cast v1, Lc8/Deb;

    .line 14
    .local v1, "startValue":Lc8/Deb;
    if-nez v1, :cond_0

    .line 15
    .local v0, "size":I
    :goto_0
    new-instance v2, Lc8/Deb;

    new-array v3, v0, [F

    new-array v4, v0, [I

    invoke-direct {v2, v3, v4}, Lc8/Deb;-><init>([F[I)V

    iput-object v2, p0, Lc8/fdb;->gradientColor:Lc8/Deb;

    .line 16
    return-void

    .line 14
    .end local v0    # "size":I
    :cond_0
    invoke-virtual {v1}, Lc8/Deb;->getSize()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method getValue(Lc8/Ecb;F)Lc8/Deb;
    .locals 3
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Ecb",
            "<",
            "Lc8/Deb;",
            ">;F)",
            "Lc8/Deb;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/content/GradientColor;>;"
    iget-object v2, p0, Lc8/fdb;->gradientColor:Lc8/Deb;

    iget-object v0, p1, Lc8/Ecb;->startValue:Ljava/lang/Object;

    check-cast v0, Lc8/Deb;

    iget-object v1, p1, Lc8/Ecb;->endValue:Ljava/lang/Object;

    check-cast v1, Lc8/Deb;

    invoke-virtual {v2, v0, v1, p2}, Lc8/Deb;->lerp(Lc8/Deb;Lc8/Deb;F)V

    .line 20
    iget-object v0, p0, Lc8/fdb;->gradientColor:Lc8/Deb;

    return-object v0
.end method

.method bridge synthetic getValue(Lc8/Ecb;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2}, Lc8/fdb;->getValue(Lc8/Ecb;F)Lc8/Deb;

    move-result-object v0

    return-object v0
.end method
