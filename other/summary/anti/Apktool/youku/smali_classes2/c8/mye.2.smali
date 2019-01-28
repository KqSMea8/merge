.class public Lc8/mye;
.super Ljava/lang/Object;
.source "AidTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fye;,
        Lc8/eye;,
        Lc8/gye;
    }
.end annotation


# static fields
.field private static final AID_FILE_NAME:Ljava/lang/String; = "weibo_sdk_aid"

.field public static final AID_TAG:Ljava/lang/String; = "weibo_aid_value"

.field private static final MAX_RETRY_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AidTask"

.field private static final VERSION:I = 0x1

.field public static final WHAT_LOAD_AID_ERR:I = 0x3ea

.field public static final WHAT_LOAD_AID_SUC:I = 0x3e9

.field private static sInstance:Lc8/mye;


# instance fields
.field private hash:Ljava/lang/String;

.field private mAidInfo:Lc8/eye;

.field private mAppKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lc8/gye;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Dye;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private pkg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lc8/mye;->mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mye;->mListeners:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/mye;->mContext:Landroid/content/Context;

    .line 165
    new-instance v0, Lc8/gye;

    iget-object v1, p0, Lc8/mye;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/gye;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/mye;->mHandler:Lc8/gye;

    .line 166
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/bye;

    invoke-direct {v1, p0}, Lc8/bye;-><init>(Lc8/mye;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 178
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

.method static synthetic access$000(Lc8/mye;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lc8/mye;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lc8/mye;->getAidInfoFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/mye;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lc8/mye;

    .prologue
    .line 49
    iget-object v0, p0, Lc8/mye;->mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200(Lc8/mye;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/mye;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lc8/mye;->loadAidFromNet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/mye;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/mye;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lc8/mye;->cacheAidInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lc8/mye;)Lc8/eye;
    .locals 1
    .param p0, "x0"    # Lc8/mye;

    .prologue
    .line 49
    iget-object v0, p0, Lc8/mye;->mAidInfo:Lc8/eye;

    return-object v0
.end method

.method static synthetic access$402(Lc8/mye;Lc8/eye;)Lc8/eye;
    .locals 0
    .param p0, "x0"    # Lc8/mye;
    .param p1, "x1"    # Lc8/eye;

    .prologue
    .line 49
    iput-object p1, p0, Lc8/mye;->mAidInfo:Lc8/eye;

    return-object p1
.end method

.method static synthetic access$500(Lc8/mye;Lc8/eye;)V
    .locals 0
    .param p0, "x0"    # Lc8/mye;
    .param p1, "x1"    # Lc8/eye;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lc8/mye;->notifyListener(Lc8/eye;)V

    return-void
.end method

.method static synthetic access$600(Lc8/mye;)Lc8/gye;
    .locals 1
    .param p0, "x0"    # Lc8/mye;

    .prologue
    .line 49
    iget-object v0, p0, Lc8/mye;->mHandler:Lc8/gye;

    return-object v0
.end method

.method private aidTaskInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string/jumbo v0, "AidTask"

    const-string/jumbo v1, "aidTaskInit "

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p1, p2, p3}, Lc8/mye;->initAidInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized cacheAidInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 420
    :cond_1
    const/4 v1, 0x0

    .line 422
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v3}, Lc8/mye;->getAidInfoFile(I)Ljava/io/File;

    move-result-object v0

    .line 423
    .local v0, "aidFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 427
    if-eqz v2, :cond_3

    .line 429
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 431
    :catch_0
    move-exception v3

    goto :goto_0

    .line 427
    .end local v0    # "aidFile":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    :goto_1
    if-eqz v1, :cond_0

    .line 429
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 431
    :catch_2
    move-exception v3

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 429
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 431
    :cond_2
    :goto_3
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 416
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_3

    .line 427
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
    .line 549
    const-string/jumbo v10, "RSA/ECB/PKCS1Padding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 550
    .local v4, "cipher":Ljavax/crypto/Cipher;
    invoke-static {p1}, Lc8/mye;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v9

    .line 551
    .local v9, "publicKey":Ljava/security/PublicKey;
    const/4 v10, 0x1

    invoke-virtual {v4, v10, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 553
    const/4 v2, 0x0

    .line 554
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v10, "UTF-8"

    invoke-virtual {p0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 556
    .local v8, "plainText":[B
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 559
    .local v7, "offset":I
    :goto_0
    const/16 v10, 0x75

    :try_start_1
    invoke-static {v8, v7, v10}, Lc8/mye;->splite([BII)I

    move-result v6

    .local v6, "len":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_0

    .line 560
    invoke-virtual {v4, v8, v7, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 561
    .local v5, "enBytes":[B
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 562
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

    .line 564
    add-int/2addr v7, v6

    .line 565
    goto :goto_0

    .line 566
    .end local v5    # "enBytes":[B
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 567
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 568
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

    .line 570
    invoke-static {v5}, Lc8/nye;->encodebyte([B)[B

    move-result-object v0

    .line 571
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

    .line 574
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v1, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 575
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

    .line 576
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

    .line 582
    if-eqz v3, :cond_1

    .line 584
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 586
    :cond_1
    :goto_1
    return-object v1

    .line 582
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

    .line 584
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 586
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

    .line 582
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
    .locals 21
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 467
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 469
    .local v12, "mfpObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lc8/mye;->getOS()Ljava/lang/String;

    move-result-object v14

    .line 470
    .local v14, "os":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 471
    const-string/jumbo v20, "1"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    :cond_0
    invoke-static/range {p0 .. p0}, Lc8/mye;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 474
    .local v8, "imei":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 475
    const-string/jumbo v20, "2"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    :cond_1
    invoke-static/range {p0 .. p0}, Lc8/mye;->getMeid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 478
    .local v11, "meid":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 479
    const-string/jumbo v20, "3"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    :cond_2
    invoke-static/range {p0 .. p0}, Lc8/mye;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 482
    .local v9, "imsi":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 483
    const-string/jumbo v20, "4"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    :cond_3
    invoke-static/range {p0 .. p0}, Lc8/mye;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 486
    .local v10, "mac":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 487
    const-string/jumbo v20, "5"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    :cond_4
    invoke-static/range {p0 .. p0}, Lc8/mye;->getIccid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 490
    .local v7, "iccid":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 491
    const-string/jumbo v20, "6"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    :cond_5
    invoke-static {}, Lc8/mye;->getSerialNo()Ljava/lang/String;

    move-result-object v17

    .line 494
    .local v17, "serial":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 495
    const-string/jumbo v20, "7"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    :cond_6
    invoke-static/range {p0 .. p0}, Lc8/mye;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "androidId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 499
    const-string/jumbo v20, "10"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    :cond_7
    invoke-static {}, Lc8/mye;->getCpu()Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "cpu":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 503
    const-string/jumbo v20, "13"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    :cond_8
    invoke-static {}, Lc8/mye;->getModel()Ljava/lang/String;

    move-result-object v13

    .line 506
    .local v13, "model":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 507
    const-string/jumbo v20, "14"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    :cond_9
    invoke-static {}, Lc8/mye;->getSdSize()Ljava/lang/String;

    move-result-object v16

    .line 510
    .local v16, "sdcard":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 511
    const-string/jumbo v20, "15"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    :cond_a
    invoke-static/range {p0 .. p0}, Lc8/mye;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 514
    .local v15, "resolution":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 515
    const-string/jumbo v20, "16"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    :cond_b
    invoke-static/range {p0 .. p0}, Lc8/mye;->getSsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 518
    .local v18, "ssid":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 519
    const-string/jumbo v20, "17"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    :cond_c
    invoke-static {}, Lc8/mye;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    .line 522
    .local v5, "deviceName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 523
    const-string/jumbo v20, "18"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    :cond_d
    invoke-static/range {p0 .. p0}, Lc8/mye;->getConnectType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, "connectType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 527
    const-string/jumbo v20, "19"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    :cond_e
    const-string/jumbo v19, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    .local v19, "ua":Ljava/lang/String;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lc8/Aye;->generateUAAid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 537
    :goto_0
    :try_start_2
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 538
    const-string/jumbo v20, "20"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    :cond_f
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    .line 545
    .end local v2    # "androidId":Ljava/lang/String;
    .end local v3    # "connectType":Ljava/lang/String;
    .end local v4    # "cpu":Ljava/lang/String;
    .end local v5    # "deviceName":Ljava/lang/String;
    .end local v7    # "iccid":Ljava/lang/String;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v9    # "imsi":Ljava/lang/String;
    .end local v10    # "mac":Ljava/lang/String;
    .end local v11    # "meid":Ljava/lang/String;
    .end local v13    # "model":Ljava/lang/String;
    .end local v14    # "os":Ljava/lang/String;
    .end local v15    # "resolution":Ljava/lang/String;
    .end local v16    # "sdcard":Ljava/lang/String;
    .end local v17    # "serial":Ljava/lang/String;
    .end local v18    # "ssid":Ljava/lang/String;
    .end local v19    # "ua":Ljava/lang/String;
    :goto_1
    return-object v20

    .line 533
    .restart local v2    # "androidId":Ljava/lang/String;
    .restart local v3    # "connectType":Ljava/lang/String;
    .restart local v4    # "cpu":Ljava/lang/String;
    .restart local v5    # "deviceName":Ljava/lang/String;
    .restart local v7    # "iccid":Ljava/lang/String;
    .restart local v8    # "imei":Ljava/lang/String;
    .restart local v9    # "imsi":Ljava/lang/String;
    .restart local v10    # "mac":Ljava/lang/String;
    .restart local v11    # "meid":Ljava/lang/String;
    .restart local v13    # "model":Ljava/lang/String;
    .restart local v14    # "os":Ljava/lang/String;
    .restart local v15    # "resolution":Ljava/lang/String;
    .restart local v16    # "sdcard":Ljava/lang/String;
    .restart local v17    # "serial":Ljava/lang/String;
    .restart local v18    # "ssid":Ljava/lang/String;
    .restart local v19    # "ua":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 534
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 545
    .end local v2    # "androidId":Ljava/lang/String;
    .end local v3    # "connectType":Ljava/lang/String;
    .end local v4    # "cpu":Ljava/lang/String;
    .end local v5    # "deviceName":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "iccid":Ljava/lang/String;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v9    # "imsi":Ljava/lang/String;
    .end local v10    # "mac":Ljava/lang/String;
    .end local v11    # "meid":Ljava/lang/String;
    .end local v13    # "model":Ljava/lang/String;
    .end local v14    # "os":Ljava/lang/String;
    .end local v15    # "resolution":Ljava/lang/String;
    .end local v16    # "sdcard":Ljava/lang/String;
    .end local v17    # "serial":Ljava/lang/String;
    .end local v18    # "ssid":Ljava/lang/String;
    .end local v19    # "ua":Ljava/lang/String;
    :catch_1
    move-exception v20

    const-string/jumbo v20, ""

    goto :goto_1
.end method

.method private generateAid(Ljava/lang/String;Lc8/fye;)V
    .locals 1
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/fye;

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p1, v0, v0, p2}, Lc8/mye;->generateAid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/fye;)V

    .line 296
    return-void
.end method

.method private generateAid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/fye;)V
    .locals 2
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;
    .param p4, "callback"    # Lc8/fye;

    .prologue
    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 304
    :cond_0
    iput-object p1, p0, Lc8/mye;->mAppKey:Ljava/lang/String;

    .line 305
    iput-object p3, p0, Lc8/mye;->hash:Ljava/lang/String;

    .line 306
    iput-object p2, p0, Lc8/mye;->pkg:Ljava/lang/String;

    .line 308
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/dye;

    invoke-direct {v1, p0, p4}, Lc8/dye;-><init>(Lc8/mye;Lc8/fye;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 339
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private getAidInfoFile(I)Ljava/io/File;
    .locals 4
    .param p1, "version"    # I

    .prologue
    .line 377
    iget-object v2, p0, Lc8/mye;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 378
    .local v1, "dir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "weibo_sdk_aid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    .local v0, "aidFile":Ljava/io/File;
    return-object v0
.end method

.method private static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 682
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 687
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
    .line 750
    const-string/jumbo v2, "none"

    .line 752
    .local v2, "network":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "connectivity"

    .line 753
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 754
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 759
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 760
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_1

    .line 761
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 793
    const-string/jumbo v2, "none"

    .line 803
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 770
    .restart local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :pswitch_0
    const-string/jumbo v2, "2G"

    .line 771
    goto :goto_0

    .line 785
    :pswitch_1
    const-string/jumbo v2, "3G"

    .line 786
    goto :goto_0

    .line 789
    :pswitch_2
    const-string/jumbo v2, "4G"

    .line 790
    goto :goto_0

    .line 796
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 797
    const-string/jumbo v2, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 761
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
    .line 692
    :try_start_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
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
    .line 743
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
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
    .line 661
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 662
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 663
    .local v0, "telePhonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 666
    .end local v0    # "telePhonyMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 618
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 619
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 620
    .local v0, "telePhonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 623
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
    .line 638
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 639
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 640
    .local v0, "telePhonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 643
    .end local v0    # "telePhonyMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lc8/mye;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const-class v1, Lc8/mye;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/mye;->sInstance:Lc8/mye;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lc8/mye;

    invoke-direct {v0, p0}, Lc8/mye;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/mye;->sInstance:Lc8/mye;

    .line 184
    :cond_0
    sget-object v0, Lc8/mye;->sInstance:Lc8/mye;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 648
    :try_start_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 649
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    .line 650
    const-string/jumbo v2, ""

    .line 656
    .end local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    .line 652
    .restart local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 653
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

    .line 656
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
    .line 628
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 629
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 630
    .local v0, "telePhonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 633
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
    .line 449
    invoke-static {p0}, Lc8/mye;->genMfpString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "mfpJson":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 452
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

    .line 455
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

    .line 457
    :try_start_1
    const-string/jumbo v5, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHHM0Fi2Z6+QYKXqFUX2Cy6AaWq3cPi+GSn9oeAwQbPZR75JB7Netm0HtBVVbtPhzT7UO2p1JhFUKWqrqoYuAjkgMVPmA0sFrQohns5EE44Y86XQopD4ZO+dE5KjUZFE6vrPO3rWW3np2BqlgKpjnYZri6TJApmIpGcQg9/G/3zQIDAQAB"

    invoke-static {v2, v5}, Lc8/mye;->encryptRsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 458
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

    .line 463
    .end local v4    # "rsaMfp":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AidTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
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
    .line 700
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
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
    .line 610
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

    .line 613
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
    .line 601
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lc8/nye;->decode([B)[B

    move-result-object v0

    .line 602
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 603
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string/jumbo v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 604
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 605
    .local v3, "publicKey":Ljava/security/PublicKey;
    return-object v3
.end method

.method private static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 720
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 721
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 722
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 723
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

    .line 726
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
    .line 708
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 709
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 710
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 711
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v0, v6

    .line 712
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 715
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
    .line 670
    const-string/jumbo v3, ""

    .line 672
    .local v3, "serialnum":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "android.os.SystemProperties"

    invoke-static {v4}, Lc8/mye;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 673
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

    .line 674
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "ro.serialno"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "unknown"

    aput-object v6, v4, v5

    invoke-static {v2, v1, v4}, Lc8/mye;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
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
    .line 731
    :try_start_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 732
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 733
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 738
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

    .line 251
    invoke-virtual {p0, p1, v0, v0}, Lc8/mye;->initAidInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
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
    .line 390
    iget-object v6, p0, Lc8/mye;->pkg:Ljava/lang/String;

    if-nez v6, :cond_0

    iget-object v6, p0, Lc8/mye;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "pkgName":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lc8/mye;->hash:Ljava/lang/String;

    if-nez v6, :cond_1

    iget-object v6, p0, Lc8/mye;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lc8/Aye;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "keyHash":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lc8/mye;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lc8/mye;->getMfp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "mfp":Ljava/lang/String;
    new-instance v3, Lc8/Fxe;

    iget-object v6, p0, Lc8/mye;->mAppKey:Ljava/lang/String;

    invoke-direct {v3, v6}, Lc8/Fxe;-><init>(Ljava/lang/String;)V

    .line 395
    .local v3, "params":Lc8/Fxe;
    const-string/jumbo v6, "appkey"

    iget-object v7, p0, Lc8/mye;->mAppKey:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string/jumbo v6, "mfp"

    invoke-virtual {v3, v6, v2}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string/jumbo v6, "packagename"

    invoke-virtual {v3, v6, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string/jumbo v6, "key_hash"

    invoke-virtual {v3, v6, v1}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :try_start_0
    iget-object v6, p0, Lc8/mye;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "https://api.weibo.com/oauth2/getaid.json"

    const-string/jumbo v8, "GET"

    invoke-static {v6, v7, v8, v3}, Lc8/yxe;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;

    move-result-object v5

    .line 401
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

    .line 402
    return-object v5

    .line 390
    .end local v1    # "keyHash":Ljava/lang/String;
    .end local v2    # "mfp":Ljava/lang/String;
    .end local v3    # "params":Lc8/Fxe;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lc8/mye;->pkg:Ljava/lang/String;

    goto :goto_0

    .line 391
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lc8/mye;->hash:Ljava/lang/String;

    goto :goto_1

    .line 403
    .restart local v1    # "keyHash":Ljava/lang/String;
    .restart local v2    # "mfp":Ljava/lang/String;
    .restart local v3    # "params":Lc8/Fxe;
    :catch_0
    move-exception v0

    .line 404
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

    .line 406
    throw v0
.end method

.method private notifyListener(Lc8/eye;)V
    .locals 5
    .param p1, "mAidInfo"    # Lc8/eye;

    .prologue
    .line 815
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 816
    .local v2, "values":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 817
    const-string/jumbo v3, "weibo_aid_value"

    invoke-virtual {p1}, Lc8/eye;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_0
    :try_start_0
    iget-object v3, p0, Lc8/mye;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lc8/mye;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 821
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lc8/mye;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 822
    iget-object v3, p0, Lc8/mye;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Dye;

    invoke-interface {v3, v2}, Lc8/Dye;->onComplete(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 825
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 828
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private static splite([BII)I
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .prologue
    .line 592
    array-length v1, p0

    if-lt p1, v1, :cond_0

    .line 593
    const/4 v1, -0x1

    .line 596
    :goto_0
    return v1

    .line 595
    :cond_0
    array-length v1, p0

    sub-int v0, v1, p1

    .line 596
    .local v0, "delta":I
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lc8/Dye;)V
    .locals 1
    .param p1, "listener"    # Lc8/Dye;

    .prologue
    .line 808
    iget-object v0, p0, Lc8/mye;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mye;->mListeners:Ljava/util/ArrayList;

    .line 811
    :cond_0
    iget-object v0, p0, Lc8/mye;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    return-void
.end method

.method public aidTaskInit(Ljava/lang/String;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string/jumbo v0, "AidTask"

    const-string/jumbo v1, "aidTaskInit "

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p1}, Lc8/mye;->initAidInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAidAsync(Ljava/lang/String;Lc8/fye;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/fye;

    .prologue
    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lc8/mye;->mAidInfo:Lc8/eye;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 282
    iget-object v0, p0, Lc8/mye;->mAidInfo:Lc8/eye;

    invoke-virtual {v0}, Lc8/eye;->cloneAidInfo()Lc8/eye;

    move-result-object v0

    invoke-interface {p2, v0}, Lc8/fye;->onAidGenSuccessed(Lc8/eye;)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-direct {p0, p1, p2}, Lc8/mye;->generateAid(Ljava/lang/String;Lc8/fye;)V

    goto :goto_0
.end method

.method public getAidSync(Ljava/lang/String;)Lc8/eye;
    .locals 2
    .param p1, "appkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    .line 264
    :cond_0
    const-string/jumbo v0, "AidTask"

    const-string/jumbo v1, "getAidSync "

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lc8/mye;->mAidInfo:Lc8/eye;

    if-nez v0, :cond_1

    .line 266
    invoke-virtual {p0, p1}, Lc8/mye;->aidTaskInit(Ljava/lang/String;)V

    .line 268
    :cond_1
    iget-object v0, p0, Lc8/mye;->mAidInfo:Lc8/eye;

    goto :goto_0
.end method

.method public initAidInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 214
    :cond_0
    iput-object p1, p0, Lc8/mye;->mAppKey:Ljava/lang/String;

    .line 215
    iput-object p2, p0, Lc8/mye;->pkg:Ljava/lang/String;

    .line 216
    iput-object p3, p0, Lc8/mye;->hash:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/cye;

    invoke-direct {v1, p0}, Lc8/cye;-><init>(Lc8/mye;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public loadAidFromCache()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p0}, Lc8/mye;->loadAidInfoFromCache()Lc8/eye;

    move-result-object v0

    .line 369
    .local v0, "aidInfo":Lc8/eye;
    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Lc8/eye;->getAid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    .line 372
    :goto_0
    return-object v1

    .line 370
    :cond_0
    invoke-virtual {v0}, Lc8/eye;->getAid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 372
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method protected declared-synchronized loadAidInfoFromCache()Lc8/eye;
    .locals 6

    .prologue
    .line 348
    monitor-enter p0

    const/4 v2, 0x0

    .line 350
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v4}, Lc8/mye;->getAidInfoFile(I)Ljava/io/File;

    move-result-object v0

    .line 351
    .local v0, "aidFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v1, v4, [B

    .line 353
    .local v1, "buffer":[B
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 354
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lc8/eye;->parseJson(Ljava/lang/String;)Lc8/eye;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 357
    if-eqz v3, :cond_0

    .line 359
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 364
    .end local v0    # "aidFile":Ljava/io/File;
    .end local v1    # "buffer":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    monitor-exit p0

    return-object v4

    .line 357
    :catch_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 359
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 364
    :cond_1
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 357
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_2

    .line 359
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 361
    :cond_2
    :goto_5
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 348
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

    .line 361
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

    .line 357
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

    .line 348
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

.method public removeListener(Lc8/Dye;)V
    .locals 1
    .param p1, "listener"    # Lc8/Dye;

    .prologue
    .line 832
    iget-object v0, p0, Lc8/mye;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/mye;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 833
    iget-object v0, p0, Lc8/mye;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 835
    :cond_0
    return-void
.end method

.method public declared-synchronized setAppkey(Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc8/mye;->mAppKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
