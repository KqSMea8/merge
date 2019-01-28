.class public Lc8/vTb;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/uTb;,
        Lc8/tTb;,
        Lc8/sTb;
    }
.end annotation


# static fields
.field private static final kSystemRootStateDisable:I = 0x0

.field private static final kSystemRootStateEnable:I = 0x1

.field private static final kSystemRootStateUnknow:I = -0x1

.field private static systemRootState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 585
    const/4 v0, -0x1

    sput v0, Lc8/vTb;->systemRootState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    return-void
.end method

.method public static IntGetBytes(I)[B
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 134
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 135
    .local v0, "bInt":[B
    move v1, p0

    .line 136
    .local v1, "value":I
    const/4 v2, 0x3

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 137
    shr-int/lit8 v1, v1, 0x8

    .line 138
    const/4 v2, 0x2

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 139
    shr-int/lit8 v1, v1, 0x8

    .line 140
    const/4 v2, 0x1

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 141
    shr-int/lit8 v1, v1, 0x8

    .line 142
    const/4 v2, 0x0

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 143
    return-object v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 235
    if-eqz p0, :cond_0

    .line 237
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "close."

    invoke-static {v1, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static dumpMeminfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 777
    :try_start_0
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 778
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 779
    .local v2, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    const/4 v3, 0x0

    .line 780
    .local v3, "threshold":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 782
    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    const/16 v6, 0xa

    shr-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 784
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "JavaTotal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " JavaFree:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NativeHeap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NativeAllocated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NativeFree:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " threshold:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " KB"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 791
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    .end local v3    # "threshold":Ljava/lang/Integer;
    :goto_1
    return-object v4

    .line 784
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v2    # "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    .restart local v3    # "threshold":Ljava/lang/Integer;
    :cond_1
    const-string/jumbo v4, "not valid"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 788
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    .end local v3    # "threshold":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "dumpMeminfo"

    invoke-static {v4, v1}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 791
    const-string/jumbo v4, ""

    goto :goto_1
.end method

.method public static dumpStorage(Landroid/content/Context;)Ljava/lang/String;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 830
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .local v9, "stringBuffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 833
    .local v5, "hasSDCard":Z
    :try_start_0
    const-string/jumbo v10, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 834
    const/4 v5, 0x1

    .line 839
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 841
    .local v6, "installSDCard":Z
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 842
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/high16 v11, 0x40000

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    .line 843
    const/4 v6, 0x1

    .line 848
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hasSDCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "installSDCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    .line 852
    .local v7, "rootDir":Ljava/io/File;
    if-eqz v7, :cond_2

    .line 853
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/vTb;->getSizes(Ljava/lang/String;)[J

    move-result-object v8

    .line 854
    .local v8, "sizes":[J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "RootDirectory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    const-string/jumbo v10, "TotalSize: %s FreeSize: %s AvailableSize: %s \n"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .end local v8    # "sizes":[J
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 859
    .local v1, "dataDir":Ljava/io/File;
    if-eqz v1, :cond_3

    .line 860
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/vTb;->getSizes(Ljava/lang/String;)[J

    move-result-object v8

    .line 861
    .restart local v8    # "sizes":[J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "DataDirectory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const-string/jumbo v10, "TotalSize: %s FreeSize: %s AvailableSize: %s \n"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .end local v8    # "sizes":[J
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 866
    .local v4, "externalStorageDir":Ljava/io/File;
    if-eqz v1, :cond_4

    .line 867
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ExternalStorageDirectory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/vTb;->getSizes(Ljava/lang/String;)[J

    move-result-object v8

    .line 869
    .restart local v8    # "sizes":[J
    const-string/jumbo v10, "TotalSize: %s FreeSize: %s AvailableSize: %s \n"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    .end local v8    # "sizes":[J
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    .line 873
    .local v2, "downloadCacheDir":Ljava/io/File;
    if-eqz v2, :cond_5

    .line 874
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "DownloadCacheDirectory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/vTb;->getSizes(Ljava/lang/String;)[J

    move-result-object v8

    .line 876
    .restart local v8    # "sizes":[J
    const-string/jumbo v10, "TotalSize: %s FreeSize: %s AvailableSize: %s \n"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-wide v14, v8, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 882
    .end local v1    # "dataDir":Ljava/io/File;
    .end local v2    # "downloadCacheDir":Ljava/io/File;
    .end local v4    # "externalStorageDir":Ljava/io/File;
    .end local v7    # "rootDir":Ljava/io/File;
    .end local v8    # "sizes":[J
    :cond_5
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 836
    .end local v6    # "installSDCard":Z
    :catch_0
    move-exception v3

    .line 837
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "hasSDCard"

    invoke-static {v10, v3}, Lc8/USb;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 845
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "installSDCard":Z
    :catch_1
    move-exception v3

    .line 846
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "installSDCard"

    invoke-static {v10, v3}, Lc8/USb;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 879
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 880
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "getSizes"

    invoke-static {v10, v3}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static dumpThread(Ljava/lang/Thread;)Ljava/lang/String;
    .locals 12
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    .local v4, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    const-string/jumbo v7, "Thread Name: \'%s\'\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    const-string/jumbo v7, "\"%s\" prio=%d tid=%d %s\n"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 760
    .local v6, "stackTraces":[Ljava/lang/StackTraceElement;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v6

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 761
    .local v5, "stackTraceElement":Ljava/lang/StackTraceElement;
    const-string/jumbo v7, "\tat %s\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v6    # "stackTraces":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v1

    .line 764
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "dumpThread"

    invoke-static {v7, v1}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 766
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getContextAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    if-eqz p0, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    const-string/jumbo v0, "get context app version failure"

    invoke-static {v0}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContextFirstInstallTime(Landroid/content/Context;)Ljava/lang/Long;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    if-eqz p0, :cond_0

    .line 99
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    const-string/jumbo v0, "get context first install time failure"

    invoke-static {v0}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContextLastUpdateTime(Landroid/content/Context;)Ljava/lang/Long;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    if-eqz p0, :cond_0

    .line 112
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    const-string/jumbo v0, "get context last update time failure"

    invoke-static {v0}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGMT8Time(J)Ljava/lang/String;
    .locals 4
    .param p0, "timestamp"    # J

    .prologue
    .line 210
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "GMT+8"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 212
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 216
    .end local v1    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "getGMT8Time"

    invoke-static {v2, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "imei":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 169
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 171
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 178
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    invoke-static {v0}, Lc8/OTb;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    invoke-static {}, Lc8/vTb;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_1
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "imsi":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 187
    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 189
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    invoke-static {v0}, Lc8/OTb;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    invoke-static {}, Lc8/vTb;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_1
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getMTLMetaData(Ljava/util/Map;Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_3

    .line 52
    :try_start_0
    const-string/jumbo v4, "pt"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    const-string/jumbo v4, "package_type"

    invoke-static {p1, v4}, Lc8/vTb;->getMTLString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "pt":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    const-string/jumbo v4, "pt"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v3    # "pt":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "pid"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 59
    const-string/jumbo v4, "project_id"

    invoke-static {p1, v4}, Lc8/vTb;->getMTLString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "pid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    const-string/jumbo v4, "pid"

    invoke-interface {p0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v2    # "pid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "bid"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 65
    const-string/jumbo v4, "build_id"

    invoke-static {p1, v4}, Lc8/vTb;->getMTLString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 67
    const-string/jumbo v4, "bid"

    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v0    # "bid":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "bv"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 71
    const-string/jumbo v4, "base_version"

    invoke-static {p1, v4}, Lc8/vTb;->getMTLString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "bv":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 73
    const-string/jumbo v4, "bv"

    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "bv":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getMTLString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v1

    .line 84
    :cond_1
    const/4 v0, 0x0

    .line 86
    .local v0, "id":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 89
    :goto_1
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getMeminfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 438
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc/meminfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/vTb;->readFully(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMyProcessNameByAppProcessInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 449
    if-eqz p0, :cond_1

    .line 450
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 452
    .local v3, "pid":I
    :try_start_0
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 453
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 454
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v3, :cond_0

    .line 455
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pid":I
    :goto_0
    return-object v4

    .restart local v3    # "pid":I
    :catch_0
    move-exception v4

    .end local v3    # "pid":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getMyProcessNameByCmdline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const-string/jumbo v0, "/proc/self/cmdline"

    invoke-static {v0}, Lc8/vTb;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMyStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc/self/status"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/vTb;->readFully(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSizes(Ljava/lang/String;)[J
    .locals 14
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 796
    const/4 v11, 0x3

    new-array v7, v11, [J

    fill-array-data v7, :array_0

    .line 798
    .local v7, "sizes":[J
    :try_start_0
    new-instance v10, Landroid/os/StatFs;

    invoke-direct {v10, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 803
    .local v10, "statFs":Landroid/os/StatFs;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x12

    if-ge v11, v12, :cond_0

    .line 804
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v4, v11

    .line 805
    .local v4, "blockSize":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v2, v11

    .line 806
    .local v2, "blockCount":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v11

    int-to-long v8, v11

    .line 807
    .local v8, "freeBlocks":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    .line 814
    .local v0, "availableBlocks":J
    :goto_0
    const/4 v11, 0x0

    mul-long v12, v4, v2

    aput-wide v12, v7, v11

    .line 815
    const/4 v11, 0x1

    mul-long v12, v4, v8

    aput-wide v12, v7, v11

    .line 816
    const/4 v11, 0x2

    mul-long v12, v4, v0

    aput-wide v12, v7, v11

    .line 820
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockCount":J
    .end local v4    # "blockSize":J
    .end local v8    # "freeBlocks":J
    .end local v10    # "statFs":Landroid/os/StatFs;
    :goto_1
    return-object v7

    .line 809
    .restart local v10    # "statFs":Landroid/os/StatFs;
    :cond_0
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 810
    .restart local v4    # "blockSize":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    .line 811
    .restart local v2    # "blockCount":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v8

    .line 812
    .restart local v8    # "freeBlocks":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocksLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .restart local v0    # "availableBlocks":J
    goto :goto_0

    .line 817
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockCount":J
    .end local v4    # "blockSize":J
    .end local v8    # "freeBlocks":J
    .end local v10    # "statFs":Landroid/os/StatFs;
    :catch_0
    move-exception v6

    .line 818
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "getSizes"

    invoke-static {v11, v6}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 796
    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static final getUniqueID()Ljava/lang/String;
    .locals 14

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v5, v10

    .line 148
    .local v5, "t1":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-int v6, v10

    .line 149
    .local v6, "t2":I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v7

    .line 150
    .local v7, "t3":I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 151
    .local v8, "t4":I
    invoke-static {v5}, Lc8/vTb;->IntGetBytes(I)[B

    move-result-object v0

    .line 152
    .local v0, "b1":[B
    invoke-static {v6}, Lc8/vTb;->IntGetBytes(I)[B

    move-result-object v1

    .line 153
    .local v1, "b2":[B
    invoke-static {v7}, Lc8/vTb;->IntGetBytes(I)[B

    move-result-object v2

    .line 154
    .local v2, "b3":[B
    invoke-static {v8}, Lc8/vTb;->IntGetBytes(I)[B

    move-result-object v3

    .line 155
    .local v3, "b4":[B
    const/16 v9, 0x10

    new-array v4, v9, [B

    .line 156
    .local v4, "bUniqueID":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v0, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x4

    invoke-static {v1, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x4

    invoke-static {v2, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x4

    invoke-static {v3, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    invoke-static {v4}, Lc8/ITb;->encodeBase64String([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 163
    .end local v0    # "b1":[B
    .end local v1    # "b2":[B
    .end local v2    # "b3":[B
    .end local v3    # "b4":[B
    .end local v4    # "bUniqueID":[B
    .end local v6    # "t2":I
    .end local v7    # "t3":I
    .end local v8    # "t4":I
    :goto_0
    return-object v9

    :catch_0
    move-exception v9

    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static isBackgroundRunning(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 410
    :try_start_0
    const-string/jumbo v2, "/proc/self/oom_adj"

    invoke-static {v2}, Lc8/vTb;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "oom_adjline":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 412
    .local v0, "oom_adj":I
    if-nez v0, :cond_0

    .line 413
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 420
    .end local v0    # "oom_adj":I
    .end local v1    # "oom_adjline":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 415
    .restart local v0    # "oom_adj":I
    .restart local v1    # "oom_adjline":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 420
    .end local v0    # "oom_adj":I
    .end local v1    # "oom_adjline":Ljava/lang/String;
    :catch_0
    move-exception v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static isInstallOnSDCard(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 618
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 619
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 620
    const/4 v2, 0x1

    .line 625
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 622
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "isInstallOnSDCard"

    invoke-static {v2, v1}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 625
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLockScreenOn(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 563
    :try_start_0
    const-string/jumbo v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 564
    .local v1, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 573
    .end local v1    # "mKeyguardManager":Landroid/app/KeyguardManager;
    :goto_0
    return-object v2

    .line 567
    .restart local v1    # "mKeyguardManager":Landroid/app/KeyguardManager;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 569
    .end local v1    # "mKeyguardManager":Landroid/app/KeyguardManager;
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "isLockScreenOn"

    invoke-static {v2, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 573
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static isMainThread(Ljava/lang/Thread;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    const/4 v0, 0x0

    .line 548
    if-eqz p0, :cond_1

    .line 549
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 552
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isRootSystem()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 588
    sget v6, Lc8/vTb;->systemRootState:I

    if-ne v6, v4, :cond_0

    .line 607
    .local v2, "i":I
    .local v3, "kSuSearchPaths":[Ljava/lang/String;
    :goto_0
    return v4

    .line 590
    .end local v2    # "i":I
    .end local v3    # "kSuSearchPaths":[Ljava/lang/String;
    :cond_0
    sget v6, Lc8/vTb;->systemRootState:I

    if-nez v6, :cond_1

    move v4, v5

    .line 591
    goto :goto_0

    .line 594
    :cond_1
    const/4 v6, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v6, "/system/bin/"

    aput-object v6, v3, v5

    const-string/jumbo v6, "/system/xbin/"

    aput-object v6, v3, v4

    const/4 v6, 0x2

    const-string/jumbo v7, "/system/sbin/"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "/sbin/"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "/vendor/bin/"

    aput-object v7, v3, v6

    .line 596
    .restart local v3    # "kSuSearchPaths":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    :try_start_0
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 597
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 599
    const/4 v6, 0x1

    sput v6, Lc8/vTb;->systemRootState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "isRootSystem"

    invoke-static {v4, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 606
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sput v5, Lc8/vTb;->systemRootState:I

    move v4, v5

    .line 607
    goto :goto_0

    .line 596
    .restart local v1    # "f":Ljava/io/File;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isServiceProcess(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 518
    if-eqz p0, :cond_0

    .line 519
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 522
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isUIProcess(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 533
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 534
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 538
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static readFully(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 303
    .local v4, "in":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 305
    .local v6, "input":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 307
    .end local v6    # "input":Ljava/io/InputStreamReader;
    .local v7, "input":Ljava/io/InputStreamReader;
    const/16 v0, 0x1000

    .line 308
    .local v0, "DEFAULT_BUFFER_SIZE":I
    :try_start_2
    new-array v1, v0, [C

    .line 310
    .local v1, "buffer":[C
    :goto_0
    const/4 v9, -0x1

    invoke-virtual {v7, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    .local v8, "n":I
    if-eq v9, v8, :cond_0

    .line 311
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 313
    .end local v1    # "buffer":[C
    .end local v8    # "n":I
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7    # "input":Ljava/io/InputStreamReader;
    .restart local v6    # "input":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 314
    .end local v0    # "DEFAULT_BUFFER_SIZE":I
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v9, "readFully."

    invoke-static {v9, v3}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    invoke-static {v6}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    .line 317
    invoke-static {v4}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    .line 319
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 316
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v6    # "input":Ljava/io/InputStreamReader;
    .restart local v0    # "DEFAULT_BUFFER_SIZE":I
    .restart local v1    # "buffer":[C
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/InputStreamReader;
    .restart local v8    # "n":I
    :cond_0
    invoke-static {v7}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    .line 317
    invoke-static {v5}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    move-object v6, v7

    .end local v7    # "input":Ljava/io/InputStreamReader;
    .restart local v6    # "input":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 318
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 316
    .end local v0    # "DEFAULT_BUFFER_SIZE":I
    .end local v1    # "buffer":[C
    .end local v8    # "n":I
    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {v6}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    .line 317
    invoke-static {v4}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .line 316
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v6    # "input":Ljava/io/InputStreamReader;
    .restart local v0    # "DEFAULT_BUFFER_SIZE":I
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "input":Ljava/io/InputStreamReader;
    .restart local v6    # "input":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 313
    .end local v0    # "DEFAULT_BUFFER_SIZE":I
    :catch_1
    move-exception v3

    goto :goto_1

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static readLine(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 329
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lc8/vTb;->readLines(Ljava/io/File;I)Ljava/util/List;

    move-result-object v0

    .line 330
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 340
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/vTb;->readLine(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readLine(Ljava/io/File;Lc8/sTb;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lc8/sTb;

    .prologue
    .line 251
    const/4 v2, 0x0

    .line 253
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 256
    invoke-interface {p1, v1}, Lc8/sTb;->onReadLine(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-static {v3}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 262
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-void

    .line 261
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    invoke-static {v3}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 262
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 258
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string/jumbo v4, "readLine"

    invoke-static {v4, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    invoke-static {v2}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 258
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static readLineAndDel(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 350
    invoke-static {p0}, Lc8/vTb;->readLine(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "line":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-object v1

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "readLineAndDel"

    invoke-static {v2, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static readLines(Ljava/io/File;I)Ljava/util/List;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v3, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 276
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 279
    .local v0, "count":I
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 280
    add-int/lit8 v0, v0, 0x1

    .line 281
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    if-lez p1, :cond_0

    if-lt v0, p1, :cond_0

    .line 289
    :cond_1
    invoke-static {v5}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    move-object v4, v5

    .line 291
    .end local v0    # "count":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v3

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string/jumbo v6, "readLine"

    invoke-static {v6, v1}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    invoke-static {v4}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v4}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 286
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x30

    .line 471
    invoke-static {p0}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 472
    const-string/jumbo v5, "LLUN"

    .line 500
    :goto_0
    return-object v5

    .line 474
    :cond_0
    const/4 v3, 0x0

    .line 475
    .local v3, "len":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_1

    .line 476
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 477
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 479
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .local v2, "bytes":[B
    array-length v5, v2

    add-int/lit8 v1, v5, -0x1

    .local v1, "blen":I
    :goto_1
    if-ltz v1, :cond_7

    .line 483
    aget-byte v0, v2, v1

    .local v0, "b":I
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_2

    .line 484
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 485
    :cond_2
    const/16 v5, 0x3a

    if-ne v0, v5, :cond_3

    .line 486
    const/16 v5, 0x31

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 487
    :cond_3
    const/16 v5, 0x61

    if-lt v0, v5, :cond_4

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_4

    .line 488
    add-int/lit8 v5, v0, 0x41

    add-int/lit8 v5, v5, -0x61

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 489
    :cond_4
    const/16 v5, 0x41

    if-lt v0, v5, :cond_5

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_5

    .line 490
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 491
    :cond_5
    if-lt v0, v6, :cond_6

    const/16 v5, 0x39

    if-gt v0, v5, :cond_6

    .line 492
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 494
    :cond_6
    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 497
    .end local v0    # "b":I
    :cond_7
    if-lez v3, :cond_8

    .line 498
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static stopService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 727
    :try_start_0
    const-string/jumbo v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 728
    .local v2, "localActivityManager":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    .line 729
    .local v7, "uid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 730
    .local v5, "packageName":Ljava/lang/String;
    const v8, 0x7fffffff

    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 731
    .local v3, "localIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 732
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 733
    .local v4, "localRunningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget v8, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-ne v8, v7, :cond_0

    iget-object v8, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v8, :cond_0

    .line 736
    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 737
    .local v6, "serviceCMP":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 738
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 739
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "localActivityManager":Landroid/app/ActivityManager;
    .end local v3    # "localIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v4    # "localRunningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "serviceCMP":Landroid/content/ComponentName;
    .end local v7    # "uid":I
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "stopService"

    invoke-static {v8, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 745
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/vTb;->writeFile(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 377
    const/4 v1, 0x0

    .line 379
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .end local v1    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 382
    const/4 v3, 0x1

    .line 386
    invoke-static {v2}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 388
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :goto_0
    return v3

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string/jumbo v3, "writeFile"

    invoke-static {v3, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    invoke-static {v1}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    .line 388
    const/4 v3, 0x0

    goto :goto_0

    .line 386
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lc8/vTb;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 383
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_1
.end method
