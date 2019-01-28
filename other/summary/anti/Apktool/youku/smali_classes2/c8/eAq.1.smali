.class public abstract Lc8/eAq;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation build Lc8/anq;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/SyncOnSubscribe$SubscriptionProducer;,
        Lc8/dAq;
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
    .line 43
    .local p0, "this":Lc8/eAq;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    return-void
.end method

.method public static createSingleState(Lc8/Hnq;Lc8/jnq;)Lc8/eAq;
    .locals 2
    .annotation build Lc8/anq;
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
            "Lc8/jnq",
            "<-TS;-",
            "Lc8/Wlq",
            "<-TT;>;>;)",
            "Lc8/eAq",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "generator":Lc8/Hnq;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lc8/jnq;, "Lrx/functions/Action2<-TS;-Lrx/Observer<-TT;>;>;"
    new-instance v0, Lc8/Yzq;

    invoke-direct {v0, p1}, Lc8/Yzq;-><init>(Lc8/jnq;)V

    .line 134
    .local v0, "nextFunc":Lc8/Jnq;, "Lrx/functions/Func2<TS;-Lrx/Observer<-TT;>;TS;>;"
    new-instance v1, Lc8/dAq;

    invoke-direct {v1, p0, v0}, Lc8/dAq;-><init>(Lc8/Hnq;Lc8/Jnq;)V

    return-object v1
.end method

.method public static createSingleState(Lc8/Hnq;Lc8/jnq;Lc8/inq;)Lc8/eAq;
    .locals 2
    .annotation build Lc8/anq;
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
            "Lc8/jnq",
            "<-TS;-",
            "Lc8/Wlq",
            "<-TT;>;>;",
            "Lc8/inq",
            "<-TS;>;)",
            "Lc8/eAq",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "generator":Lc8/Hnq;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lc8/jnq;, "Lrx/functions/Action2<-TS;-Lrx/Observer<-TT;>;>;"
    .local p2, "onUnsubscribe":Lc8/inq;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lc8/Zzq;

    invoke-direct {v0, p1}, Lc8/Zzq;-><init>(Lc8/jnq;)V

    .line 166
    .local v0, "nextFunc":Lc8/Jnq;, "Lrx/functions/Func2<TS;Lrx/Observer<-TT;>;TS;>;"
    new-instance v1, Lc8/dAq;

    invoke-direct {v1, p0, v0, p2}, Lc8/dAq;-><init>(Lc8/Hnq;Lc8/Jnq;Lc8/inq;)V

    return-object v1
.end method

.method public static createStateful(Lc8/Hnq;Lc8/Jnq;)Lc8/eAq;
    .locals 1
    .annotation build Lc8/anq;
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
            "Lc8/Jnq",
            "<-TS;-",
            "Lc8/Wlq",
            "<-TT;>;+TS;>;)",
            "Lc8/eAq",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "generator":Lc8/Hnq;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lc8/Jnq;, "Lrx/functions/Func2<-TS;-Lrx/Observer<-TT;>;+TS;>;"
    new-instance v0, Lc8/dAq;

    invoke-direct {v0, p0, p1}, Lc8/dAq;-><init>(Lc8/Hnq;Lc8/Jnq;)V

    return-object v0
.end method

.method public static createStateful(Lc8/Hnq;Lc8/Jnq;Lc8/inq;)Lc8/eAq;
    .locals 1
    .annotation build Lc8/anq;
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
            "Lc8/Jnq",
            "<-TS;-",
            "Lc8/Wlq",
            "<-TT;>;+TS;>;",
            "Lc8/inq",
            "<-TS;>;)",
            "Lc8/eAq",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "generator":Lc8/Hnq;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lc8/Jnq;, "Lrx/functions/Func2<-TS;-Lrx/Observer<-TT;>;+TS;>;"
    .local p2, "onUnsubscribe":Lc8/inq;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lc8/dAq;

    invoke-direct {v0, p0, p1, p2}, Lc8/dAq;-><init>(Lc8/Hnq;Lc8/Jnq;Lc8/inq;)V

    return-object v0
.end method

.method public static createStateless(Lc8/inq;)Lc8/eAq;
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/inq",
            "<-",
            "Lc8/Wlq",
            "<-TT;>;>;)",
            "Lc8/eAq",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "next":Lc8/inq;, "Lrx/functions/Action1<-Lrx/Observer<-TT;>;>;"
    new-instance v0, Lc8/aAq;

    invoke-direct {v0, p0}, Lc8/aAq;-><init>(Lc8/inq;)V

    .line 235
    .local v0, "nextFunc":Lc8/Jnq;, "Lrx/functions/Func2<Ljava/lang/Void;Lrx/Observer<-TT;>;Ljava/lang/Void;>;"
    new-instance v1, Lc8/dAq;

    invoke-direct {v1, v0}, Lc8/dAq;-><init>(Lc8/Jnq;)V

    return-object v1
.end method

.method public static createStateless(Lc8/inq;Lc8/hnq;)Lc8/eAq;
    .locals 3
    .param p1, "onUnsubscribe"    # Lc8/hnq;
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/inq",
            "<-",
            "Lc8/Wlq",
            "<-TT;>;>;",
            "Lc8/hnq;",
            ")",
            "Lc8/eAq",
            "<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "next":Lc8/inq;, "Lrx/functions/Action1<-Lrx/Observer<-TT;>;>;"
    new-instance v0, Lc8/bAq;

    invoke-direct {v0, p0}, Lc8/bAq;-><init>(Lc8/inq;)V

    .line 264
    .local v0, "nextFunc":Lc8/Jnq;, "Lrx/functions/Func2<Ljava/lang/Void;Lrx/Observer<-TT;>;Ljava/lang/Void;>;"
    new-instance v1, Lc8/cAq;

    invoke-direct {v1, p1}, Lc8/cAq;-><init>(Lc8/hnq;)V

    .line 269
    .local v1, "wrappedOnUnsubscribe":Lc8/inq;, "Lrx/functions/Action1<-Ljava/lang/Void;>;"
    new-instance v2, Lc8/dAq;

    invoke-direct {v2, v0, v1}, Lc8/dAq;-><init>(Lc8/Jnq;Lc8/inq;)V

    return-object v2
.end method


# virtual methods
.method public final call(Lc8/Omq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lc8/eAq;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lc8/eAq;->generateState()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    .local v2, "state":Ljava/lang/Object;, "TS;"
    new-instance v1, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;

    invoke-direct {v1, p1, p0, v2}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;-><init>(Lc8/Omq;Lc8/eAq;Ljava/lang/Object;)V

    .line 61
    .local v1, "p":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 62
    invoke-virtual {p1, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 63
    .end local v1    # "p":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .end local v2    # "state":Ljava/lang/Object;, "TS;"
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {p1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    .local p0, "this":Lc8/eAq;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/eAq;->call(Lc8/Omq;)V

    return-void
.end method

.method protected abstract generateState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract next(Ljava/lang/Object;Lc8/Wlq;)Ljava/lang/Object;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lc8/Wlq",
            "<-TT;>;)TS;"
        }
    .end annotation
.end method

.method public onUnsubscribe(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lc8/eAq;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    return-void
.end method
