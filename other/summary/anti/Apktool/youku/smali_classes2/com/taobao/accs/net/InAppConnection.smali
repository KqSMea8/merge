.class public Lcom/taobao/accs/net/InAppConnection;
.super Lcom/taobao/accs/net/BaseConnection;
.source "InAppConnection.java"

# interfaces
.implements Lc8/SI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/net/InAppConnection$Auth;
    }
.end annotation


# static fields
.field private static final CONN_TIMEOUT:I = 0xea60

.field private static final RESEND_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "InAppConn_"


# instance fields
.field private mRunning:Z

.field private mSessionRegistered:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTryStartServiceRunable:Ljava/lang/Runnable;

.field private startServiceTaskFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "configTag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/accs/net/BaseConnection;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 48
    iput-boolean v3, p0, Lcom/taobao/accs/net/InAppConnection;->mRunning:Z

    .line 51
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/accs/net/InAppConnection;->startServiceTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 340
    new-instance v2, Lcom/taobao/accs/net/InAppConnection$4;

    invoke-direct {v2, p0}, Lcom/taobao/accs/net/InAppConnection$4;-><init>(Lcom/taobao/accs/net/InAppConnection;)V

    iput-object v2, p0, Lcom/taobao/accs/net/InAppConnection;->mTryStartServiceRunable:Ljava/lang/Runnable;

    .line 57
    invoke-static {v3}, Lcom/taobao/accs/utl/OrangeAdapter;->isTnetLogOff(Z)Z

    move-result v1

    .line 58
    .local v1, "tlogOff":Z
    if-nez v1, :cond_0

    .line 59
    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "inapp"

    invoke-static {v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->getTnetLogFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "config tnet log path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const/high16 v2, 0x500000

    const/4 v3, 0x5

    invoke-static {p1, v0, v2, v3}, Lanet/channel/Session;->configTnetALog(Landroid/content/Context;Ljava/lang/String;II)V

    .line 67
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mTryStartServiceRunable:Ljava/lang/Runnable;

    const-wide/32 v4, 0x1d4c0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/accs/net/InAppConnection;->startServiceTaskFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 68
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Z
    .locals 8
    .param p1, "customDataId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 363
    const/4 v1, 0x0

    .line 364
    .local v1, "result":Z
    if-nez p1, :cond_0

    move v2, v1

    .line 374
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 367
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v3, v3, Lcom/taobao/accs/data/MessageHandler;->reqTasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 368
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v0, :cond_1

    .line 369
    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v1

    .line 371
    :cond_1
    if-eqz v1, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "cancel"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "customDataId"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v2, v1

    .line 374
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public getChannelState()I
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InAppConn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initAwcn(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 386
    :try_start_0
    iget-boolean v4, p0, Lcom/taobao/accs/net/InAppConnection;->mAwcnInited:Z

    if-eqz v4, :cond_0

    .line 407
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/accs/net/BaseConnection;->initAwcn(Landroid/content/Context;)V

    .line 391
    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v4}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 393
    .local v2, "isKeepAlive":Z
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->isKeepAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v4}, Lcom/taobao/accs/AccsClientConfig;->isKeepalive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 394
    const/4 v2, 0x1

    .line 398
    :goto_1
    iget-object v4, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v4}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/RI;->getConfigByTag(Ljava/lang/String;)Lc8/RI;

    move-result-object v0

    .line 399
    .local v0, "config":Lc8/RI;
    invoke-static {v0}, Lanet/channel/SessionCenter;->getInstance(Lc8/RI;)Lanet/channel/SessionCenter;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v2}, Lcom/taobao/accs/net/InAppConnection;->registerSessionInfo(Lanet/channel/SessionCenter;Ljava/lang/String;Z)V

    .line 401
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/taobao/accs/net/InAppConnection;->mAwcnInited:Z

    .line 402
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "init awcn success!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    .end local v0    # "config":Lc8/RI;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "isKeepAlive":Z
    :catch_0
    move-exception v3

    .line 404
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "initAwcn"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 396
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "isKeepAlive":Z
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "close keepalive"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/taobao/accs/net/InAppConnection;->mRunning:Z

    return v0
.end method

.method public notifyNetWorkChange(Ljava/lang/String;)V
    .locals 1
    .param p1, "netInfo"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/net/InAppConnection;->mTimeoutMsgNum:I

    .line 233
    return-void
.end method

.method public onDataReceive(Lanet/channel/session/TnetSpdySession;[BII)V
    .locals 4
    .param p1, "session"    # Lanet/channel/session/TnetSpdySession;
    .param p2, "data"    # [B
    .param p3, "dataId"    # I
    .param p4, "frameType"    # I

    .prologue
    const/4 v3, 0x0

    .line 273
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataReceive, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :cond_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/net/InAppConnection$2;

    invoke-direct {v1, p0, p4, p2, p1}, Lcom/taobao/accs/net/InAppConnection$2;-><init>(Lcom/taobao/accs/net/InAppConnection;I[BLanet/channel/session/TnetSpdySession;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 302
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDataReceive, end:"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_1
    return-void
.end method

.method public onException(IIZLjava/lang/String;)V
    .locals 3
    .param p1, "dataId"    # I
    .param p2, "errorId"    # I
    .param p3, "needRetry"    # Z
    .param p4, "detail"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "errorId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "detail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dataId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " needRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/net/InAppConnection$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/taobao/accs/net/InAppConnection$3;-><init>(Lcom/taobao/accs/net/InAppConnection;IZI)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method

.method protected onTimeOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 258
    :try_start_0
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    invoke-virtual {v3, p1}, Lcom/taobao/accs/data/MessageHandler;->getUnhandledMessage(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v1

    .line 259
    .local v1, "msg":Lcom/taobao/accs/data/Message;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v3

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lanet/channel/SessionCenter;->get(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object v2

    .line 261
    .local v2, "session":Lanet/channel/Session;
    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {v2}, Lanet/channel/Session;->checkAvailable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "msg":Lcom/taobao/accs/data/Message;
    .end local v2    # "session":Lanet/channel/Session;
    :cond_0
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onTimeOut"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ping(ZZ)V
    .locals 0
    .param p1, "force"    # Z
    .param p2, "dely"    # Z

    .prologue
    .line 238
    return-void
.end method

.method public registerSessionInfo(Lanet/channel/SessionCenter;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "sessionCenter"    # Lanet/channel/SessionCenter;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "isKeepAlive"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    .line 413
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection;->mSessionRegistered:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/accs/net/InAppConnection;->mSessionRegistered:Ljava/util/Set;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection;->mSessionRegistered:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :goto_0
    return-void

    .line 420
    :cond_1
    new-instance v3, Lcom/taobao/accs/net/InAppConnection$Auth;

    invoke-direct {v3, p0, p2}, Lcom/taobao/accs/net/InAppConnection$Auth;-><init>(Lcom/taobao/accs/net/BaseConnection;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p2

    move v1, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lc8/cJ;->create(Ljava/lang/String;ZZLc8/UI;Lc8/NJ;Lc8/SI;)Lc8/cJ;

    move-result-object v6

    .line 421
    .local v6, "info":Lc8/cJ;
    invoke-virtual {p1, v6}, Lanet/channel/SessionCenter;->registerSessionInfo(Lc8/cJ;)V

    .line 422
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getInappPubKey()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lanet/channel/SessionCenter;->registerPublicKey(Ljava/lang/String;I)V

    .line 423
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection;->mSessionRegistered:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "registerSessionInfo"

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "host"

    aput-object v5, v3, v4

    aput-object p2, v3, v2

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected sendMessage(Lcom/taobao/accs/data/Message;Z)V
    .locals 9
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "connectIfNeeded"    # Z

    .prologue
    const/4 v8, 0x0

    .line 83
    iget-boolean v3, p0, Lcom/taobao/accs/net/InAppConnection;->mRunning:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not running or msg null! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/taobao/accs/net/InAppConnection;->mRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_3

    .line 89
    new-instance v3, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v4, "accs"

    invoke-direct {v3, v4}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    :catch_0
    move-exception v3

    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const v4, 0x11178

    invoke-virtual {v3, p1, v4}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 207
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "send queue full count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/taobao/accs/net/InAppConnection$1;

    invoke-direct {v4, p0, p1}, Lcom/taobao/accs/net/InAppConnection$1;-><init>(Lcom/taobao/accs/net/InAppConnection;Lcom/taobao/accs/data/Message;)V

    iget-wide v6, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 185
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 188
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->isControlFrame()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/taobao/accs/net/InAppConnection;->cancel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 190
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    invoke-virtual {v3, p1}, Lcom/taobao/accs/data/MessageHandler;->cancelControlMessage(Lcom/taobao/accs/data/Message;)V

    .line 194
    :cond_4
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v3, v3, Lcom/taobao/accs/data/MessageHandler;->reqTasks:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_5
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    .line 199
    .local v1, "netPerformanceMonitor":Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    if-eqz v1, :cond_1

    .line 200
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDeviceId(Ljava/lang/String;)V

    .line 202
    iget v3, p0, Lcom/taobao/accs/net/InAppConnection;->mConnectionType:I

    invoke-virtual {v1, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setConnType(I)V

    .line 203
    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onEnterQueueData()V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 208
    .end local v0    # "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    .end local v1    # "netPerformanceMonitor":Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    :catch_1
    move-exception v2

    .line 209
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/4 v4, -0x8

    invoke-virtual {v3, p1, v4}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 210
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "send error"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/InAppConnection;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "shut down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iput-boolean v3, p0, Lcom/taobao/accs/net/InAppConnection;->mRunning:Z

    .line 222
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/accs/net/InAppConnection;->mRunning:Z

    .line 76
    iget-object v0, p0, Lcom/taobao/accs/net/InAppConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/InAppConnection;->initAwcn(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/InAppConnection;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateConfig(Lcom/taobao/accs/AccsClientConfig;)V
    .locals 11
    .param p1, "config"    # Lcom/taobao/accs/AccsClientConfig;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 428
    if-nez p1, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "updateConfig null"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    :goto_0
    return-void

    .line 433
    :cond_0
    :try_start_0
    const-string/jumbo v3, "InAppConn_"

    const-string/jumbo v4, "updateConfig"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "old"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v7}, Lcom/taobao/accs/AccsClientConfig;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "new"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    iput-object p1, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    .line 435
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mAppkey:Ljava/lang/String;

    .line 436
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mConfigTag:Ljava/lang/String;

    .line 438
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v1

    .line 439
    .local v1, "sessionCenter":Lanet/channel/SessionCenter;
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lanet/channel/SessionCenter;->unregisterSessionInfo(Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "isKeepAlive":Z
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->isKeepAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->isKeepalive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    const/4 v0, 0x1

    .line 446
    :goto_1
    iget-object v3, p0, Lcom/taobao/accs/net/InAppConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v0}, Lcom/taobao/accs/net/InAppConnection;->registerSessionInfo(Lanet/channel/SessionCenter;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    .end local v0    # "isKeepAlive":Z
    .end local v1    # "sessionCenter":Lanet/channel/SessionCenter;
    :catch_0
    move-exception v2

    .line 448
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "InAppConn_"

    const-string/jumbo v4, "updateConfig"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "excetion"

    aput-object v6, v5, v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 444
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "isKeepAlive":Z
    .restart local v1    # "sessionCenter":Lanet/channel/SessionCenter;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "close keepalive"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public updateMonitorInfo()Lcom/taobao/accs/ut/statistics/MonitorStatistic;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method
