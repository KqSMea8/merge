.class public Lc8/Ufb;
.super Ljava/lang/Object;
.source "AccountLinkServiceImpl.java"

# interfaces
.implements Lc8/Sfb;


# static fields
.field private static final TAG:Ljava/lang/String; = "bind"


# instance fields
.field private mBindCallback:Lc8/Wfb;

.field private transient mLoginPatterns:[Ljava/util/regex/Pattern;

.field private transient mLogoutPatterns:[Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/Ufb;)Lc8/Wfb;
    .locals 1
    .param p0, "x0"    # Lc8/Ufb;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/Ufb;->mBindCallback:Lc8/Wfb;

    return-object v0
.end method

.method private dispatchBindEvent(Lc8/xgb;)V
    .locals 3
    .param p1, "loginCallback"    # Lc8/xgb;

    .prologue
    const/4 v2, 0x0

    .line 145
    const-string/jumbo v0, "bind"

    const-string/jumbo v1, "dispatchBindEvent"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sput-boolean v2, Lc8/Zfb;->isBind:Z

    .line 147
    iget-object v0, p0, Lc8/Ufb;->mBindCallback:Lc8/Wfb;

    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v0, "bind"

    const-string/jumbo v1, "dispatchBindEvent mBindCallback not null"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lc8/Tfb;

    invoke-direct {v0, p0, p1}, Lc8/Tfb;-><init>(Lc8/Ufb;Lc8/xgb;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Object;

    .line 188
    invoke-virtual {v0, v1, v2}, Lc8/Tfb;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    sget-object v0, Lc8/Zfb;->loginService:Lc8/hib;

    invoke-interface {v0, p1}, Lc8/hib;->auth(Lc8/xgb;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lc8/xgb;)V
    .locals 6
    .param p1, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 100
    const-string/jumbo v2, "bind"

    const-string/jumbo v3, "bind start"

    invoke-static {v2, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lc8/Bgb;->checkServiceValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    const-string/jumbo v2, "bind"

    const-string/jumbo v3, "static field is null"

    invoke-static {v2, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz p1, :cond_0

    .line 104
    const/16 v2, 0x2772

    const-string/jumbo v3, "NullPointException"

    invoke-interface {p1, v2, v3}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-static {}, Lc8/Shb;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    const-string/jumbo v2, "bind"

    const-string/jumbo v3, "network not available"

    invoke-static {v2, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v2, 0x2773

    const-string/jumbo v3, "com_taobao_tae_sdk_network_not_available_message"

    invoke-static {v3}, Lc8/Yhb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 111
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    goto :goto_0

    .line 115
    :cond_2
    :try_start_0
    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;
    :try_end_0
    .catch Lcom/ali/auth/third/core/exception/SecRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    invoke-direct {p0, p1}, Lc8/Ufb;->dispatchBindEvent(Lc8/xgb;)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lcom/ali/auth/third/core/exception/SecRuntimeException;
    const-string/jumbo v2, "bind"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SecurityGuard error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ali/auth/third/core/exception/SecRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const/16 v2, 0x271a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/ali/auth/third/core/exception/SecRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/Wgb;->create(I[Ljava/lang/Object;)Lc8/Wgb;

    move-result-object v1

    .line 121
    .local v1, "resultCode":Lc8/Wgb;
    iget v2, v1, Lc8/Wgb;->code:I

    iget-object v3, v1, Lc8/Wgb;->message:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public bind(Lc8/xgb;Z)V
    .locals 1
    .param p1, "loginCallback"    # Lc8/xgb;
    .param p2, "onlyH5"    # Z

    .prologue
    .line 130
    if-eqz p2, :cond_0

    .line 131
    sget-object v0, Lcom/ali/auth/third/core/config/AuthOption;->H5ONLY:Lcom/ali/auth/third/core/config/AuthOption;

    sput-object v0, Lc8/Bgb;->sOneTimeAuthOption:Lcom/ali/auth/third/core/config/AuthOption;

    .line 135
    :goto_0
    invoke-virtual {p0, p1}, Lc8/Ufb;->bind(Lc8/xgb;)V

    .line 136
    return-void

    .line 133
    :cond_0
    sget-object v0, Lcom/ali/auth/third/core/config/AuthOption;->NORMAL:Lcom/ali/auth/third/core/config/AuthOption;

    sput-object v0, Lc8/Bgb;->sOneTimeAuthOption:Lcom/ali/auth/third/core/config/AuthOption;

    goto :goto_0
.end method

.method public getBindCallback()Lc8/Wfb;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lc8/Ufb;->mBindCallback:Lc8/Wfb;

    return-object v0
.end method

.method public isBind()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lc8/Zfb;->isBind:Z

    return v0
.end method

.method public isLoginUrl(Ljava/lang/String;)Z
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v5

    .line 41
    :cond_1
    iget-object v6, p0, Lc8/Ufb;->mLoginPatterns:[Ljava/util/regex/Pattern;

    if-nez v6, :cond_2

    sget-object v6, Lc8/zgb;->LOGIN_URLS:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 42
    sget-object v6, Lc8/zgb;->LOGIN_URLS:Ljava/lang/String;

    const-string/jumbo v7, "[,]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "loginUrls":[Ljava/lang/String;
    array-length v6, v2

    new-array v6, v6, [Ljava/util/regex/Pattern;

    iput-object v6, p0, Lc8/Ufb;->mLoginPatterns:[Ljava/util/regex/Pattern;

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v6, p0, Lc8/Ufb;->mLoginPatterns:[Ljava/util/regex/Pattern;

    array-length v1, v6

    .local v1, "length":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 45
    iget-object v6, p0, Lc8/Ufb;->mLoginPatterns:[Ljava/util/regex/Pattern;

    aget-object v7, v2, v0

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    aput-object v7, v6, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "loginUrls":[Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lc8/Ufb;->mLoginPatterns:[Ljava/util/regex/Pattern;

    array-length v8, v7

    move v6, v5

    :goto_2
    if-ge v6, v8, :cond_0

    aget-object v4, v7, v6

    .line 49
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 50
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 51
    const/4 v5, 0x1

    goto :goto_0

    .line 48
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public isLogoutUrl(Ljava/lang/String;)Z
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v5

    .line 64
    :cond_1
    iget-object v6, p0, Lc8/Ufb;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    if-nez v6, :cond_2

    sget-object v6, Lc8/zgb;->LOGOUT_URLS:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 65
    sget-object v6, Lc8/zgb;->LOGOUT_URLS:Ljava/lang/String;

    const-string/jumbo v7, "[,]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "logoutUrls":[Ljava/lang/String;
    array-length v6, v2

    new-array v6, v6, [Ljava/util/regex/Pattern;

    iput-object v6, p0, Lc8/Ufb;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v6, p0, Lc8/Ufb;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    array-length v1, v6

    .local v1, "length":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 68
    iget-object v6, p0, Lc8/Ufb;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    aget-object v7, v2, v0

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    aput-object v7, v6, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "logoutUrls":[Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lc8/Ufb;->mLogoutPatterns:[Ljava/util/regex/Pattern;

    array-length v8, v7

    move v6, v5

    :goto_2
    if-ge v6, v8, :cond_0

    aget-object v4, v7, v6

    .line 72
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 73
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 74
    const/4 v5, 0x1

    goto :goto_0

    .line 71
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public setBindCallback(Lc8/Wfb;)V
    .locals 0
    .param p1, "bindCallback"    # Lc8/Wfb;

    .prologue
    .line 83
    iput-object p1, p0, Lc8/Ufb;->mBindCallback:Lc8/Wfb;

    .line 84
    return-void
.end method

.method public unBind(Lc8/xgb;)V
    .locals 4
    .param p1, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 94
    sput-object p1, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->loginCallback:Lc8/xgb;

    .line 95
    sget-object v0, Lc8/Qfb;->INSTANCE:Lc8/Qfb;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3, p1}, Lc8/Qfb;->goBindTmpActivity(IILjava/lang/String;Lc8/xgb;)V

    .line 96
    return-void
.end method
