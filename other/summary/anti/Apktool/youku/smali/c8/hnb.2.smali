.class public interface abstract Lc8/hnb;
.super Ljava/lang/Object;
.source "ALPConfigConstant.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ALIBC_CONFIG:Ljava/lang/String; = "alibc_config"

.field public static final APP_SCHEMA:Ljava/lang/String; = "appScheme"

.field public static final CAN_DEEPLINK:Ljava/lang/String; = "canDeeplink"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CHECK_GROUP_NAME:Ljava/lang/String; = "group0"

.field public static final CONFIG_BASE_URL_ONLINE:Ljava/lang/String;

.field public static final CONFIG_BASE_URL_PRE:Ljava/lang/String; = "https://pre.nbsdk-baichuan.taobao.com/1/linkout.htm?appKey=12345"

.field public static final CONFIG_BASE_URL_TEST:Ljava/lang/String; = "http://100.69.205.47/1/linkout.htm?appKey=12345"

.field public static final DEFAULT_TIME:J = 0x7530L

.field public static final DEGRADE_TYPE:Ljava/lang/String; = "degradeType"

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "downloadUrl"

.field public static final DYNAMIC_PARAM:Ljava/lang/String; = "dynamicParam"

.field public static final EXP:Ljava/lang/String; = "exp"

.field public static final H5_SCHEMA:Ljava/lang/String; = "h5Scheme"

.field public static final LINKPARTNER_CONFIG:Ljava/lang/String; = "linkPartnerConfig"

.field public static final MD5_SALT:Ljava/lang/String; = "ALITRADE20160628"

.field public static final NEWAPPLINKCONFIG:Ljava/lang/String; = "androidAppLinkConfig"

.field public static final PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final SIGN_KEY:Ljava/lang/String; = "sign"

.field public static final TAOBAO_SCHEME:Ljava/lang/String; = "taobao"

.field public static final URI:Ljava/lang/String; = "uri"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://nbsdk-baichuan.alicdn.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lc8/Ymb;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/linkout.htm?appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v1

    iget-object v1, v1, Lc8/job;->appkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/hnb;->CONFIG_BASE_URL_ONLINE:Ljava/lang/String;

    return-void
.end method
