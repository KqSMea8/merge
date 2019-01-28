.class public abstract Lc8/XAq;
.super Ljava/lang/Object;
.source "RxJavaObservableExecutionHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lc8/Rlq;)Lc8/Rlq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Rlq",
            "<TT;>;)",
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    .local p1, "f":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    return-object p1
.end method

.method public onLift(Lc8/Tlq;)Lc8/Tlq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Tlq",
            "<+TR;-TT;>;)",
            "Lc8/Tlq",
            "<+TR;-TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    .local p1, "lift":Lc8/Tlq;, "Lrx/Observable$Operator<+TR;-TT;>;"
    return-object p1
.end method

.method public onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    return-object p1
.end method

.method public onSubscribeReturn(Lc8/Pmq;)Lc8/Pmq;
    .locals 0
    .param p1, "subscription"    # Lc8/Pmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Pmq;",
            ")",
            "Lc8/Pmq;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    return-object p1
.end method

.method public onSubscribeStart(Lc8/Vlq;Lc8/Rlq;)Lc8/Rlq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Rlq",
            "<TT;>;)",
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    .local p1, "observableInstance":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    return-object p2
.end method
