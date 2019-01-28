.class public interface abstract Lc8/Bkq;
.super Ljava/lang/Object;
.source "AsyncEmitter.java"

# interfaces
.implements Lc8/Wlq;


# annotations
.annotation build Lc8/bnq;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/AsyncEmitter$BackpressureMode;,
        Lc8/Akq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Wlq",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract requested()J
.end method

.method public abstract setCancellation(Lc8/Akq;)V
.end method

.method public abstract setSubscription(Lc8/Pmq;)V
.end method
