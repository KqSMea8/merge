.class public Lcom/taobao/accs/client/GlobalClientInfo;
.super Ljava/lang/Object;
.source "GlobalClientInfo.java"


# static fields
.field public static final AGOO_SERVICE_ID:Ljava/lang/String; = "agooSend"

.field private static SERVICES:Ljava/util/Map;
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

.field public static final SUPPORT_AUTO_UNIT:Z

.field public static mAgooAppReceiver:Lcom/taobao/accs/IAgooAppReceiver;

.field public static mContext:Landroid/content/Context;

.field public static mCookieSec:Ljava/lang/String;

.field private static volatile mInstance:Lcom/taobao/accs/client/GlobalClientInfo;

.field public static mSupprotElection:Z


# instance fields
.field private LISTENERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/base/AccsAbstractDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppReceiver:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/IAppReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mElectionBlackList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mElectionResult:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

.field private mILoginInfoImpl:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/ILoginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/client/GlobalClientInfo;->mSupprotElection:Z

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 51
    sput-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "agooSend"

    const-string/jumbo v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "agooAck"

    const-string/jumbo v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "agooTokenReport"

    const-string/jumbo v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->LISTENERS:Ljava/util/Map;

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Context is null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    .line 81
    :cond_1
    new-instance v0, Lcom/taobao/accs/client/GlobalClientInfo$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/client/GlobalClientInfo$1;-><init>(Lcom/taobao/accs/client/GlobalClientInfo;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mInstance:Lcom/taobao/accs/client/GlobalClientInfo;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lcom/taobao/accs/client/GlobalClientInfo;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mInstance:Lcom/taobao/accs/client/GlobalClientInfo;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/taobao/accs/client/GlobalClientInfo;

    invoke-direct {v0, p0}, Lcom/taobao/accs/client/GlobalClientInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mInstance:Lcom/taobao/accs/client/GlobalClientInfo;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mInstance:Lcom/taobao/accs/client/GlobalClientInfo;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearLoginInfoImpl()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mILoginInfoImpl:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    return-void
.end method

.method public getActivityManager()Landroid/app/ActivityManager;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mActivityManager:Landroid/app/ActivityManager;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method public getAppReceiver()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/IAppReceiver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mAppReceiver:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getElectionBlackList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mElectionBlackList:Ljava/util/Map;

    return-object v0
.end method

.method public getElectionResult()Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mElectionResult:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    return-object v0
.end method

.method public getListener(Ljava/lang/String;)Lcom/taobao/accs/base/AccsAbstractDataListener;
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->LISTENERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/base/AccsAbstractDataListener;

    return-object v0
.end method

.method public getNick(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "configTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v2, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mILoginInfoImpl:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-object v1

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mILoginInfoImpl:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ILoginInfo;

    .line 149
    .local v0, "loginfo":Lcom/taobao/accs/ILoginInfo;
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lcom/taobao/accs/ILoginInfo;->getNick()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    .line 231
    sget-object v1, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "GlobalClientInfo"

    const-string/jumbo v2, "getPackageInfo"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 189
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->SERVICES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSid(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "configTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v2, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mILoginInfoImpl:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object v1

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mILoginInfoImpl:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ILoginInfo;

    .line 127
    .local v0, "loginfo":Lcom/taobao/accs/ILoginInfo;
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lcom/taobao/accs/ILoginInfo;->getSid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "configTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mILoginInfoImpl:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object v1

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mILoginInfoImpl:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ILoginInfo;

    .line 138
    .local v0, "loginfo":Lcom/taobao/accs/ILoginInfo;
    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Lcom/taobao/accs/ILoginInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public registerListener(Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/taobao/accs/base/AccsAbstractDataListener;

    .prologue
    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->LISTENERS:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "serviceClassName"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->SERVICES:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAppReceiver(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 3
    .param p1, "configTag"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/accs/IAppReceiver;

    .prologue
    .line 156
    if-eqz p2, :cond_0

    .line 157
    move-object v0, p1

    .line 158
    .local v0, "key":Ljava/lang/String;
    instance-of v1, p2, Lcom/taobao/accs/IAgooAppReceiver;

    if-eqz v1, :cond_1

    .line 159
    check-cast p2, Lcom/taobao/accs/IAgooAppReceiver;

    .end local p2    # "callback":Lcom/taobao/accs/IAppReceiver;
    sput-object p2, Lcom/taobao/accs/client/GlobalClientInfo;->mAgooAppReceiver:Lcom/taobao/accs/IAgooAppReceiver;

    .line 168
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v0    # "key":Ljava/lang/String;
    .restart local p2    # "callback":Lcom/taobao/accs/IAppReceiver;
    :cond_1
    iget-object v1, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mAppReceiver:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_2

    .line 163
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mAppReceiver:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mAppReceiver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setElectionBlackList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iput-object p1, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mElectionBlackList:Ljava/util/Map;

    .line 211
    return-void
.end method

.method public setElectionReslt(Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;)V
    .locals 0
    .param p1, "result"    # Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mElectionResult:Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    .line 221
    return-void
.end method

.method public setLoginInfoImpl(Ljava/lang/String;Lcom/taobao/accs/ILoginInfo;)V
    .locals 2
    .param p1, "configTag"    # Ljava/lang/String;
    .param p2, "loginInfoImpl"    # Lcom/taobao/accs/ILoginInfo;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mILoginInfoImpl:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mILoginInfoImpl:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    :cond_0
    if-eqz p2, :cond_1

    .line 114
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->mILoginInfoImpl:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1
    return-void
.end method

.method public unRegisterService(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->SERVICES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unregisterListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->LISTENERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method
