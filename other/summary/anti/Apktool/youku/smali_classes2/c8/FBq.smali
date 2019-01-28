.class public Lc8/FBq;
.super Lc8/GBq;
.source "SerializedSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/GBq",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field private final actual:Lc8/GBq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/GBq",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field private final observer:Lc8/pAq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/pAq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/GBq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/GBq",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/FBq;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    .local p1, "actual":Lc8/GBq;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Lc8/EBq;

    invoke-direct {v0, p1}, Lc8/EBq;-><init>(Lc8/GBq;)V

    invoke-direct {p0, v0}, Lc8/GBq;-><init>(Lc8/Rlq;)V

    .line 51
    iput-object p1, p0, Lc8/FBq;->actual:Lc8/GBq;

    .line 52
    new-instance v0, Lc8/pAq;

    invoke-direct {v0, p1}, Lc8/pAq;-><init>(Lc8/Wlq;)V

    iput-object v0, p0, Lc8/FBq;->observer:Lc8/pAq;

    .line 53
    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lc8/FBq;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lc8/FBq;->actual:Lc8/GBq;

    invoke-virtual {v0}, Lc8/GBq;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lc8/FBq;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lc8/FBq;->observer:Lc8/pAq;

    invoke-virtual {v0}, Lc8/pAq;->onCompleted()V

    .line 58
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lc8/FBq;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lc8/FBq;->observer:Lc8/pAq;

    invoke-virtual {v0, p1}, Lc8/pAq;->onError(Ljava/lang/Throwable;)V

    .line 63
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
    .line 67
    .local p0, "this":Lc8/FBq;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/FBq;->observer:Lc8/pAq;

    invoke-virtual {v0, p1}, Lc8/pAq;->onNext(Ljava/lang/Object;)V

    .line 68
    return-void
.end method
