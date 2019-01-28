.class public Lc8/mko;
.super Ljava/lang/Object;
.source "LoginImpl.java"

# interfaces
.implements Lc8/kNf;


# static fields
.field private static final DATE_KEY:Ljava/lang/String; = "Date"

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "x-session-ret"


# instance fields
.field private mOnLoginListener:Lc8/oNf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p0}, Lc8/Gko;->setLoginImpl(Lc8/mko;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getLoginContext()Lc8/lNf;
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Lc8/Gko;->getSToken()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "sToken":Ljava/lang/String;
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    .line 82
    .local v2, "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 85
    :cond_1
    new-instance v0, Lc8/lNf;

    invoke-direct {v0}, Lc8/lNf;-><init>()V

    .line 86
    .local v0, "loginContext":Lc8/lNf;
    iput-object v1, v0, Lc8/lNf;->sid:Ljava/lang/String;

    .line 87
    iget-object v3, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    iput-object v3, v0, Lc8/lNf;->userId:Ljava/lang/String;

    .line 88
    iget-object v3, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    iput-object v3, v0, Lc8/lNf;->nickname:Ljava/lang/String;

    goto :goto_0
.end method

.method getOnLoginListener()Lc8/oNf;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc8/mko;->mOnLoginListener:Lc8/oNf;

    return-object v0
.end method

.method public isLogining()Z
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lc8/Gko;->isLogining()Z

    move-result v0

    return v0
.end method

.method public isSessionValid()Z
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v0

    return v0
.end method

.method public login(Lc8/oNf;Z)V
    .locals 2
    .param p1, "aOnLoginListener"    # Lc8/oNf;
    .param p2, "bShowLoginUI"    # Z

    .prologue
    .line 42
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {p1}, Lc8/oNf;->onLoginSuccess()V

    .line 45
    const-string/jumbo v0, "YKLogin.LoginImpl"

    const-string/jumbo v1, "mtop consider login after cookie error handled"

    invoke-static {v0, v1}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 48
    :cond_0
    if-eqz p2, :cond_2

    .line 49
    invoke-static {}, Lc8/Gko;->startLoginActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iput-object p1, p0, Lc8/mko;->mOnLoginListener:Lc8/oNf;

    .line 52
    const-string/jumbo v0, "YKLogin.LoginImpl"

    const-string/jumbo v1, "mtop login startLoginActivity success!"

    invoke-static {v0, v1}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {p1}, Lc8/oNf;->onLoginFail()V

    .line 56
    const-string/jumbo v0, "YKLogin.LoginImpl"

    const-string/jumbo v1, "mtop login startLoginActivity fail!"

    invoke-static {v0, v1}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {p1}, Lc8/oNf;->onLoginFail()V

    .line 60
    const-string/jumbo v0, "YKLogin.LoginImpl"

    const-string/jumbo v1, "mtop login bShowLoginUI is false"

    invoke-static {v0, v1}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setOnLoginListener(Lc8/oNf;)V
    .locals 0
    .param p1, "aListener"    # Lc8/oNf;

    .prologue
    .line 120
    iput-object p1, p0, Lc8/mko;->mOnLoginListener:Lc8/oNf;

    .line 121
    return-void
.end method

.method public setSessionInvalid(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "aBundle"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const-string/jumbo v7, "x-session-ret"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "str":Ljava/lang/String;
    const-string/jumbo v7, "Date"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "serverDate":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 100
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 101
    .local v2, "errorCode":I
    const-wide/16 v4, -0x1

    .line 102
    .local v4, "serverTime":J
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 103
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 107
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    invoke-static {v2, v4, v5}, Lc8/Gko;->handleCookieError(IJ)Z

    .line 108
    const-string/jumbo v7, "YKLogin.LoginImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mtop setSessionInvalid errorCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v2    # "errorCode":I
    .end local v4    # "serverTime":J
    :cond_1
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
