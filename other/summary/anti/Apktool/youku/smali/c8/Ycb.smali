.class public Lc8/Ycb;
.super Ljava/lang/Object;
.source "ShapeContent.java"

# interfaces
.implements Lc8/Tcb;
.implements Lc8/bdb;


# instance fields
.field private isPathValid:Z

.field private final lottieDrawable:Lc8/tcb;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final shapeAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lc8/adb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/tcb;Lc8/rfb;Lc8/ifb;)V
    .locals 1
    .param p1, "lottieDrawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;
    .param p3, "shape"    # Lc8/ifb;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc8/Ycb;->path:Landroid/graphics/Path;

    .line 26
    invoke-virtual {p3}, Lc8/ifb;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Ycb;->name:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lc8/Ycb;->lottieDrawable:Lc8/tcb;

    .line 28
    invoke-virtual {p3}, Lc8/ifb;->getShapePath()Lc8/keb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/keb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/Ycb;->shapeAnimation:Lc8/cdb;

    .line 29
    iget-object v0, p0, Lc8/Ycb;->shapeAnimation:Lc8/cdb;

    invoke-virtual {p2, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 30
    iget-object v0, p0, Lc8/Ycb;->shapeAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 31
    return-void
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Ycb;->isPathValid:Z

    .line 39
    iget-object v0, p0, Lc8/Ycb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->invalidateSelf()V

    .line 40
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc8/Ycb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lc8/Ycb;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lc8/Ycb;->path:Landroid/graphics/Path;

    .line 67
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lc8/Ycb;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 61
    iget-object v1, p0, Lc8/Ycb;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lc8/Ycb;->shapeAnimation:Lc8/cdb;

    invoke-virtual {v0}, Lc8/cdb;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 62
    iget-object v0, p0, Lc8/Ycb;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 64
    iget-object v0, p0, Lc8/Ycb;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lc8/Ycb;->trimPath:Lc8/adb;

    invoke-static {v0, v1}, Lc8/Kfb;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lc8/adb;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ycb;->isPathValid:Z

    .line 67
    iget-object v0, p0, Lc8/Ycb;->path:Landroid/graphics/Path;

    goto :goto_0
.end method

.method public onValueChanged()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lc8/Ycb;->invalidate()V

    .line 35
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Icb;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lc8/Icb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 44
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Icb;

    .line 45
    .local v0, "content":Lc8/Icb;
    instance-of v2, v0, Lc8/adb;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lc8/adb;

    .line 46
    invoke-virtual {v2}, Lc8/adb;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 48
    check-cast v0, Lc8/adb;

    .end local v0    # "content":Lc8/Icb;
    iput-object v0, p0, Lc8/Ycb;->trimPath:Lc8/adb;

    .line 49
    iget-object v2, p0, Lc8/Ycb;->trimPath:Lc8/adb;

    invoke-virtual {v2, p0}, Lc8/adb;->addListener(Lc8/bdb;)V

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method
