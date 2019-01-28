.class public Lc8/AHf;
.super Ljava/lang/Object;
.source "TLogController.java"

# interfaces
.implements Lc8/tHf;


# static fields
.field private static final DEFAULT_KEY:Ljava/lang/String; = "t_remote_debugger"

.field private static final DEFAULT_TIME:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "TLog.TLogControler"

.field private static instance:Lc8/AHf;


# instance fields
.field private isOpenTLog:Z

.field private isVersionUpdate:Z

.field private mAppSecretKey:Ljava/lang/String;

.field private mAutoClose:Z

.field private mContext:Landroid/content/Context;

.field private mEndTime:J

.field private mLevel:Lcom/taobao/tao/log/LogLevel;

.field private mModulesFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/log/LogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private mParams:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lc8/AHf;

    invoke-direct {v0}, Lc8/AHf;-><init>()V

    sput-object v0, Lc8/AHf;->instance:Lc8/AHf;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    iput-object v0, p0, Lc8/AHf;->mLevel:Lcom/taobao/tao/log/LogLevel;

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/AHf;->mEndTime:J

    .line 36
    iput-boolean v2, p0, Lc8/AHf;->mAutoClose:Z

    .line 41
    iput-boolean v2, p0, Lc8/AHf;->isOpenTLog:Z

    .line 47
    iput-boolean v2, p0, Lc8/AHf;->isVersionUpdate:Z

    .line 56
    return-void
.end method

.method public static getInstance()Lc8/AHf;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lc8/AHf;->instance:Lc8/AHf;

    return-object v0
.end method


# virtual methods
.method public checkLogLength(Ljava/lang/String;)Z
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 312
    iget-object v1, p0, Lc8/AHf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/IHf;->isApkDebugable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkLogLength : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    .line 322
    :cond_0
    return v0
.end method

.method public compress(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 307
    return-object p1
.end method

.method public destroyLog(Z)V
    .locals 1
    .param p1, "isDestroy"    # Z

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    invoke-static {}, Lc8/EHf;->delete()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/AHf;->isOpenTLog:Z

    .line 270
    :cond_0
    return-void
.end method

.method public ecrypted([B)[B
    .locals 3
    .param p1, "input"    # [B

    .prologue
    .line 301
    invoke-static {}, Lc8/EHf;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lc8/IHf;->encryptRC4([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 302
    .local v0, "results":[B
    return-object v0
.end method

.method public ecrypted([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 296
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogLevel(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;
    .locals 2
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-boolean v1, p0, Lc8/AHf;->isOpenTLog:Z

    if-nez v1, :cond_1

    .line 329
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->L:Lcom/taobao/tao/log/LogLevel;

    .line 341
    :cond_0
    :goto_0
    return-object v0

    .line 331
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    iget-object v0, p0, Lc8/AHf;->mLevel:Lcom/taobao/tao/log/LogLevel;

    goto :goto_0

    .line 334
    :cond_2
    const/4 v0, 0x0

    .line 335
    .local v0, "level":Lcom/taobao/tao/log/LogLevel;
    iget-object v1, p0, Lc8/AHf;->mModulesFilter:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 336
    iget-object v1, p0, Lc8/AHf;->mModulesFilter:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "level":Lcom/taobao/tao/log/LogLevel;
    check-cast v0, Lcom/taobao/tao/log/LogLevel;

    .line 338
    .restart local v0    # "level":Lcom/taobao/tao/log/LogLevel;
    :cond_3
    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lc8/AHf;->mLevel:Lcom/taobao/tao/log/LogLevel;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "the context can not be null!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    :cond_0
    iput-object p1, p0, Lc8/AHf;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 65
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "tlog_version"

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 66
    const-string/jumbo v7, "tlog_version"

    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "version":Ljava/lang/String;
    invoke-static {p1}, Lc8/IHf;->getAppBuildVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "currentVersion":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 69
    iput-boolean v9, p0, Lc8/AHf;->isVersionUpdate:Z

    .line 77
    .end local v0    # "currentVersion":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :goto_0
    const-string/jumbo v7, "tlog_switch"

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lc8/AHf;->isVersionUpdate:Z

    if-nez v7, :cond_5

    .line 78
    const-string/jumbo v7, "tlog_switch"

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lc8/AHf;->isOpenTLog:Z

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TLogControler init --> SharePreference get tlogswitch : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lc8/AHf;->isOpenTLog:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    :goto_1
    const-string/jumbo v7, "tlog_level"

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lc8/AHf;->isVersionUpdate:Z

    if-nez v7, :cond_1

    .line 85
    const-string/jumbo v7, "tlog_level"

    const-string/jumbo v8, "ERROR"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "level":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TLogControler init --> SharePreference get tloglevel : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    invoke-virtual {p0, v1}, Lc8/AHf;->setLogLevel(Ljava/lang/String;)V

    .line 90
    .end local v1    # "level":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "tlog_module"

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lc8/AHf;->isVersionUpdate:Z

    if-nez v7, :cond_2

    .line 91
    const-string/jumbo v7, "tlog_module"

    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "modules":Ljava/lang/String;
    invoke-static {v4}, Lc8/IHf;->makeModule(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lc8/AHf;->mModulesFilter:Ljava/util/Map;

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TLogControler init --> SharePreference get tlogModule : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .end local v4    # "modules":Ljava/lang/String;
    :cond_2
    iget-boolean v7, p0, Lc8/AHf;->mAutoClose:Z

    if-eqz v7, :cond_9

    .line 103
    const-string/jumbo v7, "tlog_endtime"

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 104
    const-string/jumbo v7, "tlog_endtime"

    const-wide/16 v8, -0x1

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 105
    .local v2, "endTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TLogController init --> SharePreference get tlogEndTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-gtz v7, :cond_6

    .line 107
    iput-wide v2, p0, Lc8/AHf;->mEndTime:J

    .line 108
    sget-object v7, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    iput-object v7, p0, Lc8/AHf;->mLevel:Lcom/taobao/tao/log/LogLevel;

    .line 121
    .end local v2    # "endTime":J
    :goto_2
    return-void

    .line 71
    .restart local v0    # "currentVersion":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_3
    iput-boolean v10, p0, Lc8/AHf;->isVersionUpdate:Z

    goto/16 :goto_0

    .line 74
    .end local v0    # "currentVersion":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :cond_4
    iput-boolean v10, p0, Lc8/AHf;->isVersionUpdate:Z

    goto/16 :goto_0

    .line 81
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TLogControler init --> default params tlogSwitch : isOpenTLog -->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lc8/AHf;->isOpenTLog:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 109
    .restart local v2    # "endTime":J
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    cmp-long v7, v2, v8

    if-gez v7, :cond_7

    .line 110
    iput-wide v2, p0, Lc8/AHf;->mEndTime:J

    goto :goto_2

    .line 112
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lc8/AHf;->mEndTime:J

    goto :goto_2

    .line 116
    .end local v2    # "endTime":J
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lc8/AHf;->mEndTime:J

    goto :goto_2

    .line 119
    :cond_9
    iput-boolean v9, p0, Lc8/AHf;->mAutoClose:Z

    goto :goto_2
.end method

.method public isFilter(Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;)Z
    .locals 12
    .param p1, "level"    # Lcom/taobao/tao/log/LogLevel;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 132
    iget-boolean v7, p0, Lc8/AHf;->isOpenTLog:Z

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v5, v6

    .line 197
    :cond_1
    :goto_0
    return v5

    .line 137
    :cond_2
    iget-object v7, p0, Lc8/AHf;->mModulesFilter:Ljava/util/Map;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lc8/AHf;->mModulesFilter:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 138
    sget-object v7, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    if-eq p1, v7, :cond_1

    .line 141
    const-string/jumbo v7, "."

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 142
    .local v1, "index":I
    if-ltz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v1, v7, :cond_4

    :cond_3
    move v5, v6

    .line 143
    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "module":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v6

    .line 146
    goto :goto_0

    .line 149
    :cond_5
    iget-object v7, p0, Lc8/AHf;->mModulesFilter:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/tao/log/LogLevel;

    .line 150
    .local v4, "tmpLevel":Lcom/taobao/tao/log/LogLevel;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v7

    invoke-virtual {p1}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v8

    if-lt v7, v8, :cond_6

    .line 151
    iget-boolean v7, p0, Lc8/AHf;->mAutoClose:Z

    if-eqz v7, :cond_1

    .line 152
    iget-wide v8, p0, Lc8/AHf;->mEndTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 157
    iget-object v5, p0, Lc8/AHf;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 158
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "tlog_module"

    const-string/jumbo v7, "off"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    iget-object v5, p0, Lc8/AHf;->mModulesFilter:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    move v5, v6

    .line 162
    goto :goto_0

    .line 167
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v5

    invoke-virtual {p1}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v7

    if-ge v5, v7, :cond_7

    move v5, v6

    .line 168
    goto :goto_0

    :cond_7
    move v5, v6

    .line 170
    goto/16 :goto_0

    .line 175
    .end local v1    # "index":I
    .end local v2    # "module":Ljava/lang/String;
    .end local v4    # "tmpLevel":Lcom/taobao/tao/log/LogLevel;
    :cond_8
    iget-object v7, p0, Lc8/AHf;->mModulesFilter:Ljava/util/Map;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lc8/AHf;->mModulesFilter:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    iget-object v7, p0, Lc8/AHf;->mLevel:Lcom/taobao/tao/log/LogLevel;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lc8/AHf;->mLevel:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v7}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v7

    invoke-virtual {p1}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v8

    if-lt v7, v8, :cond_a

    .line 176
    iget-object v7, p0, Lc8/AHf;->mLevel:Lcom/taobao/tao/log/LogLevel;

    sget-object v8, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    if-eq v7, v8, :cond_1

    .line 179
    iget-boolean v7, p0, Lc8/AHf;->mAutoClose:Z

    if-eqz v7, :cond_1

    .line 180
    iget-wide v8, p0, Lc8/AHf;->mEndTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 183
    sget-object v5, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    iput-object v5, p0, Lc8/AHf;->mLevel:Lcom/taobao/tao/log/LogLevel;

    .line 184
    iget-object v5, p0, Lc8/AHf;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 185
    .restart local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "tlog_level"

    const-string/jumbo v7, "ERROR"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v5, v6

    .line 188
    goto/16 :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_a
    move v5, v6

    .line 197
    goto/16 :goto_0
.end method

.method public isOpenLog()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lc8/AHf;->isOpenTLog:Z

    return v0
.end method

.method public openAutoClose(Z)V
    .locals 0
    .param p1, "isAuto"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lc8/AHf;->mAutoClose:Z

    .line 248
    return-void
.end method

.method public openLog(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lc8/AHf;->isOpenTLog:Z

    .line 257
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 239
    iput-wide p1, p0, Lc8/AHf;->mEndTime:J

    .line 240
    return-void
.end method

.method public native setLogLevel(I)V
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {p1}, Lc8/IHf;->convertLogLevel(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;

    move-result-object v0

    iput-object v0, p0, Lc8/AHf;->mLevel:Lcom/taobao/tao/log/LogLevel;

    .line 213
    iget-object v0, p0, Lc8/AHf;->mLevel:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v0}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v0

    sget-object v1, Lcom/taobao/tao/log/LogLevel;->I:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v1}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 214
    invoke-static {}, Lc8/eIf;->getInstance()Lc8/eIf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/eIf;->setThreadPriority(I)V

    .line 220
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lc8/AHf;->mLevel:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v0}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/AHf;->setLogLevel(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_1
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lc8/AHf;->mLevel:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v0}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v0

    sget-object v1, Lcom/taobao/tao/log/LogLevel;->W:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v1}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 216
    invoke-static {}, Lc8/eIf;->getInstance()Lc8/eIf;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lc8/eIf;->setThreadPriority(I)V

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setModuleFilter(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/log/LogLevel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;>;"
    iput-object p1, p0, Lc8/AHf;->mModulesFilter:Ljava/util/Map;

    .line 204
    return-void
.end method
