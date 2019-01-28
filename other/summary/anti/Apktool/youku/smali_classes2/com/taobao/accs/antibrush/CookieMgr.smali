.class public Lcom/taobao/accs/antibrush/CookieMgr;
.super Ljava/lang/Object;
.source "CookieMgr.java"


# static fields
.field public static final KEY_SEC:Ljava/lang/String; = "sec"

.field public static final TAG:Ljava/lang/String; = "CookieMgr"

.field private static volatile isSetup:Z

.field public static webkitCookMgr:Landroid/webkit/CookieManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/antibrush/CookieMgr;->isSetup:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSetup()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/taobao/accs/antibrush/CookieMgr;->isSetup:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/antibrush/CookieMgr;->setup(Landroid/content/Context;)V

    .line 56
    :cond_0
    sget-boolean v0, Lcom/taobao/accs/antibrush/CookieMgr;->isSetup:Z

    return v0
.end method

.method public static declared-synchronized getCookieSec(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v4, Lcom/taobao/accs/antibrush/CookieMgr;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/taobao/accs/antibrush/CookieMgr;->checkSetup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    const-string/jumbo v3, "CookieMgr"

    const-string/jumbo v5, "cookieMgr not setup"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    const/4 v1, 0x0

    .line 72
    :goto_0
    monitor-exit v4

    return-object v1

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 67
    .local v1, "sec":Ljava/lang/String;
    :try_start_1
    sget-object v3, Lcom/taobao/accs/antibrush/CookieMgr;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v3, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "cookieString":Ljava/lang/String;
    invoke-static {v0}, Lcom/taobao/accs/antibrush/CookieMgr;->parse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 69
    .end local v0    # "cookieString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 70
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v3, "CookieMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get cookie failed. url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v2, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 60
    .end local v1    # "sec":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, "sec":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v4, v3

    .line 100
    .end local v3    # "sec":Ljava/lang/String;
    .local v4, "sec":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 81
    .end local v4    # "sec":Ljava/lang/String;
    .restart local v3    # "sec":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/util/StringTokenizer;

    const-string/jumbo v8, ";"

    invoke-direct {v6, p0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v6, "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "namevaluePair":Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 86
    .local v0, "index":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_3

    .line 87
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v8, "sec"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 90
    invoke-static {v7}, Lcom/taobao/accs/antibrush/CookieMgr;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    :cond_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_1

    .end local v0    # "index":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "namevaluePair":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :goto_1
    move-object v4, v3

    .line 100
    .end local v3    # "sec":Ljava/lang/String;
    .restart local v4    # "sec":Ljava/lang/String;
    goto :goto_0

    .line 94
    .end local v4    # "sec":Ljava/lang/String;
    .restart local v0    # "index":I
    .restart local v2    # "namevaluePair":Ljava/lang/String;
    .restart local v3    # "sec":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Invalid cookie name-value pair"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "index":I
    .end local v2    # "namevaluePair":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 98
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "CookieMgr"

    const-string/jumbo v9, "parse"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v5, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static declared-synchronized setup(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x15

    .line 28
    const-class v2, Lcom/taobao/accs/antibrush/CookieMgr;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/taobao/accs/client/GlobalConfig;->enableCookie:Z

    if-nez v1, :cond_1

    .line 29
    const-string/jumbo v1, "CookieMgr"

    const-string/jumbo v3, "disable cookie"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 33
    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/taobao/accs/antibrush/CookieMgr;->isSetup:Z

    if-nez v1, :cond_0

    .line 37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_2

    .line 38
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 40
    :cond_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 41
    sput-object v1, Lcom/taobao/accs/antibrush/CookieMgr;->webkitCookMgr:Landroid/webkit/CookieManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 42
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_3

    .line 43
    sget-object v1, Lcom/taobao/accs/antibrush/CookieMgr;->webkitCookMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 45
    :cond_3
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/accs/antibrush/CookieMgr;->isSetup:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "CookieMgr"

    const-string/jumbo v3, "setup"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 28
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x27

    const/16 v4, 0x22

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_1

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 112
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 108
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_0

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
