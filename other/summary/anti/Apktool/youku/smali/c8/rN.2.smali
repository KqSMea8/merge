.class public Lc8/rN;
.super Ljava/lang/Object;
.source "CookieManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "anet.CookieManager"

.field private static isCookieValid:Z

.field private static volatile isSetup:Z

.field private static webkitCookMgr:Landroid/webkit/CookieManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lc8/rN;->isSetup:Z

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lc8/rN;->isCookieValid:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSetup()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lc8/rN;->isSetup:Z

    if-nez v0, :cond_0

    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/rN;->setup(Landroid/content/Context;)V

    .line 49
    :cond_0
    sget-boolean v0, Lc8/rN;->isSetup:Z

    return v0
.end method

.method public static declared-synchronized getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 88
    const-class v3, Lc8/rN;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lc8/rN;->checkSetup()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lc8/rN;->isCookieValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    monitor-exit v3

    return-object v0

    .line 91
    :cond_1
    const/4 v0, 0x0

    .line 93
    .local v0, "cookieString":Ljava/lang/String;
    :try_start_1
    sget-object v2, Lc8/rN;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v2, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v2, "anet.CookieManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get cookie failed. url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v1, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 88
    .end local v0    # "cookieString":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cookieStr"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v2, Lc8/rN;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lc8/rN;->checkSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lc8/rN;->isCookieValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 57
    :cond_1
    :try_start_1
    sget-object v1, Lc8/rN;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v1, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_2

    .line 59
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "anet.CookieManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set cookie failed. url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cookies="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 53
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 61
    :cond_2
    :try_start_3
    sget-object v1, Lc8/rN;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static setCookie(Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 75
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string/jumbo v6, "Set-Cookie"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "Set-Cookie2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "cookieStr":Ljava/lang/String;
    invoke-static {p0, v0}, Lc8/rN;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    .end local v0    # "cookieStr":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "anet.CookieManager"

    const-string/jumbo v7, "set cookie failed"

    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "url"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p0, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "\nheaders"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object p1, v9, v10

    invoke-static {v6, v7, v8, v1, v9}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static declared-synchronized setup(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x15

    .line 25
    const-class v2, Lc8/rN;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lc8/rN;->isSetup:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 43
    :goto_0
    monitor-exit v2

    return-void

    .line 30
    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_1

    .line 31
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 33
    :cond_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 34
    sput-object v1, Lc8/rN;->webkitCookMgr:Landroid/webkit/CookieManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 35
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_2

    .line 36
    sget-object v1, Lc8/rN;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeExpiredCookie()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_2
    :goto_1
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lc8/rN;->isSetup:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    :try_start_3
    sput-boolean v1, Lc8/rN;->isCookieValid:Z

    .line 40
    const-string/jumbo v1, "anet.CookieManager"

    const-string/jumbo v3, "Cookie Manager setup failed!!!"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
