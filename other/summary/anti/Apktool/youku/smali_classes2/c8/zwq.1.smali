.class public final Lc8/zwq;
.super Ljava/lang/Object;
.source "SingleOnSubscribeMap.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ywq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final source:Lc8/Mmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final transformer:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Mmq;Lc8/Inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mmq",
            "<TT;>;",
            "Lc8/Inq",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lc8/zwq;, "Lrx/internal/operators/SingleOnSubscribeMap<TT;TR;>;"
    .local p1, "source":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p2, "transformer":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lc8/zwq;->source:Lc8/Mmq;

    .line 38
    iput-object p2, p0, Lc8/zwq;->transformer:Lc8/Inq;

    .line 39
    return-void
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/zwq;, "Lrx/internal/operators/SingleOnSubscribeMap<TT;TR;>;"
    .local p1, "o":Lc8/Nmq;, "Lrx/SingleSubscriber<-TR;>;"
    new-instance v0, Lc8/ywq;

    iget-object v1, p0, Lc8/zwq;->transformer:Lc8/Inq;

    invoke-direct {v0, p1, v1}, Lc8/ywq;-><init>(Lc8/Nmq;Lc8/Inq;)V

    .line 44
    .local v0, "parent":Lc8/ywq;, "Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber<TT;TR;>;"
    invoke-virtual {p1, v0}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 45
    iget-object v1, p0, Lc8/zwq;->source:Lc8/Mmq;

    invoke-virtual {v1, v0}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    .line 46
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lc8/zwq;, "Lrx/internal/operators/SingleOnSubscribeMap<TT;TR;>;"
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/zwq;->call(Lc8/Nmq;)V

    return-void
.end method
