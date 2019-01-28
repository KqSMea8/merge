.class public Lc8/XA;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckFileValidation(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "flag":Z
    const/4 v1, 0x0

    .line 228
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 233
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_0
    const/4 v3, 0x1

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 235
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-gtz v3, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 241
    :cond_0
    :goto_1
    return v0

    .line 230
    :catch_0
    move-exception v3

    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :catch_1
    move-exception v3

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getAvailableDisk()Ljava/lang/String;
    .locals 4

    .prologue
    .line 305
    const-string/jumbo v0, ""

    .line 308
    .local v0, "avliableSpace":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lc8/XA;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getUsableSpace(Ljava/io/File;)J
    .locals 8
    .param p0, "path"    # Ljava/io/File;

    .prologue
    const-wide/16 v6, 0x400

    .line 251
    if-nez p0, :cond_0

    .line 252
    const-wide/16 v2, -0x1

    .line 261
    :goto_0
    return-wide v2

    .line 254
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 255
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 258
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 260
    :cond_2
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "stats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    goto :goto_0
.end method
