.class public Lanet/channel/SessionCenter;
.super Ljava/lang/Object;
.source "SessionCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bJ;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "awcn.SessionCenter"

.field static instancesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/RI;",
            "Lanet/channel/SessionCenter;",
            ">;"
        }
    .end annotation
.end field

.field private static mInit:Z


# instance fields
.field public final accsSessionManager:Lc8/OI;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final attributeManager:Lc8/YI;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public config:Lc8/RI;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public context:Landroid/content/Context;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field final innerListener:Lc8/bJ;

.field public seqNum:Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final sessionPool:Lc8/dJ;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field final srCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lc8/lJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    return-void
.end method

.method private constructor <init>(Lc8/RI;)V
    .locals 4
    .param p1, "config"    # Lc8/RI;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v2, Lc8/dJ;

    invoke-direct {v2}, Lc8/dJ;-><init>()V

    iput-object v2, p0, Lanet/channel/SessionCenter;->sessionPool:Lc8/dJ;

    .line 57
    new-instance v2, Landroid/util/LruCache;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lanet/channel/SessionCenter;->srCache:Landroid/util/LruCache;

    .line 58
    new-instance v2, Lc8/YI;

    invoke-direct {v2}, Lc8/YI;-><init>()V

    iput-object v2, p0, Lanet/channel/SessionCenter;->attributeManager:Lc8/YI;

    .line 60
    new-instance v2, Lc8/bJ;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lc8/bJ;-><init>(Lanet/channel/SessionCenter;Lc8/ZI;)V

    iput-object v2, p0, Lanet/channel/SessionCenter;->innerListener:Lc8/bJ;

    .line 119
    invoke-static {}, Lc8/TI;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lanet/channel/SessionCenter;->context:Landroid/content/Context;

    .line 120
    iput-object p1, p0, Lanet/channel/SessionCenter;->config:Lc8/RI;

    .line 121
    invoke-virtual {p1}, Lc8/RI;->getAppkey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    .line 122
    iget-object v2, p0, Lanet/channel/SessionCenter;->innerListener:Lc8/bJ;

    invoke-virtual {v2}, Lc8/bJ;->registerAll()V

    .line 123
    new-instance v2, Lc8/OI;

    invoke-direct {v2, p0}, Lc8/OI;-><init>(Lanet/channel/SessionCenter;)V

    iput-object v2, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lc8/OI;

    .line 125
    invoke-virtual {p1}, Lc8/RI;->getAppkey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[default]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    invoke-virtual {p1}, Lc8/RI;->getSecurity()Lc8/gK;

    move-result-object v1

    .line 127
    .local v1, "iSecurity":Lc8/gK;
    invoke-virtual {p1}, Lc8/RI;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "appkey":Ljava/lang/String;
    new-instance v2, Lc8/ZI;

    invoke-direct {v2, p0, v0, v1}, Lc8/ZI;-><init>(Lanet/channel/SessionCenter;Ljava/lang/String;Lc8/gK;)V

    invoke-static {v2}, Lc8/kL;->setSign(Lc8/vL;)V

    .line 145
    .end local v0    # "appkey":Ljava/lang/String;
    .end local v1    # "iSecurity":Lc8/gK;
    :cond_0
    return-void
.end method

.method public static synthetic access$100(Lanet/channel/SessionCenter;Lc8/eL;)V
    .locals 0
    .param p0, "x0"    # Lanet/channel/SessionCenter;
    .param p1, "x1"    # Lc8/eL;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lanet/channel/SessionCenter;->checkStrategy(Lc8/eL;)V

    return-void
.end method

.method public static synthetic access$200()Z
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    sget-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    return v0
.end method

.method private checkStrategy(Lc8/eL;)V
    .locals 4
    .param p1, "response"    # Lc8/eL;

    .prologue
    .line 409
    iget-object v1, p1, Lc8/eL;->dnsInfo:[Lc8/dL;

    .line 410
    .local v1, "dnsInfos":[Lc8/dL;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 411
    aget-object v0, v1, v2

    .line 412
    .local v0, "dnsInfo":Lc8/dL;
    iget-boolean v3, v0, Lc8/dL;->effectNow:Z

    if-eqz v3, :cond_0

    .line 413
    invoke-direct {p0, v0}, Lanet/channel/SessionCenter;->handleEffectNow(Lc8/dL;)V

    .line 415
    :cond_0
    iget-object v3, v0, Lc8/dL;->unit:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 416
    invoke-direct {p0, v0}, Lanet/channel/SessionCenter;->handleUnitChange(Lc8/dL;)V

    .line 410
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "dnsInfo":Lc8/dL;
    :cond_2
    return-void
.end method

.method private dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "instance dispose"

    iget-object v2, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lc8/OI;

    invoke-virtual {v0, v4}, Lc8/OI;->forceCloseSession(Z)V

    .line 150
    iget-object v0, p0, Lanet/channel/SessionCenter;->innerListener:Lc8/bJ;

    invoke-virtual {v0}, Lc8/bJ;->unRegisterAll()V

    .line 151
    return-void
.end method

.method public static declared-synchronized getInstance()Lanet/channel/SessionCenter;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    const-class v5, Lanet/channel/SessionCenter;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v4, :cond_0

    .line 227
    invoke-static {}, Lc8/eM;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 228
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 229
    invoke-static {v0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    .line 233
    :cond_0
    const/4 v3, 0x0

    .line 234
    .local v3, "instance":Lanet/channel/SessionCenter;
    sget-object v4, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    .end local v0    # "context":Landroid/content/Context;
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lanet/channel/Config;Lanet/channel/SessionCenter;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "instance":Lanet/channel/SessionCenter;
    check-cast v3, Lanet/channel/SessionCenter;

    .line 236
    .restart local v3    # "instance":Lanet/channel/SessionCenter;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lc8/RI;->DEFAULT_CONFIG:Lc8/RI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v6, :cond_1

    .line 240
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lanet/channel/Config;Lanet/channel/SessionCenter;>;"
    :cond_2
    monitor-exit v5

    return-object v3

    .line 226
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lanet/channel/Config;Lanet/channel/SessionCenter;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized getInstance(Lc8/RI;)Lanet/channel/SessionCenter;
    .locals 5
    .param p0, "config"    # Lc8/RI;

    .prologue
    .line 201
    const-class v3, Lanet/channel/SessionCenter;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 202
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "config is null!"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 205
    :cond_0
    :try_start_1
    sget-boolean v2, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v2, :cond_1

    .line 206
    invoke-static {}, Lc8/eM;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 207
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 208
    invoke-static {v0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    .line 212
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    sget-object v2, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/SessionCenter;

    .line 213
    .local v1, "instance":Lanet/channel/SessionCenter;
    if-nez v1, :cond_2

    .line 214
    new-instance v1, Lanet/channel/SessionCenter;

    .end local v1    # "instance":Lanet/channel/SessionCenter;
    invoke-direct {v1, p0}, Lanet/channel/SessionCenter;-><init>(Lc8/RI;)V

    .line 215
    .restart local v1    # "instance":Lanet/channel/SessionCenter;
    sget-object v2, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :cond_2
    monitor-exit v3

    return-object v1
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 193
    const-class v2, Lanet/channel/SessionCenter;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lc8/RI;->getConfigByTag(Ljava/lang/String;)Lc8/RI;

    move-result-object v0

    .line 194
    .local v0, "config":Lc8/RI;
    if-nez v0, :cond_0

    .line 195
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "tag not exist!"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v0    # "config":Lc8/RI;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 197
    .restart local v0    # "config":Lc8/RI;
    :cond_0
    :try_start_1
    invoke-static {v0}, Lanet/channel/SessionCenter;->getInstance(Lc8/RI;)Lanet/channel/SessionCenter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1
.end method

.method private handleEffectNow(Lc8/dL;)V
    .locals 16
    .param p1, "dnsInfo"    # Lc8/dL;

    .prologue
    .line 432
    const-string/jumbo v10, "awcn.SessionCenter"

    const-string/jumbo v11, "find effectNow"

    move-object/from16 v0, p0

    iget-object v12, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "host"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p1

    iget-object v15, v0, Lc8/dL;->host:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12, v13}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    move-object/from16 v0, p1

    iget-object v1, v0, Lc8/dL;->aisleses:[Lc8/cL;

    .line 434
    .local v1, "aisles":[Lc8/cL;
    move-object/from16 v0, p1

    iget-object v3, v0, Lc8/dL;->ips:[Ljava/lang/String;

    .line 436
    .local v3, "ips":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lanet/channel/SessionCenter;->sessionPool:Lc8/dJ;

    move-object/from16 v0, p1

    iget-object v11, v0, Lc8/dL;->safeAisles:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/dL;->host:Ljava/lang/String;

    invoke-static {v11, v12}, Lc8/cM;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lanet/channel/SessionCenter;->getSessionRequest(Ljava/lang/String;)Lc8/lJ;

    move-result-object v11

    invoke-virtual {v10, v11}, Lc8/dJ;->getSessions(Lc8/lJ;)Ljava/util/List;

    move-result-object v9

    .line 437
    .local v9, "sessionList":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lanet/channel/Session;

    .line 438
    .local v8, "session":Lanet/channel/Session;
    invoke-virtual {v8}, Lanet/channel/Session;->getConnType()Lc8/BJ;

    move-result-object v10

    invoke-virtual {v10}, Lc8/BJ;->isHttpType()Z

    move-result v10

    if-nez v10, :cond_0

    .line 442
    const/4 v5, 0x0

    .line 443
    .local v5, "isIpMatch":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v10, v3

    if-ge v6, v10, :cond_1

    .line 444
    invoke-virtual {v8}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v3, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 445
    const/4 v5, 0x1

    .line 450
    :cond_1
    if-nez v5, :cond_4

    .line 451
    const/4 v10, 0x2

    invoke-static {v10}, Lc8/KL;->isPrintLog(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 452
    const-string/jumbo v10, "awcn.SessionCenter"

    const-string/jumbo v11, "ip not match"

    iget-object v12, v8, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "session ip"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v8}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, "ips"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12, v13}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    :cond_2
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lanet/channel/Session;->close(Z)V

    goto :goto_0

    .line 443
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 458
    :cond_4
    const/4 v4, 0x0

    .line 459
    .local v4, "isAisleMatch":Z
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    array-length v10, v1

    if-ge v7, v10, :cond_5

    .line 460
    invoke-virtual {v8}, Lanet/channel/Session;->getPort()I

    move-result v10

    aget-object v11, v1, v7

    iget v11, v11, Lc8/cL;->port:I

    if-ne v10, v11, :cond_7

    invoke-virtual {v8}, Lanet/channel/Session;->getConnType()Lc8/BJ;

    move-result-object v10

    aget-object v11, v1, v7

    invoke-static {v11}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lc8/cL;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v11

    invoke-static {v11}, Lc8/BJ;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lc8/BJ;

    move-result-object v11

    invoke-virtual {v10, v11}, Lc8/BJ;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 461
    const/4 v4, 0x1

    .line 466
    :cond_5
    if-nez v4, :cond_0

    .line 467
    const/4 v10, 0x2

    invoke-static {v10}, Lc8/KL;->isPrintLog(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 468
    const-string/jumbo v10, "awcn.SessionCenter"

    const-string/jumbo v11, "aisle not match"

    iget-object v12, v8, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "port"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v8}, Lanet/channel/Session;->getPort()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, "connType"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-virtual {v8}, Lanet/channel/Session;->getConnType()Lc8/BJ;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string/jumbo v15, "aisle"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12, v13}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lanet/channel/Session;->close(Z)V

    goto/16 :goto_0

    .line 459
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 474
    .end local v4    # "isAisleMatch":Z
    .end local v5    # "isIpMatch":Z
    .end local v6    # "j":I
    .end local v7    # "k":I
    .end local v8    # "session":Lanet/channel/Session;
    :cond_8
    return-void
.end method

.method private handleUnitChange(Lc8/dL;)V
    .locals 10
    .param p1, "dnsInfo"    # Lc8/dL;

    .prologue
    const/4 v9, 0x1

    .line 422
    iget-object v3, p0, Lanet/channel/SessionCenter;->sessionPool:Lc8/dJ;

    iget-object v4, p1, Lc8/dL;->safeAisles:Ljava/lang/String;

    iget-object v5, p1, Lc8/dL;->host:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/cM;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lanet/channel/SessionCenter;->getSessionRequest(Ljava/lang/String;)Lc8/lJ;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/dJ;->getSessions(Lc8/lJ;)Ljava/util/List;

    move-result-object v2

    .line 423
    .local v2, "sessionList":Ljava/util/List;, "Ljava/util/List<Lanet/channel/Session;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/Session;

    .line 424
    .local v1, "session":Lanet/channel/Session;
    iget-object v3, v1, Lanet/channel/Session;->unit:Ljava/lang/String;

    iget-object v4, p1, Lc8/dL;->unit:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/cM;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 425
    const-string/jumbo v3, "awcn.SessionCenter"

    const-string/jumbo v4, "unit change"

    iget-object v5, v1, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "session unit"

    aput-object v8, v6, v7

    iget-object v7, v1, Lanet/channel/Session;->unit:Ljava/lang/String;

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string/jumbo v8, "unit"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p1, Lc8/dL;->unit:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    invoke-virtual {v1, v9}, Lanet/channel/Session;->close(Z)V

    goto :goto_0

    .line 429
    .end local v1    # "session":Lanet/channel/Session;
    :cond_1
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const-class v1, Lanet/channel/SessionCenter;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 64
    :try_start_0
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v2, "paramter context is null!"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "init failed. paramter context is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 67
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/TI;->setContext(Landroid/content/Context;)V

    .line 68
    sget-boolean v0, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v0, :cond_1

    .line 69
    sget-object v0, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    sget-object v2, Lc8/RI;->DEFAULT_CONFIG:Lc8/RI;

    new-instance v3, Lanet/channel/SessionCenter;

    sget-object v4, Lc8/RI;->DEFAULT_CONFIG:Lc8/RI;

    invoke-direct {v3, v4}, Lanet/channel/SessionCenter;-><init>(Lc8/RI;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {}, Lc8/OL;->initialize()V

    .line 71
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v0

    invoke-static {}, Lc8/TI;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lc8/MK;->initialize(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lanet/channel/SessionCenter;->mInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_1
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lc8/RI;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lc8/RI;

    .prologue
    .line 100
    const-class v2, Lanet/channel/SessionCenter;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 101
    :try_start_0
    const-string/jumbo v1, "awcn.SessionCenter"

    const-string/jumbo v3, "paramter context is null!"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "init failed. paramter context is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 105
    :cond_0
    if-nez p1, :cond_1

    .line 106
    :try_start_1
    const-string/jumbo v1, "awcn.SessionCenter"

    const-string/jumbo v3, "paramter config is null!"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "init failed. paramter config is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_1
    invoke-static {p0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    .line 112
    sget-object v1, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    new-instance v0, Lanet/channel/SessionCenter;

    invoke-direct {v0, p1}, Lanet/channel/SessionCenter;-><init>(Lc8/RI;)V

    .line 114
    .local v0, "instance":Lanet/channel/SessionCenter;
    sget-object v1, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local v0    # "instance":Lanet/channel/SessionCenter;
    :cond_2
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized switchEnvironment(Lanet/channel/entity/ENV;)V
    .locals 13
    .param p0, "env"    # Lanet/channel/entity/ENV;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    const-class v6, Lanet/channel/SessionCenter;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lc8/TI;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v7

    if-eq v7, p0, :cond_0

    .line 165
    const-string/jumbo v7, "awcn.SessionCenter"

    const-string/jumbo v8, "switch env"

    const/4 v9, 0x0

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "old"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {}, Lc8/TI;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "new"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object p0, v10, v11

    invoke-static {v7, v8, v9, v10}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {p0}, Lc8/TI;->setEnv(Lanet/channel/entity/ENV;)V

    .line 168
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v7

    invoke-interface {v7}, Lc8/MK;->switchEnv()V

    .line 169
    invoke-static {}, Lc8/TI;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v9, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v7, v8, v9}, Lc8/CXp;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lc8/CXp;

    move-result-object v3

    .line 170
    .local v3, "spdyAgent":Lc8/CXp;
    sget-object v7, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    if-ne p0, v7, :cond_3

    :goto_0
    invoke-virtual {v3, v4}, Lc8/CXp;->switchAccsServer(I)V

    .line 173
    .end local v3    # "spdyAgent":Lc8/CXp;
    :cond_0
    sget-object v4, Lanet/channel/SessionCenter;->instancesMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 174
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lanet/channel/Config;Lanet/channel/SessionCenter;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/SessionCenter;

    .line 176
    .local v1, "instance":Lanet/channel/SessionCenter;
    iget-object v4, v1, Lanet/channel/SessionCenter;->config:Lc8/RI;

    invoke-virtual {v4}, Lc8/RI;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v4

    if-eq v4, p0, :cond_1

    .line 177
    const-string/jumbo v4, "awcn.SessionCenter"

    const-string/jumbo v5, "remove instance"

    iget-object v7, v1, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "ENVIRONMENT"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v1, Lanet/channel/SessionCenter;->config:Lc8/RI;

    invoke-virtual {v10}, Lc8/RI;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v5, v7, v8}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-direct {v1}, Lanet/channel/SessionCenter;->dispose()V

    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 182
    .end local v1    # "instance":Lanet/channel/SessionCenter;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lanet/channel/Config;Lanet/channel/SessionCenter;>;>;"
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v4, "awcn.SessionCenter"

    const-string/jumbo v5, "switch env error."

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v7, v0, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    monitor-exit v6

    return-void

    .restart local v3    # "spdyAgent":Lc8/CXp;
    :cond_3
    move v4, v5

    .line 170
    goto :goto_0

    .line 164
    .end local v3    # "spdyAgent":Lc8/CXp;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4
.end method


# virtual methods
.method public forceRecreateAccsSession()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lc8/OI;

    invoke-virtual {v0}, Lc8/OI;->forceReCreateSession()V

    .line 335
    return-void
.end method

.method public get(Lc8/XL;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 11
    .param p1, "httpUrl"    # Lc8/XL;
    .param p2, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;
    .param p3, "timeout"    # J

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 284
    const/4 v1, 0x0

    .line 286
    .local v1, "session":Lanet/channel/Session;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lanet/channel/SessionCenter;->getInternal(Lc8/XL;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lanet/channel/NoNetworkException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lanet/channel/NoAvailStrategyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .line 306
    :goto_0
    return-object v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/security/InvalidParameterException;
    const-string/jumbo v2, "awcn.SessionCenter"

    const-string/jumbo v3, "[Get]param url is invaild"

    iget-object v4, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "url"

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lc8/XL;->urlString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 290
    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string/jumbo v2, "awcn.SessionCenter"

    const-string/jumbo v3, "[Get]timeout exception"

    iget-object v4, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "url"

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lc8/XL;->urlString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v2

    const-string/jumbo v2, "awcn.SessionCenter"

    const-string/jumbo v3, "[Get]no network"

    iget-object v4, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "url"

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lc8/XL;->urlString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    :catch_3
    move-exception v2

    const-string/jumbo v2, "awcn.SessionCenter"

    const-string/jumbo v3, "[Get]no strategy"

    iget-object v4, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "url"

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lc8/XL;->urlString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :catch_4
    move-exception v0

    .line 300
    .local v0, "e":Ljava/net/ConnectException;
    const-string/jumbo v2, "awcn.SessionCenter"

    const-string/jumbo v3, "[Get]connect exception"

    iget-object v4, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "errMsg"

    aput-object v6, v5, v7

    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "url"

    aput-object v6, v5, v9

    const/4 v6, 0x3

    invoke-virtual {p1}, Lc8/XL;->urlString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 302
    .end local v0    # "e":Ljava/net/ConnectException;
    :catch_5
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "awcn.SessionCenter"

    const-string/jumbo v3, "[Get]exception"

    iget-object v4, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "url"

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lc8/XL;->urlString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/String;J)Lanet/channel/Session;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lanet/channel/SessionCenter;->get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;
    .param p3, "timeout"    # J

    .prologue
    .line 280
    invoke-static {p1}, Lc8/XL;->parse(Ljava/lang/String;)Lc8/XL;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lanet/channel/SessionCenter;->get(Lc8/XL;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method protected getInternal(Lc8/XL;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 15
    .param p1, "httpUrl"    # Lc8/XL;
    .param p2, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 338
    sget-boolean v9, Lanet/channel/SessionCenter;->mInit:Z

    if-nez v9, :cond_1

    .line 339
    const-string/jumbo v9, "awcn.SessionCenter"

    const-string/jumbo v10, "getInternal not inited!"

    iget-object v11, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    const/4 v7, 0x0

    .line 388
    :cond_0
    :goto_0
    return-object v7

    .line 343
    :cond_1
    if-nez p1, :cond_2

    .line 344
    const/4 v7, 0x0

    goto :goto_0

    .line 347
    :cond_2
    const-string/jumbo v9, "awcn.SessionCenter"

    const-string/jumbo v10, "getInternal"

    iget-object v11, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "u"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Lc8/XL;->urlString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "TypeClass"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object p2, v12, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "timeout"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11, v12}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lc8/MK;->getCNameByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "cname":Ljava/lang/String;
    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "host":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lc8/XL;->scheme()Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lc8/XL;->isSchemeLocked()Z

    move-result v9

    if-nez v9, :cond_3

    .line 353
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v9

    invoke-interface {v9, v3, v6}, Lc8/MK;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 356
    :cond_3
    const-string/jumbo v9, "://"

    invoke-static {v6, v9, v3}, Lc8/cM;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lanet/channel/SessionCenter;->getSessionRequest(Ljava/lang/String;)Lc8/lJ;

    move-result-object v5

    .line 358
    .local v5, "request":Lc8/lJ;
    iget-object v9, p0, Lanet/channel/SessionCenter;->sessionPool:Lc8/dJ;

    move-object/from16 v0, p2

    invoke-virtual {v9, v5, v0}, Lc8/dJ;->getSession(Lc8/lJ;Lanet/channel/entity/ConnType$TypeLevel;)Lanet/channel/Session;

    move-result-object v7

    .line 360
    .local v7, "session":Lanet/channel/Session;
    if-eqz v7, :cond_5

    .line 361
    const-string/jumbo v9, "awcn.SessionCenter"

    const-string/jumbo v10, "get internal hit cache session"

    iget-object v11, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "session"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    invoke-static {v9, v10, v11, v12}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "request":Lc8/lJ;
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "session":Lanet/channel/Session;
    :cond_4
    move-object v3, v2

    .line 350
    goto :goto_1

    .line 363
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "request":Lc8/lJ;
    .restart local v6    # "scheme":Ljava/lang/String;
    .restart local v7    # "session":Lanet/channel/Session;
    :cond_5
    iget-object v9, p0, Lanet/channel/SessionCenter;->config:Lc8/RI;

    sget-object v10, Lc8/RI;->DEFAULT_CONFIG:Lc8/RI;

    if-ne v9, v10, :cond_6

    sget-object v9, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    move-object/from16 v0, p2

    if-ne v0, v9, :cond_6

    .line 365
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 368
    :cond_6
    invoke-static {}, Lc8/TI;->isAppBackground()Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    move-object/from16 v0, p2

    if-ne v0, v9, :cond_7

    invoke-static {}, Lc8/PI;->isAccsSessionCreateForbiddenInBg()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 372
    iget-object v9, p0, Lanet/channel/SessionCenter;->attributeManager:Lc8/YI;

    invoke-virtual/range {p1 .. p1}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lc8/YI;->getSessionInfo(Ljava/lang/String;)Lc8/cJ;

    move-result-object v8

    .line 373
    .local v8, "sessionInfo":Lc8/cJ;
    if-eqz v8, :cond_7

    iget-boolean v9, v8, Lc8/cJ;->isAccs:Z

    if-eqz v9, :cond_7

    .line 374
    const-string/jumbo v9, "awcn.SessionCenter"

    const-string/jumbo v10, "app background, forbid to create accs session"

    iget-object v11, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    new-instance v9, Ljava/net/ConnectException;

    const-string/jumbo v10, "accs session connecting forbidden in background"

    invoke-direct {v9, v10}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 378
    .end local v8    # "sessionInfo":Lc8/cJ;
    :cond_7
    iget-object v9, p0, Lanet/channel/SessionCenter;->context:Landroid/content/Context;

    iget-object v10, p0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    invoke-static {v10}, Lc8/bM;->createSequenceNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v5, v9, v0, v10}, Lc8/lJ;->start(Landroid/content/Context;Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)V

    .line 379
    const-wide/16 v10, 0x0

    cmp-long v9, p3, v10

    if-lez v9, :cond_0

    invoke-virtual {v5}, Lc8/lJ;->getConnectingType()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v9

    move-object/from16 v0, p2

    if-ne v9, v0, :cond_0

    .line 380
    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Lc8/lJ;->await(J)V

    .line 381
    iget-object v9, p0, Lanet/channel/SessionCenter;->sessionPool:Lc8/dJ;

    move-object/from16 v0, p2

    invoke-virtual {v9, v5, v0}, Lc8/dJ;->getSession(Lc8/lJ;Lanet/channel/entity/ConnType$TypeLevel;)Lanet/channel/Session;

    move-result-object v7

    .line 382
    if-nez v7, :cond_0

    .line 383
    new-instance v9, Ljava/net/ConnectException;

    const-string/jumbo v10, "session connecting failed or timeout"

    invoke-direct {v9, v10}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public getSessionRequest(Ljava/lang/String;)Lc8/lJ;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 477
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    const/4 v0, 0x0

    .line 489
    :goto_0
    return-object v0

    .line 482
    :cond_0
    iget-object v2, p0, Lanet/channel/SessionCenter;->srCache:Landroid/util/LruCache;

    monitor-enter v2

    .line 483
    :try_start_0
    iget-object v1, p0, Lanet/channel/SessionCenter;->srCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lJ;

    .line 484
    .local v0, "ret":Lc8/lJ;
    if-nez v0, :cond_1

    .line 485
    new-instance v0, Lc8/lJ;

    .end local v0    # "ret":Lc8/lJ;
    invoke-direct {v0, p1, p0}, Lc8/lJ;-><init>(Ljava/lang/String;Lanet/channel/SessionCenter;)V

    .line 486
    .restart local v0    # "ret":Lc8/lJ;
    iget-object v1, p0, Lanet/channel/SessionCenter;->srCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "ret":Lc8/lJ;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getThrowsException(Ljava/lang/String;J)Lanet/channel/Session;
    .locals 2
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lanet/channel/SessionCenter;->getThrowsException(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method public getThrowsException(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .locals 1
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "typeClass"    # Lanet/channel/entity/ConnType$TypeLevel;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {p1}, Lc8/XL;->parse(Ljava/lang/String;)Lc8/XL;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lanet/channel/SessionCenter;->getInternal(Lc8/XL;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method public registerPublicKey(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "publicKey"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lanet/channel/SessionCenter;->attributeManager:Lc8/YI;

    invoke-virtual {v0, p1, p2}, Lc8/YI;->registerPublicKey(Ljava/lang/String;I)V

    .line 325
    return-void
.end method

.method public registerSessionInfo(Lc8/cJ;)V
    .locals 1
    .param p1, "info"    # Lc8/cJ;

    .prologue
    .line 310
    iget-object v0, p0, Lanet/channel/SessionCenter;->attributeManager:Lc8/YI;

    invoke-virtual {v0, p1}, Lc8/YI;->registerSessionInfo(Lc8/cJ;)V

    .line 311
    iget-boolean v0, p1, Lc8/cJ;->isKeepAlive:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lc8/OI;

    invoke-virtual {v0}, Lc8/OI;->checkAndStartSession()V

    .line 314
    :cond_0
    return-void
.end method

.method public unregisterSessionInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v1, p0, Lanet/channel/SessionCenter;->attributeManager:Lc8/YI;

    invoke-virtual {v1, p1}, Lc8/YI;->unregisterSessionInfo(Ljava/lang/String;)Lc8/cJ;

    move-result-object v0

    .line 318
    .local v0, "info":Lc8/cJ;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lc8/cJ;->isKeepAlive:Z

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lanet/channel/SessionCenter;->accsSessionManager:Lc8/OI;

    invoke-virtual {v1}, Lc8/OI;->checkAndStartSession()V

    .line 321
    :cond_0
    return-void
.end method
