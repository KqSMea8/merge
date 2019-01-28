.class public Lc8/IHf;
.super Ljava/lang/Object;
.source "TLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/HHf;
    }
.end annotation


# static fields
.field private static final HEX:[C

.field private static volatile LOG_FILE_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/IHf;->HEX:[C

    .line 521
    const/4 v0, -0x1

    sput v0, Lc8/IHf;->LOG_FILE_COUNT:I

    return-void

    .line 35
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 882
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static checkFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "prefixOfFileName"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-static {}, Lc8/EHf;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/IHf;->getLogFileCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, p0, v1}, Lc8/IHf;->checkFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    return-void
.end method

.method public static checkFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p0, "fileDirs"    # Ljava/lang/String;
    .param p1, "prefixOfFileName"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 247
    sget-object p1, Lc8/zHf;->FILE_PREFIX:Ljava/lang/String;

    .line 251
    :cond_0
    move v5, p2

    .local v5, "logFileCount":I
    if-gez p2, :cond_2

    .line 288
    :cond_1
    return-void

    .line 254
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 255
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 258
    .local v1, "children":[Ljava/io/File;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-le v8, v5, :cond_1

    .line 259
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v7, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v1

    if-ge v3, v8, :cond_7

    .line 261
    aget-object v0, v1, v3

    .line 262
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 263
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 264
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 268
    .local v6, "size":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_5

    .line 270
    invoke-interface {v7, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 272
    :cond_5
    add-int/lit8 v8, v6, -0x1

    if-ne v4, v8, :cond_6

    .line 273
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 278
    .end local v0    # "child":Ljava/io/File;
    .end local v4    # "j":I
    .end local v6    # "size":I
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_1

    .line 279
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_1

    .line 280
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "the delete file name is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 282
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3
.end method

.method public static cipherRC4([B[BZ)[B
    .locals 7
    .param p0, "input"    # [B
    .param p1, "appSecret"    # [B
    .param p2, "encrypt"    # Z

    .prologue
    .line 823
    :try_start_0
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 824
    .local v3, "sr":Ljava/security/SecureRandom;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v4, 0x0

    array-length v5, p1

    const-string/jumbo v6, "RC4"

    invoke-direct {v2, p1, v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 825
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v4, "RC4"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 826
    .local v0, "cipher":Ljavax/crypto/Cipher;
    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 827
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 831
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "sr":Ljava/security/SecureRandom;
    :goto_1
    return-object v4

    .line 826
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v3    # "sr":Ljava/security/SecureRandom;
    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    .line 828
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "sr":Ljava/security/SecureRandom;
    :catch_0
    move-exception v1

    .line 829
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 831
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static clearDir(Ljava/io/File;)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 860
    const/4 v5, 0x1

    .line 861
    .local v5, "result":Z
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 862
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 863
    .local v2, "children":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 864
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    and-int/2addr v5, v6

    .line 863
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "child":Ljava/io/File;
    :cond_0
    move v6, v5

    .line 868
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "children":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static convertLogLevel(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;
    .locals 2
    .param p0, "logLevel"    # Ljava/lang/String;

    .prologue
    .line 618
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->L:Lcom/taobao/tao/log/LogLevel;

    .line 619
    .local v0, "level":Lcom/taobao/tao/log/LogLevel;
    const-string/jumbo v1, "ERROR"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    .line 630
    :cond_0
    :goto_0
    return-object v0

    .line 621
    :cond_1
    const-string/jumbo v1, "WARN"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->W:Lcom/taobao/tao/log/LogLevel;

    goto :goto_0

    .line 623
    :cond_2
    const-string/jumbo v1, "INFO"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 624
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->I:Lcom/taobao/tao/log/LogLevel;

    goto :goto_0

    .line 625
    :cond_3
    const-string/jumbo v1, "DEBUG"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 626
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->D:Lcom/taobao/tao/log/LogLevel;

    goto :goto_0

    .line 627
    :cond_4
    const-string/jumbo v1, "VerBose"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->V:Lcom/taobao/tao/log/LogLevel;

    goto :goto_0
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 800
    array-length v2, p0

    .line 801
    .local v2, "len":I
    new-instance v0, Ljava/lang/StringBuilder;

    shl-int/lit8 v3, v2, 0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 802
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 803
    sget-object v3, Lc8/IHf;->HEX:[C

    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 804
    sget-object v3, Lc8/IHf;->HEX:[C

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 802
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 8
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v7, v2, :cond_9

    .line 437
    const/4 v1, 0x0

    .line 438
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 440
    .local v6, "outChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 441
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 444
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 446
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 447
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 448
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    if-eqz v1, :cond_2

    .line 458
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 460
    :cond_2
    if-eqz v6, :cond_3

    .line 461
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 465
    .end local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "outChannel":Ljava/nio/channels/FileChannel;
    .end local p1    # "dest":Ljava/io/File;
    :cond_3
    :goto_1
    return-object p1

    .line 450
    .restart local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "outChannel":Ljava/nio/channels/FileChannel;
    .restart local p1    # "dest":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 452
    const/4 v2, 0x2

    if-ne v7, v2, :cond_6

    .line 453
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to copy file[src="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", dest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 458
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 460
    :cond_4
    if-eqz v6, :cond_5

    .line 461
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    throw v2

    .line 457
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    if-eqz v1, :cond_7

    .line 458
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 460
    :cond_7
    if-eqz v6, :cond_8

    .line 461
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 436
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 465
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "outChannel":Ljava/nio/channels/FileChannel;
    :cond_9
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public static countLengthOfLog(Lc8/BHf;)I
    .locals 9
    .param p0, "entity"    # Lc8/BHf;

    .prologue
    const/4 v7, 0x0

    .line 925
    const/4 v4, 0x0

    .line 926
    .local v4, "result":I
    if-nez p0, :cond_0

    move v5, v4

    .line 951
    .end local v4    # "result":I
    .local v5, "result":I
    :goto_0
    return v5

    .line 929
    .end local v5    # "result":I
    .restart local v4    # "result":I
    :cond_0
    iget-object v8, p0, Lc8/BHf;->clientID:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v1, v7

    .line 930
    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Lc8/BHf;->serverID:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v7

    .line 931
    .local v2, "j":I
    :goto_2
    const/4 v3, 0x0

    .line 932
    .local v3, "k":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    iget-object v7, p0, Lc8/BHf;->content:[Ljava/lang/Object;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lc8/BHf;->content:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v0, v7, :cond_7

    .line 933
    iget-object v7, p0, Lc8/BHf;->content:[Ljava/lang/Object;

    aget-object v6, v7, v0

    .line 934
    .local v6, "tmp":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 935
    check-cast v6, Ljava/lang/String;

    .end local v6    # "tmp":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    .line 932
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 929
    .end local v0    # "a":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "k":I
    :cond_1
    iget-object v8, p0, Lc8/BHf;->clientID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 930
    .restart local v1    # "i":I
    :cond_2
    iget-object v7, p0, Lc8/BHf;->serverID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_2

    .line 936
    .restart local v0    # "a":I
    .restart local v2    # "j":I
    .restart local v3    # "k":I
    .restart local v6    # "tmp":Ljava/lang/Object;
    :cond_3
    instance-of v7, v6, Ljava/lang/Character;

    if-eqz v7, :cond_4

    .line 937
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 938
    :cond_4
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_5

    .line 939
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 940
    :cond_5
    instance-of v7, v6, Ljava/lang/Byte;

    if-eqz v7, :cond_6

    .line 941
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 943
    :cond_6
    add-int/lit8 v3, v3, 0x4

    goto :goto_4

    .line 946
    .end local v6    # "tmp":Ljava/lang/Object;
    :cond_7
    iget-object v7, p0, Lc8/BHf;->tag:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0xd

    add-int v4, v7, v3

    .line 947
    iget-object v7, p0, Lc8/BHf;->format:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 948
    iget-object v7, p0, Lc8/BHf;->format:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    :cond_8
    move v5, v4

    .line 951
    .end local v4    # "result":I
    .restart local v5    # "result":I
    goto/16 :goto_0
.end method

.method public static createFileHeader()[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 893
    const/16 v7, 0x80

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 895
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    sget-object v7, Lc8/zHf;->MAGIC_NUMBER:[B

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 896
    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 898
    invoke-static {}, Lc8/EHf;->getAppkey()Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, "appkey":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 900
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    int-to-byte v5, v7

    .line 901
    .local v5, "length":B
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 902
    .local v0, "appKeys":[B
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 903
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 905
    .end local v0    # "appKeys":[B
    .end local v5    # "length":B
    :cond_0
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 906
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 908
    invoke-static {v8}, Lc8/IHf;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 909
    invoke-static {v8}, Lc8/IHf;->intToByteArray(I)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 911
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    new-array v6, v7, [B

    .line 912
    .local v6, "result":[B
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 913
    .local v2, "array":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v6

    if-ge v4, v7, :cond_1

    .line 914
    aget-byte v7, v2, v4

    aput-byte v7, v6, v4

    .line 913
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 916
    :cond_1
    return-object v6
.end method

.method public static createFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    sget-object v1, Lc8/zHf;->FILE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :goto_0
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {}, Lc8/IHf;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string/jumbo v1, ".tlog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 296
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 758
    if-nez p0, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-object v1

    .line 761
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lc8/IHf;->decode([B)[B

    move-result-object v0

    .line 762
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 763
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 1
    .param p0, "content"    # [B

    .prologue
    const/4 v0, 0x0

    .line 771
    if-nez p0, :cond_0

    .line 784
    :cond_0
    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 708
    if-nez p0, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-object v1

    .line 712
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lc8/IHf;->encrypt([B)[B

    move-result-object v0

    .line 713
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 714
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 719
    .end local v0    # "result":[B
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static encrypt([B)[B
    .locals 1
    .param p0, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 724
    if-nez p0, :cond_0

    .line 737
    :cond_0
    return-object v0
.end method

.method public static encryptNoB64([B)[B
    .locals 1
    .param p0, "content"    # [B

    .prologue
    const/4 v0, 0x0

    .line 741
    if-nez p0, :cond_0

    .line 754
    :cond_0
    return-object v0
.end method

.method public static encryptRC4([BLjava/lang/String;Z)[B
    .locals 7
    .param p0, "content"    # [B
    .param p1, "appSecret"    # Ljava/lang/String;
    .param p2, "bEncrypt"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 835
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p0, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-object v2

    .line 838
    :cond_1
    const-string/jumbo v4, "MD5"

    invoke-static {p1, v4}, Lc8/IHf;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 839
    .local v3, "pk":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 841
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lc8/IHf;->cipherRC4([B[BZ)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 842
    .local v2, "output":[B
    goto :goto_0

    .line 843
    .end local v2    # "output":[B
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 850
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v1, p0

    .local v1, "inputBytes":[B
    :try_start_1
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lc8/IHf;->cipherRC4([B[BZ)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 851
    .restart local v2    # "output":[B
    goto :goto_0

    .line 852
    .end local v2    # "output":[B
    :catch_1
    move-exception v0

    .line 853
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAbsoluteFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefixName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 364
    if-eqz p0, :cond_0

    .line 365
    invoke-static {}, Lc8/EHf;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    invoke-static {p0}, Lc8/IHf;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/IHf;->createFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 370
    .restart local v1    # "filePath":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lc8/IHf;->createFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getAppBuildVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 554
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 557
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 558
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0

    .line 561
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static getAssistFilePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p0, "fileDir"    # Ljava/lang/String;
    .param p1, "days"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 39
    const/4 v13, 0x0

    .line 72
    :cond_0
    :goto_0
    return-object v13

    .line 41
    :cond_1
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v12, "parent":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 43
    const/4 v13, 0x0

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 47
    .local v3, "children":[Ljava/io/File;
    if-eqz v3, :cond_3

    array-length v14, v3

    if-nez v14, :cond_4

    .line 48
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 50
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v13, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_5

    .line 53
    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/String;

    move-object/from16 p1, v0

    .line 54
    const/4 v14, 0x0

    invoke-static {}, Lc8/IHf;->getDate()Ljava/lang/String;

    move-result-object v15

    aput-object v15, p1, v14

    .line 57
    :cond_5
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v14, v3

    if-ge v7, v14, :cond_0

    .line 58
    aget-object v14, v3, v7

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "childName":Ljava/lang/String;
    const-string/jumbo v14, ".tlog"

    invoke-virtual {v2, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 60
    .local v9, "index1":I
    const-string/jumbo v14, "_"

    invoke-virtual {v2, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 62
    .local v10, "index2":I
    add-int/lit8 v14, v10, 0x1

    :try_start_0
    invoke-virtual {v2, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "date":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v11, v0

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v11, :cond_7

    aget-object v5, v1, v8

    .line 64
    .local v5, "day":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 65
    aget-object v14, v3, v7

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 68
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "date":Ljava/lang/String;
    .end local v5    # "day":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v11    # "len$":I
    :catch_0
    move-exception v6

    .line 69
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static getAvailableSdcard(Landroid/content/Context;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    if-nez p0, :cond_0

    .line 482
    const-wide/16 v0, -0x1

    .line 490
    :goto_0
    return-wide v0

    .line 483
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 484
    .local v6, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 485
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 486
    .local v4, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v2, v8

    .line 488
    .local v2, "availableBlocks":J
    mul-long v8, v2, v4

    const-wide/32 v10, 0x100000

    div-long v0, v8, v10

    .line 490
    .local v0, "availSize":J
    goto :goto_0
.end method

.method public static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 691
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 692
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 694
    const-string/jumbo v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "46007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 695
    :cond_0
    const-string/jumbo v2, "\u79fb\u52a8"

    .line 704
    :goto_0
    return-object v2

    .line 696
    :cond_1
    const-string/jumbo v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "46006"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 697
    :cond_2
    const-string/jumbo v2, "\u8054\u901a"

    goto :goto_0

    .line 698
    :cond_3
    const-string/jumbo v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "46005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 699
    :cond_4
    const-string/jumbo v2, "\u7535\u4fe1"

    goto :goto_0

    .line 701
    :cond_5
    const-string/jumbo v2, "unknown"

    goto :goto_0

    .line 704
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 341
    if-nez p0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-object v5

    .line 343
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 344
    .local v4, "pid":I
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 345
    .local v3, "mActivityManager":Landroid/app/ActivityManager;
    if-eqz v3, :cond_0

    .line 347
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 348
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 351
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 352
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v4, :cond_2

    .line 353
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v4    # "pid":I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static getDate()Ljava/lang/String;
    .locals 8

    .prologue
    .line 311
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 313
    .local v4, "timestamp":J
    sget-object v6, Lc8/HHf;->$SwitchMap$com$taobao$tao$log$TLogFileSaveStrategy:[I

    invoke-static {}, Lc8/EHf;->getStrategy()Lcom/taobao/tao/log/TLogFileSaveStrategy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/tao/log/TLogFileSaveStrategy;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 321
    const-string/jumbo v1, "yyyyMMdd"

    .line 324
    .local v1, "format":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 327
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 328
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 334
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "format":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_1
    return-object v2

    .line 315
    :pswitch_0
    :try_start_2
    const-string/jumbo v1, "yyyyMMdd"

    .line 316
    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_0

    .line 318
    .end local v1    # "format":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "yyyyMMddHHmm"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 319
    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_0

    .line 330
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v6

    const/4 v2, 0x0

    goto :goto_1

    .line 334
    .end local v1    # "format":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v6

    const-string/jumbo v2, "2015-01-01"

    goto :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getFileHeaderLenght()I
    .locals 3

    .prologue
    .line 988
    invoke-static {}, Lc8/EHf;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v0, v2

    .line 989
    .local v0, "appkeyLength":I
    add-int/lit8 v1, v0, 0x10

    .line 990
    .local v1, "headerLength":I
    return v1
.end method

.method public static getFilePath(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "count"    # I
    .param p2, "days"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 77
    const/16 v16, 0x0

    .line 140
    :cond_0
    :goto_0
    return-object v16

    .line 78
    :cond_1
    invoke-static {}, Lc8/EHf;->getPath()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_2

    .line 79
    const/16 v16, 0x0

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {}, Lc8/EHf;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, "dirs":Ljava/lang/String;
    const/16 v16, 0x0

    .line 83
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v10, "files":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 86
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 87
    .local v5, "children":[Ljava/io/File;
    if-eqz v5, :cond_4

    array-length v0, v5

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 88
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_b

    .line 94
    aget-object v19, v5, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "child":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 96
    aget-object v19, v5, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 90
    .end local v4    # "child":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    .line 99
    .restart local v4    # "child":Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 101
    if-eqz p2, :cond_7

    .line 102
    move-object/from16 v2, p2

    .local v2, "arr$":[Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v15, v0

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_3
    if-ge v12, v15, :cond_3

    aget-object v7, v2, v12

    .line 103
    .local v7, "day":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 104
    aget-object v19, v5, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 109
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "day":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    :cond_7
    invoke-static {v4}, Lc8/IHf;->parseDataInName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    if-eqz v4, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_a

    .line 111
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 112
    .local v17, "size":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    .line 113
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "brother":Ljava/lang/String;
    invoke-static {v3}, Lc8/IHf;->parseDataInName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "data":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 117
    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-gtz v19, :cond_8

    .line 118
    aget-object v19, v5, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v13, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 120
    :cond_8
    add-int/lit8 v19, v17, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_9

    .line 121
    aget-object v19, v5, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 112
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 127
    .end local v3    # "brother":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    .end local v13    # "j":I
    .end local v17    # "size":I
    :cond_a
    aget-object v19, v5, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 134
    .end local v4    # "child":Ljava/lang/String;
    .end local v5    # "children":[Ljava/io/File;
    .end local v11    # "i":I
    :cond_b
    if-lez p1, :cond_0

    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_0

    .line 135
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    sub-int v18, v19, p1

    .line 136
    .local v18, "tmp":I
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_5
    move/from16 v0, v18

    if-ge v14, v0, :cond_0

    .line 137
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 136
    add-int/lit8 v14, v14, 0x1

    goto :goto_5
.end method

.method public static getHeaderLogCount(Ljava/io/File;)[I
    .locals 13
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v12, 0x4

    .line 956
    const/4 v6, 0x0

    .line 959
    .local v6, "result":[I
    :try_start_0
    invoke-static {}, Lc8/IHf;->getFileHeaderLenght()I

    move-result v2

    .line 960
    .local v2, "headerLength":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    int-to-long v10, v2

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 961
    :cond_0
    const/4 v8, 0x0

    .line 983
    .end local v2    # "headerLength":I
    :goto_0
    return-object v8

    .line 963
    .restart local v2    # "headerLength":I
    :cond_1
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "r"

    invoke-direct {v5, p0, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 964
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    new-array v1, v2, [B

    .line 965
    .local v1, "header":[B
    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 967
    const/4 v8, 0x4

    new-array v4, v8, [B

    .line 968
    .local v4, "invorkCount":[B
    const/4 v8, 0x4

    new-array v7, v8, [B

    .line 969
    .local v7, "writeLogCount":[B
    const/4 v8, 0x2

    new-array v6, v8, [I

    .line 970
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v12, :cond_2

    .line 971
    add-int/lit8 v8, v2, -0x8

    add-int/2addr v8, v3

    aget-byte v8, v1, v8

    aput-byte v8, v4, v3

    .line 970
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 974
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v12, :cond_3

    .line 975
    add-int/lit8 v8, v2, -0x4

    add-int/2addr v8, v3

    aget-byte v8, v1, v8

    aput-byte v8, v7, v3

    .line 974
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 978
    :cond_3
    const/4 v8, 0x0

    invoke-static {v4}, Lc8/IHf;->byteArrayToInt([B)I

    move-result v9

    aput v9, v6, v8

    .line 979
    const/4 v8, 0x1

    invoke-static {v7}, Lc8/IHf;->byteArrayToInt([B)I

    move-result v9

    aput v9, v6, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "header":[B
    .end local v2    # "headerLength":I
    .end local v3    # "i":I
    .end local v4    # "invorkCount":[B
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v7    # "writeLogCount":[B
    :goto_3
    move-object v8, v6

    .line 983
    goto :goto_0

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static getLogFileCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x1f4

    const-wide/16 v4, 0x64

    .line 503
    sget v2, Lc8/IHf;->LOG_FILE_COUNT:I

    if-lez v2, :cond_0

    .line 504
    sget v2, Lc8/IHf;->LOG_FILE_COUNT:I

    .line 517
    :goto_0
    return v2

    .line 506
    :cond_0
    if-nez p0, :cond_1

    .line 507
    const/4 v2, 0x1

    goto :goto_0

    .line 509
    :cond_1
    invoke-static {p0}, Lc8/IHf;->getAvailableSdcard(Landroid/content/Context;)J

    move-result-wide v0

    .line 510
    .local v0, "size":J
    cmp-long v2, v0, v4

    if-gtz v2, :cond_2

    .line 511
    const/4 v2, 0x0

    goto :goto_0

    .line 512
    :cond_2
    cmp-long v2, v0, v4

    if-lez v2, :cond_3

    cmp-long v2, v0, v6

    if-gtz v2, :cond_3

    .line 513
    const/4 v2, 0x3

    goto :goto_0

    .line 514
    :cond_3
    cmp-long v2, v0, v6

    if-lez v2, :cond_4

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 515
    const/4 v2, 0x5

    goto :goto_0

    .line 517
    :cond_4
    const/4 v2, 0x7

    goto :goto_0
.end method

.method public static getLogFileLength(Landroid/content/Context;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v2, 0x200000

    const-wide/16 v8, 0x1f4

    const-wide/16 v6, 0x64

    .line 537
    if-nez p0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-wide v2

    .line 540
    :cond_1
    invoke-static {p0}, Lc8/IHf;->getAvailableSdcard(Landroid/content/Context;)J

    move-result-wide v0

    .line 541
    .local v0, "size":J
    cmp-long v4, v0, v6

    if-gtz v4, :cond_2

    .line 542
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 543
    :cond_2
    cmp-long v4, v0, v6

    if-lez v4, :cond_3

    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    .line 545
    :cond_3
    cmp-long v2, v0, v8

    if-lez v2, :cond_4

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 546
    const-wide/32 v2, 0x400000

    goto :goto_0

    .line 548
    :cond_4
    const-wide/32 v2, 0x500000

    goto :goto_0
.end method

.method public static getNetWorkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 637
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 638
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 639
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 641
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 642
    .local v2, "type":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 643
    const-string/jumbo v3, "WIFI"

    .line 669
    .end local v2    # "type":I
    :goto_0
    return-object v3

    .line 644
    .restart local v2    # "type":I
    :cond_0
    if-nez v2, :cond_1

    .line 645
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 669
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 651
    :pswitch_0
    const-string/jumbo v3, "2G"

    goto :goto_0

    .line 661
    :pswitch_1
    const-string/jumbo v3, "3G"

    goto :goto_0

    .line 663
    :pswitch_2
    const-string/jumbo v3, "4G"

    goto :goto_0

    .line 667
    .end local v2    # "type":I
    :cond_2
    const-string/jumbo v3, "NOT_NETWORK"

    goto :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getPrefixName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 419
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 420
    const-string/jumbo v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 421
    .local v0, "index":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 426
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-object v1

    .line 424
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    if-nez p0, :cond_1

    .line 382
    const/4 v2, 0x0

    .line 396
    :cond_0
    :goto_0
    return-object v2

    .line 384
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    invoke-static {p0}, Lc8/IHf;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "processName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 388
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 389
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 396
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getTimesnight()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 676
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 677
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 678
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 679
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 680
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 682
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getTnetFilePath(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "count"    # I
    .param p2, "days"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 145
    const/16 v16, 0x0

    .line 215
    :cond_0
    :goto_0
    return-object v16

    .line 146
    :cond_1
    invoke-static {}, Lc8/EHf;->getPath()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_2

    .line 147
    const/16 v16, 0x0

    goto :goto_0

    .line 150
    :cond_2
    const/4 v8, 0x0

    .line 151
    .local v8, "dirs":Ljava/lang/String;
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 152
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 153
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "tnetlogs"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 156
    :cond_3
    if-nez v8, :cond_4

    .line 157
    const/16 v16, 0x0

    goto :goto_0

    .line 159
    :cond_4
    const/16 v16, 0x0

    .line 160
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v10, "files":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 163
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 164
    .local v5, "children":[Ljava/io/File;
    if-eqz v5, :cond_6

    array-length v0, v5

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 165
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_d

    .line 171
    aget-object v19, v5, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "child":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 173
    aget-object v19, v5, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 167
    .end local v4    # "child":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 176
    .restart local v4    # "child":Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 177
    if-eqz p2, :cond_9

    .line 178
    move-object/from16 v2, p2

    .local v2, "arr$":[Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v15, v0

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_3
    if-ge v12, v15, :cond_5

    aget-object v7, v2, v12

    .line 179
    .local v7, "day":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 180
    aget-object v19, v5, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 185
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "day":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    :cond_9
    invoke-static {v4}, Lc8/IHf;->parseDataInName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    if-eqz v4, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_c

    .line 187
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 188
    .local v17, "size":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 189
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "brother":Ljava/lang/String;
    invoke-static {v3}, Lc8/IHf;->parseDataInName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "data":Ljava/lang/String;
    if-eqz v6, :cond_b

    .line 193
    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-gtz v19, :cond_a

    .line 194
    aget-object v19, v5, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v13, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 196
    :cond_a
    add-int/lit8 v19, v17, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_b

    .line 197
    aget-object v19, v5, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 188
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 203
    .end local v3    # "brother":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    .end local v13    # "j":I
    .end local v17    # "size":I
    :cond_c
    aget-object v19, v5, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 209
    .end local v4    # "child":Ljava/lang/String;
    .end local v5    # "children":[Ljava/io/File;
    .end local v11    # "i":I
    :cond_d
    if-lez p1, :cond_0

    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_0

    .line 210
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    sub-int v18, v19, p1

    .line 211
    .local v18, "tmp":I
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_5
    move/from16 v0, v18

    if-ge v14, v0, :cond_0

    .line 212
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 211
    add-int/lit8 v14, v14, 0x1

    goto :goto_5
.end method

.method protected static getValue(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 468
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x41

    .line 474
    :goto_0
    return v0

    .line 469
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 470
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x34

    goto :goto_0

    .line 471
    :cond_2
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_3

    const/16 v0, 0x3e

    goto :goto_0

    .line 472
    :cond_3
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_4

    const/16 v0, 0x3f

    goto :goto_0

    .line 473
    :cond_4
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    .line 474
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 788
    const-string/jumbo v0, ""

    .line 789
    .local v0, "hash":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 791
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 792
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 793
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lc8/IHf;->convertToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 796
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static intToByteArray(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 872
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 874
    .local v0, "result":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 875
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 876
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 877
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 878
    return-object v0
.end method

.method public static isApkDebugable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 572
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 573
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 577
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    invoke-static {p0}, Lc8/IHf;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    const/4 v2, 0x1

    .line 409
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static makeModule(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/log/LogLevel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 587
    const/4 v1, 0x0

    .line 588
    .local v1, "filter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-object v7

    .line 591
    :cond_1
    const-string/jumbo v8, "off"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 594
    const-string/jumbo v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, "modules":[Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 596
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "filter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 597
    .restart local v1    # "filter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v5

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 598
    .local v4, "module":Ljava/lang/String;
    const-string/jumbo v7, "@"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 599
    .local v6, "values":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v7, v6

    if-lez v7, :cond_2

    .line 600
    array-length v7, v6

    if-ne v7, v10, :cond_3

    .line 601
    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 602
    :cond_3
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 603
    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v6, v10

    invoke-static {v8}, Lc8/IHf;->convertLogLevel(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "module":Ljava/lang/String;
    .end local v6    # "values":[Ljava/lang/String;
    :cond_4
    move-object v7, v1

    .line 608
    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 810
    const-string/jumbo v1, ""

    .line 811
    .local v1, "result":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 812
    const-string/jumbo v2, "MD5"

    invoke-static {p0, v2}, Lc8/IHf;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 818
    :cond_0
    :goto_0
    return-object v1

    .line 813
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 814
    const-string/jumbo v2, "MD5"

    invoke-static {p0, v2}, Lc8/IHf;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "md5":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 816
    const/16 v2, 0x8

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseDataInName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 219
    const-string/jumbo v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "strs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 222
    aget-object v0, v2, v6

    .line 233
    :goto_0
    return-object v0

    .line 223
    :cond_0
    if-eqz v2, :cond_2

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 224
    aget-object v0, v2, v6

    .line 225
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 226
    .local v1, "index":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    move-object v0, v3

    .line 227
    goto :goto_0

    .line 229
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 230
    goto :goto_0

    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_2
    move-object v0, v3

    .line 231
    goto :goto_0
.end method

.method public static setLogFileCount(I)V
    .locals 0
    .param p0, "count"    # I

    .prologue
    .line 524
    sput p0, Lc8/IHf;->LOG_FILE_COUNT:I

    .line 525
    return-void
.end method
