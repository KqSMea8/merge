.class public Lc8/ubo;
.super Lc8/Omq;
.source "BaseSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/Ibo;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    .local p0, "this":Lc8/ubo;, "Lcom/youku/us/baseuikit/stream/BaseSubscriber<TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lc8/ubo;, "Lcom/youku/us/baseuikit/stream/BaseSubscriber<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    .local p0, "this":Lc8/ubo;, "Lcom/youku/us/baseuikit/stream/BaseSubscriber<TT;>;"
    return-void
.end method

.method public onNext(Lc8/Ibo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lc8/ubo;, "Lcom/youku/us/baseuikit/stream/BaseSubscriber<TT;>;"
    .local p1, "t":Lc8/Ibo;, "TT;"
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    .local p0, "this":Lc8/ubo;, "Lcom/youku/us/baseuikit/stream/BaseSubscriber<TT;>;"
    check-cast p1, Lc8/Ibo;

    invoke-virtual {p0, p1}, Lc8/ubo;->onNext(Lc8/Ibo;)V

    return-void
.end method
