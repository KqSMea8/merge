.class public final Lc8/toq;
.super Ljava/lang/Object;
.source "BlockingOperatorNext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/soq;,
        Lc8/roq;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static next(Lc8/Vlq;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "items":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lc8/qoq;

    invoke-direct {v0, p0}, Lc8/qoq;-><init>(Lc8/Vlq;)V

    return-object v0
.end method
