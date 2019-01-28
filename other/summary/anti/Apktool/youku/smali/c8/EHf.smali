.class public Lc8/EHf;
.super Ljava/lang/Object;
.source "TLogInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/DHf;,
        Lc8/CHf;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TLog.TLogInitializer"

.field private static isForceOpenConsole:Z

.field private static mAppVersion:Ljava/lang/String;

.field private static mAppkey:Ljava/lang/String;

.field private static mCommandParser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/rHf;",
            ">;"
        }
    .end annotation
.end field

.field private static mConnectReceiver:Landroid/content/BroadcastReceiver;

.field private static mContext:Landroid/content/Context;

.field private static mController:Lc8/tHf;

.field private static mDirs:Ljava/lang/String;

.field private static mEndOfToday:J

.field private static mEnvironment:Lc8/sHf;

.field private static mIsDebug:Z

.field public static mIsMainProcess:Z

.field private static mMonitor:Lc8/FHf;

.field private static mPath:Ljava/lang/String;

.field private static mResponse:Lc8/uHf;

.field private static mSecretKey:Ljava/lang/String;

.field private static mStrategy:Lcom/taobao/tao/log/TLogFileSaveStrategy;

.field private static mTTID:Ljava/lang/String;

.field private static mUTDID:Ljava/lang/String;

.field private static mUserNick:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    sget-object v0, Lcom/taobao/tao/log/TLogFileSaveStrategy;->ONEFILE:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    sput-object v0, Lc8/EHf;->mStrategy:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lc8/EHf;->mCommandParser:Ljava/util/Map;

    .line 56
    sput-boolean v1, Lc8/EHf;->mIsDebug:Z

    .line 57
    sput-boolean v1, Lc8/EHf;->isForceOpenConsole:Z

    .line 61
    const-wide/16 v0, -0x1

    sput-wide v0, Lc8/EHf;->mEndOfToday:J

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lc8/EHf;->mIsMainProcess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    return-void
.end method

.method public static delete()V
    .locals 5

    .prologue
    .line 216
    invoke-static {}, Lc8/eIf;->getInstance()Lc8/eIf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/eIf;->stopLogRecording()V

    .line 218
    sget-object v3, Lc8/EHf;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 219
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lc8/EHf;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/EHf;->mDirs:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 222
    .local v0, "childFiles":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 223
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "childFiles":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    sget-object v0, Lc8/EHf;->mAppVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lc8/EHf;->mAppVersion:Ljava/lang/String;

    .line 320
    :goto_0
    return-object v0

    .line 316
    :cond_0
    sget-object v0, Lc8/EHf;->mEnvironment:Lc8/sHf;

    if-eqz v0, :cond_1

    .line 317
    sget-object v0, Lc8/EHf;->mEnvironment:Lc8/sHf;

    sget-object v1, Lc8/EHf;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lc8/sHf;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 318
    sput-object v0, Lc8/EHf;->mAppVersion:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getAppkey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    :try_start_0
    sget-object v0, Lc8/EHf;->mAppkey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lc8/EHf;->mAppkey:Ljava/lang/String;

    .line 262
    :goto_0
    return-object v0

    .line 254
    :cond_0
    sget-object v0, Lc8/EHf;->mEnvironment:Lc8/sHf;

    if-eqz v0, :cond_1

    .line 255
    sget-object v0, Lc8/EHf;->mEnvironment:Lc8/sHf;

    sget-object v1, Lc8/EHf;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lc8/sHf;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 256
    sput-object v0, Lc8/EHf;->mAppkey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0

    .line 258
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getAssistPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    sget-object v1, Lc8/EHf;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/EHf;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/EHf;->mDirs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "assist_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCommandParser(Ljava/lang/String;)Lc8/rHf;
    .locals 1
    .param p0, "parseName"    # Ljava/lang/String;

    .prologue
    .line 370
    if-nez p0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/EHf;->mCommandParser:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/rHf;

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lc8/EHf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeadlineTime()J
    .locals 4

    .prologue
    .line 356
    sget-wide v0, Lc8/EHf;->mEndOfToday:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 357
    invoke-static {}, Lc8/IHf;->getTimesnight()J

    move-result-wide v0

    sput-wide v0, Lc8/EHf;->mEndOfToday:J

    .line 359
    :cond_0
    sget-wide v0, Lc8/EHf;->mEndOfToday:J

    return-wide v0
.end method

.method public static getDebugable()Z
    .locals 1

    .prologue
    .line 352
    sget-boolean v0, Lc8/EHf;->mIsDebug:Z

    return v0
.end method

.method public static getExtDataPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    sget-object v1, Lc8/EHf;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/EHf;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/EHf;->mDirs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ext_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lc8/EHf;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/EHf;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/EHf;->mDirs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lc8/EHf;->mSecretKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getStrategy()Lcom/taobao/tao/log/TLogFileSaveStrategy;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lc8/EHf;->mStrategy:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    return-object v0
.end method

.method public static getTLogControler()Lc8/tHf;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lc8/EHf;->mController:Lc8/tHf;

    return-object v0
.end method

.method public static getTLogResponse()Lc8/uHf;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    sget-object v0, Lc8/EHf;->mResponse:Lc8/uHf;

    return-object v0
.end method

.method public static getTTID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    sget-object v0, Lc8/EHf;->mTTID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lc8/EHf;->mTTID:Ljava/lang/String;

    .line 303
    :goto_0
    return-object v0

    .line 299
    :cond_0
    sget-object v0, Lc8/EHf;->mEnvironment:Lc8/sHf;

    if-eqz v0, :cond_1

    .line 300
    sget-object v0, Lc8/EHf;->mEnvironment:Lc8/sHf;

    sget-object v1, Lc8/EHf;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lc8/sHf;->getTTID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 301
    sput-object v0, Lc8/EHf;->mTTID:Ljava/lang/String;

    goto :goto_0

    .line 303
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getUTDID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    sget-object v0, Lc8/EHf;->mUTDID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lc8/EHf;->mUTDID:Ljava/lang/String;

    .line 282
    :goto_0
    return-object v0

    .line 278
    :cond_0
    sget-object v0, Lc8/EHf;->mEnvironment:Lc8/sHf;

    if-eqz v0, :cond_1

    .line 279
    sget-object v0, Lc8/EHf;->mEnvironment:Lc8/sHf;

    sget-object v1, Lc8/EHf;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lc8/sHf;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 280
    sput-object v0, Lc8/EHf;->mUTDID:Ljava/lang/String;

    goto :goto_0

    .line 282
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getUserNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lc8/EHf;->mUserNick:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileDirs"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 67
    if-eqz p0, :cond_3

    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 70
    sput-object v5, Lc8/EHf;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lc8/EHf;->isApkDebugable(Landroid/content/Context;)Z

    move-result v5

    sput-boolean v5, Lc8/EHf;->mIsDebug:Z

    .line 71
    sget-object v5, Lc8/EHf;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 72
    sget-object v5, Lc8/EHf;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lc8/EHf;->mPath:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 78
    const-string/jumbo v5, "logs"

    sput-object v5, Lc8/EHf;->mDirs:Ljava/lang/String;

    .line 83
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    sput-object p2, Lc8/zHf;->FILE_PREFIX:Ljava/lang/String;

    .line 87
    :cond_0
    new-instance v5, Lc8/CHf;

    invoke-direct {v5}, Lc8/CHf;-><init>()V

    sput-object v5, Lc8/EHf;->mConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v2, "connectFilter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    sget-object v5, Lc8/EHf;->mContext:Landroid/content/Context;

    sget-object v6, Lc8/EHf;->mConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    new-instance v5, Lc8/DHf;

    invoke-direct {v5}, Lc8/DHf;-><init>()V

    invoke-virtual {p0, v5}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 92
    instance-of v5, p0, Landroid/app/Application;

    if-eqz v5, :cond_1

    .line 93
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    move-object v5, v0

    new-instance v6, Lc8/hIf;

    invoke-direct {v6}, Lc8/hIf;-><init>()V

    invoke-virtual {v5, v6}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 95
    :cond_1
    sget-object v5, Lc8/EHf;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lc8/IHf;->isMainProcess(Landroid/content/Context;)Z

    move-result v5

    .line 96
    sput-boolean v5, Lc8/EHf;->mIsMainProcess:Z

    if-nez v5, :cond_2

    .line 97
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "tlog_multi_process_message"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 98
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    sget-object v5, Lc8/EHf;->mContext:Landroid/content/Context;

    new-instance v6, Lc8/vHf;

    invoke-direct {v6}, Lc8/vHf;-><init>()V

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    sput-object p3, Lc8/EHf;->mAppkey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :try_start_1
    invoke-static {p0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 103
    .local v1, "component":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    const/16 v5, 0x10

    sget-object v6, Lc8/EHf;->mAppkey:Ljava/lang/String;

    const-string/jumbo v7, "t_remote_debugger"

    const-string/jumbo v8, ""

    invoke-interface {v1, v5, v6, v7, v8}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lc8/EHf;->mSecretKey:Ljava/lang/String;
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .end local v1    # "component":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v2    # "connectFilter":Landroid/content/IntentFilter;
    :cond_3
    :goto_1
    return-void

    .line 74
    :cond_4
    const/4 v5, 0x0

    :try_start_2
    sput-object v5, Lc8/EHf;->mPath:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v5

    sput-object v9, Lc8/EHf;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 80
    :cond_5
    :try_start_3
    sput-object p1, Lc8/EHf;->mDirs:Ljava/lang/String;

    goto :goto_0

    .line 104
    .restart local v2    # "connectFilter":Landroid/content/IntentFilter;
    :catch_1
    move-exception v3

    .line 105
    .local v3, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private static isApkDebugable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 141
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 144
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isDebugable()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lc8/EHf;->mIsDebug:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lc8/EHf;->isForceOpenConsole:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openConsole(Z)V
    .locals 0
    .param p0, "isOpen"    # Z

    .prologue
    .line 457
    sput-boolean p0, Lc8/EHf;->isForceOpenConsole:Z

    .line 458
    return-void
.end method

.method public static registAccsDataListener()V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lc8/EHf;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lc8/EHf;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/qHf;->init(Landroid/content/Context;)V

    .line 136
    :cond_0
    return-void
.end method

.method public static registerCommandParser(Ljava/lang/String;Lc8/rHf;)V
    .locals 1
    .param p0, "parserName"    # Ljava/lang/String;
    .param p1, "listener"    # Lc8/rHf;

    .prologue
    .line 363
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    sget-object v0, Lc8/EHf;->mCommandParser:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "appKey"    # Ljava/lang/String;

    .prologue
    .line 246
    sput-object p0, Lc8/EHf;->mAppkey:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 309
    sput-object p0, Lc8/EHf;->mAppVersion:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public static setCryptAutoCode(Ljava/lang/String;)V
    .locals 5
    .param p0, "authCode"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    :try_start_0
    sget-object v2, Lc8/EHf;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 125
    .local v0, "component":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    const/16 v2, 0x10

    sget-object v3, Lc8/EHf;->mAppkey:Ljava/lang/String;

    const-string/jumbo v4, "t_remote_debugger"

    invoke-interface {v0, v2, v3, v4, p0}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lc8/EHf;->mSecretKey:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v0    # "component":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setDeadlineTime(J)V
    .locals 0
    .param p0, "deadlineTime"    # J

    .prologue
    .line 377
    sput-wide p0, Lc8/EHf;->mEndOfToday:J

    .line 378
    return-void
.end method

.method public static setEnvironment(Lc8/sHf;)V
    .locals 0
    .param p0, "environment"    # Lc8/sHf;

    .prologue
    .line 326
    sput-object p0, Lc8/EHf;->mEnvironment:Lc8/sHf;

    .line 327
    return-void
.end method

.method public static setLogFileSizeAndCount(JI)V
    .locals 0
    .param p0, "size"    # J
    .param p2, "count"    # I

    .prologue
    .line 115
    invoke-static {p2}, Lc8/IHf;->setLogFileCount(I)V

    .line 116
    invoke-static {p0, p1}, Lc8/gIf;->setLogFileSize(J)V

    .line 117
    return-void
.end method

.method public static setLogFileStrategy(Lcom/taobao/tao/log/TLogFileSaveStrategy;)V
    .locals 0
    .param p0, "strategy"    # Lcom/taobao/tao/log/TLogFileSaveStrategy;

    .prologue
    .line 238
    sput-object p0, Lc8/EHf;->mStrategy:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    .line 239
    return-void
.end method

.method public static setLogFileUploader(Landroid/content/Context;Lc8/THf;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logFileUploader"    # Lc8/THf;

    .prologue
    .line 156
    invoke-static {p0}, Lc8/SHf;->getInstances(Landroid/content/Context;)Lc8/SHf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/SHf;->setLogFileUploader(Lc8/THf;)V

    .line 157
    return-void
.end method

.method public static setMaxMemoryLimit(J)V
    .locals 2
    .param p0, "size"    # J

    .prologue
    .line 234
    invoke-static {}, Lc8/eIf;->getInstance()Lc8/eIf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/eIf;->setMemoryLimit(J)V

    .line 235
    return-void
.end method

.method public static setTLogController(Lc8/tHf;)V
    .locals 0
    .param p0, "controller"    # Lc8/tHf;

    .prologue
    .line 152
    sput-object p0, Lc8/EHf;->mController:Lc8/tHf;

    .line 153
    return-void
.end method

.method public static setTLogResponse(Lc8/uHf;)V
    .locals 0
    .param p0, "response"    # Lc8/uHf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 339
    sput-object p0, Lc8/EHf;->mResponse:Lc8/uHf;

    .line 340
    return-void
.end method

.method public static setTTID(Ljava/lang/String;)V
    .locals 0
    .param p0, "ttid"    # Ljava/lang/String;

    .prologue
    .line 288
    sput-object p0, Lc8/EHf;->mTTID:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public static setUserNick(Ljava/lang/String;)V
    .locals 0
    .param p0, "userNick"    # Ljava/lang/String;

    .prologue
    .line 330
    sput-object p0, Lc8/EHf;->mUserNick:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public static setUtdid(Ljava/lang/String;)V
    .locals 0
    .param p0, "utdid"    # Ljava/lang/String;

    .prologue
    .line 271
    sput-object p0, Lc8/EHf;->mUTDID:Ljava/lang/String;

    .line 272
    return-void
.end method
