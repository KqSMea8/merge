.class public Lc8/EQ;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static APPLICATION_JSON:Ljava/lang/String; = null

.field public static CONTENT_TYPE_TEXT_JSON:Ljava/lang/String; = null

.field public static DEFAULT_HTTP_SIZE:I = 0x0

.field public static DEFAULT_MAX_CONNECTIONS:I = 0x0

.field public static DEFAULT_SOCKET_BUFFER_SIZE:I = 0x0

.field public static final FAILED_MESSAGE_DEFAULT_PEROID:I = 0x36ee80

.field public static final LOCATIOON_UPDATE_INTERVAL:I = 0x36ee80

.field public static final NORMAL_MESSAGE_DEFAULT_PEROID:I = 0x36ee80

.field public static OFFLINECACHE_LENGTH:I = 0x0

.field public static OFFLINECACHE_QUEUEEXPIRATIONSECS:I = 0x0

.field public static OFFLINECACHE_TIMEOUT:I = 0x0

.field public static final REDIRECTURL:Ljava/lang/String; = "REDIRECTURL"

.field public static REDIRECTURL_VALUE:Ljava/lang/String; = null

.field public static THREAD_SLEEP_TIME:I = 0x0

.field public static TIMEOUT:I = 0x0

.field public static final TIMER_DELAY:I = 0x0

.field public static final TIME_ONE_DAY:J = 0x5265c00L

.field public static final TIME_THREE_DAY:J = 0xf731400L

.field public static final TRACKING_AAID:Ljava/lang/String; = "AAID"

.field public static final TRACKING_ANDROIDID:Ljava/lang/String; = "ANDROIDID"

.field public static final TRACKING_IMEI:Ljava/lang/String; = "IMEI"

.field public static final TRACKING_KEY:Ljava/lang/String; = "AKEY"

.field public static final TRACKING_LOCATION:Ljava/lang/String; = "LBS"

.field public static final TRACKING_MAC:Ljava/lang/String; = "MAC"

.field public static final TRACKING_MUDS:Ljava/lang/String; = "MUDS"

.field public static final TRACKING_MUID:Ljava/lang/String; = "MUID"

.field public static final TRACKING_NAME:Ljava/lang/String; = "ANAME"

.field public static final TRACKING_ODIN:Ljava/lang/String; = "ODIN"

.field public static final TRACKING_OS:Ljava/lang/String; = "OS"

.field public static final TRACKING_OS_VERION:Ljava/lang/String; = "OSVS"

.field public static final TRACKING_SCWH:Ljava/lang/String; = "SCWH"

.field public static final TRACKING_SDKVS:Ljava/lang/String; = "SDKVS"

.field public static final TRACKING_SDKVS_VALUE:Ljava/lang/String; = "1.3.1"

.field public static final TRACKING_TERM:Ljava/lang/String; = "TERM"

.field public static final TRACKING_TIMESTAMP:Ljava/lang/String; = "TS"

.field public static final TRACKING_URL:Ljava/lang/String; = "URL"

.field public static final TRACKING_WIFI:Ljava/lang/String; = "WIFI"

.field public static location:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 10
    const/4 v0, 0x0

    sput v0, Lc8/EQ;->OFFLINECACHE_LENGTH:I

    .line 14
    sput v1, Lc8/EQ;->OFFLINECACHE_QUEUEEXPIRATIONSECS:I

    .line 18
    sput v1, Lc8/EQ;->OFFLINECACHE_TIMEOUT:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lc8/EQ;->TIMEOUT:I

    .line 23
    const-string/jumbo v0, ""

    sput-object v0, Lc8/EQ;->location:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    sput-object v0, Lc8/EQ;->REDIRECTURL_VALUE:Ljava/lang/String;

    .line 62
    const/16 v0, 0x1e

    sput v0, Lc8/EQ;->DEFAULT_MAX_CONNECTIONS:I

    .line 64
    const/16 v0, 0x2000

    sput v0, Lc8/EQ;->DEFAULT_SOCKET_BUFFER_SIZE:I

    .line 65
    const/16 v0, 0x32

    sput v0, Lc8/EQ;->DEFAULT_HTTP_SIZE:I

    .line 66
    const/16 v0, 0x1f4

    sput v0, Lc8/EQ;->THREAD_SLEEP_TIME:I

    .line 67
    const-string/jumbo v0, "application/json"

    sput-object v0, Lc8/EQ;->APPLICATION_JSON:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "text/json"

    sput-object v0, Lc8/EQ;->CONTENT_TYPE_TEXT_JSON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
