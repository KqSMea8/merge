.class public final Lc8/Hwq;
.super Ljava/lang/Object;
.source "SingleOperatorZip.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zip([Lc8/Mmq;Lc8/Rnq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Rnq",
            "<+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "singles":[Lc8/Mmq;, "[Lrx/Single<+TT;>;"
    .local p1, "zipper":Lc8/Rnq;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v0, Lc8/Gwq;

    invoke-direct {v0, p0, p1}, Lc8/Gwq;-><init>([Lc8/Mmq;Lc8/Rnq;)V

    invoke-static {v0}, Lc8/Mmq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method
