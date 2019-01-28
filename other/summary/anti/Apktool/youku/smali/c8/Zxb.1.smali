.class public Lc8/Zxb;
.super Ljava/lang/Object;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Xxb;,
        Lc8/Yxb;,
        Lc8/Vxb;,
        Lc8/Wxb;
    }
.end annotation


# instance fields
.field cancelListener:Lc8/Vxb;

.field cancelable:Lc8/Wxb;

.field completeListener:Lc8/Xxb;

.field errorListener:Lc8/Yxb;

.field exception:Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;

.field headNode:Lc8/fyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/fyb",
            "<**>;"
        }
    .end annotation
.end field

.field isCanceled:Z

.field latch:Ljava/util/concurrent/CountDownLatch;

.field tailNode:Lc8/fyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/fyb",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/fyb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fyb",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "flowable":Lc8/fyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lc8/Zxb;->headNode:Lc8/fyb;

    .line 147
    return-void
.end method

.method static synthetic access$300(Lc8/Zxb;)V
    .locals 0
    .param p0, "x0"    # Lc8/Zxb;

    .prologue
    .line 135
    invoke-direct {p0}, Lc8/Zxb;->handleListenEvent()V

    return-void
.end method

.method private handleListenEvent()V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lc8/Zxb;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Zxb;->cancelListener:Lc8/Vxb;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lc8/Zxb;->cancelListener:Lc8/Vxb;

    invoke-interface {v0}, Lc8/Vxb;->onCancel()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lc8/Zxb;->exception:Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/Zxb;->errorListener:Lc8/Yxb;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lc8/Zxb;->errorListener:Lc8/Yxb;

    iget-object v1, p0, Lc8/Zxb;->exception:Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;

    invoke-interface {v0, v1}, Lc8/Yxb;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lc8/Zxb;->completeListener:Lc8/Xxb;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lc8/Zxb;->completeListener:Lc8/Xxb;

    invoke-interface {v0}, Lc8/Xxb;->onComplete()V

    goto :goto_0
.end method


# virtual methods
.method cancelFlow()Lc8/Zxb;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Zxb;->isCanceled:Z

    .line 199
    return-object p0
.end method

.method flowStart()Lc8/Zxb;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lc8/Zxb;->headNode:Lc8/fyb;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc8/fyb;->scheduleFlow(Ljava/lang/Object;)V

    .line 154
    return-object p0
.end method

.method flowToFinal()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lc8/Zxb;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lc8/Zxb;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 177
    :cond_0
    invoke-static {}, Lc8/oyb;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-direct {p0}, Lc8/Zxb;->handleListenEvent()V

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_1
    new-instance v0, Lc8/Uxb;

    invoke-direct {v0, p0}, Lc8/Uxb;-><init>(Lc8/Zxb;)V

    invoke-virtual {p0, v0}, Lc8/Zxb;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method isCanceled()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lc8/Zxb;->isCanceledByHand()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/Zxb;->isCanceledPassively()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCanceledByHand()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lc8/Zxb;->isCanceled:Z

    return v0
.end method

.method isCanceledPassively()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lc8/Zxb;->cancelable:Lc8/Wxb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Zxb;->cancelable:Lc8/Wxb;

    invoke-interface {v0}, Lc8/Wxb;->cancel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method runOnNewThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 171
    invoke-static {}, Lc8/oyb;->access$200()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method runOnUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 157
    invoke-static {}, Lc8/oyb;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-static {}, Lc8/oyb;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCancelListener(Lc8/Vxb;)V
    .locals 0
    .param p1, "cancelListener"    # Lc8/Vxb;

    .prologue
    .line 209
    iput-object p1, p0, Lc8/Zxb;->cancelListener:Lc8/Vxb;

    .line 210
    return-void
.end method

.method public setCancelable(Lc8/Wxb;)V
    .locals 0
    .param p1, "cancelable"    # Lc8/Wxb;

    .prologue
    .line 206
    iput-object p1, p0, Lc8/Zxb;->cancelable:Lc8/Wxb;

    .line 207
    return-void
.end method

.method public setCompleteListener(Lc8/Xxb;)V
    .locals 0
    .param p1, "completeListener"    # Lc8/Xxb;

    .prologue
    .line 215
    iput-object p1, p0, Lc8/Zxb;->completeListener:Lc8/Xxb;

    .line 216
    return-void
.end method

.method public setCountDownLatch(Ljava/util/concurrent/CountDownLatch;)Lc8/Zxb;
    .locals 0
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 218
    iput-object p1, p0, Lc8/Zxb;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 219
    return-object p0
.end method

.method public setErrorListener(Lc8/Yxb;)V
    .locals 0
    .param p1, "errorListener"    # Lc8/Yxb;

    .prologue
    .line 212
    iput-object p1, p0, Lc8/Zxb;->errorListener:Lc8/Yxb;

    .line 213
    return-void
.end method

.method public setException(Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;)Lc8/Zxb;
    .locals 0
    .param p1, "exception"    # Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;

    .prologue
    .line 202
    iput-object p1, p0, Lc8/Zxb;->exception:Lcom/alibaba/aliweex/plugin/WorkFlow$WorkFlowException;

    .line 203
    return-object p0
.end method

.method setTailNode(Lc8/fyb;)Lc8/Zxb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fyb",
            "<**>;)",
            "Lc8/Zxb;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "tailNode":Lc8/fyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable<**>;"
    iput-object p1, p0, Lc8/Zxb;->tailNode:Lc8/fyb;

    .line 150
    return-object p0
.end method
