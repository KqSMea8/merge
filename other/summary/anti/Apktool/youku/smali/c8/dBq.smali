.class public abstract Lc8/dBq;
.super Ljava/lang/Object;
.source "RxJavaSingleExecutionHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lc8/Kmq;)Lc8/Kmq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Kmq",
            "<TT;>;)",
            "Lc8/Kmq",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    .local p1, "f":Lc8/Kmq;, "Lrx/Single$OnSubscribe<TT;>;"
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
    .line 130
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
    .line 111
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
    .line 94
    return-object p1
.end method

.method public onSubscribeStart(Lc8/Mmq;Lc8/Rlq;)Lc8/Rlq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
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
    .line 75
    .local p1, "singleInstance":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    return-object p2
.end method
