.class public Lc8/zPp;
.super Ljava/lang/Object;
.source "CookieManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "mtopsdk.CookieManager"

.field private static volatile isSetup:Z

.field public static webkitCookMgr:Landroid/webkit/CookieManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lc8/zPp;->isSetup:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v3, Lc8/zPp;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lc8/zPp;->isSetup:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 51
    :goto_0
    monitor-exit v3

    return-object v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 47
    .local v0, "cookieString":Ljava/lang/String;
    :try_start_1
    sget-object v2, Lc8/zPp;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v2, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v2, "mtopsdk.CookieManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get cookie failed. url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 42
    .end local v0    # "cookieString":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cookieStr"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v2, Lc8/zPp;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lc8/zPp;->isSetup:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 39
    :goto_0
    monitor-exit v2

    return-void

    .line 34
    :cond_0
    :try_start_1
    sget-object v1, Lc8/zPp;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v1, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "mtopsdk.CookieManager"

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

    invoke-static {v1, v3, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 30
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setup(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const-class v1, Lc8/zPp;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lc8/zPp;->isSetup:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 22
    :cond_1
    :try_start_1
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 23
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 24
    sput-object v0, Lc8/zPp;->webkitCookMgr:Landroid/webkit/CookieManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 25
    sget-object v0, Lc8/zPp;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lc8/zPp;->isSetup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
