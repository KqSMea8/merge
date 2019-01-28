.class public abstract Lc8/Jzq;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation build Lc8/bnq;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Izq;,
        Lc8/Gzq;,
        Lc8/Dzq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    .local p0, "this":Lc8/Jzq;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    return-void
.end method

.method public static createSingleState(Lc8/Hnq;Lc8/knq;)Lc8/Jzq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+TS;>;",
            "Lc8/knq",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;>;)",
            "Lc8/Jzq",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "generator":Lc8/Hnq;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lc8/knq;, "Lrx/functions/Action3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;>;"
    new-instance v0, Lc8/wzq;

    invoke-direct {v0, p1}, Lc8/wzq;-><init>(Lc8/knq;)V

    .line 123
    .local v0, "nextFunc":Lc8/Knq;, "Lrx/functions/Func3<TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;TS;>;"
    new-instance v1, Lc8/Dzq;

    invoke-direct {v1, p0, v0}, Lc8/Dzq;-><init>(Lc8/Hnq;Lc8/Knq;)V

    return-object v1
.end method

.method public static createSingleState(Lc8/Hnq;Lc8/knq;Lc8/inq;)Lc8/Jzq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+TS;>;",
            "Lc8/knq",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;>;",
            "Lc8/inq",
            "<-TS;>;)",
            "Lc8/Jzq",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "generator":Lc8/Hnq;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lc8/knq;, "Lrx/functions/Action3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;>;"
    .local p2, "onUnsubscribe":Lc8/inq;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lc8/xzq;

    invoke-direct {v0, p1}, Lc8/xzq;-><init>(Lc8/knq;)V

    .line 155
    .local v0, "nextFunc":Lc8/Knq;, "Lrx/functions/Func3<TS;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;TS;>;"
    new-instance v1, Lc8/Dzq;

    invoke-direct {v1, p0, v0, p2}, Lc8/Dzq;-><init>(Lc8/Hnq;Lc8/Knq;Lc8/inq;)V

    return-object v1
.end method

.method public static createStateful(Lc8/Hnq;Lc8/Knq;)Lc8/Jzq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+TS;>;",
            "Lc8/Knq",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;+TS;>;)",
            "Lc8/Jzq",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "generator":Lc8/Hnq;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lc8/Knq;, "Lrx/functions/Func3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;+TS;>;"
    new-instance v0, Lc8/Dzq;

    invoke-direct {v0, p0, p1}, Lc8/Dzq;-><init>(Lc8/Hnq;Lc8/Knq;)V

    return-object v0
.end method

.method public static createStateful(Lc8/Hnq;Lc8/Knq;Lc8/inq;)Lc8/Jzq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+TS;>;",
            "Lc8/Knq",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;+TS;>;",
            "Lc8/inq",
            "<-TS;>;)",
            "Lc8/Jzq",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "generator":Lc8/Hnq;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lc8/Knq;, "Lrx/functions/Func3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;+TS;>;"
    .local p2, "onUnsubscribe":Lc8/inq;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lc8/Dzq;

    invoke-direct {v0, p0, p1, p2}, Lc8/Dzq;-><init>(Lc8/Hnq;Lc8/Knq;Lc8/inq;)V

    return-object v0
.end method

.method public static createStateless(Lc8/jnq;)Lc8/Jzq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/jnq",
            "<",
            "Ljava/lang/Long;",
            "-",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;>;)",
            "Lc8/Jzq",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "next":Lc8/jnq;, "Lrx/functions/Action2<Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;>;"
    new-instance v0, Lc8/yzq;

    invoke-direct {v0, p0}, Lc8/yzq;-><init>(Lc8/jnq;)V

    .line 224
    .local v0, "nextFunc":Lc8/Knq;, "Lrx/functions/Func3<Ljava/lang/Void;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;Ljava/lang/Void;>;"
    new-instance v1, Lc8/Dzq;

    invoke-direct {v1, v0}, Lc8/Dzq;-><init>(Lc8/Knq;)V

    return-object v1
.end method

.method public static createStateless(Lc8/jnq;Lc8/hnq;)Lc8/Jzq;
    .locals 3
    .param p1, "onUnsubscribe"    # Lc8/hnq;
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/jnq",
            "<",
            "Ljava/lang/Long;",
            "-",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;>;",
            "Lc8/hnq;",
            ")",
            "Lc8/Jzq",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "next":Lc8/jnq;, "Lrx/functions/Action2<Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;>;"
    new-instance v0, Lc8/zzq;

    invoke-direct {v0, p0}, Lc8/zzq;-><init>(Lc8/jnq;)V

    .line 253
    .local v0, "nextFunc":Lc8/Knq;, "Lrx/functions/Func3<Ljava/lang/Void;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;Ljava/lang/Void;>;"
    new-instance v1, Lc8/Azq;

    invoke-direct {v1, p1}, Lc8/Azq;-><init>(Lc8/hnq;)V

    .line 258
    .local v1, "wrappedOnUnsubscribe":Lc8/inq;, "Lrx/functions/Action1<-Ljava/lang/Void;>;"
    new-instance v2, Lc8/Dzq;

    invoke-direct {v2, v0, v1}, Lc8/Dzq;-><init>(Lc8/Knq;Lc8/inq;)V

    return-object v2
.end method


# virtual methods
.method public final call(Lc8/Omq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lc8/Jzq;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    .local p1, "actualSubscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lc8/Jzq;->generateState()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 322
    .local v3, "state":Ljava/lang/Object;, "TS;"
    invoke-static {}, Lc8/Izq;->create()Lc8/Izq;

    move-result-object v4

    .line 324
    .local v4, "subject":Lc8/Izq;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<Lrx/Observable<TT;>;>;"
    new-instance v2, Lc8/Gzq;

    invoke-direct {v2, p0, v3, v4}, Lc8/Gzq;-><init>(Lc8/Jzq;Ljava/lang/Object;Lc8/Izq;)V

    .line 326
    .local v2, "outerProducer":Lc8/Gzq;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    new-instance v0, Lc8/Bzq;

    invoke-direct {v0, p0, p1, v2}, Lc8/Bzq;-><init>(Lc8/Jzq;Lc8/Omq;Lc8/Gzq;)V

    .line 348
    .local v0, "concatSubscriber":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {v4}, Lc8/Izq;->onBackpressureBuffer()Lc8/Vlq;

    move-result-object v5

    new-instance v6, Lc8/Czq;

    invoke-direct {v6, p0}, Lc8/Czq;-><init>(Lc8/Jzq;)V

    invoke-virtual {v5, v6}, Lc8/Vlq;->concatMap(Lc8/Inq;)Lc8/Vlq;

    move-result-object v5

    invoke-virtual {v5, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 355
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 356
    invoke-virtual {p1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 357
    invoke-virtual {p1, v2}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 359
    .end local v0    # "concatSubscriber":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    .end local v2    # "outerProducer":Lc8/Gzq;, "Lrx/observables/AsyncOnSubscribe$AsyncOuterManager<TS;TT;>;"
    .end local v3    # "state":Ljava/lang/Object;, "TS;"
    .end local v4    # "subject":Lc8/Izq;, "Lrx/observables/AsyncOnSubscribe$UnicastSubject<Lrx/Observable<TT;>;>;"
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p1, v1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    .local p0, "this":Lc8/Jzq;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Jzq;->call(Lc8/Omq;)V

    return-void
.end method

.method protected abstract generateState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method protected abstract next(Ljava/lang/Object;JLc8/Wlq;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;)TS;"
        }
    .end annotation
.end method

.method protected onUnsubscribe(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lc8/Jzq;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    return-void
.end method
