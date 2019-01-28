.class public Lc8/eNf;
.super Lc8/aNf;
.source "MtopProgressListenerImpl.java"

# interfaces
.implements Lc8/KNp;
.implements Lc8/LNp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopProgressListenerImpl"


# direct methods
.method public constructor <init>(Lc8/GMf;Lc8/QNp;)V
    .locals 0
    .param p1, "mtopBusiness"    # Lc8/GMf;
    .param p2, "listener"    # Lc8/QNp;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lc8/aNf;-><init>(Lc8/GMf;Lc8/QNp;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onDataReceived(Lc8/RNp;Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Lc8/RNp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v2, p0, Lc8/eNf;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v2}, Lc8/GMf;->getSeqNo()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "seqNo":Ljava/lang/String;
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const-string/jumbo v2, "mtopsdk.MtopProgressListenerImpl"

    const-string/jumbo v3, "Mtop onDataReceived event received."

    invoke-static {v2, v1, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v2, p0, Lc8/eNf;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v2}, Lc8/GMf;->isTaskCanceled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    const-string/jumbo v2, "mtopsdk.MtopProgressListenerImpl"

    const-string/jumbo v3, "The request of MtopBusiness is cancelled."

    invoke-static {v2, v1, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    iget-object v2, p0, Lc8/eNf;->listener:Lc8/QNp;

    instance-of v2, v2, Lc8/EMf;

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lc8/eNf;->listener:Lc8/QNp;

    iget-object v3, p0, Lc8/eNf;->mtopBusiness:Lc8/GMf;

    invoke-static {v2, p1, v3}, Lc8/QMf;->getHandlerMsg(Lc8/QNp;Lc8/NNp;Lc8/GMf;)Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    move-result-object v0

    .line 54
    .local v0, "hMsg":Lcom/taobao/tao/remotebusiness/handler/HandlerParam;
    invoke-static {}, Lc8/QMf;->instance()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onHeader(Lc8/PNp;Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Lc8/PNp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 60
    iget-object v2, p0, Lc8/eNf;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v2}, Lc8/GMf;->getSeqNo()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "seqNo":Ljava/lang/String;
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const-string/jumbo v2, "mtopsdk.MtopProgressListenerImpl"

    const-string/jumbo v3, "Mtop onHeader event received."

    invoke-static {v2, v1, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v2, p0, Lc8/eNf;->mtopBusiness:Lc8/GMf;

    invoke-virtual {v2}, Lc8/GMf;->isTaskCanceled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const-string/jumbo v2, "mtopsdk.MtopProgressListenerImpl"

    const-string/jumbo v3, "The request of MtopBusiness is cancelled."

    invoke-static {v2, v1, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    iget-object v2, p0, Lc8/eNf;->listener:Lc8/QNp;

    instance-of v2, v2, Lc8/EMf;

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Lc8/eNf;->listener:Lc8/QNp;

    iget-object v3, p0, Lc8/eNf;->mtopBusiness:Lc8/GMf;

    invoke-static {v2, p1, v3}, Lc8/QMf;->getHandlerMsg(Lc8/QNp;Lc8/NNp;Lc8/GMf;)Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    move-result-object v0

    .line 77
    .local v0, "hMsg":Lcom/taobao/tao/remotebusiness/handler/HandlerParam;
    invoke-static {}, Lc8/QMf;->instance()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
