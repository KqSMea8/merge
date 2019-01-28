.class public final Lc8/PSb;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/OSb;
    }
.end annotation


# static fields
.field static final INSTANCE:Lc8/PSb;

.field public static final _BUILD:Ljava/lang/String; = ""

.field public static final _JAVA_VERSION:Ljava/lang/String; = ""

.field public static final _MAGIC:Ljava/lang/String; = "CrashSDK"

.field public static final _NATIVE_VERSION:Ljava/lang/String; = "160509105620"

.field public static final _TARGET:Ljava/lang/String; = "beta"

.field public static final _VERSION:Ljava/lang/String; = "1.0.0.0"


# instance fields
.field changing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile enabled:Z

.field volatile initSuccess:Z

.field initing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mCatcherManager:Lc8/KSb;

.field mConfiguration:Lc8/LSb;

.field mContext:Landroid/content/Context;

.field mLabFeatureManager:Lc8/TSb;

.field mProcessName:Ljava/lang/String;

.field mReportBuilder:Lc8/iTb;

.field mReporterContext:Lc8/kTb;

.field mRunningStateMonitor:Lc8/mTb;

.field mSendManager:Lc8/qTb;

.field mStorageManager:Lc8/rTb;

.field scaning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field sending:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lc8/PSb;

    invoke-direct {v0}, Lc8/PSb;-><init>()V

    sput-object v0, Lc8/PSb;->INSTANCE:Lc8/PSb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/PSb;->initing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    iput-boolean v1, p0, Lc8/PSb;->initSuccess:Z

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/PSb;->changing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    iput-boolean v1, p0, Lc8/PSb;->enabled:Z

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/PSb;->scaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/PSb;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    return-void
.end method

.method public static getInstance()Lc8/PSb;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lc8/PSb;->INSTANCE:Lc8/PSb;

    return-object v0
.end method


# virtual methods
.method public addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-boolean v0, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lc8/PSb;->mCatcherManager:Lc8/KSb;

    invoke-virtual {v0, p1, p2}, Lc8/KSb;->addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    return-void
.end method

.method public addSendLinster(Lc8/RSb;)V
    .locals 1
    .param p1, "sendListener"    # Lc8/RSb;

    .prologue
    .line 331
    iget-boolean v0, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lc8/PSb;->mSendManager:Lc8/qTb;

    invoke-virtual {v0, p1}, Lc8/qTb;->addListener(Lc8/RSb;)V

    .line 334
    :cond_0
    return-void
.end method

.method public addUncaughtExceptionLinster(Lc8/JSb;)V
    .locals 1
    .param p1, "linster"    # Lc8/JSb;

    .prologue
    .line 318
    iget-boolean v0, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lc8/PSb;->mCatcherManager:Lc8/KSb;

    invoke-virtual {v0, p1}, Lc8/KSb;->addUncaughtExceptionLinster(Lc8/JSb;)V

    .line 321
    :cond_0
    return-void
.end method

.method public disable()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 210
    iget-boolean v4, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lc8/PSb;->enabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/PSb;->changing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v8, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 213
    .local v2, "start":J
    iget-object v4, p0, Lc8/PSb;->mCatcherManager:Lc8/KSb;

    invoke-virtual {v4}, Lc8/KSb;->disable()V

    .line 214
    iget-object v4, p0, Lc8/PSb;->mLabFeatureManager:Lc8/TSb;

    invoke-virtual {v4}, Lc8/TSb;->disable()V

    .line 215
    const/4 v4, 0x0

    iput-boolean v4, p0, Lc8/PSb;->enabled:Z

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 217
    .local v0, "end":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CrashSDK disable complete elapsed time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v0, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/USb;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iget-object v4, p0, Lc8/PSb;->changing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 222
    .end local v0    # "end":J
    .end local v2    # "start":J
    :cond_0
    return-void

    .line 219
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/PSb;->changing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v4
.end method

.method public enable()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 190
    iget-boolean v4, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lc8/PSb;->enabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lc8/PSb;->changing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v8, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 193
    .local v2, "start":J
    iget-object v4, p0, Lc8/PSb;->mCatcherManager:Lc8/KSb;

    invoke-virtual {v4}, Lc8/KSb;->enable()V

    .line 194
    iget-object v4, p0, Lc8/PSb;->mLabFeatureManager:Lc8/TSb;

    invoke-virtual {v4}, Lc8/TSb;->enable()V

    .line 195
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/PSb;->enabled:Z

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 197
    .local v0, "end":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CrashSDK enable complete elapsed time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v0, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/USb;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    iget-object v4, p0, Lc8/PSb;->changing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    .end local v0    # "end":J
    .end local v2    # "start":J
    :cond_0
    return-void

    .line 199
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/PSb;->changing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v4
.end method

.method public getAllUncaughtExceptionLinster()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/JSb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-boolean v0, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lc8/PSb;->mCatcherManager:Lc8/KSb;

    invoke-virtual {v0}, Lc8/KSb;->getAllUncaughtExceptionLinster()Ljava/util/List;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-boolean v0, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    invoke-virtual {v0, p1}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPropertyAndSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-boolean v0, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    invoke-virtual {v0, p1}, Lc8/kTb;->getPropertyAndSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/LSb;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;
    .param p5, "channel"    # Ljava/lang/String;
    .param p6, "configuration"    # Lc8/LSb;

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/PSb;->initing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 64
    .local v8, "startupTime":J
    if-nez p1, :cond_1

    .line 65
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "context"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v8    # "startupTime":J
    :catch_0
    move-exception v18

    .line 138
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "initialize"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v18    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 144
    .local v20, "start":J
    invoke-virtual/range {p0 .. p0}, Lc8/PSb;->scanAll()V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lc8/PSb;->sendAll()V

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK doBefore complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v20    # "start":J
    .restart local v8    # "startupTime":J
    :cond_1
    :try_start_1
    invoke-static/range {p2 .. p2}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "appId can\'t empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_2
    invoke-static/range {p3 .. p3}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "appKey"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/PSb;->mContext:Landroid/content/Context;

    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/PSb;->mContext:Landroid/content/Context;

    if-nez v2, :cond_4

    .line 74
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/PSb;->mContext:Landroid/content/Context;

    .line 77
    :cond_4
    if-nez p6, :cond_6

    .line 78
    new-instance v2, Lc8/LSb;

    invoke-direct {v2}, Lc8/LSb;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/PSb;->mConfiguration:Lc8/LSb;

    .line 84
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 85
    .restart local v20    # "start":J
    new-instance v2, Lc8/kTb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/PSb;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lc8/kTb;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    new-instance v3, Lc8/aTb;

    const-string/jumbo v4, "STARTUP_TIME"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lc8/kTb;->setProperty(Lc8/aTb;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    new-instance v3, Lc8/aTb;

    const-string/jumbo v4, "APP_ID"

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-direct {v3, v4, v0, v5}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lc8/kTb;->setProperty(Lc8/aTb;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    new-instance v3, Lc8/aTb;

    const-string/jumbo v4, "APP_KEY"

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-direct {v3, v4, v0, v5}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lc8/kTb;->setProperty(Lc8/aTb;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    new-instance v3, Lc8/aTb;

    const-string/jumbo v4, "APP_VERSION"

    const-string/jumbo v5, "DEFAULT"

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Lc8/OTb;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lc8/kTb;->setProperty(Lc8/aTb;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    new-instance v3, Lc8/aTb;

    const-string/jumbo v4, "CHANNEL"

    const/4 v5, 0x1

    move-object/from16 v0, p5

    invoke-direct {v3, v4, v0, v5}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lc8/kTb;->setProperty(Lc8/aTb;)V

    .line 92
    invoke-static {}, Lc8/vTb;->getMyProcessNameByCmdline()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/PSb;->mProcessName:Ljava/lang/String;

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/PSb;->mProcessName:Ljava/lang/String;

    invoke-static {v2}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    invoke-static/range {p1 .. p1}, Lc8/vTb;->getMyProcessNameByAppProcessInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/PSb;->mProcessName:Ljava/lang/String;

    .line 96
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/PSb;->mProcessName:Ljava/lang/String;

    const-string/jumbo v3, "DEFAULT"

    invoke-static {v2, v3}, Lc8/OTb;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/PSb;->mProcessName:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    new-instance v3, Lc8/aTb;

    const-string/jumbo v4, "PROCESS_NAME"

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/PSb;->mProcessName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lc8/kTb;->setProperty(Lc8/aTb;)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK ReporterContext initialize complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 102
    new-instance v2, Lc8/rTb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/PSb;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lc8/rTb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/PSb;->mStorageManager:Lc8/rTb;

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK StorageManager initialize complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 107
    new-instance v2, Lc8/iTb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/PSb;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/PSb;->mConfiguration:Lc8/LSb;

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/PSb;->mStorageManager:Lc8/rTb;

    invoke-direct {v2, v3, v4, v5, v6}, Lc8/iTb;-><init>(Landroid/content/Context;Lc8/kTb;Lc8/LSb;Lc8/rTb;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/PSb;->mReportBuilder:Lc8/iTb;

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK ReportBuilder initialize complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 112
    new-instance v2, Lc8/qTb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/PSb;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/PSb;->mConfiguration:Lc8/LSb;

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/PSb;->mReportBuilder:Lc8/iTb;

    invoke-direct {v2, v3, v4, v5, v6}, Lc8/qTb;-><init>(Landroid/content/Context;Lc8/kTb;Lc8/LSb;Lc8/iTb;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/PSb;->mSendManager:Lc8/qTb;

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK SendManager initialize complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 117
    new-instance v2, Lc8/mTb;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/PSb;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/PSb;->mStorageManager:Lc8/rTb;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v10}, Lc8/mTb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLc8/rTb;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/PSb;->mRunningStateMonitor:Lc8/mTb;

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/PSb;->mRunningStateMonitor:Lc8/mTb;

    new-instance v3, Lc8/OSb;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lc8/OSb;-><init>(Lc8/PSb;)V

    invoke-virtual {v2, v3}, Lc8/mTb;->analyzeStartupState(Lc8/OSb;)V

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK RunningStateMonitor initialize complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 124
    new-instance v10, Lc8/KSb;

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/PSb;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/PSb;->mConfiguration:Lc8/LSb;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/PSb;->mStorageManager:Lc8/rTb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PSb;->mReportBuilder:Lc8/iTb;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PSb;->mSendManager:Lc8/qTb;

    move-object/from16 v17, v0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lc8/KSb;-><init>(Landroid/content/Context;Ljava/lang/String;Lc8/kTb;Lc8/LSb;Lc8/rTb;Lc8/iTb;Lc8/qTb;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lc8/PSb;->mCatcherManager:Lc8/KSb;

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK CatcherManager initialize complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 130
    new-instance v2, Lc8/TSb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/PSb;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/PSb;->mConfiguration:Lc8/LSb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/PSb;->mCatcherManager:Lc8/KSb;

    invoke-direct {v2, v3, v4, v5}, Lc8/TSb;-><init>(Landroid/content/Context;Lc8/LSb;Lc8/KSb;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/PSb;->mLabFeatureManager:Lc8/TSb;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK LabFeatureManager initialize complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK initialize complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lc8/PSb;->initSuccess:Z

    goto/16 :goto_1

    .line 80
    .end local v20    # "start":J
    :cond_6
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/PSb;->mConfiguration:Lc8/LSb;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public refreshAppVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-boolean v0, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Lc8/aTb;

    const-string/jumbo v1, "APP_VERSION"

    invoke-direct {v0, v1, p1}, Lc8/aTb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/PSb;->setProperty(Lc8/aTb;)V

    .line 298
    iget-object v0, p0, Lc8/PSb;->mCatcherManager:Lc8/KSb;

    invoke-virtual {v0}, Lc8/KSb;->refreshNativeInfo()V

    .line 300
    :cond_0
    return-void
.end method

.method public removeSendLinster(Lc8/RSb;)V
    .locals 1
    .param p1, "sendListener"    # Lc8/RSb;

    .prologue
    .line 337
    iget-boolean v0, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lc8/PSb;->mSendManager:Lc8/qTb;

    invoke-virtual {v0, p1}, Lc8/qTb;->removeListener(Lc8/RSb;)V

    .line 340
    :cond_0
    return-void
.end method

.method public scanAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    iget-boolean v1, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/PSb;->scaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    :try_start_0
    iget-object v1, p0, Lc8/PSb;->mCatcherManager:Lc8/KSb;

    invoke-virtual {v1}, Lc8/KSb;->doScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v1, p0, Lc8/PSb;->scaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "scan all"

    invoke-static {v1, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    iget-object v1, p0, Lc8/PSb;->scaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/PSb;->scaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method

.method public sendAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-boolean v1, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/PSb;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    :try_start_0
    iget-object v1, p0, Lc8/PSb;->mSendManager:Lc8/qTb;

    invoke-virtual {v1}, Lc8/qTb;->sendAllReport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object v1, p0, Lc8/PSb;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "send all"

    invoke-static {v1, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    iget-object v1, p0, Lc8/PSb;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/PSb;->sending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method

.method public setProperty(Lc8/aTb;)V
    .locals 1
    .param p1, "property"    # Lc8/aTb;

    .prologue
    .line 260
    iget-boolean v0, p0, Lc8/PSb;->initSuccess:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lc8/PSb;->mReporterContext:Lc8/kTb;

    invoke-virtual {v0, p1}, Lc8/kTb;->setProperty(Lc8/aTb;)V

    .line 263
    :cond_0
    return-void
.end method
