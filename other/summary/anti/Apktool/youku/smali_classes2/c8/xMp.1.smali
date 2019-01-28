.class public Lc8/xMp;
.super Ljava/lang/Object;
.source "RemoteConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vMp;,
        Lc8/wMp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.RemoteConfig"

.field private static segmentSizeMap:Ljava/util/Map;
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


# instance fields
.field public apiLockInterval:J

.field private configItemsMap:Ljava/util/Map;
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

.field public final degradeBizcodeSets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public degradeToSQLite:Z

.field public enableArupTlog:Z

.field public enableCache:Z

.field public enableErrorCodeMapping:Z

.field public enableProperty:Z

.field public enableSpdy:Z

.field public enableSsl:Z

.field public enableUnit:Z

.field public gzipThresHold:I

.field public individualApiLockInterval:Ljava/lang/String;

.field public segmentRetryTimes:I

.field public uploadThreadNums:I

.field public final useHttpsBizcodeSets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x80000

    const/high16 v3, 0x20000

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    sput-object v0, Lc8/xMp;->segmentSizeMap:Ljava/util/Map;

    const-string/jumbo v1, "2G"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lc8/xMp;->segmentSizeMap:Ljava/util/Map;

    const-string/jumbo v1, "3G"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lc8/xMp;->segmentSizeMap:Ljava/util/Map;

    const-string/jumbo v1, "4G"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lc8/xMp;->segmentSizeMap:Ljava/util/Map;

    const-string/jumbo v1, "WIFI"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lc8/xMp;->segmentSizeMap:Ljava/util/Map;

    const-string/jumbo v1, "UNKONWN"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lc8/xMp;->segmentSizeMap:Ljava/util/Map;

    const-string/jumbo v1, "NET_NO"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/xMp;->configItemsMap:Ljava/util/Map;

    .line 29
    iput-boolean v2, p0, Lc8/xMp;->enableErrorCodeMapping:Z

    .line 31
    iput-boolean v2, p0, Lc8/xMp;->enableSpdy:Z

    .line 33
    iput-boolean v2, p0, Lc8/xMp;->enableUnit:Z

    .line 35
    iput-boolean v2, p0, Lc8/xMp;->enableSsl:Z

    .line 37
    iput-boolean v2, p0, Lc8/xMp;->enableCache:Z

    .line 39
    iput-boolean v1, p0, Lc8/xMp;->enableProperty:Z

    .line 41
    iput-boolean v1, p0, Lc8/xMp;->degradeToSQLite:Z

    .line 43
    const v0, 0x19000

    iput v0, p0, Lc8/xMp;->gzipThresHold:I

    .line 45
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lc8/xMp;->apiLockInterval:J

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/xMp;->individualApiLockInterval:Ljava/lang/String;

    .line 51
    iput v3, p0, Lc8/xMp;->segmentRetryTimes:I

    .line 53
    iput v3, p0, Lc8/xMp;->uploadThreadNums:I

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/xMp;->useHttpsBizcodeSets:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/xMp;->degradeBizcodeSets:Ljava/util/Set;

    .line 59
    iput-boolean v2, p0, Lc8/xMp;->enableArupTlog:Z

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lc8/vMp;)V
    .locals 0
    .param p1, "x0"    # Lc8/vMp;

    .prologue
    .line 10
    invoke-direct {p0}, Lc8/xMp;-><init>()V

    return-void
.end method

.method private getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 317
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lc8/xMp;->configItemsMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 318
    iget-object v3, p0, Lc8/xMp;->configItemsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 326
    .end local p2    # "defValue":Ljava/lang/String;
    :goto_1
    return-object p2

    .line 320
    .restart local p2    # "defValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "mtopsdk.RemoteConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[getConfigItemByKey] get config item error; key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move-object p2, v2

    .line 326
    goto :goto_1
.end method

.method public static getInstance()Lc8/xMp;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lc8/wMp;->access$100()Lc8/xMp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSegmentSize(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/xMp;->segmentSizeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setSegmentSize(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "segmentSize"    # I

    .prologue
    .line 81
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gtz p2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    sget-object v0, Lc8/xMp;->segmentSizeMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateRemoteConfig()V
    .locals 14

    .prologue
    .line 88
    const-string/jumbo v10, "mtopsdk_android_switch"

    invoke-static {v10}, Lc8/zMp;->getSwitchConfigByGroupName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, p0, Lc8/xMp;->configItemsMap:Ljava/util/Map;

    .line 89
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 90
    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[updateRemoteConfig] configItemsMap="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lc8/xMp;->configItemsMap:Ljava/util/Map;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v10, p0, Lc8/xMp;->configItemsMap:Ljava/util/Map;

    if-nez v10, :cond_2

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 96
    :cond_2
    const-string/jumbo v10, "enableErrorCodeMapping"

    const-string/jumbo v11, "true"

    invoke-direct {p0, v10, v11}, Lc8/xMp;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "enableErrorCodeMappingConfig":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lc8/xMp;->enableErrorCodeMapping:Z

    .line 98
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 99
    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[setEnableErrorCodeMapping]remote enableErrorCodeMappingConfig="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",enableErrorCodeMapping="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lc8/xMp;->enableErrorCodeMapping:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_3
    const-string/jumbo v10, "enableSpdy"

    const-string/jumbo v11, "true"

    invoke-direct {p0, v10, v11}, Lc8/xMp;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "spdySwitchConfig":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lc8/xMp;->enableSpdy:Z

    .line 106
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 107
    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[setEnableSpdy]remote spdySwitchConfig="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",enableSpdy="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lc8/xMp;->enableSpdy:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_4
    const-string/jumbo v10, "enableUnit"

    const-string/jumbo v11, "true"

    invoke-direct {p0, v10, v11}, Lc8/xMp;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, "unitSwitchConfig":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lc8/xMp;->enableUnit:Z

    .line 113
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 114
    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[setEnableUnit]remote unitSwitchConfig="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",enableUnit="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lc8/xMp;->enableUnit:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_5
    const-string/jumbo v10, "enableSsl"

    const-string/jumbo v11, "true"

    invoke-direct {p0, v10, v11}, Lc8/xMp;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, "spdySslSwitchConfig":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lc8/xMp;->enableSsl:Z

    .line 121
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 122
    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[setEnableSsl]remote spdySslSwitchConfig="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",enableSsl="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lc8/xMp;->enableSsl:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_6
    const-string/jumbo v10, "enableCache"

    const-string/jumbo v11, "true"

    invoke-direct {p0, v10, v11}, Lc8/xMp;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "cacheSwitchConfig":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lc8/xMp;->enableCache:Z

    .line 128
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 129
    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[setEnableCache]remote cacheSwitchConfig="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",enableCache="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lc8/xMp;->enableCache:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_7
    const-string/jumbo v10, "enableProperty"

    const-string/jumbo v11, "false"

    invoke-direct {p0, v10, v11}, Lc8/xMp;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "mtopsdkPropertySwitchConfig":Ljava/lang/String;
    const-string/jumbo v10, "false"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lc8/xMp;->enableProperty:Z

    .line 135
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 136
    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[setEnableProperty]remote mtopsdkPropertySwitchConfig="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",enableProperty="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lc8/xMp;->enableProperty:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_8
    const-string/jumbo v10, "degradeToSQLite"

    const-string/jumbo v11, "false"

    invoke-direct {p0, v10, v11}, Lc8/xMp;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "degradeToSQLiteConfig":Ljava/lang/String;
    const-string/jumbo v10, "false"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lc8/xMp;->degradeToSQLite:Z

    .line 143
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 144
    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[setDegradeToSQLite]remote degradeToSQLiteConfig="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",degradeToSQLite="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lc8/xMp;->degradeToSQLite:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_9
    const-string/jumbo v10, "gzipThresHold"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lc8/xMp;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "gzipThresholdSwitchConfig":Ljava/lang/String;
    invoke-static {v5}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 152
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lc8/xMp;->gzipThresHold:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_a
    :goto_3
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 158
    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[setGzipThresHold]remote gzipThresholdSwitchConfig="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",gzipThresHold="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lc8/xMp;->gzipThresHold:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_b
    const-string/jumbo v10, "apiLockInterval"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lc8/xMp;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "apiLockIntervalConfig":Ljava/lang/String;
    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 166
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lc8/xMp;->apiLockInterval:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :cond_c
    :goto_4
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 172
    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[setApiLockInterval]remote apiLockIntervalConfig="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",apiLockInterval="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lc8/xMp;->apiLockInterval:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_d
    const-string/jumbo v10, "individualApiLockInterval"

    const-string/jumbo v11, ""

    invoke-direct {p0, v10, v11}, Lc8/xMp;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lc8/xMp;->individualApiLockInterval:Ljava/lang/String;

    .line 178
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v10, 0x40

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 180
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "[setOtherConfigItemKey] individualApiLockInterval ="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lc8/xMp;->individualApiLockInterval:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    .end local v0    # "apiLockIntervalConfig":Ljava/lang/String;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "degradeToSQLiteConfig":Ljava/lang/String;
    .end local v5    # "gzipThresholdSwitchConfig":Ljava/lang/String;
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 142
    .restart local v3    # "degradeToSQLiteConfig":Ljava/lang/String;
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 154
    .restart local v5    # "gzipThresholdSwitchConfig":Ljava/lang/String;
    :catch_0
    move-exception v10

    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[setGzipThresHold]parse gzipThresholdSwitchConfig error,gzipThresholdSwitchConfig="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 168
    .restart local v0    # "apiLockIntervalConfig":Ljava/lang/String;
    :catch_1
    move-exception v10

    const-string/jumbo v10, "mtopsdk.RemoteConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[setApiLockInterval]parse apiLockIntervalConfig error,apiLockIntervalConfig="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public updateUploadRemoteConfig()V
    .locals 8

    .prologue
    .line 270
    const-string/jumbo v5, "mtopsdk_upload_switch"

    invoke-static {v5}, Lc8/zMp;->getSwitchConfigByGroupName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 272
    .local v3, "uploadConfigItemsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    const-string/jumbo v5, "mtopsdk.RemoteConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[updateUploadRemoteConfig] uploadConfigItemsMap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    if-nez v3, :cond_2

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    const-string/jumbo v5, "segmentRetryTimes"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 280
    .local v2, "segmentRetryTimesStr":Ljava/lang/String;
    invoke-static {v2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 283
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 284
    .local v0, "remoteSegmentRetryTimes":I
    if-ltz v0, :cond_3

    .line 285
    iput v0, p0, Lc8/xMp;->segmentRetryTimes:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v0    # "remoteSegmentRetryTimes":I
    :cond_3
    :goto_1
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 291
    const-string/jumbo v5, "mtopsdk.RemoteConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[updateUploadRemoteConfig]remote segmentRetryTimesStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",segmentRetryTimes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lc8/xMp;->segmentRetryTimes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_4
    const-string/jumbo v5, "uploadThreadNums"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 297
    .local v4, "uploadThreadNumsStr":Ljava/lang/String;
    invoke-static {v2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 300
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "remoteUploadThreadNums":I
    if-ltz v1, :cond_5

    .line 302
    iput v1, p0, Lc8/xMp;->uploadThreadNums:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    .end local v1    # "remoteUploadThreadNums":I
    :cond_5
    :goto_2
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 308
    const-string/jumbo v5, "mtopsdk.RemoteConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[updateUploadRemoteConfig]remote uploadThreadNumsStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",uploadThreadNums="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lc8/xMp;->uploadThreadNums:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    .end local v4    # "uploadThreadNumsStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    const-string/jumbo v5, "mtopsdk.RemoteConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[updateUploadRemoteConfig]parse segmentRetryTimes error,segmentRetryTimesStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 305
    .restart local v4    # "uploadThreadNumsStr":Ljava/lang/String;
    :catch_1
    move-exception v5

    const-string/jumbo v5, "mtopsdk.RemoteConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[updateUploadRemoteConfig]parse uploadThreadNums error,uploadThreadNumsStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
