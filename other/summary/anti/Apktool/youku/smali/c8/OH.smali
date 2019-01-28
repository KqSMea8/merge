.class public Lc8/OH;
.super Ljava/lang/Object;
.source "EnvUtil.java"


# static fields
.field private static DEBUG:Z

.field private static inited:Z

.field private static openSpdyforDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Lc8/OH;->DEBUG:Z

    .line 65
    sput-boolean v0, Lc8/OH;->inited:Z

    .line 67
    sput-boolean v0, Lc8/OH;->openSpdyforDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized init()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 35
    const-class v3, Lc8/OH;

    monitor-enter v3

    :try_start_0
    sget-boolean v4, Lc8/OH;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 37
    :try_start_1
    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    .line 38
    .local v1, "application":Landroid/app/Application;
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 40
    .local v0, "app_info":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    :goto_0
    sput-boolean v2, Lc8/OH;->DEBUG:Z

    .line 41
    const/4 v2, 0x1

    sput-boolean v2, Lc8/OH;->inited:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .end local v0    # "app_info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    monitor-exit v3

    return-void

    .line 40
    .restart local v0    # "app_info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 35
    .end local v0    # "app_info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static isAppDebug()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lc8/OH;->inited:Z

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lc8/OH;->init()V

    .line 31
    :cond_0
    sget-boolean v0, Lc8/OH;->DEBUG:Z

    return v0
.end method

.method public static isCN()Z
    .locals 2

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 61
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/OH;->isAppDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpenSpdyforDebug()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lc8/OH;->openSpdyforDebug:Z

    return v0
.end method

.method public static setOpenSpdyforDebug(Z)V
    .locals 0
    .param p0, "openSpdyforDebug"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lc8/OH;->openSpdyforDebug:Z

    .line 54
    return-void
.end method
