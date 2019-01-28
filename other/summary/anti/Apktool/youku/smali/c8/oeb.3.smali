.class public Lc8/oeb;
.super Lc8/yeb;
.source "AnimatableTextFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/neb;,
        Lc8/meb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/yeb",
        "<",
        "Lc8/Adb;",
        "Lc8/Adb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;Lc8/Adb;)V
    .locals 0
    .param p2, "initialValue"    # Lc8/Adb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Lc8/Adb;",
            ">;>;",
            "Lc8/Adb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/DocumentData;>;>;"
    invoke-direct {p0, p1, p2}, Lc8/yeb;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lc8/cdb;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lc8/oeb;->createAnimation()Lc8/sdb;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lc8/sdb;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lc8/sdb;

    iget-object v1, p0, Lc8/oeb;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lc8/sdb;-><init>(Ljava/util/List;)V

    return-object v0
.end method
