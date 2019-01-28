.class public Lc8/gN;
.super Lc8/RM;
.source "ParcelableNetworkListenerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "anet.ParcelableNetworkListenerWrapper"


# instance fields
.field private handler:Landroid/os/Handler;

.field private listener:Lc8/sM;

.field private mContext:Ljava/lang/Object;

.field private state:B


# direct methods
.method public constructor <init>(Lc8/sM;Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Lc8/sM;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/RM;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-byte v0, p0, Lc8/gN;->state:B

    .line 33
    iput-object p1, p0, Lc8/gN;->listener:Lc8/sM;

    .line 34
    if-eqz p1, :cond_3

    .line 35
    const-class v0, Lc8/iM;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-byte v0, p0, Lc8/gN;->state:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lc8/gN;->state:B

    .line 38
    :cond_0
    const-class v0, Lc8/kM;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-byte v0, p0, Lc8/gN;->state:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lc8/gN;->state:B

    .line 41
    :cond_1
    const-class v0, Lc8/lM;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    iget-byte v0, p0, Lc8/gN;->state:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lc8/gN;->state:B

    .line 44
    :cond_2
    const-class v0, Lc8/jM;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    iget-byte v0, p0, Lc8/gN;->state:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lc8/gN;->state:B

    .line 48
    :cond_3
    iput-object p2, p0, Lc8/gN;->handler:Landroid/os/Handler;

    .line 49
    iput-object p3, p0, Lc8/gN;->mContext:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lc8/gN;BLjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lc8/gN;
    .param p1, "x1"    # B
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lc8/gN;->dispatchCallback(BLjava/lang/Object;)V

    return-void
.end method

.method private dispatch(BLjava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/gN;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0, p1, p2}, Lc8/gN;->dispatchCallback(BLjava/lang/Object;)V

    .line 63
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lc8/gN;->handler:Landroid/os/Handler;

    new-instance v1, Lc8/fN;

    invoke-direct {v1, p0, p1, p2}, Lc8/fN;-><init>(Lc8/gN;BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private dispatchCallback(BLjava/lang/Object;)V
    .locals 10
    .param p1, "tag"    # B
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 67
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    .line 68
    :try_start_0
    move-object v0, p2

    check-cast v0, Lanetwork/channel/aidl/ParcelableHeader;

    move-object v2, v0

    .line 69
    .local v2, "header":Lanetwork/channel/aidl/ParcelableHeader;
    iget-object v4, p0, Lc8/gN;->listener:Lc8/sM;

    check-cast v4, Lc8/lM;

    invoke-virtual {v2}, Lanetwork/channel/aidl/ParcelableHeader;->getResponseCode()I

    move-result v5

    invoke-virtual {v2}, Lanetwork/channel/aidl/ParcelableHeader;->getHeader()Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lc8/gN;->mContext:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lc8/lM;->onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z

    .line 70
    const/4 v4, 0x1

    invoke-static {v4}, Lc8/KL;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    const-string/jumbo v4, "anet.ParcelableNetworkListenerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[onResponseCode]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .end local v2    # "header":Lanetwork/channel/aidl/ParcelableHeader;
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 74
    move-object v0, p2

    check-cast v0, Lanetwork/channel/aidl/DefaultProgressEvent;

    move-object v1, v0

    .line 75
    .local v1, "event":Lanetwork/channel/aidl/DefaultProgressEvent;
    if-eqz v1, :cond_2

    .line 76
    iget-object v4, p0, Lc8/gN;->mContext:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lanetwork/channel/aidl/DefaultProgressEvent;->setContext(Ljava/lang/Object;)V

    .line 78
    :cond_2
    iget-object v4, p0, Lc8/gN;->listener:Lc8/sM;

    check-cast v4, Lc8/kM;

    iget-object v5, p0, Lc8/gN;->mContext:Ljava/lang/Object;

    invoke-interface {v4, v1, v5}, Lc8/kM;->onDataReceived(Lc8/oM;Ljava/lang/Object;)V

    .line 79
    const/4 v4, 0x1

    invoke-static {v4}, Lc8/KL;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    const-string/jumbo v4, "anet.ParcelableNetworkListenerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[onDataReceived]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v1    # "event":Lanetwork/channel/aidl/DefaultProgressEvent;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "anet.ParcelableNetworkListenerWrapper"

    const-string/jumbo v5, "dispatchCallback error"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v9, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_3
    if-ne p1, v5, :cond_5

    .line 83
    :try_start_1
    move-object v0, p2

    check-cast v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    move-object v1, v0

    .line 84
    .local v1, "event":Lanetwork/channel/aidl/DefaultFinishEvent;
    if-eqz v1, :cond_4

    .line 85
    iget-object v4, p0, Lc8/gN;->mContext:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lanetwork/channel/aidl/DefaultFinishEvent;->setContext(Ljava/lang/Object;)V

    .line 87
    :cond_4
    iget-object v4, p0, Lc8/gN;->listener:Lc8/sM;

    check-cast v4, Lc8/iM;

    iget-object v5, p0, Lc8/gN;->mContext:Ljava/lang/Object;

    invoke-interface {v4, v1, v5}, Lc8/iM;->onFinished(Lc8/nM;Ljava/lang/Object;)V

    .line 88
    const/4 v4, 0x1

    invoke-static {v4}, Lc8/KL;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    const-string/jumbo v4, "anet.ParcelableNetworkListenerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[onFinished]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 91
    .end local v1    # "event":Lanetwork/channel/aidl/DefaultFinishEvent;
    :cond_5
    const/16 v4, 0x8

    if-ne p1, v4, :cond_0

    .line 92
    move-object v0, p2

    check-cast v0, Lc8/PM;

    move-object v3, v0

    .line 93
    .local v3, "inputStream":Lc8/PM;
    iget-object v4, p0, Lc8/gN;->listener:Lc8/sM;

    check-cast v4, Lc8/jM;

    iget-object v5, p0, Lc8/gN;->mContext:Ljava/lang/Object;

    invoke-interface {v4, v3, v5}, Lc8/jM;->onInputStreamGet(Lc8/PM;Ljava/lang/Object;)V

    .line 94
    const/4 v4, 0x1

    invoke-static {v4}, Lc8/KL;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    const-string/jumbo v4, "anet.ParcelableNetworkListenerWrapper"

    const-string/jumbo v5, "[onInputStreamReceived]"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public getListener()Lc8/sM;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lc8/gN;->listener:Lc8/sM;

    return-object v0
.end method

.method public getListenerState()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    iget-byte v0, p0, Lc8/gN;->state:B

    return v0
.end method

.method public onDataReceived(Lanetwork/channel/aidl/DefaultProgressEvent;)V
    .locals 1
    .param p1, "event"    # Lanetwork/channel/aidl/DefaultProgressEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-byte v0, p0, Lc8/gN;->state:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lc8/gN;->dispatch(BLjava/lang/Object;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onFinished(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .locals 2
    .param p1, "event"    # Lanetwork/channel/aidl/DefaultFinishEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-byte v0, p0, Lc8/gN;->state:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lc8/gN;->dispatch(BLjava/lang/Object;)V

    .line 116
    :cond_0
    iput-object v1, p0, Lc8/gN;->listener:Lc8/sM;

    .line 117
    iput-object v1, p0, Lc8/gN;->mContext:Ljava/lang/Object;

    .line 118
    iput-object v1, p0, Lc8/gN;->handler:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method public onInputStreamGet(Lc8/PM;)V
    .locals 1
    .param p1, "inputStream"    # Lc8/PM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    iget-byte v0, p0, Lc8/gN;->state:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 133
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lc8/gN;->dispatch(BLjava/lang/Object;)V

    .line 135
    :cond_0
    return-void
.end method

.method public onResponseCode(ILanetwork/channel/aidl/ParcelableHeader;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "header"    # Lanetwork/channel/aidl/ParcelableHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    iget-byte v0, p0, Lc8/gN;->state:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lc8/gN;->dispatch(BLjava/lang/Object;)V

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
