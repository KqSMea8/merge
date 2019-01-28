.class public abstract Lcom/taobao/accs/net/BaseConnection;
.super Ljava/lang/Object;
.source "BaseConnection.java"


# static fields
.field public static final ACCS_RECEIVE_TIMEOUT:I = 0x9c40

.field protected static final CONNECTED:I = 0x1

.field protected static final CONNECTING:I = 0x2

.field protected static final DISCONNECTED:I = 0x3

.field protected static final DISCONNECTING:I = 0x4

.field protected static final FRAME_TYPE:I = 0xc8

.field public static final INAPP:I = 0x1

.field protected static final MAX_DATA_SIZE:I = 0x4000

.field protected static final MAX_QUEUE_SIZE:I = 0x3e8

.field protected static final RESEND_ACK_DELAY:I = 0x1388

.field protected static final RESEND_DELAY:I = 0x7d0

.field public static final SERVICE:I


# instance fields
.field protected mAckMessage:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field public mAppkey:Ljava/lang/String;

.field protected volatile mAwcnInited:Z

.field public mClientManager:Lcom/taobao/accs/client/ClientManager;

.field public mConfig:Lcom/taobao/accs/AccsClientConfig;

.field public mConfigTag:Ljava/lang/String;

.field protected mConnToken:Ljava/lang/String;

.field protected mConnectionType:I

.field protected mContext:Landroid/content/Context;

.field private mExpectSendTime:J

.field protected mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

.field private mPingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mPingTimeoutRunnable:Ljava/lang/Runnable;

.field protected mTimeoutMsgNum:I

.field public mTtid:Ljava/lang/String;

.field protected mUtdid:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "configTag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mAppkey:Ljava/lang/String;

    .line 69
    iput v5, p0, Lcom/taobao/accs/net/BaseConnection;->mTimeoutMsgNum:I

    .line 83
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/taobao/accs/net/BaseConnection;->mExpectSendTime:J

    .line 85
    iput-boolean v5, p0, Lcom/taobao/accs/net/BaseConnection;->mAwcnInited:Z

    .line 93
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mConnToken:Ljava/lang/String;

    .line 95
    new-instance v2, Lcom/taobao/accs/net/BaseConnection$1;

    invoke-direct {v2, p0}, Lcom/taobao/accs/net/BaseConnection$1;-><init>(Lcom/taobao/accs/net/BaseConnection;)V

    iput-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mAckMessage:Ljava/util/LinkedHashMap;

    .line 107
    iput p2, p0, Lcom/taobao/accs/net/BaseConnection;->mConnectionType:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {p3}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v0

    .line 111
    .local v0, "accsConfig":Lcom/taobao/accs/AccsClientConfig;
    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "BaseConnection config null!!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :try_start_0
    new-instance v2, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct {v2}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    invoke-static {p1}, Lcom/taobao/accs/ACCSManager;->getDefaultAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;
    :try_end_0
    .catch Lcom/taobao/accs/AccsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    .line 122
    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mAppkey:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    .line 124
    new-instance v2, Lcom/taobao/accs/data/MessageHandler;

    invoke-direct {v2, p1, p0}, Lcom/taobao/accs/data/MessageHandler;-><init>(Landroid/content/Context;Lcom/taobao/accs/net/BaseConnection;)V

    iput-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    .line 125
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget v3, p0, Lcom/taobao/accs/net/BaseConnection;->mConnectionType:I

    iput v3, v2, Lcom/taobao/accs/data/MessageHandler;->mConnectType:I

    .line 127
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/taobao/accs/net/BaseConnection$2;

    invoke-direct {v3, p0}, Lcom/taobao/accs/net/BaseConnection$2;-><init>(Lcom/taobao/accs/net/BaseConnection;)V

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 136
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Lcom/taobao/accs/AccsException;
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "BaseConnection build config"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected buildAuthUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xdd

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 433
    iget-object v6, p0, Lcom/taobao/accs/net/BaseConnection;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "deviceId":Ljava/lang/String;
    move-object v3, v1

    .line 436
    .local v3, "encodedDeviceId":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 442
    :goto_0
    iget-object v6, p0, Lcom/taobao/accs/net/BaseConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v10}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/accs/net/BaseConnection;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-static {v6, v9, v10, v11, v12}, Lcom/taobao/accs/utl/UtilityImpl;->getAppsign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "appSign":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 446
    .local v4, "url":Ljava/lang/StringBuilder;
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "auth?1="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&2="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&3="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v6, p0, Lcom/taobao/accs/net/BaseConnection;->mConnToken:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 451
    const-string/jumbo v6, "&4="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/taobao/accs/net/BaseConnection;->mConnToken:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_0
    const-string/jumbo v6, "&5="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/taobao/accs/net/BaseConnection;->mConnectionType:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&6="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/taobao/accs/net/BaseConnection;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/taobao/accs/utl/UtilityImpl;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&7="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/taobao/accs/net/BaseConnection;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/taobao/accs/utl/UtilityImpl;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&8="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v6, p0, Lcom/taobao/accs/net/BaseConnection;->mConnectionType:I

    if-ne v6, v8, :cond_1

    const-string/jumbo v6, "1.1.2"

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&9="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&10="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&11="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&12="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/taobao/accs/net/BaseConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&13="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/taobao/accs/net/BaseConnection;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/taobao/accs/utl/UtilityImpl;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&14="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/taobao/accs/net/BaseConnection;->mTtid:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&15="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&16="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "&17="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    const-string/jumbo v6, "&19="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->isSecurityOff()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "urlString":Ljava/lang/String;
    return-object v5

    .line 437
    .end local v0    # "appSign":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/StringBuilder;
    .end local v5    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 438
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "encode"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v6, v9, v2, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 453
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "appSign":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/StringBuilder;
    :cond_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_1

    :cond_2
    move v6, v8

    .line 466
    goto :goto_2
.end method

.method public abstract cancel(Ljava/lang/String;)Z
.end method

.method protected cancelPingTimeOut()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mPingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mPingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 325
    :cond_0
    return-void
.end method

.method public abstract close()V
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getChannelState()I
.end method

.method public getClientManager()Lcom/taobao/accs/client/ClientManager;
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mClientManager:Lcom/taobao/accs/client/ClientManager;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Lcom/taobao/accs/client/ClientManager;

    iget-object v1, p0, Lcom/taobao/accs/net/BaseConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/client/ClientManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mClientManager:Lcom/taobao/accs/client/ClientManager;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mClientManager:Lcom/taobao/accs/client/ClientManager;

    return-object v0
.end method

.method public getHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preUnit"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v4, p0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v4}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "host":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo p2, ""

    .end local p2    # "preUnit":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 343
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    .end local v2    # "result":Ljava/lang/String;
    .restart local p2    # "preUnit":Ljava/lang/String;
    :cond_1
    move-object v4, p2

    .line 333
    goto :goto_0

    .line 340
    .end local p2    # "preUnit":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 341
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "InAppConnection"

    const-string/jumbo v5, "getHost"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected getMaxTimeOutData()I
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method protected getStatus(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 140
    packed-switch p1, :pswitch_data_0

    .line 154
    const-string/jumbo v0, "DISCONNECTED"

    .line 158
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 142
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "CONNECTED"

    .line 143
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 145
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "CONNECTING"

    .line 146
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 148
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "DISCONNECTED"

    .line 149
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 151
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "DISCONNECTING"

    .line 152
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected initAwcn(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 353
    :try_start_0
    sget-object v2, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    .line 354
    .local v2, "env":Lanet/channel/entity/ENV;
    sget v5, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 355
    sget-object v2, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    .line 356
    invoke-static {v2}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V

    .line 362
    :cond_0
    :goto_0
    new-instance v5, Lc8/QI;

    invoke-direct {v5}, Lc8/QI;-><init>()V

    iget-object v6, p0, Lcom/taobao/accs/net/BaseConnection;->mAppkey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc8/QI;->setAppkey(Ljava/lang/String;)Lc8/QI;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v6}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/QI;->setAppSecret(Ljava/lang/String;)Lc8/QI;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v6}, Lcom/taobao/accs/AccsClientConfig;->getAuthCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/QI;->setAuthCode(Ljava/lang/String;)Lc8/QI;

    move-result-object v5

    invoke-virtual {v5, v2}, Lc8/QI;->setEnv(Lanet/channel/entity/ENV;)Lc8/QI;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v6}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/QI;->setTag(Ljava/lang/String;)Lc8/QI;

    move-result-object v0

    .line 369
    .local v0, "builder":Lc8/QI;
    invoke-virtual {v0}, Lc8/QI;->build()Lc8/RI;

    move-result-object v1

    .line 370
    .local v1, "config":Lc8/RI;
    invoke-static {p1, v1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Lc8/RI;)V

    .line 371
    const-string/jumbo v3, "acs"

    .line 372
    .local v3, "pubkey":Ljava/lang/String;
    iget-object v5, p0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v5}, Lcom/taobao/accs/AccsClientConfig;->getInappPubKey()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v5}, Lcom/taobao/accs/AccsClientConfig;->getInappPubKey()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_2

    .line 373
    :cond_1
    const-string/jumbo v3, "open"

    .line 375
    :cond_2
    invoke-static {}, Lc8/jL;->getInstance()Lc8/jL;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v6}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "http2"

    const-string/jumbo v8, "0rtt"

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lc8/jL;->registerConnProtocol(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V

    .line 381
    .end local v0    # "builder":Lc8/QI;
    .end local v1    # "config":Lc8/RI;
    .end local v2    # "env":Lanet/channel/entity/ENV;
    .end local v3    # "pubkey":Ljava/lang/String;
    :goto_1
    return-void

    .line 357
    .restart local v2    # "env":Lanet/channel/entity/ENV;
    :cond_3
    sget v5, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 358
    sget-object v2, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    .line 359
    invoke-static {v2}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    .end local v2    # "env":Lanet/channel/entity/ENV;
    :catch_0
    move-exception v4

    .line 378
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "initAwcn"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public abstract isAlive()Z
.end method

.method protected isKeepAlive()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public isSecurityOff()Z
    .locals 3

    .prologue
    .line 473
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getSecurity()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 474
    .local v0, "secoff":Z
    :goto_0
    return v0

    .line 473
    .end local v0    # "secoff":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract notifyNetWorkChange(Ljava/lang/String;)V
.end method

.method public onResult(Lcom/taobao/accs/data/Message;I)V
    .locals 1
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "errorCode"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 385
    return-void
.end method

.method protected abstract onTimeOut(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ping(ZZ)V
.end method

.method protected reSend(Lcom/taobao/accs/data/Message;I)Z
    .locals 9
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "delay"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "result":Z
    :try_start_0
    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    move v1, v0

    .line 286
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .line 268
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_0
    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    .line 269
    int-to-long v4, p2

    iput-wide v4, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    .line 270
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reSend dataid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " retryTimes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/taobao/accs/net/BaseConnection;->send(Lcom/taobao/accs/data/Message;Z)V

    .line 272
    const/4 v0, 0x1

    .line 273
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 274
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    .line 275
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    .line 276
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v3

    iget v4, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    iput v4, v3, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->retry_times:I

    .line 278
    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    if-ne v3, v6, :cond_1

    .line 279
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "resend"

    const-string/jumbo v5, "total"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v1, v0

    .line 286
    .restart local v1    # "result":I
    goto :goto_0

    .line 282
    .end local v1    # "result":I
    :catch_0
    move-exception v2

    .line 283
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/4 v4, -0x8

    invoke-virtual {v3, p1, v4}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 284
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "reSend error"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected reSendAck(I)V
    .locals 6
    .param p1, "dataId"    # I

    .prologue
    .line 291
    if-gez p1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reSendAck"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "dataId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v1, p0, Lcom/taobao/accs/net/BaseConnection;->mAckMessage:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 294
    .local v0, "reqMsg":Lcom/taobao/accs/data/Message;
    if-eqz v0, :cond_0

    .line 295
    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/taobao/accs/net/BaseConnection;->reSend(Lcom/taobao/accs/data/Message;I)Z

    .line 296
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "resend"

    const-string/jumbo v3, "ack"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 299
    .end local v0    # "reqMsg":Lcom/taobao/accs/data/Message;
    :cond_0
    return-void
.end method

.method public send(Lcom/taobao/accs/data/Message;Z)V
    .locals 8
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "connectIfNeeded"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 186
    const-wide/16 v0, 0x0

    .line 187
    .local v0, "delay":J
    iget-boolean v2, p1, Lcom/taobao/accs/data/Message;->isAck:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no network:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/16 v3, -0xd

    invoke-virtual {v2, p1, v3}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 240
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v2

    if-eq v2, v7, :cond_1

    .line 194
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    iget-object v2, v2, Lcom/taobao/accs/data/MessageHandler;->mFlowControl:Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->bizId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/taobao/accs/flowcontrol/FlowControl;->getFlowCtrlDelay(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 196
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servier limit high. dataId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const v3, 0x11185

    invoke-virtual {v2, p1, v3}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 202
    :cond_2
    const-wide/16 v2, -0x3e8

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "servier limit high for brush. dataId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const v3, 0x11187

    invoke-virtual {v2, p1, v3}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 208
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/taobao/accs/net/BaseConnection;->mExpectSendTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 210
    iput-wide v0, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    .line 214
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/taobao/accs/net/BaseConnection;->mExpectSendTime:J

    .line 215
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send message, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/taobao/accs/data/Message$MsgType;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dataId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_4
    :goto_2
    :try_start_0
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mUtdid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 226
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mUtdid:Ljava/lang/String;

    .line 229
    :cond_5
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->isTimeOut()Z

    move-result v2

    if-nez v2, :cond_9

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/taobao/accs/net/BaseConnection;->sendMessage(Lcom/taobao/accs/data/Message;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 235
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const v3, 0x11178

    invoke-virtual {v2, p1, v3}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 236
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "msg queue full"

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "size"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 212
    :cond_6
    iget-wide v2, p0, Lcom/taobao/accs/net/BaseConnection;->mExpectSendTime:J

    add-long/2addr v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    goto/16 :goto_1

    .line 218
    :cond_7
    const-string/jumbo v2, "accs"

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 219
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send message, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/taobao/accs/data/Message$MsgType;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dataId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 220
    :cond_8
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send message, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/taobao/accs/data/Message$MsgType;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/taobao/accs/data/Message;->delyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dataId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 232
    :cond_9
    :try_start_1
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/16 v3, -0x9

    invoke-virtual {v2, p1, v3}, Lcom/taobao/accs/data/MessageHandler;->onResult(Lcom/taobao/accs/data/Message;I)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected abstract sendMessage(Lcom/taobao/accs/data/Message;Z)V
.end method

.method protected setPingTimeOut()V
    .locals 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mPingTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/taobao/accs/net/BaseConnection$4;

    invoke-direct {v0, p0}, Lcom/taobao/accs/net/BaseConnection$4;-><init>(Lcom/taobao/accs/net/BaseConnection;)V

    iput-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mPingTimeoutRunnable:Ljava/lang/Runnable;

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->cancelPingTimeOut()V

    .line 318
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/BaseConnection;->mPingTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x9c40

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mPingTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 319
    return-void
.end method

.method protected setTimeOut(Ljava/lang/String;J)V
    .locals 4
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 243
    new-instance v0, Lcom/taobao/accs/net/BaseConnection$3;

    invoke-direct {v0, p0, p1}, Lcom/taobao/accs/net/BaseConnection$3;-><init>(Lcom/taobao/accs/net/BaseConnection;Ljava/lang/String;)V

    .line 253
    .local v0, "timeoutRunalbe":Ljava/lang/Runnable;
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, p2, p3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 254
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public abstract start()V
.end method

.method public startChannelService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    :try_start_0
    new-instance v1, Lcom/taobao/accs/net/BaseConnection$5;

    invoke-direct {v1, p0, p1}, Lcom/taobao/accs/net/BaseConnection$5;-><init>(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;)V

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startChannelService"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract updateMonitorInfo()Lcom/taobao/accs/ut/statistics/MonitorStatistic;
.end method
