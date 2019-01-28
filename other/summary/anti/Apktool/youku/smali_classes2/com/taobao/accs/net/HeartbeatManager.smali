.class public abstract Lcom/taobao/accs/net/HeartbeatManager;
.super Ljava/lang/Object;
.source "HeartbeatManager.java"


# static fields
.field private static final DEFAULT_HB_TIME:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "HeartbeatManager"

.field private static final UPGRADE_TIME:J = 0x6dd918L

.field protected static volatile sInstance:Lcom/taobao/accs/net/HeartbeatManager;

.field private static final values:[I


# instance fields
.field private justUpgrade:Z

.field protected mContext:Landroid/content/Context;

.field private mSmartHbEnabled:Z

.field private nowLevel:I

.field private setLevelTime:J

.field private upgradeFailTimes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/accs/net/HeartbeatManager;->values:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10e
        0x168
        0x1e0
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v4, p0, Lcom/taobao/accs/net/HeartbeatManager;->justUpgrade:Z

    .line 31
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/taobao/accs/net/HeartbeatManager;->upgradeFailTimes:[I

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/accs/net/HeartbeatManager;->mSmartHbEnabled:Z

    .line 41
    :try_start_0
    iput-object p1, p0, Lcom/taobao/accs/net/HeartbeatManager;->mContext:Landroid/content/Context;

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/taobao/accs/net/HeartbeatManager;->nowLevel:I

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/taobao/accs/net/HeartbeatManager;->setLevelTime:J

    .line 44
    invoke-static {}, Lcom/taobao/accs/utl/OrangeAdapter;->isSmartHb()Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/accs/net/HeartbeatManager;->mSmartHbEnabled:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "HeartbeatManager"

    const-string/jumbo v2, "HeartbeatManager"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/taobao/accs/net/HeartbeatManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/taobao/accs/net/HeartbeatManager;->sInstance:Lcom/taobao/accs/net/HeartbeatManager;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/taobao/accs/net/HeartbeatManager;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/taobao/accs/net/HeartbeatManager;->sInstance:Lcom/taobao/accs/net/HeartbeatManager;

    if-nez v0, :cond_0

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    invoke-static {p0}, Lcom/taobao/accs/net/HeartbeatManager;->isJobServiceExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const-string/jumbo v0, "HeartbeatManager"

    const-string/jumbo v2, "hb use job"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    new-instance v0, Lcom/taobao/accs/net/JobHeartBeatMgt;

    invoke-direct {v0, p0}, Lcom/taobao/accs/net/JobHeartBeatMgt;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/accs/net/HeartbeatManager;->sInstance:Lcom/taobao/accs/net/HeartbeatManager;

    .line 63
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lcom/taobao/accs/net/HeartbeatManager;->sInstance:Lcom/taobao/accs/net/HeartbeatManager;

    return-object v0

    .line 59
    :cond_2
    :try_start_1
    const-string/jumbo v0, "HeartbeatManager"

    const-string/jumbo v2, "hb use alarm"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance v0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;

    invoke-direct {v0, p0}, Lcom/taobao/accs/net/AlarmHeartBeatMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/accs/net/HeartbeatManager;->sInstance:Lcom/taobao/accs/net/HeartbeatManager;

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static isJobServiceExist(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/taobao/accs/internal/AccsJobService;

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "HeartbeatManager"

    const-string/jumbo v3, "isJobServiceExist"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getInterval()I
    .locals 3

    .prologue
    .line 101
    const/16 v0, 0x10e

    .line 102
    .local v0, "time":I
    iget-boolean v1, p0, Lcom/taobao/accs/net/HeartbeatManager;->mSmartHbEnabled:Z

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lcom/taobao/accs/net/HeartbeatManager;->values:[I

    iget v2, p0, Lcom/taobao/accs/net/HeartbeatManager;->nowLevel:I

    aget v0, v1, v2

    .line 106
    :cond_0
    invoke-static {}, Lcom/taobao/accs/utl/OrangeAdapter;->isSmartHb()Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/accs/net/HeartbeatManager;->mSmartHbEnabled:Z

    .line 108
    return v0
.end method

.method public onHeartbeatSucc()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    const-string/jumbo v0, "HeartbeatManager"

    const-string/jumbo v1, "onHeartbeatSucc"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/accs/net/HeartbeatManager;->setLevelTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6dd918

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 128
    iget v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->nowLevel:I

    sget-object v1, Lcom/taobao/accs/net/HeartbeatManager;->values:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->upgradeFailTimes:[I

    iget v1, p0, Lcom/taobao/accs/net/HeartbeatManager;->nowLevel:I

    aget v0, v0, v1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 129
    const-string/jumbo v0, "HeartbeatManager"

    const-string/jumbo v1, "upgrade"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->nowLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->nowLevel:I

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->justUpgrade:Z

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->setLevelTime:J

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iput-boolean v4, p0, Lcom/taobao/accs/net/HeartbeatManager;->justUpgrade:Z

    .line 136
    iget-object v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->upgradeFailTimes:[I

    iget v1, p0, Lcom/taobao/accs/net/HeartbeatManager;->nowLevel:I

    aput v4, v0, v1

    goto :goto_0
.end method

.method public onNetworkFail()V
    .locals 3

    .prologue
    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->setLevelTime:J

    .line 122
    const-string/jumbo v0, "HeartbeatManager"

    const-string/jumbo v1, "onNetworkFail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public onNetworkTimeout()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 112
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/taobao/accs/net/HeartbeatManager;->setLevelTime:J

    .line 113
    iget-boolean v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->justUpgrade:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->upgradeFailTimes:[I

    iget v2, p0, Lcom/taobao/accs/net/HeartbeatManager;->nowLevel:I

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 116
    :cond_0
    iget v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->nowLevel:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->nowLevel:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->nowLevel:I

    .line 117
    const-string/jumbo v0, "HeartbeatManager"

    const-string/jumbo v2, "onNetworkTimeout"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    return-void

    :cond_1
    move v0, v1

    .line 116
    goto :goto_0
.end method

.method public resetLevel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    iput v2, p0, Lcom/taobao/accs/net/HeartbeatManager;->nowLevel:I

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/HeartbeatManager;->setLevelTime:J

    .line 143
    const-string/jumbo v0, "HeartbeatManager"

    const-string/jumbo v1, "resetLevel"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public declared-synchronized set()V
    .locals 6

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/taobao/accs/net/HeartbeatManager;->setLevelTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/taobao/accs/net/HeartbeatManager;->setLevelTime:J

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/net/HeartbeatManager;->getInterval()I

    move-result v0

    .line 85
    .local v0, "interval":I
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const-string/jumbo v2, "HeartbeatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_1
    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/HeartbeatManager;->setInner(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0    # "interval":I
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v2, "HeartbeatManager"

    const-string/jumbo v3, "set"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected abstract setInner(I)V
.end method
