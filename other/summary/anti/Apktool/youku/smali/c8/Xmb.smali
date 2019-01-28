.class public Lc8/Xmb;
.super Ljava/lang/Object;
.source "ALPLinkPartnerSDK.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkInit()Z
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lc8/Ymb;->isInit()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized init(Landroid/app/Application;)I
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 79
    const-class v0, Lc8/Xmb;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lc8/Xmb;->init(Landroid/app/Application;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/app/Application;Ljava/lang/String;)I
    .locals 4
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0xc9

    .line 40
    const-class v1, Lc8/Xmb;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 41
    :try_start_0
    const-string/jumbo v0, "ALPLinkPartnerSDK"

    const-string/jumbo v2, "init"

    const-string/jumbo v3, "application/openParam is null"

    invoke-static {v0, v2, v3}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const/16 v0, 0x12d

    .line 70
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 45
    :cond_1
    :try_start_1
    invoke-static {}, Lc8/Ymb;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-static {p0}, Lc8/Ymb;->setApplication(Landroid/app/Application;)V

    .line 50
    new-instance v2, Lc8/job;

    invoke-direct {v2, p0, p1}, Lc8/job;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v2}, Lc8/Ymb;->setOpenParam(Lc8/job;)V

    .line 52
    invoke-static {}, Lc8/Xmb;->initManager()V

    .line 55
    const/4 v2, 0x1

    invoke-static {v2}, Lc8/Ymb;->setInit(Z)V

    .line 58
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v2

    iget-object v2, v2, Lc8/job;->appkey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v2

    iget-object v2, v2, Lc8/job;->appkey:Ljava/lang/String;

    const-string/jumbo v3, "0000000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    :cond_3
    invoke-static {p0}, Lc8/Xmb;->sendNoAppkeyPoint(Landroid/app/Application;)V

    .line 65
    :cond_4
    invoke-static {}, Lc8/Xmb;->sendCheckInstallPoint()V

    .line 68
    invoke-static {p0}, Lc8/Xmb;->sendInitPoint(Landroid/app/Application;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initManager()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lc8/Anb;

    invoke-direct {v0}, Lc8/Anb;-><init>()V

    sput-object v0, Lc8/Ymb;->configManager:Lc8/Anb;

    .line 167
    return-void
.end method

.method public static isSupportLinkKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "linkKey"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {}, Lc8/Ymb;->isInit()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 130
    const-string/jumbo v0, "taobao_scheme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string/jumbo p0, "taobao"

    .line 136
    :cond_0
    :goto_0
    invoke-static {}, Lc8/Ymb;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/wob;->isSupportAppLinkSDK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const/4 v0, 0x1

    .line 141
    :goto_1
    return v0

    .line 132
    :cond_1
    const-string/jumbo v0, "tmall_scheme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string/jumbo p0, "tmall"

    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static jumpApp(Landroid/content/Context;Lc8/iob;Lc8/hob;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jumpParam"    # Lc8/iob;
    .param p2, "jumpFailParam"    # Lc8/hob;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lc8/vnb;->invoke(Landroid/content/Context;Lc8/iob;Lc8/hob;Lc8/gnb;)I

    move-result v0

    return v0
.end method

.method public static jumpApp(Landroid/content/Context;Lc8/iob;Lc8/hob;Lc8/gnb;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jumpParam"    # Lc8/iob;
    .param p2, "jumpFailParam"    # Lc8/hob;
    .param p3, "jumpCallback"    # Lc8/gnb;

    .prologue
    .line 117
    invoke-static {p0, p1, p2, p3}, Lc8/vnb;->invoke(Landroid/content/Context;Lc8/iob;Lc8/hob;Lc8/gnb;)I

    move-result v0

    return v0
.end method

.method private static sendCheckInstallPoint()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 174
    const-string/jumbo v6, "checkInstallAppExpiredTime"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lc8/Gnb;->getVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "strTime":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-wide v2, v4

    .line 182
    .local v2, "time":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v4, v6, v4

    if-gez v4, :cond_1

    .line 199
    :goto_1
    return-void

    .line 179
    .end local v2    # "time":J
    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 190
    .restart local v2    # "time":J
    :cond_1
    const-string/jumbo v4, "checkInstallAppExpiredTime"

    invoke-static {}, Lc8/xob;->getDayTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/Gnb;->saveVal(Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    new-instance v0, Lc8/Nnb;

    invoke-direct {v0}, Lc8/Nnb;-><init>()V

    .line 194
    .local v0, "checkInstallAppPoint":Lc8/Nnb;
    const-string/jumbo v4, "taobao"

    invoke-static {v4}, Lc8/Xmb;->isSupportLinkKey(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lc8/Nnb;->tbInstall:Z

    .line 195
    const-string/jumbo v4, "tmall"

    invoke-static {v4}, Lc8/Xmb;->isSupportLinkKey(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lc8/Nnb;->tmallInstall:Z

    .line 196
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v4

    iget-object v4, v4, Lc8/job;->utdid:Ljava/lang/String;

    iput-object v4, v0, Lc8/Nnb;->utdid:Ljava/lang/String;

    .line 197
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    goto :goto_1
.end method

.method private static sendInitPoint(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 213
    new-instance v0, Lc8/Snb;

    invoke-direct {v0, p0}, Lc8/Snb;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, "point":Lc8/Snb;
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 215
    return-void
.end method

.method private static sendNoAppkeyPoint(Landroid/app/Application;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 207
    new-instance v0, Lc8/Tnb;

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Tnb;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "noAppkeyPoint":Lc8/Tnb;
    invoke-static {v0}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 210
    return-void
.end method

.method public static setAppkey(Ljava/lang/String;)I
    .locals 1
    .param p0, "appkey"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {}, Lc8/Ymb;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/16 v0, 0x12c

    .line 99
    :goto_0
    return v0

    .line 94
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iput-object p0, v0, Lc8/job;->appkey:Ljava/lang/String;

    .line 96
    const/16 v0, 0xca

    goto :goto_0

    .line 99
    :cond_1
    const/16 v0, 0x139

    goto :goto_0
.end method

.method public static setOpenType(I)V
    .locals 0
    .param p0, "openType"    # I

    .prologue
    .line 145
    invoke-static {p0}, Lc8/Ymb;->setOpenType(I)V

    .line 146
    return-void
.end method

.method public static setSupportDeepLink(Z)V
    .locals 0
    .param p0, "isSupport"    # Z

    .prologue
    .line 153
    invoke-static {p0}, Lc8/Ymb;->setShouldDeepLink(Z)V

    .line 154
    return-void
.end method
