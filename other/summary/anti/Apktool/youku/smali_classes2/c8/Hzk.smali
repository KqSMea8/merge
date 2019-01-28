.class public Lc8/Hzk;
.super Ljava/lang/Object;
.source "OsUtils.java"


# static fields
.field private static hwResult:Ljava/lang/Boolean;

.field private static meizuResult:Ljava/lang/Boolean;

.field private static miResult:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkHuaweiDevice()Z
    .locals 5

    .prologue
    .line 20
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 21
    .local v1, "phoneBrand":Ljava/lang/String;
    sget-object v2, Lc8/Hzk;->hwResult:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 23
    :try_start_0
    const-string/jumbo v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "honor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v2, Lc8/Hzk;->hwResult:Ljava/lang/Boolean;

    .line 25
    const-string/jumbo v2, "YKAccs.DevicesChecker"

    const-string/jumbo v3, "checkHuaweiDevice TRUE"

    invoke-static {v2, v3}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v2, Lc8/Hzk;->hwResult:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 31
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lc8/Hzk;->hwResult:Ljava/lang/Boolean;

    .line 32
    const-string/jumbo v2, "YKAccs.DevicesChecker"

    const-string/jumbo v3, "checkHuaweiDevice FALSE"

    invoke-static {v2, v3}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_2
    :goto_0
    sget-object v2, Lc8/Hzk;->hwResult:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v2, "YKAccs.DevicesChecker"

    const-string/jumbo v3, "checkDevice error: "

    invoke-static {v2, v3, v0}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    sget-object v2, Lc8/Hzk;->hwResult:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 31
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lc8/Hzk;->hwResult:Ljava/lang/Boolean;

    .line 32
    const-string/jumbo v2, "YKAccs.DevicesChecker"

    const-string/jumbo v3, "checkHuaweiDevice FALSE"

    invoke-static {v2, v3}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    sget-object v3, Lc8/Hzk;->hwResult:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    .line 31
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v3, Lc8/Hzk;->hwResult:Ljava/lang/Boolean;

    .line 32
    const-string/jumbo v3, "YKAccs.DevicesChecker"

    const-string/jumbo v4, "checkHuaweiDevice FALSE"

    invoke-static {v3, v4}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    throw v2
.end method

.method public static checkMeizuDevice()Z
    .locals 5

    .prologue
    .line 61
    sget-object v2, Lc8/Hzk;->meizuResult:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 63
    :try_start_0
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 64
    .local v1, "phoneBrand":Ljava/lang/String;
    const-string/jumbo v2, "meizu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v2, Lc8/Hzk;->meizuResult:Ljava/lang/Boolean;

    .line 66
    const-string/jumbo v2, "YKAccs.DevicesChecker"

    const-string/jumbo v3, "checkMeizuDevice TRUE"

    invoke-static {v2, v3}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    sget-object v2, Lc8/Hzk;->meizuResult:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 72
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lc8/Hzk;->meizuResult:Ljava/lang/Boolean;

    .line 73
    const-string/jumbo v2, "YKAccs.DevicesChecker"

    const-string/jumbo v3, "checkMeizuDevice FALSE"

    invoke-static {v2, v3}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    :goto_0
    sget-object v2, Lc8/Hzk;->meizuResult:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v2, "YKAccs.DevicesChecker"

    const-string/jumbo v3, "checkDevice error: "

    invoke-static {v2, v3, v0}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    sget-object v2, Lc8/Hzk;->meizuResult:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 72
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lc8/Hzk;->meizuResult:Ljava/lang/Boolean;

    .line 73
    const-string/jumbo v2, "YKAccs.DevicesChecker"

    const-string/jumbo v3, "checkMeizuDevice FALSE"

    invoke-static {v2, v3}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    sget-object v3, Lc8/Hzk;->meizuResult:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    .line 72
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v3, Lc8/Hzk;->meizuResult:Ljava/lang/Boolean;

    .line 73
    const-string/jumbo v3, "YKAccs.DevicesChecker"

    const-string/jumbo v4, "checkMeizuDevice FALSE"

    invoke-static {v3, v4}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v2
.end method

.method public static checkXiaomiDevice(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v3, Lc8/Hzk;->miResult:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 43
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "com.xiaomi.xmsf"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 44
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v4, 0x69

    if-lt v3, v4, :cond_0

    .line 45
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v3, Lc8/Hzk;->miResult:Ljava/lang/Boolean;

    .line 46
    const-string/jumbo v3, "YKAccs.DevicesChecker"

    const-string/jumbo v4, "checkXiaomiDevice TRUE"

    invoke-static {v3, v4}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    sget-object v3, Lc8/Hzk;->miResult:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 52
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v3, Lc8/Hzk;->miResult:Ljava/lang/Boolean;

    .line 53
    const-string/jumbo v3, "YKAccs.DevicesChecker"

    const-string/jumbo v4, "checkXiaomiDevice FALSE"

    invoke-static {v3, v4}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    sget-object v3, Lc8/Hzk;->miResult:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v3, "YKAccs.DevicesChecker"

    const-string/jumbo v4, "checkDevice error: "

    invoke-static {v3, v4, v0}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    sget-object v3, Lc8/Hzk;->miResult:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 52
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v3, Lc8/Hzk;->miResult:Ljava/lang/Boolean;

    .line 53
    const-string/jumbo v3, "YKAccs.DevicesChecker"

    const-string/jumbo v4, "checkXiaomiDevice FALSE"

    invoke-static {v3, v4}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    sget-object v4, Lc8/Hzk;->miResult:Ljava/lang/Boolean;

    if-nez v4, :cond_2

    .line 52
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v4, Lc8/Hzk;->miResult:Ljava/lang/Boolean;

    .line 53
    const-string/jumbo v4, "YKAccs.DevicesChecker"

    const-string/jumbo v5, "checkXiaomiDevice FALSE"

    invoke-static {v4, v5}, Lc8/eOf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v3
.end method
