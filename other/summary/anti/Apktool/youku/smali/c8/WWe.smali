.class public Lc8/WWe;
.super Ljava/lang/Object;
.source "UTUtdid.java"


# static fields
.field private static final CREATE_LOCK:Ljava/lang/Object;

.field private static final S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

.field private static final S_GLOBAL_PERSISTENT_CONFIG_KEY:Ljava/lang/String; = "Alvin2"

.field private static final S_LOCAL_STORAGE_KEY:Ljava/lang/String; = "ContextData"

.field private static final S_LOCAL_STORAGE_NAME:Ljava/lang/String; = ".DataStorage"

.field private static final UM_SETTINGS_STORAGE:Ljava/lang/String; = "dxCRMxhQkdGePGnp"

.field private static final UM_SETTINGS_STORAGE_NEW:Ljava/lang/String; = "mqBRboGZkQPcAkyk"

.field private static s_umutdid:Lc8/WWe;


# instance fields
.field private mCBDomain:Ljava/lang/String;

.field private mCBKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPC:Lc8/PWe;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTaoPC:Lc8/PWe;

.field private mUtdid:Ljava/lang/String;

.field private mUtdidHelper:Lc8/YWe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/WWe;->CREATE_LOCK:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lc8/WWe;->s_umutdid:Lc8/WWe;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ".UTSystemConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/WWe;->S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lc8/WWe;->mContext:Landroid/content/Context;

    .line 34
    iput-object v1, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lc8/WWe;->mUtdidHelper:Lc8/YWe;

    .line 36
    const-string/jumbo v0, "xx_utdid_key"

    iput-object v0, p0, Lc8/WWe;->mCBKey:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "xx_utdid_domain"

    iput-object v0, p0, Lc8/WWe;->mCBDomain:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lc8/WWe;->mPC:Lc8/PWe;

    .line 43
    iput-object v1, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    .line 47
    const-string/jumbo v0, "[^0-9a-zA-Z=/+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lc8/WWe;->mPattern:Ljava/util/regex/Pattern;

    .line 50
    iput-object p1, p0, Lc8/WWe;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lc8/PWe;

    sget-object v2, Lc8/WWe;->S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    const-string/jumbo v3, "Alvin2"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lc8/PWe;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    .line 54
    new-instance v0, Lc8/PWe;

    const-string/jumbo v2, ".DataStorage"

    const-string/jumbo v3, "ContextData"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lc8/PWe;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lc8/WWe;->mPC:Lc8/PWe;

    .line 56
    new-instance v0, Lc8/YWe;

    invoke-direct {v0}, Lc8/YWe;-><init>()V

    iput-object v0, p0, Lc8/WWe;->mUtdidHelper:Lc8/YWe;

    .line 57
    const-string/jumbo v0, "K_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lc8/WWe;->mCBKey:Ljava/lang/String;

    invoke-static {v2}, Lc8/JWe;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/WWe;->mCBKey:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "D_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lc8/WWe;->mCBDomain:Ljava/lang/String;

    invoke-static {v2}, Lc8/JWe;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/WWe;->mCBDomain:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static calcHmac([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 455
    const/16 v4, 0x2c

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .line 459
    .local v0, "key":[B
    const-string/jumbo v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 460
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lc8/sWe;->rc4([B)[B

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 461
    .local v3, "sk":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 462
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 463
    .local v2, "result":[B
    const/4 v4, 0x2

    invoke-static {v2, v4}, Lc8/FWe;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 455
    :array_0
    .array-data 1
        0x45t
        0x72t
        0x74t
        -0x21t
        0x7dt
        -0x36t
        -0x1ft
        0x56t
        -0xbt
        0xbt
        -0x4et
        -0x60t
        -0x11t
        -0x63t
        0x40t
        0x17t
        -0x5ft
        -0x7et
        -0x52t
        -0x40t
        0x71t
        0x74t
        -0x10t
        -0x67t
        0x31t
        -0x1et
        0x9t
        -0x27t
        0x21t
        -0x50t
        -0x44t
        -0x4et
        -0x75t
        0x35t
        0x1et
        -0x7at
        0x40t
        -0x68t
        0x4at
        -0x31t
        0x6at
        0x55t
        -0x26t
        -0x5dt
    .end array-data
.end method

.method private checkSettingsPermission()Z
    .locals 5

    .prologue
    .line 467
    iget-object v1, p0, Lc8/WWe;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.WRITE_SETTINGS"

    .line 468
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 467
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 469
    .local v0, "lPermission":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generateUtdid()[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 426
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v11, v14

    .line 427
    .local v11, "timestamp":I
    new-instance v14, Ljava/util/Random;

    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    invoke-virtual {v14}, Ljava/util/Random;->nextInt()I

    move-result v12

    .line 428
    .local v12, "uniqueID":I
    const/4 v13, 0x3

    .line 429
    .local v13, "version":B
    const/4 v10, 0x0

    .line 430
    .local v10, "reserve":B
    invoke-static {v11}, Lc8/GWe;->getBytes(I)[B

    move-result-object v4

    .line 431
    .local v4, "bTimestamp":[B
    invoke-static {v12}, Lc8/GWe;->getBytes(I)[B

    move-result-object v5

    .line 432
    .local v5, "bUniqueID":[B
    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual {v6, v4, v14, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 433
    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual {v6, v5, v14, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 434
    invoke-virtual {v6, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 435
    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/WWe;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lc8/HWe;->getImei(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 442
    .local v9, "imei":Ljava/lang/String;
    :goto_0
    invoke-static {v9}, Lc8/JWe;->hashCode(Ljava/lang/String;)I

    move-result v7

    .line 443
    .local v7, "hashCode":I
    invoke-static {v7}, Lc8/GWe;->getBytes(I)[B

    move-result-object v3

    .line 444
    .local v3, "bHashCode":[B
    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual {v6, v3, v14, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 445
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-static {v14}, Lc8/WWe;->calcHmac([B)Ljava/lang/String;

    move-result-object v8

    .line 446
    .local v8, "hmac":Ljava/lang/String;
    invoke-static {v8}, Lc8/JWe;->hashCode(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lc8/GWe;->getBytes(I)[B

    move-result-object v2

    .line 447
    .local v2, "bCheckSum":[B
    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 448
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    return-object v14

    .line 440
    .end local v2    # "bCheckSum":[B
    .end local v3    # "bHashCode":[B
    .end local v7    # "hashCode":I
    .end local v8    # "hmac":Ljava/lang/String;
    .end local v9    # "imei":Ljava/lang/String;
    :catch_0
    move-exception v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    invoke-virtual {v15}, Ljava/util/Random;->nextInt()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "imei":Ljava/lang/String;
    goto :goto_0
.end method

.method private getUtdidFromTaoPPC()Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    iget-object v2, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    const-string/jumbo v3, "UTDID2"

    invoke-virtual {v2, v3}, Lc8/PWe;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "lUtdid":Ljava/lang/String;
    invoke-static {v1}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    iget-object v2, p0, Lc8/WWe;->mUtdidHelper:Lc8/YWe;

    invoke-virtual {v2, v1}, Lc8/YWe;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "lPackedUtdid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 240
    .end local v0    # "lPackedUtdid":Ljava/lang/String;
    .end local v1    # "lUtdid":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static instance(Landroid/content/Context;)Lc8/WWe;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    if-eqz p0, :cond_1

    .line 104
    sget-object v0, Lc8/WWe;->s_umutdid:Lc8/WWe;

    if-nez v0, :cond_1

    .line 105
    sget-object v1, Lc8/WWe;->CREATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lc8/WWe;->s_umutdid:Lc8/WWe;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lc8/WWe;

    invoke-direct {v0, p0}, Lc8/WWe;-><init>(Landroid/content/Context;)V

    .line 108
    sput-object v0, Lc8/WWe;->s_umutdid:Lc8/WWe;

    invoke-direct {v0}, Lc8/WWe;->removeIllegalKeys()V

    .line 110
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_1
    sget-object v0, Lc8/WWe;->s_umutdid:Lc8/WWe;

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isValidUtdid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pUtdid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 247
    if-eqz p1, :cond_1

    .line 249
    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 252
    :cond_0
    const/16 v2, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 253
    iget-object v2, p0, Lc8/WWe;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 255
    .local v0, "lMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    const/4 v1, 0x1

    .line 260
    .end local v0    # "lMatcher":Ljava/util/regex/Matcher;
    :cond_1
    return v1
.end method

.method private removeIllegalKeys()V
    .locals 7

    .prologue
    .line 65
    iget-object v5, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    if-eqz v5, :cond_4

    .line 66
    iget-object v5, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    const-string/jumbo v6, "UTDID2"

    invoke-virtual {v5, v6}, Lc8/PWe;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "lUtdid":Ljava/lang/String;
    invoke-static {v4}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    iget-object v5, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    const-string/jumbo v6, "UTDID"

    invoke-virtual {v5, v6}, Lc8/PWe;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-static {v4}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 70
    invoke-direct {p0, v4}, Lc8/WWe;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 73
    :cond_0
    const/4 v2, 0x0

    .line 74
    .local v2, "lNeedSync":Z
    iget-object v5, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    const-string/jumbo v6, "DID"

    invoke-virtual {v5, v6}, Lc8/PWe;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "lDID":Ljava/lang/String;
    invoke-static {v0}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    iget-object v5, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    const-string/jumbo v6, "DID"

    invoke-virtual {v5, v6}, Lc8/PWe;->remove(Ljava/lang/String;)V

    .line 77
    const/4 v2, 0x1

    .line 80
    :cond_1
    iget-object v5, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    const-string/jumbo v6, "EI"

    invoke-virtual {v5, v6}, Lc8/PWe;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "lEI":Ljava/lang/String;
    invoke-static {v1}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 82
    iget-object v5, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    const-string/jumbo v6, "EI"

    invoke-virtual {v5, v6}, Lc8/PWe;->remove(Ljava/lang/String;)V

    .line 83
    const/4 v2, 0x1

    .line 86
    :cond_2
    iget-object v5, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    const-string/jumbo v6, "SI"

    invoke-virtual {v5, v6}, Lc8/PWe;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "lSI":Ljava/lang/String;
    invoke-static {v3}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 88
    iget-object v5, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    const-string/jumbo v6, "SI"

    invoke-virtual {v5, v6}, Lc8/PWe;->remove(Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x1

    .line 92
    :cond_3
    if-eqz v2, :cond_4

    .line 93
    iget-object v5, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    invoke-virtual {v5}, Lc8/PWe;->commit()Z

    .line 97
    .end local v0    # "lDID":Ljava/lang/String;
    .end local v1    # "lEI":Ljava/lang/String;
    .end local v2    # "lNeedSync":Z
    .end local v3    # "lSI":Ljava/lang/String;
    .end local v4    # "lUtdid":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private saveUtdidToLocalStorage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pPackedUtdid"    # Ljava/lang/String;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v1, p0, Lc8/WWe;->mPC:Lc8/PWe;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lc8/WWe;->mPC:Lc8/PWe;

    iget-object v2, p0, Lc8/WWe;->mCBKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/PWe;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "lPackedUtdid":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lc8/WWe;->mPC:Lc8/PWe;

    iget-object v2, p0, Lc8/WWe;->mCBKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lc8/PWe;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lc8/WWe;->mPC:Lc8/PWe;

    invoke-virtual {v1}, Lc8/PWe;->commit()Z

    .line 149
    .end local v0    # "lPackedUtdid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private saveUtdidToNewSettings(Ljava/lang/String;)V
    .locals 3
    .param p1, "lUtdid"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0}, Lc8/WWe;->checkSettingsPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-direct {p0, p1}, Lc8/WWe;->isValidUtdid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    const-string/jumbo v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 164
    :cond_0
    const/16 v1, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lc8/WWe;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mqBRboGZkQPcAkyk"

    .line 167
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 174
    :goto_0
    invoke-direct {p0, v0}, Lc8/WWe;->isValidUtdid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    :try_start_1
    iget-object v1, p0, Lc8/WWe;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mqBRboGZkQPcAkyk"

    .line 176
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    .end local v0    # "data":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private saveUtdidToSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "lPackedUtdid"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-direct {p0}, Lc8/WWe;->checkSettingsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lc8/WWe;->syncUtdidToSettings(Ljava/lang/String;)V

    .line 223
    :cond_0
    return-void
.end method

.method private saveUtdidToTaoPPC(Ljava/lang/String;)V
    .locals 2
    .param p1, "pUtdid"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lc8/WWe;->isValidUtdid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    const-string/jumbo v1, "UTDID2"

    invoke-virtual {v0, v1, p1}, Lc8/PWe;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lc8/WWe;->mTaoPC:Lc8/PWe;

    invoke-virtual {v0}, Lc8/PWe;->commit()Z

    .line 134
    :cond_1
    return-void
.end method

.method private syncUtdidToSettings(Ljava/lang/String;)V
    .locals 3
    .param p1, "pPackedUtdid"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lc8/WWe;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dxCRMxhQkdGePGnp"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 201
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    :try_start_1
    iget-object v1, p0, Lc8/WWe;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dxCRMxhQkdGePGnp"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lc8/WWe;->getValueForUpdate()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValueForUpdate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc8/WWe;->readUtdid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;

    .line 282
    iget-object v3, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    iget-object v3, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :goto_0
    monitor-exit p0

    return-object v3

    .line 289
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lc8/WWe;->generateUtdid()[B

    move-result-object v2

    .line 290
    .local v2, "lUtdid":[B
    if-eqz v2, :cond_2

    .line 292
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lc8/FWe;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;

    .line 293
    iget-object v3, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;

    invoke-direct {p0, v3}, Lc8/WWe;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Lc8/WWe;->mUtdidHelper:Lc8/YWe;

    invoke-virtual {v3, v2}, Lc8/YWe;->pack([B)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "lPackedUtdid":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 298
    invoke-direct {p0, v1}, Lc8/WWe;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, v1}, Lc8/WWe;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 302
    :cond_1
    iget-object v3, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    .end local v1    # "lPackedUtdid":Ljava/lang/String;
    .end local v2    # "lUtdid":[B
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized readUtdid()Ljava/lang/String;
    .locals 15

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    const-string/jumbo v6, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    .local v6, "lNewSettingsUtdid":Ljava/lang/String;
    :try_start_1
    iget-object v13, p0, Lc8/WWe;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "mqBRboGZkQPcAkyk"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 323
    :goto_0
    :try_start_2
    invoke-direct {p0, v6}, Lc8/WWe;->isValidUtdid(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    if-eqz v13, :cond_0

    .line 418
    .end local v6    # "lNewSettingsUtdid":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-object v6

    .line 328
    .restart local v6    # "lNewSettingsUtdid":Ljava/lang/String;
    :cond_0
    :try_start_3
    new-instance v4, Lc8/XWe;

    invoke-direct {v4}, Lc8/XWe;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    .local v4, "lHelper2":Lc8/XWe;
    const/4 v5, 0x0

    .line 332
    .local v5, "lNeedUpdateSettings":Z
    const/4 v0, 0x0

    .line 334
    .local v0, "data":Ljava/lang/String;
    :try_start_4
    iget-object v13, p0, Lc8/WWe;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "dxCRMxhQkdGePGnp"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 339
    :goto_2
    :try_start_5
    invoke-static {v0}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 341
    invoke-virtual {v4, v0}, Lc8/XWe;->dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 342
    .local v11, "lTmpUtdidBase64":Ljava/lang/String;
    invoke-direct {p0, v11}, Lc8/WWe;->isValidUtdid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 344
    invoke-direct {p0, v11}, Lc8/WWe;->saveUtdidToNewSettings(Ljava/lang/String;)V

    move-object v6, v11

    .line 345
    goto :goto_1

    .line 348
    :cond_1
    invoke-virtual {v4, v0}, Lc8/XWe;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 349
    .local v10, "lTmpUtdid":Ljava/lang/String;
    invoke-direct {p0, v10}, Lc8/WWe;->isValidUtdid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 350
    iget-object v13, p0, Lc8/WWe;->mUtdidHelper:Lc8/YWe;

    invoke-virtual {v13, v10}, Lc8/YWe;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, "lPTmpUtdid":Ljava/lang/String;
    invoke-static {v7}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 353
    invoke-direct {p0, v7}, Lc8/WWe;->saveUtdidToSettings(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 356
    :try_start_6
    iget-object v13, p0, Lc8/WWe;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "dxCRMxhQkdGePGnp"

    .line 356
    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 364
    .end local v7    # "lPTmpUtdid":Ljava/lang/String;
    :cond_2
    :goto_3
    :try_start_7
    iget-object v13, p0, Lc8/WWe;->mUtdidHelper:Lc8/YWe;

    invoke-virtual {v13, v0}, Lc8/YWe;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "lDePackedUtdid":Ljava/lang/String;
    invoke-direct {p0, v3}, Lc8/WWe;->isValidUtdid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 366
    iput-object v3, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;

    .line 368
    invoke-direct {p0, v3}, Lc8/WWe;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0, v0}, Lc8/WWe;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 372
    iget-object v13, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;

    invoke-direct {p0, v13}, Lc8/WWe;->saveUtdidToNewSettings(Ljava/lang/String;)V

    .line 373
    iget-object v6, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;

    goto :goto_1

    .line 378
    .end local v3    # "lDePackedUtdid":Ljava/lang/String;
    .end local v10    # "lTmpUtdid":Ljava/lang/String;
    .end local v11    # "lTmpUtdidBase64":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    .line 382
    :cond_4
    invoke-direct {p0}, Lc8/WWe;->getUtdidFromTaoPPC()Ljava/lang/String;

    move-result-object v9

    .line 383
    .local v9, "lSUtdid":Ljava/lang/String;
    invoke-direct {p0, v9}, Lc8/WWe;->isValidUtdid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 384
    iget-object v13, p0, Lc8/WWe;->mUtdidHelper:Lc8/YWe;

    invoke-virtual {v13, v9}, Lc8/YWe;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 385
    .local v8, "lPackedUtdid":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 387
    invoke-direct {p0, v8}, Lc8/WWe;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 390
    :cond_5
    invoke-direct {p0, v9}, Lc8/WWe;->saveUtdidToNewSettings(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0, v8}, Lc8/WWe;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 393
    iput-object v9, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;

    move-object v6, v9

    .line 394
    goto/16 :goto_1

    .line 398
    .end local v8    # "lPackedUtdid":Ljava/lang/String;
    :cond_6
    iget-object v13, p0, Lc8/WWe;->mPC:Lc8/PWe;

    iget-object v14, p0, Lc8/WWe;->mCBKey:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lc8/PWe;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "lContent":Ljava/lang/String;
    invoke-static {v2}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 400
    invoke-virtual {v4, v2}, Lc8/XWe;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 401
    .local v12, "lUtdid":Ljava/lang/String;
    invoke-direct {p0, v12}, Lc8/WWe;->isValidUtdid(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 402
    iget-object v13, p0, Lc8/WWe;->mUtdidHelper:Lc8/YWe;

    invoke-virtual {v13, v2}, Lc8/YWe;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 404
    :cond_7
    invoke-direct {p0, v12}, Lc8/WWe;->isValidUtdid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 405
    iget-object v13, p0, Lc8/WWe;->mUtdidHelper:Lc8/YWe;

    invoke-virtual {v13, v12}, Lc8/YWe;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "lBUtdid":Ljava/lang/String;
    invoke-static {v12}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 407
    iput-object v12, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;

    .line 408
    if-eqz v5, :cond_8

    .line 410
    invoke-direct {p0, v1}, Lc8/WWe;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 413
    :cond_8
    iget-object v13, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;

    invoke-direct {p0, v13}, Lc8/WWe;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 414
    iget-object v6, p0, Lc8/WWe;->mUtdid:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 418
    .end local v1    # "lBUtdid":Ljava/lang/String;
    .end local v12    # "lUtdid":Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 315
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "lContent":Ljava/lang/String;
    .end local v4    # "lHelper2":Lc8/XWe;
    .end local v5    # "lNeedUpdateSettings":Z
    .end local v6    # "lNewSettingsUtdid":Ljava/lang/String;
    .end local v9    # "lSUtdid":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .restart local v0    # "data":Ljava/lang/String;
    .restart local v4    # "lHelper2":Lc8/XWe;
    .restart local v5    # "lNeedUpdateSettings":Z
    .restart local v6    # "lNewSettingsUtdid":Ljava/lang/String;
    .restart local v7    # "lPTmpUtdid":Ljava/lang/String;
    .restart local v10    # "lTmpUtdid":Ljava/lang/String;
    .restart local v11    # "lTmpUtdidBase64":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto/16 :goto_3

    .end local v7    # "lPTmpUtdid":Ljava/lang/String;
    .end local v10    # "lTmpUtdid":Ljava/lang/String;
    .end local v11    # "lTmpUtdidBase64":Ljava/lang/String;
    :catch_1
    move-exception v13

    goto/16 :goto_2

    .end local v0    # "data":Ljava/lang/String;
    .end local v4    # "lHelper2":Lc8/XWe;
    .end local v5    # "lNeedUpdateSettings":Z
    :catch_2
    move-exception v13

    goto/16 :goto_0
.end method
