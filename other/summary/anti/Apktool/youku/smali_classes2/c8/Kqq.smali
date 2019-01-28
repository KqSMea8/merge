.class public Lc8/Kqq;
.super Ljava/lang/Object;
.source "OnSubscribeSingle.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final observable:Lc8/Vlq;
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
    .line 31
    .local p0, "this":Lc8/Kqq;, "Lrx/internal/operators/OnSubscribeSingle<TT;>;"
    .local p1, "observable":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lc8/Kqq;->observable:Lc8/Vlq;

    .line 33
    return-void
.end method

.method public static create(Lc8/Vlq;)Lc8/Kqq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Kqq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "observable":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Kqq;

    invoke-direct {v0, p0}, Lc8/Kqq;-><init>(Lc8/Vlq;)V

    return-object v0
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lc8/Kqq;, "Lrx/internal/operators/OnSubscribeSingle<TT;>;"
    .local p1, "child":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lc8/Jqq;

    invoke-direct {v0, p0, p1}, Lc8/Jqq;-><init>(Lc8/Kqq;Lc8/Nmq;)V

    .line 80
    .local v0, "parent":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 81
    iget-object v1, p0, Lc8/Kqq;->observable:Lc8/Vlq;

    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 82
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lc8/Kqq;, "Lrx/internal/operators/OnSubscribeSingle<TT;>;"
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Kqq;->call(Lc8/Nmq;)V

    return-void
.end method
