.class public final Lc8/Mqq;
.super Ljava/lang/Object;
.source "OnSubscribeTakeLastOne.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Lqq;
    }
.end annotation

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
.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lc8/Mqq;, "Lrx/internal/operators/OnSubscribeTakeLastOne<TT;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lc8/Mqq;->source:Lc8/Vlq;

    .line 28
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lc8/Mqq;, "Lrx/internal/operators/OnSubscribeTakeLastOne<TT;>;"
    .local p1, "t":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Lqq;

    invoke-direct {v0, p1}, Lc8/Lqq;-><init>(Lc8/Omq;)V

    iget-object v1, p0, Lc8/Mqq;->source:Lc8/Vlq;

    invoke-virtual {v0, v1}, Lc8/Lqq;->subscribeTo(Lc8/Vlq;)V

    .line 33
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lc8/Mqq;, "Lrx/internal/operators/OnSubscribeTakeLastOne<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Mqq;->call(Lc8/Omq;)V

    return-void
.end method
