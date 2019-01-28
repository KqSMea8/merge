.class public Lc8/Gzk;
.super Ljava/lang/Object;
.source "CrashHandlerInitPreLauncher.java"

# interfaces
.implements Lc8/Ry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMTLMetaData(Ljava/util/Map;Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_3

    .line 145
    :try_start_0
    const-string/jumbo v4, "pt"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    const-string/jumbo v4, "package_type"

    invoke-static {p1, v4}, Lc8/Gzk;->getMTLString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "pt":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    const-string/jumbo v4, "pt"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v3    # "pt":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "pid"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    const-string/jumbo v4, "project_id"

    invoke-static {p1, v4}, Lc8/Gzk;->getMTLString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "pid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    const-string/jumbo v4, "pid"

    invoke-interface {p0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v2    # "pid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "bid"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 158
    const-string/jumbo v4, "build_id"

    invoke-static {p1, v4}, Lc8/Gzk;->getMTLString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 160
    const-string/jumbo v4, "bid"

    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v0    # "bid":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "bv"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 164
    const-string/jumbo v4, "base_version"

    invoke-static {p1, v4}, Lc8/Gzk;->getMTLString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "bv":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 166
    const-string/jumbo v4, "bv"

    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "bv":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getMTLString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 174
    if-nez p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v1

    .line 177
    :cond_1
    const/4 v0, 0x0

    .line 179
    .local v0, "id":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 182
    :goto_1
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private initCrashHandler(Landroid/content/Context;)V
    .locals 10
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v4, 0x0

    .line 42
    .local v4, "appVersion":Ljava/lang/String;
    const/4 v5, 0x0

    .line 43
    .local v5, "ttid":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "23570660"

    .line 44
    .local v3, "appKey":Ljava/lang/String;
    const-string/jumbo v2, "23570660@android"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .local v2, "appId":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :goto_0
    :try_start_2
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    invoke-virtual {v0, v4}, Lc8/XSb;->setAppVersion(Ljava/lang/String;)V

    .line 53
    new-instance v7, Lc8/jTb;

    invoke-direct {v7}, Lc8/jTb;-><init>()V

    .line 54
    .local v7, "reporterConfigure":Lc8/jTb;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/jTb;->setEnableDumpSysLog(Z)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/jTb;->setEnableDumpRadioLog(Z)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/jTb;->setEnableDumpEventsLog(Z)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/jTb;->setEnableCatchANRException(Z)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/jTb;->setEnableANRMainThreadOnly(Z)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/jTb;->setEnableDumpAllThread(Z)V

    .line 61
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lc8/XSb;->enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/jTb;)Z

    .line 68
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "_jjb=0"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 73
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/XSb;->setExtraInfo(Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    new-instance v1, Lc8/Dzk;

    invoke-direct {v1, p0}, Lc8/Dzk;-><init>(Lc8/Gzk;)V

    invoke-virtual {v0, v1}, Lc8/XSb;->setCrashCaughtListener(Lc8/SSb;)V

    .line 100
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    new-instance v1, Lc8/Ezk;

    invoke-direct {v1, p0, p1}, Lc8/Ezk;-><init>(Lc8/Gzk;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lc8/XSb;->setCrashCaughtListener(Lc8/SSb;)V

    .line 112
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    new-instance v1, Lc8/Fzk;

    invoke-direct {v1, p0, p1}, Lc8/Fzk;-><init>(Lc8/Gzk;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lc8/XSb;->setCrashCaughtListener(Lc8/SSb;)V

    .line 135
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "appKey":Ljava/lang/String;
    .end local v7    # "reporterConfigure":Lc8/jTb;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 48
    .restart local v2    # "appId":Ljava/lang/String;
    .restart local v3    # "appKey":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 49
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 132
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "appKey":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 133
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v0, "crashreporter init"

    const-string/jumbo v1, "err"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public initBeforeAtlas(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lc8/Gzk;->initCrashHandler(Landroid/content/Context;)V

    .line 34
    return-void
.end method
