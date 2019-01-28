.class public final Lc8/Zuq;
.super Ljava/lang/Object;
.source "OperatorTimeInterval.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<",
        "Lc8/oBq",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lc8/amq;


# direct methods
.method public constructor <init>(Lc8/amq;)V
    .locals 0
    .param p1, "scheduler"    # Lc8/amq;

    .prologue
    .line 30
    .local p0, "this":Lc8/Zuq;, "Lrx/internal/operators/OperatorTimeInterval<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lc8/Zuq;->scheduler:Lc8/amq;

    .line 32
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/oBq",
            "<TT;>;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lc8/Zuq;, "Lrx/internal/operators/OperatorTimeInterval<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-Lrx/schedulers/TimeInterval<TT;>;>;"
    new-instance v0, Lc8/Yuq;

    invoke-direct {v0, p0, p1, p1}, Lc8/Yuq;-><init>(Lc8/Zuq;Lc8/Omq;Lc8/Omq;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lc8/Zuq;, "Lrx/internal/operators/OperatorTimeInterval<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Zuq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
