.class public final Lc8/Huq;
.super Ljava/lang/Object;
.source "OperatorTakeLast.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Guq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final count:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 36
    .local p0, "this":Lc8/Huq;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-gez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "count cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput p1, p0, Lc8/Huq;->count:I

    .line 41
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lc8/Huq;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Guq;

    iget v1, p0, Lc8/Huq;->count:I

    invoke-direct {v0, p1, v1}, Lc8/Guq;-><init>(Lc8/Omq;I)V

    .line 47
    .local v0, "parent":Lc8/Guq;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 48
    new-instance v1, Lc8/Fuq;

    invoke-direct {v1, p0, v0}, Lc8/Fuq;-><init>(Lc8/Huq;Lc8/Guq;)V

    invoke-virtual {p1, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 55
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lc8/Huq;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Huq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
