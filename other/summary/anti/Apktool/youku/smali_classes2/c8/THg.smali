.class public Lc8/THg;
.super Ljava/lang/Object;
.source "StorageTools.java"


# static fields
.field private static final ANALYTICS_AGENT_CACHE:Ljava/lang/String; = "analytics_agent_cache_"

.field private static final ANALYTICS_AGENT_HEADER:Ljava/lang/String; = "analytics_agent_header_"

.field private static final COUNTER_CACHE:Ljava/lang/String; = "counter_"

.field private static ONE_DAY:J

.field private static mCounter:I

.field private static mDay:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/THg;->mDay:J

    .line 40
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lc8/THg;->ONE_DAY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendSaveToSDCard(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {p0, p1}, Lc8/RHg;->appendWrite(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static appendWriteToLocalCache(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {p0}, Lc8/THg;->getLocalCacheFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 278
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8ffd\u52a0\u5199\u5165\u672c\u5730\u7f13\u5b58\u6587\u4ef6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 280
    invoke-static {v0, p1}, Lc8/RHg;->appendWrite(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static clearSDCardFile(Ljava/io/File;)V
    .locals 0
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 330
    invoke-static {p0}, Lc8/RHg;->clear(Ljava/io/File;)V

    .line 331
    return-void
.end method

.method public static declared-synchronized deleteLocalCache(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    const-class v2, Lc8/THg;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lc8/THg;->getLocalCacheFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    .line 245
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit v2

    return-void

    .line 242
    .end local v0    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static deleteSDCardFile(Ljava/io/File;)V
    .locals 0
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 321
    invoke-static {p0}, Lc8/RHg;->delete(Ljava/io/File;)V

    .line 322
    return-void
.end method

.method public static getCounterFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Lc8/WHg;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "processName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const/16 v1, 0x3a

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "counter_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "counter_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getEventNumber(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-class v1, Lc8/THg;

    monitor-enter v1

    :try_start_0
    sget v0, Lc8/THg;->mCounter:I

    if-nez v0, :cond_0

    .line 97
    invoke-static {p0}, Lc8/THg;->getEventNumberAndTime(Landroid/content/Context;)I

    move-result v0

    sput v0, Lc8/THg;->mCounter:I

    .line 99
    :cond_0
    invoke-static {p0}, Lc8/THg;->saveEventNumberAndTime(Landroid/content/Context;)V

    .line 100
    sget v0, Lc8/THg;->mCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getEventNumberAndTime(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const/4 v4, 0x0

    .line 170
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 171
    .local v0, "dis":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 173
    .local v5, "number":I
    :try_start_0
    invoke-static {p0}, Lc8/THg;->getCounterFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 176
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 177
    const-string/jumbo v6, "\u8ba1\u6570\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u5c06\u5728\u9996\u6b21\u6dfb\u52a0\u4e8b\u4ef6\u65f6\u521b\u5efa."

    invoke-static {v6}, Lc8/SHg;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    const/4 v6, -0x1

    .line 193
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 194
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return v6

    .line 196
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v7

    const-string/jumbo v7, "getEventNumberAndTime exception"

    invoke-static {v7}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :catch_1
    move-exception v7

    const-string/jumbo v7, "getEventNumberAndTime error"

    invoke-static {v7}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_2
    :try_start_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 182
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    sput-wide v6, Lc8/THg;->mDay:J

    .line 184
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    .line 193
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 194
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_1
    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move v6, v5

    .line 199
    goto :goto_0

    .line 196
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_2
    move-exception v6

    const-string/jumbo v6, "getEventNumberAndTime exception"

    invoke-static {v6}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 198
    :catch_3
    move-exception v6

    const-string/jumbo v6, "getEventNumberAndTime error"

    invoke-static {v6}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 188
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :catch_4
    move-exception v6

    :goto_2
    :try_start_5
    const-string/jumbo v6, "getEventNumberAndTime exception"

    invoke-static {v6}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 193
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 194
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_6

    :cond_6
    :goto_3
    move v6, v5

    .line 201
    goto :goto_0

    .line 196
    :catch_5
    move-exception v6

    const-string/jumbo v6, "getEventNumberAndTime exception"

    invoke-static {v6}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_3

    .line 198
    :catch_6
    move-exception v6

    const-string/jumbo v6, "getEventNumberAndTime error"

    invoke-static {v6}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_3

    .line 190
    :catch_7
    move-exception v6

    :goto_4
    :try_start_7
    const-string/jumbo v6, "getEventNumberAndTime error"

    invoke-static {v6}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 193
    if-eqz v0, :cond_7

    :try_start_8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 194
    :cond_7
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_3

    .line 196
    :catch_8
    move-exception v6

    const-string/jumbo v6, "getEventNumberAndTime exception"

    invoke-static {v6}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_3

    .line 198
    :catch_9
    move-exception v6

    const-string/jumbo v6, "getEventNumberAndTime error"

    invoke-static {v6}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_3

    .line 192
    :catchall_0
    move-exception v6

    .line 193
    :goto_5
    if-eqz v0, :cond_8

    :try_start_9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 194
    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_b

    .line 199
    :cond_9
    :goto_6
    throw v6

    .line 196
    :catch_a
    move-exception v7

    const-string/jumbo v7, "getEventNumberAndTime exception"

    invoke-static {v7}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_6

    .line 198
    :catch_b
    move-exception v7

    const-string/jumbo v7, "getEventNumberAndTime error"

    invoke-static {v7}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_6

    .line 192
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_5

    .line 190
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_c
    move-exception v6

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_4

    .line 188
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_d
    move-exception v6

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method public static getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    const-string/jumbo v0, ""

    .line 68
    :goto_0
    return-object v0

    .line 67
    :cond_0
    const-string/jumbo v0, "analytics_agent_header_"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 68
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getLocalCache(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    const-class v4, Lc8/THg;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lc8/THg;->getLocalCacheFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 230
    .local v0, "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u672c\u5730\u7f13\u5b58\u6587\u4ef6"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\u5b58\u653e\u7684\u8def\u5f84\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 231
    invoke-static {v0}, Lc8/RHg;->readFileWithAES(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 233
    .local v2, "result":Ljava/lang/String;
    monitor-exit v4

    return-object v2

    .line 228
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static getLocalCacheFileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-static {p0}, Lc8/WHg;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "processName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    const/16 v1, 0x3a

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "analytics_agent_cache_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "analytics_agent_cache_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static saveEventNumberAndTime(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v4, 0x0

    .line 110
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 112
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {p0}, Lc8/THg;->getCounterFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    .line 116
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 118
    if-eqz v4, :cond_2

    .line 119
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 121
    .local v6, "time":J
    sget-wide v8, Lc8/THg;->mDay:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_0

    sget-wide v8, Lc8/THg;->mDay:J

    sub-long v8, v6, v8

    sget-wide v10, Lc8/THg;->ONE_DAY:J

    cmp-long v5, v8, v10

    if-gtz v5, :cond_0

    sget-wide v8, Lc8/THg;->mDay:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 122
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 124
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 125
    const/16 v5, 0xb

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 126
    const/16 v5, 0xc

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 127
    const/16 v5, 0xd

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/16 v5, 0xe

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 129
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sput-wide v8, Lc8/THg;->mDay:J

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "write day:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v8, Lc8/THg;->mDay:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "write day:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/util/Date;

    sget-wide v10, Lc8/THg;->mDay:J

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 132
    const/4 v5, 0x0

    sput v5, Lc8/THg;->mCounter:I

    .line 134
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_1
    sget v5, Lc8/THg;->mCounter:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lc8/THg;->mCounter:I

    .line 135
    sget-wide v8, Lc8/THg;->mDay:J

    invoke-virtual {v2, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 136
    sget v5, Lc8/THg;->mCounter:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 138
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 139
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 148
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "time":J
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :cond_2
    if-eqz v1, :cond_3

    .line 149
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 151
    :cond_3
    if-eqz v4, :cond_4

    .line 152
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 155
    .restart local v3    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v5

    const-string/jumbo v5, "saveEventNumberAndTime exception"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :catch_1
    move-exception v5

    const-string/jumbo v5, "saveEventNumberAndTime error"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v3    # "fileName":Ljava/lang/String;
    :catch_2
    move-exception v5

    :goto_1
    :try_start_3
    const-string/jumbo v5, "saveEventNumberAndTime exception"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    if-eqz v1, :cond_5

    .line 149
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 151
    :cond_5
    if-eqz v4, :cond_4

    .line 152
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 155
    :catch_3
    move-exception v5

    const-string/jumbo v5, "saveEventNumberAndTime exception"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :catch_4
    move-exception v5

    const-string/jumbo v5, "saveEventNumberAndTime error"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :catch_5
    move-exception v5

    :goto_2
    :try_start_5
    const-string/jumbo v5, "saveEventNumberAndTime error"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    if-eqz v1, :cond_6

    .line 149
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 151
    :cond_6
    if-eqz v4, :cond_4

    .line 152
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_0

    .line 155
    :catch_6
    move-exception v5

    const-string/jumbo v5, "saveEventNumberAndTime exception"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :catch_7
    move-exception v5

    const-string/jumbo v5, "saveEventNumberAndTime error"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v5

    .line 148
    :goto_3
    if-eqz v1, :cond_7

    .line 149
    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 151
    :cond_7
    if-eqz v4, :cond_8

    .line 152
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_9

    .line 158
    :cond_8
    :goto_4
    throw v5

    .line 155
    :catch_8
    move-exception v8

    const-string/jumbo v8, "saveEventNumberAndTime exception"

    invoke-static {v8}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_4

    .line 157
    :catch_9
    move-exception v8

    const-string/jumbo v8, "saveEventNumberAndTime error"

    invoke-static {v8}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_4

    .line 147
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "fileName":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 145
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catch_a
    move-exception v5

    move-object v1, v2

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 143
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catch_b
    move-exception v5

    move-object v1, v2

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.method public static savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string/jumbo v0, "analytics_agent_header_"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveToSDCard(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "isAES"    # Z

    .prologue
    .line 297
    if-eqz p2, :cond_0

    .line 298
    invoke-static {p0, p1}, Lc8/RHg;->writeFileWithAES(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lc8/RHg;->write(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static writeToLocalCache(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "isAES"    # Z

    .prologue
    .line 257
    invoke-static {p0}, Lc8/THg;->getLocalCacheFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 259
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5199\u5165\u672c\u5730\u7f13\u5b58\u6587\u4ef6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 261
    if-eqz p2, :cond_0

    .line 262
    invoke-static {v0, p1}, Lc8/RHg;->writeFileWithAES(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    .line 264
    :goto_0
    return v2

    :cond_0
    invoke-static {v0, p1}, Lc8/RHg;->write(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
