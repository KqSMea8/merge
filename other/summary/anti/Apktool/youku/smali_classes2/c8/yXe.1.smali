.class public Lc8/yXe;
.super Ljava/lang/Object;
.source "AVFSAdapterManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AVFSAdapterManager"

.field private static volatile sInstance:Lc8/yXe;


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mDBFactory:Lc8/AXe;

.field private final mHandler:Landroid/os/Handler;

.field private final mInitRunnable:Ljava/lang/Runnable;

.field private volatile mInitialized:Z

.field private mMonitor:Lc8/HXe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lc8/yXe;->sInstance:Lc8/yXe;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/yXe;->mInitialized:Z

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/yXe;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lc8/xXe;

    invoke-direct {v0, p0}, Lc8/xXe;-><init>(Lc8/yXe;)V

    iput-object v0, p0, Lc8/yXe;->mInitRunnable:Ljava/lang/Runnable;

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

.method static synthetic access$000(Lc8/yXe;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lc8/yXe;

    .prologue
    .line 16
    iget-object v0, p0, Lc8/yXe;->mInitRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lc8/yXe;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lc8/yXe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/yXe;->sInstance:Lc8/yXe;

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lc8/yXe;->sInstance:Lc8/yXe;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lc8/yXe;

    invoke-direct {v0}, Lc8/yXe;-><init>()V

    sput-object v0, Lc8/yXe;->sInstance:Lc8/yXe;

    .line 55
    :cond_0
    sget-object v0, Lc8/yXe;->sInstance:Lc8/yXe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initialize(Landroid/app/Application;Lc8/HXe;Lc8/AXe;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "monitor"    # Lc8/HXe;
    .param p3, "factory"    # Lc8/AXe;

    .prologue
    .line 108
    iput-object p1, p0, Lc8/yXe;->mApplication:Landroid/app/Application;

    .line 110
    if-nez p2, :cond_0

    .line 112
    :try_start_0
    const-string/jumbo v1, "com.alibaba.mtl.appmonitor.AppMonitor"

    invoke-static {v1}, Lc8/yXe;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 113
    const-string/jumbo v1, "com.alibaba.mtl.appmonitor.AppMonitorStatTable"

    invoke-static {v1}, Lc8/yXe;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 114
    new-instance v1, Lc8/MXe;

    invoke-direct {v1}, Lc8/MXe;-><init>()V

    iput-object v1, p0, Lc8/yXe;->mMonitor:Lc8/HXe;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :goto_0
    if-nez p3, :cond_1

    .line 124
    :try_start_1
    const-string/jumbo v1, "com.taobao.android.alivfsdb.AliDB"

    invoke-static {v1}, Lc8/yXe;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 125
    new-instance v1, Lc8/OXe;

    invoke-direct {v1}, Lc8/OXe;-><init>()V

    iput-object v1, p0, Lc8/yXe;->mDBFactory:Lc8/AXe;

    .line 126
    new-instance v1, Lc8/RXe;

    invoke-direct {v1}, Lc8/RXe;-><init>()V

    sput-object v1, Lc8/VYe;->logger:Lc8/rZe;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    :goto_1
    iget-object v1, p0, Lc8/yXe;->mApplication:Landroid/app/Application;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lc8/yXe;->mInitialized:Z

    .line 136
    const-string/jumbo v1, "AVFSAdapterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- AVFSAdapterManager initialize: mInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lc8/yXe;->mInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 119
    :cond_0
    iput-object p2, p0, Lc8/yXe;->mMonitor:Lc8/HXe;

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 129
    new-instance v1, Lc8/EXe;

    invoke-direct {v1}, Lc8/EXe;-><init>()V

    iput-object v1, p0, Lc8/yXe;->mDBFactory:Lc8/AXe;

    goto :goto_1

    .line 132
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    iput-object p3, p0, Lc8/yXe;->mDBFactory:Lc8/AXe;

    goto :goto_1

    .line 135
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 117
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public ensureInitialized()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-boolean v0, p0, Lc8/yXe;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string/jumbo v0, "AVFSAdapterManager"

    const-string/jumbo v1, "- Unexpected: AVFSAdapterManager ensureInitialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lc8/SXe;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lc8/yXe;->ensureInitialized(Landroid/app/Application;Lc8/HXe;Lc8/AXe;)V

    goto :goto_0
.end method

.method public ensureInitialized(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0, v0}, Lc8/yXe;->ensureInitialized(Landroid/app/Application;Lc8/HXe;Lc8/AXe;)V

    .line 64
    return-void
.end method

.method public declared-synchronized ensureInitialized(Landroid/app/Application;Lc8/HXe;Lc8/AXe;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "monitor"    # Lc8/HXe;
    .param p3, "factory"    # Lc8/AXe;

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/yXe;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lc8/yXe;->initialize(Landroid/app/Application;Lc8/HXe;Lc8/AXe;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lc8/yXe;->ensureInitialized()V

    .line 165
    iget-object v0, p0, Lc8/yXe;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "AVFSAdapterManager not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lc8/yXe;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getCacheMonitor()Lc8/HXe;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lc8/yXe;->ensureInitialized()V

    .line 157
    iget-object v0, p0, Lc8/yXe;->mMonitor:Lc8/HXe;

    return-object v0
.end method

.method public getDBFactory()Lc8/AXe;
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lc8/yXe;->ensureInitialized()V

    .line 146
    iget-object v0, p0, Lc8/yXe;->mDBFactory:Lc8/AXe;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "AVFSAdapterManager not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lc8/yXe;->mDBFactory:Lc8/AXe;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lc8/yXe;->mInitialized:Z

    return v0
.end method
