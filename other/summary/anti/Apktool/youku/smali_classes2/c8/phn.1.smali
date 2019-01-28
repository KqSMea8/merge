.class public Lc8/phn;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lc8/lko;
.implements Lc8/qhn;


# static fields
.field public static final ACTION_YKLOGINOUT:Ljava/lang/String; = "yk_been_loginout_receiver"

.field private static sInstance:Lc8/phn;


# instance fields
.field public isSetSkipAdTip:Z

.field private mTags:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/phn;->mTags:Lorg/json/JSONObject;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/phn;->isSetSkipAdTip:Z

    return-void
.end method

.method static synthetic access$002(Lc8/phn;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lc8/phn;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    iput-object p1, p0, Lc8/phn;->mTags:Lorg/json/JSONObject;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lc8/phn;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lc8/phn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/phn;->sInstance:Lc8/phn;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lc8/phn;

    invoke-direct {v0}, Lc8/phn;-><init>()V

    sput-object v0, Lc8/phn;->sInstance:Lc8/phn;

    .line 46
    :cond_0
    sget-object v0, Lc8/phn;->sInstance:Lc8/phn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setMotuCrashReporterUserNick()V
    .locals 3

    .prologue
    .line 222
    :try_start_0
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v1

    const-string/jumbo v2, "userName"

    invoke-static {v2}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/XSb;->setUserNick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AccountManager"

    invoke-static {v1, v0}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private tipsChangeDigitNickName(Ljava/lang/String;)V
    .locals 1
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget v0, Lcom/youku/phone/R$string;->tips_change_digit_nick_name:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public getUserTags()V
    .locals 7

    .prologue
    .line 135
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v3

    .line 136
    .local v3, "isLogin":Z
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v4

    .line 137
    .local v4, "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "========getUserTags()=====isLogin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",userInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    if-eqz v3, :cond_0

    const-string/jumbo v2, "ytid"

    .line 139
    .local v2, "aUserIdType":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    const-string/jumbo v5, "userNumberId"

    invoke-static {v5}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "aUserId":Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "20170515REQ0001"

    .line 141
    .local v0, "aReqId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "========getUserTags()=====aUserIdType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",aUserId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    new-instance v5, Lc8/ohn;

    invoke-direct {v5, p0}, Lc8/ohn;-><init>(Lc8/phn;)V

    invoke-static {v5, v2, v1, v0}, Lc8/Gko;->getUserTags(Lc8/Mko;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 138
    .end local v0    # "aReqId":Ljava/lang/String;
    .end local v1    # "aUserId":Ljava/lang/String;
    .end local v2    # "aUserIdType":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "utdid"

    goto :goto_0

    .line 139
    .restart local v2    # "aUserIdType":Ljava/lang/String;
    :cond_1
    iget-object v1, v4, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {}, Lc8/bzo;->getUtdid()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public isSetSkipAdTip()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lc8/phn;->isSetSkipAdTip:Z

    return v0
.end method

.method public loginOut()V
    .locals 3

    .prologue
    .line 101
    const-class v2, Lc8/fhn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/fhn;

    .line 102
    .local v1, "iLogin":Lc8/fhn;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {v1, v0}, Lc8/fhn;->logout(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public loginSuccess()V
    .locals 5

    .prologue
    .line 60
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    .line 61
    .local v0, "passportServiceManager":Lc8/thn;
    invoke-virtual {v0}, Lc8/thn;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {v0}, Lc8/thn;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v1

    .line 63
    .local v1, "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    if-eqz v1, :cond_0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "====userInfo===avatarUrl==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "===email==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "===mobileNumber==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mMobile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "===mNickName==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "==mUid==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "==userNumberId==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "==mRegion==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "===mUserName=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "====mYid======"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mYid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    iget-object v2, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    :goto_0
    sput-object v2, Lc8/VLj;->userName:Ljava/lang/String;

    .line 68
    iget-object v2, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    sput-object v2, Lc8/VLj;->loginAccount:Ljava/lang/String;

    .line 69
    const-string/jumbo v2, "uid"

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v2, "userNumberId"

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mYid:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v2, "userIcon"

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v2, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lc8/phn;->tipsChangeDigitNickName(Ljava/lang/String;)V

    .line 73
    iget-object v2, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mYid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lc8/phn;->uploadUTAnalyticsParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=====userInfo  sToken=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lc8/thn;->getSToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=====userInfo  yktk=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lc8/thn;->getPassportYKTK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    const-string/jumbo v2, "isLogined"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 78
    const-string/jumbo v2, "userName"

    sget-object v3, Lc8/VLj;->userName:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v2, "isNotAutoLogin"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 81
    invoke-virtual {v0}, Lc8/thn;->isLogin()Z

    move-result v2

    sput-boolean v2, Lc8/VLj;->isLogined:Z

    .line 82
    iget-object v2, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lc8/phn;->tipsChangeDigitNickName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lc8/thn;->isLogin()Z

    move-result v2

    invoke-static {v2}, Lc8/VLj;->setLogined(Z)V

    .line 84
    invoke-direct {p0}, Lc8/phn;->setMotuCrashReporterUserNick()V

    .line 85
    invoke-virtual {p0}, Lc8/phn;->updateVipStatus()V

    .line 87
    const-string/jumbo v2, "YKLogin.loginSuccess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "login_success_cookie:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lc8/thn;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v2, Lc8/VLj;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.youku.action.LOGIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    .end local v1    # "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    :cond_1
    return-void

    .line 67
    .restart local v1    # "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    :cond_2
    iget-object v2, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onCookieRefreshed(Ljava/lang/String;)V
    .locals 3
    .param p1, "aCookie"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cookie ======== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    sput-object p1, Lc8/oSh;->cookie:Ljava/lang/String;

    .line 125
    const-string/jumbo v0, "YKLogin.onCookieRefreshed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update_cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cookie = PassportManager.getInstance().getCookie()======="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/thn;->getCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    return-void
.end method

.method public onExpireLogout()V
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "YKLogin.AccountManager"

    const-string/jumbo v1, "onExpireLogout"

    invoke-static {v0, v1}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lc8/phn;->loginOut()V

    .line 110
    return-void
.end method

.method public onTokenRefreshed(Ljava/lang/String;)V
    .locals 2
    .param p1, "aSToken"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "=======sToken refresh called!==========sToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    return-void
.end method

.method public onUserLogin()V
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "YKLogin.AccountManager"

    const-string/jumbo v1, "onUserLogin"

    invoke-static {v0, v1}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lc8/phn;->loginSuccess()V

    .line 54
    return-void
.end method

.method public onUserLogout()V
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, "YKLogin.AccountManager"

    const-string/jumbo v1, "onUserLogout"

    invoke-static {v0, v1}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lc8/phn;->loginOut()V

    .line 96
    return-void
.end method

.method public setSkipAdTip()V
    .locals 3

    .prologue
    .line 173
    invoke-static {}, Lc8/phn;->getInstance()Lc8/phn;

    move-result-object v1

    iget-object v1, v1, Lc8/phn;->mTags:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    invoke-static {}, Lc8/Efh;->hasAlipayAdvMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "========getUserTags()=====title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v2, v2, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    iget-object v2, v2, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    invoke-static {}, Lc8/phn;->getInstance()Lc8/phn;

    move-result-object v1

    iget-object v1, v1, Lc8/phn;->mTags:Lorg/json/JSONObject;

    sget-object v2, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v2, v2, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    iget-object v2, v2, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "tagValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "========getUserTags()=====tagValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    const-string/jumbo v1, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "========getUserTags()=====content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v2, v2, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    iget-object v2, v2, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    const-string/jumbo v1, "adv_message"

    sget-object v2, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v2, v2, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    iget-object v2, v2, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->content:Ljava/lang/String;

    invoke-static {v1, v2}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/phn;->isSetSkipAdTip:Z

    .line 186
    :goto_0
    invoke-static {}, Lc8/phn;->getInstance()Lc8/phn;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lc8/phn;->mTags:Lorg/json/JSONObject;

    .line 188
    .end local v0    # "tagValue":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "========setSkipAdTip()=====isSetSkipAdTip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lc8/phn;->isSetSkipAdTip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    return-void

    .line 184
    .restart local v0    # "tagValue":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/phn;->isSetSkipAdTip:Z

    goto :goto_0
.end method

.method public setSkipAdTip(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lc8/phn;->isSetSkipAdTip:Z

    .line 169
    return-void
.end method

.method public updateVipStatus()V
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lc8/uAo;->isVip()Z

    move-result v0

    sput-boolean v0, Lc8/Dfh;->isVipUserTemp:Z

    .line 132
    return-void
.end method

.method public uploadUTAnalyticsParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userNameStrParameter"    # Ljava/lang/String;
    .param p2, "userNumberIdParameter"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, p1

    .line 201
    .local v0, "userNameStr":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, p2

    .line 203
    .local v1, "userNumberId":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/ut/mini/UTAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void

    .line 200
    .end local v0    # "userNameStr":Ljava/lang/String;
    .end local v1    # "userNumberId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "unknown_user"

    goto :goto_0

    .line 201
    .restart local v0    # "userNameStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1
.end method
