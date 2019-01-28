.class public Lc8/Ntf;
.super Ljava/lang/Object;
.source "ReqStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/orange/request/ReqStrategy$EnvHost;
    }
.end annotation


# static fields
.field private static final IPS_EXPIRED_TIMES:J = 0x5265c00L

.field private static final IPS_WRITED_TIMES:J = 0x1b7740L

.field private static final TAG:Ljava/lang/String; = "ReqStrategy"

.field public static ack_req_hosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/orange/request/ReqStrategy$EnvHost;",
            ">;"
        }
    .end annotation
.end field

.field public static reqTimestampOffset:J

.field public static update_req_hosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/orange/request/ReqStrategy$EnvHost;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private curDomain:Ljava/lang/String;

.field private curIps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private failOnDomain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/Ntf;->update_req_hosts:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/Ntf;->ack_req_hosts:Ljava/util/Map;

    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/Ntf;->reqTimestampOffset:J

    .line 60
    const-string/jumbo v0, "ReqStrategy"

    const-string/jumbo v1, "static init~"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    sget-object v0, Lc8/Ksf;->mServerType:Lcom/taobao/orange/OConstant$SERVER;

    sget-object v1, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    if-ne v0, v1, :cond_0

    .line 62
    sget-object v0, Lc8/Ntf;->update_req_hosts:Ljava/util/Map;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    const-string/jumbo v3, "orange-dc.alibaba.com"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "140.205.134.24"

    aput-object v5, v4, v6

    const-string/jumbo v5, "140.205.32.56"

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/taobao/orange/request/ReqStrategy$EnvHost;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lc8/Ntf;->update_req_hosts:Ljava/util/Map;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    const-string/jumbo v3, "orange-dc-pre.alibaba.com"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "140.205.173.181"

    aput-object v5, v4, v6

    const-string/jumbo v5, "140.205.173.180"

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/taobao/orange/request/ReqStrategy$EnvHost;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lc8/Ntf;->update_req_hosts:Ljava/util/Map;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->TEST:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    const-string/jumbo v3, "orange-dc-daily.alibaba.net"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "10.195.33.80"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/taobao/orange/request/ReqStrategy$EnvHost;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lc8/Ntf;->ack_req_hosts:Ljava/util/Map;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    const-string/jumbo v3, "orange-ack.alibaba.com"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "140.205.134.24"

    aput-object v5, v4, v6

    const-string/jumbo v5, "140.205.32.56"

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/taobao/orange/request/ReqStrategy$EnvHost;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lc8/Ntf;->ack_req_hosts:Ljava/util/Map;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    const-string/jumbo v3, "orange-ack-pre.alibaba.com"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "140.205.173.181"

    aput-object v5, v4, v6

    const-string/jumbo v5, "140.205.173.180"

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/taobao/orange/request/ReqStrategy$EnvHost;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lc8/Ntf;->ack_req_hosts:Ljava/util/Map;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->TEST:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    const-string/jumbo v3, "orange-ack-daily.alibaba.net"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "10.195.33.80"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/taobao/orange/request/ReqStrategy$EnvHost;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :goto_0
    sget-object v0, Lc8/Ntf;->update_req_hosts:Ljava/util/Map;

    invoke-static {v0}, Lc8/Ntf;->getReqIpsFromFiles(Ljava/util/Map;)V

    .line 82
    sget-object v0, Lc8/Ntf;->ack_req_hosts:Ljava/util/Map;

    invoke-static {v0}, Lc8/Ntf;->getReqIpsFromFiles(Ljava/util/Map;)V

    .line 83
    return-void

    .line 69
    :cond_0
    sget-object v0, Lc8/Ksf;->mServerType:Lcom/taobao/orange/OConstant$SERVER;

    sget-object v1, Lcom/taobao/orange/OConstant$SERVER;->YOUKU:Lcom/taobao/orange/OConstant$SERVER;

    if-ne v0, v1, :cond_1

    .line 70
    sget-object v0, Lc8/Ntf;->update_req_hosts:Ljava/util/Map;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    const-string/jumbo v3, "orange-dc.youku.com"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "106.11.186.1"

    aput-object v5, v4, v6

    const-string/jumbo v5, "106.11.186.2"

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/taobao/orange/request/ReqStrategy$EnvHost;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lc8/Ntf;->update_req_hosts:Ljava/util/Map;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    const-string/jumbo v3, "orange-dc-pre.youku.com"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "106.11.45.25"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/taobao/orange/request/ReqStrategy$EnvHost;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lc8/Ntf;->update_req_hosts:Ljava/util/Map;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->TEST:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    const-string/jumbo v3, "orange-dc-daily.heyi.test"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "10.195.33.80"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/taobao/orange/request/ReqStrategy$EnvHost;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lc8/Ntf;->ack_req_hosts:Ljava/util/Map;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    const-string/jumbo v3, "orange-ack.youku.com"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "106.11.186.1"

    aput-object v5, v4, v6

    const-string/jumbo v5, "106.11.186.2"

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/taobao/orange/request/ReqStrategy$EnvHost;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lc8/Ntf;->ack_req_hosts:Ljava/util/Map;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    const-string/jumbo v3, "orange-ack-pre.youku.com"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "106.11.45.25"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/taobao/orange/request/ReqStrategy$EnvHost;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lc8/Ntf;->ack_req_hosts:Ljava/util/Map;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->TEST:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v1}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    const-string/jumbo v3, "orange-ack-daily.heyi.test"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "10.195.33.80"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/taobao/orange/request/ReqStrategy$EnvHost;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 78
    :cond_1
    const-string/jumbo v0, "ReqStrategy"

    const-string/jumbo v1, "init hosts fail as error server type"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "isAckReq"    # Z

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/Ntf;->failOnDomain:Z

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/Ntf;->curIps:Ljava/util/List;

    .line 127
    invoke-direct {p0, p1}, Lc8/Ntf;->getEnvHost(Z)Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    move-result-object v0

    .line 128
    .local v0, "envHost":Lcom/taobao/orange/request/ReqStrategy$EnvHost;
    iget-object v1, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->domain:Ljava/lang/String;

    iput-object v1, p0, Lc8/Ntf;->curDomain:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lc8/Ntf;->curIps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 130
    iget-object v1, p0, Lc8/Ntf;->curIps:Ljava/util/List;

    iget-object v2, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->ips:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    return-void
.end method

.method private getEnvHost(Z)Lcom/taobao/orange/request/ReqStrategy$EnvHost;
    .locals 4
    .param p1, "isAckReq"    # Z

    .prologue
    .line 177
    sget-object v2, Lc8/Ksf;->mEnv:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v2}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v0

    .line 179
    .local v0, "env":I
    if-eqz p1, :cond_0

    .line 180
    sget-object v2, Lc8/Ntf;->ack_req_hosts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    .line 184
    .local v1, "envHost":Lcom/taobao/orange/request/ReqStrategy$EnvHost;
    :goto_0
    return-object v1

    .line 182
    .end local v1    # "envHost":Lcom/taobao/orange/request/ReqStrategy$EnvHost;
    :cond_0
    sget-object v2, Lc8/Ntf;->update_req_hosts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    .restart local v1    # "envHost":Lcom/taobao/orange/request/ReqStrategy$EnvHost;
    goto :goto_0
.end method

.method private static getReqIpsFromFiles(Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/orange/request/ReqStrategy$EnvHost;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "envHosts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/taobao/orange/request/ReqStrategy$EnvHost;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 88
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/taobao/orange/request/ReqStrategy$EnvHost;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v11, Lc8/Ksf;->mEnv:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v11}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v11

    if-ne v9, v11, :cond_0

    .line 91
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    .line 92
    .local v3, "curEnvHost":Lcom/taobao/orange/request/ReqStrategy$EnvHost;
    const/4 v2, 0x0

    .line 94
    .local v2, "cacheEnvHost":Lcom/taobao/orange/request/ReqStrategy$EnvHost;
    const-string/jumbo v9, "/orange_ips"

    iget-object v11, v3, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->domain:Ljava/lang/String;

    invoke-static {v9, v11}, Lc8/Ztf;->restoreObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 95
    .local v7, "obj":Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 97
    :try_start_0
    move-object v0, v7

    check-cast v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    move-object v2, v0

    .line 98
    const-string/jumbo v9, "ReqStrategy"

    const-string/jumbo v11, "getReqIpsFromFiles"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "cacheEnvHost"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    invoke-static {v9, v11, v12}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 107
    .local v4, "curTime":J
    iget-wide v12, v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->updateTimes:J

    sub-long v12, v4, v12

    const-wide/32 v14, 0x5265c00

    cmp-long v9, v12, v14

    if-lez v9, :cond_2

    .line 108
    const-string/jumbo v9, "ReqStrategy"

    const-string/jumbo v11, "getReqIpsFromFiles expired"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "host"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, v3, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->domain:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "curTime"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v4, v5}, Lc8/cuf;->getFormatTime(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "ipsUpdTime"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    iget-wide v14, v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->updateTimes:J

    invoke-static {v14, v15}, Lc8/cuf;->getFormatTime(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v11, v12}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/orange_ips/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->domain:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/Ztf;->clearCacheFile(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    .end local v4    # "curTime":J
    :catch_0
    move-exception v8

    .line 100
    .local v8, "t":Ljava/lang/Throwable;
    const-string/jumbo v9, "ReqStrategy"

    const-string/jumbo v11, "getReqIpsFromFiles"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v11, v8, v12}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 111
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v4    # "curTime":J
    :cond_2
    const-string/jumbo v9, "ReqStrategy"

    const-string/jumbo v11, "getReqIpsFromFiles not expired"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v11, v12}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v9, v3, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->ips:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 113
    iget-object v9, v3, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->ips:Ljava/util/List;

    iget-object v11, v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->ips:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-wide v12, v2, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->updateTimes:J

    iput-wide v12, v3, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->updateTimes:J

    goto/16 :goto_0

    .line 117
    .end local v4    # "curTime":J
    :cond_3
    const-string/jumbo v9, "ReqStrategy"

    const-string/jumbo v11, "getReqIpsFromFiles"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "not exist cacheEnvHost"

    aput-object v14, v12, v13

    invoke-static {v9, v11, v12}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 120
    .end local v2    # "cacheEnvHost":Lcom/taobao/orange/request/ReqStrategy$EnvHost;
    .end local v3    # "curEnvHost":Lcom/taobao/orange/request/ReqStrategy$EnvHost;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/taobao/orange/request/ReqStrategy$EnvHost;>;"
    .end local v7    # "obj":Ljava/lang/Object;
    :cond_4
    return-void
.end method


# virtual methods
.method public getCurDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lc8/Ntf;->curDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getCurReqHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lc8/Ntf;->failOnDomain:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lc8/Ntf;->curIps:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Ntf;->curIps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lc8/Ntf;->curIps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    :goto_0
    return-object v0

    .line 144
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ntf;->failOnDomain:Z

    .line 145
    iget-object v0, p0, Lc8/Ntf;->curDomain:Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateReqIps(Z[Ljava/lang/String;)V
    .locals 11
    .param p1, "isAckReq"    # Z
    .param p2, "newIps"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 158
    invoke-direct {p0, p1}, Lc8/Ntf;->getEnvHost(Z)Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    move-result-object v0

    .line 159
    .local v0, "envHost":Lcom/taobao/orange/request/ReqStrategy$EnvHost;
    invoke-static {p2}, Lc8/cuf;->getArrayListFromArray([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, "updIps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->ips:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    const-string/jumbo v2, "ReqStrategy"

    const-string/jumbo v3, "updateReqIps"

    new-array v4, v10, [Ljava/lang/Object;

    const-string/jumbo v5, "old ips"

    aput-object v5, v4, v6

    iget-object v5, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->ips:Ljava/util/List;

    aput-object v5, v4, v7

    const-string/jumbo v5, "host"

    aput-object v5, v4, v8

    iget-object v5, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->domain:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v2, v3, v4}, Lc8/buf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v2, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->ips:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 165
    iget-object v2, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->ips:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    const-string/jumbo v2, "ReqStrategy"

    const-string/jumbo v3, "updateReqIps"

    new-array v4, v10, [Ljava/lang/Object;

    const-string/jumbo v5, "new ips"

    aput-object v5, v4, v6

    iget-object v5, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->ips:Ljava/util/List;

    aput-object v5, v4, v7

    const-string/jumbo v5, "host"

    aput-object v5, v4, v8

    iget-object v5, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->domain:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v2, v3, v4}, Lc8/buf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->updateTimes:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->updateTimes:J

    .line 170
    const-string/jumbo v2, "ReqStrategy"

    const-string/jumbo v3, "updateReqIps"

    new-array v4, v10, [Ljava/lang/Object;

    const-string/jumbo v5, "persistentObject filename"

    aput-object v5, v4, v6

    iget-object v5, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->domain:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string/jumbo v5, "envHost"

    aput-object v5, v4, v8

    aput-object v0, v4, v9

    invoke-static {v2, v3, v4}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const-string/jumbo v2, "/orange_ips"

    iget-object v3, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->domain:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lc8/Ztf;->persistentObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method
