.class public Lc8/lwf;
.super Lc8/kyf;
.source "PrefetchLastConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/kyf",
        "<",
        "Lc8/dxf;",
        "Lc8/Jxf;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCreator:Lc8/oxf;


# direct methods
.method public constructor <init>(Lc8/Jxf;Lc8/oxf;)V
    .locals 0
    .param p1, "imageRequest"    # Lc8/Jxf;
    .param p2, "creator"    # Lc8/oxf;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lc8/kyf;-><init>(Lc8/zyf;)V

    .line 17
    iput-object p2, p0, Lc8/lwf;->mCreator:Lc8/oxf;

    .line 18
    return-void
.end method


# virtual methods
.method protected onCancellationImpl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v1, p0, Lc8/lwf;->mCreator:Lc8/oxf;

    invoke-virtual {p0}, Lc8/lwf;->getContext()Lc8/zyf;

    move-result-object v0

    check-cast v0, Lc8/Jxf;

    invoke-virtual {v1, v0, v2, v2}, Lc8/oxf;->onImageComplete(Lc8/Jxf;Lc8/dxf;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method protected onFailureImpl(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 27
    const/4 v0, 0x3

    invoke-static {v0}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    :cond_0
    const-string/jumbo v1, "PrefetchConsumer"

    invoke-virtual {p0}, Lc8/lwf;->getContext()Lc8/zyf;

    move-result-object v0

    check-cast v0, Lc8/Jxf;

    const-string/jumbo v2, "received failure=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lc8/qwf;->e(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v1, p0, Lc8/lwf;->mCreator:Lc8/oxf;

    invoke-virtual {p0}, Lc8/lwf;->getContext()Lc8/zyf;

    move-result-object v0

    check-cast v0, Lc8/Jxf;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lc8/oxf;->onImageComplete(Lc8/Jxf;Lc8/dxf;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method protected onNewResultImpl(Lc8/dxf;Z)V
    .locals 3
    .param p1, "newResult"    # Lc8/dxf;
    .param p2, "isLast"    # Z

    .prologue
    .line 22
    iget-object v1, p0, Lc8/lwf;->mCreator:Lc8/oxf;

    invoke-virtual {p0}, Lc8/lwf;->getContext()Lc8/zyf;

    move-result-object v0

    check-cast v0, Lc8/Jxf;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lc8/oxf;->onImageComplete(Lc8/Jxf;Lc8/dxf;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method

.method protected bridge synthetic onNewResultImpl(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lc8/dxf;

    invoke-virtual {p0, p1, p2}, Lc8/lwf;->onNewResultImpl(Lc8/dxf;Z)V

    return-void
.end method
