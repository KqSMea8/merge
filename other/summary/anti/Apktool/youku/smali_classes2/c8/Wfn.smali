.class public Lc8/Wfn;
.super Ljava/lang/Object;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/service/download/v2/Errors$DisallowedNetworkCondition;,
        Lcom/youku/service/download/v2/Errors$NoNetwork;,
        Lcom/youku/service/download/v2/Errors$HijackedNetwork;,
        Lcom/youku/service/download/v2/Errors$PublicNetwork;,
        Lcom/youku/service/download/v2/Errors$UserDeleted;,
        Lcom/youku/service/download/v2/Errors$UserPaused;,
        Lcom/youku/service/download/v2/Errors$MismatchedVideoInfo;,
        Lcom/youku/service/download/v2/Errors$Http5xxServerError;,
        Lcom/youku/service/download/v2/Errors$Http403Forbidden;,
        Lcom/youku/service/download/v2/Errors$Http404NotFound;,
        Lcom/youku/service/download/v2/Errors$UnacceptedResponseCode;,
        Lcom/youku/service/download/v2/Errors$BadResource;,
        Lcom/youku/service/download/v2/Errors$MismatchedFileMD52;,
        Lcom/youku/service/download/v2/Errors$MismatchedFileMD5;,
        Lcom/youku/service/download/v2/Errors$MismatchedFileSize;,
        Lcom/youku/service/download/v2/Errors$UnableToRenameFile;,
        Lcom/youku/service/download/v2/Errors$DiskFullException;,
        Lcom/youku/service/download/v2/Errors$UnableToWriteFile;,
        Lcom/youku/service/download/v2/Errors$UnableToCreateFile;,
        Lcom/youku/service/download/v2/Errors$ServerTemparayUnavailable;,
        Lcom/youku/service/download/v2/Errors$UnableToReadSocket;,
        Lcom/youku/service/download/v2/Errors$NetworkUnreachable;,
        Lcom/youku/service/download/v2/Errors$FetchVideoInfoError;,
        Lcom/youku/service/download/v2/Errors$MalformedVideoInfo;,
        Lcom/youku/service/download/v2/Errors$DownloadForbidden;,
        Lcom/youku/service/download/v2/Errors$UnableToFetchVideoInfo;
    }
.end annotation


# static fields
.field private static final DiskFullMessage:Ljava/util/regex/Pattern;

.field public static final ERROR_CANNOT_USING_DATA:I = 0x9c41

.field public static final ERROR_DISK_FULL:I = 0x7530

.field public static final ERROR_DISK_NOT_FOUND:I = 0x7533

.field public static final ERROR_DISK_NOT_WRITABLE:I = 0x7531

.field public static final ERROR_DISK_WRITE_ERROR:I = 0x7532

.field public static final ERROR_HTTP_5XX:I = 0x2904

.field public static final ERROR_HTTP_FORBIDEN:I = 0x28a3

.field public static final ERROR_HTTP_NOT_FOUND:I = 0x28a4

.field public static final ERROR_NETWORK_TIMEOUT:I = 0x2712

.field public static final ERROR_NOT_REACHABLE:I = 0x2711

.field public static final ERROR_NO_NETWORK:I = 0x2710

.field public static final ERROR_RUNTIME_ERROR:I = 0x9c40

.field public static final ERROR_UPS_BLOCKED:I = 0x520a

.field public static final ERROR_UPS_CHANNEL:I = 0x59e0

.field public static final ERROR_UPS_DISALLOW:I = 0x5dc7

.field public static final ERROR_UPS_ENCRYPTED:I = 0x55f2

.field public static final ERROR_UPS_FANS:I = 0x55f4

.field public static final ERROR_UPS_LOGIN:I = 0x59df

.field public static final ERROR_UPS_NOT_EXIST:I = 0x520c

.field public static final ERROR_UPS_NO_COPYRIGHT:I = 0x5dc1

.field public static final ERROR_UPS_PAID:I = 0x59d9

.field public static final ERROR_UPS_PAID_EXPIRE:I = 0x59db

.field public static final ERROR_UPS_PRIVATE:I = 0x55f1

.field public static final ERROR_UPS_VIP_RIGHT:I = 0x59de

.field public static final EXCEPTION_PLAY_INFO_NOT_COMPLETE:I = 0x7530

.field public static final EXCEPTION_PUBLIC_NETWORK:I = 0x2710

.field public static final EXCEPTION_SDCARD_NOT_USABLE:I = 0x4e20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    const-string/jumbo v0, "ENOSPC|Disk space overflow"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/Wfn;->DiskFullMessage:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    return-void
.end method

.method public static isDiskFull(Ljava/lang/Throwable;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Wfn;->DiskFullMessage:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
