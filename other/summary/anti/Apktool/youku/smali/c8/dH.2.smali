.class public Lc8/dH;
.super Ljava/lang/Object;
.source "ZipAppConstants.java"


# static fields
.field public static APP_INFO_NAME:Ljava/lang/String; = null

.field public static APP_PREFIXES_NAME:Ljava/lang/String; = null

.field public static APP_RES_INC_NAME:Ljava/lang/String; = null

.field public static APP_RES_NAME:Ljava/lang/String; = null

.field public static DEFAULT_ENCODING:Ljava/lang/String; = null

.field public static DEFAULT_SYSTIME:Ljava/lang/String; = null

.field public static DELTA_UPDATE:Ljava/lang/String; = null

.field public static final FORCE_INSTALL:I = 0x9

.field public static final FORCE_INS_THRESHOLD:J = 0x3200000L

.field public static FORCE_ONLINE:I = 0x0

.field public static FORCE_UPDATE:I = 0x0

.field public static H5_APPS_NAME:Ljava/lang/String; = null

.field public static H5_ZCACHE_MAP:Ljava/lang/String; = null

.field public static final HIGH_LIMITED_APP_NUM:I = 0x1e

.field public static final LIMITED_APP_SPACE:J = 0x6400000L

.field public static final LOW_LIMITED_APP_NUM:I = 0x64

.field public static final LOW_LIMITED_MAX_APP_NUM:I = 0x96

.field public static final MEDIUM_LIMITED_APP_NUM:I = 0x32

.field public static final MEDIUM_LIMITED_MAX_APP_NUM:I = 0x4b

.field public static final NO_APP_SPACE:J = 0x3200000L

.field public static PASSIVE_UPDATE:I = 0x0

.field public static PRELOAD_ZIP:Ljava/lang/String; = null

.field public static SEQ:Ljava/lang/String; = null

.field public static TK:Ljava/lang/String; = null

.field public static TOTAL_UPDATE:Ljava/lang/String; = null

.field public static UNINSTALL:I = 0x0

.field public static final UPDATEGROUPID_AGE:J = 0x5265c00L

.field public static UPDATE_ALL_NETWORK:I = 0x0

.field public static final UPDATE_MAX_AGE:J = 0x493e0L

.field public static UPDATE_ONLY_WIFI:I

.field public static ZIPAPP_DOWNLOAD__DIR:Ljava/lang/String;

.field public static ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

.field public static ZIPAPP_ROOT_DIR:Ljava/lang/String;

.field public static ZIPAPP_ROOT_TMP_DIR:Ljava/lang/String;

.field public static ZIPAPP_ROOT_ZCACHE_DIR:Ljava/lang/String;

.field public static ZIP_NEWEST:I

.field public static ZIP_REMOVED:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 16
    const-string/jumbo v0, "utf-8"

    sput-object v0, Lc8/dH;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "app-res.wvc"

    sput-object v0, Lc8/dH;->APP_RES_NAME:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "app-res-incr.wvc"

    sput-object v0, Lc8/dH;->APP_RES_INC_NAME:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "app-info.wvc"

    sput-object v0, Lc8/dH;->APP_INFO_NAME:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "h5-prefixes.wvc"

    sput-object v0, Lc8/dH;->APP_PREFIXES_NAME:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "h5-apps.wvc"

    sput-object v0, Lc8/dH;->H5_APPS_NAME:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "zcache-map.wvc"

    sput-object v0, Lc8/dH;->H5_ZCACHE_MAP:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "wvapp/apps"

    sput-object v0, Lc8/dH;->ZIPAPP_ROOT_APPS_DIR:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "wvapp/zcache"

    sput-object v0, Lc8/dH;->ZIPAPP_ROOT_ZCACHE_DIR:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "wvapp/tmp"

    sput-object v0, Lc8/dH;->ZIPAPP_ROOT_TMP_DIR:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "wvapp/download/"

    sput-object v0, Lc8/dH;->ZIPAPP_DOWNLOAD__DIR:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "wvapp/"

    sput-object v0, Lc8/dH;->ZIPAPP_ROOT_DIR:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "0"

    sput-object v0, Lc8/dH;->DEFAULT_SYSTIME:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    sput v0, Lc8/dH;->UPDATE_ONLY_WIFI:I

    .line 44
    const/4 v0, 0x2

    sput v0, Lc8/dH;->UPDATE_ALL_NETWORK:I

    .line 47
    const/16 v0, 0x200

    sput v0, Lc8/dH;->FORCE_ONLINE:I

    .line 48
    const/16 v0, 0x100

    sput v0, Lc8/dH;->FORCE_UPDATE:I

    .line 49
    sput v2, Lc8/dH;->PASSIVE_UPDATE:I

    .line 50
    sput v1, Lc8/dH;->UNINSTALL:I

    .line 54
    sput v1, Lc8/dH;->ZIP_REMOVED:I

    .line 55
    sput v2, Lc8/dH;->ZIP_NEWEST:I

    .line 57
    const-string/jumbo v0, "preload_packageapp.zip"

    sput-object v0, Lc8/dH;->PRELOAD_ZIP:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "seq"

    sput-object v0, Lc8/dH;->SEQ:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "tk"

    sput-object v0, Lc8/dH;->TK:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "total_update"

    sput-object v0, Lc8/dH;->TOTAL_UPDATE:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "delta_update"

    sput-object v0, Lc8/dH;->DELTA_UPDATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
