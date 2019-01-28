.class public Lc8/SWb;
.super Ljava/lang/Object;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/OWb;,
        Lc8/QWb;,
        Lc8/RWb;,
        Lc8/MWb;,
        Lc8/NWb;
    }
.end annotation


# static fields
.field public static final KEY_APP_BUILD:Ljava/lang/String; = "appBuild"

.field public static final KEY_APP_ID:Ljava/lang/String; = "appId"

.field public static final KEY_APP_KEY:Ljava/lang/String; = "appKey"

.field public static final KEY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final KEY_CLIENT_EVENT_QUEUE:Ljava/lang/String; = "clientEventQueue"

.field public static final KEY_COMMAND:Ljava/lang/String; = "command"

.field public static final KEY_COMMAND_SET:Ljava/lang/String; = "commandSet"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_FILE_NAME:Ljava/lang/String; = "fileName"

.field public static final KEY_FILE_URL:Ljava/lang/String; = "tfsPath"

.field public static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field public static final KEY_FREE_REPORT_DATA:Ljava/lang/String; = "freeReportData"

.field public static final KEY_FREE_REPORT_REASON:Ljava/lang/String; = "reason"

.field public static final KEY_FREE_REPORT_SCENARIO:Ljava/lang/String; = "scenarioName"

.field public static final KEY_MAGIC:Ljava/lang/String; = "magic"

.field public static final KEY_REQUEST_SEQUENCE:Ljava/lang/String; = "requestSequence"

.field public static final KEY_RESPONSE_CODE:Ljava/lang/String; = "responseCode"

.field public static final KEY_RESPONSE_MESSAGE:Ljava/lang/String; = "responseMessage"

.field public static final KEY_SEQUENCE:Ljava/lang/String; = "sequence"

.field public static final KEY_STAT_DATA:Ljava/lang/String; = "statData"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_UTDID:Ljava/lang/String; = "utdid"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final MAGIC:Ljava/lang/String; = "GODEYE"

.field public static final REPLY_PACKET_FLAGS:I = 0x1

.field public static final REQUEST_PACKET_FLAGS:I = 0x1

.field public static final RESPONSE_CODE_COMMAND_FAILED:I = 0x4

.field public static final RESPONSE_CODE_COMMAND_SUCCESS:I = 0x3

.field public static final RESPONSE_CODE_FAIL_OTHER:I = 0x7

.field public static final RESPONSE_CODE_FILE_UPLOAD_FAILED:I = 0x6

.field public static final RESPONSE_CODE_FILE_UPLOAD_SUCCESS:I = 0x5

.field public static final RESPONSE_CODE_NEW_COMMAND:I = 0x2

.field public static final RESPONSE_CODE_NEW_PLUGIN:I = 0x1

.field public static final RESPONSE_CODE_SUCCESS_OTHER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method
