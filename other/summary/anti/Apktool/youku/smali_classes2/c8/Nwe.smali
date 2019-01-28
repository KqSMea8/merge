.class public Lc8/Nwe;
.super Ljava/lang/Object;
.source "BaseSsoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;
    }
.end annotation


# static fields
.field protected static final OAUTH2_BASE_URL:Ljava/lang/String; = "https://open.weibo.cn/oauth2/authorize?"


# instance fields
.field protected final SSO_TYPE_INVALID:I

.field protected authListener:Lc8/Qwe;

.field protected mAuthActivity:Landroid/app/Activity;

.field protected ssoRequestCode:I

.field protected ssoRequestType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Lc8/Nwe;->SSO_TYPE_INVALID:I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lc8/Nwe;->ssoRequestCode:I

    .line 43
    iput v1, p0, Lc8/Nwe;->ssoRequestType:I

    .line 51
    iput-object p1, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    .line 52
    iget-object v0, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v0}, Lc8/mye;->getInstance(Landroid/content/Context;)Lc8/mye;

    move-result-object v0

    invoke-static {}, Lc8/Bwe;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/mye;->aidTaskInit(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private authorize(ILc8/Qwe;Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "listener"    # Lc8/Qwe;
    .param p3, "authType"    # Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;

    .prologue
    .line 87
    invoke-virtual {p0}, Lc8/Nwe;->resetIntentFillData()V

    .line 88
    if-nez p2, :cond_0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "please set auth listener"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    iput-object p2, p0, Lc8/Nwe;->authListener:Lc8/Qwe;

    .line 92
    sget-object v1, Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;->WebOnly:Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;

    if-ne p3, v1, :cond_2

    .line 93
    if-eqz p2, :cond_1

    .line 94
    invoke-virtual {p0}, Lc8/Nwe;->startWebAuth()V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    const/4 v0, 0x0

    .line 99
    .local v0, "onlyClientSso":Z
    sget-object v1, Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;->SsoOnly:Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;

    if-ne p3, v1, :cond_3

    .line 100
    const/4 v0, 0x1

    .line 102
    :cond_3
    invoke-virtual {p0}, Lc8/Nwe;->isWbAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    invoke-virtual {p0, p1}, Lc8/Nwe;->startClientAuth(I)V

    goto :goto_0

    .line 105
    :cond_4
    if-eqz v0, :cond_5

    .line 106
    iget-object v1, p0, Lc8/Nwe;->authListener:Lc8/Qwe;

    new-instance v2, Lc8/Rwe;

    invoke-direct {v2}, Lc8/Rwe;-><init>()V

    invoke-interface {v1, v2}, Lc8/Qwe;->onFailure(Lc8/Rwe;)V

    goto :goto_0

    .line 108
    :cond_5
    invoke-virtual {p0}, Lc8/Nwe;->startWebAuth()V

    goto :goto_0
.end method


# virtual methods
.method public authorize(Lc8/Qwe;)V
    .locals 2
    .param p1, "listener"    # Lc8/Qwe;

    .prologue
    .line 61
    const v0, 0x80cd

    sget-object v1, Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;->ALL:Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;

    invoke-direct {p0, v0, p1, v1}, Lc8/Nwe;->authorize(ILc8/Qwe;Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;)V

    .line 62
    iget-object v0, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-static {}, Lc8/Bwe;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/fxe;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lc8/fxe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fxe;->activateApp()V

    .line 63
    return-void
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 211
    const v5, 0x80cd

    if-ne v5, p1, :cond_0

    .line 212
    const/4 v5, -0x1

    if-ne p2, v5, :cond_5

    .line 214
    iget-object v5, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    iget-object v6, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v6}, Lc8/Cwe;->getInstance(Landroid/content/Context;)Lc8/Cwe;

    move-result-object v6

    invoke-virtual {v6}, Lc8/Cwe;->getWbAppInfo()Lc8/Pwe;

    move-result-object v6

    invoke-static {v5, v6, p3}, Lc8/yye;->checkResponseAppLegal(Landroid/content/Context;Lc8/Pwe;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 215
    iget-object v5, p0, Lc8/Nwe;->authListener:Lc8/Qwe;

    new-instance v6, Lc8/Rwe;

    const-string/jumbo v7, "your install weibo app is counterfeit"

    const-string/jumbo v8, "8001"

    invoke-direct {v6, v7, v8}, Lc8/Rwe;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lc8/Qwe;->onFailure(Lc8/Rwe;)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const-string/jumbo v5, "error"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/Aye;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "error":Ljava/lang/String;
    const-string/jumbo v5, "error_type"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/Aye;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "error_type":Ljava/lang/String;
    const-string/jumbo v5, "error_description"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/Aye;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "error_description":Ljava/lang/String;
    const-string/jumbo v5, "WBAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", error_type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", error_description: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 223
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 226
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lc8/Owe;->parseAccessToken(Landroid/os/Bundle;)Lc8/Owe;

    move-result-object v0

    .line 227
    .local v0, "accessToken":Lc8/Owe;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/Owe;->isSessionValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    const-string/jumbo v5, "WBAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Login Success! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lc8/Owe;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v5, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v5, v0}, Lc8/Lwe;->writeAccessToken(Landroid/content/Context;Lc8/Owe;)V

    .line 230
    iget-object v5, p0, Lc8/Nwe;->authListener:Lc8/Qwe;

    invoke-interface {v5, v0}, Lc8/Qwe;->onSuccess(Lc8/Owe;)V

    goto/16 :goto_0

    .line 233
    .end local v0    # "accessToken":Lc8/Owe;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v5, "access_denied"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "OAuthAccessDeniedException"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 234
    :cond_3
    const-string/jumbo v5, "WBAgent"

    const-string/jumbo v6, "Login canceled by user."

    invoke-static {v5, v6}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v5, p0, Lc8/Nwe;->authListener:Lc8/Qwe;

    invoke-interface {v5}, Lc8/Qwe;->cancel()V

    goto/16 :goto_0

    .line 237
    :cond_4
    const-string/jumbo v5, "WBAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Login failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v5, p0, Lc8/Nwe;->authListener:Lc8/Qwe;

    new-instance v6, Lc8/Rwe;

    invoke-direct {v6, v4, v3}, Lc8/Rwe;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lc8/Qwe;->onFailure(Lc8/Rwe;)V

    goto/16 :goto_0

    .line 241
    .end local v2    # "error":Ljava/lang/String;
    .end local v3    # "error_description":Ljava/lang/String;
    .end local v4    # "error_type":Ljava/lang/String;
    :cond_5
    if-nez p2, :cond_0

    .line 242
    if-eqz p3, :cond_6

    .line 243
    iget-object v5, p0, Lc8/Nwe;->authListener:Lc8/Qwe;

    invoke-interface {v5}, Lc8/Qwe;->cancel()V

    goto/16 :goto_0

    .line 245
    :cond_6
    iget-object v5, p0, Lc8/Nwe;->authListener:Lc8/Qwe;

    invoke-interface {v5}, Lc8/Qwe;->cancel()V

    goto/16 :goto_0
.end method

.method public authorizeClientSso(Lc8/Qwe;)V
    .locals 2
    .param p1, "listener"    # Lc8/Qwe;

    .prologue
    .line 71
    const v0, 0x80cd

    sget-object v1, Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;->SsoOnly:Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;

    invoke-direct {p0, v0, p1, v1}, Lc8/Nwe;->authorize(ILc8/Qwe;Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;)V

    .line 72
    iget-object v0, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-static {}, Lc8/Bwe;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/fxe;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lc8/fxe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fxe;->activateApp()V

    .line 73
    return-void
.end method

.method public authorizeWeb(Lc8/Qwe;)V
    .locals 2
    .param p1, "listener"    # Lc8/Qwe;

    .prologue
    .line 81
    const v0, 0x80cd

    sget-object v1, Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;->WebOnly:Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;

    invoke-direct {p0, v0, p1, v1}, Lc8/Nwe;->authorize(ILc8/Qwe;Lcom/sina/weibo/sdk/auth/BaseSsoHandler$AuthType;)V

    .line 82
    iget-object v0, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-static {}, Lc8/Bwe;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/fxe;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lc8/fxe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fxe;->activateApp()V

    .line 83
    return-void
.end method

.method protected couldNotStartWbSsoActivity()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method protected fillExtraIntent(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 149
    return-void
.end method

.method protected isWbAppInstalled()Z
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v1}, Lc8/Cwe;->getInstance(Landroid/content/Context;)Lc8/Cwe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Cwe;->getWbAppInfo()Lc8/Pwe;

    move-result-object v0

    .line 257
    .local v0, "wbAppInfo":Lc8/Pwe;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/Pwe;->isLegal()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resetIntentFillData()V
    .locals 1

    .prologue
    .line 155
    const v0, 0x80cd

    iput v0, p0, Lc8/Nwe;->ssoRequestCode:I

    .line 156
    return-void
.end method

.method protected startClientAuth(I)V
    .locals 6
    .param p1, "requestCode"    # I

    .prologue
    .line 118
    :try_start_0
    iget-object v2, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v2}, Lc8/Cwe;->getInstance(Landroid/content/Context;)Lc8/Cwe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Cwe;->getWbAppInfo()Lc8/Pwe;

    move-result-object v1

    .line 119
    .local v1, "wbAppInfo":Lc8/Pwe;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Lc8/Pwe;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lc8/Pwe;->getAuthActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-static {}, Lc8/Bwe;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAuthBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    const-string/jumbo v2, "_weibo_command_type"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string/jumbo v2, "_weibo_transaction"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v2, "aid"

    iget-object v3, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-static {}, Lc8/Bwe;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Aye;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v2, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lc8/yye;->validateAppSignatureForIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "wbAppInfo":Lc8/Pwe;
    :goto_0
    return-void

    .line 129
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "wbAppInfo":Lc8/Pwe;
    :cond_0
    invoke-virtual {p0, v0, p1}, Lc8/Nwe;->fillExtraIntent(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :try_start_1
    iget-object v2, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    iget v3, p0, Lc8/Nwe;->ssoRequestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v2

    :try_start_2
    iget-object v2, p0, Lc8/Nwe;->authListener:Lc8/Qwe;

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lc8/Nwe;->authListener:Lc8/Qwe;

    new-instance v3, Lc8/Rwe;

    invoke-direct {v3}, Lc8/Rwe;-><init>()V

    invoke-interface {v2, v3}, Lc8/Qwe;->onFailure(Lc8/Rwe;)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Lc8/Nwe;->couldNotStartWbSsoActivity()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "wbAppInfo":Lc8/Pwe;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected startWebAuth()V
    .locals 13

    .prologue
    .line 161
    invoke-static {}, Lc8/Bwe;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v1

    .line 162
    .local v1, "authInfo":Lcom/sina/weibo/sdk/auth/AuthInfo;
    new-instance v11, Lc8/Fxe;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Lc8/Fxe;-><init>(Ljava/lang/String;)V

    .line 163
    .local v11, "requestParams":Lc8/Fxe;
    const-string/jumbo v2, "client_id"

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v2, "redirect_uri"

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v2, "scope"

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v2, "response_type"

    const-string/jumbo v4, "code"

    invoke-virtual {v11, v2, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v2, "version"

    const-string/jumbo v4, "0031405000"

    invoke-virtual {v11, v2, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v2, "luicode"

    const-string/jumbo v4, "10000360"

    invoke-virtual {v11, v2, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v2}, Lc8/Lwe;->readAccessToken(Landroid/content/Context;)Lc8/Owe;

    move-result-object v12

    .line 170
    .local v12, "token":Lc8/Owe;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lc8/Owe;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    const-string/jumbo v2, "trans_token"

    invoke-virtual {v12}, Lc8/Owe;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v2, "trans_access_token"

    invoke-virtual {v12}, Lc8/Owe;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    const-string/jumbo v2, "lfid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OP_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/Aye;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "aid":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    const-string/jumbo v2, "aid"

    invoke-virtual {v11, v2, v7}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    const-string/jumbo v2, "packagename"

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v2, "key_hash"

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getKeyHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://open.weibo.cn/oauth2/authorize?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lc8/Fxe;->encodeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "url":Ljava/lang/String;
    iget-object v2, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v2}, Lc8/sye;->hasInternetPermission(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    iget-object v2, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    const-string/jumbo v4, "Error"

    const-string/jumbo v6, "Application requires permission to access the Internet"

    invoke-static {v2, v4, v6}, Lc8/zye;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 185
    :cond_2
    const/4 v3, 0x0

    .line 187
    .local v3, "mAuthListenerKey":Ljava/lang/String;
    iget-object v2, p0, Lc8/Nwe;->authListener:Lc8/Qwe;

    if-eqz v2, :cond_3

    .line 189
    invoke-static {}, Lc8/Hye;->getInstance()Lc8/Hye;

    move-result-object v10

    .line 190
    .local v10, "manager":Lc8/Hye;
    invoke-virtual {v10}, Lc8/Hye;->genCallbackKey()Ljava/lang/String;

    move-result-object v3

    .line 191
    iget-object v2, p0, Lc8/Nwe;->authListener:Lc8/Qwe;

    invoke-virtual {v10, v3, v2}, Lc8/Hye;->setWeiboAuthListener(Ljava/lang/String;Lc8/Qwe;)V

    .line 193
    .end local v10    # "manager":Lc8/Hye;
    :cond_3
    new-instance v0, Lc8/Rye;

    sget-object v2, Lcom/sina/weibo/sdk/web/WebRequestType;->AUTH:Lcom/sina/weibo/sdk/web/WebRequestType;

    const-string/jumbo v4, "\u5fae\u535a\u767b\u5f55"

    iget-object v6, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-direct/range {v0 .. v6}, Lc8/Rye;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 194
    .local v0, "param":Lc8/Rye;
    new-instance v9, Landroid/content/Intent;

    iget-object v2, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    const-class v4, Lcom/sina/weibo/sdk/web/WeiboSdkWebActivity;

    invoke-direct {v9, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v9, "intent":Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v8, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v8}, Lc8/Rye;->fillBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 197
    invoke-virtual {v9, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 198
    iget-object v2, p0, Lc8/Nwe;->mAuthActivity:Landroid/app/Activity;

    invoke-virtual {v2, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
