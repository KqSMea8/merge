.class public Lc8/XSb;
.super Ljava/lang/Object;
.source "MotuCrashReporter.java"


# static fields
.field static final INSTANCE:Lc8/XSb;

.field static dataListenerList:Ljava/util/List;

.field static listenerList:Ljava/util/List;

.field static senderListenerList:Ljava/util/List;


# instance fields
.field enabling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mCrashReporter:Lc8/PSb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lc8/XSb;

    invoke-direct {v0}, Lc8/XSb;-><init>()V

    sput-object v0, Lc8/XSb;->INSTANCE:Lc8/XSb;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/XSb;->listenerList:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/XSb;->dataListenerList:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/XSb;->senderListenerList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lc8/PSb;->getInstance()Lc8/PSb;

    move-result-object v0

    iput-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/XSb;->enabling:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getInstance()Lc8/XSb;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lc8/XSb;->INSTANCE:Lc8/XSb;

    return-object v0
.end method


# virtual methods
.method public addCrashReportSendListener(Lc8/RSb;)V
    .locals 1
    .param p1, "sendListener"    # Lc8/RSb;

    .prologue
    .line 67
    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    invoke-virtual {v0, p1}, Lc8/PSb;->addSendLinster(Lc8/RSb;)V

    .line 68
    return-void
.end method

.method public addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    invoke-virtual {v0, p1, p2}, Lc8/PSb;->addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/jTb;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;
    .param p4, "channel"    # Ljava/lang/String;
    .param p5, "userNick"    # Ljava/lang/String;
    .param p6, "configure"    # Lc8/jTb;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    const-string/jumbo v2, ""

    .line 84
    .local v2, "appId":Ljava/lang/String;
    invoke-static {p2}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "12278902"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "21646297"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    const-string/jumbo p2, "21646297"

    .line 88
    const-string/jumbo v2, "12278902@android"

    .line 90
    :cond_1
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lc8/XSb;->enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/jTb;)Z

    move-result v0

    return v0
.end method

.method public enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/jTb;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;
    .param p5, "channel"    # Ljava/lang/String;
    .param p6, "userNick"    # Ljava/lang/String;
    .param p7, "configure"    # Lc8/jTb;

    .prologue
    .line 95
    iget-object v0, p0, Lc8/XSb;->enabling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :try_start_0
    new-instance v6, Lc8/LSb;

    invoke-direct {v6}, Lc8/LSb;-><init>()V

    .line 98
    .local v6, "configuration":Lc8/LSb;
    if-eqz p7, :cond_0

    .line 99
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableUncaughtExceptionIgnore"

    iget-boolean v2, p7, Lc8/jTb;->enableUncaughtExceptionIgnore:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 101
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableExternalLinster"

    iget-boolean v2, p7, Lc8/jTb;->enableExternalLinster:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 102
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableFinalizeFake"

    iget-boolean v2, p7, Lc8/jTb;->enableFinalizeFake:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 103
    new-instance v0, Lc8/YSb;

    const-string/jumbo v1, "Configuration.enableUIProcessSafeGuard"

    iget-boolean v2, p7, Lc8/jTb;->enableUIProcessSafeGuard:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/YSb;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lc8/LSb;->add(Lc8/YSb;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lc8/PSb;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/LSb;)V

    .line 107
    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    invoke-virtual {v0}, Lc8/PSb;->enable()V

    .line 110
    invoke-virtual {p0, p6}, Lc8/XSb;->setUserNick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/4 v0, 0x1

    .line 116
    .end local v6    # "configuration":Lc8/LSb;
    :goto_0
    return v0

    .line 112
    :catch_0
    move-exception v7

    .line 113
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "enable"

    invoke-static {v0, v7}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCrashReporterState()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public getMyDataListenerList()Ljava/util/List;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lc8/XSb;->dataListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getMyListenerList()Ljava/util/List;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    invoke-virtual {v0}, Lc8/PSb;->getAllUncaughtExceptionLinster()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMySenderListenerList()Ljava/util/List;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lc8/XSb;->senderListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getStrExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public isTaobaoApplication(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    iget-object v0, v0, Lc8/PSb;->mProcessName:Ljava/lang/String;

    invoke-static {v0}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    iget-object v0, v0, Lc8/PSb;->mProcessName:Ljava/lang/String;

    const-string/jumbo v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeCrashReportSendListener(Lc8/RSb;)V
    .locals 1
    .param p1, "sendListener"    # Lc8/RSb;

    .prologue
    .line 71
    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    invoke-virtual {v0, p1}, Lc8/PSb;->removeSendLinster(Lc8/RSb;)V

    .line 72
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    invoke-virtual {v0, p1}, Lc8/PSb;->refreshAppVersion(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public setCrashCaughtListener(Lc8/SSb;)V
    .locals 2
    .param p1, "listener"    # Lc8/SSb;

    .prologue
    .line 46
    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    new-instance v1, Lc8/WSb;

    invoke-direct {v1, p0, p1}, Lc8/WSb;-><init>(Lc8/XSb;Lc8/SSb;)V

    invoke-virtual {v0, v1}, Lc8/PSb;->addUncaughtExceptionLinster(Lc8/JSb;)V

    .line 61
    return-void
.end method

.method public setCrashCaughtListener(Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;)V
    .locals 2
    .param p1, "handlerWapper"    # Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    new-instance v1, Lc8/VSb;

    invoke-direct {v1, p0, p1}, Lc8/VSb;-><init>(Lc8/XSb;Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;)V

    invoke-virtual {v0, v1}, Lc8/PSb;->addUncaughtExceptionLinster(Lc8/JSb;)V

    .line 43
    return-void
.end method

.method public setCrashReportDataListener(Lc8/QSb;)V
    .locals 0
    .param p1, "crashReportDataListener"    # Lc8/QSb;

    .prologue
    .line 64
    return-void
.end method

.method public setCrashReporterState(I)V
    .locals 0
    .param p1, "iType"    # I

    .prologue
    .line 163
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 128
    return-void
.end method

.method public setTTid(Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p1}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    new-instance v1, Lc8/aTb;

    const-string/jumbo v2, "CHANNEL"

    invoke-direct {v1, v2, p1}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/PSb;->setProperty(Lc8/aTb;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 3
    .param p1, "userNick"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p1}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lc8/XSb;->mCrashReporter:Lc8/PSb;

    new-instance v1, Lc8/aTb;

    const-string/jumbo v2, "USERNICK"

    invoke-direct {v1, v2, p1}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/PSb;->setProperty(Lc8/aTb;)V

    .line 134
    :cond_0
    return-void
.end method
