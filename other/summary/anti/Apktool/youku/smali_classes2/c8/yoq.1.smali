.class public final Lc8/yoq;
.super Ljava/lang/Object;
.source "BlockingOperatorToIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xoq;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toIterator(Lc8/Vlq;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lc8/xoq;

    invoke-direct {v0}, Lc8/xoq;-><init>()V

    .line 52
    .local v0, "subscriber":Lc8/xoq;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    invoke-virtual {p0}, Lc8/Vlq;->materialize()Lc8/Vlq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    .line 53
    return-object v0
.end method
