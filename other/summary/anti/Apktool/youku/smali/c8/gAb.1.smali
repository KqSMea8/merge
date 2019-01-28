.class public Lc8/gAb;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final COMMON_PERSISTENT_CONF_CACHE_KEY:Ljava/lang/String; = "UTConfCache"

.field public static final COMMON_PERSISTENT_LONGLOGINUSERNICK_KEY:Ljava/lang/String; = "longLoginUserNick"

.field public static final COMMON_PERSISTENT_TRACE_CONF_CACHE_KEY:Ljava/lang/String; = "UTTraceConfCache"

.field public static final COMMON_PERSISTENT_TRACE_CONF_HISTORY_VERSION_CACHE_KEY:Ljava/lang/String; = "UTTraceConfHisVersionCache"

.field public static final CONFIGURATION_URL:Ljava/lang/String; = "http://adash.m.taobao.com/rest/gc"

.field public static final DEFAULT_TRACE_SIZE:I = 0xc8

.field public static final EXCEPTION_REPORT_URL:Ljava/lang/String; = "http://adash.m.taobao.com/rest/er"

.field public static final FAKE_USERNICK:Ljava/lang/String; = "BniUaBZgOpIkLWIAoept"

.field public static final GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

.field public static final IS_EASY_TRACE:Ljava/lang/String; = "_EASY_TRACE_"

.field public static final MAX_CONNECTION_TIME_OUT:I = 0x2710

.field public static final MAX_PACKAGE_SIZE:I = 0xc00

.field public static final MAX_PACKAGE_STORE_SIZE:I = 0x40000

.field public static final MAX_READ_CONNECTION_STREAM_TIME_OUT:I = 0x7530

.field public static final MAX_UPLOAD_SIZE:I = 0x2800

.field public static final NULL_TRACE_FIELD:Ljava/lang/String; = "-"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.taobao.statistic"

.field public static final PACKAGE_NAME2:Ljava/lang/String; = "org.usertrack"

.field public static final PERSISTENT_CONFIG_DIR:Ljava/lang/String; = ".UTSystemConfig"

.field public static final PER_CLEAN_PACKAGE_COUNT:I = 0x32

.field public static final REISSUE:[Ljava/lang/String;

.field public static final RESOURCE_IDENTIFIER:Ljava/lang/String; = ""

.field public static final SEPARATOR:Ljava/lang/String; = "||"

.field public static final SUB_SEPARATOR:Ljava/lang/String; = ","

.field public static final TRACES_BYTE_BUFFER_SIZE:I = 0xc00

.field public static final TRACE_CONFIGURATION_URL:Ljava/lang/String; = "http://adash.m.taobao.com/rest/tgc"

.field public static final UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final UPLOAD_URL:Ljava/lang/String; = "http://adash.m.taobao.com/rest/ur"

.field public static final USERTRACK_EXTEND_PAGE_NAME:Ljava/lang/String; = "Page_Extend"

.field public static final USERTRACK_INIT_PAGE_NAME:Ljava/lang/String; = "Page_UsertrackInit"

.field public static final USERTRACK_PAGE_NAME:Ljava/lang/String; = "Page_Usertrack"

.field public static final USERTRACK_UNINIT_PAGE_NAME:Ljava/lang/String; = "Page_UsertrackUninit"

.field public static final _IET_:Ljava/lang/String; = "_iet"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ".UTSystemConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/gAb;->GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "reissue=true"

    aput-object v2, v0, v1

    sput-object v0, Lc8/gAb;->REISSUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
