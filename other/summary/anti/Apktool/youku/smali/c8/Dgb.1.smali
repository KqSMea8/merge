.class public Lc8/Dgb;
.super Ljava/lang/Object;
.source "CookieManagerWrapper.java"


# static fields
.field public static final INSTANCE:Lc8/Dgb;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCookies:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lc8/Dgb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Dgb;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lc8/Dgb;

    invoke-direct {v0}, Lc8/Dgb;-><init>()V

    sput-object v0, Lc8/Dgb;->INSTANCE:Lc8/Dgb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public clearCookies()V
    .locals 17

    .prologue
    .line 104
    const-string/jumbo v12, "clearCookies"

    const-string/jumbo v13, "into clearCookies "

    invoke-static {v12, v13}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 110
    const-string/jumbo v12, "clearCookies"

    const-string/jumbo v13, "into clearCookies removeSessionCookie finish"

    invoke-static {v12, v13}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Dgb;->mCookies:[Ljava/lang/String;

    if-nez v12, :cond_0

    .line 113
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "cookies"

    invoke-static {v12, v13}, Lc8/Thb;->readFileData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "cookieData":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 115
    sget-object v12, Lc8/Dgb;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "get cookie from storage:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v12, "\u0005"

    invoke-static {v3, v12}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/Dgb;->mCookies:[Ljava/lang/String;

    .line 119
    .end local v3    # "cookieData":Ljava/lang/String;
    :cond_0
    const-string/jumbo v12, "clearCookies"

    const-string/jumbo v13, "into clearCookies readFileData finish"

    invoke-static {v12, v13}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Dgb;->mCookies:[Ljava/lang/String;

    if-eqz v12, :cond_8

    .line 121
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v10, "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/cookies/LoginCookie;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Dgb;->mCookies:[Ljava/lang/String;

    array-length v14, v13

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_3

    aget-object v2, v13, v12

    .line 123
    .local v2, "cookie":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 125
    :try_start_0
    invoke-static {v2}, Lc8/Hgb;->parseCookie(Ljava/lang/String;)Lc8/Ggb;

    move-result-object v1

    .line 126
    .local v1, "cook":Lc8/Ggb;
    const-string/jumbo v15, "munb"

    iget-object v0, v1, Lc8/Ggb;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 122
    .end local v1    # "cook":Lc8/Ggb;
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 127
    .restart local v1    # "cook":Lc8/Ggb;
    :cond_2
    invoke-static {v1}, Lc8/Hgb;->getHttpDomin(Lc8/Ggb;)Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, "url":Ljava/lang/String;
    invoke-static {v1}, Lc8/Hgb;->expiresCookies(Lc8/Ggb;)V

    .line 129
    invoke-static {}, Lc8/Cgb;->getWebViewProxy()Lc8/tgb;

    move-result-object v15

    invoke-virtual {v1}, Lc8/Ggb;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v11, v0}, Lc8/tgb;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v15, v1, Lc8/Ggb;->domain:Ljava/lang/String;

    const-string/jumbo v16, ".taobao.com"

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 131
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 133
    .end local v1    # "cook":Lc8/Ggb;
    .end local v11    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 134
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 140
    .end local v2    # "cookie":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_3
    const/4 v9, 0x0

    .line 142
    .local v9, "ssoDomainList":[Ljava/lang/String;
    :try_start_1
    sget-object v12, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v12}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v12

    iget-object v12, v12, Lc8/Sgb;->otherInfo:Ljava/util/Map;

    if-eqz v12, :cond_4

    .line 143
    sget-object v12, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v12}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v12

    iget-object v12, v12, Lc8/Sgb;->otherInfo:Ljava/util/Map;

    const-string/jumbo v13, "ssoDomainList"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 144
    .local v6, "object":Ljava/lang/Object;
    if-eqz v6, :cond_4

    instance-of v12, v6, Ljava/util/ArrayList;

    if-eqz v12, :cond_4

    .line 145
    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0

    .line 147
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "object":Ljava/lang/Object;
    :cond_4
    :goto_2
    if-eqz v9, :cond_7

    array-length v12, v9

    if-lez v12, :cond_7

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 156
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Ggb;

    .line 158
    .local v2, "cookie":Lc8/Ggb;
    iget-object v7, v2, Lc8/Ggb;->domain:Ljava/lang/String;

    .line 159
    .local v7, "originDomain":Ljava/lang/String;
    array-length v14, v9

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v14, :cond_6

    aget-object v8, v9, v12

    .line 160
    .local v8, "ssoDomain":Ljava/lang/String;
    const-string/jumbo v15, "munb"

    iget-object v0, v2, Lc8/Ggb;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 161
    iput-object v8, v2, Lc8/Ggb;->domain:Ljava/lang/String;

    .line 162
    invoke-static {v2}, Lc8/Hgb;->getHttpDomin(Lc8/Ggb;)Ljava/lang/String;

    move-result-object v11

    .line 164
    .restart local v11    # "url":Ljava/lang/String;
    invoke-static {v2}, Lc8/Hgb;->expiresCookies(Lc8/Ggb;)V

    .line 165
    invoke-static {}, Lc8/Cgb;->getWebViewProxy()Lc8/tgb;

    move-result-object v15

    invoke-virtual {v2}, Lc8/Ggb;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v11, v0}, Lc8/tgb;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v11    # "url":Ljava/lang/String;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 151
    .end local v2    # "cookie":Lc8/Ggb;
    .end local v7    # "originDomain":Ljava/lang/String;
    .end local v8    # "ssoDomain":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 152
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 168
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "cookie":Lc8/Ggb;
    .restart local v7    # "originDomain":Ljava/lang/String;
    :cond_6
    iput-object v7, v2, Lc8/Ggb;->domain:Ljava/lang/String;

    goto :goto_3

    .line 172
    .end local v2    # "cookie":Lc8/Ggb;
    .end local v7    # "originDomain":Ljava/lang/String;
    :cond_7
    sget-object v12, Lc8/Dgb;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "injectCookie cookies is null"

    invoke-static {v12, v13}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/Dgb;->mCookies:[Ljava/lang/String;

    .line 177
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "cookies"

    const-string/jumbo v14, ""

    invoke-static {v12, v13, v14}, Lc8/Thb;->writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v9    # "ssoDomainList":[Ljava/lang/String;
    .end local v10    # "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/cookies/LoginCookie;>;"
    :cond_8
    const-string/jumbo v12, "clearCookies"

    const-string/jumbo v13, "into clearCookies reset cookie finish"

    invoke-static {v12, v13}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lc8/Cgb;->getWebViewProxy()Lc8/tgb;

    move-result-object v12

    invoke-interface {v12}, Lc8/tgb;->removeExpiredCookie()V

    .line 181
    const-string/jumbo v12, "clearCookies"

    const-string/jumbo v13, "into clearCookies removeExpiredCookie finish"

    invoke-static {v12, v13}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lc8/Cgb;->getWebViewProxy()Lc8/tgb;

    move-result-object v12

    invoke-interface {v12}, Lc8/tgb;->flush()V

    .line 183
    const-string/jumbo v12, "clearCookies"

    const-string/jumbo v13, "into clearCookies  finish"

    invoke-static {v12, v13}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public declared-synchronized injectCookie([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "cookies"    # [Ljava/lang/String;
    .param p2, "ssoDomainList"    # [Ljava/lang/String;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iput-object v0, p0, Lc8/Dgb;->mCookies:[Ljava/lang/String;

    .line 51
    sget-object v9, Lc8/Bgb;->context:Landroid/content/Context;

    if-eqz v9, :cond_4

    .line 52
    if-eqz p1, :cond_5

    .line 53
    sget-object v9, Lc8/Dgb;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "injectCookie cookies != null"

    invoke-static {v9, v10}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v7, "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/cookies/LoginCookie;>;"
    move-object/from16 v0, p1

    array-length v10, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v2, p1, v9

    .line 56
    .local v2, "cookie":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_0

    .line 58
    :try_start_1
    invoke-static {v2}, Lc8/Hgb;->parseCookie(Ljava/lang/String;)Lc8/Ggb;

    move-result-object v1

    .line 59
    .local v1, "cook":Lc8/Ggb;
    invoke-static {v1}, Lc8/Hgb;->getHttpDomin(Lc8/Ggb;)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "url":Ljava/lang/String;
    invoke-virtual {v1}, Lc8/Ggb;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "cookieStr":Ljava/lang/String;
    sget-object v11, Lc8/Dgb;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "add cookie: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lc8/Cgb;->getWebViewProxy()Lc8/tgb;

    move-result-object v11

    invoke-interface {v11, v8, v3}, Lc8/tgb;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v11, v1, Lc8/Ggb;->domain:Ljava/lang/String;

    const-string/jumbo v12, ".taobao.com"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 65
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .end local v1    # "cook":Lc8/Ggb;
    .end local v3    # "cookieStr":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v4

    .line 68
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 50
    .end local v2    # "cookie":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v7    # "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/cookies/LoginCookie;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 74
    .restart local v7    # "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/cookies/LoginCookie;>;"
    :cond_1
    if-eqz p2, :cond_3

    :try_start_3
    move-object/from16 v0, p2

    array-length v9, v0

    if-lez v9, :cond_3

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 75
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Ggb;

    .line 77
    .local v2, "cookie":Lc8/Ggb;
    iget-object v5, v2, Lc8/Ggb;->domain:Ljava/lang/String;

    .line 78
    .local v5, "originDomain":Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v11, v0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_2

    aget-object v6, p2, v9

    .line 79
    .local v6, "ssoDomain":Ljava/lang/String;
    iput-object v6, v2, Lc8/Ggb;->domain:Ljava/lang/String;

    .line 80
    invoke-static {v2}, Lc8/Hgb;->getHttpDomin(Lc8/Ggb;)Ljava/lang/String;

    move-result-object v8

    .line 82
    .restart local v8    # "url":Ljava/lang/String;
    invoke-virtual {v2}, Lc8/Ggb;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .restart local v3    # "cookieStr":Ljava/lang/String;
    sget-object v12, Lc8/Dgb;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "add cookies to domain:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", cookie = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lc8/Cgb;->getWebViewProxy()Lc8/tgb;

    move-result-object v12

    invoke-interface {v12, v8, v3}, Lc8/tgb;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 87
    .end local v3    # "cookieStr":Ljava/lang/String;
    .end local v6    # "ssoDomain":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_2
    iput-object v5, v2, Lc8/Ggb;->domain:Ljava/lang/String;

    goto :goto_2

    .line 91
    .end local v2    # "cookie":Lc8/Ggb;
    .end local v5    # "originDomain":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lc8/Cgb;->getWebViewProxy()Lc8/tgb;

    move-result-object v9

    invoke-interface {v9}, Lc8/tgb;->flush()V

    .line 94
    iget-object v9, p0, Lc8/Dgb;->mCookies:[Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 95
    sget-object v9, Lc8/Bgb;->context:Landroid/content/Context;

    const-string/jumbo v10, "cookies"

    const-string/jumbo v11, "\u0005"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lc8/Thb;->writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    .end local v7    # "taobaoCookies":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/cookies/LoginCookie;>;"
    :cond_4
    :goto_4
    monitor-exit p0

    return-void

    .line 98
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lc8/Dgb;->clearCookies()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method public declared-synchronized refreshCookie()V
    .locals 4

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/Dgb;->mCookies:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 29
    :try_start_1
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "cookies"

    invoke-static {v1, v2}, Lc8/Thb;->readFileData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "cookieData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    sget-object v1, Lc8/Dgb;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get cookie from storage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v1, "\u0005"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/Dgb;->mCookies:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .end local v0    # "cookieData":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lc8/Dgb;->mCookies:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lc8/Dgb;->mCookies:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lc8/Dgb;->injectCookie([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :cond_1
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
