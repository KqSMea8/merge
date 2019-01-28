.class public Lc8/fxe;
.super Ljava/lang/Object;
.source "WbAppActivator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/exe;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lc8/fxe;


# instance fields
.field private mAppkey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInstallExecutor:Lc8/Wwe;

.field private mInvokeExecutor:Lc8/Zwe;

.field private volatile mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lc8/fxe;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/fxe;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lc8/fxe;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/fxe;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lc8/Zwe;

    iget-object v1, p0, Lc8/fxe;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/Zwe;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/fxe;->mInvokeExecutor:Lc8/Zwe;

    .line 46
    new-instance v0, Lc8/Wwe;

    iget-object v1, p0, Lc8/fxe;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/Wwe;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/fxe;->mInstallExecutor:Lc8/Wwe;

    .line 47
    iput-object p2, p0, Lc8/fxe;->mAppkey:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lc8/fxe;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/fxe;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lc8/fxe;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/fxe;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200(Lc8/fxe;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/fxe;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/fxe;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lc8/fxe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/fxe;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/fxe;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0, p1}, Lc8/fxe;->requestCmdInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lc8/fxe;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lc8/fxe;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lc8/fxe;->handleInstallCmd(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lc8/fxe;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lc8/fxe;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lc8/fxe;->handleInvokeCmd(Ljava/util/List;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lc8/fxe;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v1, Lc8/fxe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/fxe;->mInstance:Lc8/fxe;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lc8/fxe;

    invoke-direct {v0, p0, p1}, Lc8/fxe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lc8/fxe;->mInstance:Lc8/fxe;

    .line 54
    :cond_0
    sget-object v0, Lc8/fxe;->mInstance:Lc8/fxe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleInstallCmd(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Twe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "installCmds":Ljava/util/List;, "Ljava/util/List<Lcom/sina/weibo/sdk/cmd/AppInstallCmd;>;"
    if-eqz p1, :cond_1

    .line 130
    iget-object v1, p0, Lc8/fxe;->mInstallExecutor:Lc8/Wwe;

    invoke-virtual {v1}, Lc8/Wwe;->start()V

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Twe;

    .line 132
    .local v0, "installCmd":Lc8/Twe;
    iget-object v2, p0, Lc8/fxe;->mInstallExecutor:Lc8/Wwe;

    invoke-virtual {v2, v0}, Lc8/Wwe;->doExecutor(Lc8/Twe;)Z

    goto :goto_0

    .line 134
    .end local v0    # "installCmd":Lc8/Twe;
    :cond_0
    iget-object v1, p0, Lc8/fxe;->mInstallExecutor:Lc8/Wwe;

    invoke-virtual {v1}, Lc8/Wwe;->stop()V

    .line 136
    :cond_1
    return-void
.end method

.method private handleInvokeCmd(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Xwe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "invokeCmds":Ljava/util/List;, "Ljava/util/List<Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;>;"
    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xwe;

    .line 145
    .local v0, "invokeCmd":Lc8/Xwe;
    iget-object v2, p0, Lc8/fxe;->mInvokeExecutor:Lc8/Zwe;

    invoke-virtual {v2, v0}, Lc8/Zwe;->doExecutor(Lc8/Xwe;)Z

    goto :goto_0

    .line 148
    .end local v0    # "invokeCmd":Lc8/Xwe;
    :cond_0
    return-void
.end method

.method private static requestCmdInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "pkgName":Ljava/lang/String;
    invoke-static {p0, v2}, Lc8/Aye;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "keyHash":Ljava/lang/String;
    new-instance v1, Lc8/Fxe;

    invoke-direct {v1, p1}, Lc8/Fxe;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "params":Lc8/Fxe;
    const-string/jumbo v3, "appkey"

    invoke-virtual {v1, v3, p1}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v3, "packagename"

    invoke-virtual {v1, v3, v2}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v3, "key_hash"

    invoke-virtual {v1, v3, v0}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v3, "version"

    const-string/jumbo v4, "0031405000"

    invoke-virtual {v1, v3, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v3, "http://api.weibo.cn/2/client/common_config"

    const-string/jumbo v4, "GET"

    invoke-static {p0, v3, v4, v1}, Lc8/Dxe;->internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public activateApp()V
    .locals 12

    .prologue
    .line 61
    iget-object v7, p0, Lc8/fxe;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lc8/exe;->getWeiboSdkSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 62
    .local v6, "sdkSp":Landroid/content/SharedPreferences;
    iget-object v7, p0, Lc8/fxe;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lc8/exe;->getFrequency(Landroid/content/Context;Landroid/content/SharedPreferences;)J

    move-result-wide v0

    .line 63
    .local v0, "frequency":J
    iget-object v7, p0, Lc8/fxe;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lc8/exe;->getLastTime(Landroid/content/Context;Landroid/content/SharedPreferences;)J

    move-result-wide v2

    .line 64
    .local v2, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 65
    .local v4, "period":J
    cmp-long v7, v4, v0

    if-gez v7, :cond_0

    .line 66
    sget-object v7, Lc8/fxe;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "it\'s only %d ms from last time get cmd"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/qye;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lc8/dxe;

    invoke-direct {v8, p0, v6}, Lc8/dxe;-><init>(Lc8/fxe;Landroid/content/SharedPreferences;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
