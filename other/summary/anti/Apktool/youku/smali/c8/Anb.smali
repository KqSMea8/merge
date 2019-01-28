.class public Lc8/Anb;
.super Ljava/lang/Object;
.source "ALPConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ynb;,
        Lc8/znb;
    }
.end annotation


# instance fields
.field private configService:Lc8/Dnb;

.field private volatile expiredTime:J

.field private memConfigInfo:Lc8/Fnb;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Anb;->expiredTime:J

    .line 34
    new-instance v0, Lc8/Dnb;

    invoke-direct {v0}, Lc8/Dnb;-><init>()V

    iput-object v0, p0, Lc8/Anb;->configService:Lc8/Dnb;

    .line 36
    invoke-direct {p0}, Lc8/Anb;->getConfig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lc8/Anb;->getConfig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xnb;->checkConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lc8/Anb;->getConfig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Fnb;->formatFromJsonString(Ljava/lang/String;)Lc8/Fnb;

    move-result-object v0

    iput-object v0, p0, Lc8/Anb;->memConfigInfo:Lc8/Fnb;

    .line 50
    :goto_0
    iget-object v0, p0, Lc8/Anb;->configService:Lc8/Dnb;

    invoke-direct {p0}, Lc8/Anb;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc8/znb;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lc8/znb;-><init>(Lc8/Anb;Lc8/ynb;)V

    invoke-virtual {v0, v1, v2}, Lc8/Dnb;->pullServiceConfig(Ljava/lang/String;Lc8/Bnb;)V

    .line 51
    return-void

    .line 41
    :cond_0
    const-string/jumbo v0, "alibc_config"

    invoke-direct {p0, v0}, Lc8/Anb;->removeData(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "Etag"

    invoke-direct {p0, v0}, Lc8/Anb;->removeData(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v0, "{\n  \"androidAppLinkConfig\": {\n    \"exp\" : \"600\",\n    \"degradeType\" : \"0\",\n    \"canDeeplink\": \"0\",\n    \"appScheme\":{\n      \"tmall\":{\n        \"uri\":\"tmall://page.tm/appLink\",\n        \"action\":[\"com.tmall.wireless.intent.action.APPLINK\"],\n        \"category\":[],\n        \"packageName\":\"com.tmall.wireless\"\n      },\n      \"taobao\":{\n        \"uri\":\"tbopen://m.taobao.com/tbopen/index.html\",\n        \"action\":[\"com.taobao.open.intent.action.GETWAY\"],\n        \"category\":[],\n        \"packageName\":\"com.taobao.taobao\"\n      },\n      \"youku\":{\n        \"uri\":\"alibc://afc.alibaba.com\",\n        \"action\":[\"com.alibaba.afc.action.gateway\"],\n        \"category\":[],\n        \"packageName\":\"com.youku.phone\"\n      },\n      \"weibo\":{\n        \"uri\":\"alibc://afc.alibaba.com\",\n        \"action\":[\"com.alibaba.afc.action.gateway\"],\n        \"category\":[],\n        \"packageName\":\"com.sina.weibo\"\n      },\n      \"uc\":{\n        \"uri\":\"alibc://afc.alibaba.com\",\n        \"action\":[\"com.alibaba.afc.action.gateway\"],\n        \"category\":[],\n        \"packageName\":\"com.UCMobile\"\n      }\n    },\n    \"h5Scheme\":{\n      \"detail\":\"https://h5.m.taobao.com/awp/core/detail.htm\",\n      \"shop\":\"https://shop.m.taobao.com/shop/shopIndex.htm\",\n      \"activity\":\"https://huodong.m.taobao.com/go/2085.html\"\n    },\n    \"dynamicParam\":{\n      \"k1\":\"v1\"\n    },\n    \"downloadUrl\":{\n      \"taobao\":\"https://h5.m.taobao.com/hd/downLoadAnroidSimple.html\",\n      \"tmall\":\"https://pages.tmall.com/wow/portal/act/app-download\"\n    }\n  }\n}"

    invoke-static {v0}, Lc8/Fnb;->formatFromJsonString(Ljava/lang/String;)Lc8/Fnb;

    move-result-object v0

    iput-object v0, p0, Lc8/Anb;->memConfigInfo:Lc8/Fnb;

    goto :goto_0
.end method

.method static synthetic access$100(Lc8/Anb;)Lc8/Fnb;
    .locals 1
    .param p0, "x0"    # Lc8/Anb;

    .prologue
    .line 22
    iget-object v0, p0, Lc8/Anb;->memConfigInfo:Lc8/Fnb;

    return-object v0
.end method

.method static synthetic access$102(Lc8/Anb;Lc8/Fnb;)Lc8/Fnb;
    .locals 0
    .param p0, "x0"    # Lc8/Anb;
    .param p1, "x1"    # Lc8/Fnb;

    .prologue
    .line 22
    iput-object p1, p0, Lc8/Anb;->memConfigInfo:Lc8/Fnb;

    return-object p1
.end method

.method static synthetic access$200(Lc8/Anb;J)V
    .locals 1
    .param p0, "x0"    # Lc8/Anb;
    .param p1, "x1"    # J

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lc8/Anb;->updateExpiredTime(J)V

    return-void
.end method

.method static synthetic access$300(Lc8/Anb;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/Anb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lc8/Anb;->saveConfig(Ljava/lang/String;)V

    return-void
.end method

.method private getConfig()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    const-string/jumbo v0, "alibc_config"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lc8/Gnb;->getVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConfigUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lc8/Ymb;->getEnvironment()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 182
    const-string/jumbo v0, "http://100.69.205.47/1/linkout.htm?appKey=12345"

    .line 187
    :goto_0
    return-object v0

    .line 183
    :cond_0
    invoke-static {}, Lc8/Ymb;->getEnvironment()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 184
    const-string/jumbo v0, "http://100.69.205.47/1/linkout.htm?appKey=12345"

    goto :goto_0

    .line 187
    :cond_1
    sget-object v0, Lc8/hnb;->CONFIG_BASE_URL_ONLINE:Ljava/lang/String;

    goto :goto_0
.end method

.method private removeData(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p1}, Lc8/Gnb;->removeVal(Ljava/lang/String;)Z

    .line 173
    return-void
.end method

.method private saveConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    const-string/jumbo v0, "alibc_config"

    invoke-static {v0, p1}, Lc8/Gnb;->saveVal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 165
    :cond_0
    return-void
.end method

.method private updateConfig()V
    .locals 4

    .prologue
    .line 71
    iget-wide v0, p0, Lc8/Anb;->expiredTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Anb;->expiredTime:J

    .line 77
    iget-object v0, p0, Lc8/Anb;->configService:Lc8/Dnb;

    invoke-direct {p0}, Lc8/Anb;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc8/znb;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lc8/znb;-><init>(Lc8/Anb;Lc8/ynb;)V

    invoke-virtual {v0, v1, v2}, Lc8/Dnb;->pullServiceConfig(Ljava/lang/String;Lc8/Bnb;)V

    .line 80
    :cond_0
    return-void
.end method

.method private updateExpiredTime(J)V
    .locals 5
    .param p1, "seconds"    # J

    .prologue
    .line 88
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 89
    const-wide/16 p1, 0x7530

    .line 92
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Anb;->expiredTime:J

    .line 96
    return-void
.end method


# virtual methods
.method public declared-synchronized getMemConfigInfo()Lc8/Fnb;
    .locals 5

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lc8/Anb;->updateConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    iget-object v1, p0, Lc8/Anb;->memConfigInfo:Lc8/Fnb;

    invoke-virtual {v1}, Lc8/Fnb;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Fnb;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :goto_0
    monitor-exit p0

    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_2
    const-string/jumbo v1, "ALPConfigManager"

    const-string/jumbo v2, "getMemConfigInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clonenotsupport e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lc8/Anb;->memConfigInfo:Lc8/Fnb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
