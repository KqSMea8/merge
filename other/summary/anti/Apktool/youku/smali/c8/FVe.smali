.class public Lc8/FVe;
.super Ljava/lang/Object;
.source "AppUtdid.java"


# static fields
.field private static final V5:I = 0x5

.field private static final mInstance:Lc8/FVe;


# instance fields
.field private mAppUtdid:Ljava/lang/String;

.field private mUtdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lc8/FVe;

    invoke-direct {v0}, Lc8/FVe;-><init>()V

    sput-object v0, Lc8/FVe;->mInstance:Lc8/FVe;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/FVe;->mAppUtdid:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/FVe;->mUtdid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lc8/FVe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/FVe;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/FVe;->mAppUtdid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/FVe;)V
    .locals 0
    .param p0, "x0"    # Lc8/FVe;

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/FVe;->writeSdcardDevice()V

    return-void
.end method

.method public static getInstance()Lc8/FVe;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lc8/FVe;->mInstance:Lc8/FVe;

    return-object v0
.end method

.method private getV5Utdid()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x5

    .line 83
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v9

    invoke-virtual {v9}, Lc8/oVe;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 85
    const-string/jumbo v2, ""

    .line 159
    :cond_0
    :goto_0
    return-object v2

    .line 88
    :cond_1
    invoke-static {}, Lc8/jWe;->isBelowMVersion()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 89
    invoke-static {v0}, Lc8/gWe;->getUtdidFromSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "utdidFromSettings":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 91
    invoke-static {v3}, Lc8/GVe;->decode(Ljava/lang/String;)Lc8/HVe;

    move-result-object v4

    .line 92
    .local v4, "utdidObj":Lc8/HVe;
    invoke-virtual {v4}, Lc8/HVe;->isValid()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Lc8/HVe;->getVersion()I

    move-result v9

    if-ne v9, v12, :cond_2

    .line 93
    invoke-static {v3}, Lc8/gWe;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 94
    invoke-static {v3}, Lc8/gWe;->writeSdcardUtdidFile(Ljava/lang/String;)V

    move-object v2, v3

    .line 95
    goto :goto_0

    .line 100
    .end local v3    # "utdidFromSettings":Ljava/lang/String;
    .end local v4    # "utdidObj":Lc8/HVe;
    :cond_2
    invoke-static {}, Lc8/gWe;->readSdcardUtdidFile()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "utdidFromSdcard":Ljava/lang/String;
    invoke-static {}, Lc8/gWe;->readAppUtdidFile()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "utdidFromApp":Ljava/lang/String;
    const/4 v8, 0x0

    .line 103
    .local v8, "utdidObjFromSdcard":Lc8/HVe;
    const-wide/16 v10, 0x0

    .line 105
    .local v10, "utdidObjFromSdcardTimestamp":J
    const-wide/16 v6, 0x0

    .line 106
    .local v6, "utdidObjFromAppTimestamp":J
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 107
    invoke-static {v2}, Lc8/GVe;->decode(Ljava/lang/String;)Lc8/HVe;

    move-result-object v8

    .line 109
    if-eqz v8, :cond_3

    .line 110
    invoke-virtual {v8}, Lc8/HVe;->getVersion()I

    move-result v9

    if-eq v9, v12, :cond_5

    .line 111
    const-string/jumbo v2, ""

    .line 112
    const-string/jumbo v9, ""

    invoke-static {v9}, Lc8/gWe;->writeSdcardUtdidFile(Ljava/lang/String;)V

    .line 119
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 121
    move-object v5, v8

    .line 126
    .local v5, "utdidObjFromApp":Lc8/HVe;
    :goto_2
    if-eqz v5, :cond_4

    .line 127
    invoke-virtual {v5}, Lc8/HVe;->getVersion()I

    move-result v9

    if-eq v9, v12, :cond_7

    .line 128
    const-string/jumbo v1, ""

    .line 129
    const-string/jumbo v9, ""

    invoke-static {v9}, Lc8/gWe;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 136
    .end local v5    # "utdidObjFromApp":Lc8/HVe;
    :cond_4
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 140
    cmp-long v9, v10, v6

    if-ltz v9, :cond_8

    .line 141
    invoke-static {v2}, Lc8/gWe;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 142
    invoke-static {v0, v2}, Lc8/gWe;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_5
    invoke-virtual {v8}, Lc8/HVe;->getTimestamp()J

    move-result-wide v10

    goto :goto_1

    .line 123
    :cond_6
    invoke-static {v1}, Lc8/GVe;->decode(Ljava/lang/String;)Lc8/HVe;

    move-result-object v5

    .restart local v5    # "utdidObjFromApp":Lc8/HVe;
    goto :goto_2

    .line 131
    :cond_7
    invoke-virtual {v5}, Lc8/HVe;->getTimestamp()J

    move-result-wide v6

    goto :goto_3

    .line 145
    .end local v5    # "utdidObjFromApp":Lc8/HVe;
    :cond_8
    invoke-static {v1}, Lc8/gWe;->writeSdcardUtdidFile(Ljava/lang/String;)V

    .line 146
    invoke-static {v0, v1}, Lc8/gWe;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, v1

    .line 147
    goto/16 :goto_0

    .line 150
    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 151
    invoke-static {v2}, Lc8/gWe;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 152
    invoke-static {v0, v2}, Lc8/gWe;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 155
    invoke-static {v1}, Lc8/gWe;->writeSdcardUtdidFile(Ljava/lang/String;)V

    .line 156
    invoke-static {v0, v1}, Lc8/gWe;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, v1

    .line 157
    goto/16 :goto_0

    .line 159
    :cond_b
    const-string/jumbo v2, ""

    goto/16 :goto_0
.end method

.method private uploadAppUtdid()V
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Lc8/yWe;->d()V

    .line 165
    iget-object v1, p0, Lc8/FVe;->mAppUtdid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 169
    :cond_0
    :try_start_0
    invoke-static {}, Lc8/vWe;->getInstance()Lc8/vWe;

    move-result-object v1

    new-instance v2, Lc8/EVe;

    invoke-direct {v2, p0}, Lc8/EVe;-><init>(Lc8/FVe;)V

    invoke-virtual {v1, v2}, Lc8/vWe;->submit(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private writeSdcardDevice()V
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v3

    invoke-virtual {v3}, Lc8/oVe;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 197
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {v0}, Lc8/sVe;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "imei":Ljava/lang/String;
    invoke-static {v0}, Lc8/sVe;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "imsi":Ljava/lang/String;
    invoke-static {v1, v2}, Lc8/WVe;->writeSdcardDeviceModle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getCurrentAppUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/FVe;->mAppUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUtdid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/FVe;->mUtdid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lc8/FVe;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_0
    monitor-exit p0

    return-object v1

    .line 46
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lc8/FVe;->getUtdidFromFile()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "utdid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    invoke-direct {p0}, Lc8/FVe;->uploadAppUtdid()V

    .line 49
    iget-object v1, p0, Lc8/FVe;->mUtdid:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_1
    const-string/jumbo v1, "ffffffffffffffffffffffff"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    .end local v0    # "utdid":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getUtdidFromFile()Ljava/lang/String;
    .locals 7

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Lc8/oWe;->lockUtdidFile()V

    .line 59
    invoke-direct {p0}, Lc8/FVe;->getV5Utdid()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "utdid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read from NewFile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iput-object v1, p0, Lc8/FVe;->mUtdid:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lc8/FVe;->mAppUtdid:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lc8/FVe;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {}, Lc8/oWe;->releaseUtdidFile()V

    .line 79
    .end local v1    # "utdid":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 67
    .restart local v1    # "utdid":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/oVe;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/WWe;->instance(Landroid/content/Context;)Lc8/WWe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/WWe;->getValueForUpdate()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read from OldFile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iput-object v1, p0, Lc8/FVe;->mUtdid:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lc8/FVe;->mAppUtdid:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lc8/FVe;->mUtdid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {}, Lc8/oWe;->releaseUtdidFile()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lc8/oWe;->releaseUtdidFile()V

    .line 79
    .end local v1    # "utdid":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, ""

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lc8/yWe;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    invoke-static {}, Lc8/oWe;->releaseUtdidFile()V

    goto :goto_1

    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-static {}, Lc8/oWe;->releaseUtdidFile()V

    throw v2
.end method

.method public declared-synchronized setAppUtdid(Ljava/lang/String;)V
    .locals 1
    .param p1, "appUtdid"    # Ljava/lang/String;

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc8/FVe;->mAppUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
