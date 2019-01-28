.class public Lc8/KB;
.super Ljava/lang/Object;
.source "WVConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/JB;,
        Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;
    }
.end annotation


# static fields
.field public static final CONFIGNAME_COMMON:Ljava/lang/String; = "common"

.field public static final CONFIGNAME_CUSTOM:Ljava/lang/String; = "customs"

.field public static final CONFIGNAME_DOMAIN:Ljava/lang/String; = "domain"

.field public static final CONFIGNAME_MONITOR:Ljava/lang/String; = "monitor"

.field public static final CONFIGNAME_PACKAGE:Ljava/lang/String; = "package"

.field public static final CONFIGNAME_PREFIXES:Ljava/lang/String; = "prefixes"

.field public static final CONFIG_UPDATETIME:Ljava/lang/String; = "_updateTime"

.field private static final DEFAULT_DEMAIN:Ljava/lang/String; = "https://wvcfg.alicdn.com/"

.field public static final SPNAME_CONFIG:Ljava/lang/String; = "wv_main_config"

.field private static final TAG:Ljava/lang/String; = "WVConfigManager"

.field private static volatile instance:Lc8/KB;

.field private static updateInterval:J

.field private static updateTime:J


# instance fields
.field private configDomain:Ljava/lang/String;

.field private enableUpdateConfig:Z

.field private mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/FB;",
            ">;"
        }
    .end annotation
.end field

.field private updateConfigCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/KB;->updateTime:J

    .line 35
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lc8/KB;->updateInterval:J

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lc8/KB;->instance:Lc8/KB;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "https://wvcfg.alicdn.com/"

    iput-object v0, p0, Lc8/KB;->configDomain:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lc8/KB;->updateConfigCount:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/KB;->enableUpdateConfig:Z

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    new-instance v1, Lc8/JB;

    invoke-direct {v1}, Lc8/JB;-><init>()V

    invoke-virtual {v0, v1}, Lc8/qH;->addEventListener(Lc8/pH;)V

    .line 83
    return-void
.end method

.method static synthetic access$000()Lc8/KB;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lc8/KB;->instance:Lc8/KB;

    return-object v0
.end method

.method static synthetic access$100(Lc8/KB;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lc8/KB;

    .prologue
    .line 30
    iget-object v0, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lc8/KB;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 0
    .param p0, "x0"    # Lc8/KB;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/KB;->doUpdateByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    return-void
.end method

.method static synthetic access$300(Lc8/KB;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 0
    .param p0, "x0"    # Lc8/KB;
    .param p1, "x1"    # Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lc8/KB;->updateImmediately(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    return-void
.end method

.method static synthetic access$400(Lc8/KB;)I
    .locals 1
    .param p0, "x0"    # Lc8/KB;

    .prologue
    .line 30
    iget v0, p0, Lc8/KB;->updateConfigCount:I

    return v0
.end method

.method static synthetic access$402(Lc8/KB;I)I
    .locals 0
    .param p0, "x0"    # Lc8/KB;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lc8/KB;->updateConfigCount:I

    return p1
.end method

.method static synthetic access$404(Lc8/KB;)I
    .locals 1
    .param p0, "x0"    # Lc8/KB;

    .prologue
    .line 30
    iget v0, p0, Lc8/KB;->updateConfigCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/KB;->updateConfigCount:I

    return v0
.end method

.method private doUpdateByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;
    .param p3, "defaultUrl"    # Ljava/lang/String;
    .param p4, "fromType"    # Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .prologue
    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const/4 v0, 0x1

    .line 241
    .local v0, "needUpdate":Z
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    :try_start_0
    invoke-static {p2, p1}, Lc8/MB;->isNeedUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 249
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 250
    iget-object v1, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/FB;

    .line 251
    .local v3, "handler":Lc8/FB;
    if-eqz v3, :cond_4

    .line 253
    invoke-virtual {v3}, Lc8/FB;->getUpdateStatus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 256
    .local v10, "currentTime":J
    sget-wide v4, Lc8/KB;->updateTime:J

    sub-long v4, v10, v4

    sget-wide v8, Lc8/KB;->updateInterval:J

    cmp-long v1, v4, v8

    if-ltz v1, :cond_0

    .line 260
    .end local v10    # "currentTime":J
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lc8/FB;->setUpdateStatus(Z)V

    .line 261
    invoke-virtual {v3, p2}, Lc8/FB;->setSnapshotN(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 264
    .local v6, "startTime":J
    new-instance v1, Lc8/IB;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lc8/IB;-><init>(Lc8/KB;Lc8/FB;Ljava/lang/String;Ljava/lang/String;JLandroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    invoke-virtual {v3, p3, v1}, Lc8/FB;->update(Ljava/lang/String;Lc8/LB;)V

    .line 315
    .end local v3    # "handler":Lc8/FB;
    .end local v6    # "startTime":J
    :cond_4
    :goto_2
    iget v1, p0, Lc8/KB;->updateConfigCount:I

    iget-object v2, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 316
    const/4 v1, 0x0

    iput v1, p0, Lc8/KB;->updateConfigCount:I

    .line 317
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    const/16 v2, 0x1772

    invoke-virtual {v1, v2}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_1

    .line 312
    :cond_5
    iget v1, p0, Lc8/KB;->updateConfigCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/KB;->updateConfigCount:I

    goto :goto_2
.end method

.method public static getInstance()Lc8/KB;
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lc8/KB;->instance:Lc8/KB;

    if-nez v0, :cond_1

    .line 87
    const-class v1, Lc8/KB;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lc8/KB;->instance:Lc8/KB;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lc8/KB;

    invoke-direct {v0}, Lc8/KB;-><init>()V

    sput-object v0, Lc8/KB;->instance:Lc8/KB;

    .line 91
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    sget-object v0, Lc8/KB;->instance:Lc8/KB;

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateImmediately(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 7
    .param p1, "fromType"    # Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .prologue
    .line 115
    iget-boolean v2, p0, Lc8/KB;->enableUpdateConfig:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lc8/MB;->checkAppKeyAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 119
    .local v0, "startTime":J
    invoke-static {}, Lc8/VB;->getInstance()Lc8/VB;

    move-result-object v2

    const-string/jumbo v3, "0"

    const-string/jumbo v4, "0"

    invoke-static {}, Lc8/MB;->getTargetValue()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "0"

    invoke-virtual {p0, v3, v4, v5, v6}, Lc8/KB;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lc8/GB;

    invoke-direct {v4, p0, v0, v1, p1}, Lc8/GB;-><init>(Lc8/KB;JLandroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    invoke-virtual {v2, v3, v4}, Lc8/VB;->connect(Ljava/lang/String;Lc8/WB;)V

    goto :goto_0
.end method


# virtual methods
.method public getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "configType"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "snapshotN"    # Ljava/lang/String;

    .prologue
    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .local v1, "url":Ljava/lang/StringBuilder;
    sget-object v2, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v3, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/config/EnvEnum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "https://wvcfg.alicdn.com/"

    iget-object v3, p0, Lc8/KB;->configDomain:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    .line 401
    :cond_0
    iget-object v2, p0, Lc8/KB;->configDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string/jumbo v2, "/bizcache/5/windvane/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v2

    invoke-virtual {v2}, Lc8/xB;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {}, Lc8/MB;->dealAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    if-nez p3, :cond_2

    .line 419
    const-string/jumbo v2, "wv_main_config"

    const-string/jumbo v3, "abt"

    const-string/jumbo v4, "a"

    invoke-static {v2, v3, v4}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 420
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 421
    .local v0, "abt":C
    const/16 v2, 0x61

    if-gt v2, v0, :cond_1

    const/16 v2, 0x63

    if-le v0, v2, :cond_2

    .line 422
    :cond_1
    const-string/jumbo p3, "a"

    .line 425
    .end local v0    # "abt":C
    :cond_2
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string/jumbo v2, "/settings.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 404
    :cond_3
    invoke-static {}, Lc8/xB;->getCdnConfigUrlPre()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string/jumbo v2, "5/windvane/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getConfigVersions()Ljava/util/HashMap;
    .locals 10

    .prologue
    .line 355
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 356
    .local v4, "versionHashMap":Ljava/util/HashMap;
    iget-object v5, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_2

    .line 357
    iget-object v5, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 358
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 359
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 360
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v5, "wv_main_config"

    const-string/jumbo v6, "0"

    invoke-static {v5, v0, v6}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "version":Ljava/lang/String;
    const-string/jumbo v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 362
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 363
    .local v2, "vLong":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 364
    const-string/jumbo v3, "NO VERSION"

    .line 369
    .end local v2    # "vLong":Ljava/lang/Long;
    :cond_0
    :goto_1
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 365
    .restart local v2    # "vLong":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 366
    const-string/jumbo v3, "CUSTOM VERION"

    goto :goto_1

    .line 372
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2    # "vLong":Ljava/lang/Long;
    .end local v3    # "version":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public registedHandler(Ljava/lang/String;)Lc8/FB;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v0, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/FB;

    goto :goto_0
.end method

.method public registerHandler(Ljava/lang/String;Lc8/FB;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "handler"    # Lc8/FB;

    .prologue
    .line 100
    iget-object v0, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public removeHandler(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v0, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resetConfig()V
    .locals 4

    .prologue
    .line 341
    iget-object v2, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lc8/KB;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 343
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "wv_main_config"

    const-string/jumbo v3, "0"

    invoke-static {v2, v0, v3}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    const-wide/16 v2, 0x0

    sput-wide v2, Lc8/KB;->updateTime:J

    .line 349
    return-void
.end method

.method public setConfigDomain(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iput-object p1, p0, Lc8/KB;->configDomain:Ljava/lang/String;

    .line 389
    :cond_0
    const-string/jumbo v0, "WVConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeConfigDomain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public setUpdateConfigEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lc8/KB;->enableUpdateConfig:Z

    .line 108
    return-void
.end method

.method public setUpdateInterval(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 379
    sput-wide p1, Lc8/KB;->updateInterval:J

    .line 380
    return-void
.end method

.method public updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 8
    .param p1, "fromType"    # Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 204
    .local v0, "currentTime":J
    sget-object v3, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeAppActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {p1, v3}, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    const/4 v2, 0x1

    .line 210
    .local v2, "needUpdate":Z
    :goto_0
    if-eqz v2, :cond_0

    invoke-static {}, Lc8/MB;->checkAppKeyAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    sput-wide v0, Lc8/KB;->updateTime:J

    .line 212
    new-instance v3, Lc8/HB;

    invoke-direct {v3, p0, p1}, Lc8/HB;-><init>(Lc8/KB;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 219
    :cond_0
    return-void

    .line 207
    .end local v2    # "needUpdate":Z
    :cond_1
    sget-wide v4, Lc8/KB;->updateTime:J

    sub-long v4, v0, v4

    sget-wide v6, Lc8/KB;->updateInterval:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    const/4 v2, 0x1

    .restart local v2    # "needUpdate":Z
    :goto_1
    goto :goto_0

    .end local v2    # "needUpdate":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 1
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "defaultUrl"    # Ljava/lang/String;
    .param p4, "fromType"    # Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .prologue
    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/KB;->doUpdateByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    goto :goto_0
.end method
