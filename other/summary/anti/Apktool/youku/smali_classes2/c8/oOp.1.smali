.class public Lc8/oOp;
.super Ljava/lang/Object;
.source "SwitchConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SwitchConfig"

.field private static apiLockInterval:J

.field private static final config:Lc8/oOp;

.field private static gzipThresholdSwitch:I

.field private static individualApiLockIntervalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final localConfig:Lc8/tMp;

.field private static mtopConfigListener:Lc8/iMp;

.field private static final remoteConfig:Lc8/xMp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lc8/oOp;

    invoke-direct {v0}, Lc8/oOp;-><init>()V

    sput-object v0, Lc8/oOp;->config:Lc8/oOp;

    .line 36
    invoke-static {}, Lc8/xMp;->getInstance()Lc8/xMp;

    move-result-object v0

    sput-object v0, Lc8/oOp;->remoteConfig:Lc8/xMp;

    .line 38
    invoke-static {}, Lc8/tMp;->getInstance()Lc8/tMp;

    move-result-object v0

    sput-object v0, Lc8/oOp;->localConfig:Lc8/tMp;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lc8/oOp;->mtopConfigListener:Lc8/iMp;

    .line 44
    const v0, 0x19000

    sput v0, Lc8/oOp;->gzipThresholdSwitch:I

    .line 49
    const-wide/16 v0, 0xa

    sput-wide v0, Lc8/oOp;->apiLockInterval:J

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/oOp;->individualApiLockIntervalMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lc8/oOp;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lc8/oOp;->config:Lc8/oOp;

    return-object v0
.end method

.method public static getMtopConfigListener()Lc8/iMp;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lc8/oOp;->mtopConfigListener:Lc8/iMp;

    return-object v0
.end method


# virtual methods
.method public getGlobalApiLockInterval()J
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lc8/oOp;->remoteConfig:Lc8/xMp;

    iget-wide v0, v0, Lc8/xMp;->apiLockInterval:J

    .line 131
    sput-wide v0, Lc8/oOp;->apiLockInterval:J

    return-wide v0
.end method

.method public getIndividualApiLockInterval(Ljava/lang/String;)J
    .locals 9
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 206
    const-wide/16 v2, 0x0

    .line 207
    .local v2, "interval":J
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-wide v4, v2

    .line 219
    .end local v2    # "interval":J
    .local v4, "interval":J
    :goto_0
    return-wide v4

    .line 210
    .end local v4    # "interval":J
    .restart local v2    # "interval":J
    :cond_0
    sget-object v6, Lc8/oOp;->individualApiLockIntervalMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, "intervalStr":Ljava/lang/String;
    invoke-static {v1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-wide v4, v2

    .line 212
    .end local v2    # "interval":J
    .restart local v4    # "interval":J
    goto :goto_0

    .line 215
    .end local v4    # "interval":J
    .restart local v2    # "interval":J
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_1
    move-wide v4, v2

    .line 219
    .end local v2    # "interval":J
    .restart local v4    # "interval":J
    goto :goto_0

    .line 216
    .end local v4    # "interval":J
    .restart local v2    # "interval":J
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "mtopsdk.SwitchConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[getIndividualApiLockInterval]parse individual apiLock interval error.apiKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ---"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getIndividualApiLockIntervalMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    sget-object v0, Lc8/oOp;->individualApiLockIntervalMap:Ljava/util/Map;

    return-object v0
.end method

.method public initConfig(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-object v0, Lc8/oOp;->mtopConfigListener:Lc8/iMp;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lc8/oOp;->mtopConfigListener:Lc8/iMp;

    invoke-interface {v0, p1}, Lc8/iMp;->initConfig(Landroid/content/Context;)V

    .line 61
    :cond_0
    return-void
.end method

.method public isGlobalCacheSwitchOpen()Z
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lc8/oOp;->remoteConfig:Lc8/xMp;

    iget-boolean v0, v0, Lc8/xMp;->enableCache:Z

    return v0
.end method

.method public isGlobalErrorCodeMappingOpen()Z
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lc8/oOp;->localConfig:Lc8/tMp;

    iget-boolean v0, v0, Lc8/tMp;->enableErrorCodeMapping:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc8/oOp;->remoteConfig:Lc8/xMp;

    iget-boolean v0, v0, Lc8/xMp;->enableErrorCodeMapping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalSpdySslSwitchOpen()Z
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lc8/oOp;->localConfig:Lc8/tMp;

    iget-boolean v0, v0, Lc8/tMp;->enableSsl:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc8/oOp;->remoteConfig:Lc8/xMp;

    iget-boolean v0, v0, Lc8/xMp;->enableSsl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalSpdySwitchOpen()Z
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lc8/oOp;->localConfig:Lc8/tMp;

    iget-boolean v0, v0, Lc8/tMp;->enableSpdy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc8/oOp;->remoteConfig:Lc8/xMp;

    iget-boolean v0, v0, Lc8/xMp;->enableSpdy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalUnitSwitchOpen()Z
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lc8/oOp;->localConfig:Lc8/tMp;

    iget-boolean v0, v0, Lc8/tMp;->enableUnit:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc8/oOp;->remoteConfig:Lc8/xMp;

    iget-boolean v0, v0, Lc8/xMp;->enableUnit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMtopsdkPropertySwitchOpen()Z
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lc8/oOp;->localConfig:Lc8/tMp;

    iget-boolean v0, v0, Lc8/tMp;->enableProperty:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc8/oOp;->remoteConfig:Lc8/xMp;

    iget-boolean v0, v0, Lc8/xMp;->enableProperty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGlobalSpdySslSwitchOpen(Z)Lc8/oOp;
    .locals 3
    .param p1, "spdySwlSwitchOpen"    # Z

    .prologue
    .line 110
    sget-object v0, Lc8/oOp;->localConfig:Lc8/tMp;

    iput-boolean p1, v0, Lc8/tMp;->enableSsl:Z

    .line 111
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setGlobalSpdySslSwitchOpen]set local spdySslSwitchOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    return-object p0
.end method

.method public setGlobalSpdySwitchOpen(Z)Lc8/oOp;
    .locals 3
    .param p1, "spdySwitchOpen"    # Z

    .prologue
    .line 91
    sget-object v0, Lc8/oOp;->localConfig:Lc8/tMp;

    iput-boolean p1, v0, Lc8/tMp;->enableSpdy:Z

    .line 92
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setGlobalSpdySwitchOpen]set local spdySwitchOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-object p0
.end method

.method public setGlobalUnitSwitchOpen(Z)Lc8/oOp;
    .locals 3
    .param p1, "unitSwitchOpen"    # Z

    .prologue
    .line 160
    sget-object v0, Lc8/oOp;->localConfig:Lc8/tMp;

    iput-boolean p1, v0, Lc8/tMp;->enableUnit:Z

    .line 161
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setGlobalUnitSwitchOpen]set local unitSwitchOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    return-object p0
.end method

.method public setMtopConfigListener(Lc8/iMp;)V
    .locals 0
    .param p1, "mtopConfigListener"    # Lc8/iMp;

    .prologue
    .line 64
    sput-object p1, Lc8/oOp;->mtopConfigListener:Lc8/iMp;

    .line 65
    return-void
.end method

.method public setMtopsdkPropertySwitchOpen(Z)Lc8/oOp;
    .locals 3
    .param p1, "mtopsdkPropertySwitchOpen"    # Z

    .prologue
    .line 181
    sget-object v0, Lc8/oOp;->localConfig:Lc8/tMp;

    iput-boolean p1, v0, Lc8/tMp;->enableProperty:Z

    .line 182
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setMtopsdkPropertySwitchOpen]set local mtopsdkPropertySwitchOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    return-object p0
.end method
