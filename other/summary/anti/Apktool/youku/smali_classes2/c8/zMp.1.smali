.class public Lc8/zMp;
.super Ljava/lang/Object;
.source "SwitchConfigUtil.java"


# static fields
.field public static final API_LOCK_INTERVAL_KEY:Ljava/lang/String; = "apiLockInterval"

.field public static final CONFIG_GROUP_MTOPSDK_ANDROID_SWITCH:Ljava/lang/String; = "mtopsdk_android_switch"

.field public static final CONFIG_GROUP_MTOPSDK_APICACHE_BLOCKINFO_SWITCH:Ljava/lang/String; = "mtopsdk_apicache_blockinfo"

.field public static final CONFIG_GROUP_MTOPSDK_UPLOAD_SWITCH:Ljava/lang/String; = "mtopsdk_upload_switch"

.field public static final DEGRADE_BIZCODE_SET_KEY:Ljava/lang/String; = "degradeBizcodeSet"

.field public static final DEGRADE_TO_SQLITE_KEY:Ljava/lang/String; = "degradeToSQLite"

.field public static final ENABLE_CACHE_KEY:Ljava/lang/String; = "enableCache"

.field public static final ENABLE_ERROR_CODE_MAPPING_KEY:Ljava/lang/String; = "enableErrorCodeMapping"

.field public static final ENABLE_MTOPSDK_PROPERTY_KEY:Ljava/lang/String; = "enableProperty"

.field public static final ENABLE_SPDY_KEY:Ljava/lang/String; = "enableSpdy"

.field public static final ENABLE_SSL_KEY:Ljava/lang/String; = "enableSsl"

.field public static final ENABLE_UNIT_KEY:Ljava/lang/String; = "enableUnit"

.field public static final GZIP_THRESHOLD_KEY:Ljava/lang/String; = "gzipThresHold"

.field public static final INDIVIDUAL_API_LOCK_INTERVAL_KEY:Ljava/lang/String; = "individualApiLockInterval"

.field public static final SEGMENT_RETRY_TIMES_KEY:Ljava/lang/String; = "segmentRetryTimes"

.field public static final SEGMENT_SIZE_MAP_KEY:Ljava/lang/String; = "segmentSizeMap"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.SwitchConfigUtil"

.field public static final UPLOAD_THREAD_NUMS_KEY:Ljava/lang/String; = "uploadThreadNums"

.field public static final USEHTTPS_BIZCODE_SET_KEY:Ljava/lang/String; = "useHttpsBizcodeSet"

.field private static listener:Lc8/iMp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lc8/zMp;->listener:Lc8/iMp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSwitchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lc8/zMp;->listener:Lc8/iMp;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lc8/zMp;->listener:Lc8/iMp;

    invoke-interface {v0, p0, p1, p2}, Lc8/iMp;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 63
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 61
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "mtopsdk.SwitchConfigUtil"

    const-string/jumbo v1, "[getSwitchConfig] MtopConfigListener is null"

    invoke-static {v0, v1}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSwitchConfigByGroupName(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;
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
    .line 71
    sget-object v0, Lc8/zMp;->listener:Lc8/iMp;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lc8/zMp;->listener:Lc8/iMp;

    invoke-interface {v0, p0}, Lc8/iMp;->getSwitchConfigByGroupName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-string/jumbo v0, "mtopsdk.SwitchConfigUtil"

    const-string/jumbo v1, "[getSwitchConfigByGroupName] MtopConfigListener is null"

    invoke-static {v0, v1}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMtopConfigListener(Lc8/iMp;)V
    .locals 0
    .param p0, "listener"    # Lc8/iMp;

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 47
    sput-object p0, Lc8/zMp;->listener:Lc8/iMp;

    .line 49
    :cond_0
    return-void
.end method
