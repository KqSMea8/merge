.class public final Lc8/Wko;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static sProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInvoker()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "method":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 131
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 132
    .local v0, "abc":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-le v3, v5, :cond_0

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_0
    return-object v1
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    sget-object v8, Lc8/Wko;->sProcessName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 75
    sget-object v8, Lc8/Wko;->sProcessName:Ljava/lang/String;

    .line 110
    :goto_0
    return-object v8

    .line 77
    :cond_0
    const-class v9, Lc8/Wko;

    monitor-enter v9

    .line 78
    :try_start_0
    sget-object v8, Lc8/Wko;->sProcessName:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 79
    sget-object v8, Lc8/Wko;->sProcessName:Ljava/lang/String;

    monitor-exit v9

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 81
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 82
    .local v6, "pid":I
    const/4 v3, 0x0

    .line 84
    .local v3, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    .end local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v4, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v7, "processName":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v2

    .local v2, "c":I
    if-lez v2, :cond_4

    .line 88
    int-to-char v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 92
    .end local v2    # "c":I
    .end local v7    # "processName":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 93
    .end local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    if-eqz v3, :cond_2

    .line 97
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 103
    :cond_2
    :goto_3
    :try_start_6
    const-string/jumbo v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 104
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 105
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v10, v6, :cond_3

    .line 106
    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 107
    sput-object v8, Lc8/Wko;->sProcessName:Ljava/lang/String;

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 90
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "c":I
    .restart local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v7    # "processName":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 91
    sput-object v8, Lc8/Wko;->sProcessName:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 96
    if-eqz v4, :cond_5

    .line 97
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 101
    :cond_5
    :goto_4
    :try_start_9
    monitor-exit v9

    goto/16 :goto_0

    .line 99
    :catch_1
    move-exception v5

    .line 100
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 99
    .end local v2    # "c":I
    .end local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v7    # "processName":Ljava/lang/StringBuilder;
    .restart local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    .line 100
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 95
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    .line 96
    :goto_5
    if-eqz v3, :cond_6

    .line 97
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 101
    :cond_6
    :goto_6
    :try_start_b
    throw v8

    .line 99
    :catch_3
    move-exception v5

    .line 100
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 110
    .restart local v0    # "am":Landroid/app/ActivityManager;
    :cond_7
    const/4 v8, 0x0

    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 95
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 92
    :catch_4
    move-exception v5

    goto :goto_2
.end method

.method public static getRunningInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "runningInfo":Ljava/lang/String;
    :try_start_0
    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string/jumbo v3, "[%s, %d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 120
    invoke-static {p0}, Lc8/Wko;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 117
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static initResult(Lc8/Mko;)Lc8/Pko;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/Pko;",
            ">(",
            "Lc8/Mko",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "aCallback":Lc8/Mko;, "Lcom/youku/usercenter/passport/api/callback/IRequestCallback<TT;>;"
    const/4 v8, 0x0

    .line 139
    if-nez p0, :cond_1

    .line 140
    const/4 v5, 0x0

    .line 172
    :cond_0
    :goto_0
    return-object v5

    .line 143
    :cond_1
    const/4 v5, 0x0

    .line 146
    .local v5, "result":Lc8/Pko;, "TT;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 148
    .local v6, "thisClass":Ljava/lang/Class;
    :goto_1
    if-eqz v6, :cond_0

    const-class v7, Ljava/lang/Object;

    if-eq v6, v7, :cond_0

    .line 150
    invoke-virtual {v6}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 152
    .local v3, "interfaces":[Ljava/lang/reflect/Type;
    array-length v9, v3

    move v7, v8

    :goto_2
    if-ge v7, v9, :cond_2

    aget-object v2, v3, v7

    .line 153
    .local v2, "i":Ljava/lang/reflect/Type;
    instance-of v10, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_3

    .line 154
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v4, v0

    .line 155
    .local v4, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v10

    const-class v11, Lc8/Mko;

    if-ne v10, v11, :cond_3

    .line 156
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v1, v7, v9

    check-cast v1, Ljava/lang/Class;

    .line 157
    .local v1, "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lc8/Pko;

    move-object v5, v0

    .line 163
    .end local v1    # "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v2    # "i":Ljava/lang/reflect/Type;
    .end local v4    # "pt":Ljava/lang/reflect/ParameterizedType;
    :cond_2
    if-nez v5, :cond_0

    .line 167
    invoke-virtual {v6}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v6

    .end local v6    # "thisClass":Ljava/lang/Class;
    check-cast v6, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v6    # "thisClass":Ljava/lang/Class;
    goto :goto_1

    .line 152
    .restart local v2    # "i":Ljava/lang/reflect/Type;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 170
    .end local v2    # "i":Ljava/lang/reflect/Type;
    .end local v3    # "interfaces":[Ljava/lang/reflect/Type;
    .end local v6    # "thisClass":Ljava/lang/Class;
    :catch_0
    move-exception v7

    const-string/jumbo v7, "YKLogin.PassportSDK-Api"

    const-string/jumbo v8, "Initiate T extends SNSBindInfo fails"

    invoke-static {v7, v8}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static readThreadStack()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 41
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 42
    .local v3, "stackTrace":[Ljava/lang/StackTraceElement;
    if-nez v3, :cond_0

    .line 53
    :goto_0
    return-object v4

    .line 45
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v2, "stackInfo":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 47
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 50
    .end local v1    # "i":I
    .end local v2    # "stackInfo":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static uploadTlogFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aType"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "type"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v2, "YKLogin.PassportSDK-Api"

    const-string/jumbo v3, " upload tlog!"

    invoke-static {v2, v3}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p0, v1}, Lc8/jOf;->uploadLogFile(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
