.class public Lcom/taobao/accs/utl/AdapterUtilityImpl;
.super Ljava/lang/Object;
.source "AdapterUtilityImpl.java"


# static fields
.field public static BACK_APP_KEY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AdapterUtilityImpl"

.field public static final channelService:Ljava/lang/String; = "com.taobao.accs.ChannelService"

.field private static currentProcess:Ljava/lang/String; = null

.field public static mAgooAppSecret:Ljava/lang/String; = null

.field private static mChecked:Z = false

.field private static mIsMainProc:Z = false

.field private static mainProcess:Ljava/lang/String; = null

.field public static final msgService:Ljava/lang/String; = "com.taobao.accs.data.MsgDistributeService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->BACK_APP_KEY:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mainProcess:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->currentProcess:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mIsMainProc:Z

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final checkIsWritable(Ljava/lang/String;I)Z
    .locals 10
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 156
    if-nez p0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v4

    .line 159
    :cond_1
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 160
    .local v3, "st":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    .line 161
    .local v2, "blockSize":I
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 162
    .local v0, "avBlockCount":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "st.getAvailableBlocks()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",st.getAvailableBlocks() * blockSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    int-to-long v8, v2

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    int-to-long v6, v2

    mul-long/2addr v6, v0

    int-to-long v8, p1

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 169
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pID"    # I

    .prologue
    .line 68
    sget-object v4, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mProcessNameImpl:Lcom/taobao/accs/IProcessName;

    if-eqz v4, :cond_1

    .line 69
    sget-object v4, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mProcessNameImpl:Lcom/taobao/accs/IProcessName;

    invoke-interface {v4}, Lcom/taobao/accs/IProcessName;->getCurrProcessName()Ljava/lang/String;

    move-result-object v3

    .line 86
    :cond_0
    return-object v3

    .line 72
    :cond_1
    const-string/jumbo v3, ""

    .line 73
    .local v3, "processName":Ljava/lang/String;
    invoke-static {p0}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v0

    .line 75
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 77
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 80
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_2

    .line 81
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v2, "sb":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 123
    .local v3, "stackArray":[Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 125
    aget-object v0, v3, v1

    .line 126
    .local v0, "element":Ljava/lang/StackTraceElement;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "element":Ljava/lang/StackTraceElement;
    .end local v1    # "i":I
    .end local v3    # "stackArray":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v4

    .line 132
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getUsableSpace()J
    .locals 10

    .prologue
    .line 95
    const-wide/16 v2, -0x1

    .line 97
    .local v2, "result":J
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, "path":Ljava/io/File;
    if-nez v0, :cond_1

    .line 115
    .end local v0    # "path":Ljava/io/File;
    .end local v2    # "result":J
    :cond_0
    :goto_0
    return-wide v2

    .line 101
    .restart local v0    # "path":Ljava/io/File;
    .restart local v2    # "result":J
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_2

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "stats":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v8, v5

    mul-long v2, v6, v8

    goto :goto_0

    .line 112
    .end local v0    # "path":Ljava/io/File;
    .end local v1    # "stats":Landroid/os/StatFs;
    :catch_0
    move-exception v4

    .line 113
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "AdapterUtilityImpl"

    const-string/jumbo v6, "getUsableSpace"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 36
    sget-boolean v3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mChecked:Z

    if-eqz v3, :cond_0

    .line 37
    sget-boolean v3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mIsMainProc:Z

    .line 64
    :goto_0
    return v3

    .line 41
    :cond_0
    :try_start_0
    sget-object v3, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mMainProcessName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 42
    sget-object v3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mainProcess:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    sput-object v3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mainProcess:Ljava/lang/String;

    .line 46
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mainProcess:Ljava/lang/String;

    .line 51
    .local v0, "finalMainProcess":Ljava/lang/String;
    :goto_1
    sget-object v3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->currentProcess:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {p0, v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->currentProcess:Ljava/lang/String;

    .line 56
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->currentProcess:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 58
    sget-object v3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->currentProcess:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mIsMainProc:Z

    .line 59
    const/4 v3, 0x1

    sput-boolean v3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mChecked:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v0    # "finalMainProcess":Ljava/lang/String;
    :cond_3
    :goto_2
    sget-boolean v3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mIsMainProc:Z

    goto :goto_0

    .line 48
    :cond_4
    :try_start_1
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mMainProcessName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "finalMainProcess":Ljava/lang/String;
    goto :goto_1

    .line 61
    .end local v0    # "finalMainProcess":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "AdapterUtilityImpl"

    const-string/jumbo v4, "isMainProcess"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    if-eqz p0, :cond_0

    .line 142
    :try_start_0
    invoke-static {p0}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 144
    .local v1, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 145
    .local v2, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 152
    .end local v1    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isNotificationEnabled(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const-string/jumbo v6, "unknown"

    .line 177
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v11, "appops"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 179
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 181
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "pkg":Ljava/lang/String;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 187
    .local v9, "uid":I
    const-class v11, Landroid/app/AppOpsManager;

    invoke-static {v11}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 189
    .local v2, "appOpsClass":Ljava/lang/Class;
    const-string/jumbo v11, "checkOpNoThrow"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 191
    .local v3, "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v11, "OP_POST_NOTIFICATION"

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 193
    .local v4, "opPostNotificationValue":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 194
    .local v10, "value":I
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v5, v11, v12

    invoke-static {v3, v1, v11}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 195
    .local v7, "ret":I
    if-nez v7, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 199
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "appOpsClass":Ljava/lang/Class;
    .end local v3    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v4    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "ret":I
    .end local v9    # "uid":I
    .end local v10    # "value":I
    :goto_1
    return-object v6

    .line 195
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "appOps":Landroid/app/AppOpsManager;
    .restart local v2    # "appOpsClass":Ljava/lang/Class;
    .restart local v3    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v7    # "ret":I
    .restart local v9    # "uid":I
    .restart local v10    # "value":I
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 196
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "appOpsClass":Ljava/lang/Class;
    .end local v3    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v4    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "ret":I
    .end local v9    # "uid":I
    .end local v10    # "value":I
    :catch_0
    move-exception v8

    .line 197
    .local v8, "t":Ljava/lang/Throwable;
    const-string/jumbo v11, "AdapterUtilityImpl"

    const-string/jumbo v12, "isNotificationEnabled"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v8, v13}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
