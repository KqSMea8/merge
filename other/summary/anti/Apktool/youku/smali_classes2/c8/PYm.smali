.class public Lc8/PYm;
.super Ljava/lang/Object;
.source "I.java"


# static fields
.field public static final APP_GROUP_NAME:Ljava/lang/String; = "youku_poplayer_app"

.field public static final APP_NAME:Ljava/lang/String; = "youku"

.field public static final CLOSE_SWITCH_VALUE:Ljava/lang/String; = "0"

.field public static final CONFIG_CREATE_TIME_KEY:Ljava/lang/String; = "pubTimeStamp"

.field public static final CONFIG_MANDATORY_UPDATE_TIME_KEY:Ljava/lang/String; = "mandatoryUpdate"

.field public static final CONFIG_MANDATORY_UPDATE_TIME_OPEN:Ljava/lang/String; = "1"

.field public static final HTTPS_SWITCH_KEY:Ljava/lang/String; = "https_switch"

.field public static final LAYER_GROUP_NAME:Ljava/lang/String; = "youku_poplayer_layer"

.field public static final OPEN_SWITCH_VALUE:Ljava/lang/String; = "1"

.field public static final ORANGE_SWITCH:Ljava/lang/String; = "youku_poplayer_config_switch"

.field public static final ORANGE_SWITCH_KEY:Ljava/lang/String; = "orange_switch"

.field public static final PAGE_GROUP_NAME:Ljava/lang/String; = "youku_poplayer_page"

.field public static final POPLAYER_CONFIG_URL_DAILY_HOST:Ljava/lang/String; = "http://mt2.x.taobao.net/core/pub/PoplayerHttpConf.do?"

.field public static final POPLAYER_CONFIG_URL_ONLINE_HOST:Ljava/lang/String; = "https://hudong.alicdn.com/api/poplayer/"

.field public static final POPLAYER_CONFIG_URL_PREPARE_HOST:Ljava/lang/String; = "http://mt2.wapa.taobao.com/core/pub/PoplayerHttpConf.do?"

.field public static TAG:Ljava/lang/String; = null

.field public static final UC_SWITCH_KEY:Ljava/lang/String; = "popUC"

.field public static URL_TYPE:I = 0x0

.field public static final URL_TYPE_DAILY:I = 0x2

.field public static URL_TYPE_KET:Ljava/lang/String; = null

.field public static final URL_TYPE_ONLINE:I = 0x0

.field public static final URL_TYPE_PREPARE:I = 0x1

.field public static final VIEW_GROUP_NAME:Ljava/lang/String; = "youku_poplayer_view"

.field public static final WINDVANE_SWITCH_KEY:Ljava/lang/String; = "popWV"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "YoukuPopLayer"

    sput-object v0, Lc8/PYm;->TAG:Ljava/lang/String;

    .line 90
    const/4 v0, -0x1

    sput v0, Lc8/PYm;->URL_TYPE:I

    .line 92
    const-string/jumbo v0, "poplayer_url_type"

    sput-object v0, Lc8/PYm;->URL_TYPE_KET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
