.class public Lc8/Jsf;
.super Ljava/lang/Object;
.source "ConfigCenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigCenter"

.field private static mInstance:Lc8/Jsf;

.field public static mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mConfigCache:Lc8/Htf;

.field private mFailRequestsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexCache:Lc8/Itf;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lc8/Dtf;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListenersV1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lc8/Gtf;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLoadingConfigSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkInterceptor:Lc8/PN;

.field public mPushConfigSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/taobao/orange/model/NameSpaceDO;",
            ">;"
        }
    .end annotation
.end field

.field private mRandomDelayAckInterval:J

.field private mReportUpdateAck:Z

.field private mReqRetryNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lc8/Jsf;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Lc8/Jsf;

    invoke-direct {v0}, Lc8/Jsf;-><init>()V

    sput-object v0, Lc8/Jsf;->mInstance:Lc8/Jsf;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lc8/Jsf;->mReqRetryNum:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Jsf;->mReportUpdateAck:Z

    .line 59
    new-instance v0, Lc8/Xtf;

    invoke-direct {v0}, Lc8/Xtf;-><init>()V

    iput-object v0, p0, Lc8/Jsf;->mNetworkInterceptor:Lc8/PN;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lc8/Jsf;->mPushConfigSet:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lc8/Jsf;->mLoadingConfigSet:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lc8/Jsf;->mFailRequestsSet:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/Jsf;->mListeners:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/Jsf;->mListenersV1:Ljava/util/Map;

    .line 77
    new-instance v0, Lc8/Itf;

    invoke-direct {v0}, Lc8/Itf;-><init>()V

    iput-object v0, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    .line 78
    new-instance v0, Lc8/Htf;

    invoke-direct {v0}, Lc8/Htf;-><init>()V

    iput-object v0, p0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    .line 79
    return-void
.end method

.method static synthetic access$002(Lc8/Jsf;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Jsf;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lc8/Jsf;->mReportUpdateAck:Z

    return p1
.end method

.method static synthetic access$100(Lc8/Jsf;)V
    .locals 0
    .param p0, "x0"    # Lc8/Jsf;

    .prologue
    .line 52
    invoke-direct {p0}, Lc8/Jsf;->updateInterceptor()V

    return-void
.end method

.method static synthetic access$202(Lc8/Jsf;J)J
    .locals 1
    .param p0, "x0"    # Lc8/Jsf;
    .param p1, "x1"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lc8/Jsf;->mRandomDelayAckInterval:J

    return-wide p1
.end method

.method static synthetic access$300(Lc8/Jsf;J)J
    .locals 3
    .param p0, "x0"    # Lc8/Jsf;
    .param p1, "x1"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lc8/Jsf;->updateRandomDelayAckInterval(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lc8/Jsf;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/Jsf;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lc8/Jsf;->updateOrangeSystemConfig(Z)V

    return-void
.end method

.method static synthetic access$500(Lc8/Jsf;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/Jsf;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/Jsf;->mListenersV1:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Jsf;)V
    .locals 0
    .param p0, "x0"    # Lc8/Jsf;

    .prologue
    .line 52
    invoke-direct {p0}, Lc8/Jsf;->initialize()V

    return-void
.end method

.method static synthetic access$700(Lc8/Jsf;)Lc8/Itf;
    .locals 1
    .param p0, "x0"    # Lc8/Jsf;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    return-object v0
.end method

.method public static getInstance()Lc8/Jsf;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lc8/Jsf;->mInstance:Lc8/Jsf;

    return-object v0
.end method

.method private initialize()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 159
    const-string/jumbo v4, "ConfigCenter"

    const-string/jumbo v5, "initialize start"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 161
    .local v2, "restoreStartTime":J
    iget-object v4, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v4}, Lc8/Itf;->loadLocalIndex()V

    .line 162
    iget-object v4, p0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    iget-object v5, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v5}, Lc8/Itf;->getIndex()Lcom/taobao/orange/model/IndexDO;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/Htf;->loadLocalConfig(Lcom/taobao/orange/model/IndexDO;)V

    .line 163
    invoke-virtual {p0}, Lc8/Jsf;->retryFailRequests()V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 165
    .local v0, "restoreCostTime":J
    const-string/jumbo v4, "ConfigCenter"

    const-string/jumbo v5, "initialize restore index and config local cache"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "cost(ms)"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "loadConfig namespace null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :goto_0
    return-void

    .line 215
    :cond_0
    new-instance v0, Lc8/Dsf;

    invoke-direct {v0, p0, p1}, Lc8/Dsf;-><init>(Lc8/Jsf;Ljava/lang/String;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadConfigs(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/orange/model/NameSpaceDO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "nameSpaceDOs":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/orange/model/NameSpaceDO;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    :cond_0
    const-string/jumbo v5, "ConfigCenter"

    const-string/jumbo v6, "loadConfigs nameSpaceDOs null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v1, "configAckDOs":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/orange/model/ConfigAckDO;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/orange/model/NameSpaceDO;

    .line 238
    .local v3, "nameSpaceDO":Lcom/taobao/orange/model/NameSpaceDO;
    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lc8/Jsf;->loadConfig(Lcom/taobao/orange/model/NameSpaceDO;Z)Z

    move-result v2

    .line 239
    .local v2, "hasUpdate":Z
    iget-boolean v6, p0, Lc8/Jsf;->mReportUpdateAck:Z

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 240
    iget-object v6, p0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    iget-object v7, v3, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lc8/Htf;->getConfigDO(Ljava/lang/String;)Lcom/taobao/orange/model/ConfigDO;

    move-result-object v4

    .line 241
    .local v4, "updateConfigDO":Lcom/taobao/orange/model/ConfigDO;
    if-eqz v4, :cond_3

    .line 242
    new-instance v0, Lcom/taobao/orange/model/ConfigAckDO;

    iget-object v6, v4, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    iget-object v7, v4, Lcom/taobao/orange/model/ConfigDO;->id:Ljava/lang/String;

    invoke-static {}, Lc8/cuf;->getCurFormatTime()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v4, Lcom/taobao/orange/model/ConfigDO;->version:Ljava/lang/String;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/taobao/orange/model/ConfigAckDO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .local v0, "configAckDO":Lcom/taobao/orange/model/ConfigAckDO;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    .end local v0    # "configAckDO":Lcom/taobao/orange/model/ConfigAckDO;
    .end local v2    # "hasUpdate":Z
    .end local v3    # "nameSpaceDO":Lcom/taobao/orange/model/NameSpaceDO;
    .end local v4    # "updateConfigDO":Lcom/taobao/orange/model/ConfigDO;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 248
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lc8/Jsf;->reportConfigUpdateAcks([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadIndex(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "cdnUrl"    # Ljava/lang/String;
    .param p2, "cdnMd5"    # Ljava/lang/String;

    .prologue
    .line 565
    iget-object v7, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v7}, Lc8/Itf;->getIndex()Lcom/taobao/orange/model/IndexDO;

    move-result-object v7

    iget-object v7, v7, Lcom/taobao/orange/model/IndexDO;->md5:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v7}, Lc8/Itf;->getIndex()Lcom/taobao/orange/model/IndexDO;

    move-result-object v7

    iget-object v7, v7, Lcom/taobao/orange/model/IndexDO;->md5:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 566
    const-string/jumbo v7, "ConfigCenter"

    const-string/jumbo v8, "loadIndex break as cdnMd5 is match"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    const/4 v7, 0x0

    .line 625
    :goto_0
    return v7

    .line 569
    :cond_0
    const-string/jumbo v7, "ConfigCenter"

    const-string/jumbo v8, "loadIndex"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "cache md5"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v11}, Lc8/Itf;->getIndex()Lcom/taobao/orange/model/IndexDO;

    move-result-object v11

    iget-object v11, v11, Lcom/taobao/orange/model/IndexDO;->md5:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "new cdnMd5"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object p2, v9, v10

    invoke-static {v7, v8, v9}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    const-string/jumbo v7, "ConfigCenter"

    const-string/jumbo v8, "loadIndex start"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "cdnUrl"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "cdnMd5"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object p2, v9, v10

    invoke-static {v7, v8, v9}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    new-instance v6, Lc8/Isf;

    iget v7, p0, Lc8/Jsf;->mReqRetryNum:I

    invoke-direct {v6, p0, p1, p2, v7}, Lc8/Isf;-><init>(Lc8/Jsf;Ljava/lang/String;Ljava/lang/String;I)V

    .line 578
    .local v6, "indexReq":Lc8/Ltf;, "Lcom/taobao/orange/request/BaseRequest<Lcom/taobao/orange/model/IndexDO;>;"
    invoke-virtual {v6}, Lc8/Ltf;->syncRequest()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/orange/model/IndexDO;

    .line 580
    .local v4, "indexDO":Lcom/taobao/orange/model/IndexDO;
    invoke-static {}, Lc8/Itf;->getIndexFileName()Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, "indexKey":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/taobao/orange/model/IndexDO;->isValid()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 591
    iput-object p2, v4, Lcom/taobao/orange/model/IndexDO;->md5:Ljava/lang/String;

    .line 592
    iget-object v7, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v7, v4}, Lc8/Itf;->cacheIndex(Lcom/taobao/orange/model/IndexDO;)V

    .line 593
    const-string/jumbo v7, "OrangeConfig"

    const-string/jumbo v8, "index_rate"

    iget-object v9, v4, Lcom/taobao/orange/model/IndexDO;->version:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lc8/Rtf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-direct {p0, v5}, Lc8/Jsf;->removeFail(Ljava/lang/String;)V

    .line 595
    const-string/jumbo v7, "ConfigCenter"

    const-string/jumbo v8, "loadIndex success"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "indexDO"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v4, Lcom/taobao/orange/model/IndexDO;->id:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    iget-boolean v7, p0, Lc8/Jsf;->mReportUpdateAck:Z

    if-eqz v7, :cond_1

    .line 598
    new-instance v3, Lcom/taobao/orange/model/IndexAckDO;

    iget-object v7, v4, Lcom/taobao/orange/model/IndexDO;->id:Ljava/lang/String;

    invoke-static {}, Lc8/cuf;->getCurFormatTime()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Lcom/taobao/orange/model/IndexAckDO;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .local v3, "indexAckDO":Lcom/taobao/orange/model/IndexAckDO;
    invoke-direct {p0, v3}, Lc8/Jsf;->reportIndexUpdateAck(Ljava/lang/Object;)V

    .line 625
    .end local v3    # "indexAckDO":Lcom/taobao/orange/model/IndexAckDO;
    :goto_1
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 601
    :cond_1
    const-string/jumbo v7, "ConfigCenter"

    const-string/jumbo v8, "no need report index update ack as user disable"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 606
    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/taobao/orange/model/IndexDO;->isValid()Z

    move-result v7

    if-nez v7, :cond_4

    .line 607
    const/16 v0, 0x1f41

    .line 608
    .local v0, "errCode":I
    const-string/jumbo v1, "index is invalid"

    .line 613
    .local v1, "errMsg":Ljava/lang/String;
    :goto_2
    const/16 v7, -0xc8

    if-eq v0, v7, :cond_3

    .line 614
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lc8/Ksf;->mAppkey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "|"

    .line 615
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lc8/Ksf;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "|"

    .line 616
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 617
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "errorMsg":Ljava/lang/String;
    const-string/jumbo v8, "OrangeConfig"

    const-string/jumbo v9, "index_rate"

    if-nez v4, :cond_5

    const-string/jumbo v7, "null"

    .line 620
    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 618
    invoke-static {v8, v9, v7, v10, v2}, Lc8/Rtf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v5}, Lc8/Jsf;->addFail(Ljava/lang/String;)V

    .line 623
    const-string/jumbo v7, "ConfigCenter"

    const-string/jumbo v8, "loadIndex req error"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "errCode"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "errMsg"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v1, v9, v10

    invoke-static {v7, v8, v9}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 610
    .end local v0    # "errCode":I
    .end local v1    # "errMsg":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Lc8/Ltf;->getErrorCode()I

    move-result v0

    .line 611
    .restart local v0    # "errCode":I
    invoke-virtual {v6}, Lc8/Ltf;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "errMsg":Ljava/lang/String;
    goto :goto_2

    .line 618
    .restart local v2    # "errorMsg":Ljava/lang/String;
    :cond_5
    iget-object v7, v4, Lcom/taobao/orange/model/IndexDO;->version:Ljava/lang/String;

    goto :goto_3
.end method

.method private notifyListener(Ljava/lang/String;Lc8/Dtf;)V
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/Dtf;

    .prologue
    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "notifyListener"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "namespace"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    new-instance v0, Lc8/Gsf;

    invoke-direct {v0, p0, p2, p1}, Lc8/Gsf;-><init>(Lc8/Jsf;Lc8/Dtf;Ljava/lang/String;)V

    invoke-static {v0}, Lc8/btf;->executeEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private notifyListenerV1(Ljava/lang/String;Lc8/Gtf;Z)V
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "listenerV1"    # Lc8/Gtf;
    .param p3, "fromCache"    # Z

    .prologue
    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "notifyListenerV1 "

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "namespace"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "fromCache"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    new-instance v0, Lc8/Hsf;

    invoke-direct {v0, p0, p2, p1, p3}, Lc8/Hsf;-><init>(Lc8/Jsf;Lc8/Gtf;Ljava/lang/String;Z)V

    invoke-static {v0}, Lc8/btf;->executeEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private removeFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lc8/Jsf;->mFailRequestsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "removeFail"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    iget-object v0, p0, Lc8/Jsf;->mFailRequestsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private varargs reportConfigUpdateAcks([Ljava/lang/Object;)V
    .locals 6
    .param p1, "reqBodyObjs"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 383
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "reportConfigUpdateAcks"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "reqBodyObjs.length"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    iget v0, p0, Lc8/Jsf;->mReqRetryNum:I

    iget-wide v2, p0, Lc8/Jsf;->mRandomDelayAckInterval:J

    invoke-static {v5, p1, v0, v2, v3}, Lc8/fuf;->asyncReportUpdateAck(ZLjava/lang/Object;IJ)V

    .line 385
    return-void
.end method

.method private reportIndexUpdateAck(Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqBodyObj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 373
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "reportIndexUpdateAck"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget v0, p0, Lc8/Jsf;->mReqRetryNum:I

    iget-wide v2, p0, Lc8/Jsf;->mRandomDelayAckInterval:J

    invoke-static {v4, p1, v0, v2, v3}, Lc8/fuf;->asyncReportUpdateAck(ZLjava/lang/Object;IJ)V

    .line 375
    return-void
.end method

.method private updateInterceptor()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 711
    sget-object v2, Lc8/Ksf;->mIndexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

    sget-object v3, Lcom/taobao/orange/OConstant$UPDMODE;->O_EVENT:Lcom/taobao/orange/OConstant$UPDMODE;

    if-ne v2, v3, :cond_1

    .line 712
    const-string/jumbo v2, "ConfigCenter"

    const-string/jumbo v3, "updateInterceptor"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "remove Interceptor to all aserver req"

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    iget-object v2, p0, Lc8/Jsf;->mNetworkInterceptor:Lc8/PN;

    invoke-static {v2}, Lc8/QN;->removeInterceptor(Lc8/PN;)V

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    const/4 v1, 0x1

    .line 716
    .local v1, "interceptorNotAdded":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Lc8/QN;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 717
    iget-object v2, p0, Lc8/Jsf;->mNetworkInterceptor:Lc8/PN;

    invoke-static {v0}, Lc8/QN;->getInterceptor(I)Lc8/PN;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 718
    const/4 v1, 0x0

    .line 722
    :cond_2
    if-eqz v1, :cond_0

    .line 723
    const-string/jumbo v2, "ConfigCenter"

    const-string/jumbo v3, "updateInterceptor"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "add Interceptor to all aserver req"

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    iget-object v2, p0, Lc8/Jsf;->mNetworkInterceptor:Lc8/PN;

    invoke-static {v2}, Lc8/QN;->addInterceptor(Lc8/PN;)V

    goto :goto_0

    .line 716
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private declared-synchronized updateOrangeSystemConfig(Z)V
    .locals 24
    .param p1, "fromCache"    # Z

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    move-object/from16 v17, v0

    const-string/jumbo v18, "orange"

    invoke-virtual/range {v17 .. v18}, Lc8/Htf;->getConfig(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 633
    .local v12, "orangeConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v17, "ConfigCenter"

    const-string/jumbo v18, "updateOrangeSystemConfig"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "fromCache"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, "orangeSystemConfigs"

    aput-object v21, v19, v20

    const/16 v20, 0x3

    aput-object v12, v19, v20

    invoke-static/range {v17 .. v19}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    if-eqz v12, :cond_8

    .line 636
    :try_start_1
    const-string/jumbo v17, "reqRetryNum"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 637
    .local v14, "reqRetryNumStr":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 638
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Jsf;->mReqRetryNum:I

    .line 639
    const-string/jumbo v17, "ConfigCenter"

    const-string/jumbo v18, "updateOrangeSystemConfig"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "reqRetryNum"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Jsf;->mReqRetryNum:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    .end local v14    # "reqRetryNumStr":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    const-string/jumbo v17, "reportUpdateAck"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 646
    .local v13, "reportUpdateAckStr":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 647
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Jsf;->mReportUpdateAck:Z

    .line 648
    const-string/jumbo v17, "ConfigCenter"

    const-string/jumbo v18, "updateOrangeSystemConfig"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "reportUpdateAck"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Jsf;->mReportUpdateAck:Z

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 655
    .end local v13    # "reportUpdateAckStr":Ljava/lang/String;
    :cond_1
    :goto_2
    :try_start_3
    const-string/jumbo v17, "delayAckInterval"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 656
    .local v5, "delayAckIntervalStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 657
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 658
    .local v4, "delayAckInterval":I
    const-string/jumbo v17, "ConfigCenter"

    const-string/jumbo v18, "updateOrangeSystemConfig"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "delayAckInterval"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    if-lez v4, :cond_2

    .line 660
    int-to-long v0, v4

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lc8/Jsf;->updateRandomDelayAckInterval(J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Jsf;->mRandomDelayAckInterval:J

    .line 661
    const-string/jumbo v17, "ConfigCenter"

    const-string/jumbo v18, "updateOrangeSystemConfig"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "mRandomDelayAckInterval"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jsf;->mRandomDelayAckInterval:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 669
    .end local v4    # "delayAckInterval":I
    .end local v5    # "delayAckIntervalStr":Ljava/lang/String;
    :cond_2
    :goto_3
    :try_start_4
    const-string/jumbo v17, "indexUpdateMode"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 670
    .local v9, "indexUpdateModeStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 671
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/taobao/orange/OConstant$UPDMODE;->valueOf(I)Lcom/taobao/orange/OConstant$UPDMODE;

    move-result-object v17

    sput-object v17, Lc8/Ksf;->mIndexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 672
    const-string/jumbo v17, "ConfigCenter"

    const-string/jumbo v18, "updateOrangeSystemConfig"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "mIndexUpdMode"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Lc8/Ksf;->mIndexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 678
    .end local v9    # "indexUpdateModeStr":Ljava/lang/String;
    :cond_3
    :goto_4
    :try_start_5
    const-string/jumbo v17, "hosts"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 679
    .local v15, "supportHosts":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 680
    invoke-static {v15}, Lc8/AIb;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v10

    .line 681
    .local v10, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v17

    if-ltz v17, :cond_7

    .line 682
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 683
    .local v7, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_6

    .line 684
    invoke-virtual {v10, v8}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 685
    .local v11, "jsonHost":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v17, "host"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 686
    .local v6, "host":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 687
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 641
    .end local v6    # "host":Ljava/lang/String;
    .end local v7    # "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v10    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v11    # "jsonHost":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "supportHosts":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 642
    .local v16, "t":Ljava/lang/Throwable;
    const-string/jumbo v17, "ConfigCenter"

    const-string/jumbo v18, "updateOrangeSystemConfig reqRetryNum error"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 632
    .end local v12    # "orangeConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 647
    .restart local v12    # "orangeConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "reportUpdateAckStr":Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 650
    .end local v13    # "reportUpdateAckStr":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 651
    .restart local v16    # "t":Ljava/lang/Throwable;
    :try_start_6
    const-string/jumbo v17, "ConfigCenter"

    const-string/jumbo v18, "updateOrangeSystemConfig reportUpdateAck error"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 664
    .end local v16    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v16

    .line 665
    .restart local v16    # "t":Ljava/lang/Throwable;
    const-string/jumbo v17, "ConfigCenter"

    const-string/jumbo v18, "updateOrangeSystemConfig delayAckInterval error"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 674
    .end local v16    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v16

    .line 675
    .restart local v16    # "t":Ljava/lang/Throwable;
    const-string/jumbo v17, "ConfigCenter"

    const-string/jumbo v18, "updateOrangeSystemConfig indexUpdateMode error"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 690
    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v7    # "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "i":I
    .restart local v10    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v15    # "supportHosts":Ljava/lang/String;
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_7

    .line 691
    sget-object v17, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->clear()V

    .line 692
    sget-object v17, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 693
    const-string/jumbo v17, "ConfigCenter"

    const-string/jumbo v18, "updateOrangeSystemConfig"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "mProbeHosts"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    .end local v7    # "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v10    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v15    # "supportHosts":Ljava/lang/String;
    :cond_7
    :goto_6
    invoke-direct/range {p0 .. p0}, Lc8/Jsf;->updateInterceptor()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 701
    monitor-exit p0

    return-void

    .line 698
    :cond_8
    :try_start_7
    const-string/jumbo v17, "ConfigCenter"

    const-string/jumbo v18, "not need updateOrangeSystemConfig"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6
.end method

.method private updateRandomDelayAckInterval(J)J
    .locals 5
    .param p1, "delayAckInterval"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 704
    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 707
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lc8/Ksf;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lc8/cuf;->hash(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    rem-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public addFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v0, p0, Lc8/Jsf;->mFailRequestsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "addFail"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lc8/Jsf;->mFailRequestsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearCache()V
    .locals 3

    .prologue
    .line 788
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "clear memory and local all cache"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    iget-object v0, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v0}, Lc8/Itf;->clearIndexCache()V

    .line 790
    iget-object v0, p0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    invoke-virtual {v0}, Lc8/Htf;->clearConfigCache()V

    .line 791
    return-void
.end method

.method public enterForeground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "enterForeground"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    sget-object v0, Lc8/Jsf;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    sget-object v0, Lc8/Ksf;->mIndexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

    sget-object v1, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    if-eq v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v0}, Lc8/Itf;->getAppIndexVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v1}, Lc8/Itf;->getVersionIndexVersion()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lc8/Jsf;->mReqRetryNum:I

    invoke-static {v0, v1, v2}, Lc8/Utf;->checkIndexUpdate(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "enterForeground not check index update as only in O_XMD mode"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :cond_1
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "enterForeground break as orange not init yet"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getAllConfigs()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 808
    const/4 v2, 0x0

    .line 810
    .local v2, "result":Lorg/json/JSONObject;
    :try_start_0
    iget-object v5, p0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    invoke-virtual {v5}, Lc8/Htf;->getConfigMap()Ljava/util/Map;

    move-result-object v4

    .line 811
    .local v4, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/orange/model/ConfigDO;>;"
    invoke-static {v4}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, "json":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "result":Lorg/json/JSONObject;
    .local v3, "result":Lorg/json/JSONObject;
    move-object v2, v3

    .line 816
    .end local v1    # "json":Ljava/lang/String;
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/orange/model/ConfigDO;>;"
    .restart local v2    # "result":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ConfigCenter"

    const-string/jumbo v6, "getAllConfigs"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v0, v7}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 169
    const-string/jumbo v1, "orange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string/jumbo v1, "ConfigCenter"

    const-string/jumbo v2, "getConfig error, namespace cann\'t equal to \"orange\""

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    .end local p3    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p3

    .line 173
    .restart local p3    # "defaultVal":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    invoke-virtual {v1, p1, p2}, Lc8/Htf;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 175
    move-object v0, p3

    .line 177
    :cond_1
    const-string/jumbo v1, "ConfigCenter"

    const-string/jumbo v2, "getConfig"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "namespace"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "key"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "result"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-direct {p0, p1}, Lc8/Jsf;->loadConfig(Ljava/lang/String;)V

    move-object p3, v0

    .line 179
    goto :goto_0
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 183
    const-string/jumbo v1, "orange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const-string/jumbo v1, "ConfigCenter"

    const-string/jumbo v2, "getConfigs error, namespace cann\'t equal to \"orange\""

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 187
    :cond_0
    iget-object v1, p0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    invoke-virtual {v1, p1}, Lc8/Htf;->getConfig(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 188
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ConfigCenter"

    const-string/jumbo v2, "getConfigs"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "namespace"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "result"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-direct {p0, p1}, Lc8/Jsf;->loadConfig(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIndex()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 820
    const/4 v2, 0x0

    .line 822
    .local v2, "result":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v4}, Lc8/Itf;->getIndex()Lcom/taobao/orange/model/IndexDO;

    move-result-object v4

    invoke-static {v4}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, "json":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "result":Lorg/json/JSONObject;
    .local v3, "result":Lorg/json/JSONObject;
    move-object v2, v3

    .line 827
    .end local v1    # "json":Ljava/lang/String;
    .end local v3    # "result":Lorg/json/JSONObject;
    .restart local v2    # "result":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ConfigCenter"

    const-string/jumbo v5, "getIndex"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v0, v6}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getIndexAndConfigs()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 795
    const/4 v2, 0x0

    .line 797
    .local v2, "result":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 798
    .local v0, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    const-string/jumbo v4, "index"

    invoke-virtual {p0}, Lc8/Jsf;->getIndex()Lorg/json/JSONObject;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string/jumbo v4, "config"

    invoke-virtual {p0}, Lc8/Jsf;->getAllConfigs()Lorg/json/JSONObject;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "result":Lorg/json/JSONObject;
    .local v3, "result":Lorg/json/JSONObject;
    move-object v2, v3

    .line 804
    .end local v0    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONObject;>;"
    .end local v3    # "result":Lorg/json/JSONObject;
    .restart local v2    # "result":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 801
    :catch_0
    move-exception v1

    .line 802
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ConfigCenter"

    const-string/jumbo v5, "getIndexAndConfigs"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v1, v6}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "env"    # I
    .param p3, "appkey"    # Ljava/lang/String;
    .param p4, "appversion"    # Ljava/lang/String;
    .param p5, "appSecret"    # Ljava/lang/String;
    .param p6, "authCode"    # Ljava/lang/String;
    .param p7, "userId"    # Ljava/lang/String;
    .param p8, "serverType"    # I
    .param p9, "indexUpdateMode"    # I
    .param p10, "probeHosts"    # [Ljava/lang/String;
    .param p11, "onlineHost"    # Ljava/lang/String;
    .param p12, "onlineAckHost"    # Ljava/lang/String;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "init start"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "input param error"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :goto_0
    return-void

    .line 87
    :cond_1
    new-instance v0, Lc8/Csf;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p9

    move/from16 v9, p2

    move/from16 v10, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lc8/Csf;-><init>(Lc8/Jsf;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadConfig(Lcom/taobao/orange/model/NameSpaceDO;Z)Z
    .locals 22
    .param p1, "nameSpaceDO"    # Lcom/taobao/orange/model/NameSpaceDO;
    .param p2, "isMultiLoad"    # Z

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    const-string/jumbo v3, "ConfigCenter"

    const-string/jumbo v4, "loadConfig null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    const/4 v3, 0x0

    .line 363
    :goto_0
    return v3

    .line 262
    :cond_0
    const-string/jumbo v3, "CUSTOM"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/taobao/orange/model/NameSpaceDO;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    const-string/jumbo v3, "ConfigCenter"

    const-string/jumbo v4, "loadConfig custom type invalid"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    const/4 v3, 0x0

    goto :goto_0

    .line 266
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Htf;->getConfigPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 267
    .local v17, "nameSpaceKey":Ljava/lang/String;
    monitor-enter p0

    .line 268
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Jsf;->mLoadingConfigSet:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 271
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Jsf;->mLoadingConfigSet:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/Htf;->getConfigDO(Ljava/lang/String;)Lcom/taobao/orange/model/ConfigDO;

    move-result-object v16

    .line 276
    .local v16, "localConfigDO":Lcom/taobao/orange/model/ConfigDO;
    if-nez v16, :cond_3

    const-wide/16 v18, 0x0

    .line 277
    .local v18, "localversion":J
    :goto_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/orange/model/NameSpaceDO;->version:Ljava/lang/String;

    invoke-static {v3}, Lc8/cuf;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 278
    .local v20, "version":J
    cmp-long v3, v18, v20

    if-ltz v3, :cond_4

    .line 279
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc8/Jsf;->removeFail(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Jsf;->mLoadingConfigSet:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 281
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 276
    .end local v18    # "localversion":J
    .end local v20    # "version":J
    :cond_3
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/taobao/orange/model/ConfigDO;->version:Ljava/lang/String;

    invoke-static {v3}, Lc8/cuf;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    goto :goto_1

    .line 284
    .restart local v18    # "localversion":J
    .restart local v20    # "version":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v3}, Lc8/Itf;->getCdnUrl()Ljava/lang/String;

    move-result-object v9

    .line 285
    .local v9, "cdnUrl":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 286
    const-string/jumbo v3, "ConfigCenter"

    const-string/jumbo v4, "loadConfig cdnUrl from mIndexCache is null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 290
    :cond_5
    const-string/jumbo v3, "ConfigCenter"

    const-string/jumbo v4, "loadConfig"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "nameSpaceDO"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/taobao/orange/model/NameSpaceDO;->resourceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 292
    .local v12, "configUrl":Ljava/lang/String;
    new-instance v2, Lc8/Esf;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/orange/model/NameSpaceDO;->md5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lc8/Jsf;->mReqRetryNum:I

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12, v3, v4}, Lc8/Esf;-><init>(Lc8/Jsf;Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    .local v2, "configReq":Lc8/Ltf;, "Lcom/taobao/orange/request/BaseRequest<Lcom/taobao/orange/model/ConfigDO;>;"
    invoke-virtual {v2}, Lc8/Ltf;->syncRequest()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/taobao/orange/model/ConfigDO;

    .line 300
    .local v11, "configDO":Lcom/taobao/orange/model/ConfigDO;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/taobao/orange/model/ConfigDO;->isValid()Z

    move-result v3

    if-nez v3, :cond_9

    .line 302
    :cond_6
    new-instance v2, Lc8/Fsf;

    .end local v2    # "configReq":Lc8/Ltf;, "Lcom/taobao/orange/request/BaseRequest<Lcom/taobao/orange/model/ConfigDO;>;"
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/taobao/orange/model/NameSpaceDO;->md5:Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "/downloadResource"

    move-object/from16 v0, p0

    iget v7, v0, Lc8/Jsf;->mReqRetryNum:I

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lc8/Fsf;-><init>(Lc8/Jsf;Ljava/lang/String;ZLjava/lang/String;ILcom/taobao/orange/model/NameSpaceDO;)V

    .line 320
    .restart local v2    # "configReq":Lc8/Ltf;, "Lcom/taobao/orange/request/BaseRequest<Lcom/taobao/orange/model/ConfigDO;>;"
    invoke-virtual {v2}, Lc8/Ltf;->syncRequest()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "configDO":Lcom/taobao/orange/model/ConfigDO;
    check-cast v11, Lcom/taobao/orange/model/ConfigDO;

    .line 321
    .restart local v11    # "configDO":Lcom/taobao/orange/model/ConfigDO;
    const-string/jumbo v4, "private_orange"

    const-string/jumbo v5, "ORANGE_GROUP_RATE_POINT"

    if-nez v11, :cond_8

    const-string/jumbo v3, "null"

    :goto_2
    invoke-static {v4, v5, v3}, Lc8/Rtf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_3
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/taobao/orange/model/ConfigDO;->isValid()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v11}, Lc8/Htf;->cacheConfig(Ljava/lang/String;Lcom/taobao/orange/model/ConfigDO;)V

    .line 328
    iget-object v3, v11, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lc8/Jsf;->notifyListeners(Ljava/lang/String;Z)V

    .line 329
    if-nez p2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc8/Jsf;->mReportUpdateAck:Z

    if-eqz v3, :cond_7

    .line 330
    new-instance v10, Lcom/taobao/orange/model/ConfigAckDO;

    iget-object v3, v11, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    iget-object v4, v11, Lcom/taobao/orange/model/ConfigDO;->id:Ljava/lang/String;

    invoke-static {}, Lc8/cuf;->getCurFormatTime()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v11, Lcom/taobao/orange/model/ConfigDO;->version:Ljava/lang/String;

    invoke-direct {v10, v3, v4, v5, v6}, Lcom/taobao/orange/model/ConfigAckDO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .local v10, "configAckDO":Lcom/taobao/orange/model/ConfigAckDO;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc8/Jsf;->reportConfigUpdateAcks([Ljava/lang/Object;)V

    .line 334
    .end local v10    # "configAckDO":Lcom/taobao/orange/model/ConfigAckDO;
    :cond_7
    const-string/jumbo v3, "OrangeConfig"

    const-string/jumbo v4, "config_rate"

    iget-object v5, v11, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lc8/Rtf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc8/Jsf;->removeFail(Ljava/lang/String;)V

    .line 336
    const-string/jumbo v3, "ConfigCenter"

    const-string/jumbo v4, "loadConfig success"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "configDO.name"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v11, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Jsf;->mLoadingConfigSet:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 338
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 321
    :cond_8
    iget-object v3, v11, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    goto :goto_2

    .line 323
    :cond_9
    const-string/jumbo v3, "private_orange"

    const-string/jumbo v4, "ORANGE_GROUP_RATE_POINT"

    iget-object v5, v11, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lc8/Rtf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 342
    :cond_a
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lcom/taobao/orange/model/ConfigDO;->isValid()Z

    move-result v3

    if-nez v3, :cond_c

    .line 343
    const/16 v13, 0x1f41

    .line 344
    .local v13, "errCode":I
    const-string/jumbo v14, "config is invalid"

    .line 349
    .local v14, "errMsg":Ljava/lang/String;
    :goto_4
    const/16 v3, -0xc8

    if-eq v13, v3, :cond_b

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lc8/Ksf;->mAppkey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    .line 351
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/Ksf;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    .line 352
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    .line 353
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 354
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 355
    .local v15, "errorMsg":Ljava/lang/String;
    const-string/jumbo v4, "OrangeConfig"

    const-string/jumbo v5, "config_rate"

    if-nez v11, :cond_d

    const-string/jumbo v3, "null"

    .line 357
    :goto_5
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 355
    invoke-static {v4, v5, v3, v6, v15}, Lc8/Rtf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .end local v15    # "errorMsg":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lc8/Jsf;->addFail(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v3, "ConfigCenter"

    const-string/jumbo v4, "loadConfig req error"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "errCode"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "errMsg"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v14, v5, v6

    invoke-static {v3, v4, v5}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Jsf;->mLoadingConfigSet:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 363
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 346
    .end local v13    # "errCode":I
    .end local v14    # "errMsg":Ljava/lang/String;
    :cond_c
    invoke-virtual {v2}, Lc8/Ltf;->getErrorCode()I

    move-result v13

    .line 347
    .restart local v13    # "errCode":I
    invoke-virtual {v2}, Lc8/Ltf;->getErrorMsg()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "errMsg":Ljava/lang/String;
    goto/16 :goto_4

    .line 355
    .restart local v15    # "errorMsg":Ljava/lang/String;
    :cond_d
    iget-object v3, v11, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    goto :goto_5
.end method

.method public notifyListeners(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "fromCache"    # Z

    .prologue
    .line 493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 515
    :cond_0
    return-void

    .line 496
    :cond_1
    iget-object v6, p0, Lc8/Jsf;->mListeners:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 497
    .local v1, "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListener;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 498
    .local v3, "listenerSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 499
    const-string/jumbo v7, "ConfigCenter"

    const-string/jumbo v8, "notifyListeners "

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "namespace"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "listenerSet.size"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Dtf;

    .line 501
    .local v0, "listener":Lc8/Dtf;
    invoke-direct {p0, p1, v0}, Lc8/Jsf;->notifyListener(Ljava/lang/String;Lc8/Dtf;)V

    goto :goto_0

    .line 506
    .end local v0    # "listener":Lc8/Dtf;
    .end local v1    # "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListener;>;>;"
    .end local v3    # "listenerSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListener;>;"
    :cond_3
    iget-object v6, p0, Lc8/Jsf;->mListenersV1:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 507
    .local v2, "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListenerV1;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 508
    .local v5, "listenerV1Set":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListenerV1;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 509
    const-string/jumbo v7, "ConfigCenter"

    const-string/jumbo v8, "notifyListeners "

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "namespace"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "listenerV1Set.size"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Gtf;

    .line 511
    .local v4, "listenerV1":Lc8/Gtf;
    invoke-direct {p0, p1, v4, p2}, Lc8/Jsf;->notifyListenerV1(Ljava/lang/String;Lc8/Gtf;Z)V

    goto :goto_1
.end method

.method public registerListener([Ljava/lang/String;Lc8/Dtf;)V
    .locals 9
    .param p1, "namespaces"    # [Ljava/lang/String;
    .param p2, "listener"    # Lc8/Dtf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 389
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    if-nez p2, :cond_2

    .line 390
    :cond_0
    const-string/jumbo v2, "ConfigCenter"

    const-string/jumbo v4, "registerListener error as param is null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_1
    return-void

    .line 393
    :cond_2
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, p1, v2

    .line 394
    .local v1, "namespace":Ljava/lang/String;
    iget-object v5, p0, Lc8/Jsf;->mListeners:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 395
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListener;>;"
    if-nez v0, :cond_3

    .line 396
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListener;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 397
    .restart local v0    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListener;>;"
    iget-object v5, p0, Lc8/Jsf;->mListeners:Ljava/util/Map;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 400
    const-string/jumbo v5, "ConfigCenter"

    const-string/jumbo v6, "registerListener"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "namespace"

    aput-object v8, v7, v3

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v5, Lc8/Jsf;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    invoke-virtual {v5, v1}, Lc8/Htf;->getConfig(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 403
    invoke-direct {p0, v1, p2}, Lc8/Jsf;->notifyListener(Ljava/lang/String;Lc8/Dtf;)V

    .line 393
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public registerListenerV1([Ljava/lang/String;Lc8/Gtf;)V
    .locals 10
    .param p1, "namespaces"    # [Ljava/lang/String;
    .param p2, "listenerV1"    # Lc8/Gtf;

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 410
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    if-nez p2, :cond_2

    .line 411
    :cond_0
    const-string/jumbo v2, "ConfigCenter"

    const-string/jumbo v4, "registerListenerV1 error as param is null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    :cond_1
    return-void

    .line 414
    :cond_2
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, p1, v2

    .line 415
    .local v1, "namespace":Ljava/lang/String;
    iget-object v5, p0, Lc8/Jsf;->mListenersV1:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 416
    .local v0, "V1listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListenerV1;>;"
    if-nez v0, :cond_3

    .line 417
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "V1listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListenerV1;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 418
    .restart local v0    # "V1listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListenerV1;>;"
    iget-object v5, p0, Lc8/Jsf;->mListenersV1:Ljava/util/Map;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 421
    const-string/jumbo v5, "ConfigCenter"

    const-string/jumbo v6, "registerListenerV1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "namespace"

    aput-object v8, v7, v3

    aput-object v1, v7, v9

    invoke-static {v5, v6, v7}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v5, Lc8/Jsf;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    invoke-virtual {v5, v1}, Lc8/Htf;->getConfig(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 425
    invoke-direct {p0, v1, p2, v9}, Lc8/Jsf;->notifyListenerV1(Ljava/lang/String;Lc8/Gtf;Z)V

    .line 414
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public retryFailRequests()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 753
    sget-object v3, Lc8/Ksf;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lc8/Ytf;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 754
    iget-object v3, p0, Lc8/Jsf;->mFailRequestsSet:Ljava/util/Set;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lc8/Jsf;->mFailRequestsSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 755
    const-string/jumbo v3, "ConfigCenter"

    const-string/jumbo v4, "retryFailRequests"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "mFailRequestsSet.size"

    aput-object v6, v5, v8

    iget-object v6, p0, Lc8/Jsf;->mFailRequestsSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const-string/jumbo v6, "mFailRequestsSet"

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Lc8/Jsf;->mFailRequestsSet:Ljava/util/Set;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v1, "nameSpaceDOs":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/orange/model/NameSpaceDO;>;"
    iget-object v3, p0, Lc8/Jsf;->mFailRequestsSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 759
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 762
    const-string/jumbo v4, "ConfigCenter"

    const-string/jumbo v5, "retryFailRequests"

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "name"

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    invoke-static {v4, v5, v6}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    invoke-static {}, Lc8/Itf;->getIndexFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 764
    sget-object v4, Lc8/Itf;->indexUpdCacheUrl:Ljava/lang/String;

    sget-object v5, Lc8/Itf;->indexUpdCacheMd5:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lc8/Jsf;->updateIndex(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :cond_1
    iget-object v4, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v4, v0}, Lc8/Itf;->getNameSpace(Ljava/lang/String;)Lcom/taobao/orange/model/NameSpaceDO;

    move-result-object v2

    .line 768
    .local v2, "namespaceDO":Lcom/taobao/orange/model/NameSpaceDO;
    if-eqz v2, :cond_0

    .line 769
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 773
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "namespaceDO":Lcom/taobao/orange/model/NameSpaceDO;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 774
    invoke-direct {p0, v1}, Lc8/Jsf;->loadConfigs(Ljava/util/List;)V

    .line 782
    .end local v1    # "nameSpaceDOs":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/orange/model/NameSpaceDO;>;"
    :cond_3
    :goto_1
    return-void

    .line 776
    .restart local v1    # "nameSpaceDOs":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/orange/model/NameSpaceDO;>;"
    :cond_4
    const-string/jumbo v3, "ConfigCenter"

    const-string/jumbo v4, "no nameSpaceDOs exits"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 779
    .end local v1    # "nameSpaceDOs":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/orange/model/NameSpaceDO;>;"
    :cond_5
    const-string/jumbo v3, "ConfigCenter"

    const-string/jumbo v4, "no fail requests need to retry"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public unregisterListenerV1([Ljava/lang/String;Lc8/Gtf;)V
    .locals 9
    .param p1, "namespaces"    # [Ljava/lang/String;
    .param p2, "listenerV1"    # Lc8/Gtf;

    .prologue
    const/4 v3, 0x0

    .line 432
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    if-nez p2, :cond_2

    .line 433
    :cond_0
    const-string/jumbo v2, "ConfigCenter"

    const-string/jumbo v4, "registerListenerV1 error as param is null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    :cond_1
    return-void

    .line 436
    :cond_2
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, p1, v2

    .line 437
    .local v1, "namespace":Ljava/lang/String;
    iget-object v5, p0, Lc8/Jsf;->mListenersV1:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 438
    .local v0, "V1listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/orange/aidl/ParcelableConfigListenerV1;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 439
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 440
    const-string/jumbo v5, "ConfigCenter"

    const-string/jumbo v6, "unregisterListenerV1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "namespace"

    aput-object v8, v7, v3

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 436
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public unregisterListeners([Ljava/lang/String;)V
    .locals 8
    .param p1, "namespaces"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 448
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 456
    :cond_0
    return-void

    .line 451
    :cond_1
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    .line 452
    .local v0, "namespace":Ljava/lang/String;
    const-string/jumbo v4, "ConfigCenter"

    const-string/jumbo v5, "unregisterListener"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "namespace"

    aput-object v7, v6, v2

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iget-object v4, p0, Lc8/Jsf;->mListeners:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v4, p0, Lc8/Jsf;->mListenersV1:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized updateIndex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "cdnUrl"    # Ljava/lang/String;
    .param p2, "cdnMd5"    # Ljava/lang/String;

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 522
    :cond_0
    const-string/jumbo v5, "ConfigCenter"

    const-string/jumbo v6, "updateIndex param is null"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "cdnUrl"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "cdnMd5"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p2, v7, v8

    invoke-static {v5, v6, v7}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :goto_0
    monitor-exit p0

    return-void

    .line 525
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lc8/Jsf;->loadIndex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 526
    .local v4, "result":Z
    if-nez v4, :cond_2

    .line 527
    const-string/jumbo v5, "ConfigCenter"

    const-string/jumbo v6, "updateIndex"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "no need update index"

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 521
    .end local v4    # "result":Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 531
    .restart local v4    # "result":Z
    :cond_2
    :try_start_2
    iget-object v5, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v5}, Lc8/Itf;->getHighLevelNameSpaces()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 532
    const-string/jumbo v5, "ConfigCenter"

    const-string/jumbo v6, "updateIndex ->loadConfigs HIGH Level configs"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "size"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v9}, Lc8/Itf;->getHighLevelNameSpaces()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    iget-object v5, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v5}, Lc8/Itf;->getHighLevelNameSpaces()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lc8/Jsf;->loadConfigs(Ljava/util/List;)V

    .line 538
    :goto_1
    iget-object v5, p0, Lc8/Jsf;->mPushConfigSet:Ljava/util/Set;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lc8/Jsf;->mPushConfigSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 539
    const-string/jumbo v5, "ConfigCenter"

    const-string/jumbo v6, "updateIndex ->loadConfigs push configs"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "mPushConfigSet"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lc8/Jsf;->mPushConfigSet:Ljava/util/Set;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lc8/Jsf;->mPushConfigSet:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v5}, Lc8/Jsf;->loadConfigs(Ljava/util/List;)V

    .line 541
    iget-object v5, p0, Lc8/Jsf;->mPushConfigSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 544
    :cond_3
    invoke-virtual {p0}, Lc8/Jsf;->retryFailRequests()V

    .line 547
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v2, "namespaceDOs":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/orange/model/NameSpaceDO;>;"
    iget-object v5, p0, Lc8/Jsf;->mConfigCache:Lc8/Htf;

    invoke-virtual {v5}, Lc8/Htf;->getConfigMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 549
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/orange/model/ConfigDO;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/orange/model/ConfigDO;

    iget-object v1, v5, Lcom/taobao/orange/model/ConfigDO;->name:Ljava/lang/String;

    .line 550
    .local v1, "namespace":Ljava/lang/String;
    iget-object v5, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v5, v1}, Lc8/Itf;->getNameSpace(Ljava/lang/String;)Lcom/taobao/orange/model/NameSpaceDO;

    move-result-object v3

    .line 551
    .local v3, "nsDo":Lcom/taobao/orange/model/NameSpaceDO;
    if-eqz v3, :cond_4

    .line 552
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 535
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/orange/model/ConfigDO;>;"
    .end local v1    # "namespace":Ljava/lang/String;
    .end local v2    # "namespaceDOs":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/orange/model/NameSpaceDO;>;"
    .end local v3    # "nsDo":Lcom/taobao/orange/model/NameSpaceDO;
    :cond_5
    const-string/jumbo v5, "ConfigCenter"

    const-string/jumbo v6, "updateIndex ->loadConfigs no HIGH Level configs"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 555
    .restart local v2    # "namespaceDOs":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/orange/model/NameSpaceDO;>;"
    :cond_6
    iget-object v5, p0, Lc8/Jsf;->mIndexCache:Lc8/Itf;

    invoke-virtual {v5}, Lc8/Itf;->getHighLevelNameSpaces()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 556
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 557
    const-string/jumbo v5, "ConfigCenter"

    const-string/jumbo v6, "updateIndex ->loadConfigs DEFAULT Level configs"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "size"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    invoke-direct {p0, v2}, Lc8/Jsf;->loadConfigs(Ljava/util/List;)V

    goto/16 :goto_0

    .line 560
    :cond_7
    const-string/jumbo v5, "ConfigCenter"

    const-string/jumbo v6, "updateIndex ->loadConfigs no DEFAULT Level configs"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
