.class public Lc8/fuq;
.super Lc8/Omq;
.source "OperatorSkipTimed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/guq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/guq;

.field final synthetic val$child:Lc8/Omq;

.field final synthetic val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lc8/guq;Lc8/Omq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lc8/fuq;, "Lrx/internal/operators/OperatorSkipTimed.2;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/fuq;->this$0:Lc8/guq;

    iput-object p3, p0, Lc8/fuq;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lc8/fuq;->val$child:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lc8/fuq;, "Lrx/internal/operators/OperatorSkipTimed.2;"
    :try_start_0
    iget-object v0, p0, Lc8/fuq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lc8/fuq;->unsubscribe()V

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lc8/fuq;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    .local p0, "this":Lc8/fuq;, "Lrx/internal/operators/OperatorSkipTimed.2;"
    :try_start_0
    iget-object v0, p0, Lc8/fuq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0}, Lc8/fuq;->unsubscribe()V

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lc8/fuq;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lc8/fuq;, "Lrx/internal/operators/OperatorSkipTimed.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/fuq;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lc8/fuq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method
