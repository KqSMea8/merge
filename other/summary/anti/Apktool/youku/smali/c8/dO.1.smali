.class public abstract Lc8/dO;
.super Lc8/WM;
.source "UnifiedNetworkDelegate.java"


# static fields
.field public static final DEGRADABLE:I = 0x1

.field public static final HTTP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "anet.UnifiedNetworkDelegate"


# instance fields
.field protected type:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lc8/WM;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lc8/dO;->type:I

    .line 39
    invoke-static {p1}, Lanetwork/channel/http/NetworkSdkSetting;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private asyncSend(Lc8/HN;Lc8/SM;)Lc8/LM;
    .locals 3
    .param p1, "config"    # Lc8/HN;
    .param p2, "listener"    # Lc8/SM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lc8/hO;

    new-instance v1, Lc8/GN;

    invoke-direct {v1, p2, p1}, Lc8/GN;-><init>(Lc8/SM;Lc8/HN;)V

    invoke-direct {v0, p1, v1}, Lc8/hO;-><init>(Lc8/HN;Lc8/GN;)V

    .line 60
    .local v0, "task":Lc8/hO;
    new-instance v1, Lc8/dN;

    invoke-virtual {v0}, Lc8/hO;->request()Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/dN;-><init>(Ljava/util/concurrent/Future;)V

    return-object v1
.end method

.method private convertToSync(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 10
    .param p1, "request"    # Lanetwork/channel/aidl/ParcelableRequest;

    .prologue
    .line 79
    new-instance v7, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {v7}, Lanetwork/channel/aidl/NetworkResponse;-><init>()V

    .line 81
    .local v7, "networkResponse":Lanetwork/channel/aidl/NetworkResponse;
    :try_start_0
    invoke-virtual {p0, p1}, Lc8/dO;->getConnection(Lanetwork/channel/aidl/ParcelableRequest;)Lc8/yM;

    move-result-object v2

    check-cast v2, Lc8/YM;

    .line 82
    .local v2, "connDelegate":Lc8/YM;
    invoke-virtual {v2}, Lc8/YM;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lanetwork/channel/aidl/NetworkResponse;->setStatusCode(I)V

    .line 83
    invoke-virtual {v2}, Lc8/YM;->getConnHeadFields()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8}, Lanetwork/channel/aidl/NetworkResponse;->setConnHeadFields(Ljava/util/Map;)V

    .line 85
    invoke-virtual {v2}, Lc8/YM;->getInputStream()Lc8/PM;

    move-result-object v6

    .line 86
    .local v6, "is":Lc8/PM;
    if-eqz v6, :cond_2

    .line 87
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Lc8/YM;->getInputStream()Lc8/PM;

    move-result-object v8

    invoke-interface {v8}, Lc8/PM;->length()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 88
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lc8/uJ;->getInstance()Lc8/uJ;

    move-result-object v8

    const/16 v9, 0x800

    invoke-virtual {v8, v9}, Lc8/uJ;->retrieve(I)Lanet/channel/bytes/ByteArray;

    move-result-object v1

    .line 90
    .local v1, "byteArray":Lanet/channel/bytes/ByteArray;
    :goto_0
    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v8

    invoke-interface {v6, v8}, Lc8/PM;->read([B)I

    move-result v3

    .local v3, "count":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 91
    invoke-virtual {v1}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 97
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "byteArray":Lanet/channel/bytes/ByteArray;
    .end local v2    # "connDelegate":Lc8/YM;
    .end local v3    # "count":I
    .end local v6    # "is":Lc8/PM;
    :catch_0
    move-exception v4

    .line 98
    .local v4, "e":Landroid/os/RemoteException;
    const/16 v8, -0x67

    invoke-virtual {v7, v8}, Lanetwork/channel/aidl/NetworkResponse;->setStatusCode(I)V

    .line 99
    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "errMsg":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 101
    invoke-virtual {v7}, Lanetwork/channel/aidl/NetworkResponse;->getDesc()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-static {v8, v9, v5}, Lc8/cM;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lanetwork/channel/aidl/NetworkResponse;->setDesc(Ljava/lang/String;)V

    .line 106
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "errMsg":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v7

    .line 93
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteArray":Lanet/channel/bytes/ByteArray;
    .restart local v2    # "connDelegate":Lc8/YM;
    .restart local v3    # "count":I
    .restart local v6    # "is":Lc8/PM;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lanetwork/channel/aidl/NetworkResponse;->setBytedata([B)V

    .line 95
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "byteArray":Lanet/channel/bytes/ByteArray;
    .end local v3    # "count":I
    :cond_2
    invoke-virtual {v2}, Lc8/YM;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v8

    invoke-virtual {v7, v8}, Lanetwork/channel/aidl/NetworkResponse;->setStatisticData(Lanetwork/channel/statist/StatisticData;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 104
    .end local v2    # "connDelegate":Lc8/YM;
    .end local v6    # "is":Lc8/PM;
    :catch_1
    move-exception v8

    const/16 v8, -0xc9

    invoke-virtual {v7, v8}, Lanetwork/channel/aidl/NetworkResponse;->setStatusCode(I)V

    goto :goto_1
.end method


# virtual methods
.method public asyncSend(Lanetwork/channel/aidl/ParcelableRequest;Lc8/SM;)Lc8/LM;
    .locals 5
    .param p1, "request"    # Lanetwork/channel/aidl/ParcelableRequest;
    .param p2, "listener"    # Lc8/SM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    new-instance v1, Lc8/HN;

    iget v2, p0, Lc8/dO;->type:I

    invoke-direct {v1, p1, v2}, Lc8/HN;-><init>(Lanetwork/channel/aidl/ParcelableRequest;I)V

    invoke-direct {p0, v1, p2}, Lc8/dO;->asyncSend(Lc8/HN;Lc8/SM;)Lc8/LM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "anet.UnifiedNetworkDelegate"

    const-string/jumbo v2, "asyncSend failed"

    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->getSeqNo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 54
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConnection(Lanetwork/channel/aidl/ParcelableRequest;)Lc8/yM;
    .locals 8
    .param p1, "request"    # Lanetwork/channel/aidl/ParcelableRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    new-instance v0, Lc8/HN;

    iget v4, p0, Lc8/dO;->type:I

    invoke-direct {v0, p1, v4}, Lc8/HN;-><init>(Lanetwork/channel/aidl/ParcelableRequest;I)V

    .line 67
    .local v0, "config":Lc8/HN;
    new-instance v1, Lc8/YM;

    invoke-direct {v1, v0}, Lc8/YM;-><init>(Lc8/HN;)V

    .line 68
    .local v1, "connDelegate":Lc8/YM;
    new-instance v3, Lc8/gN;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5}, Lc8/gN;-><init>(Lc8/sM;Landroid/os/Handler;Ljava/lang/Object;)V

    .line 70
    .local v3, "listenerWrapper":Lc8/gN;
    invoke-direct {p0, v0, v3}, Lc8/dO;->asyncSend(Lc8/HN;Lc8/SM;)Lc8/LM;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc8/YM;->setFuture(Lc8/LM;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-object v1

    .line 72
    .end local v0    # "config":Lc8/HN;
    .end local v1    # "connDelegate":Lc8/YM;
    .end local v3    # "listenerWrapper":Lc8/gN;
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "anet.UnifiedNetworkDelegate"

    const-string/jumbo v5, "asyncSend failed"

    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->getSeqNo()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v2, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 74
    new-instance v4, Landroid/os/RemoteException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public syncSend(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 1
    .param p1, "request"    # Lanetwork/channel/aidl/ParcelableRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lc8/dO;->convertToSync(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object v0

    return-object v0
.end method
