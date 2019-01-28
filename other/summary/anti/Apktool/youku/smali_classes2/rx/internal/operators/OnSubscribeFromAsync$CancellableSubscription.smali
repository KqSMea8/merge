.class public final Lrx/internal/operators/OnSubscribeFromAsync$CancellableSubscription;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OnSubscribeFromAsync.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancellableSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lc8/Akq;",
        ">;",
        "Lc8/Pmq;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f5c453163a88dc2L


# direct methods
.method public constructor <init>(Lc8/Akq;)V
    .locals 0
    .param p1, "cancellable"    # Lc8/Akq;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 84
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$CancellableSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$CancellableSubscription;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lrx/internal/operators/OnSubscribeFromAsync$CancellableSubscription;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Akq;

    .line 95
    .local v0, "c":Lc8/Akq;
    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    invoke-interface {v0}, Lc8/Akq;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "c":Lc8/Akq;
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v0    # "c":Lc8/Akq;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 100
    invoke-static {v1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
