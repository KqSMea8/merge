.class public Lcom/taobao/accs/client/AdapterGlobalClientInfo;
.super Ljava/lang/Object;
.source "AdapterGlobalClientInfo.java"


# static fields
.field public static final SECURITY_OFF:I = 0x2

.field public static final SECURITY_OPEN:I = 0x1

.field public static final SECURITY_TAOBAO:I

.field public static mAgooCustomServiceName:Ljava/lang/String;

.field public static mAuthCode:Ljava/lang/String;

.field public static mChannelProcessName:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static volatile mInstance:Lcom/taobao/accs/client/AdapterGlobalClientInfo;

.field public static mMainProcessName:Ljava/lang/String;

.field public static mProcessNameImpl:Lcom/taobao/accs/IProcessName;

.field public static mSecurityType:I

.field public static mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mSecurityType:I

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mAgooCustomServiceName:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Context is null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mContext:Landroid/content/Context;

    .line 60
    :cond_1
    return-void
.end method

.method public static getAgooCustomServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mAgooCustomServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".TaobaoIntentService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "result":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "AdapterGlobalClientInfo"

    const-string/jumbo v2, "getAgooCustomServiceName"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-object v0

    .line 84
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mAgooCustomServiceName:Ljava/lang/String;

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/AdapterGlobalClientInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mInstance:Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mInstance:Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    invoke-direct {v0, p0}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mInstance:Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mInstance:Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isFirstStartProc()Z
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActivityManager()Landroid/app/ActivityManager;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mActivityManager:Landroid/app/ActivityManager;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method
