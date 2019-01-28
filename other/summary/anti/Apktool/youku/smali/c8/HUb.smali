.class public Lc8/HUb;
.super Ljava/lang/Object;
.source "MotuWatch.java"


# static fields
.field private static instance:Lc8/HUb;


# instance fields
.field private isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mainLooperHandler:Lc8/KUb;

.field private myWatchListenerList:Ljava/util/List;

.field private watchConfig:Lc8/IUb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lc8/HUb;->instance:Lc8/HUb;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/HUb;->isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    iput-object v2, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    .line 21
    iput-object v2, p0, Lc8/HUb;->mainLooperHandler:Lc8/KUb;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/HUb;->myWatchListenerList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lc8/HUb;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lc8/HUb;->instance:Lc8/HUb;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lc8/HUb;->initMotuWatch()Lc8/HUb;

    .line 35
    :cond_0
    sget-object v0, Lc8/HUb;->instance:Lc8/HUb;

    return-object v0
.end method

.method private static declared-synchronized initMotuWatch()Lc8/HUb;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lc8/HUb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/HUb;->instance:Lc8/HUb;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lc8/HUb;

    invoke-direct {v0}, Lc8/HUb;-><init>()V

    sput-object v0, Lc8/HUb;->instance:Lc8/HUb;

    .line 29
    :cond_0
    sget-object v0, Lc8/HUb;->instance:Lc8/HUb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public closeMainLoopMonitor()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/IUb;->closeMainLooperMonitor:Z

    .line 113
    :cond_0
    return-void
.end method

.method public closeMainLooperSampling()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/IUb;->isCloseMainLooperSampling:Z

    .line 104
    :cond_0
    return-void
.end method

.method public enableWatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "isCloseSampling"    # Ljava/lang/Boolean;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 39
    iget-object v3, p0, Lc8/HUb;->isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 41
    iget-object v3, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    if-nez v3, :cond_0

    .line 42
    new-instance v3, Lc8/IUb;

    invoke-direct {v3}, Lc8/IUb;-><init>()V

    iput-object v3, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    .line 45
    :cond_0
    move-object v2, p2

    .line 47
    .local v2, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 48
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v3, "com.taobao.taobao"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 50
    .local v1, "packageVersion":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 52
    move-object v2, v1

    .line 60
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "packageVersion":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v3, Lc8/IUb;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "appVersion is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    sget-object v3, Lc8/IUb;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "real Version is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    iget-object v3, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    invoke-virtual {p0, v2}, Lc8/HUb;->isBetaVersion(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lc8/IUb;->isBetaVersion:Z

    .line 64
    iget-object v3, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lc8/IUb;->isCloseMainLooperSampling:Z

    .line 66
    iget-object v3, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    iget-boolean v3, v3, Lc8/IUb;->enableCatchMainLoopException:Z

    if-eqz v3, :cond_2

    .line 67
    new-instance v3, Lc8/KUb;

    iget-object v4, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    invoke-direct {v3, p1, v4}, Lc8/KUb;-><init>(Landroid/content/Context;Lc8/IUb;)V

    iput-object v3, p0, Lc8/HUb;->mainLooperHandler:Lc8/KUb;

    .line 73
    .end local v2    # "version":Ljava/lang/String;
    :cond_2
    :goto_1
    return v6

    .line 57
    .restart local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v3

    sget-object v3, Lc8/IUb;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 70
    .end local v2    # "version":Ljava/lang/String;
    :cond_3
    sget-object v3, Lc8/IUb;->TAG:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMyWatchListenerList()Ljava/util/List;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lc8/HUb;->myWatchListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getWatchConfig()Lc8/IUb;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lc8/IUb;

    invoke-direct {v0}, Lc8/IUb;-><init>()V

    iput-object v0, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    .line 80
    :cond_0
    iget-object v0, p0, Lc8/HUb;->watchConfig:Lc8/IUb;

    return-object v0
.end method

.method public isBetaVersion(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 117
    :try_start_0
    const-string/jumbo v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "strarray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 119
    const/4 v2, 0x1

    .line 124
    .end local v1    # "strarray":[Ljava/lang/String;
    :goto_0
    return v2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lc8/IUb;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "is beta version err"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setMyWatchListenerList(Lc8/GUb;)V
    .locals 3
    .param p1, "watchListener"    # Lc8/GUb;

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lc8/HUb;->myWatchListenerList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lc8/HUb;->myWatchListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lc8/IUb;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set my watch listener err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
