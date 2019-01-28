.class public final Lc8/Vqq;
.super Ljava/lang/Object;
.source "OnSubscribeUsing.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeUsing$DisposeAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final dispose:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<-TResource;>;"
        }
    .end annotation
.end field

.field private final disposeEagerly:Z

.field private final observableFactory:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TResource;+",
            "Lc8/Vlq",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private final resourceFactory:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<TResource;>;"
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
            "Lc8/Vlq",
            "<+TT;>;>;",
            "Lc8/inq",
            "<-TResource;>;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lc8/Vqq;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    .local p1, "resourceFactory":Lc8/Hnq;, "Lrx/functions/Func0<TResource;>;"
    .local p2, "observableFactory":Lc8/Inq;, "Lrx/functions/Func1<-TResource;+Lrx/Observable<+TT;>;>;"
    .local p3, "dispose":Lc8/inq;, "Lrx/functions/Action1<-TResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lc8/Vqq;->resourceFactory:Lc8/Hnq;

    .line 43
    iput-object p2, p0, Lc8/Vqq;->observableFactory:Lc8/Inq;

    .line 44
    iput-object p3, p0, Lc8/Vqq;->dispose:Lc8/inq;

    .line 45
    iput-boolean p4, p0, Lc8/Vqq;->disposeEagerly:Z

    .line 46
    return-void
.end method

.method private dispose(Lc8/hnq;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "disposeOnceOnly"    # Lc8/hnq;

    .prologue
    .line 114
    .local p0, "this":Lc8/Vqq;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    :try_start_0
    invoke-interface {p1}, Lc8/hnq;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lc8/Vqq;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v6, p0, Lc8/Vqq;->resourceFactory:Lc8/Hnq;

    invoke-interface {v6}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v4

    .line 56
    .local v4, "resource":Ljava/lang/Object;, "TResource;"
    new-instance v1, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;

    iget-object v6, p0, Lc8/Vqq;->dispose:Lc8/inq;

    invoke-direct {v1, v6, v4}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;-><init>(Lc8/inq;Ljava/lang/Object;)V

    .line 59
    .local v1, "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :try_start_1
    iget-object v6, p0, Lc8/Vqq;->observableFactory:Lc8/Inq;

    invoke-interface {v6, v4}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Vlq;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .local v5, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    :try_start_2
    iget-boolean v6, p0, Lc8/Vqq;->disposeEagerly:Z

    if-eqz v6, :cond_1

    .line 83
    invoke-virtual {v5, v1}, Lc8/Vlq;->doOnTerminate(Lc8/hnq;)Lc8/Vlq;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 94
    .local v3, "observable":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    :goto_0
    :try_start_3
    invoke-static {p1}, Lc8/wAq;->wrap(Lc8/Omq;)Lc8/Omq;

    move-result-object v6

    invoke-virtual {v3, v6}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 110
    .end local v1    # "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .end local v3    # "observable":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .end local v4    # "resource":Ljava/lang/Object;, "TResource;"
    .end local v5    # "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    :goto_1
    return-void

    .line 67
    .restart local v1    # "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .restart local v4    # "resource":Ljava/lang/Object;, "TResource;"
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-direct {p0, v1}, Lc8/Vqq;->dispose(Lc8/hnq;)Ljava/lang/Throwable;

    move-result-object v0

    .line 69
    .local v0, "disposeError":Ljava/lang/Throwable;
    invoke-static {v2}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 70
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 71
    if-eqz v0, :cond_0

    .line 72
    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Throwable;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-direct {v6, v7}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p1, v6}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 106
    .end local v0    # "disposeError":Ljava/lang/Throwable;
    .end local v1    # "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "resource":Ljava/lang/Object;, "TResource;"
    :catch_1
    move-exception v2

    .line 108
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-static {v2, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_1

    .line 75
    .restart local v0    # "disposeError":Ljava/lang/Throwable;
    .restart local v1    # "disposeOnceOnly":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .restart local v4    # "resource":Ljava/lang/Object;, "TResource;"
    :cond_0
    :try_start_5
    invoke-virtual {p1, v2}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 87
    .end local v0    # "disposeError":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v5    # "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    :cond_1
    invoke-virtual {v5, v1}, Lc8/Vlq;->doAfterTerminate(Lc8/hnq;)Lc8/Vlq;

    move-result-object v3

    .restart local v3    # "observable":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    goto :goto_0

    .line 95
    :catch_2
    move-exception v2

    .line 96
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lc8/Vqq;->dispose(Lc8/hnq;)Ljava/lang/Throwable;

    move-result-object v0

    .line 97
    .restart local v0    # "disposeError":Ljava/lang/Throwable;
    invoke-static {v2}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 98
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 99
    if-eqz v0, :cond_2

    .line 100
    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Throwable;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-direct {v6, v7}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p1, v6}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p1, v2}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lc8/Vqq;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Vqq;->call(Lc8/Omq;)V

    return-void
.end method
