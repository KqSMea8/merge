.class public Lc8/Duq;
.super Lc8/Omq;
.source "OperatorTake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Euq;->call(Lc8/Omq;)Lc8/Omq;
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
.field completed:Z

.field count:I

.field final synthetic this$0:Lc8/Euq;

.field final synthetic val$child:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Euq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lc8/Duq;, "Lrx/internal/operators/OperatorTake.1;"
    iput-object p1, p0, Lc8/Duq;->this$0:Lc8/Euq;

    iput-object p2, p0, Lc8/Duq;->val$child:Lc8/Omq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lc8/Duq;, "Lrx/internal/operators/OperatorTake.1;"
    iget-boolean v0, p0, Lc8/Duq;->completed:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Duq;->completed:Z

    .line 56
    iget-object v0, p0, Lc8/Duq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 58
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lc8/Duq;, "Lrx/internal/operators/OperatorTake.1;"
    iget-boolean v0, p0, Lc8/Duq;->completed:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Duq;->completed:Z

    .line 65
    :try_start_0
    iget-object v0, p0, Lc8/Duq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lc8/Duq;->unsubscribe()V

    .line 70
    :cond_0
    return-void

    .line 67
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lc8/Duq;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Duq;, "Lrx/internal/operators/OperatorTake.1;"
    .local p1, "i":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0}, Lc8/Duq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lc8/Duq;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc8/Duq;->count:I

    iget-object v3, p0, Lc8/Duq;->this$0:Lc8/Euq;

    iget v3, v3, Lc8/Euq;->limit:I

    if-ge v2, v3, :cond_0

    .line 75
    iget v2, p0, Lc8/Duq;->count:I

    iget-object v3, p0, Lc8/Duq;->this$0:Lc8/Euq;

    iget v3, v3, Lc8/Euq;->limit:I

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 76
    .local v0, "stop":Z
    :goto_0
    iget-object v2, p0, Lc8/Duq;->val$child:Lc8/Omq;

    invoke-virtual {v2, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 77
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lc8/Duq;->completed:Z

    if-nez v2, :cond_0

    .line 78
    iput-boolean v1, p0, Lc8/Duq;->completed:Z

    .line 80
    :try_start_0
    iget-object v1, p0, Lc8/Duq;->val$child:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0}, Lc8/Duq;->unsubscribe()V

    .line 86
    .end local v0    # "stop":Z
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    .restart local v0    # "stop":Z
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lc8/Duq;->unsubscribe()V

    throw v1
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 2
    .param p1, "producer"    # Lc8/Xlq;

    .prologue
    .line 93
    .local p0, "this":Lc8/Duq;, "Lrx/internal/operators/OperatorTake.1;"
    iget-object v0, p0, Lc8/Duq;->val$child:Lc8/Omq;

    new-instance v1, Lc8/Cuq;

    invoke-direct {v1, p0, p1}, Lc8/Cuq;-><init>(Lc8/Duq;Lc8/Xlq;)V

    invoke-virtual {v0, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 116
    return-void
.end method
