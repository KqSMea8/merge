.class public Lc8/Shb;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static CURRENT_PROCESS_NAME:Ljava/lang/String;

.field public static mAppLabel:Ljava/lang/String;

.field public static mAppVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lc8/Shb;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "androidId":Ljava/lang/String;
    return-object v0
.end method

.method public static getAppLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 276
    sget-object v2, Lc8/Shb;->mAppLabel:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 278
    :try_start_0
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 279
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 280
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 281
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lc8/Shb;->mAppVersion:Ljava/lang/String;

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lc8/Shb;->mAppLabel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    sget-object v2, Lc8/Shb;->mAppLabel:Ljava/lang/String;

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0

    .line 288
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    sget-object v3, Lc8/Shb;->mAppVersion:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 259
    :try_start_0
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 260
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 261
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 262
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lc8/Shb;->mAppVersion:Ljava/lang/String;

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc8/Shb;->mAppLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    sget-object v3, Lc8/Shb;->mAppVersion:Ljava/lang/String;

    return-object v3

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCurrentProcessName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 156
    sget-object v5, Lc8/Bgb;->context:Landroid/content/Context;

    if-nez v5, :cond_1

    .line 178
    .local v0, "am":Landroid/app/ActivityManager;
    :cond_0
    :goto_0
    return-object v4

    .line 159
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_1
    sget-object v5, Lc8/Shb;->CURRENT_PROCESS_NAME:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 160
    sget-object v4, Lc8/Shb;->CURRENT_PROCESS_NAME:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_2
    :try_start_0
    sget-object v5, Lc8/Bgb;->context:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 164
    .restart local v0    # "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 165
    .local v3, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_0

    .line 168
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 169
    .local v1, "pid":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 170
    .local v2, "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v1, :cond_3

    .line 171
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v5, Lc8/Shb;->CURRENT_PROCESS_NAME:Ljava/lang/String;

    .line 172
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "pid":I
    .end local v2    # "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getHashString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 182
    if-nez p0, :cond_0

    const-string/jumbo v2, ""

    .line 188
    :goto_0
    return-object v2

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v0, p0, v2

    .line 185
    .local v0, "b":B
    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    and-int/lit8 v4, v0, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "b":B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLocalIPAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "mEnumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 128
    .local v3, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "enumIPAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 132
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v2, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    .line 135
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 144
    .end local v0    # "enumIPAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "intf":Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    .line 140
    :catch_0
    move-exception v1

    .line 142
    .local v1, "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "Error"

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v1    # "ex":Ljava/net/SocketException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getSDCardSize()Ljava/lang/String;
    .locals 10

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "state":Ljava/lang/String;
    const-string/jumbo v7, "mounted"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 218
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 219
    .local v4, "sdcardDir":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 220
    .local v5, "sf":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 221
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v0, v7

    .line 222
    .local v0, "blockCount":J
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    mul-long v8, v2, v0

    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 224
    .end local v0    # "blockCount":J
    .end local v2    # "blockSize":J
    .end local v4    # "sdcardDir":Ljava/io/File;
    .end local v5    # "sf":Landroid/os/StatFs;
    :goto_0
    return-object v7

    :cond_0
    const-string/jumbo v7, "0"

    goto :goto_0
.end method

.method public static getSystemSize()Ljava/lang/String;
    .locals 10

    .prologue
    .line 228
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    .line 229
    .local v4, "root":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 230
    .local v5, "sf":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 231
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v0, v6

    .line 232
    .local v0, "blockCount":J
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    mul-long v8, v2, v0

    invoke-static {v6, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getTotalMemory()Ljava/lang/String;
    .locals 12

    .prologue
    .line 192
    const-string/jumbo v6, "/proc/meminfo"

    .line 195
    .local v6, "str1":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 197
    .local v2, "initial_memory":J
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 198
    .local v4, "localFileReader":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 200
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, "str2":Ljava/lang/String;
    const-string/jumbo v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "arrayOfString":[Ljava/lang/String;
    array-length v9, v0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v5, v0, v8

    .line 204
    .local v5, "num":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 207
    .end local v5    # "num":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v2, v8

    .line 208
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "localFileReader":Ljava/io/FileReader;
    .end local v7    # "str2":Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public static isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lc8/Bgb;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lc8/Bgb;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/Shb;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "isNetworkAvailable":Z
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 102
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v4

    .line 105
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 106
    .local v3, "networkInfos":[Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 109
    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v3, v4

    .line 110
    .local v2, "itemInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_4

    .line 111
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v7, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_4

    .line 112
    :cond_2
    const/4 v1, 0x1

    .end local v2    # "itemInfo":Landroid/net/NetworkInfo;
    :cond_3
    move v4, v1

    .line 118
    goto :goto_0

    .line 109
    .restart local v2    # "itemInfo":Landroid/net/NetworkInfo;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static onFailure(Lc8/vgb;ILjava/lang/String;)V
    .locals 2
    .param p0, "failureCallback"    # Lc8/vgb;
    .param p1, "resultCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v1, Lc8/Qhb;

    invoke-direct {v1, p0, p1, p2}, Lc8/Qhb;-><init>(Lc8/vgb;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public static onFailure(Lc8/vgb;Lc8/Mgb;)V
    .locals 2
    .param p0, "failureCallback"    # Lc8/vgb;
    .param p1, "message"    # Lc8/Mgb;

    .prologue
    .line 41
    sget-object v0, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v1, Lc8/Ohb;

    invoke-direct {v1, p0, p1}, Lc8/Ohb;-><init>(Lc8/vgb;Lc8/Mgb;)V

    invoke-interface {v0, v1}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public static onFailure(Lc8/vgb;Lc8/Wgb;)V
    .locals 2
    .param p0, "failureCallback"    # Lc8/vgb;
    .param p1, "resultCode"    # Lc8/Wgb;

    .prologue
    .line 53
    sget-object v0, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v1, Lc8/Phb;

    invoke-direct {v1, p0, p1}, Lc8/Phb;-><init>(Lc8/vgb;Lc8/Wgb;)V

    invoke-interface {v0, v1}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public static sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V
    .locals 2
    .param p0, "loginAction"    # Lcom/ali/auth/third/core/broadcast/LoginAction;

    .prologue
    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/ali/auth/third/core/broadcast/LoginAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method public static toString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 148
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 149
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 150
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 151
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toast(Ljava/lang/String;)V
    .locals 2
    .param p0, "strId"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v0, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v1, Lc8/Rhb;

    invoke-direct {v1, p0}, Lc8/Rhb;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public static toastSystemException()V
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "com_taobao_tae_sdk_system_exception"

    invoke-static {v0}, Lc8/Shb;->toast(Ljava/lang/String;)V

    .line 78
    return-void
.end method
