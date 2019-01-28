.class public Lc8/Fxf;
.super Ljava/lang/Object;
.source "NetworkImageProducer.java"

# interfaces
.implements Lc8/Dxf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gxf;->conductResult(Lc8/oyf;Lc8/Kyf;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gxf;

.field final synthetic val$conductThreadId:J

.field final synthetic val$consumer:Lc8/oyf;


# direct methods
.method constructor <init>(Lc8/Gxf;JLc8/oyf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Gxf;

    .prologue
    .line 88
    iput-object p1, p0, Lc8/Fxf;->this$0:Lc8/Gxf;

    iput-wide p2, p0, Lc8/Fxf;->val$conductThreadId:J

    iput-object p4, p0, Lc8/Fxf;->val$consumer:Lc8/oyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 114
    iget-object v1, p0, Lc8/Fxf;->this$0:Lc8/Gxf;

    iget-object v0, p0, Lc8/Fxf;->val$consumer:Lc8/oyf;

    invoke-interface {v0}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Jxf;

    invoke-virtual {v0}, Lc8/Jxf;->getId()I

    move-result v0

    invoke-static {v1, v0}, Lc8/Gxf;->access$000(Lc8/Gxf;I)V

    .line 115
    iget-object v0, p0, Lc8/Fxf;->val$consumer:Lc8/oyf;

    invoke-interface {v0, p1}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method public onFinished(Lc8/exf;)V
    .locals 8
    .param p1, "response"    # Lc8/exf;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    iget-wide v4, p0, Lc8/Fxf;->val$conductThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    move v0, v2

    .line 92
    .local v0, "isAsyncHttp":Z
    :goto_0
    iget-object v4, p0, Lc8/Fxf;->val$consumer:Lc8/oyf;

    invoke-interface {v4}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Jxf;

    .line 93
    .local v1, "req":Lc8/Jxf;
    const-string/jumbo v4, "inner_is_async_http"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lc8/Jxf;->addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Lc8/Jxf;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    const-string/jumbo v2, "Network"

    const-string/jumbo v4, "request is cancelled before consuming response data"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v4, v3}, Lc8/qwf;->i(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v2, p0, Lc8/Fxf;->val$consumer:Lc8/oyf;

    invoke-interface {v2}, Lc8/oyf;->onCancellation()V

    .line 98
    invoke-virtual {p1}, Lc8/exf;->release()V

    .line 100
    iget-object v2, p0, Lc8/Fxf;->this$0:Lc8/Gxf;

    invoke-virtual {v1}, Lc8/Jxf;->getId()I

    move-result v3

    invoke-static {v2, v3}, Lc8/Gxf;->access$000(Lc8/Gxf;I)V

    .line 109
    :goto_1
    return-void

    .end local v0    # "isAsyncHttp":Z
    .end local v1    # "req":Lc8/Jxf;
    :cond_0
    move v0, v3

    .line 91
    goto :goto_0

    .line 103
    .restart local v0    # "isAsyncHttp":Z
    .restart local v1    # "req":Lc8/Jxf;
    :cond_1
    iget-object v4, p0, Lc8/Fxf;->this$0:Lc8/Gxf;

    iget-object v5, p0, Lc8/Fxf;->val$consumer:Lc8/oyf;

    invoke-static {v4, v5, v2}, Lc8/Gxf;->access$100(Lc8/Gxf;Lc8/oyf;Z)V

    .line 104
    if-eqz v0, :cond_2

    .line 105
    iget-object v4, p0, Lc8/Fxf;->this$0:Lc8/Gxf;

    iget-object v5, p0, Lc8/Fxf;->val$consumer:Lc8/oyf;

    invoke-virtual {v4, v5, v2, p1, v3}, Lc8/Gxf;->scheduleNewResult(Lc8/oyf;ZLc8/iyf;Z)V

    goto :goto_1

    .line 107
    :cond_2
    iget-object v3, p0, Lc8/Fxf;->this$0:Lc8/Gxf;

    iget-object v4, p0, Lc8/Fxf;->val$consumer:Lc8/oyf;

    invoke-virtual {v3, v4, v2, p1}, Lc8/Gxf;->consumeNewResult(Lc8/oyf;ZLc8/exf;)V

    goto :goto_1
.end method
