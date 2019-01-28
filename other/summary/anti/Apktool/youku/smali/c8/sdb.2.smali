.class public Lc8/sdb;
.super Lc8/hdb;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/hdb",
        "<",
        "Lc8/Adb;",
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
            "<+",
            "Lc8/Ecb",
            "<",
            "Lc8/Adb;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/DocumentData;>;>;"
    invoke-direct {p0, p1}, Lc8/hdb;-><init>(Ljava/util/List;)V

    .line 11
    return-void
.end method


# virtual methods
.method getValue(Lc8/Ecb;F)Lc8/Adb;
    .locals 1
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Ecb",
            "<",
            "Lc8/Adb;",
            ">;F)",
            "Lc8/Adb;"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/DocumentData;>;"
    iget-object v0, p1, Lc8/Ecb;->startValue:Ljava/lang/Object;

    check-cast v0, Lc8/Adb;

    return-object v0
.end method

.method bridge synthetic getValue(Lc8/Ecb;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2}, Lc8/sdb;->getValue(Lc8/Ecb;F)Lc8/Adb;

    move-result-object v0

    return-object v0
.end method
