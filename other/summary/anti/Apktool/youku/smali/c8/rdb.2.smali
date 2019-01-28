.class public Lc8/rdb;
.super Lc8/cdb;
.source "StaticKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/cdb",
        "<TK;TA;>;"
    }
.end annotation


# instance fields
.field private final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lc8/rdb;, "Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation<TK;TA;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TA;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/cdb;-><init>(Ljava/util/List;)V

    .line 14
    iput-object p1, p0, Lc8/rdb;->initialValue:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lc8/bdb;)V
    .locals 0
    .param p1, "listener"    # Lc8/bdb;

    .prologue
    .line 23
    .local p0, "this":Lc8/rdb;, "Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation<TK;TA;>;"
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lc8/rdb;, "Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation<TK;TA;>;"
    iget-object v0, p0, Lc8/rdb;->initialValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue(Lc8/Ecb;F)Ljava/lang/Object;
    .locals 1
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Ecb",
            "<TK;>;F)TA;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lc8/rdb;, "Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation<TK;TA;>;"
    .local p1, "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<TK;>;"
    iget-object v0, p0, Lc8/rdb;->initialValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 19
    .local p0, "this":Lc8/rdb;, "Lcom/airbnb/lottie/animation/keyframe/StaticKeyframeAnimation<TK;TA;>;"
    return-void
.end method
