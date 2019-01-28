.class public final Lc8/Jvq;
.super Lc8/Omq;
.source "OperatorWindowWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lvq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundarySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final sub:Lc8/Kvq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Kvq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Kvq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Kvq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lc8/Jvq;, "Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber<TT;TU;>;"
    .local p1, "sub":Lc8/Kvq;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 273
    iput-object p1, p0, Lc8/Jvq;->sub:Lc8/Kvq;

    .line 274
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lc8/Jvq;, "Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber<TT;TU;>;"
    iget-object v0, p0, Lc8/Jvq;->sub:Lc8/Kvq;

    invoke-virtual {v0}, Lc8/Kvq;->onCompleted()V

    .line 294
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 288
    .local p0, "this":Lc8/Jvq;, "Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber<TT;TU;>;"
    iget-object v0, p0, Lc8/Jvq;->sub:Lc8/Kvq;

    invoke-virtual {v0, p1}, Lc8/Kvq;->onError(Ljava/lang/Throwable;)V

    .line 289
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lc8/Jvq;, "Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lc8/Jvq;->sub:Lc8/Kvq;

    invoke-virtual {v0}, Lc8/Kvq;->replaceWindow()V

    .line 284
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 278
    .local p0, "this":Lc8/Jvq;, "Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber<TT;TU;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Jvq;->request(J)V

    .line 279
    return-void
.end method
