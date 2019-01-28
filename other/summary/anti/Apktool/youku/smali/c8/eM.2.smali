.class public Lc8/eM;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static accsVersion:I

.field public static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lc8/eM;->accsVersion:I

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lc8/eM;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
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

.method public static getAppContext()Landroid/content/Context;
    .locals 8

    .prologue
    .line 151
    sget-object v3, Lc8/eM;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 152
    sget-object v3, Lc8/eM;->context:Landroid/content/Context;

    .line 165
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    .line 154
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v4, Lc8/eM;

    monitor-enter v4

    .line 155
    :try_start_0
    sget-object v3, Lc8/eM;->context:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 156
    sget-object v3, Lc8/eM;->context:Landroid/content/Context;

    monitor-exit v4

    goto :goto_0

    .line 166
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 159
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string/jumbo v3, "android.app.ActivityThread"

    invoke-static {v3}, Lc8/eM;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 160
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "currentActivityThread"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v5}, Lc8/eM;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 161
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v5, "getApplication"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lc8/eM;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    sput-object v3, Lc8/eM;->context:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v2    # "object":Ljava/lang/Object;
    :goto_1
    :try_start_2
    sget-object v3, Lc8/eM;->context:Landroid/content/Context;

    monitor-exit v4

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "awcn.Utils"

    const-string/jumbo v5, "getAppContext"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v5, v6, v1, v7}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMainProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string/jumbo v0, ""

    .line 62
    .local v0, "processName":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 70
    .end local v0    # "processName":Ljava/lang/String;
    .local v1, "processName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 65
    .end local v1    # "processName":Ljava/lang/String;
    .restart local v0    # "processName":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 70
    .end local v0    # "processName":Ljava/lang/String;
    .restart local v1    # "processName":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "processName":Ljava/lang/String;
    .restart local v0    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getNetworkTimeFactor()F
    .locals 4

    .prologue
    .line 228
    const/high16 v0, 0x3f800000    # 1.0f

    .line 229
    .local v0, "factor":F
    invoke-static {}, Lc8/FK;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v1

    .line 230
    .local v1, "status":Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v1, v2, :cond_0

    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v1, v2, :cond_1

    .line 231
    :cond_0
    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    .line 234
    :cond_1
    invoke-static {}, Lc8/UJ;->getInstance()Lc8/UJ;

    move-result-object v2

    invoke-virtual {v2}, Lc8/UJ;->getNetworkSpeed()I

    move-result v2

    sget-object v3, Lanet/channel/monitor/NetworkSpeed;->Fast:Lanet/channel/monitor/NetworkSpeed;

    invoke-virtual {v3}, Lanet/channel/monitor/NetworkSpeed;->getCode()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 235
    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v0, v2

    .line 237
    :cond_2
    return v0
.end method

.method public static getProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pID"    # I

    .prologue
    const/16 v11, -0x6c

    .line 74
    const-string/jumbo v5, ""

    .line 76
    .local v5, "processName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 77
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 78
    .local v6, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 79
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 80
    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 82
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_0

    .line 83
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 96
    invoke-static {p1}, Lc8/eM;->getProcessNameNew(I)Ljava/lang/String;

    move-result-object v5

    .line 98
    :cond_2
    return-object v5

    .line 88
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v6    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    const/16 v7, -0x6c

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "BuildVersion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/PL;->formatMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "msg":Ljava/lang/String;
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v7

    new-instance v8, Lanet/channel/statist/ExceptionStatistic;

    const/16 v9, -0x6c

    const-string/jumbo v10, "rt"

    invoke-direct {v8, v9, v4, v10}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 91
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v6    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v7

    new-instance v8, Lanet/channel/statist/ExceptionStatistic;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "rt"

    invoke-direct {v8, v11, v9, v10}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    goto :goto_0
.end method

.method private static getProcessNameNew(I)Ljava/lang/String;
    .locals 15
    .param p0, "pid"    # I

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 102
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ps  |  grep  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "cmd":Ljava/lang/String;
    const/4 v2, 0x0

    .line 105
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 107
    .local v5, "localDataOutputStream":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string/jumbo v10, "sh"

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 108
    .local v7, "localProcess":Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .end local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .local v6, "localDataOutputStream":Ljava/io/DataOutputStream;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  &\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 112
    const-string/jumbo v9, "exit\n"

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    .line 116
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 117
    const-string/jumbo v9, "\\s+"

    const-string/jumbo v10, "  "

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    const-string/jumbo v9, "  "

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "temp":[Ljava/lang/String;
    array-length v9, v8

    const/16 v10, 0x9

    if-lt v9, v10, :cond_0

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 120
    const/16 v9, 0x8

    aget-object v9, v8, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    if-eqz v3, :cond_1

    .line 128
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 130
    :cond_1
    if-eqz v6, :cond_2

    .line 131
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_0
    move-object v5, v6

    .end local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    move-object v2, v3

    .line 137
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "localProcess":Ljava/lang/Process;
    .end local v8    # "temp":[Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_1
    return-object v9

    .line 133
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v7    # "localProcess":Ljava/lang/Process;
    .restart local v8    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v10, "awcn.Utils"

    const-string/jumbo v11, "getProcessNameNew "

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v14, v1, v12}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "temp":[Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 128
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 130
    :cond_4
    if-eqz v6, :cond_5

    .line 131
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    move-object v5, v6

    .end local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    move-object v2, v3

    .line 137
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "localProcess":Ljava/lang/Process;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_6
    :goto_2
    const-string/jumbo v9, ""

    goto :goto_1

    .line 133
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v7    # "localProcess":Ljava/lang/Process;
    :catch_1
    move-exception v1

    .line 134
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "awcn.Utils"

    const-string/jumbo v10, "getProcessNameNew "

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v9, v10, v14, v1, v11}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v5, v6

    .end local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    move-object v2, v3

    .line 136
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "localProcess":Ljava/lang/Process;
    :catch_2
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string/jumbo v9, "awcn.Utils"

    const-string/jumbo v10, "getProcessNameNew "

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v1, v12}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    if-eqz v2, :cond_7

    .line 128
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 130
    :cond_7
    if-eqz v5, :cond_6

    .line 131
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 133
    :catch_3
    move-exception v1

    .line 134
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "awcn.Utils"

    const-string/jumbo v10, "getProcessNameNew "

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v9, v10, v14, v1, v11}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 127
    :goto_4
    if-eqz v2, :cond_8

    .line 128
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 130
    :cond_8
    if-eqz v5, :cond_9

    .line 131
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 135
    :cond_9
    :goto_5
    throw v9

    .line 133
    :catch_4
    move-exception v1

    .line 134
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "awcn.Utils"

    const-string/jumbo v11, "getProcessNameNew "

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v14, v1, v12}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "localProcess":Ljava/lang/Process;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 123
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 9
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 186
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    .local v3, "sb":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 190
    .local v4, "stackArray":[Ljava/lang/StackTraceElement;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 191
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 192
    aget-object v1, v4, v2

    .line 193
    .local v1, "element":Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    .end local v2    # "i":I
    .end local v4    # "stackArray":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e1":Ljava/lang/Exception;
    const-string/jumbo v5, "awcn.Utils"

    const-string/jumbo v6, "getStackMsg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v0, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 199
    .end local v0    # "e1":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static varargs invokeStaticMethodThrowException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "param"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 204
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 205
    :cond_0
    const/4 v2, 0x0

    .line 224
    :cond_1
    :goto_0
    return-object v2

    .line 207
    :cond_2
    const/4 v2, 0x0

    .line 209
    .local v2, "ret":Ljava/lang/Object;
    invoke-static {p0}, Lc8/eM;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 211
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz p2, :cond_3

    .line 212
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 216
    .local v1, "method":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v1, :cond_1

    .line 217
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 218
    if-eqz p3, :cond_4

    .line 219
    invoke-static {v1, v0, p3}, Lc8/eM;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 214
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_3
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .restart local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 221
    :cond_4
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lc8/eM;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
