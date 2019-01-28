.class public final Lc8/Mvq;
.super Lc8/Omq;
.source "OperatorWindowWithObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ovq;
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
.field done:Z

.field final sub:Lc8/Nvq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Nvq",
            "<TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Nvq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nvq",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lc8/Mvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    .local p1, "sub":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 293
    iput-object p1, p0, Lc8/Mvq;->sub:Lc8/Nvq;

    .line 294
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 316
    .local p0, "this":Lc8/Mvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    iget-boolean v0, p0, Lc8/Mvq;->done:Z

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Mvq;->done:Z

    .line 318
    iget-object v0, p0, Lc8/Mvq;->sub:Lc8/Nvq;

    invoke-virtual {v0}, Lc8/Nvq;->onCompleted()V

    .line 320
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 311
    .local p0, "this":Lc8/Mvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    iget-object v0, p0, Lc8/Mvq;->sub:Lc8/Nvq;

    invoke-virtual {v0, p1}, Lc8/Nvq;->onError(Ljava/lang/Throwable;)V

    .line 312
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
    .line 303
    .local p0, "this":Lc8/Mvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-boolean v0, p0, Lc8/Mvq;->done:Z

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Mvq;->done:Z

    .line 305
    iget-object v0, p0, Lc8/Mvq;->sub:Lc8/Nvq;

    invoke-virtual {v0}, Lc8/Nvq;->replaceWindow()V

    .line 307
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 298
    .local p0, "this":Lc8/Mvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Mvq;->request(J)V

    .line 299
    return-void
.end method
