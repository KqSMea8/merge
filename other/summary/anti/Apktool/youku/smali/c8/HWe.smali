.class public Lc8/HWe;
.super Ljava/lang/Object;
.source "PhoneInfoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "imei":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 33
    :try_start_0
    const-string/jumbo v2, "phone"

    .line 34
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 35
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    invoke-static {v0}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-static {}, Lc8/HWe;->getYunOSUuid()Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_1
    invoke-static {v0}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    invoke-static {}, Lc8/HWe;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_2
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "imsi":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 84
    :try_start_0
    const-string/jumbo v2, "phone"

    .line 85
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 86
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    invoke-static {v0}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-static {}, Lc8/HWe;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_1
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getUniqueID()Ljava/lang/String;
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x0

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v5, v10

    .line 14
    .local v5, "t1":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-int v6, v10

    .line 15
    .local v6, "t2":I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v7

    .line 16
    .local v7, "t3":I
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 17
    .local v8, "t4":I
    invoke-static {v5}, Lc8/GWe;->getBytes(I)[B

    move-result-object v0

    .line 18
    .local v0, "b1":[B
    invoke-static {v6}, Lc8/GWe;->getBytes(I)[B

    move-result-object v1

    .line 19
    .local v1, "b2":[B
    invoke-static {v7}, Lc8/GWe;->getBytes(I)[B

    move-result-object v2

    .line 20
    .local v2, "b3":[B
    invoke-static {v8}, Lc8/GWe;->getBytes(I)[B

    move-result-object v3

    .line 21
    .local v3, "b4":[B
    const/16 v9, 0x10

    new-array v4, v9, [B

    .line 22
    .local v4, "bUniqueID":[B
    invoke-static {v0, v14, v4, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-static {v1, v14, v4, v15, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    const/16 v9, 0x8

    invoke-static {v2, v14, v4, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    const/16 v9, 0xc

    invoke-static {v3, v14, v4, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    const/4 v9, 0x2

    invoke-static {v4, v9}, Lc8/FWe;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private static getYunOSTVUuid()Ljava/lang/String;
    .locals 6

    .prologue
    .line 69
    const-string/jumbo v2, ""

    .line 71
    .local v2, "lUUID":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "com.yunos.baseservice.clouduuid.CloudUUID"

    invoke-static {v4}, Lc8/HWe;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 72
    .local v1, "cloudUuid":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getCloudUUID"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 73
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/HWe;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "cloudUuid":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static getYunOSUuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    const-string/jumbo v1, "ro.aliyun.clouduuid"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lc8/KWe;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "lUUID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string/jumbo v1, "ro.sys.aliyun.clouduuid"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lc8/KWe;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-static {}, Lc8/HWe;->getYunOSTVUuid()Ljava/lang/String;

    move-result-object v0

    .line 65
    .end local v0    # "lUUID":Ljava/lang/String;
    :cond_1
    return-object v0
.end method
