.class public final Lc8/Xrq;
.super Ljava/lang/Object;
.source "OperatorDoAfterTerminate.java"

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
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final action:Lc8/hnq;


# direct methods
.method public constructor <init>(Lc8/hnq;)V
    .locals 2
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 37
    .local p0, "this":Lc8/Xrq;, "Lrx/internal/operators/OperatorDoAfterTerminate<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Action can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lc8/Xrq;->action:Lc8/hnq;

    .line 42
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 1
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
    .line 46
    .local p0, "this":Lc8/Xrq;, "Lrx/internal/operators/OperatorDoAfterTerminate<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Wrq;

    invoke-direct {v0, p0, p1, p1}, Lc8/Wrq;-><init>(Lc8/Xrq;Lc8/Omq;Lc8/Omq;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lc8/Xrq;, "Lrx/internal/operators/OperatorDoAfterTerminate<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Xrq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
