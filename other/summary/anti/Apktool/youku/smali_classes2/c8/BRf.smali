.class public Lc8/BRf;
.super Ljava/lang/Object;
.source "UpdateUtils.java"


# static fields
.field private static final APK_UPDATE_COUNT_KEY:Ljava/lang/String; = "key_apk_update_count"

.field private static final DEFAULT_DISABLED_PIDS:Ljava/lang/String; = "1e5aa7a22e8877cd,cef8387f018da8b1,2fd2fd69fdb7a7e9,f849eaccdbe74996,1e47ebb7665b1e31,e1a873413f885861,1bc94352bc0bf7c4,0e26668876500d37,6def26d60f5ad447,652175870a2692dd,c918c4f10bb9c808"

.field private static sCurrentChannelId:Ljava/lang/String;

.field private static sCurrentPid:Ljava/lang/String;

.field private static sCurrentProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2UpdateInfo(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/taobao/update/datasource/local/UpdateInfo;
    .locals 7
    .param p0, "mtlJSON"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 83
    if-nez p0, :cond_1

    .line 84
    const/4 v5, 0x0

    .line 111
    :cond_0
    return-object v5

    .line 87
    :cond_1
    new-instance v5, Lcom/taobao/update/datasource/local/UpdateInfo;

    invoke-direct {v5}, Lcom/taobao/update/datasource/local/UpdateInfo;-><init>()V

    .line 89
    .local v5, "updateInfo":Lcom/taobao/update/datasource/local/UpdateInfo;
    invoke-static {}, Lc8/BRf;->getVersionName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/taobao/update/datasource/local/UpdateInfo;->appVersion:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 95
    .local v3, "object":Ljava/lang/Object;
    if-eqz v3, :cond_2

    instance-of v6, v3, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v6, :cond_2

    move-object v1, v3

    .line 97
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 99
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    new-instance v4, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;

    invoke-direct {v4}, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;-><init>()V

    .line 100
    .local v4, "updateData":Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;
    iput-object v2, v4, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->name:Ljava/lang/String;

    .line 101
    iput-object v1, v4, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->value:Lcom/alibaba/fastjson/JSONObject;

    .line 102
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->valid:Z

    .line 103
    iput-object p1, v4, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->from:Ljava/lang/String;

    .line 105
    iget-object v6, v5, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getDexpatchVersion()J
    .locals 6

    .prologue
    .line 65
    sget-object v3, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 66
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "dexpatch_version"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 67
    .local v0, "dexpatchVersion":J
    return-wide v0
.end method

.method private static getDisablePidList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v2

    const-string/jumbo v3, "update_control"

    const-string/jumbo v4, "apk_update_disabled_pids"

    const-string/jumbo v5, "1e5aa7a22e8877cd,cef8387f018da8b1,2fd2fd69fdb7a7e9,f849eaccdbe74996,1e47ebb7665b1e31,e1a873413f885861,1bc94352bc0bf7c4,0e26668876500d37,6def26d60f5ad447,652175870a2692dd,c918c4f10bb9c808"

    invoke-virtual {v2, v3, v4, v5}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "pids":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "pidsArray":[Ljava/lang/String;
    const-string/jumbo v2, "update-sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pids:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 159
    .end local v1    # "pidsArray":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getHotPatchVersion()J
    .locals 4

    .prologue
    .line 57
    sget-object v1, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-static {v1}, Lc8/ERf;->getInstance(Landroid/content/Context;)Lc8/ERf;

    move-result-object v1

    const-string/jumbo v2, "hotpatch_version"

    invoke-virtual {v1, v2}, Lc8/ERf;->getSP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    const-wide/16 v2, 0x0

    .line 61
    :goto_0
    return-wide v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static declared-synchronized getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    const-class v5, Lc8/BRf;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lc8/BRf;->sCurrentProcessName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 236
    .local v3, "pid":I
    :try_start_1
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 237
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 238
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v3, :cond_0

    .line 239
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v4, Lc8/BRf;->sCurrentProcessName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mActivityManager":Landroid/app/ActivityManager;
    :catch_0
    move-exception v4

    .line 245
    .end local v3    # "pid":I
    :cond_1
    :try_start_2
    sget-object v4, Lc8/BRf;->sCurrentProcessName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v4

    .line 233
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 44
    sget-object v2, Lc8/yRf;->sContext:Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 46
    :try_start_0
    sget-object v2, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 47
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 49
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    const-string/jumbo v2, "1.0.0"

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    const-string/jumbo v2, "1.0.0"

    goto :goto_0
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readPidFromZipFile(Ljava/io/File;)Ljava/lang/String;
    .locals 18
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 165
    const/4 v13, 0x4

    :try_start_0
    new-array v12, v13, [B

    fill-array-data v12, :array_0

    .line 166
    .local v12, "magic_numbers":[B
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v13, "r"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v2, "accessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    .line 169
    .local v10, "index":J
    const/4 v13, 0x4

    new-array v3, v13, [B

    .line 170
    .local v3, "bytes":[B
    const-wide/16 v14, 0x4

    sub-long/2addr v10, v14

    .line 172
    :cond_0
    invoke-virtual {v2, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 173
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 175
    const-wide/16 v14, 0x1

    sub-long/2addr v10, v14

    .line 179
    const/4 v13, 0x0

    aget-byte v13, v3, v13

    const/4 v14, 0x0

    aget-byte v14, v12, v14

    if-ne v13, v14, :cond_1

    const/4 v13, 0x1

    aget-byte v13, v3, v13

    const/4 v14, 0x1

    aget-byte v14, v12, v14

    if-ne v13, v14, :cond_1

    const/4 v13, 0x2

    aget-byte v13, v3, v13

    const/4 v14, 0x2

    aget-byte v14, v12, v14

    if-ne v13, v14, :cond_1

    const/4 v13, 0x3

    aget-byte v13, v3, v13

    const/4 v14, 0x3

    aget-byte v14, v12, v14

    if-eq v13, v14, :cond_2

    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-gez v13, :cond_0

    .line 181
    :cond_2
    const-string/jumbo v13, "update-sdk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "comment magic found index:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", file size:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v13, 0x2

    new-array v5, v13, [B

    .line 184
    .local v5, "commentLengthBytes":[B
    const-wide/16 v14, 0x15

    add-long/2addr v10, v14

    .line 185
    invoke-virtual {v2, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 186
    invoke-virtual {v2, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 188
    const-string/jumbo v13, "update-sdk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "raw_len, 0:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-byte v15, v5, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", 1:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-byte v15, v5, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v13, 0x0

    invoke-static {v5, v13}, Lc8/BRf;->stream2Short([BI)S

    move-result v6

    .line 192
    .local v6, "contentLength":I
    const-string/jumbo v13, "update-sdk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "comment length:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-array v3, v6, [B

    .line 195
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    array-length v13, v3

    int-to-long v0, v13

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    .line 196
    invoke-virtual {v2, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 197
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 199
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v13, "utf-8"

    invoke-direct {v4, v3, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 200
    .local v4, "commentContent":Ljava/lang/String;
    const-string/jumbo v13, "update-sdk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "comment got:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz v4, :cond_4

    const-string/jumbo v13, "ykpid"

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string/jumbo v13, "_"

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 202
    const-string/jumbo v13, "_"

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, "keyvalues":[Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 205
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v13, v9

    if-ge v8, v13, :cond_4

    .line 206
    const-string/jumbo v13, "ykpid"

    aget-object v14, v9, v8

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    array-length v13, v9

    add-int/lit8 v13, v13, -0x1

    if-ge v8, v13, :cond_3

    add-int/lit8 v13, v8, 0x1

    aget-object v13, v9, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v2    # "accessFile":Ljava/io/RandomAccessFile;
    .end local v3    # "bytes":[B
    .end local v4    # "commentContent":Ljava/lang/String;
    .end local v5    # "commentLengthBytes":[B
    .end local v6    # "contentLength":I
    .end local v8    # "i":I
    .end local v9    # "keyvalues":[Ljava/lang/String;
    .end local v10    # "index":J
    .end local v12    # "magic_numbers":[B
    :goto_1
    return-object v13

    .line 205
    .restart local v2    # "accessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "bytes":[B
    .restart local v4    # "commentContent":Ljava/lang/String;
    .restart local v5    # "commentLengthBytes":[B
    .restart local v6    # "contentLength":I
    .restart local v8    # "i":I
    .restart local v9    # "keyvalues":[Ljava/lang/String;
    .restart local v10    # "index":J
    .restart local v12    # "magic_numbers":[B
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "accessFile":Ljava/io/RandomAccessFile;
    .end local v3    # "bytes":[B
    .end local v4    # "commentContent":Ljava/lang/String;
    .end local v5    # "commentLengthBytes":[B
    .end local v6    # "contentLength":I
    .end local v8    # "i":I
    .end local v9    # "keyvalues":[Ljava/lang/String;
    .end local v10    # "index":J
    .end local v12    # "magic_numbers":[B
    :catch_0
    move-exception v7

    .line 211
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 165
    nop

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method public static sendUpdateResult(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "success"    # Z
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v1, Lc8/yRf;->sContext:Landroid/app/Application;

    if-nez v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.taobao.update.UpdateBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "updateType"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const-string/jumbo v1, "errorMsg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    sget-object v1, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private static short2Stream(S)[B
    .locals 2
    .param p0, "data"    # S

    .prologue
    .line 225
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 228
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 229
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static shouldEnableApkUpdate(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-static {p0}, Lc8/ERf;->getInstance(Landroid/content/Context;)Lc8/ERf;

    move-result-object v4

    const-string/jumbo v5, "key_apk_update_count"

    invoke-virtual {v4, v5}, Lc8/ERf;->getSP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "countRaw":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string/jumbo v1, "0"

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 128
    .local v0, "count":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 133
    :goto_0
    sget-object v4, Lc8/BRf;->sCurrentPid:Ljava/lang/String;

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lc8/BRf;->readPidFromZipFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lc8/BRf;->sCurrentPid:Ljava/lang/String;

    .line 135
    :cond_1
    sget-object v4, Lc8/BRf;->sCurrentPid:Ljava/lang/String;

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    if-ge v0, v4, :cond_2

    .line 136
    const-string/jumbo v4, "update-sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lc8/BRf;->sCurrentPid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " found from apk file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lc8/BRf;->getDisablePidList()Ljava/util/List;

    move-result-object v3

    .line 140
    .local v3, "pidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    sget-object v4, Lc8/BRf;->sCurrentPid:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    invoke-static {p0}, Lc8/ERf;->getInstance(Landroid/content/Context;)Lc8/ERf;

    move-result-object v4

    const-string/jumbo v5, "key_apk_update_count"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc8/ERf;->updateSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v4, 0x0

    .line 147
    .end local v3    # "pidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return v4

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static stream2Short([BI)S
    .locals 2
    .param p0, "stream"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 217
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 218
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 219
    aget-byte v1, p0, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 220
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 221
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method
