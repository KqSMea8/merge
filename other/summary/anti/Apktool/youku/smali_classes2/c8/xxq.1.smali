.class public final Lc8/xxq;
.super Lc8/Omq;
.source "ActionSubscriber.java"


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
.field final onCompleted:Lc8/hnq;

.field final onError:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/inq;Lc8/inq;Lc8/hnq;)V
    .locals 0
    .param p3, "onCompleted"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;",
            "Lc8/inq",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lc8/hnq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lc8/xxq;, "Lrx/internal/util/ActionSubscriber<TT;>;"
    .local p1, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 32
    iput-object p1, p0, Lc8/xxq;->onNext:Lc8/inq;

    .line 33
    iput-object p2, p0, Lc8/xxq;->onError:Lc8/inq;

    .line 34
    iput-object p3, p0, Lc8/xxq;->onCompleted:Lc8/hnq;

    .line 35
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lc8/xxq;, "Lrx/internal/util/ActionSubscriber<TT;>;"
    iget-object v0, p0, Lc8/xxq;->onCompleted:Lc8/hnq;

    invoke-interface {v0}, Lc8/hnq;->call()V

    .line 50
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    .local p0, "this":Lc8/xxq;, "Lrx/internal/util/ActionSubscriber<TT;>;"
    iget-object v0, p0, Lc8/xxq;->onError:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 45
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
    .line 39
    .local p0, "this":Lc8/xxq;, "Lrx/internal/util/ActionSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/xxq;->onNext:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 40
    return-void
.end method
