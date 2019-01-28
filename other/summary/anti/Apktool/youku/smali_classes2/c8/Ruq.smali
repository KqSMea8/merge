.class public final Lc8/Ruq;
.super Lc8/Omq;
.source "OperatorTakeUntilPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Suq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private done:Z

.field final synthetic this$0:Lc8/Suq;


# direct methods
.method constructor <init>(Lc8/Suq;Lc8/Omq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lc8/Ruq;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    .local p2, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iput-object p1, p0, Lc8/Ruq;->this$0:Lc8/Suq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 56
    iput-object p2, p0, Lc8/Ruq;->child:Lc8/Omq;

    .line 57
    return-void
.end method


# virtual methods
.method downstreamRequest(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 93
    .local p0, "this":Lc8/Ruq;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    invoke-virtual {p0, p1, p2}, Lc8/Ruq;->request(J)V

    .line 94
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lc8/Ruq;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    iget-boolean v0, p0, Lc8/Ruq;->done:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lc8/Ruq;->child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 84
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    .local p0, "this":Lc8/Ruq;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    iget-boolean v0, p0, Lc8/Ruq;->done:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lc8/Ruq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Ruq;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    .line 61
    iget-object v2, p0, Lc8/Ruq;->child:Lc8/Omq;

    invoke-virtual {v2, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 65
    :try_start_0
    iget-object v2, p0, Lc8/Ruq;->this$0:Lc8/Suq;

    iget-object v2, v2, Lc8/Suq;->stopPredicate:Lc8/Inq;

    invoke-interface {v2, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    .local v1, "stop":Z
    if-eqz v1, :cond_0

    .line 73
    iput-boolean v3, p0, Lc8/Ruq;->done:Z

    .line 74
    iget-object v2, p0, Lc8/Ruq;->child:Lc8/Omq;

    invoke-virtual {v2}, Lc8/Omq;->onCompleted()V

    .line 75
    invoke-virtual {p0}, Lc8/Ruq;->unsubscribe()V

    .line 77
    .end local v1    # "stop":Z
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v3, p0, Lc8/Ruq;->done:Z

    .line 68
    iget-object v2, p0, Lc8/Ruq;->child:Lc8/Omq;

    invoke-static {v0, v2, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lc8/Ruq;->unsubscribe()V

    goto :goto_0
.end method
