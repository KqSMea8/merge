.class public Lcom/uc/webview/export/extension/UCCore;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final CD_DISABLE_UCDNS:Ljava/lang/String; = "disable_ucdns"

.field public static final CD_ENABLE_NET_THREAD_REDUCE:Ljava/lang/String; = "dec_thread"

.field public static final CD_ENABLE_TRAFFIC_STAT:Ljava/lang/String; = "traffic_stat"

.field public static final COMPATIBLE_POLICY_ALL:I = 0x7

.field public static final COMPATIBLE_POLICY_ARMV5:I = 0x1

.field public static final COMPATIBLE_POLICY_ARMV7:I = 0x2

.field public static final COMPATIBLE_POLICY_X86:I = 0x4

.field public static final CORE_EVENT_CLEAR_DNS_CACHE:I = 0x0

.field public static final CORE_EVENT_CLEAR_HTTP_CACHE:I = 0x3

.field public static final CORE_EVENT_CONSOLE_CALLBACK:I = 0x6

.field public static final CORE_EVENT_DELETE_SERVICEWORKER_CACHE:I = 0x4

.field public static final CORE_EVENT_GET_HTTP_CACHE_SIZE:I = 0x1

.field public static final CORE_EVENT_PUSH_DNS_RESULT:I = 0x5

.field public static final CORE_EVENT_SERVICEWORKER_PUSHMESSAGE:I = 0x2

.field public static final DELETE_CORE_POLICY_ALL:I = 0x3f

.field public static final DELETE_CORE_POLICY_FILE_VERIFY_FAILED:I = 0x10

.field public static final DELETE_CORE_POLICY_LOAD_SO_ERROR:I = 0x2

.field public static final DELETE_CORE_POLICY_MULTI_CRASH:I = 0x4

.field public static final DELETE_CORE_POLICY_NONE:I = 0x0

.field public static final DELETE_CORE_POLICY_OTHER:I = 0x20

.field public static final DELETE_CORE_POLICY_SO_MD5_MISMATCH:I = 0x8

.field public static final DELETE_CORE_POLICY_SO_SIZE_MISMATCH:I = 0x1

.field public static final LOAD_POLICY_SHARE_CORE:Ljava/lang/String; = "SHARE_CORE"

.field public static final LOAD_POLICY_SPECIFIED_ONLY:Ljava/lang/String; = "SPECIFIED_ONLY"

.field public static final LOAD_POLICY_SPECIFIED_OR_UCMOBILE:Ljava/lang/String; = "SPECIFIED_OR_UCMOBILE"

.field public static final LOAD_POLICY_UCMOBILE_ONLY:Ljava/lang/String; = "UCMOBILE_ONLY"

.field public static final LOAD_POLICY_UCMOBILE_OR_SPECIFIED:Ljava/lang/String; = "UCMOBILE_OR_SPECIFIED"

.field public static final OPTION_BREAKPAD_CONFIG:Ljava/lang/String; = "BREAKPAD_CONFIG"

.field public static final OPTION_COMPATIBLE_POLICY:Ljava/lang/String; = "COMPATIBLE_POLICY"

.field public static final OPTION_CONNECTION_CONNECT_TIMEOUT:Ljava/lang/String; = "conn_to"

.field public static final OPTION_CONNECTION_READ_TIMEOUT:Ljava/lang/String; = "read_to"

.field public static final OPTION_CONTEXT:Ljava/lang/String; = "CONTEXT"

.field public static final OPTION_CORE_VERSION_EXCLUDE:Ljava/lang/String; = "core_ver_excludes"

.field public static final OPTION_DELETE_CORE_POLICY:Ljava/lang/String; = "delete_core"

.field public static final OPTION_DEX_FILE_PATH:Ljava/lang/String; = "dexFilePath"

.field public static final OPTION_DOWNLOAD_CHECKER:Ljava/lang/String; = "dlChecker"

.field public static final OPTION_DWN_RETRY_MAX_WAIT_MILIS:Ljava/lang/String; = "dwnRetryMaxWait"

.field public static final OPTION_DWN_RETRY_WAIT_MILIS:Ljava/lang/String; = "dwnRetryWait"

.field public static final OPTION_EXACT_LAST_MODIFIED_CHECK:Ljava/lang/String; = "exact_mod"

.field public static final OPTION_EXACT_OLD_KERNEL_CHECK:Ljava/lang/String; = "exact_old"

.field public static final OPTION_FORBID_GEN_REPAIR_DIR:Ljava/lang/String; = "forbid_repair"

.field public static final OPTION_GRANT_ALL_BUILDS:Ljava/lang/String; = "grant_all_builds"

.field public static final OPTION_HARDWARE_ACCELERATED:Ljava/lang/String; = "AC"

.field public static final OPTION_INIT_IN_SETUP_THREAD:Ljava/lang/String; = "init_setup_thread"

.field public static final OPTION_LOAD_KERNEL_TYPE:Ljava/lang/String; = "load"

.field public static final OPTION_LOAD_POLICY:Ljava/lang/String; = "loadPolicy"

.field public static final OPTION_LOG_CONFIG:Ljava/lang/String; = "log_conf"

.field public static final OPTION_MULTI_CORE_TYPE:Ljava/lang/String; = "MULTI_CORE_TYPE"

.field public static final OPTION_MULTI_UNKNOWN_CRASH_DISABLE:Ljava/lang/String; = "disable_multi_unknown_crash"

.field public static final OPTION_NOT_SWITCH_UCCORE:Ljava/lang/String; = "oNotSwUCCore"

.field public static final OPTION_PRECREATE_WEBVIEW:Ljava/lang/String; = "precreate_webview"

.field public static final OPTION_PRECREATE_WEBVIEW_URL:Ljava/lang/String; = "precreate_webview_url"

.field public static final OPTION_PRIVATE_DATA_DIRECTORY_SUFFIX:Ljava/lang/String; = "PRIVATE_DATA_DIRECTORY_SUFFIX"

.field public static final OPTION_PROVIDED_KEYS:Ljava/lang/String; = "provided_keys"

.field public static final OPTION_RES_FILE_PATH:Ljava/lang/String; = "resFilePath"

.field public static final OPTION_SDK_VERSION_EXCLUDE:Ljava/lang/String; = "sdk_ver_excludes"

.field public static final OPTION_SETUP_THREAD_PRIORITY:Ljava/lang/String; = "setup_priority"

.field public static final OPTION_SET_ODEX_ROOT_PATH:Ljava/lang/String; = "set_odex_path"

.field public static final OPTION_SHARE_CORE:Ljava/lang/String; = "share_core"

.field public static final OPTION_SHARE_CORE_PKG_NAME:Ljava/lang/String; = "share_core_pkg_name"

.field public static final OPTION_SHARE_CORE_SYS_PATH:Ljava/lang/String; = "share_core_sys_path"

.field public static final OPTION_SKIP_OLD_KERNEL:Ljava/lang/String; = "skip_old_extra_kernel"

.field public static final OPTION_SO_FILE_PATH:Ljava/lang/String; = "soFilePath"

.field public static final OPTION_SPEEDUP_DEXOPT_POLICY:Ljava/lang/String; = "speedup_dexopt"

.field public static final OPTION_UCM_CFG_FILE:Ljava/lang/String; = "ucmCfgFile"

.field public static final OPTION_UCM_KRL_DIR:Ljava/lang/String; = "ucmKrlDir"

.field public static final OPTION_UCM_LIB_DIR:Ljava/lang/String; = "ucmLibDir"

.field public static final OPTION_UCM_PATCH_DIR:Ljava/lang/String; = "ucmPatDir"

.field public static final OPTION_UCM_UPD_URL:Ljava/lang/String; = "ucmUpdUrl"

.field public static final OPTION_UCM_ZIP_DIR:Ljava/lang/String; = "ucmZipDir"

.field public static final OPTION_UCM_ZIP_FILE:Ljava/lang/String; = "ucmZipFile"

.field public static final OPTION_UC_PLAYER_ROOT:Ljava/lang/String; = "ucPlayerRoot"

.field public static final OPTION_UC_PROXY_ADBLOCK:Ljava/lang/String; = "proxy_adblock"

.field public static final OPTION_UPD_SETUP_TASK_WAIT_MILIS:Ljava/lang/String; = "updWait"

.field public static final OPTION_USE_SDK_SETUP:Ljava/lang/String; = "sdk_setup"

.field public static final OPTION_USE_SYSTEM_WEBVIEW:Ljava/lang/String; = "SYSTEM_WEBVIEW"

.field public static final OPTION_USE_UC_PLAYER:Ljava/lang/String; = "ucPlayer"

.field public static final OPTION_VERIFY_POLICY:Ljava/lang/String; = "VERIFY_POLICY"

.field public static final OPTION_VIDEO_HARDWARE_ACCELERATED:Ljava/lang/String; = "VIDEO_AC"

.field public static final OPTION_VMSIZE_SAVING:Ljava/lang/String; = "vmsize_saving"

.field public static final OPTION_WAP_DENY:Ljava/lang/String; = "wap_deny"

.field public static final OPTION_WEBVIEW_POLICY:Ljava/lang/String; = "WEBVIEW_POLICY"

.field public static final OPTION_WEBVIEW_POLICY_WAIT_MILLIS:Ljava/lang/String; = "wait_fallback_sys"

.field public static final SPEEDUP_DEXOPT_POLICY_ALL:I = 0x7ff

.field public static final SPEEDUP_DEXOPT_POLICY_ART:I = 0x780

.field public static final SPEEDUP_DEXOPT_POLICY_DAVIK:I = 0x7f

.field public static final SPEEDUP_DEXOPT_POLICY_NONE:I = 0x0

.field public static final VERIFY_POLICY_ALL:I = 0x4000000f

.field public static final VERIFY_POLICY_BROWSER_IF:I = 0x2

.field public static final VERIFY_POLICY_CORE_IMPL:I = 0x4

.field public static final VERIFY_POLICY_NONE:I = 0x0

.field public static final VERIFY_POLICY_QUICK:I = 0x40000000

.field public static final VERIFY_POLICY_SDK_SHELL:I = 0x1

.field public static final VERIFY_POLICY_SO:I = 0x8

.field public static final VERIFY_POLICY_SO_FULL_HASH:I = 0x10

.field public static final WEBVIEW_POLICY_WAIT_UNTIL_EXCEPTION:I = 0x3

.field public static final WEBVIEW_POLICY_WAIT_UNTIL_FALLBACK_SYSTEM:I = 0x2

.field public static final WEBVIEW_POLICY_WAIT_UNTIL_LOADED:I = 0x1

.field private static a:Lcom/uc/webview/export/internal/setup/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/extension/UCCore;->a:Lcom/uc/webview/export/internal/setup/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Lcom/uc/webview/export/internal/setup/v;
    .locals 2

    .prologue
    .line 716
    const-class v1, Lcom/uc/webview/export/extension/UCCore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/extension/UCCore;->a:Lcom/uc/webview/export/internal/setup/v;

    if-nez v0, :cond_0

    .line 717
    new-instance v0, Lcom/uc/webview/export/internal/setup/v;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/v;-><init>()V

    sput-object v0, Lcom/uc/webview/export/extension/UCCore;->a:Lcom/uc/webview/export/internal/setup/v;

    .line 718
    :cond_0
    sget-object v0, Lcom/uc/webview/export/extension/UCCore;->a:Lcom/uc/webview/export/internal/setup/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 716
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x2712

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-static {p0}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUCPlayerRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    new-array v0, v5, [Ljava/lang/Object;

    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v7, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v5, [Ljava/lang/Object;

    const-wide/16 v2, 0x800

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v7, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v5, [Ljava/lang/Object;

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v7, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v5, [Ljava/lang/Object;

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v7, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v5, [Ljava/lang/Object;

    const-wide/16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v7, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v5, [Ljava/lang/Object;

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v7, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v5, [Ljava/lang/Object;

    const-wide/32 v2, 0x10000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v7, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->y:Ljava/util/Map;

    const-string/jumbo v1, "sdk_ecur1"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->y:Ljava/util/Map;

    const-string/jumbo v1, "sdk_ecdl1"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->y:Ljava/util/Map;

    const-string/jumbo v1, "sdk_ecv1"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->y:Ljava/util/Map;

    const-string/jumbo v1, "sdk_ecuz1"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/uc/webview/export/extension/g;

    invoke-direct {v5}, Lcom/uc/webview/export/extension/g;-><init>()V

    new-instance v0, Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "libu3player.so"

    move-object v1, p0

    move-object v2, p1

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/uc/webview/export/utility/download/UpdateTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/lang/Long;Ljava/lang/Long;)V

    const-string/jumbo v1, "beginDownload"

    new-instance v2, Lcom/uc/webview/export/extension/e;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "beginUnZip"

    new-instance v2, Lcom/uc/webview/export/extension/d;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/d;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "unzipSuccess"

    new-instance v2, Lcom/uc/webview/export/extension/n;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/n;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "check"

    new-instance v2, Lcom/uc/webview/export/extension/m;

    invoke-direct {v2, p2}, Lcom/uc/webview/export/extension/m;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "success"

    new-instance v2, Lcom/uc/webview/export/extension/l;

    invoke-direct {v2, p0, p3}, Lcom/uc/webview/export/extension/l;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "failed"

    new-instance v2, Lcom/uc/webview/export/extension/k;

    invoke-direct {v2}, Lcom/uc/webview/export/extension/k;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "exception"

    new-instance v2, Lcom/uc/webview/export/extension/i;

    invoke-direct {v2, p3}, Lcom/uc/webview/export/extension/i;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    const-string/jumbo v1, "exists"

    new-instance v2, Lcom/uc/webview/export/extension/h;

    invoke-direct {v2, p3, v8}, Lcom/uc/webview/export/extension/h;-><init>(Ljava/util/Map;Ljava/io/File;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->start()Lcom/uc/webview/export/utility/download/UpdateTask;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 46
    if-eqz p2, :cond_0

    const-string/jumbo v0, "downloadException"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "exception"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p1, Lcom/uc/webview/export/internal/setup/o;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/o;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "updateProgress"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "progress"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    :try_start_1
    check-cast p1, Lcom/uc/webview/export/internal/setup/o;

    const/16 v1, 0x2721

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static clearHttpCache()V
    .locals 5

    .prologue
    .line 1309
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1310
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string/jumbo v3, "SETTING_CLEAR_RECORD"

    const-string/jumbo v4, "15"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1312
    :cond_0
    return-void
.end method

.method public static extractWebCoreLibraryIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    .line 1238
    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompressIfNeeded(Landroid/content/Context;ZLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;Z)Z

    .line 1239
    return-void
.end method

.method public static getCoreInfo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1134
    const/16 v0, 0x273e

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1288
    const/16 v0, 0x2715

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getResponseByUrl(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 3

    .prologue
    .line 1179
    const/16 v0, 0x272f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/WebResourceResponse;

    return-object v0
.end method

.method public static getTraffic()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1166
    const/16 v0, 0x2739

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public static init(Landroid/content/Context;ZLcom/uc/webview/export/extension/BreakpadConfig;Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/uc/webview/export/extension/BreakpadConfig;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 696
    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->a()Lcom/uc/webview/export/internal/setup/v;

    move-result-object v0

    const-string/jumbo v1, "CONTEXT"

    .line 697
    invoke-virtual {v0, v1, p0}, Lcom/uc/webview/export/internal/setup/v;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v1, "BREAKPAD_CONFIG"

    .line 698
    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v1, "SYSTEM_WEBVIEW"

    .line 699
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 701
    if-eqz p3, :cond_0

    .line 702
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 703
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 705
    sget-object v3, Lcom/uc/webview/export/extension/UCCore;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/uc/webview/export/internal/setup/v;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    goto :goto_0

    .line 709
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->y:Ljava/util/Map;

    const-string/jumbo v1, "sdk_eci"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Lcom/uc/webview/export/extension/UCCore;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/v;->startSync()V

    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public static notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1322
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_1

    .line 1323
    const-string/jumbo v0, "notifyCoreEvent"

    const-string/jumbo v1, "notifyCoreEvent"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    const-string/jumbo v1, "notifyCoreEvent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lcom/uc/webview/export/internal/uc/a;

    invoke-direct {v5, p0, p1}, Lcom/uc/webview/export/internal/uc/a;-><init>(ILjava/lang/Object;)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1338
    :goto_0
    return-object v0

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    const-string/jumbo v1, "notifyCoreEvent"

    const-string/jumbo v2, "notifyCoreEvent"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1338
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1331
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1333
    :try_start_1
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0, p1}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1334
    :catch_1
    move-exception v0

    .line 1335
    const-string/jumbo v1, "notifyCoreEvent"

    const-string/jumbo v2, "notifyCoreEvent error="

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1348
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1350
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1355
    :goto_0
    return-object v0

    .line 1351
    :catch_0
    move-exception v0

    .line 1352
    const-string/jumbo v1, "notifyCoreEvent"

    const-string/jumbo v2, "notifyCoreEvent error="

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1355
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onLowMemory()V
    .locals 1

    .prologue
    .line 1081
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1083
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onLowMemory()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static onTrimMemory(I)V
    .locals 1

    .prologue
    .line 1097
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1099
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onTrimMemory(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static preloadResource(Ljava/lang/String;IILandroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/webkit/WebResourceResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1386
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1388
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->preloadResource(Ljava/lang/String;IILandroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setDrawableResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1154
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1155
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->getWebResources()Lcom/uc/webview/export/internal/interfaces/IWebResourceInternal;

    move-result-object v0

    .line 1156
    invoke-interface {v0, p0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebResourceInternal;->setDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1158
    :cond_0
    return-void
.end method

.method public static setInitCallback(Lcom/uc/webview/export/extension/InitCallback;)V
    .locals 0

    .prologue
    .line 1248
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->o:Lcom/uc/webview/export/extension/InitCallback;

    .line 1249
    return-void
.end method

.method public static setLocationManager(Lcom/uc/webview/export/extension/ILocationManager;)V
    .locals 1

    .prologue
    .line 1071
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1072
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setLocationManagerUC(Lcom/uc/webview/export/extension/ILocationManager;)V

    .line 1073
    :cond_0
    return-void
.end method

.method public static setNetLogger(Lcom/uc/webview/export/internal/interfaces/INetLogger;)V
    .locals 1

    .prologue
    .line 1225
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setNetLogger(Lcom/uc/webview/export/internal/interfaces/INetLogger;)V

    .line 1226
    return-void
.end method

.method public static setNetworkDelegate(Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1199
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_1

    .line 1200
    const-string/jumbo v0, "network delegate"

    const-string/jumbo v1, "invoke setNetworkDelegate"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    const-string/jumbo v1, "setNetworkDelegate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lcom/uc/webview/export/internal/uc/b;

    invoke-direct {v5, p0}, Lcom/uc/webview/export/internal/uc/b;-><init>(Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    const-string/jumbo v1, "network delegate"

    const-string/jumbo v2, "setNetworkDelegate"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1208
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1209
    const-string/jumbo v0, "network delegate"

    const-string/jumbo v1, "UCCore U4 setNetworkDelegate"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    :try_start_1
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setNetworkDelegate(Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1212
    :catch_1
    move-exception v0

    .line 1213
    const-string/jumbo v1, "network delegate"

    const-string/jumbo v2, "setNetworkDelegate"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setNotAvailableUCListener(Lcom/uc/webview/export/extension/NotAvailableUCListener;)V
    .locals 0

    .prologue
    .line 1121
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->a:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    .line 1122
    return-void
.end method

.method public static setParam(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1279
    const/16 v0, 0x2714

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    return-void
.end method

.method public static setPrintLog(Z)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1143
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string/jumbo v2, "[all]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "[all]"

    aput-object v2, v0, v1

    .line 1144
    const/16 v1, 0x2740

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    return-void
.end method

.method public static setSocketParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1366
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1368
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0, p1}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setSocketParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setStatDataCallback(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1258
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->v:Landroid/webkit/ValueCallback;

    .line 1259
    return-void
.end method

.method public static setStatDataCheckCallback(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1269
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->w:Landroid/webkit/ValueCallback;

    .line 1270
    return-void
.end method

.method public static setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V
    .locals 2

    .prologue
    .line 1189
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1190
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0, p1}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V

    .line 1191
    :cond_0
    return-void
.end method

.method public static setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;
    .locals 1

    .prologue
    .line 729
    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->a()Lcom/uc/webview/export/internal/setup/v;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/uc/webview/export/internal/setup/v;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    return-object v0
.end method

.method public static startDownload()V
    .locals 2

    .prologue
    .line 1400
    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->a()Lcom/uc/webview/export/internal/setup/v;

    move-result-object v0

    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/v;->a:Lcom/uc/webview/export/internal/setup/o;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/v;->a:Lcom/uc/webview/export/internal/setup/o;

    instance-of v1, v1, Lcom/uc/webview/export/internal/setup/be;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/v;->a:Lcom/uc/webview/export/internal/setup/o;

    check-cast v0, Lcom/uc/webview/export/internal/setup/be;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/be;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->startDownload()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 1401
    :cond_0
    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    .line 741
    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->a()Lcom/uc/webview/export/internal/setup/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/internal/setup/v;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 742
    return-void
.end method

.method public static updateTypefacePath(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 1301
    const/16 v0, 0x2737

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    return-void
.end method

.method public static updateUCCore(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    .line 802
    new-instance v0, Lcom/uc/webview/export/extension/a;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/extension/a;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/util/Map;)V

    .line 855
    invoke-virtual {v0}, Lcom/uc/webview/export/extension/a;->start()V

    .line 856
    return-void
.end method

.method public static updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    .line 868
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/uc/webview/export/extension/UCCore;->updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V

    .line 869
    return-void
.end method

.method public static updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    .line 882
    new-instance v0, Lcom/uc/webview/export/extension/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/uc/webview/export/extension/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V

    .line 910
    invoke-virtual {v0}, Lcom/uc/webview/export/extension/f;->start()V

    .line 911
    return-void
.end method

.method public static uploadCrashLogs()V
    .locals 0

    .prologue
    .line 1111
    invoke-static {}, Lcom/uc/webview/export/internal/a;->a()V

    .line 1112
    return-void
.end method
