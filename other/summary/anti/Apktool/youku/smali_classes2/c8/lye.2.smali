.class public Lc8/lye;
.super Ljava/lang/Object;
.source "AidTask4Plug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/jye;,
        Lc8/iye;,
        Lc8/kye;
    }
.end annotation


# static fields
.field private static final AID_FILE_NAME:Ljava/lang/String; = "weibo_sdk_aid"

.field private static final MAX_RETRY_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AidTask"

.field private static final VERSION:I = 0x1

.field public static final WHAT_LOAD_AID_ERR:I = 0x3ea

.field public static final WHAT_LOAD_AID_SUC:I = 0x3e9

.field private static sInstance:Lc8/lye;


# instance fields
.field private hash:Ljava/lang/String;

.field private mAidInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/iye;",
            ">;"
        }
    .end annotation
.end field

.field private mAppKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lc8/kye;

.field private pkg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lc8/lye;->mAidInfo:Ljava/util/Map;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/lye;->mContext:Landroid/content/Context;

    .line 158
    new-instance v0, Lc8/kye;

    iget-object v1, p0, Lc8/lye;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/kye;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/lye;->mHandler:Lc8/kye;

    .line 159
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/hye;

    invoke-direct {v1, p0, p2}, Lc8/hye;-><init>(Lc8/lye;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000(Lc8/lye;ILjava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lc8/lye;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lc8/lye;->getAidInfoFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private aidTaskInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/iye;
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    .line 197
    :cond_0
    const-string/jumbo v0, "AidTask"

    const-string/jumbo v1, "aidTaskInit "

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, p1, p2, p3}, Lc8/lye;->initAidInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/iye;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized cacheAidInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 334
    :cond_1
    const/4 v1, 0x0

    .line 336
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v3, p2}, Lc8/lye;->getAidInfoFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 337
    .local v0, "aidFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 341
    if-eqz v2, :cond_3

    .line 343
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 345
    :catch_0
    move-exception v3

    goto :goto_0

    .line 341
    .end local v0    # "aidFile":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    :goto_1
    if-eqz v1, :cond_0

    .line 343
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 345
    :catch_2
    move-exception v3

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 343
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 345
    :cond_2
    :goto_3
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 330
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_3

    .line 341
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "aidFile":Ljava/io/File;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static encryptRsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "publicKeyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 452
    const-string/jumbo v10, "RSA/ECB/PKCS1Padding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 453
    .local v4, "cipher":Ljavax/crypto/Cipher;
    invoke-static {p1}, Lc8/lye;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v9

    .line 454
    .local v9, "publicKey":Ljava/security/PublicKey;
    const/4 v10, 0x1

    invoke-virtual {v4, v10, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 456
    const/4 v2, 0x0

    .line 457
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v10, "UTF-8"

    invoke-virtual {p0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 459
    .local v8, "plainText":[B
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 462
    .local v7, "offset":I
    :goto_0
    const/16 v10, 0x75

    :try_start_1
    invoke-static {v8, v7, v10}, Lc8/lye;->splite([BII)I

    move-result v6

    .local v6, "len":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_0

    .line 463
    invoke-virtual {v4, v8, v7, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 464
    .local v5, "enBytes":[B
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 465
    const-string/jumbo v10, "AidTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "encryptRsa offset = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "     len = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "     enBytes len = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    add-int/2addr v7, v6

    .line 468
    goto :goto_0

    .line 469
    .end local v5    # "enBytes":[B
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 470
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 471
    .restart local v5    # "enBytes":[B
    const-string/jumbo v10, "AidTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "encryptRsa total enBytes len = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {v5}, Lc8/nye;->encodebyte([B)[B

    move-result-object v0

    .line 474
    .local v0, "base64byte":[B
    const-string/jumbo v10, "AidTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "encryptRsa total base64byte len = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v1, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 478
    .local v1, "base64string":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "01"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    const-string/jumbo v10, "AidTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "encryptRsa total base64string : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 485
    if-eqz v3, :cond_1

    .line 487
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 489
    :cond_1
    :goto_1
    return-object v1

    .line 485
    .end local v0    # "base64byte":[B
    .end local v1    # "base64string":Ljava/lang/String;
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "enBytes":[B
    .end local v6    # "len":I
    .end local v7    # "offset":I
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v2, :cond_2

    .line 487
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 489
    :cond_2
    :goto_3
    throw v10

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "base64byte":[B
    .restart local v1    # "base64string":Ljava/lang/String;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "enBytes":[B
    .restart local v6    # "len":I
    .restart local v7    # "offset":I
    :catch_0
    move-exception v10

    goto :goto_1

    .end local v0    # "base64byte":[B
    .end local v1    # "base64string":Ljava/lang/String;
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "enBytes":[B
    .end local v6    # "len":I
    .end local v7    # "offset":I
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v11

    goto :goto_3

    .line 485
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "offset":I
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method private static genMfpString(Landroid/content/Context;)Ljava/lang/String;
    .locals 19
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 381
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 383
    .local v11, "mfpObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lc8/lye;->getOS()Ljava/lang/String;

    move-result-object v13

    .line 384
    .local v13, "os":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 385
    const-string/jumbo v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    :cond_0
    invoke-static/range {p0 .. p0}, Lc8/lye;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 388
    .local v7, "imei":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 389
    const-string/jumbo v18, "2"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    :cond_1
    invoke-static/range {p0 .. p0}, Lc8/lye;->getMeid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 392
    .local v10, "meid":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 393
    const-string/jumbo v18, "3"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    :cond_2
    invoke-static/range {p0 .. p0}, Lc8/lye;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 396
    .local v8, "imsi":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 397
    const-string/jumbo v18, "4"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    :cond_3
    invoke-static/range {p0 .. p0}, Lc8/lye;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, "mac":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 401
    const-string/jumbo v18, "5"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    :cond_4
    invoke-static/range {p0 .. p0}, Lc8/lye;->getIccid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "iccid":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 405
    const-string/jumbo v18, "6"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    :cond_5
    invoke-static {}, Lc8/lye;->getSerialNo()Ljava/lang/String;

    move-result-object v16

    .line 408
    .local v16, "serial":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 409
    const-string/jumbo v18, "7"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    :cond_6
    invoke-static/range {p0 .. p0}, Lc8/lye;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "androidId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 413
    const-string/jumbo v18, "10"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    :cond_7
    invoke-static {}, Lc8/lye;->getCpu()Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, "cpu":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 417
    const-string/jumbo v18, "13"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    :cond_8
    invoke-static {}, Lc8/lye;->getModel()Ljava/lang/String;

    move-result-object v12

    .line 420
    .local v12, "model":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 421
    const-string/jumbo v18, "14"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    :cond_9
    invoke-static {}, Lc8/lye;->getSdSize()Ljava/lang/String;

    move-result-object v15

    .line 424
    .local v15, "sdcard":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 425
    const-string/jumbo v18, "15"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    :cond_a
    invoke-static/range {p0 .. p0}, Lc8/lye;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 428
    .local v14, "resolution":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 429
    const-string/jumbo v18, "16"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    :cond_b
    invoke-static/range {p0 .. p0}, Lc8/lye;->getSsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 432
    .local v17, "ssid":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 433
    const-string/jumbo v18, "17"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    :cond_c
    invoke-static {}, Lc8/lye;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "deviceName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 437
    const-string/jumbo v18, "18"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    :cond_d
    invoke-static/range {p0 .. p0}, Lc8/lye;->getConnectType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "connectType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 441
    const-string/jumbo v18, "19"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    :cond_e
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 448
    .end local v2    # "androidId":Ljava/lang/String;
    .end local v3    # "connectType":Ljava/lang/String;
    .end local v4    # "cpu":Ljava/lang/String;
    .end local v5    # "deviceName":Ljava/lang/String;
    .end local v6    # "iccid":Ljava/lang/String;
    .end local v7    # "imei":Ljava/lang/String;
    .end local v8    # "imsi":Ljava/lang/String;
    .end local v9    # "mac":Ljava/lang/String;
    .end local v10    # "meid":Ljava/lang/String;
    .end local v12    # "model":Ljava/lang/String;
    .end local v13    # "os":Ljava/lang/String;
    .end local v14    # "resolution":Ljava/lang/String;
    .end local v15    # "sdcard":Ljava/lang/String;
    .end local v16    # "serial":Ljava/lang/String;
    .end local v17    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v18

    :catch_0
    move-exception v18

    const-string/jumbo v18, ""

    goto :goto_0
.end method

.method private getAidInfoFile(ILjava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "version"    # I
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v2, p0, Lc8/lye;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 292
    .local v1, "dir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "weibo_sdk_aid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    .local v0, "aidFile":Ljava/io/File;
    return-object v0
.end method

.method private static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 585
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 590
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static getConnectType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 653
    const-string/jumbo v2, "none"

    .line 655
    .local v2, "network":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "connectivity"

    .line 656
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 657
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 662
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_1

    .line 664
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 696
    const-string/jumbo v2, "none"

    .line 706
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 673
    .restart local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :pswitch_0
    const-string/jumbo v2, "2G"

    .line 674
    goto :goto_0

    .line 688
    :pswitch_1
    const-string/jumbo v2, "3G"

    .line 689
    goto :goto_0

    .line 692
    :pswitch_2
    const-string/jumbo v2, "4G"

    .line 693
    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 700
    const-string/jumbo v2, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 664
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

.method private static getCpu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    :try_start_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static getIccid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 564
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 565
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 566
    .local v0, "telePhonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 569
    .end local v0    # "telePhonyMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 521
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 522
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 523
    .local v0, "telePhonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 526
    .end local v0    # "telePhonyMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 541
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 542
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 543
    .local v0, "telePhonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 546
    .end local v0    # "telePhonyMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lc8/lye;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 174
    const-class v1, Lc8/lye;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/lye;->sInstance:Lc8/lye;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lc8/lye;

    invoke-direct {v0, p0, p1}, Lc8/lye;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lc8/lye;->sInstance:Lc8/lye;

    .line 177
    :cond_0
    sget-object v0, Lc8/lye;->sInstance:Lc8/lye;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 551
    :try_start_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 552
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    .line 553
    const-string/jumbo v2, ""

    .line 559
    .end local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    .line 555
    .restart local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 556
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v2

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private static getMeid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 531
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 532
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 533
    .local v0, "telePhonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 536
    .end local v0    # "telePhonyMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private static getMfp(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 363
    invoke-static {p0}, Lc8/lye;->genMfpString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "mfpJson":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 366
    .local v2, "mfpJsonUtf8":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "mfpJsonUtf8":Ljava/lang/String;
    .local v3, "mfpJsonUtf8":Ljava/lang/String;
    move-object v2, v3

    .line 369
    .end local v3    # "mfpJsonUtf8":Ljava/lang/String;
    .restart local v2    # "mfpJsonUtf8":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "AidTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "genMfpString() utf-8 string : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :try_start_1
    const-string/jumbo v5, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHHM0Fi2Z6+QYKXqFUX2Cy6AaWq3cPi+GSn9oeAwQbPZR75JB7Netm0HtBVVbtPhzT7UO2p1JhFUKWqrqoYuAjkgMVPmA0sFrQohns5EE44Y86XQopD4ZO+dE5KjUZFE6vrPO3rWW3np2BqlgKpjnYZri6TJApmIpGcQg9/G/3zQIDAQAB"

    invoke-static {v2, v5}, Lc8/lye;->encryptRsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "rsaMfp":Ljava/lang/String;
    const-string/jumbo v5, "AidTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "encryptRsa() string : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    .end local v4    # "rsaMfp":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AidTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string/jumbo v4, ""

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 603
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static getOS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 513
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lc8/nye;->decode([B)[B

    move-result-object v0

    .line 505
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 506
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string/jumbo v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 507
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 508
    .local v3, "publicKey":Ljava/security/PublicKey;
    return-object v3
.end method

.method private static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 623
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 624
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 625
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 629
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private static getSdSize()Ljava/lang/String;
    .locals 8

    .prologue
    .line 611
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 612
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 613
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 614
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v0, v6

    .line 615
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 618
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "stat":Landroid/os/StatFs;
    :goto_0
    return-object v6

    :catch_0
    move-exception v6

    const-string/jumbo v6, ""

    goto :goto_0
.end method

.method private static getSerialNo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 573
    const-string/jumbo v3, ""

    .line 575
    .local v3, "serialnum":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "android.os.SystemProperties"

    invoke-static {v4}, Lc8/lye;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 576
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 577
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "ro.serialno"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "unknown"

    aput-object v6, v4, v5

    invoke-static {v2, v1, v4}, Lc8/lye;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static getSsid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 634
    :try_start_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 635
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 636
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 641
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private initAidInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, p1, v0, v0}, Lc8/lye;->initAidInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/iye;

    .line 234
    return-void
.end method

.method private loadAidFromNet()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v6, p0, Lc8/lye;->pkg:Ljava/lang/String;

    if-nez v6, :cond_0

    iget-object v6, p0, Lc8/lye;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "pkgName":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lc8/lye;->hash:Ljava/lang/String;

    if-nez v6, :cond_1

    iget-object v6, p0, Lc8/lye;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lc8/Aye;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "keyHash":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lc8/lye;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lc8/lye;->getMfp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "mfp":Ljava/lang/String;
    new-instance v3, Lc8/Fxe;

    iget-object v6, p0, Lc8/lye;->mAppKey:Ljava/lang/String;

    invoke-direct {v3, v6}, Lc8/Fxe;-><init>(Ljava/lang/String;)V

    .line 309
    .local v3, "params":Lc8/Fxe;
    const-string/jumbo v6, "appkey"

    iget-object v7, p0, Lc8/lye;->mAppKey:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v6, "mfp"

    invoke-virtual {v3, v6, v2}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v6, "packagename"

    invoke-virtual {v3, v6, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string/jumbo v6, "key_hash"

    invoke-virtual {v3, v6, v1}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :try_start_0
    iget-object v6, p0, Lc8/lye;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "https://api.weibo.com/oauth2/getaid.json"

    const-string/jumbo v8, "GET"

    invoke-static {v6, v7, v8, v3}, Lc8/yxe;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "response":Ljava/lang/String;
    const-string/jumbo v6, "AidTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadAidFromNet response : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    return-object v5

    .line 304
    .end local v1    # "keyHash":Ljava/lang/String;
    .end local v2    # "mfp":Ljava/lang/String;
    .end local v3    # "params":Lc8/Fxe;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lc8/lye;->pkg:Ljava/lang/String;

    goto :goto_0

    .line 305
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lc8/lye;->hash:Ljava/lang/String;

    goto :goto_1

    .line 317
    .restart local v1    # "keyHash":Ljava/lang/String;
    .restart local v2    # "mfp":Ljava/lang/String;
    .restart local v3    # "params":Lc8/Fxe;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    const-string/jumbo v6, "AidTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadAidFromNet WeiboException Msg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    throw v0
.end method

.method private static splite([BII)I
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .prologue
    .line 495
    array-length v1, p0

    if-lt p1, v1, :cond_0

    .line 496
    const/4 v1, -0x1

    .line 499
    :goto_0
    return v1

    .line 498
    :cond_0
    array-length v1, p0

    sub-int v0, v1, p1

    .line 499
    .local v0, "delta":I
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public aidTaskInit(Ljava/lang/String;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string/jumbo v0, "AidTask"

    const-string/jumbo v1, "aidTaskInit "

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, p1}, Lc8/lye;->initAidInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAid4PlugSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/iye;
    .locals 2
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    .line 242
    :cond_0
    const-string/jumbo v0, "AidTask"

    const-string/jumbo v1, "getAidSync "

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lc8/lye;->mAidInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lc8/lye;->aidTaskInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/iye;

    .line 246
    :cond_1
    iget-object v0, p0, Lc8/lye;->mAidInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/iye;

    goto :goto_0
.end method

.method public initAidInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/iye;
    .locals 7
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 229
    :goto_0
    return-object v0

    .line 206
    :cond_0
    iput-object p1, p0, Lc8/lye;->mAppKey:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lc8/lye;->pkg:Ljava/lang/String;

    .line 208
    iput-object p3, p0, Lc8/lye;->hash:Ljava/lang/String;

    .line 211
    invoke-virtual {p0, p1}, Lc8/lye;->loadAidInfoFromCache(Ljava/lang/String;)Lc8/iye;

    move-result-object v0

    .line 212
    .local v0, "aidInfo":Lc8/iye;
    if-nez v0, :cond_2

    .line 213
    const/4 v3, 0x1

    .line 215
    .local v3, "retry":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 217
    :try_start_0
    invoke-direct {p0}, Lc8/lye;->loadAidFromNet()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "response":Ljava/lang/String;
    invoke-static {v2}, Lc8/iye;->parseJson(Ljava/lang/String;)Lc8/iye;

    move-result-object v0

    .line 219
    invoke-direct {p0, v2, p1}, Lc8/lye;->cacheAidInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lc8/lye;->mAidInfo:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    const-string/jumbo v4, "AidTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AidTaskInit WeiboException Msg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    goto :goto_0

    .line 227
    .end local v1    # "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    .end local v3    # "retry":I
    :cond_2
    iget-object v4, p0, Lc8/lye;->mAidInfo:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public loadAidFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lc8/lye;->loadAidInfoFromCache(Ljava/lang/String;)Lc8/iye;

    move-result-object v0

    .line 283
    .local v0, "aidInfo":Lc8/iye;
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Lc8/iye;->getAid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    .line 286
    :goto_0
    return-object v1

    .line 284
    :cond_0
    invoke-virtual {v0}, Lc8/iye;->getAid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 286
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method protected declared-synchronized loadAidInfoFromCache(Ljava/lang/String;)Lc8/iye;
    .locals 6
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 262
    monitor-enter p0

    const/4 v2, 0x0

    .line 264
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v4, p1}, Lc8/lye;->getAidInfoFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 265
    .local v0, "aidFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v1, v4, [B

    .line 267
    .local v1, "buffer":[B
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 268
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lc8/iye;->parseJson(Ljava/lang/String;)Lc8/iye;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 271
    if-eqz v3, :cond_0

    .line 273
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 278
    .end local v0    # "aidFile":Ljava/io/File;
    .end local v1    # "buffer":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    monitor-exit p0

    return-object v4

    .line 271
    :catch_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 273
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 278
    :cond_1
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 271
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_2

    .line 273
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    :cond_2
    :goto_5
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 262
    :catchall_1
    move-exception v4

    :goto_6
    monitor-exit p0

    throw v4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "aidFile":Ljava/io/File;
    .restart local v1    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 275
    .end local v0    # "aidFile":Ljava/io/File;
    .end local v1    # "buffer":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_5

    .line 271
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "aidFile":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 262
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_6
.end method

.method public declared-synchronized setAppkey(Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc8/lye;->mAppKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
