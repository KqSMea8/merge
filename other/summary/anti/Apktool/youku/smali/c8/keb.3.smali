.class public Lc8/keb;
.super Lc8/yeb;
.source "AnimatableShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/jeb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/yeb",
        "<",
        "Lc8/afb;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final convertTypePath:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Ljava/util/List;Lc8/afb;)V
    .locals 1
    .param p2, "initialValue"    # Lc8/afb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<",
            "Lc8/afb;",
            ">;>;",
            "Lc8/afb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/content/ShapeData;>;>;"
    invoke-direct {p0, p1, p2}, Lc8/yeb;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc8/keb;->convertTypePath:Landroid/graphics/Path;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lc8/afb;Lc8/ieb;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lc8/afb;
    .param p3, "x2"    # Lc8/ieb;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lc8/keb;-><init>(Ljava/util/List;Lc8/afb;)V

    return-void
.end method


# virtual methods
.method convertType(Lc8/afb;)Landroid/graphics/Path;
    .locals 1
    .param p1, "shapeData"    # Lc8/afb;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/keb;->convertTypePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 34
    iget-object v0, p0, Lc8/keb;->convertTypePath:Landroid/graphics/Path;

    invoke-static {p1, v0}, Lc8/Jfb;->getPathFromData(Lc8/afb;Landroid/graphics/Path;)V

    .line 35
    iget-object v0, p0, Lc8/keb;->convertTypePath:Landroid/graphics/Path;

    return-object v0
.end method

.method bridge synthetic convertType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lc8/afb;

    invoke-virtual {p0, p1}, Lc8/keb;->convertType(Lc8/afb;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lc8/cdb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/cdb",
            "<",
            "Lc8/afb;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lc8/keb;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    new-instance v1, Lc8/rdb;

    iget-object v0, p0, Lc8/keb;->initialValue:Ljava/lang/Object;

    check-cast v0, Lc8/afb;

    invoke-virtual {p0, v0}, Lc8/keb;->convertType(Lc8/afb;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {v1, v0}, Lc8/rdb;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 28
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/pdb;

    iget-object v1, p0, Lc8/keb;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lc8/pdb;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
