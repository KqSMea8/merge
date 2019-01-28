.class public Lc8/Jcf;
.super Ljava/lang/Object;
.source "Services.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/service/Services$InvocationOnMainThreadException;
    }
.end annotation


# static fields
.field private static final KNullCompName:Landroid/content/ComponentName;

.field private static final KServiceConnectionTimeout:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "Services"

.field private static final mResolvedServiceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final mResolvedServiceSkipCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static mSetClassLoader:Z

.field private static mSysClassLoader:Ljava/lang/ClassLoader;

.field private static final sManagedBridgeBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sManagedServiceConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sRecyclerSetup:Z

.field private static final sRecyclerSetupLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 471
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/Jcf;->mResolvedServiceCache:Ljava/util/Map;

    .line 472
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/Jcf;->mResolvedServiceSkipCache:Ljava/util/Map;

    .line 474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/Jcf;->sManagedServiceConnections:Ljava/util/Map;

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/Jcf;->sManagedBridgeBinder:Ljava/util/Map;

    .line 479
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Jcf;->sRecyclerSetupLock:Ljava/lang/Object;

    .line 482
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Jcf;->mSetClassLoader:Z

    .line 486
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lc8/Jcf;->KNullCompName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
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

.method private static asInterface(Landroid/os/IBinder;Ljava/lang/Class;)Landroid/os/IInterface;
    .locals 8
    .param p0, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/os/IBinder;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p1, "service_interface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 440
    if-nez p0, :cond_1

    move-object v0, v2

    .line 447
    :cond_0
    :goto_0
    return-object v0

    .line 441
    :cond_1
    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 442
    .local v0, "local":Landroid/os/IInterface;
    if-nez v0, :cond_0

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "$Stub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v6, v4}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 447
    .local v1, "stub_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "asInterface"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-static {v3, v2, v4}, Lc8/Jcf;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    move-object v0, v2

    goto :goto_0
.end method

.method public static bind(Landroid/content/Context;Ljava/lang/Class;Landroid/content/ServiceConnection;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/ServiceConnection;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "service_interface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    invoke-static {p0, p1, v2}, Lc8/Jcf;->buildServiceIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object v1

    .line 218
    .local v1, "service_intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 219
    const-string/jumbo v3, "Services"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No matched service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    return v2

    .line 223
    :cond_0
    invoke-static {p2}, Lc8/Fcf;->checkConnectionExist(Landroid/content/ServiceConnection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Call bind() with same ServiceConnection instance"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_1
    const/4 v0, 0x0

    .line 229
    .local v0, "ret":Z
    :try_start_0
    invoke-static {p0, v1, p2}, Lc8/Fcf;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v1, p2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v0, v3

    :goto_1
    move v2, v0

    .line 234
    goto :goto_0

    :cond_3
    move v0, v2

    .line 229
    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static buildServiceIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "skipbridge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p1, "service_interface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 294
    if-nez p0, :cond_0

    .line 295
    const-string/jumbo v4, "Services"

    const-string/jumbo v6, "Context shouldn\'t null"

    invoke-static {v4, v6}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 314
    :goto_0
    return-object v1

    .line 299
    :cond_0
    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lc8/Xaf;->isMultiPackageMode(Landroid/content/Context;)Z

    move-result v0

    .line 302
    .local v0, "dev_mode":Z
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    :cond_1
    if-eqz p2, :cond_2

    sget-object v4, Lc8/Jcf;->mResolvedServiceSkipCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    move-object v3, v4

    .line 304
    .local v3, "service":Landroid/content/ComponentName;
    :goto_1
    sget-object v4, Lc8/Jcf;->KNullCompName:Landroid/content/ComponentName;

    if-ne v3, v4, :cond_3

    move-object v1, v5

    goto :goto_0

    .line 303
    .end local v3    # "service":Landroid/content/ComponentName;
    :cond_2
    sget-object v4, Lc8/Jcf;->mResolvedServiceCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    move-object v3, v4

    goto :goto_1

    .line 305
    .restart local v3    # "service":Landroid/content/ComponentName;
    :cond_3
    if-nez v3, :cond_5

    .line 306
    invoke-static {p0, v1, v0, p2}, Lc8/Jcf;->resolveServiceIntent(Landroid/content/Context;Landroid/content/Intent;ZZ)Landroid/content/ComponentName;

    move-result-object v3

    .line 307
    if-nez v3, :cond_4

    sget-object v3, Lc8/Jcf;->KNullCompName:Landroid/content/ComponentName;

    .line 308
    :cond_4
    if-eqz p2, :cond_6

    .line 309
    sget-object v4, Lc8/Jcf;->mResolvedServiceSkipCache:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_5
    :goto_2
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 311
    :cond_6
    sget-object v4, Lc8/Jcf;->mResolvedServiceCache:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method static cleanupBridgeBinderOnActivityDestroyed(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 420
    sget-object v5, Lc8/Jcf;->sManagedBridgeBinder:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 421
    .local v1, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 433
    :cond_0
    return-void

    .line 422
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 423
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {p0}, Lcom/taobao/android/service/AidlBridgeService;->peekMe(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v4

    .line 424
    .local v4, "service":Landroid/os/IBinder;
    if-eqz v4, :cond_2

    .line 426
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cleanupBridgeBinderOnActivityDestroyed :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    invoke-static {v4}, Lc8/Fbf;->asInterface(Landroid/os/IBinder;)Lc8/Gbf;

    move-result-object v5

    invoke-interface {v5, v0}, Lc8/Gbf;->unbindService(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Services"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to unbind bridge binder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static cleanupOnActivityDestroyed(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 409
    sget-object v4, Lc8/Jcf;->sManagedServiceConnections:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 410
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ServiceConnection;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 417
    :cond_0
    return-void

    .line 411
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 413
    .local v2, "service":Landroid/content/ServiceConnection;
    :try_start_0
    invoke-static {p0, v2}, Lc8/Jcf;->unbind(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "Services"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to unbind service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static ensureRecyclerSetup(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 249
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-gt v1, v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    sget-boolean v1, Lc8/Jcf;->sRecyclerSetup:Z

    if-nez v1, :cond_0

    .line 251
    sget-object v2, Lc8/Jcf;->sRecyclerSetupLock:Ljava/lang/Object;

    monitor-enter v2

    .line 252
    :try_start_0
    sget-boolean v1, Lc8/Jcf;->sRecyclerSetup:Z

    if-eqz v1, :cond_2

    monitor-exit v2

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 254
    :cond_2
    :try_start_1
    invoke-static {p0}, Lc8/Jcf;->findApplication(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 255
    .local v0, "application":Landroid/app/Application;
    new-instance v1, Lc8/Hcf;

    invoke-direct {v1}, Lc8/Hcf;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 269
    const/4 v1, 0x1

    sput-boolean v1, Lc8/Jcf;->sRecyclerSetup:Z

    .line 270
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static equal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 386
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    .line 276
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object p0

    .line 275
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/Jcf;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    .line 276
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static findApplication(Landroid/content/Context;)Landroid/app/Application;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    .local v0, "app_context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 282
    check-cast v0, Landroid/app/Application;

    .line 288
    .end local v0    # "app_context":Landroid/content/Context;
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 283
    .restart local v0    # "app_context":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 284
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    .line 285
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    instance-of v1, p0, Landroid/app/Service;

    if-eqz v1, :cond_2

    .line 286
    check-cast p0, Landroid/app/Service;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    .line 287
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_3

    .line 288
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/Jcf;->findApplication(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    .line 289
    .restart local p0    # "context":Landroid/content/Context;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to find application from context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Landroid/app/Activity;Ljava/lang/Class;)Landroid/os/IInterface;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Lc8/AZe;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "service_interface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lc8/Jcf;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/Class;)Landroid/os/IInterface;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lc8/AZe;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    .local p1, "service_interface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Context is null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 76
    :cond_0
    if-nez p1, :cond_1

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Service interface is null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 78
    :cond_1
    const-class v14, Lc8/Gbf;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_3

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/taobao/android/service/AidlBridgeService;->peekMe(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v10

    .line 80
    .local v10, "service":Landroid/os/IBinder;
    if-eqz v10, :cond_2

    .line 81
    invoke-static {v10}, Lc8/Fbf;->asInterface(Landroid/os/IBinder;)Lc8/Gbf;

    move-result-object v7

    .line 185
    .end local v10    # "service":Landroid/os/IBinder;
    :goto_0
    return-object v7

    .line 82
    .restart local v10    # "service":Landroid/os/IBinder;
    :cond_2
    const-string/jumbo v14, "Services"

    const-string/jumbo v15, "AIDL Service Bridge is not ready"

    new-instance v16, Ljava/lang/Throwable;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v14 .. v16}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v10    # "service":Landroid/os/IBinder;
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14}, Lc8/Jcf;->buildServiceIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object v11

    .line 86
    .local v11, "service_intent":Landroid/content/Intent;
    if-nez v11, :cond_4

    .line 87
    const-string/jumbo v14, "Services"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "No matched service for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v7, 0x0

    goto :goto_0

    .line 91
    :cond_4
    invoke-static/range {p0 .. p0}, Lc8/Jcf;->ensureRecyclerSetup(Landroid/content/Context;)V

    .line 92
    new-instance v5, Lc8/Gcf;

    invoke-direct {v5}, Lc8/Gcf;-><init>()V

    .line 95
    .local v5, "connection":Lc8/Gcf;
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    const-class v15, Lcom/taobao/android/service/AidlBridgeService;

    invoke-static {v15}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 96
    invoke-static/range {p0 .. p0}, Lcom/taobao/android/service/AidlBridgeService;->peekMe(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v10

    .line 98
    .restart local v10    # "service":Landroid/os/IBinder;
    if-nez v10, :cond_5

    .line 100
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/taobao/android/service/AidlBridgeService;->init(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 101
    const/4 v7, 0x0

    goto :goto_0

    .line 105
    :cond_5
    :try_start_0
    invoke-static {v10}, Lc8/Fbf;->asInterface(Landroid/os/IBinder;)Lc8/Gbf;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v15}, Lc8/Jcf;->buildServiceIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object v15

    invoke-interface {v14, v15}, Lc8/Gbf;->bindService(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v8

    .line 107
    .local v8, "real_binder":Landroid/os/IBinder;
    invoke-static/range {p0 .. p0}, Lc8/Jcf;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 108
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_7

    .line 109
    sget-object v14, Lc8/Jcf;->sManagedBridgeBinder:Ljava/util/Map;

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 110
    .local v4, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez v4, :cond_6

    .line 111
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .restart local v4    # "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    sget-object v14, Lc8/Jcf;->sManagedBridgeBinder:Ljava/util/Map;

    invoke-interface {v14, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_6
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v4    # "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_7
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Lc8/Jcf;->asInterface(Landroid/os/IBinder;Ljava/lang/Class;)Landroid/os/IInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 118
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v8    # "real_binder":Landroid/os/IBinder;
    :catch_0
    move-exception v6

    .line 119
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "Services"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to binder to real interface in bridge mode with name is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 127
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "service":Landroid/os/IBinder;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v11, v5}, Lc8/Fcf;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 132
    .local v9, "ret":Z
    if-nez v9, :cond_a

    .line 134
    invoke-static {}, Lc8/Xaf;->isMainThread()Z

    move-result v14

    if-eqz v14, :cond_9

    new-instance v14, Lcom/taobao/android/service/Services$InvocationOnMainThreadException;

    invoke-direct {v14}, Lcom/taobao/android/service/Services$InvocationOnMainThreadException;-><init>()V

    throw v14

    .line 129
    .end local v9    # "ret":Z
    :catch_1
    move-exception v14

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 135
    .restart local v9    # "ret":Z
    :cond_9
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v5, v14}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v14

    if-nez v14, :cond_a

    .line 136
    const-string/jumbo v14, "Services"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to bind service: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 139
    :catch_2
    move-exception v6

    .line 140
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unnecessary unbinding due to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 146
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_a
    invoke-static/range {p0 .. p0}, Lc8/Jcf;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 147
    .restart local v2    # "activity":Landroid/app/Activity;
    if-eqz v2, :cond_c

    .line 148
    sget-object v14, Lc8/Jcf;->sManagedServiceConnections:Ljava/util/Map;

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 149
    .local v12, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ServiceConnection;>;"
    if-nez v12, :cond_b

    .line 150
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ServiceConnection;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .restart local v12    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ServiceConnection;>;"
    sget-object v14, Lc8/Jcf;->sManagedServiceConnections:Ljava/util/Map;

    invoke-interface {v14, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_b
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v12    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ServiceConnection;>;"
    :cond_c
    const-wide/16 v14, 0x2710

    :try_start_3
    invoke-virtual {v5, v14, v15}, Lc8/Gcf;->waitUntilConnected(J)Landroid/os/IBinder;
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v3

    .line 169
    .local v3, "binder":Landroid/os/IBinder;
    :try_start_4
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lc8/Jcf;->asInterface(Landroid/os/IBinder;Ljava/lang/Class;)Landroid/os/IInterface;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_8

    move-result-object v7

    .local v7, "instance":Landroid/os/IInterface;, "TT;"
    goto/16 :goto_0

    .line 160
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v7    # "instance":Landroid/os/IInterface;, "TT;"
    :catch_3
    move-exception v14

    const-string/jumbo v14, "Services"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Service connection timeout: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 163
    :catch_4
    move-exception v14

    const-string/jumbo v14, "Services"

    const-string/jumbo v15, "Service connection interrupted."

    invoke-static {v14, v15}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 170
    .restart local v3    # "binder":Landroid/os/IBinder;
    :catch_5
    move-exception v6

    .line 171
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v14, "Services"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to cast binder to interface, ClassNotFoundException: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 173
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v6

    .line 174
    .local v6, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v14, "Services"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to cast binder to interface, IllegalAccessException: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 176
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_7
    move-exception v6

    .line 177
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v14, "Services"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to cast binder to interface, NoSuchMethodException: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 179
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_8
    move-exception v6

    .line 180
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v13

    .line 181
    .local v13, "t":Ljava/lang/Throwable;
    instance-of v14, v13, Ljava/lang/RuntimeException;

    if-eqz v14, :cond_d

    check-cast v13, Ljava/lang/RuntimeException;

    .end local v13    # "t":Ljava/lang/Throwable;
    throw v13

    .line 182
    .restart local v13    # "t":Ljava/lang/Throwable;
    :cond_d
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14
.end method

.method public static getSystemClassloader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lc8/Jcf;->mSysClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static procname(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 393
    .local v3, "pid":I
    :try_start_0
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 395
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 397
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v3, :cond_0

    .line 398
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mActivityManager":Landroid/app/ActivityManager;
    :goto_0
    return-object v4

    :catch_0
    move-exception v4

    :cond_1
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method private static resolveServiceIntent(Landroid/content/Context;Landroid/content/Intent;ZZ)Landroid/content/ComponentName;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dev_mode"    # Z
    .param p3, "skipbridge"    # Z

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 319
    .local v6, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_0

    const/4 v9, 0x0

    .line 382
    :goto_0
    return-object v9

    .line 320
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    .line 321
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 323
    .local v2, "count":I
    const/4 v9, 0x2

    if-lt v2, v9, :cond_3

    .line 324
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 325
    .local v1, "bridge_service":Landroid/content/pm/ServiceInfo;
    const-class v9, Lcom/taobao/android/service/AidlBridgeService;

    invoke-static {v9}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 326
    add-int/lit8 v2, v2, -0x1

    .line 327
    iget-object v9, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {p0}, Lc8/Jcf;->procname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/Jcf;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz p3, :cond_3

    .line 328
    :cond_2
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 331
    .end local v1    # "bridge_service":Landroid/content/pm/ServiceInfo;
    :cond_3
    const/4 v9, 0x1

    if-le v2, v9, :cond_a

    .line 333
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 334
    .local v5, "match":Landroid/content/pm/ResolveInfo;
    iget-object v4, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 335
    .local v4, "info":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 336
    if-nez p2, :cond_4

    .line 337
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Find one more, use >> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    .end local v4    # "info":Landroid/content/pm/ServiceInfo;
    .end local v5    # "match":Landroid/content/pm/ResolveInfo;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "Resolve more than one service for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    if-eqz p3, :cond_6

    const-string/jumbo v9, " -s "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_6
    if-eqz p2, :cond_7

    const-string/jumbo v9, " -d "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_7
    const-string/jumbo v9, " [p:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 353
    .restart local v5    # "match":Landroid/content/pm/ResolveInfo;
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v9, :cond_8

    .line 354
    const-string/jumbo v9, ">> "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 356
    .end local v5    # "match":Landroid/content/pm/ResolveInfo;
    :cond_9
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 359
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    if-nez p2, :cond_b

    .line 360
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v5, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 361
    .local v5, "match":Landroid/content/pm/ServiceInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ">> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    .end local v5    # "match":Landroid/content/pm/ServiceInfo;
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 367
    .local v8, "uid":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 368
    .local v5, "match":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x1

    if-le v2, v9, :cond_d

    .line 369
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ">> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    :cond_d
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, v8, :cond_c

    .line 371
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    .end local v5    # "match":Landroid/content/pm/ResolveInfo;
    :cond_e
    invoke-static {p0}, Lc8/Jcf;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 375
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_f

    new-instance v9, Lc8/Icf;

    invoke-direct {v9, p0, p1}, Lc8/Icf;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 379
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Potential mismatched service for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 381
    .restart local v5    # "match":Landroid/content/pm/ResolveInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 382
    .end local v5    # "match":Landroid/content/pm/ResolveInfo;
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public static setSystemClassloader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p0, "classloader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 457
    sget-boolean v0, Lc8/Jcf;->mSetClassLoader:Z

    if-eqz v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    sput-object p0, Lc8/Jcf;->mSysClassLoader:Ljava/lang/ClassLoader;

    .line 460
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Jcf;->mSetClassLoader:Z

    goto :goto_0
.end method

.method public static unbind(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 239
    invoke-static {p0, p1}, Lc8/Fcf;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Already unbound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static unget(Landroid/content/Context;Landroid/os/IInterface;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    .local p1, "service_instance":Landroid/os/IInterface;, "TT;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "deprecation"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method
