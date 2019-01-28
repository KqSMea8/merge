.class public Lc8/Kgb;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field public static deviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method private static _initDeviceId(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string/jumbo v3, "com.ta.utdid2.device.UTDevice"

    .line 25
    .local v3, "utClassName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 28
    .local v4, "utdid":Ljava/lang/String;
    invoke-static {v3}, Lc8/Xhb;->loadClassQuietly(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 29
    .local v1, "deviceClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 31
    :try_start_0
    const-string/jumbo v5, "getUtdid"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-static {v5, v6, v7}, Lc8/Kgb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    .local v2, "ret":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 33
    const-string/jumbo v5, "DeviceInfo"

    const-string/jumbo v6, "get utdid null"

    invoke-static {v5, v6}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v4, :cond_2

    .line 44
    sget-object v5, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v6, Lc8/Igb;

    invoke-direct {v6, p0}, Lc8/Igb;-><init>(Landroid/content/Context;)V

    invoke-interface {v5, v6}, Lc8/shb;->postTask(Ljava/lang/Runnable;)V

    .line 74
    :goto_1
    return-void

    .line 35
    .restart local v2    # "ret":Ljava/lang/Object;
    :cond_1
    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 39
    .end local v2    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v5

    const-string/jumbo v5, "DeviceInfo"

    const-string/jumbo v6, "get utdid error"

    invoke-static {v5, v6}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    sput-object v4, Lc8/Kgb;->deviceId:Ljava/lang/String;

    .line 58
    const-string/jumbo v5, "DeviceInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "utdid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v5, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v6, Lc8/Jgb;

    invoke-direct {v6, p0}, Lc8/Jgb;-><init>(Landroid/content/Context;)V

    invoke-interface {v5, v6}, Lc8/shb;->postTask(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v0, Lc8/Kgb;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p0}, Lc8/Kgb;->_initDeviceId(Landroid/content/Context;)V

    .line 21
    :cond_0
    return-void
.end method
