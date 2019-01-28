.class public abstract Lc8/Nmq;
.super Ljava/lang/Object;
.source "SingleSubscriber.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation build Lc8/anq;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Pmq;"
    }
.end annotation


# instance fields
.field private final cs:Lc8/wyq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lc8/Nmq;, "Lrx/SingleSubscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lc8/wyq;

    invoke-direct {v0}, Lc8/wyq;-><init>()V

    iput-object v0, p0, Lc8/Nmq;->cs:Lc8/wyq;

    return-void
.end method


# virtual methods
.method public final add(Lc8/Pmq;)V
    .locals 1
    .param p1, "s"    # Lc8/Pmq;

    .prologue
    .line 69
    .local p0, "this":Lc8/Nmq;, "Lrx/SingleSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Nmq;->cs:Lc8/wyq;

    invoke-virtual {v0, p1}, Lc8/wyq;->add(Lc8/Pmq;)V

    .line 70
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lc8/Nmq;, "Lrx/SingleSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Nmq;->cs:Lc8/wyq;

    invoke-virtual {v0}, Lc8/wyq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lc8/Nmq;, "Lrx/SingleSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Nmq;->cs:Lc8/wyq;

    invoke-virtual {v0}, Lc8/wyq;->unsubscribe()V

    .line 75
    return-void
.end method
