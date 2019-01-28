.class public Lc8/PJj;
.super Ljava/lang/Object;
.source "MTopErrorConstants.java"


# static fields
.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final UNKNOWN_RETCODE:I = -0xfec

.field public static mtopSdkErrCodeMappingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mtopServerErrCodeMappingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 24
    sput-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_API_STOP_SERVICE"

    const/16 v2, -0xfa1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_SM_ODD_REQUEST"

    const/16 v2, -0xfa2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_API_NOT_FOUNDED"

    const/16 v2, -0xfa3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_SESSION_EXPIRED"

    const/16 v2, -0xfa4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_SYSTEM_BUSY_ERROR"

    const/16 v2, -0xfa5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_SERVLET_ASYNC_START_FAIL"

    const/16 v2, -0xfa6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_FLOWLIMIT"

    const/16 v2, -0xfa7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_API_UNAUTHORIZED"

    const/16 v2, -0xfa8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_PROTOPARAM_MISSED"

    const/16 v2, -0xfa9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_PROTOVER_MISSED"

    const/16 v2, -0xfaa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_REQUEST_EXPIRED"

    const/16 v2, -0xfab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_ILEGEL_SIGN"

    const/16 v2, -0xfac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_INVALID_HTTP_METHOD"

    const/16 v2, -0xfad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_BADARGUMENT_T"

    const/16 v2, -0xfae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_UNKNOWN_APP"

    const/16 v2, -0xfaf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_INTERNAL_FAULT"

    const/16 v2, -0xfb0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_TRAFFIC_LIMIT"

    const/16 v2, -0xfb1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_BIZPARAM_TYPE_ERROR"

    const/16 v2, -0xfb2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_BIZPARAM_MISSED"

    const/16 v2, -0xfb3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_TOPAUTHPARAM_MISSED"

    const/16 v2, -0xfb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_TOPAUTH_FAILED"

    const/16 v2, -0xfb5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_TOPAUTH_ACCESSTOKENEXPIRED_ERROR"

    const/16 v2, -0xfb6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_TOPAUTH_TRAFFICLIMIT_ERROR"

    const/16 v2, -0xfb7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_TOPUNAUTHAPI_ERROR"

    const/16 v2, -0xfb8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_TOPAUTH_FAULT"

    const/16 v2, -0xfb9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_RETMISSED_ERROR"

    const/16 v2, -0xfba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_PARAMINVALID_ERROR"

    const/16 v2, -0xfbb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SYSTEM_ERROR"

    const/16 v2, -0xfbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_UNAUTHORIZED_ENTRANCE"

    const/16 v2, -0xfbd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_SESSION_ERROR"

    const/16 v2, -0xfbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_MT_ODD_REQUEST"

    const/16 v2, -0xfbf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_EXPIRED_REQUEST"

    const/16 v2, -0xfc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_PORTOCOLPARAM_INVALID"

    const/16 v2, -0xfc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_INVALID_PROTOCOLVERSION"

    const/16 v2, -0xfc2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_ILLEGAL_ARGUMENT_TTID"

    const/16 v2, -0xfc3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_PARAM_MISSING"

    const/16 v2, -0xfc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_PARAM_FORMAT_ERROR"

    const/16 v2, -0xfc5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_ILLEGAL_ARGUMENT_TTID"

    const/16 v2, -0xfc6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_ILLEGAL_ACCESS_TOKEN"

    const/16 v2, -0xfc7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_ACCESS_TOKEN_STOP_SERVICE"

    const/16 v2, -0xfc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_ACCESS_TOKEN_INTERNAL_FAULT"

    const/16 v2, -0xfc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_ACCESS_TOKEN_TRAFFIC_LIMIT"

    const/16 v2, -0xfca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_ACCESS_TOKEN_EXPIRED"

    const/16 v2, -0xfcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_ACCESS_TOKEN_PARAM_INVALID"

    const/16 v2, -0xfcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_ACCESS_TOKEN_UNKNOWN_ERROR"

    const/16 v2, -0xfcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_SERVICE_NOT_EXIST"

    const/16 v2, -0xfce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_SERVICE_TIMEOUT"

    const/16 v2, -0xfcf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_SERVICE_FAULT"

    const/16 v2, -0xfd0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_HTTP_QUERYIP_ERROR"

    const/16 v2, -0xfd1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_HTTP_REQUESTSUBMIT_FAILED"

    const/16 v2, -0xfd2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_HTTP_INVOKE_ERROR"

    const/16 v2, -0xfd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_HTTP_RESPONSE_TIMEOUT"

    const/16 v2, -0xfd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_HTTP_CONNECT_TIMEOUT"

    const/16 v2, -0xfd5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "UNKNOWN_FAIL_CODE"

    const/16 v2, -0xfd6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_HSF_THROWN_EXCEPTION"

    const/16 v2, -0xfd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_SERVICE_INNER_FAULT"

    const/16 v2, -0xfd8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_HTTP_RESULT_FIELDMISSED"

    const/16 v2, -0xfd9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FAIL_SYS_SERVICE_INNER_FAULT"

    const/16 v2, -0xfda

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_NO_NETWORK"

    const/16 v2, -0xfdb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_NETWORK_ERROR"

    const/16 v2, -0xfdc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_JSONDATA_BLANK"

    const/16 v2, -0xfdd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_JSONDATA_PARSE_ERROR"

    const/16 v2, -0xfde

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_MTOPSDK_INIT_ERROR"

    const/16 v2, -0xfdf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_MTOPCONTEXT_INIT_ERROR"

    const/16 v2, -0xfe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_GENERATE_MTOP_SIGN_ERROR"

    const/16 v2, -0xfe1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_NETWORK_REQUEST_CONVERT_ERROR"

    const/16 v2, -0xfe2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_API_FLOW_LIMIT_LOCKED"

    const/16 v2, -0xfe3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_API_41X_ANTI_ATTACK"

    const/16 v2, -0xfe4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_MTOP_APICALL_ASYNC_TIMEOUT"

    const/16 v2, -0xfe5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_INIT_MTOP_ISIGN_ERROR"

    const/16 v2, -0xfe6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_MTOP_MISS_CALL_FACTORY"

    const/16 v2, -0xfe7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_LOGIN_FAIL"

    const/16 v2, -0xfe8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_LOGIN_CANCEL"

    const/16 v2, -0xfe9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_ILLEGAL_JSPARAM_ERROR"

    const/16 v2, -0xfea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ANDROID_SYS_PARSE_JSPARAM_ERROR"

    const/16 v2, -0xfeb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MTOP_UNKNOW_ERROR"

    const/16 v2, -0xfec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "retCode"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v1, Lc8/PJj;->mtopServerErrCodeMappingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 105
    .local v0, "errorCode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 106
    sget-object v1, Lc8/PJj;->mtopSdkErrCodeMappingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "errorCode":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 108
    .restart local v0    # "errorCode":Ljava/lang/Integer;
    :cond_0
    if-nez v0, :cond_1

    const/16 v1, -0xfec

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static isSuccess(Ljava/lang/String;)Z
    .locals 1
    .param p0, "retCode"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string/jumbo v0, "SUCCESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
