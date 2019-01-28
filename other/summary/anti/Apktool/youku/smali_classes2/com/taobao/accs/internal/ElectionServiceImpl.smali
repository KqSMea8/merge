.class public abstract Lcom/taobao/accs/internal/ElectionServiceImpl;
.super Ljava/lang/Object;
.source "ElectionServiceImpl.java"

# interfaces
.implements Lcom/taobao/accs/base/IBaseService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/internal/ElectionServiceImpl$6;
    }
.end annotation


# static fields
.field public static final ELECTION_KEY_BLACKLIST:Ljava/lang/String; = "blacklist"

.field public static final ELECTION_KEY_HOST:Ljava/lang/String; = "host"

.field public static final ELECTION_KEY_SDKVS:Ljava/lang/String; = "sdkvs"

.field public static final ELECTION_KEY_VERSION:Ljava/lang/String; = "elversion"

.field public static final ELECTION_SERVICE_ID:Ljava/lang/String; = "accs_election"

.field public static final ELE_ERROR_EXCEPTION:I = -0x385

.field public static final ELE_ERROR_SERVER:I = -0x384

.field public static final ELE_LIST_NULL:I = -0x386

.field private static final MAX_ELECTION_TIMES:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ElectionServiceImpl"

.field private static electionPackCount:I

.field private static isPing:Z

.field protected static mConnections:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/net/BaseConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isElectioning:Z

.field private isHandleServerElection:Z

.field private isReportComplete:Z

.field private mBaseService:Landroid/app/Service;

.field private mContext:Landroid/content/Context;

.field private mDataListener:Lcom/taobao/accs/base/AccsAbstractDataListener;

.field private mElectionResult:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

.field private mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

.field private mReportTimeOutTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mServerElecionTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

.field private mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private packMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private resultBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    sput v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->electionPackCount:I

    .line 60
    sput-boolean v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isPing:Z

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .locals 3
    .param p1, "service"    # Landroid/app/Service;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isElectioning:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->resultBack:Z

    .line 54
    iput-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    .line 62
    iput-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mBaseService:Landroid/app/Service;

    .line 383
    new-instance v0, Lcom/taobao/accs/internal/ElectionServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/internal/ElectionServiceImpl$1;-><init>(Lcom/taobao/accs/internal/ElectionServiceImpl;)V

    iput-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mDataListener:Lcom/taobao/accs/base/AccsAbstractDataListener;

    .line 654
    iput-boolean v1, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isReportComplete:Z

    .line 655
    iput-boolean v1, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isHandleServerElection:Z

    .line 90
    iput-object p1, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mBaseService:Landroid/app/Service;

    .line 91
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    .line 93
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 94
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v0

    const-class v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v0, v1}, Lc8/sJ;->register(Ljava/lang/Class;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/accs/internal/ElectionServiceImpl;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/internal/ElectionServiceImpl;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/internal/ElectionServiceImpl;->handleServerElectionResult([BI)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/accs/internal/ElectionServiceImpl;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/internal/ElectionServiceImpl;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElecionTask:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isPing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/accs/internal/ElectionServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/internal/ElectionServiceImpl;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/accs/internal/ElectionServiceImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/internal/ElectionServiceImpl;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/taobao/accs/internal/ElectionServiceImpl;->selectAppToElection(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/accs/internal/ElectionServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/internal/ElectionServiceImpl;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->resultBack:Z

    return v0
.end method

.method static synthetic access$600(Lcom/taobao/accs/internal/ElectionServiceImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/internal/ElectionServiceImpl;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/taobao/accs/internal/ElectionServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/internal/ElectionServiceImpl;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->onReportComplete()V

    return-void
.end method

.method protected static getConnection(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/taobao/accs/net/BaseConnection;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configTag"    # Ljava/lang/String;
    .param p2, "start"    # Z
    .param p3, "command"    # I

    .prologue
    const/4 v12, 0x0

    .line 415
    const/4 v2, 0x0

    .line 418
    .local v2, "connection":Lcom/taobao/accs/net/BaseConnection;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 419
    const-string/jumbo v7, "ElectionServiceImpl"

    const-string/jumbo v8, "getConnection configTag null or env invalid"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "command"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "conns:"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Lcom/taobao/accs/internal/ElectionServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    sget-object v7, Lcom/taobao/accs/internal/ElectionServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 421
    sget-object v7, Lcom/taobao/accs/internal/ElectionServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/taobao/accs/net/BaseConnection;

    move-object v2, v0

    :cond_0
    move-object v7, v2

    .line 451
    :goto_0
    return-object v7

    .line 425
    :cond_1
    const-string/jumbo v7, "ElectionServiceImpl"

    const-string/jumbo v8, "getConnection"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "configTag"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    invoke-static {p1}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v1

    .line 427
    .local v1, "accsConfig":Lcom/taobao/accs/AccsClientConfig;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getDisableChannel()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 428
    const-string/jumbo v7, "ElectionServiceImpl"

    const-string/jumbo v8, "channel disabled!"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "configTag"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    const/4 v7, 0x0

    goto :goto_0

    .line 432
    :cond_2
    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->getMode(Landroid/content/Context;)I

    move-result v5

    .line 433
    .local v5, "mode":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "key":Ljava/lang/String;
    sget-object v7, Lcom/taobao/accs/internal/ElectionServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/taobao/accs/net/BaseConnection;

    move-object v2, v0

    .line 435
    if-nez v2, :cond_4

    .line 436
    sput v5, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    .line 437
    new-instance v3, Lcom/taobao/accs/net/SpdyConnection;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7, p1}, Lcom/taobao/accs/net/SpdyConnection;-><init>(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v2    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .local v3, "connection":Lcom/taobao/accs/net/BaseConnection;
    if-eqz p2, :cond_3

    .line 439
    :try_start_1
    invoke-virtual {v3}, Lcom/taobao/accs/net/BaseConnection;->start()V

    .line 441
    :cond_3
    sget-object v7, Lcom/taobao/accs/internal/ElectionServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    const/16 v8, 0xa

    if-ge v7, v8, :cond_5

    .line 442
    sget-object v7, Lcom/taobao/accs/internal/ElectionServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .end local v1    # "accsConfig":Lcom/taobao/accs/AccsClientConfig;
    .end local v3    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "mode":I
    .restart local v2    # "connection":Lcom/taobao/accs/net/BaseConnection;
    :cond_4
    :goto_1
    move-object v7, v2

    .line 451
    goto :goto_0

    .line 444
    .end local v2    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .restart local v1    # "accsConfig":Lcom/taobao/accs/AccsClientConfig;
    .restart local v3    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "mode":I
    :cond_5
    const-string/jumbo v7, "ElectionServiceImpl"

    const-string/jumbo v8, "to many conns!!!"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .end local v3    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .restart local v2    # "connection":Lcom/taobao/accs/net/BaseConnection;
    goto :goto_1

    .line 447
    .end local v1    # "accsConfig":Lcom/taobao/accs/AccsClientConfig;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "mode":I
    :catch_0
    move-exception v6

    .line 448
    .local v6, "t":Ljava/lang/Throwable;
    :goto_2
    const-string/jumbo v7, "ElectionServiceImpl"

    const-string/jumbo v8, "getConnection"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v7, v8, v6, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 447
    .end local v2    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v1    # "accsConfig":Lcom/taobao/accs/AccsClientConfig;
    .restart local v3    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "mode":I
    :catch_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .restart local v2    # "connection":Lcom/taobao/accs/net/BaseConnection;
    goto :goto_2
.end method

.method private handleResult(Ljava/lang/String;)V
    .locals 10
    .param p1, "sudoPack"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 770
    :try_start_0
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mElectionResult:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    if-nez v4, :cond_0

    .line 771
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionResult(Landroid/content/Context;)Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mElectionResult:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    .line 773
    :cond_0
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mElectionResult:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    iput-object p1, v4, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->host:Ljava/lang/String;

    .line 774
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mElectionResult:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    iget v5, v4, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->retry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->retry:I

    .line 775
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mElectionResult:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    invoke-static {v4, v5}, Lcom/taobao/accs/election/ElectionServiceUtil;->saveElectionResult(Landroid/content/Context;Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;)V

    .line 776
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "handleResult notify result"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "packMap"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 778
    .local v2, "pack":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 779
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFilter()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .local v1, "noticeIntent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const-string/jumbo v4, "operate"

    sget-object v5, Lcom/taobao/accs/common/Constants$Operate;->RESULT_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 782
    const-string/jumbo v4, "sudoPack"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    const-string/jumbo v4, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 785
    :try_start_1
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 786
    :catch_0
    move-exception v3

    .line 787
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "handleResult startService"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 792
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "noticeIntent":Landroid/content/Intent;
    .end local v2    # "pack":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 793
    .restart local v3    # "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "handleResult"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 796
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method private handleServerElectionResult([BI)V
    .locals 13
    .param p1, "data"    # [B
    .param p2, "errorCode"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 712
    iget-boolean v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isHandleServerElection:Z

    if-eqz v8, :cond_1

    .line 713
    const-string/jumbo v7, "ElectionServiceImpl"

    const-string/jumbo v8, "server election handled, return"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    iput-boolean v7, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isHandleServerElection:Z

    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, "host":Ljava/lang/String;
    const/4 v4, 0x0

    .line 720
    .local v4, "needLocal":Z
    const/16 v8, 0xc8

    if-ne p2, v8, :cond_2

    if-nez p1, :cond_6

    .line 721
    :cond_2
    :try_start_0
    const-string/jumbo v8, "ElectionServiceImpl"

    const-string/jumbo v9, "handleServerElectionResult fail, start local election"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "error"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    const/16 v8, 0xc9

    if-eq p2, v8, :cond_3

    .line 724
    const/4 v4, 0x1

    .line 726
    :cond_3
    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v8, :cond_4

    .line 727
    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput p2, v8, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 728
    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const-string/jumbo v9, "server status error"

    iput-object v9, v8, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 756
    invoke-direct {p0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->localElection()Ljava/lang/String;

    move-result-object v0

    .line 758
    :cond_5
    invoke-direct {p0, v0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->handleResult(Ljava/lang/String;)V

    .line 759
    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v8, :cond_0

    .line 760
    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v4, :cond_d

    :goto_2
    iput v6, v8, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 761
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v6, v7}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    goto :goto_0

    .line 731
    :cond_6
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 732
    .local v1, "json":Ljava/lang/String;
    const-string/jumbo v8, "ElectionServiceImpl"

    const-string/jumbo v9, "handleServerElectionResult"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "json"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 734
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v8, "host"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 736
    const/4 v4, 0x1

    .line 738
    :cond_7
    const-string/jumbo v8, "blacklist"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 739
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 740
    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Lcom/taobao/accs/election/ElectionServiceUtil;->saveBlackList(Landroid/content/Context;[B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 747
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 748
    .local v5, "t":Ljava/lang/Throwable;
    const/4 v4, 0x1

    .line 749
    :try_start_2
    const-string/jumbo v8, "ElectionServiceImpl"

    const-string/jumbo v9, "handleServerElectionResult"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v5, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 750
    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v8, :cond_8

    .line 751
    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v9, -0x385

    iput v9, v8, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 752
    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 755
    :cond_8
    if-eqz v4, :cond_9

    .line 756
    invoke-direct {p0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->localElection()Ljava/lang/String;

    move-result-object v0

    .line 758
    :cond_9
    invoke-direct {p0, v0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->handleResult(Ljava/lang/String;)V

    .line 759
    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v8, :cond_0

    .line 760
    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v4, :cond_e

    :goto_3
    iput v6, v8, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 761
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v6, v7}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    goto/16 :goto_0

    .line 742
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v1    # "json":Ljava/lang/String;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    :cond_a
    :try_start_3
    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/taobao/accs/election/ElectionServiceUtil;->clearBlackList(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 755
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_b

    .line 756
    invoke-direct {p0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->localElection()Ljava/lang/String;

    move-result-object v0

    .line 758
    :cond_b
    invoke-direct {p0, v0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->handleResult(Ljava/lang/String;)V

    .line 759
    iget-object v9, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v9, :cond_c

    .line 760
    iget-object v9, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v4, :cond_f

    :goto_4
    iput v6, v9, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 761
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v6, v7}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    :cond_c
    throw v8

    :cond_d
    move v6, v7

    .line 760
    goto/16 :goto_2

    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_e
    move v6, v7

    goto :goto_3

    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_f
    move v6, v7

    goto :goto_4
.end method

.method private localElection()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    const/4 v3, 0x0

    .line 328
    .local v3, "sudoPack":Ljava/lang/String;
    const/4 v1, 0x0

    .line 329
    .local v1, "error":I
    const/4 v2, 0x0

    .line 332
    .local v2, "errorMsg":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 333
    iget-object v6, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    invoke-static {v6, v7}, Lcom/taobao/accs/election/ElectionServiceUtil;->localElection(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 339
    :goto_0
    const-string/jumbo v6, "ElectionServiceImpl"

    const-string/jumbo v7, "localElection"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "host"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v6, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v6, :cond_1

    .line 346
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 347
    iget-object v6, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v1, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 348
    iget-object v6, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object v2, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 350
    :cond_0
    iget-object v6, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    iput v4, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 351
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v4, v5}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 356
    :cond_1
    :goto_2
    return-object v3

    .line 335
    :cond_2
    const/16 v1, -0x386

    .line 336
    :try_start_1
    const-string/jumbo v2, "apps is null"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move v4, v5

    .line 350
    goto :goto_1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v6, "ElectionServiceImpl"

    const-string/jumbo v7, "localElection error"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v0, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 342
    const/16 v1, -0x385

    .line 343
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 345
    iget-object v6, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v6, :cond_1

    .line 346
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 347
    iget-object v6, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v1, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 348
    iget-object v6, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object v2, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 350
    :cond_4
    iget-object v6, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_3
    iput v4, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 351
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v4, v5}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    goto :goto_2

    :cond_5
    move v4, v5

    .line 350
    goto :goto_3

    .line 345
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v7, :cond_7

    .line 346
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 347
    iget-object v7, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v1, v7, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 348
    iget-object v7, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object v2, v7, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 350
    :cond_6
    iget-object v7, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    :goto_4
    iput v4, v7, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 351
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v4, v5}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    :cond_7
    throw v6

    :cond_8
    move v4, v5

    .line 350
    goto :goto_4
.end method

.method private onReportComplete()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 662
    :try_start_0
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mReportTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mReportTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 664
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mReportTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 666
    :cond_0
    iget-boolean v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isReportComplete:Z

    if-eqz v2, :cond_1

    .line 667
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v4, "reportcompleted, return"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    iput-boolean v3, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isElectioning:Z

    .line 707
    :goto_0
    return-void

    .line 670
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isReportComplete:Z

    .line 672
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v5, "onReportComplete"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 674
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    .line 676
    :cond_2
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xdd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 680
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v0, v2, v5

    .line 681
    .local v0, "sudoPack":Ljava/lang/String;
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v2, :cond_3

    .line 682
    iget-object v5, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    iput v2, v5, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 683
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v2

    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v2, v4}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 685
    :cond_3
    invoke-direct {p0, v0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->handleResult(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    .end local v0    # "sudoPack":Ljava/lang/String;
    :goto_2
    iput-boolean v3, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isElectioning:Z

    goto :goto_0

    .restart local v0    # "sudoPack":Ljava/lang/String;
    :cond_4
    move v2, v4

    .line 682
    goto :goto_1

    .line 688
    .end local v0    # "sudoPack":Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/taobao/accs/internal/ElectionServiceImpl;->serverElection(Ljava/util/Map;)V

    .line 689
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isHandleServerElection:Z

    .line 690
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v4, Lcom/taobao/accs/internal/ElectionServiceImpl$5;

    invoke-direct {v4, p0}, Lcom/taobao/accs/internal/ElectionServiceImpl$5;-><init>(Lcom/taobao/accs/internal/ElectionServiceImpl;)V

    const-wide/16 v6, 0x14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElecionTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 699
    :catch_0
    move-exception v1

    .line 700
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_3
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v2, :cond_6

    .line 701
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v4, -0x385

    iput v4, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 702
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 704
    :cond_6
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v4, "onReportComplete"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v1, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 706
    iput-boolean v3, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isElectioning:Z

    goto/16 :goto_0

    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isElectioning:Z

    throw v2
.end method

.method private selectAppToElection(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "startReason"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 526
    invoke-static {p1}, Lcom/taobao/accs/election/ElectionServiceUtil;->getResolveService(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "pack":Ljava/lang/String;
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v3, "selectAppToElection"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "pkg"

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    sput-boolean v6, Lcom/taobao/accs/election/ElectionServiceUtil;->tryElectionFail:Z

    .line 529
    iput-boolean v6, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->resultBack:Z

    .line 530
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFilter()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v1, "startIntent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 532
    const-string/jumbo v2, "operate"

    sget-object v3, Lcom/taobao/accs/common/Constants$Operate;->START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 533
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string/jumbo v2, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    :goto_0
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 544
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 546
    :cond_0
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/taobao/accs/internal/ElectionServiceImpl$3;

    invoke-direct {v3, p0, p1}, Lcom/taobao/accs/internal/ElectionServiceImpl$3;-><init>(Lcom/taobao/accs/internal/ElectionServiceImpl;Landroid/content/Context;)V

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 563
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 564
    return-void

    .line 537
    :cond_1
    const-string/jumbo v2, "operate"

    sget-object v3, Lcom/taobao/accs/common/Constants$Operate;->START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 538
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private serverElection(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "packs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 361
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v3, "serverElection start"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "packs"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    new-instance v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-direct {v2}, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;-><init>()V

    iput-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const-string/jumbo v3, "server"

    iput-object v3, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->type:Ljava/lang/String;

    .line 365
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iget-object v3, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iget-object v3, v3, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->reason:Ljava/lang/String;

    iput-object v3, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->reason:Ljava/lang/String;

    .line 368
    :cond_0
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v2

    const-string/jumbo v3, "accs_election"

    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mDataListener:Lcom/taobao/accs/base/AccsAbstractDataListener;

    invoke-virtual {v2, v3, v4}, Lcom/taobao/accs/client/GlobalClientInfo;->registerListener(Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string/jumbo v2, "packageName"

    iget-object v3, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string/jumbo v2, "command"

    const/16 v3, 0x69

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const-string/jumbo v2, "packs"

    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "packs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 374
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/taobao/accs/internal/ElectionServiceImpl;->onHostStartCommand(Landroid/content/Intent;II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v3, -0x385

    iput v3, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 377
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method private tryElection(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 462
    :try_start_0
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->isFirstStart(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 463
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "first start"

    invoke-direct {p0, v4, v5}, Lcom/taobao/accs/internal/ElectionServiceImpl;->selectAppToElection(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->setSdkStart(Landroid/content/Context;)V

    .line 517
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionResult(Landroid/content/Context;)Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    move-result-object v4

    iget-object v0, v4, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->host:Ljava/lang/String;

    .line 468
    .local v0, "currentElectionPack":Ljava/lang/String;
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "currentPack":Ljava/lang/String;
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "tryElection begin"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "isFirstStart"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/taobao/accs/utl/UtilityImpl;->isFirstStart(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "currentPack"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "currentElectionPack"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 472
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "host is empty, try selectAppToElection"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "host null"

    invoke-direct {p0, v4, v5}, Lcom/taobao/accs/internal/ElectionServiceImpl;->selectAppToElection(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    .end local v0    # "currentElectionPack":Ljava/lang/String;
    .end local v1    # "currentPack":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 513
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "tryElection error"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4, v5, v2, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 477
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "currentElectionPack":Ljava/lang/String;
    .restart local v1    # "currentPack":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-nez v4, :cond_2

    .line 479
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFilter()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v3, "pingIntent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string/jumbo v4, "operate"

    sget-object v5, Lcom/taobao/accs/common/Constants$Operate;->PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 482
    const-string/jumbo v4, "com.taobao.accs.ChannelService"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string/jumbo v4, "pingPack"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 485
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "tryElection send PING_ELECTION"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "to pkg"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 489
    :try_start_3
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/taobao/accs/internal/ElectionServiceImpl$2;

    invoke-direct {v5, p0, v0}, Lcom/taobao/accs/internal/ElectionServiceImpl$2;-><init>(Lcom/taobao/accs/internal/ElectionServiceImpl;Ljava/lang/String;)V

    const-wide/16 v6, 0x5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 486
    .end local v3    # "pingIntent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 487
    .restart local v2    # "e":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "tryElection startService error"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "currentElectionPack"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 489
    :try_start_5
    iget-object v4, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/taobao/accs/internal/ElectionServiceImpl$2;

    invoke-direct {v5, p0, v0}, Lcom/taobao/accs/internal/ElectionServiceImpl$2;-><init>(Lcom/taobao/accs/internal/ElectionServiceImpl;Ljava/lang/String;)V

    const-wide/16 v6, 0x5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v6, Lcom/taobao/accs/internal/ElectionServiceImpl$2;

    invoke-direct {v6, p0, v0}, Lcom/taobao/accs/internal/ElectionServiceImpl$2;-><init>(Lcom/taobao/accs/internal/ElectionServiceImpl;Ljava/lang/String;)V

    const-wide/16 v8, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v8, v9, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    throw v4

    .line 509
    :cond_2
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "curr is host, no need election"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    invoke-virtual {p0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->onVotedHost()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 100
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "onCreate,"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sdkv"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xdd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "Service onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iput-object v3, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    .line 320
    iput-object v3, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mBaseService:Landroid/app/Service;

    .line 321
    return-void
.end method

.method public abstract onHostStartCommand(Landroid/content/Intent;II)I
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 34
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 106
    const/16 v24, 0x2

    .line 107
    .local v24, "result":I
    if-nez p1, :cond_1

    .line 301
    .end local v24    # "result":I
    :cond_0
    :goto_0
    return v24

    .line 110
    .restart local v24    # "result":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 114
    .local v11, "currentPack":Ljava/lang/String;
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "onStartCommand begin"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "action"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v6, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->isElectionEnable()Z

    move-result v29

    if-eqz v29, :cond_f

    .line 118
    :try_start_0
    const-string/jumbo v29, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v18

    .line 120
    .local v18, "packageName":Ljava/lang/String;
    const-string/jumbo v29, "android.intent.extra.REPLACING"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 122
    .local v21, "replaced":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionResult(Landroid/content/Context;)Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    move-result-object v13

    .line 123
    .local v13, "electionResult":Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
    iget-object v0, v13, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->host:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 124
    .local v26, "sudoPack":Ljava/lang/String;
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "onstartcommand PACKAGE_REMOVED"

    const/16 v31, 0x6

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "pkg"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v18, v31, v32

    const/16 v32, 0x2

    const-string/jumbo v33, "host"

    aput-object v33, v31, v32

    const/16 v32, 0x3

    aput-object v26, v31, v32

    const/16 v32, 0x4

    const-string/jumbo v33, "replaced"

    aput-object v33, v31, v32

    const/16 v32, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_7

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/taobao/accs/election/ElectionServiceUtil;->getResolveService(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 128
    const/16 v29, 0x0

    move/from16 v0, v29

    iput v0, v13, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->retry:I

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v13}, Lcom/taobao/accs/election/ElectionServiceUtil;->saveElectionResult(Landroid/content/Context;Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string/jumbo v30, "host removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/internal/ElectionServiceImpl;->startElection(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v13    # "electionResult":Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v21    # "replaced":Z
    .end local v26    # "sudoPack":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v29, "com.taobao.accs.intent.action.START_SERVICE"

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 252
    :try_start_1
    const-string/jumbo v29, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 254
    .restart local v18    # "packageName":Ljava/lang/String;
    const-string/jumbo v29, "appKey"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, "appkey":Ljava/lang/String;
    const-string/jumbo v29, "ttid"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 257
    .local v28, "ttid":Ljava/lang/String;
    const-string/jumbo v29, "app_sercet"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, "appSecret":Ljava/lang/String;
    const-string/jumbo v29, "configTag"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, "configTag":Ljava/lang/String;
    const-string/jumbo v29, "mode"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 260
    .local v15, "env":I
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "try to saveAppKey"

    const/16 v31, 0xa

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "configTag"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v9, v31, v32

    const/16 v32, 0x2

    const-string/jumbo v33, "appkey"

    aput-object v33, v31, v32

    const/16 v32, 0x3

    aput-object v8, v31, v32

    const/16 v32, 0x4

    const-string/jumbo v33, "appSecret"

    aput-object v33, v31, v32

    const/16 v32, 0x5

    aput-object v7, v31, v32

    const/16 v32, 0x6

    const-string/jumbo v33, "ttid"

    aput-object v33, v31, v32

    const/16 v32, 0x7

    aput-object v28, v31, v32

    const/16 v32, 0x8

    const-string/jumbo v33, "pkg"

    aput-object v33, v31, v32

    const/16 v32, 0x9

    aput-object v18, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v15}, Lcom/taobao/accs/utl/Utils;->setMode(Landroid/content/Context;I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v9, v1, v2}, Lcom/taobao/accs/internal/ElectionServiceImpl;->getConnection(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/taobao/accs/net/BaseConnection;

    move-result-object v10

    .line 266
    .local v10, "connection":Lcom/taobao/accs/net/BaseConnection;
    if-eqz v10, :cond_10

    .line 267
    move-object/from16 v0, v28

    iput-object v0, v10, Lcom/taobao/accs/net/BaseConnection;->mTtid:Ljava/lang/String;

    .line 271
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v8, v7}, Lcom/taobao/accs/utl/UtilityImpl;->saveAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    .end local v7    # "appSecret":Ljava/lang/String;
    .end local v8    # "appkey":Ljava/lang/String;
    .end local v9    # "configTag":Ljava/lang/String;
    .end local v10    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .end local v15    # "env":I
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v28    # "ttid":Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->isElectionEnable()Z

    move-result v29

    if-nez v29, :cond_0

    .line 289
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionResult(Landroid/content/Context;)Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v12, v0, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->host:Ljava/lang/String;

    .line 291
    .local v12, "electionPack":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_5

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->isElectionEnable()Z

    move-result v29

    if-nez v29, :cond_11

    .line 294
    :cond_5
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "deliver to channelservice"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "host pkg"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v12, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-virtual/range {p0 .. p3}, Lcom/taobao/accs/internal/ElectionServiceImpl;->onHostStartCommand(Landroid/content/Intent;II)I

    move-result v24

    goto/16 :goto_0

    .line 132
    .end local v12    # "electionPack":Ljava/lang/String;
    .restart local v13    # "electionResult":Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v21    # "replaced":Z
    .restart local v26    # "sudoPack":Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "onstartcommand PACKAGE_REMOVED no need election"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 237
    .end local v13    # "electionResult":Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v21    # "replaced":Z
    .end local v26    # "sudoPack":Ljava/lang/String;
    :catch_0
    move-exception v27

    .line 238
    .local v27, "t":Ljava/lang/Throwable;
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "onStartCommand"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 135
    .end local v27    # "t":Ljava/lang/Throwable;
    .restart local v13    # "electionResult":Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v21    # "replaced":Z
    .restart local v26    # "sudoPack":Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "onstartcommand PACKAGE_REMOVED no need election"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 137
    .end local v13    # "electionResult":Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v21    # "replaced":Z
    .end local v26    # "sudoPack":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFilter()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 138
    const-string/jumbo v29, "operate"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, Lcom/taobao/accs/common/Constants$Operate;

    .line 139
    .local v17, "operate":Lcom/taobao/accs/common/Constants$Operate;
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "operate is receive"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "operate"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v17, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    sget-object v29, Lcom/taobao/accs/internal/ElectionServiceImpl$6;->$SwitchMap$com$taobao$accs$common$Constants$Operate:[I

    invoke-virtual/range {v17 .. v17}, Lcom/taobao/accs/common/Constants$Operate;->ordinal()I

    move-result v30

    aget v29, v29, v30

    packed-switch v29, :pswitch_data_0

    goto/16 :goto_0

    .line 143
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/taobao/accs/internal/ElectionServiceImpl;->tryElection(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 147
    :pswitch_1
    const-string/jumbo v29, "reason"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 148
    .local v20, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/internal/ElectionServiceImpl;->startElection(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v29, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 153
    .local v16, "fromPack":Ljava/lang/String;
    const-string/jumbo v29, "elversion"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 154
    .local v14, "electionVersion":I
    new-instance v22, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFilter()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v22, "reportIntent":Landroid/content/Intent;
    const-string/jumbo v29, "operate"

    sget-object v30, Lcom/taobao/accs/common/Constants$Operate;->REPORT_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 156
    const-string/jumbo v29, "packageName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string/jumbo v29, "com.taobao.accs.ChannelService"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const/16 v23, 0xdd

    .line 160
    .local v23, "reportSdkv":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Lcom/taobao/accs/election/ElectionServiceUtil;->checkApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 161
    const-string/jumbo v29, "sdkVersion"

    const/16 v30, 0xdd

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "report"

    const/16 v31, 0x6

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "sdkv"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    const-string/jumbo v33, "from pkg"

    aput-object v33, v31, v32

    const/16 v32, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x4

    const-string/jumbo v33, "to pkg"

    aput-object v33, v31, v32

    const/16 v32, 0x5

    aput-object v16, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 163
    :cond_9
    const/16 v23, 0x0

    goto :goto_4

    .line 170
    .end local v14    # "electionVersion":I
    .end local v16    # "fromPack":Ljava/lang/String;
    .end local v22    # "reportIntent":Landroid/content/Intent;
    .end local v23    # "reportSdkv":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isElectioning:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    .line 172
    const-string/jumbo v29, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 173
    .restart local v12    # "electionPack":Ljava/lang/String;
    const-string/jumbo v29, "sdkVersion"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 174
    .local v25, "sdkVersion":I
    sget v29, Lcom/taobao/accs/internal/ElectionServiceImpl;->electionPackCount:I

    add-int/lit8 v29, v29, -0x1

    sput v29, Lcom/taobao/accs/internal/ElectionServiceImpl;->electionPackCount:I

    .line 175
    if-eqz v25, :cond_a

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->packMap:Ljava/util/Map;

    move-object/from16 v29, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_a
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "collect info"

    const/16 v31, 0x6

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "sdkv"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    const-string/jumbo v33, "election pkg"

    aput-object v33, v31, v32

    const/16 v32, 0x3

    aput-object v12, v31, v32

    const/16 v32, 0x4

    const-string/jumbo v33, "electionPackCount"

    aput-object v33, v31, v32

    const/16 v32, 0x5

    sget v33, Lcom/taobao/accs/internal/ElectionServiceImpl;->electionPackCount:I

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    sget v29, Lcom/taobao/accs/internal/ElectionServiceImpl;->electionPackCount:I

    if-nez v29, :cond_0

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->onReportComplete()V

    goto/16 :goto_0

    .line 183
    .end local v12    # "electionPack":Ljava/lang/String;
    .end local v25    # "sdkVersion":I
    :cond_b
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "not electioning, but receive report"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 188
    :pswitch_4
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/taobao/accs/internal/ElectionServiceImpl;->resultBack:Z

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    move-object/from16 v29, v0

    if-eqz v29, :cond_c

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 191
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/taobao/accs/internal/ElectionServiceImpl;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 193
    :cond_c
    const-string/jumbo v29, "sudoPack"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 194
    .restart local v26    # "sudoPack":Ljava/lang/String;
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "election result"

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "host"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v26, v31, v32

    const/16 v32, 0x2

    const-string/jumbo v33, "curr pkg"

    aput-object v33, v31, v32

    const/16 v32, 0x3

    aput-object v11, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const-string/jumbo v29, "accs"

    const-string/jumbo v30, "ele_pkg_times"

    const-wide/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionResultFromFile(Landroid/content/Context;)Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    .line 197
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 199
    move-object/from16 v0, v26

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->onVotedHost()V

    goto/16 :goto_0

    .line 203
    :cond_d
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/taobao/accs/internal/ElectionServiceImpl;->stopSelf(Z)V

    goto/16 :goto_0

    .line 209
    .end local v26    # "sudoPack":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionResult(Landroid/content/Context;)Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->host:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 210
    .restart local v26    # "sudoPack":Ljava/lang/String;
    const-string/jumbo v29, "pingPack"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 212
    .local v19, "pingPack":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_e

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 213
    move-object/from16 v0, v26

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 214
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "host receive ping, and report ping"

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "to pkg"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v19, v31, v32

    const/16 v32, 0x2

    const-string/jumbo v33, "host"

    aput-object v33, v31, v32

    const/16 v32, 0x3

    aput-object v26, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    new-instance v22, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFilter()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v22    # "reportIntent":Landroid/content/Intent;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string/jumbo v29, "com.taobao.accs.ChannelService"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string/jumbo v29, "operate"

    sget-object v30, Lcom/taobao/accs/common/Constants$Operate;->PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 219
    const-string/jumbo v29, "isPing"

    const/16 v30, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    const-string/jumbo v29, "pingPack"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v29, "sdkVersion"

    const/16 v30, 0xdd

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->onVotedHost()V

    .line 227
    .end local v22    # "reportIntent":Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, v19

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 228
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "receive host\'s ping back"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "host"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v26, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    const-string/jumbo v29, "isPing"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lcom/taobao/accs/internal/ElectionServiceImpl;->isPing:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 241
    .end local v17    # "operate":Lcom/taobao/accs/common/Constants$Operate;
    .end local v19    # "pingPack":Ljava/lang/String;
    .end local v26    # "sudoPack":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFilter()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 242
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "election disabled"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 269
    .restart local v7    # "appSecret":Ljava/lang/String;
    .restart local v8    # "appkey":Ljava/lang/String;
    .restart local v9    # "configTag":Ljava/lang/String;
    .restart local v10    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .restart local v15    # "env":I
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v28    # "ttid":Ljava/lang/String;
    :cond_10
    :try_start_4
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "start action, no connection"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "configTag"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v9, v31, v32

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 273
    .end local v7    # "appSecret":Ljava/lang/String;
    .end local v8    # "appkey":Ljava/lang/String;
    .end local v9    # "configTag":Ljava/lang/String;
    .end local v10    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .end local v15    # "env":I
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v28    # "ttid":Ljava/lang/String;
    :catch_1
    move-exception v27

    .line 274
    .restart local v27    # "t":Ljava/lang/Throwable;
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "start action"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 297
    .end local v27    # "t":Ljava/lang/Throwable;
    .restart local v12    # "electionPack":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isElectioning:Z

    move/from16 v29, v0

    if-nez v29, :cond_12

    const-string/jumbo v29, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_12

    .line 298
    const-string/jumbo v29, "ElectionServiceImpl"

    const-string/jumbo v30, "not electioning and not host, stop"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v29 .. v31}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/taobao/accs/internal/ElectionServiceImpl;->stopSelf(Z)V

    .line 301
    :cond_12
    const/16 v24, 0x2

    goto/16 :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onVotedHost()V
.end method

.method public startElection(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "startReason"    # Ljava/lang/String;

    .prologue
    .line 576
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isElectioning:Z

    if-eqz v10, :cond_1

    .line 577
    const-string/jumbo v10, "ElectionServiceImpl"

    const-string/jumbo v11, "isElectioning return"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionResult(Landroid/content/Context;)Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mElectionResult:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    .line 581
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mElectionResult:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    iget v10, v10, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->retry:I

    const/16 v11, 0x14

    if-le v10, v11, :cond_2

    .line 582
    const-string/jumbo v10, "ElectionServiceImpl"

    const-string/jumbo v11, "startElection too many times, return"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "times"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mElectionResult:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    iget v14, v14, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->retry:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    const-string/jumbo v10, "accs"

    const-string/jumbo v11, "ele_over_max_times"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-static {v10, v11, v12, v14, v15}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v5

    .line 642
    .local v5, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "ElectionServiceImpl"

    const-string/jumbo v11, "startElection error"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v5, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 643
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isElectioning:Z

    .line 644
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v10, :cond_0

    .line 645
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v11, -0x385

    iput v11, v10, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 646
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 587
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    new-instance v10, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-direct {v10}, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    .line 588
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const-string/jumbo v11, "local"

    iput-object v11, v10, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->type:Ljava/lang/String;

    .line 589
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->reason:Ljava/lang/String;

    .line 591
    const-string/jumbo v10, "accs"

    const-string/jumbo v11, "ele_start_times"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v10, v11, v0, v12, v13}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 595
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFilter()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v2, "accsIntent":Landroid/content/Intent;
    const/16 v10, 0x20

    invoke-virtual {v8, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 601
    .local v7, "localList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isElectioning:Z

    .line 602
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_5

    .line 603
    :cond_3
    const-string/jumbo v11, "ElectionServiceImpl"

    const-string/jumbo v12, "startElection apps < 2"

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v14, "services"

    aput-object v14, v13, v10

    const/4 v14, 0x1

    if-nez v7, :cond_4

    const-string/jumbo v10, "null"

    :goto_1
    aput-object v10, v13, v14

    invoke-static {v11, v12, v13}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->onReportComplete()V

    goto/16 :goto_0

    .line 603
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 607
    :cond_5
    const/4 v10, 0x0

    sput v10, Lcom/taobao/accs/internal/ElectionServiceImpl;->electionPackCount:I

    .line 608
    const-string/jumbo v10, "ElectionServiceImpl"

    const-string/jumbo v11, "startElection begin"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "locallist"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "size"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 610
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_6

    .line 613
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_6

    .line 616
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 617
    .local v4, "clientPack":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 618
    const-string/jumbo v10, "ElectionServiceImpl"

    const-string/jumbo v11, "startElection unvailable app"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "pkg"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 621
    :cond_7
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFilter()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v3, "askIntent":Landroid/content/Intent;
    const-string/jumbo v10, "operate"

    sget-object v11, Lcom/taobao/accs/common/Constants$Operate;->ASK_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 623
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string/jumbo v10, "packageName"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string/jumbo v10, "elversion"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string/jumbo v10, "com.taobao.accs.ChannelService"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string/jumbo v10, "ElectionServiceImpl"

    const-string/jumbo v11, "startElection askversion"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "receive pkg"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 629
    sget v10, Lcom/taobao/accs/internal/ElectionServiceImpl;->electionPackCount:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/taobao/accs/internal/ElectionServiceImpl;->electionPackCount:I

    goto :goto_2

    .line 631
    .end local v3    # "askIntent":Landroid/content/Intent;
    .end local v4    # "clientPack":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_8
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->isReportComplete:Z

    .line 632
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v11, Lcom/taobao/accs/internal/ElectionServiceImpl$4;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/taobao/accs/internal/ElectionServiceImpl$4;-><init>(Lcom/taobao/accs/internal/ElectionServiceImpl;)V

    const-wide/16 v12, 0x3

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v11, v12, v13, v14}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mReportTimeOutTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopSelf(Z)V
    .locals 3
    .param p1, "kill"    # Z

    .prologue
    .line 800
    const-string/jumbo v0, "ElectionServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldStopSelf, kill:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    iget-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mBaseService:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl;->mBaseService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 804
    :cond_0
    if-eqz p1, :cond_1

    .line 805
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 807
    :cond_1
    return-void
.end method
