.class public final Lc8/PBq;
.super Lc8/GBq;
.source "UnicastSubject.java"


# annotations
.annotation build Lc8/bnq;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/UnicastSubject$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/GBq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final state:Lrx/subjects/UnicastSubject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/UnicastSubject$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/subjects/UnicastSubject$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/UnicastSubject$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lc8/PBq;, "Lrx/subjects/UnicastSubject<TT;>;"
    .local p1, "state":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    invoke-direct {p0, p1}, Lc8/GBq;-><init>(Lc8/Rlq;)V

    .line 87
    iput-object p1, p0, Lc8/PBq;->state:Lrx/subjects/UnicastSubject$State;

    .line 88
    return-void
.end method

.method public static create()Lc8/PBq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/PBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    const/16 v0, 0x10

    invoke-static {v0}, Lc8/PBq;->create(I)Lc8/PBq;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lc8/PBq;
    .locals 2
    .param p0, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lc8/PBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lrx/subjects/UnicastSubject$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrx/subjects/UnicastSubject$State;-><init>(ILc8/hnq;)V

    .line 63
    .local v0, "state":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    new-instance v1, Lc8/PBq;

    invoke-direct {v1, v0}, Lc8/PBq;-><init>(Lrx/subjects/UnicastSubject$State;)V

    return-object v1
.end method

.method public static create(ILc8/hnq;)Lc8/PBq;
    .locals 2
    .param p0, "capacityHint"    # I
    .param p1, "onTerminated"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lc8/hnq;",
            ")",
            "Lc8/PBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lrx/subjects/UnicastSubject$State;

    invoke-direct {v0, p0, p1}, Lrx/subjects/UnicastSubject$State;-><init>(ILc8/hnq;)V

    .line 82
    .local v0, "state":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    new-instance v1, Lc8/PBq;

    invoke-direct {v1, v0}, Lc8/PBq;-><init>(Lrx/subjects/UnicastSubject$State;)V

    return-object v1
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lc8/PBq;, "Lrx/subjects/UnicastSubject<TT;>;"
    iget-object v0, p0, Lc8/PBq;->state:Lrx/subjects/UnicastSubject$State;

    iget-object v0, v0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lc8/PBq;, "Lrx/subjects/UnicastSubject<TT;>;"
    iget-object v0, p0, Lc8/PBq;->state:Lrx/subjects/UnicastSubject$State;

    invoke-virtual {v0}, Lrx/subjects/UnicastSubject$State;->onCompleted()V

    .line 103
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    .local p0, "this":Lc8/PBq;, "Lrx/subjects/UnicastSubject<TT;>;"
    iget-object v0, p0, Lc8/PBq;->state:Lrx/subjects/UnicastSubject$State;

    invoke-virtual {v0, p1}, Lrx/subjects/UnicastSubject$State;->onError(Ljava/lang/Throwable;)V

    .line 98
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
    .line 92
    .local p0, "this":Lc8/PBq;, "Lrx/subjects/UnicastSubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/PBq;->state:Lrx/subjects/UnicastSubject$State;

    invoke-virtual {v0, p1}, Lrx/subjects/UnicastSubject$State;->onNext(Ljava/lang/Object;)V

    .line 93
    return-void
.end method
