.class public final Lc8/Bwq;
.super Ljava/lang/Object;
.source "SingleOnSubscribeUsing.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final disposeAction:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<-TResource;>;"
        }
    .end annotation
.end field

.field final disposeEagerly:Z

.field final resourceFactory:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<TResource;>;"
        }
    .end annotation
.end field

.field final singleFactory:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TResource;+",
            "Lc8/Mmq",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Hnq;Lc8/Inq;Lc8/inq;Z)V
    .locals 0
    .param p4, "disposeEagerly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hnq",
            "<TResource;>;",
            "Lc8/Inq",
            "<-TResource;+",
            "Lc8/Mmq",
            "<+TT;>;>;",
            "Lc8/inq",
            "<-TResource;>;Z)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lc8/Bwq;, "Lrx/internal/operators/SingleOnSubscribeUsing<TT;TResource;>;"
    .local p1, "resourceFactory":Lc8/Hnq;, "Lrx/functions/Func0<TResource;>;"
    .local p2, "observableFactory":Lc8/Inq;, "Lrx/functions/Func1<-TResource;+Lrx/Single<+TT;>;>;"
    .local p3, "disposeAction":Lc8/inq;, "Lrx/functions/Action1<-TResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lc8/Bwq;->resourceFactory:Lc8/Hnq;

    .line 42
    iput-object p2, p0, Lc8/Bwq;->singleFactory:Lc8/Inq;

    .line 43
    iput-object p3, p0, Lc8/Bwq;->disposeAction:Lc8/inq;

    .line 44
    iput-boolean p4, p0, Lc8/Bwq;->disposeEagerly:Z

    .line 45
    return-void
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lc8/Bwq;, "Lrx/internal/operators/SingleOnSubscribeUsing<TT;TResource;>;"
    .local p1, "child":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    :try_start_0
    iget-object v4, p0, Lc8/Bwq;->resourceFactory:Lc8/Hnq;

    invoke-interface {v4}, Lc8/Hnq;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    .local v2, "resource":Ljava/lang/Object;, "TResource;"
    :try_start_1
    iget-object v4, p0, Lc8/Bwq;->singleFactory:Lc8/Inq;

    invoke-interface {v4, v2}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Mmq;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .local v3, "single":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    if-nez v3, :cond_0

    .line 69
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "The single"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v4}, Lc8/Bwq;->handleSubscriptionTimeError(Lc8/Nmq;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 107
    .end local v2    # "resource":Ljava/lang/Object;, "TResource;"
    .end local v3    # "single":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 55
    invoke-virtual {p1, v0}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "resource":Ljava/lang/Object;, "TResource;"
    :catch_1
    move-exception v0

    .line 64
    .restart local v0    # "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v2, v0}, Lc8/Bwq;->handleSubscriptionTimeError(Lc8/Nmq;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "single":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    :cond_0
    new-instance v1, Lc8/Awq;

    invoke-direct {v1, p0, v2, p1}, Lc8/Awq;-><init>(Lc8/Bwq;Ljava/lang/Object;Lc8/Nmq;)V

    .line 104
    .local v1, "parent":Lc8/Nmq;, "Lrx/SingleSubscriber<TT;>;"
    invoke-virtual {p1, v1}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 106
    invoke-virtual {v3, v1}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lc8/Bwq;, "Lrx/internal/operators/SingleOnSubscribeUsing<TT;TResource;>;"
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Bwq;->call(Lc8/Nmq;)V

    return-void
.end method

.method handleSubscriptionTimeError(Lc8/Nmq;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p3, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;TResource;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lc8/Bwq;, "Lrx/internal/operators/SingleOnSubscribeUsing<TT;TResource;>;"
    .local p1, "t":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    .local p2, "resource":Ljava/lang/Object;, "TResource;"
    invoke-static {p3}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 112
    iget-boolean v2, p0, Lc8/Bwq;->disposeEagerly:Z

    if-eqz v2, :cond_0

    .line 114
    :try_start_0
    iget-object v2, p0, Lc8/Bwq;->disposeAction:Lc8/inq;

    invoke-interface {v2, p2}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {p1, p3}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    .line 123
    iget-boolean v2, p0, Lc8/Bwq;->disposeEagerly:Z

    if-nez v2, :cond_1

    .line 125
    :try_start_1
    iget-object v2, p0, Lc8/Bwq;->disposeAction:Lc8/inq;

    invoke-interface {v2, p2}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :cond_1
    :goto_1
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "ex2":Ljava/lang/Throwable;
    invoke-static {v1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 117
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .end local p3    # "ex":Ljava/lang/Throwable;
    .local v0, "ex":Ljava/lang/Throwable;
    move-object p3, v0

    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local p3    # "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 126
    .end local v1    # "ex2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 127
    .restart local v1    # "ex2":Ljava/lang/Throwable;
    invoke-static {v1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 128
    invoke-static {v1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
