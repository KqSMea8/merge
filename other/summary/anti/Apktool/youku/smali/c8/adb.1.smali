.class public Lc8/adb;
.super Ljava/lang/Object;
.source "TrimPathContent.java"

# interfaces
.implements Lc8/Icb;
.implements Lc8/bdb;


# instance fields
.field private final endAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/bdb;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private final offsetAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final startAnimation:Lc8/cdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;


# direct methods
.method public constructor <init>(Lc8/rfb;Lc8/ofb;)V
    .locals 1
    .param p1, "layer"    # Lc8/rfb;
    .param p2, "trimPath"    # Lc8/ofb;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/adb;->listeners:Ljava/util/List;

    .line 20
    invoke-virtual {p2}, Lc8/ofb;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/adb;->name:Ljava/lang/String;

    .line 21
    invoke-virtual {p2}, Lc8/ofb;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v0

    iput-object v0, p0, Lc8/adb;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 22
    invoke-virtual {p2}, Lc8/ofb;->getStart()Lc8/Rdb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/adb;->startAnimation:Lc8/cdb;

    .line 23
    invoke-virtual {p2}, Lc8/ofb;->getEnd()Lc8/Rdb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/adb;->endAnimation:Lc8/cdb;

    .line 24
    invoke-virtual {p2}, Lc8/ofb;->getOffset()Lc8/Rdb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v0

    iput-object v0, p0, Lc8/adb;->offsetAnimation:Lc8/cdb;

    .line 26
    iget-object v0, p0, Lc8/adb;->startAnimation:Lc8/cdb;

    invoke-virtual {p1, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 27
    iget-object v0, p0, Lc8/adb;->endAnimation:Lc8/cdb;

    invoke-virtual {p1, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 28
    iget-object v0, p0, Lc8/adb;->offsetAnimation:Lc8/cdb;

    invoke-virtual {p1, v0}, Lc8/rfb;->addAnimation(Lc8/cdb;)V

    .line 30
    iget-object v0, p0, Lc8/adb;->startAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 31
    iget-object v0, p0, Lc8/adb;->endAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 32
    iget-object v0, p0, Lc8/adb;->offsetAnimation:Lc8/cdb;

    invoke-virtual {v0, p0}, Lc8/cdb;->addUpdateListener(Lc8/bdb;)V

    .line 33
    return-void
.end method


# virtual methods
.method addListener(Lc8/bdb;)V
    .locals 1
    .param p1, "listener"    # Lc8/bdb;

    .prologue
    .line 50
    iget-object v0, p0, Lc8/adb;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public getEnd()Lc8/cdb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lc8/adb;->endAnimation:Lc8/cdb;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/adb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Lc8/cdb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lc8/adb;->offsetAnimation:Lc8/cdb;

    return-object v0
.end method

.method public getStart()Lc8/cdb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/cdb",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lc8/adb;->startAnimation:Lc8/cdb;

    return-object v0
.end method

.method getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/adb;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/adb;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lc8/adb;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/bdb;

    invoke-interface {v1}, Lc8/bdb;->onValueChanged()V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    return-void
.end method
