.class public final Lc8/twq;
.super Lc8/Nmq;
.source "SingleDoAfterTerminate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleDoAfterTerminateSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Nmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final action:Lc8/hnq;

.field final actual:Lc8/Nmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Nmq",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Nmq;Lc8/hnq;)V
    .locals 0
    .param p2, "action"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;",
            "Lc8/hnq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lc8/twq;, "Lrx/internal/operators/SingleDoAfterTerminate$SingleDoAfterTerminateSubscriber<TT;>;"
    .local p1, "actual":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    .line 51
    iput-object p1, p0, Lc8/twq;->actual:Lc8/Nmq;

    .line 52
    iput-object p2, p0, Lc8/twq;->action:Lc8/hnq;

    .line 53
    return-void
.end method


# virtual methods
.method doAction()V
    .locals 2

    .prologue
    .line 75
    .local p0, "this":Lc8/twq;, "Lrx/internal/operators/SingleDoAfterTerminate$SingleDoAfterTerminateSubscriber<TT;>;"
    :try_start_0
    iget-object v1, p0, Lc8/twq;->action:Lc8/hnq;

    invoke-interface {v1}, Lc8/hnq;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 78
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lc8/twq;, "Lrx/internal/operators/SingleDoAfterTerminate$SingleDoAfterTerminateSubscriber<TT;>;"
    :try_start_0
    iget-object v0, p0, Lc8/twq;->actual:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p0}, Lc8/twq;->doAction()V

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lc8/twq;->doAction()V

    throw v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lc8/twq;, "Lrx/internal/operators/SingleDoAfterTerminate$SingleDoAfterTerminateSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lc8/twq;->actual:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lc8/twq;->doAction()V

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lc8/twq;->doAction()V

    throw v0
.end method
