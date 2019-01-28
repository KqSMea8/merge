.class public final Lc8/Hzq;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Izq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field subscriber:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 662
    .local p0, "this":Lc8/Hzq;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lc8/Hzq;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State<TT;>;"
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    monitor-enter p0

    .line 667
    :try_start_0
    iget-object v0, p0, Lc8/Hzq;->subscriber:Lc8/Omq;

    if-nez v0, :cond_0

    .line 668
    iput-object p1, p0, Lc8/Hzq;->subscriber:Lc8/Omq;

    .line 669
    monitor-exit p0

    .line 673
    :goto_0
    return-void

    .line 671
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There can be only one subscriber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 671
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 662
    .local p0, "this":Lc8/Hzq;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject$State<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Hzq;->call(Lc8/Omq;)V

    return-void
.end method
