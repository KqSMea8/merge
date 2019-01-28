.class public Lc8/bO;
.super Ljava/lang/Object;
.source "NetworkTask.java"

# interfaces
.implements Lc8/ZN;


# static fields
.field public static final TAG:Ljava/lang/String; = "anet.NetworkTask"


# instance fields
.field cache:Lc8/kN;

.field cacheBuffer:Ljava/io/ByteArrayOutputStream;

.field volatile cancelable:Lc8/ZJ;

.field contentLength:I

.field dataChunkIndex:I

.field entry:Lanetwork/channel/cache/Cache$Entry;

.field f_refer:Ljava/lang/String;

.field volatile isCanceled:Z

.field volatile isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field rc:Lc8/cO;

.field statusCode:I


# direct methods
.method constructor <init>(Lc8/cO;Lc8/kN;Lanetwork/channel/cache/Cache$Entry;)V
    .locals 3
    .param p1, "rc"    # Lc8/cO;
    .param p2, "cache"    # Lc8/kN;
    .param p3, "entry"    # Lanetwork/channel/cache/Cache$Entry;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v1, p0, Lc8/bO;->cache:Lc8/kN;

    .line 56
    iput-object v1, p0, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    .line 57
    iput-object v1, p0, Lc8/bO;->cacheBuffer:Ljava/io/ByteArrayOutputStream;

    .line 58
    const-string/jumbo v0, "other"

    iput-object v0, p0, Lc8/bO;->f_refer:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lc8/bO;->cancelable:Lc8/ZJ;

    .line 61
    iput-boolean v2, p0, Lc8/bO;->isCanceled:Z

    .line 62
    iput-object v1, p0, Lc8/bO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    iput v2, p0, Lc8/bO;->statusCode:I

    .line 65
    iput v2, p0, Lc8/bO;->contentLength:I

    .line 66
    iput v2, p0, Lc8/bO;->dataChunkIndex:I

    .line 69
    iput-object p1, p0, Lc8/bO;->rc:Lc8/cO;

    .line 70
    iget-object v0, p1, Lc8/cO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Lc8/bO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    iput-object p2, p0, Lc8/bO;->cache:Lc8/kN;

    .line 72
    iput-object p3, p0, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    .line 73
    iget-object v0, p1, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v0}, Lc8/HN;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "f-refer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc8/bO;->f_refer:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private checkCName(Lc8/XL;)Lc8/XL;
    .locals 4
    .param p1, "httpUrl"    # Lc8/XL;

    .prologue
    .line 111
    iget-object v2, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v2, v2, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v2}, Lc8/HN;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "x-host-cname"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "hostCName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {p1}, Lc8/XL;->urlString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/XL;->parse(Ljava/lang/String;)Lc8/XL;

    move-result-object v1

    .line 114
    .local v1, "tmp":Lc8/XL;
    if-eqz v1, :cond_0

    .line 115
    move-object p1, v1

    .line 118
    .end local v1    # "tmp":Lc8/XL;
    :cond_0
    return-object p1
.end method

.method private getSessionCenter()Lanet/channel/SessionCenter;
    .locals 7

    .prologue
    .line 122
    iget-object v4, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v4, v4, Lc8/cO;->config:Lc8/HN;

    const-string/jumbo v5, "APPKEY"

    invoke-virtual {v4, v5}, Lc8/HN;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "appkey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v4

    .line 147
    :goto_0
    return-object v4

    .line 126
    :cond_0
    sget-object v2, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    .line 127
    .local v2, "env":Lanet/channel/entity/ENV;
    iget-object v4, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v4, v4, Lc8/cO;->config:Lc8/HN;

    const-string/jumbo v5, "ENVIRONMENT"

    invoke-virtual {v4, v5}, Lc8/HN;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "requestEnv":Ljava/lang/String;
    const-string/jumbo v4, "pre"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 129
    sget-object v2, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    .line 134
    :cond_1
    :goto_1
    sget-object v4, Lanetwork/channel/http/NetworkSdkSetting;->CURRENT_ENV:Lanet/channel/entity/ENV;

    if-eq v2, v4, :cond_2

    .line 135
    sput-object v2, Lanetwork/channel/http/NetworkSdkSetting;->CURRENT_ENV:Lanet/channel/entity/ENV;

    .line 136
    invoke-static {v2}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V

    .line 139
    :cond_2
    invoke-static {v0, v2}, Lc8/RI;->getConfig(Ljava/lang/String;Lanet/channel/entity/ENV;)Lc8/RI;

    move-result-object v1

    .line 140
    .local v1, "config":Lc8/RI;
    if-nez v1, :cond_3

    .line 141
    new-instance v4, Lc8/QI;

    invoke-direct {v4}, Lc8/QI;-><init>()V

    invoke-virtual {v4, v0}, Lc8/QI;->setAppkey(Ljava/lang/String;)Lc8/QI;

    move-result-object v4

    invoke-virtual {v4, v2}, Lc8/QI;->setEnv(Lanet/channel/entity/ENV;)Lc8/QI;

    move-result-object v4

    iget-object v5, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->config:Lc8/HN;

    const-string/jumbo v6, "AuthCode"

    invoke-virtual {v5, v6}, Lc8/HN;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/QI;->setAuthCode(Ljava/lang/String;)Lc8/QI;

    move-result-object v4

    invoke-virtual {v4}, Lc8/QI;->build()Lc8/RI;

    move-result-object v1

    .line 147
    :cond_3
    invoke-static {v1}, Lanet/channel/SessionCenter;->getInstance(Lc8/RI;)Lanet/channel/SessionCenter;

    move-result-object v4

    goto :goto_0

    .line 130
    .end local v1    # "config":Lc8/RI;
    :cond_4
    const-string/jumbo v4, "test"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    sget-object v2, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    goto :goto_1
.end method

.method private sendRequest(Lanet/channel/Session;Lc8/eK;)V
    .locals 8
    .param p1, "session"    # Lanet/channel/Session;
    .param p2, "req"    # Lc8/eK;

    .prologue
    .line 197
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lc8/bO;->isCanceled:Z

    if-eqz v4, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    .line 203
    .local v0, "builder":Lc8/cK;
    iget-object v4, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v4, v4, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v4}, Lc8/HN;->isRequestCookieEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    iget-object v4, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v4, v4, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v4}, Lc8/HN;->getUrlString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/rN;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "cookie":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 206
    invoke-virtual {p2}, Lc8/eK;->newBuilder()Lc8/cK;

    move-result-object v0

    .line 207
    invoke-virtual {p2}, Lc8/eK;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "Cookie"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, "customCookie":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 209
    const-string/jumbo v4, "; "

    invoke-static {v2, v4, v1}, Lc8/cM;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_2
    const-string/jumbo v4, "Cookie"

    invoke-virtual {v0, v4, v1}, Lc8/cK;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/cK;

    .line 215
    .end local v1    # "cookie":Ljava/lang/String;
    .end local v2    # "customCookie":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v4, :cond_6

    .line 216
    if-nez v0, :cond_4

    .line 217
    invoke-virtual {p2}, Lc8/eK;->newBuilder()Lc8/cK;

    move-result-object v0

    .line 219
    :cond_4
    iget-object v4, p0, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object v4, v4, Lanetwork/channel/cache/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 220
    const-string/jumbo v4, "If-None-Match"

    iget-object v5, p0, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object v5, v5, Lanetwork/channel/cache/Cache$Entry;->etag:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lc8/cK;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/cK;

    .line 222
    :cond_5
    iget-object v4, p0, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-wide v4, v4, Lanetwork/channel/cache/Cache$Entry;->lastModified:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 223
    const-string/jumbo v4, "If-Modified-Since"

    iget-object v5, p0, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-wide v6, v5, Lanetwork/channel/cache/Cache$Entry;->lastModified:J

    invoke-static {v6, v7}, Lc8/lN;->toGMTDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lc8/cK;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/cK;

    .line 227
    :cond_6
    if-nez v0, :cond_7

    move-object v3, p2

    .line 230
    .local v3, "request":Lc8/eK;
    :goto_1
    invoke-static {}, Lc8/WN;->getIntance()Lc8/WN;

    move-result-object v4

    invoke-virtual {v3}, Lc8/eK;->getHttpUrl()Lc8/XL;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/WN;->putReq(Lc8/XL;)V

    .line 232
    iget-object v4, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v4, v4, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v4}, Lc8/HN;->getStatistic()Lanet/channel/statist/RequestStatistic;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lanet/channel/statist/RequestStatistic;->requestStart:J

    .line 233
    new-instance v4, Lc8/aO;

    invoke-direct {v4, p0, v3}, Lc8/aO;-><init>(Lc8/bO;Lc8/eK;)V

    invoke-virtual {p1, v3, v4}, Lanet/channel/Session;->request(Lc8/eK;Lc8/VI;)Lc8/ZJ;

    move-result-object v4

    iput-object v4, p0, Lc8/bO;->cancelable:Lc8/ZJ;

    goto/16 :goto_0

    .line 227
    .end local v3    # "request":Lc8/eK;
    :cond_7
    invoke-virtual {v0}, Lc8/cK;->build()Lc8/eK;

    move-result-object v3

    goto :goto_1
.end method

.method private tryGetSession()Lanet/channel/Session;
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 152
    invoke-direct {p0}, Lc8/bO;->getSessionCenter()Lanet/channel/SessionCenter;

    move-result-object v2

    .line 153
    .local v2, "instance":Lanet/channel/SessionCenter;
    const/4 v4, 0x0

    .line 154
    .local v4, "session":Lanet/channel/Session;
    iget-object v5, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v5}, Lc8/HN;->getHttpUrl()Lc8/XL;

    move-result-object v1

    .line 155
    .local v1, "httpUrl":Lc8/XL;
    invoke-virtual {v1}, Lc8/XL;->containsNonDefaultPort()Z

    move-result v0

    .line 157
    .local v0, "containsNonDefaultPort":Z
    iget-object v5, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v5}, Lc8/HN;->getStatistic()Lanet/channel/statist/RequestStatistic;

    move-result-object v3

    .line 159
    .local v3, "rs":Lanet/channel/statist/RequestStatistic;
    iget-object v5, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v5}, Lc8/HN;->getRequestType()I

    move-result v5

    if-ne v5, v8, :cond_0

    invoke-static {}, Lc8/qN;->isSpdyEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v5}, Lc8/HN;->getCurrentRetryTimes()I

    move-result v5

    if-nez v5, :cond_0

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 164
    .local v6, "start":J
    invoke-direct {p0, v1}, Lc8/bO;->checkCName(Lc8/XL;)Lc8/XL;

    move-result-object v5

    sget-object v10, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    const-wide/16 v12, 0x1388

    invoke-virtual {v2, v5, v10, v12, v13}, Lanet/channel/SessionCenter;->get(Lc8/XL;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v4

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    iput-wide v10, v3, Lanet/channel/statist/RequestStatistic;->connWaitTime:J

    .line 166
    if-eqz v4, :cond_4

    move v5, v8

    :goto_0
    iput-boolean v5, v3, Lanet/channel/statist/RequestStatistic;->spdyRequestSend:Z

    .line 169
    .end local v6    # "start":J
    :cond_0
    if-nez v4, :cond_1

    iget-object v5, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v5}, Lc8/HN;->isHttpSessionEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Lc8/FK;->isProxy()Z

    move-result v5

    if-nez v5, :cond_1

    .line 173
    sget-object v5, Lanet/channel/entity/ConnType$TypeLevel;->HTTP:Lanet/channel/entity/ConnType$TypeLevel;

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v1, v5, v10, v11}, Lanet/channel/SessionCenter;->get(Lc8/XL;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v4

    .line 176
    :cond_1
    if-nez v4, :cond_2

    .line 177
    const-string/jumbo v5, "anet.NetworkTask"

    const-string/jumbo v10, "create HttpSession with local DNS"

    iget-object v11, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v11, v11, Lc8/cO;->seqNum:Ljava/lang/String;

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v5, v10, v11, v12}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v4, Lc8/tK;

    .end local v4    # "session":Lanet/channel/Session;
    invoke-static {}, Lc8/TI;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v10, Lc8/AJ;

    invoke-virtual {v1}, Lc8/XL;->key()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v12, v12, Lc8/cO;->seqNum:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lc8/AJ;-><init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V

    invoke-direct {v4, v5, v10}, Lc8/tK;-><init>(Landroid/content/Context;Lc8/AJ;)V

    .line 182
    .restart local v4    # "session":Lanet/channel/Session;
    :cond_2
    iget-object v5, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v4}, Lanet/channel/Session;->getConnType()Lc8/BJ;

    move-result-object v10

    invoke-virtual {v10}, Lc8/BJ;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 183
    iget-object v5, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v4}, Lanet/channel/Session;->getConnType()Lc8/BJ;

    move-result-object v10

    invoke-virtual {v10}, Lc8/BJ;->isSSL()Z

    move-result v10

    iput-boolean v10, v5, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    .line 184
    iget-object v5, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v5}, Lc8/HN;->getRequestType()I

    move-result v5

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v5}, Lc8/HN;->getCurrentRetryTimes()I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v5, v3, Lanet/channel/statist/RequestStatistic;->spdyRequestSend:Z

    if-eqz v5, :cond_3

    .line 188
    iput v8, v3, Lanet/channel/statist/RequestStatistic;->degraded:I

    .line 191
    :cond_3
    const-string/jumbo v5, "anet.NetworkTask"

    const-string/jumbo v10, "tryGetSession"

    iget-object v11, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v11, v11, Lc8/cO;->seqNum:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const-string/jumbo v13, "Session"

    aput-object v13, v12, v9

    aput-object v4, v12, v8

    invoke-static {v5, v10, v11, v12}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    return-object v4

    .restart local v6    # "start":J
    :cond_4
    move v5, v9

    .line 166
    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/bO;->isCanceled:Z

    .line 79
    iget-object v0, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v0, v0, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v0}, Lc8/HN;->getStatistic()Lanet/channel/statist/RequestStatistic;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 80
    iget-object v0, p0, Lc8/bO;->cancelable:Lc8/ZJ;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lc8/bO;->cancelable:Lc8/ZJ;

    invoke-interface {v0}, Lc8/ZJ;->cancel()V

    .line 83
    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x2

    .line 87
    iget-boolean v1, p0, Lc8/bO;->isCanceled:Z

    if-eqz v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {}, Lc8/FK;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    invoke-static {v4}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const-string/jumbo v1, "anet.NetworkTask"

    const-string/jumbo v2, "network unavailable"

    iget-object v3, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->seqNum:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "NetworkStatus"

    aput-object v5, v4, v6

    invoke-static {}, Lc8/FK;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_1
    iget-object v1, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v1, v1, Lc8/cO;->callback:Lc8/NN;

    new-instance v2, Lanetwork/channel/aidl/DefaultFinishEvent;

    const/16 v3, -0xc8

    invoke-direct {v2, v3}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(I)V

    invoke-interface {v1, v2}, Lc8/NN;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {v4}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    const-string/jumbo v1, "anet.NetworkTask"

    const-string/jumbo v2, "exec request"

    iget-object v3, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->seqNum:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "retryTimes"

    aput-object v5, v4, v6

    iget-object v5, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v5}, Lc8/HN;->getCurrentRetryTimes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lc8/bO;->tryGetSession()Lanet/channel/Session;

    move-result-object v1

    iget-object v2, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v2, v2, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v2}, Lc8/HN;->getAwcnRequest()Lc8/eK;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lc8/bO;->sendRequest(Lanet/channel/Session;Lc8/eK;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "anet.NetworkTask"

    const-string/jumbo v2, "send request failed."

    iget-object v3, p0, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->seqNum:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
