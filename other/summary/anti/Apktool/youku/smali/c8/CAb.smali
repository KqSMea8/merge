.class public Lc8/CAb;
.super Ljava/lang/Object;
.source "UTNetWorkStatusChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zAb;,
        Lc8/AAb;,
        Lc8/BAb;
    }
.end annotation


# static fields
.field private static s_instance:Lc8/CAb;


# instance fields
.field private mHandle:Landroid/os/Handler;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/uAb;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkCheckerTask:Lc8/AAb;

.field private mOldAccess:[Ljava/lang/String;

.field private mThread:Landroid/os/HandlerThread;

.field private netStatusReceiver:Lc8/BAb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lc8/CAb;

    invoke-direct {v0}, Lc8/CAb;-><init>()V

    sput-object v0, Lc8/CAb;->s_instance:Lc8/CAb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lc8/CAb;->mHandle:Landroid/os/Handler;

    .line 22
    iput-object v1, p0, Lc8/CAb;->mThread:Landroid/os/HandlerThread;

    .line 23
    new-instance v0, Lc8/AAb;

    invoke-direct {v0, p0}, Lc8/AAb;-><init>(Lc8/CAb;)V

    iput-object v0, p0, Lc8/CAb;->mNetworkCheckerTask:Lc8/AAb;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/CAb;->mListeners:Ljava/util/List;

    .line 54
    iput-object v1, p0, Lc8/CAb;->mOldAccess:[Ljava/lang/String;

    .line 95
    new-instance v0, Lc8/BAb;

    invoke-direct {v0, p0, v1}, Lc8/BAb;-><init>(Lc8/CAb;Lc8/zAb;)V

    iput-object v0, p0, Lc8/CAb;->netStatusReceiver:Lc8/BAb;

    .line 78
    return-void
.end method

.method private _init(Landroid/content/Context;)V
    .locals 5
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 58
    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p0, p1}, Lc8/CAb;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/CAb;->mOldAccess:[Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lc8/CAb;->mOldAccess:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lc8/CAb;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/uAb;

    .line 62
    .local v1, "listener":Lc8/uAb;
    iget-object v2, p0, Lc8/CAb;->mOldAccess:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lc8/CAb;->mOldAccess:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-interface {v1, p1, v2, v3}, Lc8/uAb;->onConnectionChange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lc8/uAb;
    :cond_0
    iget-object v2, p0, Lc8/CAb;->mHandle:Landroid/os/Handler;

    if-nez v2, :cond_1

    iget-object v2, p0, Lc8/CAb;->mThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_1

    .line 66
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "ut_network_check"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc8/CAb;->mThread:Landroid/os/HandlerThread;

    .line 67
    iget-object v2, p0, Lc8/CAb;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lc8/CAb;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lc8/CAb;->mHandle:Landroid/os/Handler;

    .line 71
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lc8/CAb;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/CAb;

    .prologue
    .line 18
    iget-object v0, p0, Lc8/CAb;->mHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lc8/CAb;)Lc8/AAb;
    .locals 1
    .param p0, "x0"    # Lc8/CAb;

    .prologue
    .line 18
    iget-object v0, p0, Lc8/CAb;->mNetworkCheckerTask:Lc8/AAb;

    return-object v0
.end method

.method static synthetic access$300(Lc8/CAb;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/CAb;

    .prologue
    .line 18
    iget-object v0, p0, Lc8/CAb;->mOldAccess:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lc8/CAb;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/CAb;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lc8/CAb;->mOldAccess:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lc8/CAb;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/CAb;

    .prologue
    .line 18
    iget-object v0, p0, Lc8/CAb;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lc8/CAb;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lc8/CAb;->s_instance:Lc8/CAb;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lc8/uAb;)Lc8/CAb;
    .locals 1
    .param p1, "aListener"    # Lc8/uAb;

    .prologue
    .line 81
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lc8/CAb;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lc8/CAb;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-object p0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disable(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    monitor-enter p0

    if-nez p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :cond_1
    :try_start_0
    iget-object v0, p0, Lc8/CAb;->netStatusReceiver:Lc8/BAb;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lc8/CAb;->netStatusReceiver:Lc8/BAb;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    monitor-enter p0

    if-nez p1, :cond_0

    .line 41
    :goto_0
    monitor-exit p0

    return-void

    .line 32
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lc8/CAb;->_init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lc8/CAb;->netStatusReceiver:Lc8/BAb;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 38
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v2, "UTNetWorkStatusChecker"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 29
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getNetworkState(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 152
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "Unknown"

    aput-object v5, v4, v6

    const-string/jumbo v5, "Unknown"

    aput-object v5, v4, v7

    .line 153
    .local v4, "networkstatus":[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v4

    .line 158
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 159
    .local v2, "localPackageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 162
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 163
    .local v1, "localConnectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 167
    .local v3, "nInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v7, v5, :cond_2

    .line 169
    const/4 v5, 0x0

    const-string/jumbo v6, "Wi-Fi"

    aput-object v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v1    # "localConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "localPackageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "nInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "localConnectivityManager":Landroid/net/ConnectivityManager;
    .restart local v2    # "localPackageManager":Landroid/content/pm/PackageManager;
    .restart local v3    # "nInfo":Landroid/net/NetworkInfo;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 171
    const/4 v5, 0x0

    const-string/jumbo v6, "2G/3G"

    aput-object v6, v4, v5

    .line 172
    const/4 v5, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_0

    .line 175
    :cond_3
    const/4 v5, 0x0

    const-string/jumbo v6, "Unknown"

    aput-object v6, v4, v5

    .line 176
    const/4 v5, 0x1

    const-string/jumbo v6, "Unknown"

    aput-object v6, v4, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized removeListener(Lc8/uAb;)V
    .locals 1
    .param p1, "aListener"    # Lc8/uAb;

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/CAb;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lc8/CAb;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
