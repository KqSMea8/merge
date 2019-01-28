.class public Lc8/idb;
.super Ljava/lang/Object;
.source "MaskKeyframeAnimation.java"


# instance fields
.field private final maskAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/cdb",
            "<",
            "Lc8/afb;",
            "Landroid/graphics/Path;",
            ">;>;"
        }
    .end annotation
.end field

.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Meb;",
            ">;"
        }
    .end annotation
.end field

.field private final opacityAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/cdb",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Meb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lc8/idb;->masks:Ljava/util/List;

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lc8/idb;->maskAnimations:Ljava/util/List;

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lc8/idb;->opacityAnimations:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 22
    iget-object v3, p0, Lc8/idb;->maskAnimations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Meb;

    invoke-virtual {v2}, Lc8/Meb;->getMaskPath()Lc8/keb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/keb;->createAnimation()Lc8/cdb;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Meb;

    invoke-virtual {v2}, Lc8/Meb;->getOpacity()Lc8/Zdb;

    move-result-object v1

    .line 24
    .local v1, "opacity":Lc8/Zdb;
    iget-object v2, p0, Lc8/idb;->opacityAnimations:Ljava/util/List;

    invoke-virtual {v1}, Lc8/Zdb;->createAnimation()Lc8/cdb;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    .end local v1    # "opacity":Lc8/Zdb;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaskAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/cdb",
            "<",
            "Lc8/afb;",
            "Landroid/graphics/Path;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lc8/idb;->maskAnimations:Ljava/util/List;

    return-object v0
.end method

.method public getMasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Meb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lc8/idb;->masks:Ljava/util/List;

    return-object v0
.end method

.method public getOpacityAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/cdb",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lc8/idb;->opacityAnimations:Ljava/util/List;

    return-object v0
.end method
