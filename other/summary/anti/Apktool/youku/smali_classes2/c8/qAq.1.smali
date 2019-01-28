.class public Lc8/qAq;
.super Lc8/Omq;
.source "SerializedSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final s:Lc8/Wlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Wlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lc8/qAq;-><init>(Lc8/Omq;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lc8/Omq;Z)V
    .locals 1
    .param p2, "shareSubscriptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1, p2}, Lc8/Omq;-><init>(Lc8/Omq;Z)V

    .line 54
    new-instance v0, Lc8/pAq;

    invoke-direct {v0, p1}, Lc8/pAq;-><init>(Lc8/Wlq;)V

    iput-object v0, p0, Lc8/qAq;->s:Lc8/Wlq;

    .line 55
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    iget-object v0, p0, Lc8/qAq;->s:Lc8/Wlq;

    invoke-interface {v0}, Lc8/Wlq;->onCompleted()V

    .line 65
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    .local p0, "this":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    iget-object v0, p0, Lc8/qAq;->s:Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/qAq;->s:Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
