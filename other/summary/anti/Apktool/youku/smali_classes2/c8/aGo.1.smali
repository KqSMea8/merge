.class public Lc8/aGo;
.super Ljava/lang/Object;
.source "VipLogger.java"


# static fields
.field public static DEBUG:Z = false

.field public static ERROR:Z = false

.field private static final FILENAME:Ljava/lang/String; = "youku_vip_logger.txt"

.field public static INFO:Z = false

.field public static LOGLEVEL:I = 0x0

.field private static final PATH:Ljava/lang/String; = "/youku/youku_vip_logger/"

.field private static final SEGMENTATION:Ljava/lang/String; = "  "

.field public static TAG:Ljava/lang/String; = null

.field private static final TYPE_DEBUG:Ljava/lang/String; = "D: "

.field private static final TYPE_ERROR:Ljava/lang/String; = "E: "

.field private static final TYPE_INFO:Ljava/lang/String; = "I: "

.field private static final TYPE_VERBOSE:Ljava/lang/String; = "V: "

.field private static final TYPE_WARN:Ljava/lang/String; = "W: "

.field public static VERBOSE:Z

.field public static WARN:Z

.field private static isWriteFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    const/4 v0, 0x5

    .line 34
    sput v0, Lc8/aGo;->LOGLEVEL:I

    sput-boolean v1, Lc8/aGo;->VERBOSE:Z

    .line 35
    sget v0, Lc8/aGo;->LOGLEVEL:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lc8/aGo;->DEBUG:Z

    .line 36
    sget v0, Lc8/aGo;->LOGLEVEL:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lc8/aGo;->INFO:Z

    .line 37
    sget v0, Lc8/aGo;->LOGLEVEL:I

    if-le v0, v1, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lc8/aGo;->WARN:Z

    .line 38
    sget v0, Lc8/aGo;->LOGLEVEL:I

    if-lez v0, :cond_3

    :goto_3
    sput-boolean v1, Lc8/aGo;->ERROR:Z

    .line 40
    const-string/jumbo v0, "Logger"

    sput-object v0, Lc8/aGo;->TAG:Ljava/lang/String;

    .line 45
    sput-boolean v2, Lc8/aGo;->isWriteFile:Z

    return-void

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0

    :cond_1
    move v0, v2

    .line 36
    goto :goto_1

    :cond_2
    move v0, v2

    .line 37
    goto :goto_2

    :cond_3
    move v1, v2

    .line 38
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFile()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 369
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 396
    .local v3, "sdCardPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 372
    .end local v3    # "sdCardPath":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 374
    .restart local v3    # "sdCardPath":Ljava/lang/String;
    const-string/jumbo v6, "SSSSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " sdCardPath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/youku/youku_vip_logger/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 380
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "youku_vip_logger.txt"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-nez v6, :cond_3

    .line 383
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 384
    goto :goto_0

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 393
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    move v4, v5

    .line 390
    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 132
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "D: "

    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v0, "D: "

    invoke-static {v0, p0, p1}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 125
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 127
    const-string/jumbo v0, "D: "

    invoke-static {v0, p0, p1, p2}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 139
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 141
    const-string/jumbo v0, "D: "

    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-boolean v0, Lc8/aGo;->ERROR:Z

    if-eqz v0, :cond_0

    .line 161
    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string/jumbo v0, "E: "

    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 161
    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 146
    sget-boolean v0, Lc8/aGo;->ERROR:Z

    if-eqz v0, :cond_0

    .line 147
    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string/jumbo v0, "E: "

    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 147
    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 153
    sget-boolean v0, Lc8/aGo;->ERROR:Z

    if-eqz v0, :cond_0

    .line 154
    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    const-string/jumbo v0, "E: "

    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 154
    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    sget-boolean v0, Lc8/aGo;->ERROR:Z

    if-eqz v0, :cond_0

    .line 168
    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const-string/jumbo v0, "E: "

    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 168
    goto :goto_0
.end method

.method private static getLogFile()Ljava/io/File;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 339
    :try_start_0
    invoke-static {}, Lc8/aGo;->createFile()Z

    move-result v1

    .line 340
    .local v1, "exists":Z
    if-nez v1, :cond_1

    move-object v2, v4

    .line 360
    :cond_0
    :goto_0
    return-object v2

    .line 344
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "sdCardPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/youku/youku_vip_logger/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "youku_vip_logger.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_0

    .line 348
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v4

    .line 349
    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v4

    .line 353
    goto :goto_0

    .line 357
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "sdCardPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v4

    .line 360
    goto :goto_0
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 267
    const-string/jumbo v3, ""

    .line 281
    :goto_0
    return-object v3

    .line 271
    :cond_0
    move-object v2, p0

    .line 272
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_2

    .line 273
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    .line 274
    const-string/jumbo v3, ""

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 278
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 279
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 280
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 281
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 190
    const-string/jumbo v0, "I: "

    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "I: "

    invoke-static {v0, p0, p1}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 181
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, "I: "

    invoke-static {v0, p0, p1, p2}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 195
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 197
    const-string/jumbo v0, "I: "

    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    :cond_0
    return-void
.end method

.method public static initLogger(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "debugMode"    # Z

    .prologue
    .line 70
    sput-object p0, Lc8/aGo;->TAG:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lc8/aGo;->setDebugMode(Z)V

    .line 72
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    :cond_0
    return-void
.end method

.method public static sd(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    :cond_0
    return-void
.end method

.method public static se(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 428
    const-string/jumbo v0, "s_tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    return-void
.end method

.method private static setDebugMode(Z)V
    .locals 4
    .param p0, "debugMode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    if-eqz p0, :cond_0

    const/4 v0, 0x5

    .line 76
    :goto_0
    sput v0, Lc8/aGo;->LOGLEVEL:I

    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Lc8/aGo;->VERBOSE:Z

    .line 77
    sget v0, Lc8/aGo;->LOGLEVEL:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_2

    move v0, v2

    :goto_2
    sput-boolean v0, Lc8/aGo;->DEBUG:Z

    .line 78
    sget v0, Lc8/aGo;->LOGLEVEL:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_3

    move v0, v2

    :goto_3
    sput-boolean v0, Lc8/aGo;->INFO:Z

    .line 79
    sget v0, Lc8/aGo;->LOGLEVEL:I

    if-le v0, v2, :cond_4

    move v0, v2

    :goto_4
    sput-boolean v0, Lc8/aGo;->WARN:Z

    .line 80
    sget v0, Lc8/aGo;->LOGLEVEL:I

    if-lez v0, :cond_5

    :goto_5
    sput-boolean v2, Lc8/aGo;->ERROR:Z

    .line 81
    return-void

    :cond_0
    move v0, v1

    .line 75
    goto :goto_0

    :cond_1
    move v0, v1

    .line 76
    goto :goto_1

    :cond_2
    move v0, v1

    .line 77
    goto :goto_2

    :cond_3
    move v0, v1

    .line 78
    goto :goto_3

    :cond_4
    move v0, v1

    .line 79
    goto :goto_4

    :cond_5
    move v2, v1

    .line 80
    goto :goto_5
.end method

.method public static si(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    :cond_0
    return-void
.end method

.method private static toNormalString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 312
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd|HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 313
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v0, "V: "

    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v0, "V: "

    invoke-static {v0, p0, p1}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "V: "

    invoke-static {v0, p0, p1, p2}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 113
    const-string/jumbo v0, "V: "

    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 216
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 218
    const-string/jumbo v0, "W: "

    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 204
    const-string/jumbo v0, "W: "

    invoke-static {v0, p0, p1}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 209
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 211
    const-string/jumbo v0, "W: "

    invoke-static {v0, p0, p1, p2}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 223
    sget-boolean v0, Lc8/aGo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 225
    const-string/jumbo v0, "W: "

    sget-object v1, Lc8/aGo;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    :cond_0
    return-void
.end method

.method private static write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "logType"    # Ljava/lang/String;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "logInfo"    # Ljava/lang/String;

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lc8/aGo;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    return-void
.end method

.method private static write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "logType"    # Ljava/lang/String;
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "logInfo"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 305
    return-void
.end method
