.class public final Lc8/Zxq;
.super Lc8/Omq;
.source "ObserverSubscriber.java"


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
.field final observer:Lc8/Wlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Wlq",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Wlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wlq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lc8/Zxq;, "Lrx/internal/util/ObserverSubscriber<TT;>;"
    .local p1, "observer":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 29
    iput-object p1, p0, Lc8/Zxq;->observer:Lc8/Wlq;

    .line 30
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lc8/Zxq;, "Lrx/internal/util/ObserverSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Zxq;->observer:Lc8/Wlq;

    invoke-interface {v0}, Lc8/Wlq;->onCompleted()V

    .line 45
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    .local p0, "this":Lc8/Zxq;, "Lrx/internal/util/ObserverSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Zxq;->observer:Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    .line 40
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
    .line 34
    .local p0, "this":Lc8/Zxq;, "Lrx/internal/util/ObserverSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Zxq;->observer:Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
