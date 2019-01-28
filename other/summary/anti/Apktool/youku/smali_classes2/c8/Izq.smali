.class public final Lc8/Izq;
.super Lc8/Vlq;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lc8/Wlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnicastSubject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Hzq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vlq",
        "<TT;>;",
        "Lc8/Wlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final state:Lc8/Hzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hzq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lc8/Hzq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hzq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "this":Lc8/Izq;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<TT;>;"
    .local p1, "state":Lc8/Hzq;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State<TT;>;"
    invoke-direct {p0, p1}, Lc8/Vlq;-><init>(Lc8/Rlq;)V

    .line 644
    iput-object p1, p0, Lc8/Izq;->state:Lc8/Hzq;

    .line 645
    return-void
.end method

.method public static create()Lc8/Izq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Izq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 639
    new-instance v0, Lc8/Izq;

    new-instance v1, Lc8/Hzq;

    invoke-direct {v1}, Lc8/Hzq;-><init>()V

    invoke-direct {v0, v1}, Lc8/Izq;-><init>(Lc8/Hzq;)V

    return-object v0
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 649
    .local p0, "this":Lc8/Izq;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<TT;>;"
    iget-object v0, p0, Lc8/Izq;->state:Lc8/Hzq;

    iget-object v0, v0, Lc8/Hzq;->subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 650
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 654
    .local p0, "this":Lc8/Izq;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<TT;>;"
    iget-object v0, p0, Lc8/Izq;->state:Lc8/Hzq;

    iget-object v0, v0, Lc8/Hzq;->subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 655
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
    .line 659
    .local p0, "this":Lc8/Izq;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Izq;->state:Lc8/Hzq;

    iget-object v0, v0, Lc8/Hzq;->subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 660
    return-void
.end method
