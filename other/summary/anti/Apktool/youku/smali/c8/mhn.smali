.class public Lc8/mhn;
.super Lc8/ihn;
.source "LoginManagerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginManager"


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lc8/ihn;-><init>()V

    .line 31
    return-void
.end method

.method private updatePassportCookie()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 189
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    .line 190
    .local v0, "passportServiceManager":Lc8/thn;
    invoke-virtual {v0}, Lc8/thn;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v1

    .line 191
    .local v1, "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    const-string/jumbo v2, "YKLogin.LoginManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePassportCookie cookie:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 192
    invoke-virtual {v0}, Lc8/thn;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-static {v2, v3}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lc8/thn;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "===========passportServiceManager.getCookie()============"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    invoke-virtual {v0}, Lc8/thn;->getCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    const-string/jumbo v2, "isNotAutoLogin"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 198
    const-string/jumbo v2, "isLogined"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v2

    invoke-virtual {v2}, Lc8/thn;->isLogin()Z

    move-result v2

    sput-boolean v2, Lc8/VLj;->isLogined:Z

    .line 200
    if-eqz v1, :cond_0

    .line 201
    const-string/jumbo v2, "uid"

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v2, "userNumberId"

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mYid:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v2, "userIcon"

    iget-object v3, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v2, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    sput-object v2, Lc8/VLj;->userName:Ljava/lang/String;

    .line 205
    iget-object v2, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    sput-object v2, Lc8/VLj;->uid:Ljava/lang/String;

    .line 208
    :cond_0
    invoke-static {}, Lc8/phn;->getInstance()Lc8/phn;

    move-result-object v2

    const-string/jumbo v3, "userName"

    invoke-static {v3}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "userNumberId"

    .line 209
    invoke-static {v4}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-virtual {v2, v3, v4}, Lc8/phn;->uploadUTAnalyticsParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lc8/mhn;->updateVipStatus()V

    .line 212
    const-string/jumbo v2, "YKLogin.updatePassportCookie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update_cookie:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 213
    invoke-virtual {v0}, Lc8/thn;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {v2, v3}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v2, Lc8/VLj;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.youku.action.LOGIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "isAutoLogin"

    .line 215
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    .line 214
    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    :cond_1
    return-void
.end method

.method private updateVipStatus()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lc8/lhn;

    invoke-direct {v0, p0}, Lc8/lhn;-><init>(Lc8/mhn;)V

    invoke-static {v0}, Lc8/uAo;->isVip(Lc8/kAo;)V

    .line 231
    return-void
.end method


# virtual methods
.method public autoLogin()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lc8/mhn;->updatePassportCookie()V

    .line 184
    return-void
.end method

.method public autoLogout()V
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thn;->loginOut()V

    .line 177
    return-void
.end method

.method public goLogin(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lc8/mhn;->goLogin(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public goLogin(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "from"    # I

    .prologue
    .line 47
    const/16 v0, 0x1f4

    invoke-static {v0}, Lc8/Iin;->checkClickEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/thn;->startLoginActivity(Landroid/content/Context;I)V

    .line 50
    :cond_0
    return-void
.end method

.method public goLogin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tips"    # Ljava/lang/String;

    .prologue
    .line 40
    const/16 v0, 0x1f4

    invoke-static {v0}, Lc8/Iin;->checkClickEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/thn;->startLoginActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method public goLoginForResult(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 54
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lc8/mhn;->goLoginForResult(Landroid/app/Activity;ILjava/lang/String;)V

    .line 55
    return-void
.end method

.method public goLoginForResult(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "tips"    # Ljava/lang/String;

    .prologue
    .line 59
    const/16 v0, 0x1f4

    invoke-static {v0}, Lc8/Iin;->checkClickEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/thn;->startLoginActivityForResult(Landroid/app/Activity;I)V

    .line 62
    :cond_0
    return-void
.end method

.method public goLoginForResult(Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lc8/mhn;->goLoginForResult(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    .line 68
    return-void
.end method

.method public goLoginForResult(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I
    .param p3, "tips"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    const/16 v0, 0x1f4

    invoke-static {v0}, Lc8/Iin;->checkClickEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lc8/thn;->startLoginActivityForResult(Landroid/app/Activity;I)V

    .line 76
    :cond_0
    return-void
.end method

.method public launchLogoutDialog(Landroid/app/Activity;Lc8/ehn;)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "c"    # Lc8/ehn;

    .prologue
    .line 109
    new-instance v0, Lc8/Cbp;

    sget-object v1, Lcom/youku/widget/YoukuDialog$TYPE;->normal:Lcom/youku/widget/YoukuDialog$TYPE;

    invoke-direct {v0, p1, v1}, Lc8/Cbp;-><init>(Landroid/app/Activity;Lcom/youku/widget/YoukuDialog$TYPE;)V

    .line 110
    .local v0, "d":Lc8/Cbp;
    sget v1, Lcom/youku/phone/R$string;->cancel:I

    new-instance v2, Lc8/jhn;

    invoke-direct {v2, p0, v0, p2}, Lc8/jhn;-><init>(Lc8/mhn;Lc8/Cbp;Lc8/ehn;)V

    invoke-virtual {v0, v1, v2}, Lc8/Cbp;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 118
    sget v1, Lcom/youku/phone/R$string;->confirm:I

    new-instance v2, Lc8/khn;

    invoke-direct {v2, p0, v0, p2}, Lc8/khn;-><init>(Lc8/mhn;Lc8/Cbp;Lc8/ehn;)V

    invoke-virtual {v0, v1, v2}, Lc8/Cbp;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 128
    sget v1, Lcom/youku/phone/R$string;->mycenter_logout_tip:I

    invoke-virtual {v0, v1}, Lc8/Cbp;->setMessage(I)V

    .line 129
    sget v1, Lcom/youku/phone/R$string;->logout:I

    invoke-virtual {v0, v1}, Lc8/Cbp;->setTitle(I)V

    .line 130
    invoke-virtual {v0}, Lc8/Cbp;->show()V

    .line 131
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Lc8/ehn;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "call"    # Lc8/ehn;

    .prologue
    .line 81
    return-void
.end method

.method public loginBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/ehn;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "bind_third_account"    # Ljava/lang/String;
    .param p4, "app"    # Ljava/lang/String;
    .param p5, "tuid"    # Ljava/lang/String;
    .param p6, "call"    # Lc8/ehn;

    .prologue
    .line 87
    return-void
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lc8/mhn;->autoLogout()V

    .line 136
    return-void
.end method

.method public logout(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 141
    sget v3, Lcom/youku/phone/R$string;->tips_logout:I

    invoke-static {v3}, Lc8/bzo;->showTips(I)V

    .line 142
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v3

    invoke-virtual {v3}, Lc8/thn;->isLogin()Z

    move-result v3

    sput-boolean v3, Lc8/VLj;->isLogined:Z

    .line 143
    const-string/jumbo v3, ""

    sput-object v3, Lc8/VLj;->userName:Ljava/lang/String;

    .line 144
    sput-boolean v5, Lc8/Dfh;->isVipUserTemp:Z

    .line 145
    invoke-static {}, Lc8/phn;->getInstance()Lc8/phn;

    move-result-object v3

    invoke-virtual {v3}, Lc8/phn;->isSetSkipAdTip()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-static {}, Lc8/phn;->getInstance()Lc8/phn;

    move-result-object v3

    invoke-virtual {v3, v5}, Lc8/phn;->setSkipAdTip(Z)V

    .line 147
    const-string/jumbo v3, "adv_message"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-static {}, Lc8/Gko;->getCookie()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Lc8/bzo;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "_cookie":Ljava/lang/String;
    const-string/jumbo v3, "userNumberId"

    invoke-static {v3}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "uid":Ljava/lang/String;
    const-string/jumbo v3, "LOGOUT_TLSITE"

    invoke-static {v3}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "tlsite":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 153
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 155
    .restart local p1    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v3, "LOGOUT_UID"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v3, "LOGOUT_COOKIE"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v3, "LOGOUT_TLSITE"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v3, "isNotAutoLogin"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 160
    const-string/jumbo v3, "isLogined"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 161
    const-string/jumbo v3, "uploadAccessToken"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v3, "uploadRefreshToken"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v3, "uid"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v3, "userNumberId"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v3, "userIcon"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v3, "LOGOUT_TLSITE"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v3, ""

    invoke-static {v3}, Lc8/VLj;->saveCookie(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lc8/VLj;->clear()V

    .line 170
    const-string/jumbo v3, "YKLogin.LoginManagerImpl"

    const-string/jumbo v4, "logout(bundler)"

    invoke-static {v3, v4}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v3, Lc8/VLj;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.youku.action.LOGOUT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/ehn;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "call"    # Lc8/ehn;

    .prologue
    .line 92
    return-void
.end method

.method public registerPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/ehn;)V
    .locals 0
    .param p1, "mobileStr"    # Ljava/lang/String;
    .param p2, "codeStr"    # Ljava/lang/String;
    .param p3, "passwordStr"    # Ljava/lang/String;
    .param p4, "call"    # Lc8/ehn;

    .prologue
    .line 98
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 235
    iput-object p1, p0, Lc8/mhn;->context:Landroid/content/Context;

    .line 236
    return-void
.end method

.method public startAuthActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aShortUrl"    # Ljava/lang/String;
    .param p3, "aAuthCode"    # Ljava/lang/String;
    .param p4, "aAuthUrl"    # Ljava/lang/String;

    .prologue
    .line 102
    const/16 v0, 0x1f4

    invoke-static {v0}, Lc8/Iin;->checkClickEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/thn;->startAuthActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method
