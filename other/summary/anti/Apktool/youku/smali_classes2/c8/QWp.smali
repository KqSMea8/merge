.class public Lc8/QWp;
.super Ljava/lang/Object;
.source "AgooFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/OWp;,
        Lc8/PWp;
    }
.end annotation


# static fields
.field private static final DEAL_MESSAGE:Ljava/lang/String; = "accs.msgRecevie"

.field private static final TAG:Ljava/lang/String; = "AgooFactory"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private messageService:Lc8/dXp;

.field protected notifyManager:Lc8/UWp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lc8/QWp;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lc8/QWp;->notifyManager:Lc8/UWp;

    .line 49
    iput-object v0, p0, Lc8/QWp;->messageService:Lc8/dXp;

    .line 609
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lc8/QWp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lc8/QWp;)Lc8/dXp;
    .locals 1
    .param p0, "x0"    # Lc8/QWp;

    .prologue
    .line 43
    iget-object v0, p0, Lc8/QWp;->messageService:Lc8/dXp;

    return-object v0
.end method

.method static synthetic access$500(Lc8/QWp;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lc8/QWp;

    .prologue
    .line 43
    iget-object v0, p0, Lc8/QWp;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private static final checkPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 451
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 452
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 455
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 456
    const/4 v2, 0x1

    .line 461
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getFlag(JLc8/DWp;)Landroid/os/Bundle;
    .locals 8
    .param p0, "flag"    # J
    .param p2, "msgDO"    # Lc8/DWp;

    .prologue
    const/16 v7, 0x9

    const/16 v3, 0x8

    const/16 v6, 0x31

    .line 465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 467
    .local v0, "flagExtras":Landroid/os/Bundle;
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 469
    .local v1, "flags":[C
    if-eqz v1, :cond_4

    array-length v2, v1

    if-gt v3, v2, :cond_4

    .line 470
    array-length v2, v1

    if-gt v3, v2, :cond_1

    .line 471
    const-string/jumbo v2, "encrypted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v2, 0x6

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_0

    .line 477
    const-string/jumbo v2, "report"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string/jumbo v2, "1"

    iput-object v2, p2, Lc8/DWp;->reportStr:Ljava/lang/String;

    .line 480
    :cond_0
    const/4 v2, 0x7

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_1

    .line 481
    const-string/jumbo v2, "notify"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_1
    array-length v2, v1

    if-gt v7, v2, :cond_2

    .line 486
    const/16 v2, 0x8

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_2

    .line 487
    const-string/jumbo v2, "has_test"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_2
    const/16 v2, 0xa

    array-length v3, v1

    if-gt v2, v3, :cond_3

    .line 492
    const/16 v2, 0x9

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_3

    .line 493
    const-string/jumbo v2, "duplicate"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_3
    const/16 v2, 0xb

    array-length v3, v1

    if-gt v2, v3, :cond_4

    .line 498
    const/16 v2, 0xa

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_4

    .line 499
    const-string/jumbo v2, "popup"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v1    # "flags":[C
    :cond_4
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static parseEncryptedMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x0

    .line 299
    const/4 v1, 0x0

    .line 301
    .local v1, "finalResult":Ljava/lang/String;
    const/4 v3, 0x0

    .line 302
    .local v3, "key":[B
    :try_start_0
    sget-object v10, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "appkey":Ljava/lang/String;
    sget v10, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mSecurityType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 304
    sget-object v10, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mAgooAppSecret:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 305
    sget-object v10, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mAgooAppSecret:Ljava/lang/String;

    const-string/jumbo v11, "utf-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "utf-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v10, v11}, Lc8/CWp;->hmacSha1([B[B)[B

    move-result-object v3

    .line 326
    :goto_0
    if-eqz v3, :cond_3

    array-length v10, v3

    if-lez v10, :cond_3

    .line 327
    const/16 v10, 0x10

    invoke-static {p0, v10}, Lc8/yWp;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v3}, Lc8/CWp;->md5([B)[B

    move-result-object v12

    const-string/jumbo v13, "AES"

    invoke-direct {v11, v12, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v12, "utf-8"

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lc8/CWp;->md5([B)[B

    move-result-object v12

    invoke-static {v10, v11, v12}, Lc8/CWp;->aesDecrypt([BLjavax/crypto/spec/SecretKeySpec;[B)[B

    move-result-object v5

    .line 329
    .local v5, "result":[B
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v10, "utf-8"

    invoke-direct {v2, v5, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1    # "finalResult":Ljava/lang/String;
    .local v2, "finalResult":Ljava/lang/String;
    move-object v1, v2

    .line 336
    .end local v0    # "appkey":Ljava/lang/String;
    .end local v2    # "finalResult":Ljava/lang/String;
    .end local v5    # "result":[B
    .restart local v1    # "finalResult":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 308
    .restart local v0    # "appkey":Ljava/lang/String;
    :cond_0
    const-string/jumbo v10, "AgooFactory"

    const-string/jumbo v11, "getAppsign secret null"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v0    # "appkey":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 334
    .local v9, "t":Ljava/lang/Throwable;
    const-string/jumbo v10, "AgooFactory"

    const-string/jumbo v11, "parseEncryptedMsg failure: "

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v10, v11, v9, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 311
    .end local v9    # "t":Ljava/lang/Throwable;
    .restart local v0    # "appkey":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v10, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v6

    .line 312
    .local v6, "sgm":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    if-eqz v6, :cond_2

    .line 313
    const-string/jumbo v10, "AgooFactory"

    const-string/jumbo v11, "SecurityGuardManager not null!"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v6}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v8

    .line 315
    .local v8, "ssCom":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    new-instance v7, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v7}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 316
    .local v7, "sgpc":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    iput-object v0, v7, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 317
    iget-object v10, v7, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const-string/jumbo v11, "INPUT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const/4 v10, 0x3

    iput v10, v7, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 320
    sget-object v10, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mAuthCode:Ljava/lang/String;

    invoke-interface {v8, v7, v10}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "keyStr":Ljava/lang/String;
    invoke-static {v4}, Lc8/CWp;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 322
    goto/16 :goto_0

    .line 323
    .end local v4    # "keyStr":Ljava/lang/String;
    .end local v7    # "sgpc":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    .end local v8    # "ssCom":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    :cond_2
    const-string/jumbo v10, "AgooFactory"

    const-string/jumbo v11, "SecurityGuardManager is null"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 331
    .end local v6    # "sgm":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_3
    const-string/jumbo v10, "AgooFactory"

    const-string/jumbo v11, "aesDecrypt key is null!"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private sendMsgByBindService(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .param p1, "pack"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 550
    :try_start_0
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    const-string/jumbo v1, "AgooFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onHandleMessage current tid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    :cond_0
    iget-object v1, p0, Lc8/QWp;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lc8/PWp;

    invoke-direct {v2, p0, p1, p2}, Lc8/PWp;-><init>(Lc8/QWp;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "AgooFactory"

    const-string/jumbo v2, "sendMsgByBindService error >>"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendMsgToBussiness(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 9
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "pack"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "agooFlag"    # Z
    .param p5, "messageSource"    # Ljava/lang/String;
    .param p6, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    const/4 v3, 0x0

    .line 513
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 514
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "org.agoo.android.intent.action.RECEIVE"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {v7, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    invoke-virtual {v7, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 517
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "common-push"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string/jumbo v0, "message_source"

    invoke-virtual {v7, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 522
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "accs_extra"

    invoke-virtual {v6, v0, p6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 523
    const-string/jumbo v0, "msg_agoo_bundle"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v6    # "bundle":Landroid/os/Bundle;
    :goto_0
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    const-string/jumbo v0, "AgooFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMsgToBussiness intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",utdid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",pack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",agooFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    :cond_0
    if-eqz p4, :cond_1

    .line 533
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    const-string/jumbo v2, "accs.msgRecevie"

    invoke-static {p1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "agooMsg"

    const-string/jumbo v5, "15"

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    invoke-direct {p0, p2, v7}, Lc8/QWp;->sendMsgByBindService(Ljava/lang/String;Landroid/content/Intent;)V

    .line 540
    :goto_1
    return-void

    .line 524
    :catch_0
    move-exception v8

    .line 525
    .local v8, "t":Ljava/lang/Throwable;
    const-string/jumbo v0, "AgooFactory"

    const-string/jumbo v1, "sendMsgToBussiness"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v8, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 537
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_1
    invoke-static {p2}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->getAgooCustomServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method


# virtual methods
.method public init(Landroid/content/Context;Lc8/UWp;Lc8/dXp;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifyManagerTemp"    # Lc8/UWp;
    .param p3, "messageServiceTemp"    # Lc8/dXp;

    .prologue
    .line 57
    sput-object p1, Lc8/QWp;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Lc8/HWp;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lc8/QWp;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 59
    iput-object p2, p0, Lc8/QWp;->notifyManager:Lc8/UWp;

    .line 60
    iget-object v0, p0, Lc8/QWp;->notifyManager:Lc8/UWp;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lc8/UWp;

    invoke-direct {v0}, Lc8/UWp;-><init>()V

    iput-object v0, p0, Lc8/QWp;->notifyManager:Lc8/UWp;

    .line 63
    :cond_0
    iget-object v0, p0, Lc8/QWp;->notifyManager:Lc8/UWp;

    sget-object v1, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc8/UWp;->init(Landroid/content/Context;)V

    .line 64
    iput-object p3, p0, Lc8/QWp;->messageService:Lc8/dXp;

    .line 65
    iget-object v0, p0, Lc8/QWp;->messageService:Lc8/dXp;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lc8/dXp;

    invoke-direct {v0}, Lc8/dXp;-><init>()V

    iput-object v0, p0, Lc8/QWp;->messageService:Lc8/dXp;

    .line 68
    :cond_1
    iget-object v0, p0, Lc8/QWp;->messageService:Lc8/dXp;

    sget-object v1, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc8/dXp;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public msgReceiverPreHandler([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;Z)Landroid/os/Bundle;
    .locals 36
    .param p1, "data"    # [B
    .param p2, "messageSource"    # Ljava/lang/String;
    .param p3, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .param p4, "msgToBussiness"    # Z

    .prologue
    .line 148
    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    array-length v4, v0

    if-gtz v4, :cond_2

    .line 149
    :cond_0
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v4

    const v5, 0x101d2

    const-string/jumbo v6, "accs.msgRecevie"

    sget-object v7, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "data==null"

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    const-string/jumbo v4, "AgooFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMessage data==null,utdid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const/16 v20, 0x0

    .line 294
    :cond_1
    :goto_0
    return-object v20

    .line 153
    :cond_2
    new-instance v30, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 154
    .local v30, "message":Ljava/lang/String;
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 155
    const-string/jumbo v4, "AgooFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "msgRecevie,message--->["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",utdid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_3
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 158
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v4

    const v5, 0x101d2

    const-string/jumbo v6, "accs.msgRecevie"

    sget-object v7, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "message==null"

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    const-string/jumbo v4, "AgooFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMessage message==null,utdid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 162
    :cond_4
    new-instance v28, Lorg/json/JSONArray;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 163
    .local v28, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v29

    .line 166
    .local v29, "len":I
    const/16 v19, 0x0

    .line 168
    .local v19, "extData":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v26, "ids":Ljava/lang/StringBuilder;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v32, "removeIds":Ljava/lang/StringBuilder;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v34, "removePacks":Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    .line 172
    .local v20, "extras":Landroid/os/Bundle;
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_12

    .line 173
    new-instance v20, Landroid/os/Bundle;

    .end local v20    # "extras":Landroid/os/Bundle;
    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 174
    .restart local v20    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v27

    .line 175
    .local v27, "json":Lorg/json/JSONObject;
    if-eqz v27, :cond_7

    .line 178
    new-instance v31, Lc8/DWp;

    invoke-direct/range {v31 .. v31}, Lc8/DWp;-><init>()V

    .line 179
    .local v31, "msgDO":Lc8/DWp;
    const-string/jumbo v4, "p"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 180
    .local v9, "pack":Ljava/lang/String;
    const-string/jumbo v4, "i"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 181
    .local v25, "id":Ljava/lang/String;
    const-string/jumbo v4, "b"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, "body":Ljava/lang/String;
    const-string/jumbo v4, "f"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 183
    .local v22, "flag":J
    const-string/jumbo v4, "ext"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 184
    const-string/jumbo v4, "ext"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 187
    :cond_5
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v4, v29, -0x1

    move/from16 v0, v24

    if-ge v0, v4, :cond_6

    .line 189
    const-string/jumbo v4, ","

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_6
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    iput-object v0, v1, Lc8/DWp;->msgIds:Ljava/lang/String;

    .line 192
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    iput-object v0, v1, Lc8/DWp;->extData:Ljava/lang/String;

    .line 193
    move-object/from16 v0, v31

    iput-object v9, v0, Lc8/DWp;->removePacks:Ljava/lang/String;

    .line 194
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    iput-object v0, v1, Lc8/DWp;->messageSource:Ljava/lang/String;

    .line 195
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 196
    const-string/jumbo v4, "11"

    move-object/from16 v0, v31

    iput-object v4, v0, Lc8/DWp;->errorCode:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/QWp;->notifyManager:Lc8/UWp;

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lc8/UWp;->handlerACKMessage(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 172
    .end local v9    # "pack":Ljava/lang/String;
    .end local v16    # "body":Ljava/lang/String;
    .end local v22    # "flag":J
    .end local v25    # "id":Ljava/lang/String;
    .end local v31    # "msgDO":Lc8/DWp;
    :cond_7
    :goto_2
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 200
    .restart local v9    # "pack":Ljava/lang/String;
    .restart local v16    # "body":Ljava/lang/String;
    .restart local v22    # "flag":J
    .restart local v25    # "id":Ljava/lang/String;
    .restart local v31    # "msgDO":Lc8/DWp;
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 201
    const-string/jumbo v4, "12"

    move-object/from16 v0, v31

    iput-object v4, v0, Lc8/DWp;->errorCode:Ljava/lang/String;

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/QWp;->notifyManager:Lc8/UWp;

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lc8/UWp;->handlerACKMessage(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 290
    .end local v9    # "pack":Ljava/lang/String;
    .end local v16    # "body":Ljava/lang/String;
    .end local v19    # "extData":Ljava/lang/String;
    .end local v20    # "extras":Landroid/os/Bundle;
    .end local v22    # "flag":J
    .end local v24    # "i":I
    .end local v25    # "id":Ljava/lang/String;
    .end local v26    # "ids":Ljava/lang/StringBuilder;
    .end local v27    # "json":Lorg/json/JSONObject;
    .end local v28    # "jsonArray":Lorg/json/JSONArray;
    .end local v29    # "len":I
    .end local v30    # "message":Ljava/lang/String;
    .end local v31    # "msgDO":Lc8/DWp;
    .end local v32    # "removeIds":Ljava/lang/StringBuilder;
    .end local v34    # "removePacks":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v17

    .line 291
    .local v17, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 292
    const-string/jumbo v4, "AgooFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "msgRecevie is error,e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 205
    .end local v17    # "e":Ljava/lang/Throwable;
    .restart local v9    # "pack":Ljava/lang/String;
    .restart local v16    # "body":Ljava/lang/String;
    .restart local v19    # "extData":Ljava/lang/String;
    .restart local v20    # "extras":Landroid/os/Bundle;
    .restart local v22    # "flag":J
    .restart local v24    # "i":I
    .restart local v25    # "id":Ljava/lang/String;
    .restart local v26    # "ids":Ljava/lang/StringBuilder;
    .restart local v27    # "json":Lorg/json/JSONObject;
    .restart local v28    # "jsonArray":Lorg/json/JSONArray;
    .restart local v29    # "len":I
    .restart local v30    # "message":Ljava/lang/String;
    .restart local v31    # "msgDO":Lc8/DWp;
    .restart local v32    # "removeIds":Ljava/lang/StringBuilder;
    .restart local v34    # "removePacks":Ljava/lang/StringBuilder;
    :cond_a
    const-wide/16 v4, -0x1

    cmp-long v4, v22, v4

    if-nez v4, :cond_b

    .line 206
    :try_start_1
    const-string/jumbo v4, "13"

    move-object/from16 v0, v31

    iput-object v4, v0, Lc8/DWp;->errorCode:Ljava/lang/String;

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/QWp;->notifyManager:Lc8/UWp;

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lc8/UWp;->handlerACKMessage(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_2

    .line 210
    :cond_b
    sget-object v4, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v4, v9}, Lc8/QWp;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 211
    const-string/jumbo v4, "AgooFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "msgRecevie checkpackage is del,pack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v4

    const v5, 0x101d2

    const-string/jumbo v6, "accs.msgRecevie"

    sget-object v7, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "deletePack"

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v4, v29, -0x1

    move/from16 v0, v24

    if-ge v0, v4, :cond_7

    .line 216
    const-string/jumbo v4, ","

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string/jumbo v4, ","

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 221
    :cond_c
    move-wide/from16 v0, v22

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lc8/QWp;->getFlag(JLc8/DWp;)Landroid/os/Bundle;

    move-result-object v21

    .line 222
    .local v21, "flagExtras":Landroid/os/Bundle;
    const-string/jumbo v4, "encrypted"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 225
    .local v18, "encrypted":Ljava/lang/String;
    const/4 v11, 0x0

    .line 226
    .local v11, "agooFlag":Z
    sget-object v4, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 227
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 237
    const-string/jumbo v4, "AgooFactory"

    const-string/jumbo v5, "msgRecevie msg encrypted flag not exist, cannot prase!!!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v10

    const v11, 0x101d2

    const-string/jumbo v12, "accs.msgRecevie"

    .end local v11    # "agooFlag":Z
    sget-object v4, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "encrypted!=4"

    const-string/jumbo v15, "15"

    invoke-virtual/range {v10 .. v15}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    const-string/jumbo v4, "24"

    move-object/from16 v0, v31

    iput-object v4, v0, Lc8/DWp;->errorCode:Ljava/lang/String;

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/QWp;->notifyManager:Lc8/UWp;

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lc8/UWp;->handlerACKMessage(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_2

    .line 245
    .restart local v11    # "agooFlag":Z
    :cond_d
    const/4 v11, 0x1

    .line 248
    :cond_e
    if-eqz v21, :cond_f

    .line 249
    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :cond_f
    :try_start_2
    const-string/jumbo v4, "t"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 253
    .local v35, "time":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 254
    const-string/jumbo v4, "time"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 261
    .end local v35    # "time":Ljava/lang/String;
    :cond_10
    :goto_3
    :try_start_3
    const-string/jumbo v4, "trace"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 262
    const-string/jumbo v4, "id"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v4, "body"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string/jumbo v4, "source"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v4, "fromAppkey"

    sget-object v5, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo v4, "extData"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v4, "oriData"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-eqz p4, :cond_11

    .line 269
    sget-object v8, Lc8/QWp;->mContext:Landroid/content/Context;

    move-object/from16 v7, p0

    move-object/from16 v10, v20

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lc8/QWp;->sendMsgToBussiness(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_2

    .line 257
    :catch_1
    move-exception v4

    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 258
    const-string/jumbo v4, "AgooFactory"

    const-string/jumbo v5, "agoo msg has no time"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 271
    :cond_11
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "common-push"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v4, "message_source"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 275
    .end local v9    # "pack":Ljava/lang/String;
    .end local v11    # "agooFlag":Z
    .end local v16    # "body":Ljava/lang/String;
    .end local v18    # "encrypted":Ljava/lang/String;
    .end local v21    # "flagExtras":Landroid/os/Bundle;
    .end local v22    # "flag":J
    .end local v25    # "id":Ljava/lang/String;
    .end local v27    # "json":Lorg/json/JSONObject;
    .end local v31    # "msgDO":Lc8/DWp;
    :cond_12
    if-eqz v34, :cond_1

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 276
    new-instance v33, Lc8/DWp;

    invoke-direct/range {v33 .. v33}, Lc8/DWp;-><init>()V

    .line 277
    .local v33, "removeMsg":Lc8/DWp;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    iput-object v4, v0, Lc8/DWp;->msgIds:Ljava/lang/String;

    .line 278
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    iput-object v4, v0, Lc8/DWp;->removePacks:Ljava/lang/String;

    .line 279
    const-string/jumbo v4, "10"

    move-object/from16 v0, v33

    iput-object v4, v0, Lc8/DWp;->errorCode:Ljava/lang/String;

    .line 280
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    iput-object v0, v1, Lc8/DWp;->messageSource:Ljava/lang/String;

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/QWp;->notifyManager:Lc8/UWp;

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lc8/UWp;->handlerACKMessage(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public msgRecevie([BLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "messageSource"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/QWp;->msgRecevie([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 123
    return-void
.end method

.method public msgRecevie([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "messageSource"    # Ljava/lang/String;
    .param p3, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    const/4 v4, 0x0

    .line 128
    :try_start_0
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string/jumbo v1, "AgooFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "into--[AgooFactory,msgRecevie]:messageSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_0
    iget-object v1, p0, Lc8/QWp;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lc8/JWp;

    invoke-direct {v2, p0, p1, p2, p3}, Lc8/JWp;-><init>(Lc8/QWp;[BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "AgooFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceImpl init task fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reportCacheMsg()V
    .locals 4

    .prologue
    .line 342
    :try_start_0
    iget-object v1, p0, Lc8/QWp;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lc8/KWp;

    invoke-direct {v2, p0}, Lc8/KWp;-><init>(Lc8/QWp;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "AgooFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportCacheMsg fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public saveMsg([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/QWp;->saveMsg([BLjava/lang/String;)V

    .line 74
    return-void
.end method

.method public saveMsg([BLjava/lang/String;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 77
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lc8/QWp;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lc8/IWp;

    invoke-direct {v1, p0, p1, p2}, Lc8/IWp;-><init>(Lc8/QWp;[BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateMsg([BZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "isSuccess"    # Z

    .prologue
    .line 367
    iget-object v0, p0, Lc8/QWp;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lc8/LWp;

    invoke-direct {v1, p0, p1, p2}, Lc8/LWp;-><init>(Lc8/QWp;[BZ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method

.method public updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 428
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    const-string/jumbo v1, "AgooFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNotifyMsg begin,messageId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",reportTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/QWp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lc8/BWp;->getReportCacheMsg(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    :cond_2
    const-string/jumbo v1, "8"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    iget-object v1, p0, Lc8/QWp;->messageService:Lc8/dXp;

    const-string/jumbo v2, "2"

    invoke-virtual {v1, p1, v2}, Lc8/dXp;->updateAccsMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "AgooFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNotifyMsg e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 437
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    const-string/jumbo v1, "9"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lc8/QWp;->messageService:Lc8/dXp;

    const-string/jumbo v2, "3"

    invoke-virtual {v1, p1, v2}, Lc8/dXp;->updateAccsMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateNotifyMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v0, p0, Lc8/QWp;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lc8/MWp;

    invoke-direct {v1, p0, p1, p2}, Lc8/MWp;-><init>(Lc8/QWp;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method
