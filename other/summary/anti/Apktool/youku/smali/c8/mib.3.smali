.class public Lc8/mib;
.super Ljava/lang/Object;
.source "LoginServiceImpl.java"

# interfaces
.implements Lc8/hib;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/lib;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LoginServiceImpl"


# instance fields
.field private transient mLoginPatterns:[Ljava/util/regex/Pattern;

.field private transient mLogoutPatterns:[Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lc8/mib;Landroid/app/Activity;Lc8/xgb;)V
    .locals 0
    .param p0, "x0"    # Lc8/mib;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lc8/xgb;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lc8/mib;->goLogin(Landroid/app/Activity;Lc8/xgb;)V

    return-void
.end method

.method static synthetic access$100(Lc8/mib;Ljava/util/Map;Lc8/xgb;)V
    .locals 0
    .param p0, "x0"    # Lc8/mib;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Lc8/xgb;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lc8/mib;->goQrCodeLogin(Ljava/util/Map;Lc8/xgb;)V

    return-void
.end method

.method private autoLogin(Lc8/xgb;)V
    .locals 3
    .param p1, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 234
    sget-object v1, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v1}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v1

    iget-object v1, v1, Lc8/Sgb;->autoLoginToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lc8/whb;->INSTANCE:Lc8/whb;

    .line 235
    invoke-virtual {v1}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v1

    iget-object v1, v1, Lc8/Sgb;->user:Lc8/chb;

    if-eqz v1, :cond_1

    sget-object v1, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v1}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v1

    iget-object v1, v1, Lc8/Sgb;->user:Lc8/chb;

    iget-object v1, v1, Lc8/chb;->userId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    const-string/jumbo v1, "login"

    const-string/jumbo v2, "auth auto login"

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v0, Lc8/Hib;

    const/4 v1, 0x0

    new-instance v2, Lc8/kib;

    invoke-direct {v2, p0, p1}, Lc8/kib;-><init>(Lc8/mib;Lc8/xgb;)V

    invoke-direct {v0, v1, v2}, Lc8/Hib;-><init>(Landroid/app/Activity;Lc8/xgb;)V

    .line 258
    .local v0, "loginByReTokenTask":Lc8/Hib;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/Hib;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 264
    .end local v0    # "loginByReTokenTask":Lc8/Hib;
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    if-eqz p1, :cond_0

    .line 261
    const/4 v1, -0x1

    const-string/jumbo v2, ""

    invoke-interface {p1, v1, v2}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private goLogin(Landroid/app/Activity;Lc8/xgb;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 140
    const-string/jumbo v1, "login"

    const-string/jumbo v2, "auth goLogin"

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sput-object p2, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 144
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ali/auth/third/ui/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 145
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    const-class v1, Lcom/ali/auth/third/ui/LoginActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private goQrCodeLogin(Ljava/util/Map;Lc8/xgb;)V
    .locals 3
    .param p2, "loginCallback"    # Lc8/xgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/xgb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "login"

    const-string/jumbo v2, "goQrCodeLogin start"

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sput-object p2, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ali/auth/third/ui/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 226
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    const-string/jumbo v1, "login_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string/jumbo v2, "params"

    if-nez p1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void

    .line 228
    :cond_0
    invoke-static {p1}, Lc8/Vhb;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isAuthEnvironmentValid(Lc8/xgb;)Z
    .locals 5
    .param p1, "loginCallback"    # Lc8/xgb;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    invoke-static {}, Lc8/Bgb;->checkServiceValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    const-string/jumbo v1, "login"

    const-string/jumbo v3, "auth static field is null"

    invoke-static {v1, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    if-eqz p1, :cond_0

    .line 270
    const/16 v1, 0x2772

    const-string/jumbo v3, "NullPointException"

    invoke-interface {p1, v1, v3}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    :cond_0
    move v1, v2

    .line 291
    :goto_0
    return v1

    .line 275
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v0, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "withNoActivity"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-class v1, Lc8/vhb;

    invoke-static {v1}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vhb;

    const-string/jumbo v4, "auth"

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-static {v2, v3}, Lc8/Pib;->compareAndSetLogining(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 282
    const-string/jumbo v1, "login"

    const-string/jumbo v3, "auth sdk is Logining, return"

    invoke-static {v1, v3}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 283
    goto :goto_0

    .line 285
    :cond_2
    invoke-static {}, Lc8/Shb;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 286
    const-string/jumbo v1, "login"

    const-string/jumbo v3, "auth network not available"

    invoke-static {v1, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/16 v1, 0x2773

    const-string/jumbo v3, "com_taobao_tae_sdk_network_not_available_message"

    invoke-static {v3}, Lc8/Yhb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 288
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    move v1, v2

    .line 289
    goto :goto_0

    :cond_3
    move v1, v3

    .line 291
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public auth(Landroid/app/Activity;Lc8/xgb;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 101
    const-string/jumbo v0, "login"

    const-string/jumbo v1, "auth start"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p2}, Lc8/mib;->isAuthEnvironmentValid(Lc8/xgb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const-string/jumbo v0, "login"

    const-string/jumbo v1, "AutnEnvriment invalid"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Lc8/iib;

    invoke-direct {v0, p0, p2, p1}, Lc8/iib;-><init>(Lc8/mib;Lc8/xgb;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lc8/mib;->autoLogin(Lc8/xgb;)V

    goto :goto_0
.end method

.method public auth(Lc8/xgb;)V
    .locals 1
    .param p1, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lc8/mib;->auth(Landroid/app/Activity;Lc8/xgb;)V

    .line 125
    return-void
.end method

.method public checkSessionValid()Z
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v0}, Lc8/rhb;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public getSession()Lc8/ahb;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v0}, Lc8/rhb;->getSession()Lc8/ahb;

    move-result-object v0

    return-object v0
.end method

.method public isLoginUrl(Ljava/lang/String;)Z
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v5, 0x0

    .line 46
    .local v5, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v5

    .line 66
    .end local v5    # "result":Z
    .local v6, "result":I
    :goto_0
    return v6

    .line 50
    .end local v6    # "result":I
    .restart local v5    # "result":Z
    :cond_0
    iget-object v7, p0, Lc8/mib;->mLoginPatterns:[Ljava/util/regex/Pattern;

    if-nez v7, :cond_1

    sget-object v7, Lc8/zgb;->LOGIN_URLS:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 51
    sget-object v7, Lc8/zgb;->LOGIN_URLS:Ljava/lang/String;

    const-string/jumbo v8, "[,]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "loginUrls":[Ljava/lang/String;
    array-length v7, v2

    new-array v7, v7, [Ljava/util/regex/Pattern;

    iput-object v7, p0, Lc8/mib;->mLoginPatterns:[Ljava/util/regex/Pattern;

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v7, p0, Lc8/mib;->mLoginPatterns:[Ljava/util/regex/Pattern;

    array-length v1, v7

    .local v1, "length":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 54
    iget-object v7, p0, Lc8/mib;->mLoginPatterns:[Ljava/util/regex/Pattern;

    aget-object v8, v2, v0

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    aput-object v8, v7, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "loginUrls":[Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lc8/mib;->mLoginPatterns:[Ljava/util/regex/Pattern;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_3

    aget-object v4, v8, v7

    .line 59
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 60
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 61
    const/4 v5, 0x1

    move v6, v5

    .line 62
    .restart local v6    # "result":I
    goto :goto_0

    .line 58
    .end local v6    # "result":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    :cond_3
    move v6, v5

    .line 66
    .restart local v6    # "result":I
    goto :goto_0
.end method

.method public isLogoutUrl(Ljava/lang/String;)Z
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v5

    .line 75
    :cond_1
    iget-object v6, p0, Lc8/mib;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    if-nez v6, :cond_2

    sget-object v6, Lc8/zgb;->LOGOUT_URLS:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 76
    sget-object v6, Lc8/zgb;->LOGOUT_URLS:Ljava/lang/String;

    const-string/jumbo v7, "[,]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "logoutUrls":[Ljava/lang/String;
    array-length v6, v2

    new-array v6, v6, [Ljava/util/regex/Pattern;

    iput-object v6, p0, Lc8/mib;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v6, p0, Lc8/mib;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    array-length v1, v6

    .local v1, "length":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 79
    iget-object v6, p0, Lc8/mib;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    aget-object v7, v2, v0

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    aput-object v7, v6, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "logoutUrls":[Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lc8/mib;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    array-length v8, v7

    move v6, v5

    :goto_2
    if-ge v6, v8, :cond_0

    aget-object v4, v7, v6

    .line 83
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 84
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 85
    const/4 v5, 0x1

    goto :goto_0

    .line 82
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public logout(Landroid/app/Activity;Lc8/qib;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "logoutCallback"    # Lc8/qib;

    .prologue
    .line 94
    const-class v0, Lc8/vhb;

    invoke-static {v0}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vhb;

    const-string/jumbo v1, "logout"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    new-instance v0, Lc8/Kib;

    invoke-direct {v0, p1, p2}, Lc8/Kib;-><init>(Landroid/app/Activity;Lc8/qib;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lc8/Kib;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method public logout(Lc8/qib;)V
    .locals 3
    .param p1, "logoutCallback"    # Lc8/qib;

    .prologue
    .line 130
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v0, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "withNoActivity"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-class v1, Lc8/vhb;

    invoke-static {v1}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vhb;

    const-string/jumbo v2, "logout"

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lc8/mib;->logout(Landroid/app/Activity;Lc8/qib;)V

    .line 137
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public refreshCookie(Lc8/ugb;)V
    .locals 3
    .param p1, "callback"    # Lc8/ugb;

    .prologue
    .line 168
    new-instance v0, Lc8/lib;

    invoke-direct {v0, p0, p1}, Lc8/lib;-><init>(Lc8/mib;Lc8/ugb;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lc8/lib;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    return-void
.end method

.method public setLoginCallback(Lc8/xgb;)V
    .locals 0
    .param p1, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 173
    sput-object p1, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    .line 174
    return-void
.end method

.method public setWebViewProxy(Lc8/tgb;)V
    .locals 0
    .param p1, "webViewProxy"    # Lc8/tgb;

    .prologue
    .line 178
    sput-object p1, Lc8/Bgb;->mWebViewProxy:Lc8/tgb;

    .line 179
    return-void
.end method

.method public showQrCodeLogin(Ljava/util/Map;Lc8/xgb;)V
    .locals 1
    .param p2, "loginCallback"    # Lc8/xgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/xgb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lc8/mib;->isAuthEnvironmentValid(Lc8/xgb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v0, Lc8/jib;

    invoke-direct {v0, p0, p2, p1}, Lc8/jib;-><init>(Lc8/mib;Lc8/xgb;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lc8/mib;->autoLogin(Lc8/xgb;)V

    goto :goto_0
.end method
