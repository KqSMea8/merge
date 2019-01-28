.class public Lc8/vpf;
.super Ljava/lang/Object;
.source "VisaConfigService.java"


# static fields
.field private static final CONFIG_URL_ONLINE:Ljava/lang/String; = "https://nbsdk-baichuan.alicdn.com/%s/visaConfig.htm?plat=android&appKey=%s&appVersion=%s"

.field private static final CONFIG_URL_PRE:Ljava/lang/String; = "http://pre.nbsdk-baichuan.taobao.com/%s/visaConfig.htm?plat=android&appKey=%s&appVersion=%s"

.field private static final CONFIG_URL_TEST:Ljava/lang/String; = "http://100.69.205.47/%s/visaConfig.htm?plat=android&appKey=%s&appVersion=%s"

.field private static final CONFIG_URL_TEST_XIQI:Ljava/lang/String; = "http://100.69.205.47/%s/visaConfig.htm?plat=android&appKey=4272&appVersion=%s"

.field private static final ETAG:Ljava/lang/String; = "ETag"

.field private static final EXPIRE_TIME_INTERVAL:Ljava/lang/String; = "CongigExpireTimeInterval"

.field private static final EXPIRE_TIME_NAME:Ljava/lang/String; = "exp"

.field private static final GROUP0_NAME:Ljava/lang/String; = "group0"

.field private static final LOG_TAG:Ljava/lang/String; = "AlibcVisa"

.field private static final PREFERENCES_KEY_CONFIG_EXPIRE_TIME:Ljava/lang/String; = "configExpireTime"

.field private static final VERSION_NAME:Ljava/lang/String; = "version"

.field private static final VISA_CONFG:Ljava/lang/String; = "visaConfig"

.field private static instance:Lc8/vpf;


# instance fields
.field private volatile expireTimeInterval:I

.field private fetchConfigTask:Ljava/lang/Runnable;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v1, 0x927c0

    iput v1, p0, Lc8/vpf;->expireTimeInterval:I

    .line 157
    new-instance v1, Lc8/upf;

    invoke-direct {v1, p0}, Lc8/upf;-><init>(Lc8/vpf;)V

    iput-object v1, p0, Lc8/vpf;->fetchConfigTask:Ljava/lang/Runnable;

    .line 58
    const-string/jumbo v1, "CongigExpireTimeInterval"

    const-string/jumbo v2, "-1"

    invoke-static {v1, v2}, Lc8/wpf;->getCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    .local v0, "temp":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lc8/vpf;->expireTimeInterval:I

    .end local v0    # "temp":I
    :cond_0
    iput v0, p0, Lc8/vpf;->expireTimeInterval:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lc8/vpf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/vpf;

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/vpf;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/vpf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/vpf;

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/vpf;->getEtag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConfigUrl()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    sget-object v2, Lc8/unf;->instance:Lc8/unf;

    iget-object v1, v2, Lc8/unf;->environment:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    .line 129
    .local v1, "environment":Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;
    sget-object v2, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->ONLINE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    if-ne v1, v2, :cond_0

    .line 130
    const-string/jumbo v0, "https://nbsdk-baichuan.alicdn.com/%s/visaConfig.htm?plat=android&appKey=%s&appVersion=%s"

    .line 138
    .local v0, "config":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "1.3.0"

    aput-object v3, v2, v4

    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    iget-object v3, v3, Lc8/unf;->appKey:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    invoke-virtual {v3}, Lc8/unf;->getVersionName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 131
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->PRE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    if-ne v1, v2, :cond_1

    .line 132
    const-string/jumbo v0, "http://100.69.205.47/%s/visaConfig.htm?plat=android&appKey=4272&appVersion=%s"

    .line 133
    .restart local v0    # "config":Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "1.3.0"

    aput-object v3, v2, v4

    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    invoke-virtual {v3}, Lc8/unf;->getVersionName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 135
    .end local v0    # "config":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "http://100.69.205.47/%s/visaConfig.htm?plat=android&appKey=%s&appVersion=%s"

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0
.end method

.method private getEtag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    const-string/jumbo v0, "ETag"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/wpf;->getCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExpireTime()J
    .locals 2

    .prologue
    .line 154
    const-string/jumbo v0, "configExpireTime"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Lc8/wpf;->getCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getInstance()Lc8/vpf;
    .locals 2

    .prologue
    .line 63
    const-class v1, Lc8/vpf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/vpf;->instance:Lc8/vpf;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lc8/vpf;

    invoke-direct {v0}, Lc8/vpf;-><init>()V

    sput-object v0, Lc8/vpf;->instance:Lc8/vpf;

    .line 67
    :cond_0
    sget-object v0, Lc8/vpf;->instance:Lc8/vpf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private saveExpireTime(J)V
    .locals 3
    .param p1, "newValue"    # J

    .prologue
    .line 146
    const-string/jumbo v0, "configExpireTime"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/wpf;->putCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method


# virtual methods
.method public fetchConfigIfExpired()Z
    .locals 6

    .prologue
    .line 99
    invoke-direct {p0}, Lc8/vpf;->getExpireTime()J

    move-result-wide v0

    .line 101
    .local v0, "expireTimeMillis":J
    const-string/jumbo v2, "AlibcVisa"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visa fetchConfigIfExpired -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " currentTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lc8/vpf;->expireTimeInterval:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lc8/vpf;->saveExpireTime(J)V

    .line 106
    sget-object v2, Lc8/gpf;->instance:Lc8/gpf;

    iget-object v3, p0, Lc8/vpf;->fetchConfigTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lc8/gpf;->postNonUIThread(Ljava/lang/Runnable;)V

    .line 107
    const/4 v2, 0x1

    .line 109
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public update(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 75
    const-string/jumbo v2, "visaConfig"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 76
    .local v1, "visaInfoConfigJson":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string/jumbo v2, "AlibcVisa"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visa update config -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v2, "exp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lc8/vpf;->expireTimeInterval:I

    .line 83
    const-string/jumbo v2, "CongigExpireTimeInterval"

    iget v3, p0, Lc8/vpf;->expireTimeInterval:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/wpf;->putCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v2, "group0"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    .local v0, "group0Json":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 87
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/vpf;->version:Ljava/lang/String;

    .line 90
    :cond_1
    invoke-static {v1}, Lc8/wpf;->update(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
