.class public final Lc8/Lef;
.super Ljava/lang/Object;
.source "TaobaoApm.java"


# static fields
.field private static isInit:Z

.field public static mAnetworkEnd:Ljava/lang/reflect/Method;

.field public static mAnetworkStart:Ljava/lang/reflect/Method;

.field static mContext:Landroid/content/Context;

.field public static sIsInTaobao:Z

.field public static sSdCardEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    sput-object v1, Lc8/Lef;->mAnetworkStart:Ljava/lang/reflect/Method;

    .line 19
    sput-object v1, Lc8/Lef;->mAnetworkEnd:Ljava/lang/reflect/Method;

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Lef;->sIsInTaobao:Z

    .line 22
    sput-object v1, Lc8/Lef;->mContext:Landroid/content/Context;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Lef;->isInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized init(Landroid/app/Application;Landroid/content/Context;)V
    .locals 5
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-class v3, Lc8/Lef;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lc8/Lef;->isInit:Z

    if-nez v2, :cond_2

    if-eqz p0, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v2, v4, :cond_2

    .line 32
    sput-object p1, Lc8/Lef;->mContext:Landroid/content/Context;

    .line 34
    sget-boolean v2, Lc8/osf;->sPublishRelease:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 36
    :try_start_1
    const-string/jumbo v2, ""

    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 37
    .local v0, "baseFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    const/4 v2, 0x1

    sput-boolean v2, Lc8/Lef;->sSdCardEnable:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .end local v0    # "baseFile":Ljava/io/File;
    :cond_0
    :goto_0
    :try_start_2
    sget-boolean v2, Lc8/Kef;->sNeedHook:Z

    if-eqz v2, :cond_1

    .line 46
    invoke-static {}, Lc8/Jef;->doHookMethod()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :cond_1
    :goto_1
    :try_start_3
    invoke-static {p0, p1}, Lc8/osf;->init(Landroid/app/Application;Landroid/content/Context;)V

    .line 56
    new-instance v1, Lc8/Mef;

    invoke-direct {v1}, Lc8/Mef;-><init>()V

    .line 57
    .local v1, "statistics":Lc8/Mef;
    invoke-static {v1}, Lc8/msf;->registerOnlineStatistics(Lc8/psf;)Z

    .line 58
    invoke-static {}, Lc8/msf;->start()V

    .line 72
    const/4 v2, 0x1

    sput-boolean v2, Lc8/Lef;->isInit:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .end local v1    # "statistics":Lc8/Mef;
    :cond_2
    monitor-exit v3

    return-void

    .line 31
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static setBootPath([Ljava/lang/String;J)V
    .locals 1
    .param p0, "aryPath"    # [Ljava/lang/String;
    .param p1, "startTime"    # J

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lc8/osf;->setBootInfo([Ljava/lang/String;J)V

    .line 27
    return-void
.end method
