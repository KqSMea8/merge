.class public Lc8/oVe;
.super Ljava/lang/Object;
.source "Variables.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "utdid.db"

.field private static final mInstance:Lc8/oVe;


# instance fields
.field private bGetModeState:Z

.field private volatile bInit:Z

.field private bOldMode:Z

.field private mAppChannel:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDbMgr:Lc8/xVe;

.field private mDeltaTime:J

.field private mOldModeFile:Ljava/io/File;

.field private mPhoneStatePermission:Z

.field private mStoragePermission:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lc8/oVe;

    invoke-direct {v0}, Lc8/oVe;-><init>()V

    sput-object v0, Lc8/oVe;->mInstance:Lc8/oVe;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "testKey"

    iput-object v0, p0, Lc8/oVe;->mAppkey:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/oVe;->mAppChannel:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    .line 26
    iput-object v2, p0, Lc8/oVe;->mDbMgr:Lc8/xVe;

    .line 27
    iput-boolean v1, p0, Lc8/oVe;->bInit:Z

    .line 28
    iput-object v2, p0, Lc8/oVe;->mOldModeFile:Ljava/io/File;

    .line 29
    iput-boolean v1, p0, Lc8/oVe;->bGetModeState:Z

    .line 30
    iput-boolean v1, p0, Lc8/oVe;->bOldMode:Z

    .line 31
    iput-boolean v1, p0, Lc8/oVe;->mStoragePermission:Z

    .line 32
    iput-boolean v1, p0, Lc8/oVe;->mPhoneStatePermission:Z

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/oVe;->mDeltaTime:J

    .line 36
    return-void
.end method

.method public static getInstance()Lc8/oVe;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lc8/oVe;->mInstance:Lc8/oVe;

    return-object v0
.end method


# virtual methods
.method public getAppChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lc8/oVe;->mAppChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lc8/oVe;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentTimeMillis()J
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc8/oVe;->mDeltaTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentTimeMillisString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/oVe;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDbMgr()Lc8/xVe;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lc8/oVe;->mDbMgr:Lc8/xVe;

    return-object v0
.end method

.method public declared-synchronized getOldMode()Z
    .locals 6

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lc8/oVe;->bGetModeState:Z

    if-eqz v2, :cond_0

    .line 104
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lc8/oVe;->bOldMode:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-boolean v2, p0, Lc8/oVe;->bOldMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    monitor-exit p0

    return v2

    .line 109
    :cond_0
    :try_start_1
    iget-object v2, p0, Lc8/oVe;->mOldModeFile:Ljava/io/File;

    if-nez v2, :cond_1

    .line 110
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lc8/gWe;->getOldModeFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc8/oVe;->mOldModeFile:Ljava/io/File;

    .line 112
    :cond_1
    iget-object v2, p0, Lc8/oVe;->mOldModeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 113
    .local v1, "exists":Z
    if-eqz v1, :cond_2

    .line 114
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/oVe;->bOldMode:Z

    .line 115
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "old mode file"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-boolean v2, p0, Lc8/oVe;->bOldMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lc8/oVe;->bGetModeState:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 103
    .end local v1    # "exists":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 121
    .restart local v1    # "exists":Z
    :cond_2
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lc8/oVe;->bGetModeState:Z

    .line 124
    .end local v1    # "exists":Z
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/oVe;->bOldMode:Z

    .line 125
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "new mode file"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-boolean v2, p0, Lc8/oVe;->bOldMode:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lc8/oVe;->bGetModeState:Z

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/oVe;->bGetModeState:Z

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized init()V
    .locals 3

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/oVe;->bInit:Z

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lc8/IVe;->getInstance()Lc8/IVe;

    move-result-object v0

    iget-object v1, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc8/IVe;->startBroadCastReceiver(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lc8/xVe;

    iget-object v1, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "utdid.db"

    invoke-direct {v0, v1, v2}, Lc8/xVe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/oVe;->mDbMgr:Lc8/xVe;

    .line 49
    iget-object v0, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/fWe;->getInstance(Landroid/content/Context;)Lc8/fWe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fWe;->start()V

    .line 50
    iget-object v0, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/RVe;->checkStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/oVe;->mStoragePermission:Z

    .line 51
    iget-object v0, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/RVe;->checkReadPhoneStatePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/oVe;->mPhoneStatePermission:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/oVe;->bInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/oVe;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 58
    if-nez p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/oVe;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 65
    :cond_2
    :try_start_2
    iput-object p1, p0, Lc8/oVe;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "appChannel"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lc8/oVe;->mAppChannel:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iput-object p1, p0, Lc8/oVe;->mAppkey:Ljava/lang/String;

    .line 178
    :cond_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "isDebug"    # Z

    .prologue
    .line 130
    invoke-static {p1}, Lc8/yWe;->setDebug(Z)V

    .line 131
    return-void
.end method

.method public declared-synchronized setOldMode(Z)V
    .locals 6
    .param p1, "oldMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lc8/oVe;->bOldMode:Z

    .line 77
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lc8/oVe;->bOldMode:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    if-eqz p1, :cond_2

    .line 80
    iget-object v2, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/fWe;->getInstance(Landroid/content/Context;)Lc8/fWe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/fWe;->stop()V

    .line 81
    invoke-static {}, Lc8/IVe;->getInstance()Lc8/IVe;

    move-result-object v2

    iget-object v3, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lc8/IVe;->stopBroadCastReceiver(Landroid/content/Context;)V

    .line 88
    :goto_0
    iget-object v2, p0, Lc8/oVe;->mOldModeFile:Ljava/io/File;

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lc8/gWe;->getOldModeFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc8/oVe;->mOldModeFile:Ljava/io/File;

    .line 91
    :cond_0
    iget-object v2, p0, Lc8/oVe;->mOldModeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 92
    .local v1, "exists":Z
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 93
    iget-object v2, p0, Lc8/oVe;->mOldModeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v1    # "exists":Z
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 84
    :cond_2
    :try_start_1
    invoke-static {}, Lc8/IVe;->getInstance()Lc8/IVe;

    move-result-object v2

    iget-object v3, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lc8/IVe;->startBroadCastReceiver(Landroid/content/Context;)V

    .line 85
    iget-object v2, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/fWe;->getInstance(Landroid/content/Context;)Lc8/fWe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/fWe;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 94
    .restart local v1    # "exists":Z
    :cond_3
    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 95
    :try_start_3
    iget-object v2, p0, Lc8/oVe;->mOldModeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setSystemTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    iput-wide v0, p0, Lc8/oVe;->mDeltaTime:J

    .line 194
    return-void
.end method

.method public userGrantPhoneStatePermission()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 161
    iget-object v2, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/RVe;->checkReadPhoneStatePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    .line 162
    .local v0, "currentPermission":Z
    iget-boolean v2, p0, Lc8/oVe;->mPhoneStatePermission:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 163
    iput-boolean v1, p0, Lc8/oVe;->mStoragePermission:Z

    .line 167
    :goto_0
    return v1

    .line 166
    :cond_0
    iput-boolean v0, p0, Lc8/oVe;->mStoragePermission:Z

    .line 167
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userGrantStoragePermission()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 145
    iget-object v2, p0, Lc8/oVe;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/RVe;->checkStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    .line 146
    .local v0, "currentPermission":Z
    iget-boolean v2, p0, Lc8/oVe;->mStoragePermission:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 147
    iput-boolean v1, p0, Lc8/oVe;->mStoragePermission:Z

    .line 151
    :goto_0
    return v1

    .line 150
    :cond_0
    iput-boolean v0, p0, Lc8/oVe;->mStoragePermission:Z

    .line 151
    const/4 v1, 0x0

    goto :goto_0
.end method
