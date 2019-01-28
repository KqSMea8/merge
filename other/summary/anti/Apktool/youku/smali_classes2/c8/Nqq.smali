.class public final Lc8/Nqq;
.super Ljava/lang/Object;
.source "OnSubscribeThrow.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    .local p0, "this":Lc8/Nqq;, "Lrx/internal/operators/OnSubscribeThrow<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lc8/Nqq;->exception:Ljava/lang/Throwable;

    .line 34
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lc8/Nqq;, "Lrx/internal/operators/OnSubscribeThrow<TT;>;"
    .local p1, "observer":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lc8/Nqq;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lc8/Nqq;, "Lrx/internal/operators/OnSubscribeThrow<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Nqq;->call(Lc8/Omq;)V

    return-void
.end method
