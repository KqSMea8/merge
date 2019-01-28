.class public Lc8/pdb;
.super Lc8/cdb;
.source "ShapeKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/cdb",
        "<",
        "Lc8/afb;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempPath:Landroid/graphics/Path;

.field private final tempShapeData:Lc8/afb;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Lc8/afb;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/content/ShapeData;>;>;"
    invoke-direct {p0, p1}, Lc8/cdb;-><init>(Ljava/util/List;)V

    .line 12
    new-instance v0, Lc8/afb;

    invoke-direct {v0}, Lc8/afb;-><init>()V

    iput-object v0, p0, Lc8/pdb;->tempShapeData:Lc8/afb;

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc8/pdb;->tempPath:Landroid/graphics/Path;

    .line 17
    return-void
.end method


# virtual methods
.method public getValue(Lc8/Ecb;F)Landroid/graphics/Path;
    .locals 4
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Ecb",
            "<",
            "Lc8/afb;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "keyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/content/ShapeData;>;"
    iget-object v1, p1, Lc8/Ecb;->startValue:Ljava/lang/Object;

    check-cast v1, Lc8/afb;

    .line 21
    .local v1, "startShapeData":Lc8/afb;
    iget-object v0, p1, Lc8/Ecb;->endValue:Ljava/lang/Object;

    check-cast v0, Lc8/afb;

    .line 23
    .local v0, "endShapeData":Lc8/afb;
    iget-object v2, p0, Lc8/pdb;->tempShapeData:Lc8/afb;

    invoke-virtual {v2, v1, v0, p2}, Lc8/afb;->interpolateBetween(Lc8/afb;Lc8/afb;F)V

    .line 24
    iget-object v2, p0, Lc8/pdb;->tempShapeData:Lc8/afb;

    iget-object v3, p0, Lc8/pdb;->tempPath:Landroid/graphics/Path;

    invoke-static {v2, v3}, Lc8/Jfb;->getPathFromData(Lc8/afb;Landroid/graphics/Path;)V

    .line 25
    iget-object v2, p0, Lc8/pdb;->tempPath:Landroid/graphics/Path;

    return-object v2
.end method

.method public bridge synthetic getValue(Lc8/Ecb;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lc8/pdb;->getValue(Lc8/Ecb;F)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method
