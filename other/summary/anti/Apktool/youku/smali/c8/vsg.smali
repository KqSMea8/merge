.class public Lc8/vsg;
.super Ljava/lang/Object;
.source "UploaderGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/usg;
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE_TYPE:I

.field private static volatile context:Landroid/content/Context;

.field private static final dailyElementMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/gsg;",
            ">;"
        }
    .end annotation
.end field

.field private static final dependencyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/jsg;",
            ">;"
        }
    .end annotation
.end field

.field private static final onlineRelatedMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/gsg;",
            ">;"
        }
    .end annotation
.end field

.field private static final preparedElementMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/gsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/vsg;->onlineRelatedMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/vsg;->preparedElementMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/vsg;->dailyElementMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/vsg;->dependencyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    sget-object v0, Lc8/vsg;->onlineRelatedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lc8/gsg;

    const-string/jumbo v3, "21646297"

    const-string/jumbo v4, "arup.m.taobao.com"

    const-string/jumbo v5, "106.11.53.94"

    invoke-direct {v2, v7, v3, v4, v5}, Lc8/gsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lc8/vsg;->preparedElementMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lc8/gsg;

    const/4 v3, 0x1

    const-string/jumbo v4, "21646297"

    const-string/jumbo v5, "pre-arup.m.taobao.com"

    const-string/jumbo v6, "140.205.173.180"

    invoke-direct {v2, v3, v4, v5, v6}, Lc8/gsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lc8/vsg;->dailyElementMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lc8/gsg;

    const/4 v3, 0x2

    const-string/jumbo v4, "4272"

    const-string/jumbo v5, "daily.arup.m.alibaba.net"

    const-string/jumbo v6, "100.69.167.214"

    invoke-direct {v2, v3, v4, v5, v6}, Lc8/gsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
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

.method public static getDependency(Ljava/lang/Integer;)Lc8/jsg;
    .locals 1
    .param p0, "instanceType"    # Ljava/lang/Integer;

    .prologue
    .line 90
    sget-object v0, Lc8/vsg;->dependencyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/jsg;

    return-object v0
.end method

.method public static getElement(II)Lc8/gsg;
    .locals 2
    .param p0, "e"    # I
    .param p1, "instanceType"    # I

    .prologue
    .line 186
    packed-switch p0, :pswitch_data_0

    .line 192
    sget-object v0, Lc8/vsg;->onlineRelatedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/gsg;

    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    sget-object v0, Lc8/vsg;->dailyElementMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/gsg;

    goto :goto_0

    .line 190
    :pswitch_1
    sget-object v0, Lc8/vsg;->preparedElementMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/gsg;

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static putDependency(Lc8/jsg;)Lc8/jsg;
    .locals 2
    .param p0, "dependency"    # Lc8/jsg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    sget-object v0, Lc8/vsg;->dependencyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0}, Lc8/jsg;->getEnvironment()Lc8/lsg;

    move-result-object v1

    invoke-interface {v1}, Lc8/lsg;->getInstanceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/jsg;

    return-object v0
.end method

.method public static putElement(IILjava/lang/String;)Lc8/gsg;
    .locals 9
    .param p0, "e"    # I
    .param p1, "instanceType"    # I
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 131
    packed-switch p0, :pswitch_data_0

    .line 139
    sget-object v7, Lc8/vsg;->onlineRelatedMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    .local v7, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/uploader/export/EnvironmentElement;>;"
    :goto_0
    monitor-enter v7

    .line 143
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/gsg;

    .line 144
    .local v6, "element":Lc8/gsg;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lc8/gsg;

    iget-object v3, v6, Lc8/gsg;->host:Ljava/lang/String;

    iget-object v4, v6, Lc8/gsg;->ipAddress:Ljava/lang/String;

    iget-object v5, v6, Lc8/gsg;->authCode:Ljava/lang/String;

    move v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lc8/gsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/gsg;

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 133
    .end local v6    # "element":Lc8/gsg;
    .end local v7    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/uploader/export/EnvironmentElement;>;"
    :pswitch_0
    sget-object v7, Lc8/vsg;->dailyElementMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    .restart local v7    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/uploader/export/EnvironmentElement;>;"
    goto :goto_0

    .line 136
    .end local v7    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/uploader/export/EnvironmentElement;>;"
    :pswitch_1
    sget-object v7, Lc8/vsg;->preparedElementMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    .restart local v7    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/uploader/export/EnvironmentElement;>;"
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static putElement(ILjava/lang/String;)Lc8/gsg;
    .locals 1
    .param p0, "e"    # I
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lc8/vsg;->putElement(IILjava/lang/String;)Lc8/gsg;

    move-result-object v0

    return-object v0
.end method

.method public static retrieveContext()Landroid/content/Context;
    .locals 7

    .prologue
    .line 242
    sget-object v3, Lc8/vsg;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 243
    sget-object v3, Lc8/vsg;->context:Landroid/content/Context;

    .line 256
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    .line 245
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v4, Lc8/vsg;

    monitor-enter v4

    .line 246
    :try_start_0
    sget-object v3, Lc8/vsg;->context:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 247
    sget-object v3, Lc8/vsg;->context:Landroid/content/Context;

    monitor-exit v4

    goto :goto_0

    .line 257
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 250
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string/jumbo v3, "android.app.ActivityThread"

    invoke-static {v3}, Lc8/vsg;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 251
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "currentActivityThread"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v5}, Lc8/vsg;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 252
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v5, "getApplication"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lc8/vsg;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    sput-object v3, Lc8/vsg;->context:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    .end local v2    # "object":Ljava/lang/Object;
    :goto_1
    :try_start_2
    sget-object v3, Lc8/vsg;->context:Landroid/content/Context;

    monitor-exit v4

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 235
    if-nez p0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc8/vsg;->context:Landroid/content/Context;

    goto :goto_0
.end method
