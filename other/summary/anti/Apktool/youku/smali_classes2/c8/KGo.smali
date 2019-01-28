.class public Lc8/KGo;
.super Ljava/lang/Object;
.source "VipSdcardUtils.java"


# static fields
.field private static final NOSPACE_THRESHOLD:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSDCard()Z
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 19
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAvailableStore(Ljava/lang/String;)J
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 34
    .local v6, "statFs":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v4, v7

    .line 35
    .local v4, "blocSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 36
    .local v0, "availaBlock":J
    mul-long v2, v0, v4

    .line 37
    .local v2, "availableSpare":J
    return-wide v2
.end method

.method public static getSDCardPathWithFileSeparators()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isSdcardHasSpareSpace()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-static {}, Lc8/KGo;->checkSDCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-static {}, Lc8/KGo;->getSDCardPathWithFileSeparators()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/KGo;->getAvailableStore(Ljava/lang/String;)J

    move-result-wide v0

    .line 48
    .local v0, "availableSize":J
    const-wide/16 v4, 0x3e8

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v2

    .line 51
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
