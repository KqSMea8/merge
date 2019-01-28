.class public abstract Lc8/hdb;
.super Lc8/cdb;
.source "KeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/cdb",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lc8/Ecb",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Lc8/hdb;, "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation<TT;>;"
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/animation/Keyframe<TT;>;>;"
    invoke-direct {p0, p1}, Lc8/cdb;-><init>(Ljava/util/List;)V

    .line 10
    return-void
.end method
