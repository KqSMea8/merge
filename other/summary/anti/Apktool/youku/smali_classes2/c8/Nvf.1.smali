.class public Lc8/Nvf;
.super Lc8/Ivf;
.source "DiskCacheWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Ivf",
        "<",
        "Lc8/axf;",
        "Lc8/axf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc8/Mvf;)V
    .locals 2
    .param p1, "supplier"    # Lc8/Mvf;

    .prologue
    .line 12
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lc8/Ivf;-><init>(IILc8/Mvf;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected conductResult(Lc8/oyf;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/axf;",
            "Lc8/Jxf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/DecodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public consumeNewResult(Lc8/oyf;ZLc8/axf;)V
    .locals 3
    .param p2, "isLast"    # Z
    .param p3, "decodedImage"    # Lc8/axf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/axf;",
            "Lc8/Jxf;",
            ">;Z",
            "Lc8/axf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/DecodedImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    invoke-interface {p1, p3, p2}, Lc8/oyf;->onNewResult(Ljava/lang/Object;Z)V

    .line 19
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Jxf;

    invoke-virtual {p3}, Lc8/axf;->getEncodedImage()Lc8/cxf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lc8/Nvf;->writeImage(Lc8/Jxf;Lc8/cxf;Z)I

    .line 20
    return-void
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLc8/iyf;)V
    .locals 0

    .prologue
    .line 9
    check-cast p3, Lc8/axf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Nvf;->consumeNewResult(Lc8/oyf;ZLc8/axf;)V

    return-void
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p3, Lc8/axf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Nvf;->consumeNewResult(Lc8/oyf;ZLc8/axf;)V

    return-void
.end method
