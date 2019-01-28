.class public Lc8/QZe;
.super Ljava/lang/Object;
.source "ARTUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ARTUtils"

.field private static sInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lc8/QZe;->sInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsVerificationEnabled()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    sget-boolean v0, Lc8/QZe;->sInit:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lc8/QZe;->IsVerificationEnabledNative()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static native IsVerificationEnabledNative()Z
.end method

.method private static _1loadLibrary(Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/ali/mobisecenhance/Library;->isKeepSoloadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/Library;->before_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p0, v2

    :cond_1
    const/4 v3, 0x0

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_2
    :goto_0
    invoke-static {v0, v3}, Lcom/ali/mobisecenhance/Library;->after_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static abort()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    sget-boolean v0, Lc8/QZe;->sInit:Z

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lc8/QZe;->abortNative()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static native abortNative()Z
.end method

.method public static init(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/QZe;->init(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hookedJavaVM"    # Z

    .prologue
    .line 24
    :try_start_0
    const-string/jumbo v1, "dexinterpret"

    invoke-static {v1}, Lc8/QZe;->_1loadLibrary(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1, v1}, Lc8/QZe;->nativeInit(ZI)Z

    .line 26
    const/4 v1, 0x1

    sput-boolean v1, Lc8/QZe;->sInit:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 38
    :goto_0
    sget-boolean v1, Lc8/QZe;->sInit:Z

    return v1

    .line 27
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "ARTUtils"

    const-string/jumbo v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 32
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string/jumbo v1, "ARTUtils"

    const-string/jumbo v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 34
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "ARTUtils"

    const-string/jumbo v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isDex2oatEnabled()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    sget-boolean v0, Lc8/QZe;->sInit:Z

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lc8/QZe;->isDex2oatEnabledNative()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static native isDex2oatEnabledNative()Z
.end method

.method public static isInit()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lc8/QZe;->sInit:Z

    return v0
.end method

.method private static native nativeInit(ZI)Z
.end method

.method public static setIsDex2oatEnabled(Z)Ljava/lang/Boolean;
    .locals 1
    .param p0, "enabled"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    sget-boolean v0, Lc8/QZe;->sInit:Z

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lc8/QZe;->setIsDex2oatEnabledNative(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static native setIsDex2oatEnabledNative(Z)Z
.end method

.method public static setSignalCatcherHaltFlag(Z)Ljava/lang/Boolean;
    .locals 1
    .param p0, "enabled"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    sget-boolean v0, Lc8/QZe;->sInit:Z

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lc8/QZe;->setSignalCatcherHaltFlagNative(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static native setSignalCatcherHaltFlagNative(Z)Z
.end method

.method public static setVerificationEnabled(Z)Ljava/lang/Boolean;
    .locals 2
    .param p0, "enabled"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    sget-boolean v1, Lc8/QZe;->sInit:Z

    if-nez v1, :cond_0

    .line 64
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    .line 66
    :cond_0
    invoke-static {p0}, Lc8/QZe;->setVerificationEnabledNative(Z)Z

    move-result v0

    .line 67
    .local v0, "success":Z
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 68
    const/4 v1, 0x0

    invoke-static {v1}, Lc8/QZe;->setSignalCatcherHaltFlag(Z)Ljava/lang/Boolean;

    .line 72
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 69
    :cond_2
    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    .line 70
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/QZe;->setSignalCatcherHaltFlag(Z)Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private static native setVerificationEnabledNative(Z)Z
.end method
