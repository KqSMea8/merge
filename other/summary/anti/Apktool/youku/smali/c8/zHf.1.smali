.class public Lc8/zHf;
.super Ljava/lang/Object;
.source "TLogConstant.java"


# static fields
.field public static final ALIBABA_GROUP:B = 0x1t

.field public static final ASSIST_DIR:Ljava/lang/String; = "assist_data"

.field public static final CHANNEL_MODLE:Ljava/lang/String; = "realtime"

.field public static final CURRENT_FILE_NAME:Ljava/lang/String; = "tlog_current_file_name"

.field public static final DEFAULT_CONFIG_CENTER_GROUP:Ljava/lang/String; = "motu-remote"

.field public static final DEFAULT_FILE_DIRS:Ljava/lang/String; = "logs"

.field public static final DEFAULT_KEY:Ljava/lang/String; = "t_remote_debugger"

.field public static DELIMITER:C = '\u0000'

.field public static final ENCRYPT_TYPE:B = 0x3t

.field public static final EXTDATA_DIR:Ljava/lang/String; = "ext_data"

.field public static final EXTERNAL_GROUP:B = 0x2t

.field public static final FILE_COUNT_LIMIT:I = 0x7

.field public static FILE_PREFIX:Ljava/lang/String; = null

.field public static final FILE_SUFFIX:Ljava/lang/String; = ".tlog"

.field public static final LOGIC_ERROR_TYPE:Ljava/lang/String; = "F"

.field public static final MAGIC_NUMBER:[B

.field public static final MONITOR_MODULE:Ljava/lang/String; = "tlog_monitor_module"

.field public static final MULTI_PROCESS_MESSAGE:Ljava/lang/String; = "tlog_multi_process_message"

.field public static final NORMAL_TLOG:Ljava/lang/String; = "normal"

.field public static final PERSIST_EXTDATA:Ljava/lang/String; = "tlog_upload_extdata"

.field public static final PERSIST_SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field public static final PERSIST_SERVICE_ID:Ljava/lang/String; = "serviceId"

.field public static final PERSIST_TASK_ID:Ljava/lang/String; = "taskId"

.field public static final PERSIST_UPLOAD_FILES:Ljava/lang/String; = "tlog_upload_files"

.field public static final PERSIST_UPLOAD_TYPE:Ljava/lang/String; = "tlog_upload_type"

.field public static final PERSIST_USER_ID:Ljava/lang/String; = "userId"

.field public static final PROFESSION_TLOG:Ljava/lang/String; = "profession"

.field public static final RECORD_DIR:Ljava/lang/String; = "record_data"

.field public static final REMOTE_DEBUGER_ANDROID:Ljava/lang/String; = "remote_debuger_android"

.field public static final REMOTE_DEBUGER_LOG_DESTROY:Ljava/lang/String; = "tlog_destroy"

.field public static final REMOTE_DEBUGER_LOG_ENDTIME:Ljava/lang/String; = "tlog_endtime"

.field public static final REMOTE_DEBUGER_LOG_LEVEL:Ljava/lang/String; = "tlog_level"

.field public static final REMOTE_DEBUGER_LOG_MODULE:Ljava/lang/String; = "tlog_module"

.field public static final REMOTE_DEBUGER_LOG_PULL:Ljava/lang/String; = "tlog_pull"

.field public static final REMOTE_DEBUGER_LOG_SWITCH:Ljava/lang/String; = "tlog_switch"

.field public static final REMOTE_DEBUGER_LOG_VERSION:Ljava/lang/String; = "tlog_version"

.field public static final RUBBISH_DIR:Ljava/lang/String; = "tmp"

.field public static final SCENE_LOG_TYPE:Ljava/lang/String; = "D"

.field public static final SDKVERSION:Ljava/lang/String; = "1.0"

.field public static SEPARATOR:Ljava/lang/String; = null

.field public static SEPARATOR1:C = '\u0000'

.field public static SEPARATOR2:C = '\u0000'

.field public static final SERVICE_ID:Ljava/lang/String; = "mtop"

.field public static final TLOG_MODULE_OFF:Ljava/lang/String; = "off"

.field public static final TLOG_TYPE:Ljava/lang/String; = "C"

.field public static final TLOG_VERSION:Ljava/lang/String; = "tlog_sdk_version"

.field public static final TRACE_LOG_TYPE:Ljava/lang/String; = "T"

.field public static final USER_OPTION_TYPE:Ljava/lang/String; = "U"

.field public static final VERSION:B = 0x5t


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 8
    const/4 v0, 0x3

    sput-char v0, Lc8/zHf;->SEPARATOR1:C

    .line 10
    const/16 v0, 0xa

    sput-char v0, Lc8/zHf;->SEPARATOR2:C

    .line 12
    const-string/jumbo v0, "%c%c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-char v3, Lc8/zHf;->SEPARATOR1:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    sget-char v2, Lc8/zHf;->SEPARATOR2:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/zHf;->SEPARATOR:Ljava/lang/String;

    .line 14
    sput-char v4, Lc8/zHf;->DELIMITER:C

    .line 28
    const-string/jumbo v0, "TAOBAO"

    sput-object v0, Lc8/zHf;->FILE_PREFIX:Ljava/lang/String;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc8/zHf;->MAGIC_NUMBER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4dt
        0x4ft
        0x54t
        0x55t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
