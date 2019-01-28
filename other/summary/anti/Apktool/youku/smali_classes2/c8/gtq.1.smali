.class public Lc8/gtq;
.super Lc8/Omq;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/htq;->call(Lc8/Omq;)Lc8/Omq;
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
.field private done:Z

.field produced:J

.field final synthetic this$0:Lc8/htq;

.field final synthetic val$child:Lc8/Omq;

.field final synthetic val$pa:Lc8/Jwq;

.field final synthetic val$ssub:Lc8/YBq;


# direct methods
.method constructor <init>(Lc8/htq;Lc8/Omq;Lc8/Jwq;Lc8/YBq;)V
    .locals 0

    .prologue
    .line 89
    .local p0, "this":Lc8/gtq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iput-object p1, p0, Lc8/gtq;->this$0:Lc8/htq;

    iput-object p2, p0, Lc8/gtq;->val$child:Lc8/Omq;

    iput-object p3, p0, Lc8/gtq;->val$pa:Lc8/Jwq;

    iput-object p4, p0, Lc8/gtq;->val$ssub:Lc8/YBq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lc8/gtq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iget-boolean v0, p0, Lc8/gtq;->done:Z

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/gtq;->done:Z

    .line 101
    iget-object v0, p0, Lc8/gtq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    .local p0, "this":Lc8/gtq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iget-boolean v5, p0, Lc8/gtq;->done:Z

    if-eqz v5, :cond_0

    .line 107
    invoke-static {p1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 108
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 146
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lc8/gtq;->done:Z

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lc8/gtq;->unsubscribe()V

    .line 115
    new-instance v1, Lc8/ftq;

    invoke-direct {v1, p0}, Lc8/ftq;-><init>(Lc8/gtq;)V

    .line 133
    .local v1, "next":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    iget-object v5, p0, Lc8/gtq;->val$ssub:Lc8/YBq;

    invoke-virtual {v5, v1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 135
    iget-wide v2, p0, Lc8/gtq;->produced:J

    .line 136
    .local v2, "p":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_1

    .line 137
    iget-object v5, p0, Lc8/gtq;->val$pa:Lc8/Jwq;

    invoke-virtual {v5, v2, v3}, Lc8/Jwq;->produced(J)V

    .line 140
    :cond_1
    iget-object v5, p0, Lc8/gtq;->this$0:Lc8/htq;

    iget-object v5, v5, Lc8/htq;->resumeFunction:Lc8/Inq;

    invoke-interface {v5, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Vlq;

    .line 142
    .local v4, "resume":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-virtual {v4, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v1    # "next":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    .end local v2    # "p":J
    .end local v4    # "resume":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v5, p0, Lc8/gtq;->val$child:Lc8/Omq;

    invoke-static {v0, v5}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lc8/gtq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lc8/gtq;->done:Z

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-wide v0, p0, Lc8/gtq;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc8/gtq;->produced:J

    .line 154
    iget-object v0, p0, Lc8/gtq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "producer"    # Lc8/Xlq;

    .prologue
    .line 159
    .local p0, "this":Lc8/gtq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iget-object v0, p0, Lc8/gtq;->val$pa:Lc8/Jwq;

    invoke-virtual {v0, p1}, Lc8/Jwq;->setProducer(Lc8/Xlq;)V

    .line 160
    return-void
.end method
