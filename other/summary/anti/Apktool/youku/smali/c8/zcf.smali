.class public Lc8/zcf;
.super Ljava/lang/Object;
.source "RuntimeUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RuntimeUtils"

.field private static sTaobao:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static init(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-static {}, Lc8/zcf;->isYunOS()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    :goto_0
    return v2

    .line 34
    :cond_0
    :try_start_0
    const-string/jumbo v3, "com.alibaba.mtl.appmonitor.AppMonitor"

    invoke-static {v3}, Lc8/zcf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v3

    new-instance v4, Lc8/ycf;

    invoke-direct {v4}, Lc8/ycf;-><init>()V

    invoke-virtual {v3, v4}, Lc8/icf;->setMonitor(Lc8/ucf;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_1
    const-string/jumbo v3, "com.taobao.taobao"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 64
    sput-boolean v3, Lc8/zcf;->sTaobao:Z

    if-eqz v3, :cond_3

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move v0, v1

    .line 66
    .local v0, "isAppDebuggable":Z
    :goto_2
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v3

    if-nez v0, :cond_2

    :goto_3
    invoke-virtual {v3, p0, v1}, Lc8/icf;->init(Landroid/content/Context;Z)V

    .line 68
    sput-boolean v2, Lcom/taobao/android/runtime/Dex2OatService;->sBootCompleted:Z

    goto :goto_0

    .end local v0    # "isAppDebuggable":Z
    :cond_1
    move v0, v2

    .line 65
    goto :goto_2

    .restart local v0    # "isAppDebuggable":Z
    :cond_2
    move v1, v2

    .line 66
    goto :goto_3

    .line 70
    .end local v0    # "isAppDebuggable":Z
    :cond_3
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/icf;->init(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static isEnable()Z
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/icf;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static isOdexValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "outputPathName"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/icf;->isOdexValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isYunOS()Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "version":Ljava/lang/String;
    const/4 v3, 0x0

    .line 114
    .local v3, "vmName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "android.os.SystemProperties"

    invoke-static {v4}, Lc8/zcf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 115
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "ro.yunos.version"

    aput-object v9, v7, v8

    invoke-static {v1, v4, v7}, Lc8/zcf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 116
    const/4 v4, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "java.vm.name"

    aput-object v9, v7, v8

    invoke-static {v1, v4, v7}, Lc8/zcf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "lemur"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    :cond_1
    move v4, v5

    .line 124
    :goto_1
    return v4

    :cond_2
    move v4, v6

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourcePathName"    # Ljava/lang/String;
    .param p2, "outputPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lc8/icf;->loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method public static loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourcePathName"    # Ljava/lang/String;
    .param p2, "outputPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "interpretOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/icf;->loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method public static presetOptions()Z
    .locals 2

    .prologue
    .line 76
    sget-boolean v0, Lc8/zcf;->sTaobao:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/icf;->setVerificationEnabled(Z)V

    .line 80
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static setEnable(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 98
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/icf;->setEnabled(Z)V

    .line 99
    return-void
.end method

.method public static setExcludeVersions(Ljava/lang/String;)V
    .locals 1
    .param p0, "excludeVersions"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/icf;->setExcludeVersions(Ljava/lang/String;)V

    .line 103
    return-void
.end method
