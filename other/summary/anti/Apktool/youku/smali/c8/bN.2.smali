.class public Lc8/bN;
.super Ljava/lang/Object;
.source "NetworkProxy.java"

# interfaces
.implements Lc8/hM;


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lc8/XM;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "anet.NetworkProxy"

    sput-object v0, Lc8/bN;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/bN;->mDelegate:Lc8/XM;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lc8/bN;->mType:I

    .line 32
    iput-object p1, p0, Lc8/bN;->mContext:Landroid/content/Context;

    .line 33
    iput p2, p0, Lc8/bN;->mType:I

    .line 34
    return-void
.end method

.method private handleErrorCallBack(Lc8/gN;I)Lc8/LM;
    .locals 5
    .param p1, "listenerWrapper"    # Lc8/gN;
    .param p2, "code"    # I

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 141
    :try_start_0
    new-instance v1, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-direct {v1, p2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(I)V

    invoke-virtual {p1, v1}, Lc8/gN;->onFinished(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    new-instance v1, Lc8/ZM;

    invoke-direct {v1, p2}, Lc8/ZM;-><init>(I)V

    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lc8/bN;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[handleErrorCallBack]call listenerWrapper.onFinished exception."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private initDelegateInstance(Z)V
    .locals 4
    .param p1, "wait"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lc8/bN;->mDelegate:Lc8/XM;

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lc8/qN;->isRemoteNetworkServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lc8/bN;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lc8/jN;->initRemoteGetterAndWait(Landroid/content/Context;Z)V

    .line 78
    iget v0, p0, Lc8/bN;->mType:I

    invoke-direct {p0, v0}, Lc8/bN;->tryGetRemoteNetworkInstance(I)Lc8/XM;

    move-result-object v0

    iput-object v0, p0, Lc8/bN;->mDelegate:Lc8/XM;

    .line 80
    :cond_2
    iget-object v0, p0, Lc8/bN;->mDelegate:Lc8/XM;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    sget-object v0, Lc8/bN;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[getLocalNetworkInstance]"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_3
    new-instance v0, Lc8/LN;

    iget-object v1, p0, Lc8/bN;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/LN;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/bN;->mDelegate:Lc8/XM;

    goto :goto_0
.end method

.method private redirectAsyncCall(Lc8/XM;Lanetwork/channel/aidl/ParcelableRequest;Lc8/gN;)Lc8/LM;
    .locals 4
    .param p1, "network"    # Lc8/XM;
    .param p2, "pRequest"    # Lanetwork/channel/aidl/ParcelableRequest;
    .param p3, "listenerWrapper"    # Lc8/gN;

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    const/4 v2, 0x0

    .line 135
    :goto_0
    return-object v2

    .line 124
    :cond_0
    invoke-virtual {p2}, Lanetwork/channel/aidl/ParcelableRequest;->getURL()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 125
    const/16 v3, -0x66

    invoke-direct {p0, p3, v3}, Lc8/bN;->handleErrorCallBack(Lc8/gN;I)Lc8/LM;

    move-result-object v2

    .local v2, "future":Lc8/LM;
    goto :goto_0

    .line 128
    .end local v2    # "future":Lc8/LM;
    :cond_1
    :try_start_0
    invoke-interface {p1, p2, p3}, Lc8/XM;->asyncSend(Lanetwork/channel/aidl/ParcelableRequest;Lc8/SM;)Lc8/LM;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "future":Lc8/LM;
    goto :goto_0

    .line 129
    .end local v2    # "future":Lc8/LM;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    const/16 v3, -0x67

    invoke-direct {p0, p3, v3}, Lc8/bN;->handleErrorCallBack(Lc8/gN;I)Lc8/LM;

    move-result-object v2

    .line 131
    .restart local v2    # "future":Lc8/LM;
    const-string/jumbo v1, "[redirectAsyncCall]call asyncSend exception."

    .line 132
    .local v1, "eMsg":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lc8/bN;->reportRemoteError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportRemoteError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "eMsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 150
    sget-object v1, Lc8/bN;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, p2, p1, v2}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 151
    new-instance v0, Lanet/channel/statist/ExceptionStatistic;

    const/16 v1, -0x67

    const-string/jumbo v2, "rt"

    invoke-direct {v0, v1, v3, v2}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v0, "es":Lanet/channel/statist/ExceptionStatistic;
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/ExceptionStatistic;->exceptionStack:Ljava/lang/String;

    .line 153
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 154
    return-void
.end method

.method private declared-synchronized tryGetRemoteNetworkInstance(I)Lc8/XM;
    .locals 7
    .param p1, "type"    # I

    .prologue
    .line 103
    monitor-enter p0

    const/4 v3, 0x2

    :try_start_0
    invoke-static {v3}, Lc8/KL;->isPrintLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    sget-object v3, Lc8/bN;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[tryGetRemoteNetworkInstance] type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 107
    .local v0, "delegate":Lc8/XM;
    invoke-static {}, Lc8/jN;->getRemoteGetter()Lc8/DM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 108
    .local v2, "getter":Lc8/DM;
    if-eqz v2, :cond_1

    .line 110
    :try_start_1
    invoke-interface {v2, p1}, Lc8/DM;->get(I)Lc8/XM;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 115
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v3, "[tryGetRemoteNetworkInstance]get RemoteNetwork Delegate failed."

    invoke-direct {p0, v1, v3}, Lc8/bN;->reportRemoteError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 103
    .end local v0    # "delegate":Lc8/XM;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "getter":Lc8/DM;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public asyncSend(Lc8/uM;Ljava/lang/Object;Landroid/os/Handler;Lc8/sM;)Ljava/util/concurrent/Future;
    .locals 6
    .param p1, "request"    # Lc8/uM;
    .param p2, "context"    # Ljava/lang/Object;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lc8/sM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/uM;",
            "Ljava/lang/Object;",
            "Landroid/os/Handler;",
            "Lc8/sM;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lc8/vM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, v4}, Lc8/bN;->initDelegateInstance(Z)V

    .line 91
    new-instance v3, Lc8/aN;

    invoke-direct {v3}, Lc8/aN;-><init>()V

    .line 92
    .local v3, "response":Lc8/aN;
    new-instance v2, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v2, p1}, Lanetwork/channel/aidl/ParcelableRequest;-><init>(Lc8/uM;)V

    .line 93
    .local v2, "pRequest":Lanetwork/channel/aidl/ParcelableRequest;
    const/4 v1, 0x0

    .line 94
    .local v1, "listenerWrapper":Lc8/gN;
    if-nez p4, :cond_0

    if-eqz p3, :cond_1

    .line 95
    :cond_0
    new-instance v1, Lc8/gN;

    .end local v1    # "listenerWrapper":Lc8/gN;
    invoke-direct {v1, p4, p3, p2}, Lc8/gN;-><init>(Lc8/sM;Landroid/os/Handler;Ljava/lang/Object;)V

    .line 97
    .restart local v1    # "listenerWrapper":Lc8/gN;
    :cond_1
    iget-object v4, p0, Lc8/bN;->mDelegate:Lc8/XM;

    invoke-direct {p0, v4, v2, v1}, Lc8/bN;->redirectAsyncCall(Lc8/XM;Lanetwork/channel/aidl/ParcelableRequest;Lc8/gN;)Lc8/LM;

    move-result-object v0

    .line 98
    .local v0, "future":Lc8/LM;
    invoke-virtual {v3, v0}, Lc8/aN;->setFuture(Lc8/LM;)V

    .line 99
    return-object v3

    .line 90
    .end local v0    # "future":Lc8/LM;
    .end local v1    # "listenerWrapper":Lc8/gN;
    .end local v2    # "pRequest":Lanetwork/channel/aidl/ParcelableRequest;
    .end local v3    # "response":Lc8/aN;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getConnection(Lc8/uM;Ljava/lang/Object;)Lc8/yM;
    .locals 4
    .param p1, "request"    # Lc8/uM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 44
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lc8/bN;->initDelegateInstance(Z)V

    .line 45
    new-instance v1, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v1, p1}, Lanetwork/channel/aidl/ParcelableRequest;-><init>(Lc8/uM;)V

    .line 46
    .local v1, "pRequest":Lanetwork/channel/aidl/ParcelableRequest;
    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->getURL()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 47
    new-instance v2, Lc8/YM;

    const/16 v3, -0x66

    invoke-direct {v2, v3}, Lc8/YM;-><init>(I)V

    .line 53
    :goto_0
    return-object v2

    .line 50
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/bN;->mDelegate:Lc8/XM;

    invoke-interface {v2, v1}, Lc8/XM;->getConnection(Lanetwork/channel/aidl/ParcelableRequest;)Lc8/yM;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "[getConnection]call getConnection method failed."

    invoke-direct {p0, v0, v2}, Lc8/bN;->reportRemoteError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 53
    new-instance v2, Lc8/YM;

    const/16 v3, -0x67

    invoke-direct {v2, v3}, Lc8/YM;-><init>(I)V

    goto :goto_0
.end method

.method public syncSend(Lc8/uM;Ljava/lang/Object;)Lc8/vM;
    .locals 4
    .param p1, "request"    # Lc8/uM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 59
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lc8/bN;->initDelegateInstance(Z)V

    .line 60
    new-instance v1, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v1, p1}, Lanetwork/channel/aidl/ParcelableRequest;-><init>(Lc8/uM;)V

    .line 61
    .local v1, "pRequest":Lanetwork/channel/aidl/ParcelableRequest;
    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->getURL()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 62
    new-instance v2, Lanetwork/channel/aidl/NetworkResponse;

    const/16 v3, -0x66

    invoke-direct {v2, v3}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    .line 68
    :goto_0
    return-object v2

    .line 65
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/bN;->mDelegate:Lc8/XM;

    invoke-interface {v2, v1}, Lc8/XM;->syncSend(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "[syncSend]call syncSend method failed."

    invoke-direct {p0, v0, v2}, Lc8/bN;->reportRemoteError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 68
    new-instance v2, Lanetwork/channel/aidl/NetworkResponse;

    const/16 v3, -0x67

    invoke-direct {v2, v3}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    goto :goto_0
.end method
