.class public Lc8/Trq;
.super Lc8/Omq;
.source "OperatorDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vrq;->call(Lc8/Omq;)Lc8/Omq;
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
.field hasPrevious:Z

.field previousKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/Vrq;

.field final synthetic val$child:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Vrq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lc8/Trq;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Trq;->this$0:Lc8/Vrq;

    iput-object p3, p0, Lc8/Trq;->val$child:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lc8/Trq;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    iget-object v0, p0, Lc8/Trq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 114
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    .local p0, "this":Lc8/Trq;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    iget-object v0, p0, Lc8/Trq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lc8/Trq;, "Lrx/internal/operators/OperatorDistinctUntilChanged.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lc8/Trq;->this$0:Lc8/Vrq;

    iget-object v4, v4, Lc8/Vrq;->keySelector:Lc8/Inq;

    invoke-interface {v4, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 82
    .local v3, "key":Ljava/lang/Object;, "TU;"
    iget-object v1, p0, Lc8/Trq;->previousKey:Ljava/lang/Object;

    .line 83
    .local v1, "currentKey":Ljava/lang/Object;, "TU;"
    iput-object v3, p0, Lc8/Trq;->previousKey:Ljava/lang/Object;

    .line 85
    iget-boolean v4, p0, Lc8/Trq;->hasPrevious:Z

    if-eqz v4, :cond_1

    .line 89
    :try_start_1
    iget-object v4, p0, Lc8/Trq;->this$0:Lc8/Vrq;

    iget-object v4, v4, Lc8/Vrq;->comparator:Lc8/Jnq;

    invoke-interface {v4, v1, v3}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 95
    .local v0, "comparison":Z
    if-nez v0, :cond_0

    .line 96
    iget-object v4, p0, Lc8/Trq;->val$child:Lc8/Omq;

    invoke-virtual {v4, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 104
    .end local v0    # "comparison":Z
    .end local v1    # "currentKey":Ljava/lang/Object;, "TU;"
    .end local v3    # "key":Ljava/lang/Object;, "TU;"
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lc8/Trq;->val$child:Lc8/Omq;

    invoke-static {v2, v4, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "currentKey":Ljava/lang/Object;, "TU;"
    .restart local v3    # "key":Ljava/lang/Object;, "TU;"
    :catch_1
    move-exception v2

    .line 91
    .restart local v2    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lc8/Trq;->val$child:Lc8/Omq;

    invoke-static {v2, v4, v3}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "comparison":Z
    :cond_0
    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, Lc8/Trq;->request(J)V

    goto :goto_0

    .line 101
    .end local v0    # "comparison":Z
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/Trq;->hasPrevious:Z

    .line 102
    iget-object v4, p0, Lc8/Trq;->val$child:Lc8/Omq;

    invoke-virtual {v4, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
