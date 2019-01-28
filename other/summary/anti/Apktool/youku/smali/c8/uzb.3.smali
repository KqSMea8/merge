.class public Lc8/uzb;
.super Ljava/lang/Object;
.source "Variables.java"


# static fields
.field private static final DEBUG_DATE:Ljava/lang/String; = "debug_date"

.field private static final DEBUG_TIME:J = 0xdbba00L

.field private static final TAG_TURNOFF_REAL_TIME:Ljava/lang/String; = "real_time_debug"

.field private static final UTRTD_NAME:Ljava/lang/String; = "UTRealTimeDebug"

.field public static final s_instance:Lc8/uzb;


# instance fields
.field private volatile bApIsRealTimeDebugging:Z

.field private volatile bInit:Z

.field private bPackageDebugSwitch:Z

.field private hasReadPackageBuildId:Z

.field private hasReadPackageDebugSwitch:Z

.field private isAllServiceClosed:Z

.field private isGzipUpload:Z

.field private isHttpService:Z

.field private isRealtimeServiceClosed:Z

.field private mAppVersion:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mChannel:Ljava/lang/String;

.field private mConfMgr:Lc8/Azb;

.field private mContext:Landroid/content/Context;

.field private mDbMgr:Lc8/Wzb;

.field private mDebugSamplingOption:Z

.field private mDebuggingKey:Ljava/lang/String;

.field private mIsOldDevice:Z

.field private mIsRealTimeDebugging:Z

.field private mIsSelfMonitorTurnOn:Z

.field private volatile mIsTurnOffDebugPlugin:Z

.field private mLUserid:Ljava/lang/String;

.field private mLUsernick:Ljava/lang/String;

.field private mPackageBuildId:Ljava/lang/String;

.field private volatile mRequestAuthenticationInstance:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

.field private mSecret:Ljava/lang/String;

.field private mSessionProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTPKString:Ljava/lang/String;

.field private mTransferUrl:Ljava/lang/String;

.field private mUserid:Ljava/lang/String;

.field private mUsernick:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lc8/uzb;

    invoke-direct {v0}, Lc8/uzb;-><init>()V

    sput-object v0, Lc8/uzb;->s_instance:Lc8/uzb;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    .line 53
    iput-object v1, p0, Lc8/uzb;->mAppkey:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lc8/uzb;->mSecret:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lc8/uzb;->mRequestAuthenticationInstance:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    .line 57
    iput-object v1, p0, Lc8/uzb;->mChannel:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lc8/uzb;->mAppVersion:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lc8/uzb;->mUsernick:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lc8/uzb;->mLUsernick:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lc8/uzb;->mUserid:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lc8/uzb;->mLUserid:Ljava/lang/String;

    .line 64
    iput-boolean v2, p0, Lc8/uzb;->mIsRealTimeDebugging:Z

    .line 65
    iput-object v1, p0, Lc8/uzb;->mDebuggingKey:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lc8/uzb;->mSessionProperties:Ljava/util/Map;

    .line 67
    iput-boolean v2, p0, Lc8/uzb;->mDebugSamplingOption:Z

    .line 69
    iput-object v1, p0, Lc8/uzb;->mTransferUrl:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lc8/uzb;->bInit:Z

    .line 71
    iput-object v1, p0, Lc8/uzb;->mDbMgr:Lc8/Wzb;

    .line 72
    iput-object v1, p0, Lc8/uzb;->mConfMgr:Lc8/Azb;

    .line 73
    iput-boolean v2, p0, Lc8/uzb;->mIsTurnOffDebugPlugin:Z

    .line 74
    iput-object v1, p0, Lc8/uzb;->mTPKString:Ljava/lang/String;

    .line 75
    iput-boolean v2, p0, Lc8/uzb;->bApIsRealTimeDebugging:Z

    .line 82
    iput-boolean v2, p0, Lc8/uzb;->isAllServiceClosed:Z

    .line 86
    iput-boolean v2, p0, Lc8/uzb;->isHttpService:Z

    .line 90
    iput-boolean v2, p0, Lc8/uzb;->isRealtimeServiceClosed:Z

    .line 94
    iput-boolean v2, p0, Lc8/uzb;->isGzipUpload:Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/uzb;->mIsSelfMonitorTurnOn:Z

    .line 100
    iput-boolean v2, p0, Lc8/uzb;->mIsOldDevice:Z

    .line 101
    iput-boolean v2, p0, Lc8/uzb;->bPackageDebugSwitch:Z

    .line 102
    iput-boolean v2, p0, Lc8/uzb;->hasReadPackageDebugSwitch:Z

    .line 103
    iput-object v1, p0, Lc8/uzb;->mPackageBuildId:Ljava/lang/String;

    .line 104
    iput-boolean v2, p0, Lc8/uzb;->hasReadPackageBuildId:Z

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

.method public static getInstance()Lc8/uzb;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lc8/uzb;->s_instance:Lc8/uzb;

    return-object v0
.end method

.method private getLocalInfo()V
    .locals 9

    .prologue
    .line 268
    iget-object v6, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "UTCommon"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 269
    .local v1, "lSP":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "_lun"

    const-string/jumbo v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "lUN":Ljava/lang/String;
    invoke-static {v2}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 273
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lc8/yBb;->decode([BI)[B

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 274
    .local v4, "lUserNick":Ljava/lang/String;
    iput-object v4, p0, Lc8/uzb;->mLUsernick:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v4    # "lUserNick":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v6, "_luid"

    const-string/jumbo v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "lUid":Ljava/lang/String;
    invoke-static {v3}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 283
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lc8/yBb;->decode([BI)[B

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 284
    .local v5, "lUserid":Ljava/lang/String;
    iput-object v5, p0, Lc8/uzb;->mLUserid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    .end local v5    # "lUserid":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 275
    .end local v3    # "lUid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 285
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "lUid":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 286
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private initRealTimeDebug()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 516
    iget-object v4, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-static {}, Lc8/NBb;->d()V

    .line 520
    iget-object v4, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "UTRealTimeDebug"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 521
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "debug_date"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 522
    .local v0, "debugDate":J
    const-string/jumbo v4, ""

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "debugDate"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v6, 0xdbba00

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 524
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 525
    .local v2, "debuggingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "debug_api_url"

    const-string/jumbo v5, "debug_api_url"

    const-string/jumbo v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string/jumbo v4, "debug_key"

    const-string/jumbo v5, "debug_key"

    const-string/jumbo v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {p0, v2}, Lc8/uzb;->turnOnRealTimeDebug(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static isNotDisAM()Z
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x1

    return v0
.end method

.method private setUserid(Ljava/lang/String;)V
    .locals 7
    .param p1, "pUserid"    # Ljava/lang/String;

    .prologue
    .line 591
    iput-object p1, p0, Lc8/uzb;->mUserid:Ljava/lang/String;

    .line 592
    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 593
    iput-object p1, p0, Lc8/uzb;->mLUserid:Ljava/lang/String;

    .line 595
    :cond_0
    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 597
    :try_start_0
    iget-object v3, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "UTCommon"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 598
    .local v2, "lSP":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 599
    .local v1, "lE":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "_luid"

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lc8/yBb;->encode([BI)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 600
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    .end local v1    # "lE":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "lSP":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private setUsernick(Ljava/lang/String;)V
    .locals 7
    .param p1, "pUsernick"    # Ljava/lang/String;

    .prologue
    .line 574
    iput-object p1, p0, Lc8/uzb;->mUsernick:Ljava/lang/String;

    .line 575
    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 576
    iput-object p1, p0, Lc8/uzb;->mLUsernick:Ljava/lang/String;

    .line 578
    :cond_0
    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 580
    :try_start_0
    iget-object v3, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "UTCommon"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 581
    .local v2, "lSP":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 582
    .local v1, "lE":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "_lun"

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lc8/yBb;->encode([BI)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 583
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v1    # "lE":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "lSP":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private storeRealTimeDebugSharePreference(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "aDebuggingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 513
    :goto_0
    return-void

    .line 500
    :cond_0
    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Lc8/NBb;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 501
    iget-object v2, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "UTRealTimeDebug"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 502
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 503
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    const-string/jumbo v2, "debug_store"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    const-string/jumbo v3, "debug_api_url"

    const-string/jumbo v2, "debug_api_url"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 506
    const-string/jumbo v3, "debug_key"

    const-string/jumbo v2, "debug_key"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    const-string/jumbo v2, "debug_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 512
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 510
    :cond_1
    const-string/jumbo v2, "debug_date"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private trackInfoForPreLoad()V
    .locals 5

    .prologue
    .line 251
    :try_start_0
    iget-object v3, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lc8/uBb;->getInfoForPreApk(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 252
    .local v1, "info":Ljava/util/Map;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 253
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v2, "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1021"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 256
    invoke-static {}, Lcom/ut/mini/UTAnalyticsDelegate;->getInstance()Lcom/ut/mini/UTAnalyticsDelegate;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ut/mini/UTAnalyticsDelegate;->transferLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v1    # "info":Ljava/util/Map;
    .end local v2    # "logMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    iget-object v1, p0, Lc8/uzb;->mAppVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/EBb;->getDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 314
    .local v0, "deviceInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 315
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->APPVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lc8/uzb;->mAppVersion:Ljava/lang/String;

    .line 318
    .end local v0    # "deviceInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lc8/uzb;->mAppVersion:Ljava/lang/String;

    return-object v1
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lc8/uzb;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 350
    iget-object v1, p0, Lc8/uzb;->mChannel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {p0}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "channel"

    invoke-static {v1, v2}, Lc8/ZBb;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "channel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    .end local v0    # "channel":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/uzb;->mChannel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getConfMgr()Lc8/Azb;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lc8/uzb;->mConfMgr:Lc8/Azb;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDbMgr()Lc8/Wzb;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lc8/uzb;->mDbMgr:Lc8/Wzb;

    return-object v0
.end method

.method public declared-synchronized getDebugKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/uzb;->mDebuggingKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDebugSamplingOption()Z
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/uzb;->mDebugSamplingOption:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHostPackageImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/hAb;->getDevice(Landroid/content/Context;)Lc8/iAb;

    move-result-object v0

    .line 391
    .local v0, "deviceInfo":Lc8/iAb;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Lc8/iAb;->getImei()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 394
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 390
    .end local v0    # "deviceInfo":Lc8/iAb;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getHostPackageImsi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/hAb;->getDevice(Landroid/content/Context;)Lc8/iAb;

    move-result-object v0

    .line 400
    .local v0, "deviceInfo":Lc8/iAb;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lc8/iAb;->getImsi()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 403
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 399
    .end local v0    # "deviceInfo":Lc8/iAb;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getLongLoginUsernick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lc8/uzb;->mLUsernick:Ljava/lang/String;

    return-object v0
.end method

.method public getLongLoingUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lc8/uzb;->mLUserid:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageBuildId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 637
    iget-boolean v1, p0, Lc8/uzb;->hasReadPackageBuildId:Z

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lc8/uzb;->mPackageBuildId:Ljava/lang/String;

    .line 646
    :goto_0
    return-object v1

    .line 640
    :cond_0
    invoke-virtual {p0}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 641
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 642
    const/4 v1, 0x0

    goto :goto_0

    .line 644
    :cond_1
    const-string/jumbo v1, "build_id"

    invoke-static {v0, v1}, Lc8/uBb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/uzb;->mPackageBuildId:Ljava/lang/String;

    .line 645
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/uzb;->hasReadPackageBuildId:Z

    .line 646
    iget-object v1, p0, Lc8/uzb;->mPackageBuildId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRequestAuthenticationInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lc8/uzb;->mRequestAuthenticationInstance:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lc8/uzb;->mSecret:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSessionProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/uzb;->mSessionProperties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTPKString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lc8/uzb;->mTPKString:Ljava/lang/String;

    return-object v0
.end method

.method public getTpkMD5()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lc8/uzb;->mTPKString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/uzb;->mTPKString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransferUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 538
    iget-object v4, p0, Lc8/uzb;->mTransferUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 539
    sget-object v4, Lc8/szb;->G_TRANSFER_URL:Ljava/lang/String;

    iput-object v4, p0, Lc8/uzb;->mTransferUrl:Ljava/lang/String;

    .line 541
    invoke-virtual {p0}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "http_host"

    invoke-static {v4, v5}, Lc8/uBb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "localConfigHost":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 544
    :try_start_0
    iget-object v4, p0, Lc8/uzb;->mTransferUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "oUrl":Ljava/lang/String;
    iget-object v4, p0, Lc8/uzb;->mTransferUrl:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, "ret":Ljava/lang/String;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v1    # "localConfigHost":Ljava/lang/String;
    .end local v2    # "oUrl":Ljava/lang/String;
    .end local v3    # "ret":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 549
    .restart local v1    # "localConfigHost":Ljava/lang/String;
    :catch_0
    move-exception v4

    iget-object v3, p0, Lc8/uzb;->mTransferUrl:Ljava/lang/String;

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p0}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "http_host"

    invoke-static {v4, v5}, Lc8/ZBb;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 556
    :try_start_1
    iget-object v4, p0, Lc8/uzb;->mTransferUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 557
    .restart local v2    # "oUrl":Ljava/lang/String;
    iget-object v4, p0, Lc8/uzb;->mTransferUrl:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 558
    .restart local v3    # "ret":Ljava/lang/String;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 561
    .end local v2    # "oUrl":Ljava/lang/String;
    .end local v3    # "ret":Ljava/lang/String;
    :catch_1
    move-exception v4

    iget-object v3, p0, Lc8/uzb;->mTransferUrl:Ljava/lang/String;

    goto :goto_0

    .line 566
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "localConfigHost":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lc8/uzb;->mTransferUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lc8/uzb;->mUserid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsernick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lc8/uzb;->mUsernick:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized init(Landroid/app/Application;)V
    .locals 7
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    .line 181
    iget-object v3, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 182
    const-string/jumbo v3, "UTDC init failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "context:null"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "init"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-boolean v6, p0, Lc8/uzb;->bInit:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-boolean v3, p0, Lc8/uzb;->bInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 188
    :try_start_2
    invoke-static {}, Lc8/EAb;->getInstance()Lc8/EAb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/EAb;->init()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :goto_1
    :try_start_3
    invoke-static {}, Lc8/LAb;->getInstance()Lc8/LAb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/LAb;->init()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lc8/uzb;->getLocalInfo()V

    .line 200
    new-instance v3, Lc8/Wzb;

    iget-object v4, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "ut.db"

    invoke-direct {v3, v4, v5}, Lc8/Wzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lc8/uzb;->mDbMgr:Lc8/Wzb;

    .line 202
    iget-object v3, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lc8/yAb;->register(Landroid/content/Context;)V

    .line 206
    invoke-static {}, Lc8/Zzb;->checkAndTransfer()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    const/4 v1, 0x0

    .line 210
    .local v1, "lClass":Ljava/lang/Class;
    :try_start_5
    const-string/jumbo v3, "com.taobao.orange.OrangeConfig"

    invoke-static {v3}, Lc8/uzb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 214
    :goto_3
    if-eqz v1, :cond_2

    .line 215
    :try_start_6
    new-instance v3, Lc8/Jzb;

    invoke-direct {v3}, Lc8/Jzb;-><init>()V

    iput-object v3, p0, Lc8/uzb;->mConfMgr:Lc8/Azb;

    .line 219
    :goto_4
    iget-object v3, p0, Lc8/uzb;->mConfMgr:Lc8/Azb;

    invoke-static {}, Lc8/Pzb;->getInstance()Lc8/Pzb;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/Azb;->addConfBiz(Lc8/Gzb;)V

    .line 220
    iget-object v3, p0, Lc8/uzb;->mConfMgr:Lc8/Azb;

    invoke-static {}, Lc8/Rzb;->getInstance()Lc8/Rzb;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/Azb;->addConfBiz(Lc8/Gzb;)V

    .line 221
    iget-object v3, p0, Lc8/uzb;->mConfMgr:Lc8/Azb;

    new-instance v4, Lc8/Bzb;

    invoke-direct {v4}, Lc8/Bzb;-><init>()V

    invoke-virtual {v3, v4}, Lc8/Azb;->addConfBiz(Lc8/Gzb;)V

    .line 222
    iget-object v3, p0, Lc8/uzb;->mConfMgr:Lc8/Azb;

    invoke-static {}, Lc8/AEb;->getInstance()Lc8/AEb;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/Azb;->addConfBiz(Lc8/Gzb;)V

    .line 223
    iget-object v3, p0, Lc8/uzb;->mConfMgr:Lc8/Azb;

    invoke-static {}, Lc8/Lzb;->getInstance()Lc8/Lzb;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/Azb;->addConfBiz(Lc8/Gzb;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 225
    :try_start_7
    iget-object v3, p0, Lc8/uzb;->mConfMgr:Lc8/Azb;

    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/Azb;->addConfBiz(Lc8/Gzb;)V

    .line 226
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v3

    const-string/jumbo v4, "sw_plugin"

    new-instance v5, Lc8/vzb;

    invoke-direct {v5}, Lc8/vzb;-><init>()V

    invoke-virtual {v3, v4, v5}, Lc8/zzb;->register(Ljava/lang/String;Lc8/xzb;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 231
    :goto_5
    :try_start_8
    iget-object v3, p0, Lc8/uzb;->mConfMgr:Lc8/Azb;

    invoke-virtual {v3}, Lc8/Azb;->requestOnlineConfig()V

    .line 233
    invoke-static {}, Lc8/sAb;->getInstance()Lc8/sAb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/sAb;->startSync()V

    .line 236
    invoke-static {p1}, Lc8/ODb;->init(Landroid/app/Application;)V

    .line 238
    invoke-static {}, Lcom/ut/mini/UTAnalyticsDelegate;->getInstance()Lcom/ut/mini/UTAnalyticsDelegate;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ut/mini/UTAnalyticsDelegate;->initUT(Landroid/app/Application;)V

    .line 240
    invoke-direct {p0}, Lc8/uzb;->initRealTimeDebug()V

    .line 241
    invoke-static {}, Lc8/nBb;->getInstance()Lc8/nBb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/nBb;->start()V

    .line 243
    invoke-direct {p0}, Lc8/uzb;->trackInfoForPreLoad()V

    .line 244
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/uzb;->bInit:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 180
    .end local v1    # "lClass":Ljava/lang/Class;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_9
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 194
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 217
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "lClass":Ljava/lang/Class;
    :cond_2
    new-instance v3, Lc8/Fzb;

    invoke-direct {v3}, Lc8/Fzb;-><init>()V

    iput-object v3, p0, Lc8/uzb;->mConfMgr:Lc8/Azb;

    goto/16 :goto_4

    .line 227
    :catch_2
    move-exception v2

    .line 229
    .local v2, "throwable":Ljava/lang/Throwable;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .end local v2    # "throwable":Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    goto/16 :goto_3
.end method

.method public declared-synchronized isAllServiceClosed()Z
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/uzb;->isAllServiceClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApRealTimeDebugging()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lc8/uzb;->bApIsRealTimeDebugging:Z

    return v0
.end method

.method public isDebugPackage()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 620
    iget-boolean v2, p0, Lc8/uzb;->hasReadPackageDebugSwitch:Z

    if-eqz v2, :cond_0

    .line 621
    iget-boolean v2, p0, Lc8/uzb;->bPackageDebugSwitch:Z

    .line 632
    :goto_0
    return v2

    .line 623
    :cond_0
    invoke-virtual {p0}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 624
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 625
    const/4 v2, 0x0

    goto :goto_0

    .line 627
    :cond_1
    const-string/jumbo v2, "package_type"

    invoke-static {v0, v2}, Lc8/uBb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "ret":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    iput-boolean v3, p0, Lc8/uzb;->bPackageDebugSwitch:Z

    .line 630
    iput-boolean v3, p0, Lc8/uzb;->hasReadPackageDebugSwitch:Z

    .line 632
    :cond_2
    iget-boolean v2, p0, Lc8/uzb;->bPackageDebugSwitch:Z

    goto :goto_0
.end method

.method public isGzipUpload()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lc8/uzb;->isGzipUpload:Z

    return v0
.end method

.method public declared-synchronized isHttpService()Z
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/uzb;->isHttpService:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lc8/uzb;->bInit:Z

    return v0
.end method

.method public isOldDevice()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 382
    iget-boolean v1, p0, Lc8/uzb;->mIsOldDevice:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "UTCommon"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 384
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "_isolddevice"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lc8/uzb;->mIsOldDevice:Z

    .line 386
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget-boolean v1, p0, Lc8/uzb;->mIsOldDevice:Z

    return v1
.end method

.method public declared-synchronized isRealTimeDebug()Z
    .locals 1

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/uzb;->mIsRealTimeDebugging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRealtimeServiceClosed()Z
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/uzb;->isRealtimeServiceClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSelfMonitorTurnOn()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lc8/uzb;->mIsSelfMonitorTurnOn:Z

    return v0
.end method

.method public isTurnOffDebugPlugin()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lc8/uzb;->mIsTurnOffDebugPlugin:Z

    return v0
.end method

.method public declared-synchronized resetRealTimeDebugFlag()V
    .locals 1

    .prologue
    .line 444
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lc8/uzb;->mIsRealTimeDebugging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAllServiceClosed(Z)V
    .locals 1
    .param p1, "allServiceClosed"    # Z

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lc8/uzb;->isAllServiceClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "aAppVersion"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lc8/uzb;->mAppVersion:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 3
    .param p1, "aChannel"    # Ljava/lang/String;

    .prologue
    .line 337
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iput-object p1, p0, Lc8/uzb;->mChannel:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "mIsDebug"    # Z

    .prologue
    .line 534
    invoke-static {p1}, Lc8/NBb;->setDebug(Z)V

    .line 535
    return-void
.end method

.method public declared-synchronized setDebugKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "aDebuggingKey"    # Ljava/lang/String;

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc8/uzb;->mDebuggingKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDebugSamplingOption()V
    .locals 1

    .prologue
    .line 411
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc8/uzb;->mDebugSamplingOption:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setGzipUpload(Z)V
    .locals 0
    .param p1, "gzipUpload"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lc8/uzb;->isGzipUpload:Z

    .line 153
    return-void
.end method

.method public declared-synchronized setHttpService(Z)V
    .locals 1
    .param p1, "httpService"    # Z

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lc8/uzb;->isHttpService:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsOldDevice(Z)V
    .locals 4
    .param p1, "old"    # Z

    .prologue
    .line 374
    iget-object v1, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lc8/uzb;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "UTCommon"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 376
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "_isolddevice"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 378
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public declared-synchronized setRealTimeDebugFlag()V
    .locals 1

    .prologue
    .line 440
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc8/uzb;->mIsRealTimeDebugging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRealtimeServiceClosed(Z)V
    .locals 1
    .param p1, "realtimeServiceClosed"    # Z

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lc8/uzb;->isRealtimeServiceClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequestAuthenticationInstance(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V
    .locals 1
    .param p1, "aRequestAuthenticationInstance"    # Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    .prologue
    .line 322
    iput-object p1, p0, Lc8/uzb;->mRequestAuthenticationInstance:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    .line 323
    if-eqz p1, :cond_0

    .line 324
    invoke-interface {p1}, Lcom/ut/mini/core/sign/IUTRequestAuthentication;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/uzb;->mAppkey:Ljava/lang/String;

    .line 326
    :cond_0
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lc8/uzb;->mSecret:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public declared-synchronized setSessionProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc8/uzb;->mSessionProperties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTPKString(Ljava/lang/String;)V
    .locals 0
    .param p1, "aTPKString"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lc8/uzb;->mTPKString:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public turnOffDebugPlugin()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/uzb;->mIsTurnOffDebugPlugin:Z

    .line 109
    return-void
.end method

.method public turnOffRealTimeDebug()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 453
    invoke-virtual {p0}, Lc8/uzb;->resetRealTimeDebugFlag()V

    .line 454
    invoke-virtual {p0, v2}, Lc8/uzb;->setDebugKey(Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lc8/nBb;->getInstance()Lc8/nBb;

    move-result-object v0

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    invoke-virtual {v0, v1}, Lc8/nBb;->setMode(Lcom/alibaba/analytics/core/sync/UploadMode;)V

    .line 456
    invoke-direct {p0, v2}, Lc8/uzb;->storeRealTimeDebugSharePreference(Ljava/util/Map;)V

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/uzb;->bApIsRealTimeDebugging:Z

    .line 458
    return-void
.end method

.method public turnOffSelfMonitor()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/uzb;->mIsSelfMonitorTurnOn:Z

    .line 117
    return-void
.end method

.method public turnOnDebug()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/uzb;->setDebug(Z)V

    .line 334
    return-void
.end method

.method public turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aDebuggingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 461
    invoke-static {}, Lc8/NBb;->d()V

    .line 462
    const-string/jumbo v2, "0"

    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v3

    const-string/jumbo v4, "real_time_debug"

    invoke-virtual {v3, v4}, Lc8/zzb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    const-string/jumbo v2, "Variables"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Server Config turn off RealTimeDebug Mode!"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    :goto_0
    return-void

    .line 466
    :cond_0
    if-eqz p1, :cond_4

    .line 467
    const-string/jumbo v2, "debug_api_url"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "debug_key"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 469
    const-string/jumbo v2, "debug_api_url"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 470
    .local v1, "lDebuggingApiUrl":Ljava/lang/String;
    const-string/jumbo v2, "debug_key"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    .local v0, "lDebugKey":Ljava/lang/String;
    invoke-static {v1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 474
    invoke-virtual {p0}, Lc8/uzb;->setRealTimeDebugFlag()V

    .line 475
    invoke-virtual {p0, v0}, Lc8/uzb;->setDebugKey(Ljava/lang/String;)V

    .line 477
    :cond_1
    const-string/jumbo v3, "ap"

    const-string/jumbo v2, "from"

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    iput-boolean v5, p0, Lc8/uzb;->bApIsRealTimeDebugging:Z

    .line 481
    :cond_2
    const-string/jumbo v2, "debug_sampling_option"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 482
    invoke-virtual {p0}, Lc8/uzb;->setDebugSamplingOption()V

    .line 484
    iget-boolean v2, p0, Lc8/uzb;->bApIsRealTimeDebugging:Z

    if-eqz v2, :cond_3

    .line 485
    sput-boolean v5, Lc8/ODb;->IS_DEBUG:Z

    .line 489
    :cond_3
    invoke-virtual {p0, v5}, Lc8/uzb;->setDebug(Z)V

    .line 490
    invoke-static {}, Lc8/nBb;->getInstance()Lc8/nBb;

    move-result-object v2

    sget-object v3, Lcom/alibaba/analytics/core/sync/UploadMode;->REALTIME:Lcom/alibaba/analytics/core/sync/UploadMode;

    invoke-virtual {v2, v3}, Lc8/nBb;->setMode(Lcom/alibaba/analytics/core/sync/UploadMode;)V

    .line 493
    .end local v0    # "lDebugKey":Ljava/lang/String;
    .end local v1    # "lDebuggingApiUrl":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lc8/uzb;->storeRealTimeDebugSharePreference(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public turnOnSelfMonitor()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/uzb;->mIsSelfMonitorTurnOn:Z

    .line 113
    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "aUsernick"    # Ljava/lang/String;
    .param p2, "aUserid"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lc8/uzb;->setUsernick(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0, p2}, Lc8/uzb;->setUserid(Ljava/lang/String;)V

    .line 370
    return-void
.end method
