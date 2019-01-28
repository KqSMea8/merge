.class public Lc8/xTb;
.super Ljava/lang/Object;
.source "YouKuCrashReporter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initYouKuCrashReporter(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    :try_start_0
    new-instance v7, Lc8/jTb;

    invoke-direct {v7}, Lc8/jTb;-><init>()V

    .line 18
    .local v7, "reporterConfigure":Lc8/jTb;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/jTb;->setEnableDumpSysLog(Z)V

    .line 19
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/jTb;->setEnableDumpRadioLog(Z)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/jTb;->setEnableDumpEventsLog(Z)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/jTb;->setEnableCatchANRException(Z)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/jTb;->setEnableANRMainThreadOnly(Z)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lc8/jTb;->setEnableDumpAllThread(Z)V

    .line 25
    invoke-static {p0}, Lc8/vTb;->getContextAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "baseAppVersion":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 27
    const-string/jumbo v4, "defaultVersion"

    .line 30
    :cond_0
    const-string/jumbo v3, "23570660"

    .line 31
    .local v3, "appKey":Ljava/lang/String;
    const-string/jumbo v2, "23570660@android"

    .line 32
    .local v2, "appId":Ljava/lang/String;
    const-string/jumbo v5, "channel"

    .line 34
    .local v5, "channel":Ljava/lang/String;
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lc8/XSb;->enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/jTb;)Z

    move-result v9

    .line 35
    .local v9, "enable":Z
    if-eqz v9, :cond_1

    .line 36
    const-string/jumbo v0, "crashreporter enable success"

    invoke-static {v0}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 42
    :goto_0
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    new-instance v1, Lc8/wTb;

    invoke-direct {v1, p0}, Lc8/wTb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lc8/XSb;->setCrashCaughtListener(Lc8/SSb;)V

    .line 56
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "appKey":Ljava/lang/String;
    .end local v4    # "baseAppVersion":Ljava/lang/String;
    .end local v5    # "channel":Ljava/lang/String;
    .end local v7    # "reporterConfigure":Lc8/jTb;
    .end local v9    # "enable":Z
    :goto_1
    return-void

    .line 38
    .restart local v2    # "appId":Ljava/lang/String;
    .restart local v3    # "appKey":Ljava/lang/String;
    .restart local v4    # "baseAppVersion":Ljava/lang/String;
    .restart local v5    # "channel":Ljava/lang/String;
    .restart local v7    # "reporterConfigure":Lc8/jTb;
    .restart local v9    # "enable":Z
    :cond_1
    const-string/jumbo v0, "crashreporter enable failure"

    invoke-static {v0}, Lc8/USb;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "appKey":Ljava/lang/String;
    .end local v4    # "baseAppVersion":Ljava/lang/String;
    .end local v5    # "channel":Ljava/lang/String;
    .end local v7    # "reporterConfigure":Lc8/jTb;
    .end local v9    # "enable":Z
    :catch_0
    move-exception v8

    .line 54
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "enable"

    invoke-static {v0, v8}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
