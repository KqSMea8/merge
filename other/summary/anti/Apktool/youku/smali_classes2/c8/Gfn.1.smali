.class public Lc8/Gfn;
.super Ljava/lang/Object;
.source "CredentialProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ffn;
    }
.end annotation


# static fields
.field static final INSTANCE:Lc8/Gfn;

.field static final TAG:Ljava/lang/String; = "Download.Credential"


# instance fields
.field initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mRemote:Lc8/uen;

.field private tokenSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lc8/Gfn;

    invoke-direct {v0}, Lc8/Gfn;-><init>()V

    sput-object v0, Lc8/Gfn;->INSTANCE:Lc8/Gfn;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/Gfn;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    return-void
.end method

.method public static getInstance()Lc8/Gfn;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lc8/Gfn;->INSTANCE:Lc8/Gfn;

    return-object v0
.end method


# virtual methods
.method public get()Lc8/Ffn;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 54
    new-instance v1, Lc8/Ffn;

    invoke-direct {v1}, Lc8/Ffn;-><init>()V

    .line 55
    .local v1, "cred":Lc8/Ffn;
    const-string/jumbo v2, ""

    .line 56
    .local v2, "stoken":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 58
    .local v0, "cookie":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lc8/Gfn;->mRemote:Lc8/uen;

    invoke-interface {v4}, Lc8/uen;->getSToken()Ljava/lang/String;

    move-result-object v2

    .line 59
    iget-object v4, p0, Lc8/Gfn;->mRemote:Lc8/uen;

    invoke-interface {v4}, Lc8/uen;->getCookie()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    const-string/jumbo v4, "callback"

    iput-object v4, v1, Lc8/Ffn;->source:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/Gfn;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lc8/Lfn;->usingPassportApi(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    invoke-virtual {p0}, Lc8/Gfn;->passportStoken()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p0}, Lc8/Gfn;->passportCookie()Ljava/lang/String;

    move-result-object v0

    .line 67
    iput-boolean v3, v1, Lc8/Ffn;->usingPsp:Z

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 69
    const-string/jumbo v4, "remote"

    iput-object v4, v1, Lc8/Ffn;->source:Ljava/lang/String;

    .line 72
    :cond_1
    iget-boolean v4, p0, Lc8/Gfn;->tokenSeen:Z

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    :goto_1
    iput-boolean v3, p0, Lc8/Gfn;->tokenSeen:Z

    .line 73
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 74
    const-string/jumbo v3, "private.credential.stoken.2"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lc8/Egn;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string/jumbo v3, "private.credential.cookie.2"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lc8/Egn;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 77
    const-string/jumbo v3, "listener"

    iput-object v3, v1, Lc8/Ffn;->source:Ljava/lang/String;

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "private.crendential.update.at"

    invoke-static {v4}, Lc8/Egn;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/Ffn;->tokenUpdateAt:Ljava/lang/String;

    .line 80
    :cond_3
    invoke-virtual {p0}, Lc8/Gfn;->pspConnectState()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/Ffn;->pspState:Ljava/lang/String;

    .line 82
    :cond_4
    iput-object v2, v1, Lc8/Ffn;->stoken:Ljava/lang/String;

    .line 83
    iput-object v0, v1, Lc8/Ffn;->cookie:Ljava/lang/String;

    .line 84
    return-object v1

    .line 72
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    const-string/jumbo v0, ""

    .line 217
    .local v0, "cookie":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lc8/Gfn;->mRemote:Lc8/uen;

    invoke-interface {v1}, Lc8/uen;->getCookie()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const-string/jumbo v1, "Credential: fallback to Passport API"

    invoke-static {v1}, Lc8/egn;->debug(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lc8/Gfn;->passportCookie()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string/jumbo v1, "Credential: fallback to pre-saved cookie"

    invoke-static {v1}, Lc8/egn;->debug(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v1, "private.credential.cookie"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lc8/Egn;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    :goto_1
    return-object v1

    .line 228
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    const-string/jumbo v1, "private.credential.cookie"

    invoke-static {v1, v0}, Lc8/Egn;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v1, v0

    .line 231
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSToken()Ljava/lang/String;
    .locals 5

    .prologue
    .line 182
    const-string/jumbo v1, ""

    .line 184
    .local v1, "stoken":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lc8/Gfn;->mRemote:Lc8/uen;

    invoke-interface {v2}, Lc8/uen;->getSToken()Ljava/lang/String;

    move-result-object v1

    .line 185
    const-string/jumbo v2, "Download.Credential"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "using remote callback to get stoken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    const-string/jumbo v2, "Credential: fallback to Passport API"

    invoke-static {v2}, Lc8/egn;->debug(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lc8/Gfn;->passportStoken()Ljava/lang/String;

    move-result-object v1

    .line 192
    const-string/jumbo v2, "Download.Credential"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "using passport service to get stoken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const-string/jumbo v2, "Credential: fallback to pre-saved stoken"

    invoke-static {v2}, Lc8/egn;->debug(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v2, "private.credential.stoken"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lc8/Egn;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    :goto_1
    return-object v2

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Download.Credential"

    const-string/jumbo v3, "error"

    invoke-static {v2, v3, v0}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    const-string/jumbo v2, "private.credential.stoken"

    invoke-static {v2, v1}, Lc8/Egn;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v2, v1

    .line 201
    goto :goto_1
.end method

.method public getYKTK()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    const-string/jumbo v0, ""

    .line 155
    .local v0, "yktk":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lc8/Gfn;->mRemote:Lc8/uen;

    invoke-interface {v1}, Lc8/uen;->getYKTK()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string/jumbo v1, "Credential: fallback to Passport API"

    invoke-static {v1}, Lc8/egn;->debug(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lc8/Gfn;->passportYktk()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const-string/jumbo v1, "Credential: fallback to pre-saved yktk"

    invoke-static {v1}, Lc8/egn;->debug(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v1, "private.credential.yktk"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lc8/Egn;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    :goto_1
    return-object v1

    .line 165
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    const-string/jumbo v1, "private.credential.yktk"

    invoke-static {v1, v0}, Lc8/Egn;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v1, v0

    .line 168
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lc8/uen;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lc8/uen;

    .prologue
    .line 110
    iput-object p1, p0, Lc8/Gfn;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lc8/Gfn;->mRemote:Lc8/uen;

    .line 112
    return-void
.end method

.method isOnlineMode(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const-string/jumbo v1, "eggDialog"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "eggApi"

    const-string/jumbo v2, "official"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "official"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method lazySetup()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lc8/Gfn;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lc8/Gfn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Lfn;->usingPassportApi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lc8/Gfn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/Gfn;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lc8/Gfn;->makeConfig(Landroid/content/Context;)Lcom/youku/usercenter/passport/remote/PassportConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc8/Gko;->init(Landroid/content/Context;Lcom/youku/usercenter/passport/remote/PassportConfig;Lc8/kko;)V

    .line 122
    :cond_0
    return-void
.end method

.method makeConfig(Landroid/content/Context;)Lcom/youku/usercenter/passport/remote/PassportConfig;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 125
    new-instance v0, Lcom/youku/usercenter/passport/remote/PassportConfig;

    invoke-direct {v0}, Lcom/youku/usercenter/passport/remote/PassportConfig;-><init>()V

    .line 126
    .local v0, "config":Lcom/youku/usercenter/passport/remote/PassportConfig;
    invoke-virtual {p0, p1}, Lc8/Gfn;->isOnlineMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mDebug:Z

    .line 127
    iget-boolean v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mDebug:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "20170313APP001251"

    :goto_1
    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAppId:Ljava/lang/String;

    .line 128
    iget-boolean v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mDebug:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "a396c82b3dd6b4d656fff373b348750a4530d09f77b5fab6"

    :goto_2
    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAppSecret:Ljava/lang/String;

    .line 129
    sget-object v1, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mPid:Ljava/lang/String;

    .line 130
    iput-boolean v2, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mQQLoginSupport:Z

    .line 131
    iput-boolean v2, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mMMLoginSupport:Z

    .line 132
    iput-boolean v2, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboLoginSupport:Z

    .line 133
    iput-boolean v2, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mTaobaoLoginSupport:Z

    .line 134
    iput-boolean v2, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAlipayLoginSupport:Z

    .line 135
    const-string/jumbo v1, "200004"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mQQAppId:Ljava/lang/String;

    .line 136
    const-string/jumbo v1, "wxa77232e51741dee3"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mMMAppId:Ljava/lang/String;

    .line 137
    const-string/jumbo v1, "3465353328"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboAppId:Ljava/lang/String;

    .line 138
    const-string/jumbo v1, "http://m.youku.com/ykhybrid/bind"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboRedirectUrl:Ljava/lang/String;

    .line 139
    const-string/jumbo v1, "2014120500018816"

    iput-object v1, v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAlipayAppId:Ljava/lang/String;

    .line 140
    return-object v0

    .line 126
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    :cond_1
    const-string/jumbo v1, "20161012APP000707"

    goto :goto_1

    .line 128
    :cond_2
    const-string/jumbo v1, "472631569a25c83b565629e357bcf02ebb2e7716e76aa06c"

    goto :goto_2
.end method

.method public observePassportChange(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    new-instance v0, Lc8/Efn;

    invoke-direct {v0, p0}, Lc8/Efn;-><init>(Lc8/Gfn;)V

    invoke-static {v0}, Lc8/Gko;->registerListener(Lc8/lko;)V

    .line 279
    return-void
.end method

.method passportCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lc8/Gfn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Lfn;->usingPassportApi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 211
    :goto_0
    return-object v0

    .line 207
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lc8/Gfn;->lazySetup()V

    .line 208
    invoke-static {}, Lc8/Gko;->getCookie()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method passportStoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lc8/Gfn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Lfn;->usingPassportApi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 178
    :goto_0
    return-object v0

    .line 174
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lc8/Gfn;->lazySetup()V

    .line 175
    invoke-static {}, Lc8/Gko;->getSToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method passportYktk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lc8/Gfn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Lfn;->usingPassportApi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 150
    :goto_0
    return-object v0

    .line 146
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lc8/Gfn;->lazySetup()V

    .line 147
    invoke-static {}, Lc8/Gko;->getYktk()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method pspConnectState()Ljava/lang/String;
    .locals 7

    .prologue
    .line 89
    :try_start_0
    const-class v2, Lc8/Gko;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 90
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lc8/Ipo;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 92
    const-class v2, Lc8/Gko;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 93
    const-string/jumbo v2, "false"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_1
    return-object v2

    .line 95
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    const-string/jumbo v2, "true"

    goto :goto_1

    .line 89
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_2
    const-string/jumbo v2, "na"

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
