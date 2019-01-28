.class public Lc8/yF;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final CPU_FILTER:Ljava/io/FileFilter;

.field public static final DEVICEINFO_UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lc8/xF;

    invoke-direct {v0}, Lc8/xF;-><init>()V

    sput-object v0, Lc8/yF;->CPU_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractValue([BI)I
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "index"    # I

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 203
    :goto_0
    array-length v2, p0

    if-ge p1, v2, :cond_2

    aget-byte v2, p0, p1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 204
    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_1

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_1

    .line 205
    move v0, p1

    .line 206
    .local v0, "start":I
    add-int/lit8 p1, p1, 0x1

    .line 207
    :goto_1
    array-length v2, p0

    if-ge p1, v2, :cond_0

    aget-byte v2, p0, p1

    if-lt v2, v4, :cond_0

    aget-byte v2, p0, p1

    if-gt v2, v5, :cond_0

    .line 208
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 210
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p1, v0

    invoke-direct {v1, p0, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 211
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 215
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :goto_2
    return v2

    .line 213
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 215
    :cond_2
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public static getCPUMaxFreqKHz()I
    .locals 11

    .prologue
    .line 85
    const/4 v6, -0x1

    .line 87
    .local v6, "maxFreq":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    invoke-static {}, Lc8/yF;->getNumberOfCPUCores()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 88
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "cpuInfoMaxFreqFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 92
    const/16 v9, 0x80

    new-array v0, v9, [B

    .line 93
    .local v0, "buffer":[B
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v8, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 96
    const/4 v2, 0x0

    .line 98
    .local v2, "endIndex":I
    :goto_1
    aget-byte v9, v0, v2

    const/16 v10, 0x30

    if-lt v9, v10, :cond_0

    aget-byte v9, v0, v2

    const/16 v10, 0x39

    if-gt v9, v10, :cond_0

    array-length v9, v0

    if-ge v2, v9, :cond_0

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    :cond_0
    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9, v2}, Ljava/lang/String;-><init>([BII)V

    .line 101
    .local v7, "str":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 102
    .local v4, "freqBound":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 106
    :cond_1
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 87
    .end local v0    # "buffer":[B
    .end local v2    # "endIndex":I
    .end local v4    # "freqBound":Ljava/lang/Integer;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 106
    .restart local v0    # "buffer":[B
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v9

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    .line 121
    .end local v0    # "buffer":[B
    .end local v1    # "cpuInfoMaxFreqFile":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    const/4 v6, -0x1

    .line 123
    :cond_3
    :goto_3
    return v6

    .line 106
    .restart local v0    # "buffer":[B
    .restart local v1    # "cpuInfoMaxFreqFile":Ljava/io/File;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v9

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    throw v9

    .line 110
    .end local v0    # "buffer":[B
    .end local v1    # "cpuInfoMaxFreqFile":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :cond_4
    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    .line 111
    new-instance v8, Ljava/io/FileInputStream;

    const-string/jumbo v9, "/proc/cpuinfo"

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :try_start_3
    const-string/jumbo v9, "cpu MHz"

    invoke-static {v9, v8}, Lc8/yF;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    .line 114
    .local v4, "freqBound":I
    mul-int/lit16 v4, v4, 0x3e8

    .line 115
    if-le v4, v6, :cond_5

    move v6, v4

    .line 117
    :cond_5
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    .end local v4    # "freqBound":I
    :catchall_1
    move-exception v9

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method private static getCpuTime()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v1, "cpuTime":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "/proc/stat"

    const-string/jumbo v9, "r"

    invoke-direct {v0, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v0, "cpuInfo":Ljava/io/RandomAccessFile;
    :goto_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string/jumbo v8, "cpu"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 256
    const-string/jumbo v8, "\\s+"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "toks":[Ljava/lang/String;
    const/4 v8, 0x4

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 258
    .local v2, "idleCpu":J
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v10, 0x4

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v10, 0x6

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v10, 0x5

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v10, 0x7

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long v6, v8, v10

    .line 260
    .local v6, "totalCpu":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "cpuInfo":Ljava/io/RandomAccessFile;
    .end local v2    # "idleCpu":J
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "toks":[Ljava/lang/String;
    .end local v6    # "totalCpu":J
    :catch_0
    move-exception v8

    .line 266
    :goto_1
    return-object v1

    .line 263
    .restart local v0    # "cpuInfo":Ljava/io/RandomAccessFile;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static getFreeMemorySize(Landroid/content/Context;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 300
    .local v1, "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 301
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 302
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 303
    .local v2, "avaliMem":J
    return-wide v2
.end method

.method public static getNumberOfCPUCores()I
    .locals 3

    .prologue
    .line 43
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 48
    const/4 v0, 0x1

    .line 58
    .local v0, "cores":I
    :goto_0
    return v0

    .line 52
    .end local v0    # "cores":I
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lc8/yF;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v0    # "cores":I
    goto :goto_0

    .line 54
    .end local v0    # "cores":I
    :catch_0
    move-exception v1

    const/4 v0, -0x1

    .line 57
    .restart local v0    # "cores":I
    goto :goto_0

    .line 56
    .end local v0    # "cores":I
    :catch_1
    move-exception v1

    const/4 v0, -0x1

    .restart local v0    # "cores":I
    goto :goto_0
.end method

.method public static getProcessCpuRate()F
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v0, 0x0

    .line 222
    invoke-static {}, Lc8/yF;->getCpuTime()Ljava/util/ArrayList;

    move-result-object v1

    .line 223
    .local v1, "cpuTime":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v12, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v5, v8

    .line 227
    .local v5, "totalCpuTime1":F
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v3, v8

    .line 229
    .local v3, "idleCpuTime1":F
    const-wide/16 v8, 0x168

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    invoke-static {}, Lc8/yF;->getCpuTime()Ljava/util/ArrayList;

    move-result-object v2

    .line 235
    .local v2, "cpuTime2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v12, :cond_0

    .line 238
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v6, v8

    .line 239
    .local v6, "totalCpuTime2":F
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v4, v8

    .line 241
    .local v4, "idleCpuTime2":F
    sub-float v7, v6, v4

    sub-float v8, v5, v3

    sub-float/2addr v7, v8

    sub-float v8, v6, v5

    div-float v0, v7, v8

    .line 244
    .local v0, "cpuRate":F
    goto :goto_0

    .end local v0    # "cpuRate":F
    .end local v2    # "cpuTime2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4    # "idleCpuTime2":F
    .end local v6    # "totalCpuTime2":F
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 135
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v3, v6, :cond_1

    .line 136
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 137
    .local v1, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 138
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 139
    if-eqz v1, :cond_0

    .line 140
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 156
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    return-wide v4

    .line 142
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 145
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :cond_1
    const-wide/16 v4, -0x1

    .line 147
    .local v4, "totalMem":J
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string/jumbo v3, "/proc/meminfo"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    const-string/jumbo v3, "MemTotal"

    invoke-static {v3, v2}, Lc8/yF;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    int-to-long v4, v3

    .line 150
    const/16 v3, 0xa

    shl-long/2addr v4, v3

    .line 152
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method private static parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 8
    .param p0, "textToMatch"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .prologue
    const/16 v7, 0xa

    .line 169
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 171
    .local v0, "buffer":[B
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 172
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 173
    aget-byte v5, v0, v1

    if-eq v5, v7, :cond_0

    if-nez v1, :cond_3

    .line 174
    :cond_0
    aget-byte v5, v0, v1

    if-ne v5, v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 175
    :cond_1
    move v2, v1

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 176
    sub-int v4, v2, v1

    .line 178
    .local v4, "textIndex":I
    aget-byte v5, v0, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_3

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    .line 183
    invoke-static {v0, v2}, Lc8/yF;->extractValue([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 192
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "length":I
    .end local v4    # "textIndex":I
    :goto_2
    return v5

    .line 175
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "length":I
    .restart local v4    # "textIndex":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    .end local v2    # "j":I
    .end local v4    # "textIndex":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "length":I
    :catch_0
    move-exception v5

    .line 192
    :cond_4
    :goto_3
    const/4 v5, -0x1

    goto :goto_2

    .line 191
    :catch_1
    move-exception v5

    goto :goto_3
.end method


# virtual methods
.method public getTotalMemory()J
    .locals 10

    .prologue
    .line 273
    const-string/jumbo v2, "/proc/meminfo"

    .line 275
    .local v2, "memInfoPath":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 276
    .local v4, "memTotal":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 278
    .local v6, "memory":J
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v1, v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 280
    .local v1, "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "readTemp":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 281
    const-string/jumbo v9, "MemTotal"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 282
    const-string/jumbo v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, "total":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 284
    goto :goto_0

    .line 286
    .end local v8    # "total":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 287
    const-string/jumbo v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "memKb":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 289
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 292
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v1    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "memKb":[Ljava/lang/String;
    .end local v5    # "readTemp":Ljava/lang/String;
    :goto_1
    return-wide v6

    :catch_0
    move-exception v9

    goto :goto_1
.end method
