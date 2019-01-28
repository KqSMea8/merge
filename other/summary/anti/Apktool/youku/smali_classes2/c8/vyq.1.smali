.class public final Lc8/vyq;
.super Lc8/Mmq;
.source "ScalarSynchronousSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/uyq;,
        Lc8/tyq;,
        Lc8/syq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Mmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lc8/vyq;, "Lrx/internal/util/ScalarSynchronousSingle<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lc8/pyq;

    invoke-direct {v0, p1}, Lc8/pyq;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lc8/Mmq;-><init>(Lc8/Kmq;)V

    .line 44
    iput-object p1, p0, Lc8/vyq;->value:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lc8/vyq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lc8/vyq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lc8/vyq;

    invoke-direct {v0, p0}, Lc8/vyq;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lc8/vyq;, "Lrx/internal/util/ScalarSynchronousSingle<TT;>;"
    iget-object v0, p0, Lc8/vyq;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public scalarFlatMap(Lc8/Inq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Mmq",
            "<+TR;>;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lc8/vyq;, "Lrx/internal/util/ScalarSynchronousSingle<TT;>;"
    .local p1, "func":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Single<+TR;>;>;"
    new-instance v0, Lc8/ryq;

    invoke-direct {v0, p0, p1}, Lc8/ryq;-><init>(Lc8/vyq;Lc8/Inq;)V

    invoke-static {v0}, Lc8/vyq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public scalarScheduleOn(Lc8/amq;)Lc8/Mmq;
    .locals 3
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lc8/vyq;, "Lrx/internal/util/ScalarSynchronousSingle<TT;>;"
    instance-of v1, p1, Lc8/Ywq;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 60
    check-cast v0, Lc8/Ywq;

    .line 61
    .local v0, "es":Lc8/Ywq;
    new-instance v1, Lc8/syq;

    iget-object v2, p0, Lc8/vyq;->value:Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lc8/syq;-><init>(Lc8/Ywq;Ljava/lang/Object;)V

    invoke-static {v1}, Lc8/vyq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v1

    .line 63
    .end local v0    # "es":Lc8/Ywq;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lc8/tyq;

    iget-object v2, p0, Lc8/vyq;->value:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lc8/tyq;-><init>(Lc8/amq;Ljava/lang/Object;)V

    invoke-static {v1}, Lc8/vyq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v1

    goto :goto_0
.end method
